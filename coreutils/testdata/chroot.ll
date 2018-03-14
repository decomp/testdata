; ModuleID = 'coreutils-8.27/src/chroot.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Usage: %s [OPTION] NEWROOT [COMMAND [ARG]...]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Run COMMAND with root directory set to NEWROOT.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"  --groups=G_LIST        specify supplementary groups as g1,g2,..,gN\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"  --userspec=USER:GROUP  specify user and group (ID or name) to use\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  --skip-chdir           do not change working directory to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"\0AIf no command is given, run '${SHELL} -i' (default: '/bin/sh -i').\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_opts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"Roland McGrath\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"option --skip-chdir only permitted if NEWROOT is old %s\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"cannot change root directory to %s\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"cannot chdir to root directory\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"no group specified for unknown uid: %d\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"failed to get supplemental groups\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed to set supplemental groups\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"failed to set group-ID\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"failed to set user-ID\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"invalid group list %s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"userspec\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"skip-chdir\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !125
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !131
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !136
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !140
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !147
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !154
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !166
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !173
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !185
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !192
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !199
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !187
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !201
@.str.3.82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.85 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
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
@.str.16.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.106 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.107 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !207
@.str.1.120 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.126 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.127 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !216
@.str.3.143 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.144 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.145 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.146 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.147 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !727 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !731, metadata !732), !dbg !733
  %2 = icmp eq i32 %0, 0, !dbg !734
  br i1 %2, label %8, label %3, !dbg !736

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !737, !tbaa !739
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !737
  %6 = load i8*, i8** @program_name, align 8, !dbg !737, !tbaa !739
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !737
  br label %48, !dbg !737

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !743
  %10 = load i8*, i8** @program_name, align 8, !dbg !743, !tbaa !739
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !743
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !745
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !739
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !745
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !746
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !739
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !746
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !747
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !739
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !747
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !748
  %22 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !748
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* %22) #11, !dbg !748
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !749
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !739
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !749
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !750
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !739
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !750
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !751
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !739
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !751
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !101, metadata !732) #11, !dbg !752
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !101, metadata !732) #11, !dbg !752
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !754
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !754
  %35 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !755
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !109, metadata !732) #11, !dbg !756
  %36 = icmp eq i8* %35, null, !dbg !757
  br i1 %36, label %43, label %37, !dbg !759

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14, !dbg !760
  %39 = icmp eq i32 %38, 0, !dbg !760
  br i1 %39, label %43, label %40, !dbg !761

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !762
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !762
  br label %43, !dbg !764

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !765
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !765
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !766
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #11, !dbg !766
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !767
  unreachable, !dbg !767
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !768 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !772, metadata !732), !dbg !830
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !773, metadata !732), !dbg !831
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !775, metadata !732), !dbg !832
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !776, metadata !732), !dbg !833
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !777, metadata !732), !dbg !834
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !778, metadata !732), !dbg !835
  %8 = bitcast i32* %3 to i8*, !dbg !836
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #11, !dbg !836
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !779, metadata !732), !dbg !837
  store i32 -1, i32* %3, align 4, !dbg !837, !tbaa !838
  %9 = bitcast i32* %4 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #11, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !780, metadata !732), !dbg !841
  store i32 -1, i32* %4, align 4, !dbg !841, !tbaa !838
  %10 = bitcast i32** %5 to i8*, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !842
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !781, metadata !732), !dbg !843
  store i32* null, i32** %5, align 8, !dbg !843, !tbaa !739
  %11 = bitcast i64* %6 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #11, !dbg !844
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !782, metadata !732), !dbg !845
  store i64 0, i64* %6, align 8, !dbg !845, !tbaa !846
  %12 = load i8*, i8** %1, align 8, !dbg !848, !tbaa !739
  tail call void @set_program_name(i8* %12) #11, !dbg !849
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !850
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !851
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !852
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !853, metadata !732), !dbg !856
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !858, !tbaa !838
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !860
  br label %18, !dbg !861

; <label>:17:                                     ; preds = %25
  br label %18, !dbg !862

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %20 = phi i8* [ null, %2 ], [ %23, %17 ]
  %21 = phi i8* [ null, %2 ], [ %26, %17 ]
  br label %22, !dbg !862

; <label>:22:                                     ; preds = %18, %39
  %23 = phi i8* [ %20, %18 ], [ %40, %39 ]
  %24 = phi i8* [ %21, %18 ], [ %26, %39 ]
  br label %25, !dbg !862

; <label>:25:                                     ; preds = %37, %22
  %26 = phi i8* [ %24, %22 ], [ %29, %37 ]
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !775, metadata !732), !dbg !832
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !777, metadata !732), !dbg !834
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !778, metadata !732), !dbg !835
  %27 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #11, !dbg !862
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !774, metadata !732), !dbg !863
  switch i32 %27, label %45 [
    i32 -1, label %46
    i32 257, label %28
    i32 256, label %39
    i32 258, label %17
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !861, !llvm.loop !864

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** @optarg, align 8, !dbg !866, !tbaa !739
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !775, metadata !732), !dbg !832
  %30 = tail call i64 @strlen(i8* %29) #14, !dbg !867
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !783, metadata !732), !dbg !868
  %31 = icmp eq i64 %30, 0, !dbg !869
  br i1 %31, label %37, label %32, !dbg !871

; <label>:32:                                     ; preds = %28
  %33 = add i64 %30, -1, !dbg !872
  %34 = getelementptr inbounds i8, i8* %29, i64 %33, !dbg !873
  %35 = load i8, i8* %34, align 1, !dbg !873, !tbaa !874
  %36 = icmp eq i8 %35, 58, !dbg !875
  br i1 %36, label %38, label %37, !dbg !876

; <label>:37:                                     ; preds = %32, %38, %28
  br label %25, !dbg !832, !llvm.loop !864

; <label>:38:                                     ; preds = %32
  store i8 0, i8* %34, align 1, !dbg !877, !tbaa !874
  br label %37, !dbg !878

; <label>:39:                                     ; preds = %25
  %40 = load i8*, i8** @optarg, align 8, !dbg !879, !tbaa !739
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !777, metadata !732), !dbg !834
  br label %22, !dbg !880, !llvm.loop !864

; <label>:41:                                     ; preds = %25
  tail call void @usage(i32 0) #16, !dbg !881
  unreachable, !dbg !881

; <label>:42:                                     ; preds = %25
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !882, !tbaa !739
  %44 = load i8*, i8** @Version, align 8, !dbg !882, !tbaa !739
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !882
  tail call void @exit(i32 0) #15, !dbg !882
  unreachable, !dbg !882

; <label>:45:                                     ; preds = %25
  tail call void @usage(i32 125) #16, !dbg !883
  unreachable, !dbg !883

; <label>:46:                                     ; preds = %25
  %47 = load i32, i32* @optind, align 4, !dbg !884, !tbaa !838
  %48 = icmp slt i32 %47, %0, !dbg !886
  br i1 %48, label %51, label %49, !dbg !887

; <label>:49:                                     ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !888
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #11, !dbg !890
  tail call void @usage(i32 125) #16, !dbg !891
  unreachable, !dbg !891

; <label>:51:                                     ; preds = %46
  %52 = sext i32 %47 to i64, !dbg !892
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52, !dbg !892
  %54 = load i8*, i8** %53, align 8, !dbg !892, !tbaa !739
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !787, metadata !732), !dbg !893
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !894, metadata !732) #11, !dbg !901
  %55 = tail call i8* @canonicalize_file_name(i8* %54) #11, !dbg !903
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !899, metadata !732) #11, !dbg !904
  %56 = icmp eq i8* %55, null, !dbg !905
  br i1 %56, label %60, label %57, !dbg !906

; <label>:57:                                     ; preds = %51
  %58 = tail call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %55) #14, !dbg !907
  %59 = icmp eq i32 %58, 0, !dbg !907
  br label %60

; <label>:60:                                     ; preds = %51, %57
  %61 = phi i1 [ false, %51 ], [ %59, %57 ]
  tail call void @free(i8* %55) #11, !dbg !908
  %62 = icmp eq i8 %19, 0, !dbg !909
  %63 = or i1 %62, %61, !dbg !911
  br i1 %63, label %67, label %64, !dbg !911

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !912
  %66 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !914
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %66) #11, !dbg !915
  tail call void @usage(i32 125) #16, !dbg !916
  unreachable, !dbg !916

; <label>:67:                                     ; preds = %60
  br i1 %61, label %111, label %68, !dbg !917

; <label>:68:                                     ; preds = %67
  %69 = icmp eq i8* %26, null, !dbg !918
  br i1 %69, label %72, label %70, !dbg !919

; <label>:70:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !779, metadata !732), !dbg !837
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !780, metadata !732), !dbg !841
  %71 = call i8* @parse_user_spec(i8* nonnull %26, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #11, !dbg !920
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !789, metadata !732), !dbg !920
  br label %72, !dbg !921

; <label>:72:                                     ; preds = %68, %70
  %73 = load i32, i32* %3, align 4, !dbg !922, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !779, metadata !732), !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !923, metadata !732), !dbg !928
  %74 = icmp eq i32 %73, -1, !dbg !930
  br i1 %74, label %92, label %75, !dbg !931

; <label>:75:                                     ; preds = %72
  %76 = icmp eq i8* %23, null, !dbg !932
  %77 = load i32, i32* %4, align 4, !dbg !933
  %78 = icmp eq i32 %77, -1, !dbg !934
  %79 = or i1 %76, %78, !dbg !941
  br i1 %79, label %80, label %95, !dbg !941

; <label>:80:                                     ; preds = %75
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !779, metadata !732), !dbg !837
  %81 = call %struct.passwd* @getpwuid(i32 %73) #11, !dbg !942
  call void @llvm.dbg.value(metadata %struct.passwd* %81, i64 0, metadata !794, metadata !732), !dbg !944
  %82 = icmp eq %struct.passwd* %81, null, !dbg !945
  br i1 %82, label %92, label %83, !dbg !946

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %4, align 4, !dbg !947, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !780, metadata !732), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !939, metadata !732), !dbg !950
  %85 = icmp eq i32 %84, -1, !dbg !952
  br i1 %85, label %86, label %89, !dbg !953

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i64 0, i32 3, !dbg !954
  %88 = load i32, i32* %87, align 4, !dbg !954, !tbaa !955
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !780, metadata !732), !dbg !841
  store i32 %88, i32* %4, align 4, !dbg !957, !tbaa !838
  br label %89, !dbg !958

; <label>:89:                                     ; preds = %86, %83
  %90 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i64 0, i32 0, !dbg !959
  %91 = load i8*, i8** %90, align 8, !dbg !959, !tbaa !960
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !776, metadata !732), !dbg !833
  br label %92, !dbg !961

; <label>:92:                                     ; preds = %89, %80, %72
  %93 = phi i8* [ null, %72 ], [ %91, %89 ], [ null, %80 ]
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !776, metadata !732), !dbg !833
  %94 = icmp eq i8* %23, null, !dbg !962
  br i1 %94, label %101, label %95, !dbg !963

; <label>:95:                                     ; preds = %92, %75
  %96 = phi i8* [ %93, %92 ], [ null, %75 ]
  %97 = load i8, i8* %23, align 1, !dbg !964, !tbaa !874
  %98 = icmp eq i8 %97, 0, !dbg !964
  br i1 %98, label %111, label %99, !dbg !965

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i32** %5, i64 0, metadata !781, metadata !732), !dbg !843
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !782, metadata !732), !dbg !845
  %100 = call fastcc i32 @parse_additional_groups(i8* nonnull %23, i32** nonnull %5, i64* nonnull %6, i1 zeroext false), !dbg !966
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !808, metadata !732), !dbg !966
  br label %111, !dbg !967

; <label>:101:                                    ; preds = %92
  %102 = load i32, i32* %4, align 4, !dbg !968, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !780, metadata !732), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !939, metadata !732), !dbg !969
  %103 = icmp ne i32 %102, -1, !dbg !971
  %104 = icmp ne i8* %93, null, !dbg !972
  %105 = and i1 %104, %103, !dbg !973
  br i1 %105, label %106, label %111, !dbg !973

; <label>:106:                                    ; preds = %101
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !780, metadata !732), !dbg !841
  call void @llvm.dbg.value(metadata i32** %5, i64 0, metadata !781, metadata !732), !dbg !843
  %107 = call i32 @xgetgroups(i8* nonnull %93, i32 %102, i32** nonnull %5) #11, !dbg !974
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !811, metadata !732), !dbg !975
  %108 = icmp sgt i32 %107, 0, !dbg !976
  br i1 %108, label %109, label %111, !dbg !978

; <label>:109:                                    ; preds = %106
  %110 = sext i32 %107 to i64, !dbg !979
  call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !782, metadata !732), !dbg !845
  store i64 %110, i64* %6, align 8, !dbg !980, !tbaa !846
  br label %111, !dbg !981

; <label>:111:                                    ; preds = %95, %106, %109, %99, %101, %67
  %112 = phi i8* [ null, %67 ], [ %96, %99 ], [ %93, %101 ], [ %93, %109 ], [ %93, %106 ], [ %96, %95 ]
  call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !776, metadata !732), !dbg !833
  %113 = call i32 @chroot(i8* %54) #11, !dbg !982
  %114 = icmp eq i32 %113, 0, !dbg !984
  br i1 %114, label %120, label %115, !dbg !985

; <label>:115:                                    ; preds = %111
  %116 = tail call i32* @__errno_location() #17, !dbg !986
  %117 = load i32, i32* %116, align 4, !dbg !986, !tbaa !838
  %118 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !986
  %119 = call i8* @quotearg_style(i32 4, i8* %54) #11, !dbg !986
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %117, i8* %118, i8* %119) #11, !dbg !986
  unreachable, !dbg !986

; <label>:120:                                    ; preds = %111
  br i1 %62, label %121, label %128, !dbg !987

; <label>:121:                                    ; preds = %120
  %122 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !989
  %123 = icmp eq i32 %122, 0, !dbg !989
  br i1 %123, label %128, label %124, !dbg !990

; <label>:124:                                    ; preds = %121
  %125 = tail call i32* @__errno_location() #17, !dbg !991
  %126 = load i32, i32* %125, align 4, !dbg !991, !tbaa !838
  %127 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !991
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %126, i8* %127) #11, !dbg !991
  unreachable, !dbg !991

; <label>:128:                                    ; preds = %121, %120
  %129 = load i32, i32* @optind, align 4, !dbg !992, !tbaa !838
  %130 = add nsw i32 %129, 1, !dbg !993
  %131 = icmp eq i32 %130, %0, !dbg !994
  br i1 %131, label %132, label %138, !dbg !995

; <label>:132:                                    ; preds = %128
  %133 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !996
  call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !814, metadata !732), !dbg !997
  %134 = icmp eq i8* %133, null, !dbg !998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 0, metadata !814, metadata !732), !dbg !997
  %135 = select i1 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %133, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !814, metadata !732), !dbg !997
  store i8* %135, i8** %1, align 8, !dbg !1001, !tbaa !739
  %136 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1002
  %137 = bitcast i8** %136 to <2 x i8*>*, !dbg !1003
  store <2 x i8*> <i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* null>, <2 x i8*>* %137, align 8, !dbg !1003, !tbaa !739
  br label %141, !dbg !1004

; <label>:138:                                    ; preds = %128
  %139 = sext i32 %130 to i64, !dbg !1005
  %140 = getelementptr inbounds i8*, i8** %1, i64 %139, !dbg !1005
  call void @llvm.dbg.value(metadata i8** %140, i64 0, metadata !773, metadata !732), !dbg !831
  br label %141

; <label>:141:                                    ; preds = %138, %132
  %142 = phi i8** [ %1, %132 ], [ %140, %138 ]
  call void @llvm.dbg.value(metadata i8** %142, i64 0, metadata !773, metadata !732), !dbg !831
  %143 = icmp eq i8* %26, null, !dbg !1007
  br i1 %143, label %156, label %144, !dbg !1008

; <label>:144:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !779, metadata !732), !dbg !837
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !780, metadata !732), !dbg !841
  %145 = call i8* @parse_user_spec(i8* nonnull %26, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #11, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !817, metadata !732), !dbg !1010
  %146 = icmp eq i8* %145, null, !dbg !1011
  br i1 %146, label %156, label %147, !dbg !1013

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* %3, align 4, !dbg !1014, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !779, metadata !732), !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !923, metadata !732), !dbg !1015
  %149 = icmp eq i32 %148, -1, !dbg !1017
  br i1 %149, label %150, label %159, !dbg !1018

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %4, align 4, !dbg !1019, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !780, metadata !732), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !939, metadata !732), !dbg !1020
  %152 = icmp eq i32 %151, -1, !dbg !1022
  br i1 %152, label %153, label %186, !dbg !1023

; <label>:153:                                    ; preds = %150
  %154 = tail call i32* @__errno_location() #17, !dbg !1024
  %155 = load i32, i32* %154, align 4, !dbg !1024, !tbaa !838
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %145) #11, !dbg !1024
  unreachable, !dbg !1024

; <label>:156:                                    ; preds = %144, %141
  %157 = load i32, i32* %3, align 4, !dbg !1025, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %157, i64 0, metadata !779, metadata !732), !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %157, i64 0, metadata !923, metadata !732), !dbg !1026
  %158 = icmp eq i32 %157, -1, !dbg !1028
  br i1 %158, label %186, label %159, !dbg !1029

; <label>:159:                                    ; preds = %147, %156
  %160 = phi i32 [ %157, %156 ], [ %148, %147 ]
  %161 = icmp eq i8* %23, null, !dbg !1030
  %162 = load i32, i32* %4, align 4, !dbg !1031
  %163 = icmp eq i32 %162, -1, !dbg !1032
  %164 = or i1 %161, %163, !dbg !1034
  br i1 %164, label %168, label %165, !dbg !1034

; <label>:165:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8* %187, i64 0, metadata !776, metadata !732), !dbg !833
  %166 = load i32*, i32** %5, align 8, !dbg !1035, !tbaa !739
  call void @llvm.dbg.value(metadata i32* %188, i64 0, metadata !781, metadata !732), !dbg !843
  call void @llvm.dbg.value(metadata i32* %188, i64 0, metadata !823, metadata !732), !dbg !1036
  %167 = bitcast i32** %7 to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %167) #11, !dbg !1037
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !824, metadata !732), !dbg !1038
  store i32* null, i32** %7, align 8, !dbg !1038, !tbaa !739
  br label %191, !dbg !1039

; <label>:168:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i32 %157, i64 0, metadata !779, metadata !732), !dbg !837
  %169 = call %struct.passwd* @getpwuid(i32 %160) #11, !dbg !1040
  call void @llvm.dbg.value(metadata %struct.passwd* %169, i64 0, metadata !820, metadata !732), !dbg !1042
  %170 = icmp eq %struct.passwd* %169, null, !dbg !1043
  %171 = load i32, i32* %4, align 4, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !780, metadata !732), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !939, metadata !732), !dbg !1044
  %172 = icmp eq i32 %171, -1, !dbg !1048
  br i1 %170, label %180, label %173, !dbg !1049

; <label>:173:                                    ; preds = %168
  br i1 %172, label %174, label %177, !dbg !1050

; <label>:174:                                    ; preds = %173
  %175 = getelementptr inbounds %struct.passwd, %struct.passwd* %169, i64 0, i32 3, !dbg !1051
  %176 = load i32, i32* %175, align 4, !dbg !1051, !tbaa !955
  call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !780, metadata !732), !dbg !841
  store i32 %176, i32* %4, align 4, !dbg !1052, !tbaa !838
  br label %177, !dbg !1053

; <label>:177:                                    ; preds = %174, %173
  %178 = getelementptr inbounds %struct.passwd, %struct.passwd* %169, i64 0, i32 0, !dbg !1054
  %179 = load i8*, i8** %178, align 8, !dbg !1054, !tbaa !960
  call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !776, metadata !732), !dbg !833
  br label %186, !dbg !1055

; <label>:180:                                    ; preds = %168
  br i1 %172, label %181, label %186, !dbg !1056

; <label>:181:                                    ; preds = %180
  %182 = tail call i32* @__errno_location() #17, !dbg !1057
  %183 = load i32, i32* %182, align 4, !dbg !1057, !tbaa !838
  %184 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !1057
  %185 = load i32, i32* %3, align 4, !dbg !1057, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %185, i64 0, metadata !779, metadata !732), !dbg !837
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %183, i8* %184, i32 %185) #11, !dbg !1057
  unreachable, !dbg !1057

; <label>:186:                                    ; preds = %150, %177, %180, %156
  %187 = phi i8* [ %112, %156 ], [ %179, %177 ], [ %112, %180 ], [ %112, %150 ]
  call void @llvm.dbg.value(metadata i8* %187, i64 0, metadata !776, metadata !732), !dbg !833
  %188 = load i32*, i32** %5, align 8, !dbg !1035, !tbaa !739
  call void @llvm.dbg.value(metadata i32* %188, i64 0, metadata !781, metadata !732), !dbg !843
  call void @llvm.dbg.value(metadata i32* %188, i64 0, metadata !823, metadata !732), !dbg !1036
  %189 = bitcast i32** %7 to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %189) #11, !dbg !1037
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !824, metadata !732), !dbg !1038
  store i32* null, i32** %7, align 8, !dbg !1038, !tbaa !739
  %190 = icmp eq i8* %23, null, !dbg !1060
  br i1 %190, label %206, label %191, !dbg !1039

; <label>:191:                                    ; preds = %186, %165
  %192 = phi i8* [ %167, %165 ], [ %189, %186 ]
  %193 = phi i32* [ %166, %165 ], [ %188, %186 ]
  %194 = load i8, i8* %23, align 1, !dbg !1061, !tbaa !874
  %195 = icmp eq i8 %194, 0, !dbg !1061
  br i1 %195, label %228, label %196, !dbg !1062

; <label>:196:                                    ; preds = %191
  %197 = load i64, i64* %6, align 8, !dbg !1063, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !782, metadata !732), !dbg !845
  %198 = icmp eq i64 %197, 0, !dbg !1066
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !782, metadata !732), !dbg !845
  call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !824, metadata !732), !dbg !1038
  %199 = call fastcc i32 @parse_additional_groups(i8* nonnull %23, i32** nonnull %7, i64* nonnull %6, i1 zeroext %198), !dbg !1067
  %200 = icmp eq i32 %199, 0, !dbg !1068
  br i1 %200, label %204, label %201, !dbg !1069

; <label>:201:                                    ; preds = %196
  %202 = load i64, i64* %6, align 8, !dbg !1070, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !782, metadata !732), !dbg !845
  %203 = icmp eq i64 %202, 0, !dbg !1070
  br i1 %203, label %273, label %228, !dbg !1073

; <label>:204:                                    ; preds = %196
  %205 = load i32*, i32** %7, align 8, !dbg !1074, !tbaa !739
  call void @llvm.dbg.value(metadata i32* %205, i64 0, metadata !824, metadata !732), !dbg !1038
  call void @llvm.dbg.value(metadata i32* %205, i64 0, metadata !823, metadata !732), !dbg !1036
  br label %228

; <label>:206:                                    ; preds = %186
  %207 = load i32, i32* %4, align 4, !dbg !1075, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %207, i64 0, metadata !780, metadata !732), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %207, i64 0, metadata !939, metadata !732), !dbg !1076
  %208 = icmp ne i32 %207, -1, !dbg !1078
  %209 = icmp ne i8* %187, null, !dbg !1079
  %210 = and i1 %209, %208, !dbg !1080
  br i1 %210, label %211, label %224, !dbg !1080

; <label>:211:                                    ; preds = %206
  call void @llvm.dbg.value(metadata i32 %207, i64 0, metadata !780, metadata !732), !dbg !841
  call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !824, metadata !732), !dbg !1038
  %212 = call i32 @xgetgroups(i8* nonnull %187, i32 %207, i32** nonnull %7) #11, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !825, metadata !732), !dbg !1082
  %213 = icmp slt i32 %212, 1, !dbg !1083
  br i1 %213, label %214, label %221, !dbg !1085

; <label>:214:                                    ; preds = %211
  %215 = load i64, i64* %6, align 8, !dbg !1086, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !782, metadata !732), !dbg !845
  %216 = icmp eq i64 %215, 0, !dbg !1086
  br i1 %216, label %217, label %224, !dbg !1089

; <label>:217:                                    ; preds = %214
  %218 = tail call i32* @__errno_location() #17, !dbg !1090
  %219 = load i32, i32* %218, align 4, !dbg !1090, !tbaa !838
  %220 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !1090
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %219, i8* %220) #11, !dbg !1090
  unreachable, !dbg !1090

; <label>:221:                                    ; preds = %211
  %222 = sext i32 %212 to i64, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %222, i64 0, metadata !782, metadata !732), !dbg !845
  store i64 %222, i64* %6, align 8, !dbg !1093, !tbaa !846
  %223 = load i32*, i32** %7, align 8, !dbg !1094, !tbaa !739
  call void @llvm.dbg.value(metadata i32* %223, i64 0, metadata !824, metadata !732), !dbg !1038
  call void @llvm.dbg.value(metadata i32* %223, i64 0, metadata !823, metadata !732), !dbg !1036
  br label %224

; <label>:224:                                    ; preds = %221, %214, %206
  %225 = phi i32* [ %188, %206 ], [ %188, %214 ], [ %223, %221 ]
  call void @llvm.dbg.value(metadata i32* %225, i64 0, metadata !823, metadata !732), !dbg !1036
  %226 = load i32, i32* %3, align 4, !dbg !1095, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !779, metadata !732), !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !923, metadata !732), !dbg !1097
  %227 = icmp eq i32 %226, -1, !dbg !1099
  br i1 %227, label %238, label %228, !dbg !1100

; <label>:228:                                    ; preds = %224, %191, %204, %201
  %229 = phi i32* [ %225, %224 ], [ %193, %191 ], [ %205, %204 ], [ %193, %201 ]
  %230 = phi i8* [ %189, %224 ], [ %192, %191 ], [ %192, %204 ], [ %192, %201 ]
  %231 = load i64, i64* %6, align 8, !dbg !1101, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !782, metadata !732), !dbg !845
  %232 = call i32 @setgroups(i64 %231, i32* %229) #11, !dbg !1102
  %233 = icmp eq i32 %232, 0, !dbg !1103
  br i1 %233, label %238, label %234, !dbg !1104

; <label>:234:                                    ; preds = %228
  %235 = tail call i32* @__errno_location() #17, !dbg !1105
  %236 = load i32, i32* %235, align 4, !dbg !1105, !tbaa !838
  %237 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !1105
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %236, i8* %237) #11, !dbg !1105
  unreachable, !dbg !1105

; <label>:238:                                    ; preds = %224, %228
  %239 = phi i8* [ %230, %228 ], [ %189, %224 ]
  %240 = bitcast i32** %7 to i8**, !dbg !1106
  %241 = load i8*, i8** %240, align 8, !dbg !1106, !tbaa !739
  call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !824, metadata !1107), !dbg !1038
  call void @free(i8* %241) #11, !dbg !1108
  %242 = bitcast i32** %5 to i8**, !dbg !1109
  %243 = load i8*, i8** %242, align 8, !dbg !1109, !tbaa !739
  call void @llvm.dbg.value(metadata i32** %5, i64 0, metadata !781, metadata !1107), !dbg !843
  call void @free(i8* %243) #11, !dbg !1110
  %244 = load i32, i32* %4, align 4, !dbg !1111, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %244, i64 0, metadata !780, metadata !732), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %244, i64 0, metadata !939, metadata !732), !dbg !1113
  %245 = icmp eq i32 %244, -1, !dbg !1115
  br i1 %245, label %253, label %246, !dbg !1116

; <label>:246:                                    ; preds = %238
  call void @llvm.dbg.value(metadata i32 %244, i64 0, metadata !780, metadata !732), !dbg !841
  %247 = call i32 @setgid(i32 %244) #11, !dbg !1117
  %248 = icmp eq i32 %247, 0, !dbg !1117
  br i1 %248, label %253, label %249, !dbg !1118

; <label>:249:                                    ; preds = %246
  %250 = tail call i32* @__errno_location() #17, !dbg !1119
  %251 = load i32, i32* %250, align 4, !dbg !1119, !tbaa !838
  %252 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !1119
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %251, i8* %252) #11, !dbg !1119
  unreachable, !dbg !1119

; <label>:253:                                    ; preds = %246, %238
  %254 = load i32, i32* %3, align 4, !dbg !1120, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !779, metadata !732), !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !923, metadata !732), !dbg !1122
  %255 = icmp eq i32 %254, -1, !dbg !1124
  br i1 %255, label %263, label %256, !dbg !1125

; <label>:256:                                    ; preds = %253
  call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !779, metadata !732), !dbg !837
  %257 = call i32 @setuid(i32 %254) #11, !dbg !1126
  %258 = icmp eq i32 %257, 0, !dbg !1126
  br i1 %258, label %263, label %259, !dbg !1127

; <label>:259:                                    ; preds = %256
  %260 = tail call i32* @__errno_location() #17, !dbg !1128
  %261 = load i32, i32* %260, align 4, !dbg !1128, !tbaa !838
  %262 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !1128
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %261, i8* %262) #11, !dbg !1128
  unreachable, !dbg !1128

; <label>:263:                                    ; preds = %256, %253
  %264 = load i8*, i8** %142, align 8, !dbg !1129, !tbaa !739
  %265 = call i32 @execvp(i8* %264, i8** %142) #11, !dbg !1130
  %266 = tail call i32* @__errno_location() #17, !dbg !1131
  %267 = load i32, i32* %266, align 4, !dbg !1131, !tbaa !838
  %268 = icmp eq i32 %267, 2, !dbg !1132
  %269 = select i1 %268, i32 127, i32 126, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %269, i64 0, metadata !829, metadata !732), !dbg !1133
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !1134
  %271 = load i8*, i8** %142, align 8, !dbg !1135, !tbaa !739
  %272 = call i8* @quote(i8* %271) #11, !dbg !1136
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %267, i8* %270, i8* %272) #11, !dbg !1137
  br label %273

; <label>:273:                                    ; preds = %201, %263
  %274 = phi i8* [ %239, %263 ], [ %192, %201 ]
  %275 = phi i32 [ %269, %263 ], [ 125, %201 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %274) #11, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #11, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #11, !dbg !1138
  ret i32 %275, !dbg !1138
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_additional_groups(i8*, i32** nocapture, i64* nocapture, i1 zeroext) unnamed_addr #6 !dbg !1139 {
  %5 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1143, metadata !732), !dbg !1158
  tail call void @llvm.dbg.value(metadata i32** %1, i64 0, metadata !1144, metadata !732), !dbg !1159
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1145, metadata !732), !dbg !1160
  tail call void @llvm.dbg.value(metadata i1 %3, i64 0, metadata !1146, metadata !732), !dbg !1161
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1147, metadata !732), !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1148, metadata !732), !dbg !1163
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1149, metadata !732), !dbg !1164
  %6 = tail call noalias i8* @xstrdup(i8* %0) #11, !dbg !1165
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1150, metadata !732), !dbg !1166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1152, metadata !732), !dbg !1167
  %7 = call i8* @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !1168
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1151, metadata !732), !dbg !1169
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1149, metadata !732), !dbg !1164
  %8 = icmp eq i8* %7, null, !dbg !1170
  br i1 %8, label %93, label %9, !dbg !1170

; <label>:9:                                      ; preds = %4
  %10 = bitcast i64* %5 to i8*
  br label %11, !dbg !1170

; <label>:11:                                     ; preds = %9, %85
  %12 = phi i8* [ %7, %9 ], [ %91, %85 ]
  %13 = phi i32 [ 0, %9 ], [ %90, %85 ]
  %14 = phi i32* [ null, %9 ], [ %89, %85 ]
  %15 = phi i8* [ null, %9 ], [ %88, %85 ]
  %16 = phi i64 [ 0, %9 ], [ %87, %85 ]
  %17 = phi i64 [ 0, %9 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1149, metadata !732), !dbg !1164
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1171
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1157, metadata !732), !dbg !1172
  %18 = call i32 @xstrtoul(i8* nonnull %12, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !1173
  %19 = icmp eq i32 %18, 0, !dbg !1175
  %20 = load i64, i64* %5, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1157, metadata !732), !dbg !1172
  %21 = icmp ult i64 %20, 4294967296, !dbg !1177
  %22 = and i1 %19, %21, !dbg !1178
  br i1 %22, label %23, label %44, !dbg !1178

; <label>:23:                                     ; preds = %11
  %24 = tail call i16** @__ctype_b_loc() #17, !dbg !1179
  %25 = load i16*, i16** %24, align 8, !tbaa !739
  br label %26, !dbg !1181

; <label>:26:                                     ; preds = %26, %23
  %27 = phi i8* [ %12, %23 ], [ %34, %26 ]
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1151, metadata !732), !dbg !1169
  %28 = load i8, i8* %27, align 1, !dbg !1179, !tbaa !874
  %29 = zext i8 %28 to i64, !dbg !1179
  %30 = getelementptr inbounds i16, i16* %25, i64 %29, !dbg !1179
  %31 = load i16, i16* %30, align 2, !dbg !1179, !tbaa !1182
  %32 = and i16 %31, 8192, !dbg !1179
  %33 = icmp eq i16 %32, 0, !dbg !1181
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1151, metadata !732), !dbg !1169
  br i1 %33, label %35, label %26, !dbg !1181, !llvm.loop !1185

; <label>:35:                                     ; preds = %26
  %36 = icmp eq i8 %28, 43, !dbg !1186
  br i1 %36, label %57, label %37, !dbg !1188

; <label>:37:                                     ; preds = %35
  %38 = call %struct.group* @getgrnam(i8* %27) #11, !dbg !1189
  call void @llvm.dbg.value(metadata %struct.group* %38, i64 0, metadata !1153, metadata !732), !dbg !1191
  %39 = icmp eq %struct.group* %38, null, !dbg !1192
  br i1 %39, label %57, label %40, !dbg !1194

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.group, %struct.group* %38, i64 0, i32 2, !dbg !1195
  %42 = load i32, i32* %41, align 8, !dbg !1195, !tbaa !1196
  %43 = zext i32 %42 to i64, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1157, metadata !732), !dbg !1172
  store i64 %43, i64* %5, align 8, !dbg !1199, !tbaa !846
  br label %57, !dbg !1200

; <label>:44:                                     ; preds = %11
  %45 = call %struct.group* @getgrnam(i8* nonnull %12) #11, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.group* %45, i64 0, metadata !1153, metadata !732), !dbg !1191
  %46 = icmp eq %struct.group* %45, null, !dbg !1203
  br i1 %46, label %51, label %47, !dbg !1205

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.group, %struct.group* %45, i64 0, i32 2, !dbg !1206
  %49 = load i32, i32* %48, align 8, !dbg !1206, !tbaa !1196
  %50 = zext i32 %49 to i64, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1157, metadata !732), !dbg !1172
  store i64 %50, i64* %5, align 8, !dbg !1208, !tbaa !846
  br label %57, !dbg !1209

; <label>:51:                                     ; preds = %44
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1153, metadata !732), !dbg !1191
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1151, metadata !732), !dbg !1169
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1152, metadata !732), !dbg !1167
  br i1 %3, label %52, label %84, !dbg !1210

; <label>:52:                                     ; preds = %51
  %53 = tail call i32* @__errno_location() #17, !dbg !1213
  %54 = load i32, i32* %53, align 4, !dbg !1213, !tbaa !838
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1216
  %56 = call i8* @quote(i8* nonnull %12) #11, !dbg !1217
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* %55, i8* %56) #11, !dbg !1218
  br label %85, !dbg !1219

; <label>:57:                                     ; preds = %47, %37, %35, %40
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1153, metadata !732), !dbg !1191
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1151, metadata !732), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1148, metadata !732), !dbg !1163
  %58 = icmp eq i64 %16, %17, !dbg !1220
  br i1 %58, label %59, label %76, !dbg !1222

; <label>:59:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !60, metadata !732) #11, !dbg !1223
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !62, metadata !732) #11, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !63, metadata !732) #11, !dbg !1226
  %60 = icmp eq i8* %15, null, !dbg !1227
  br i1 %60, label %61, label %64, !dbg !1229

; <label>:61:                                     ; preds = %59
  %62 = icmp eq i64 %16, 0, !dbg !1230
  call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !63, metadata !732) #11, !dbg !1226
  call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !63, metadata !732) #11, !dbg !1226
  %63 = select i1 %62, i64 32, i64 %16, !dbg !1233
  br label %71, !dbg !1233

; <label>:64:                                     ; preds = %59
  %65 = icmp ult i64 %16, 1537228672809129301, !dbg !1234
  br i1 %65, label %67, label %66, !dbg !1237

; <label>:66:                                     ; preds = %64
  call void @xalloc_die() #15, !dbg !1238
  unreachable, !dbg !1238

; <label>:67:                                     ; preds = %64
  %68 = lshr i64 %16, 1, !dbg !1239
  %69 = add i64 %16, 1, !dbg !1240
  %70 = add i64 %69, %68, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !63, metadata !732) #11, !dbg !1226
  br label %71

; <label>:71:                                     ; preds = %61, %67
  %72 = phi i64 [ %70, %67 ], [ %63, %61 ]
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !63, metadata !732) #11, !dbg !1226
  %73 = shl i64 %72, 2, !dbg !1242
  %74 = call i8* @xrealloc(i8* %15, i64 %73) #11, !dbg !1243
  %75 = bitcast i8* %74 to i32*, !dbg !1244
  call void @llvm.dbg.value(metadata i32* %75, i64 0, metadata !1147, metadata !732), !dbg !1162
  br label %76, !dbg !1245

; <label>:76:                                     ; preds = %71, %57
  %77 = phi i64 [ %72, %71 ], [ %17, %57 ]
  %78 = phi i8* [ %74, %71 ], [ %15, %57 ]
  %79 = phi i32* [ %75, %71 ], [ %14, %57 ]
  call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !1147, metadata !732), !dbg !1162
  %80 = load i64, i64* %5, align 8, !dbg !1246, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !1157, metadata !732), !dbg !1172
  %81 = trunc i64 %80 to i32, !dbg !1246
  %82 = add i64 %16, 1, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !1149, metadata !732), !dbg !1164
  %83 = getelementptr inbounds i32, i32* %79, i64 %16, !dbg !1248
  store i32 %81, i32* %83, align 4, !dbg !1249, !tbaa !838
  br label %85, !dbg !1250

; <label>:84:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1149, metadata !732), !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1149, metadata !732), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !1152, metadata !732), !dbg !1167
  store i32* %14, i32** %1, align 8, !dbg !1251, !tbaa !739
  br label %109, !dbg !1252

; <label>:85:                                     ; preds = %52, %76
  %86 = phi i64 [ %77, %76 ], [ %17, %52 ]
  %87 = phi i64 [ %82, %76 ], [ %16, %52 ]
  %88 = phi i8* [ %78, %76 ], [ %15, %52 ]
  %89 = phi i32* [ %79, %76 ], [ %14, %52 ]
  %90 = phi i32 [ %13, %76 ], [ -1, %52 ]
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1149, metadata !732), !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1151, metadata !732), !dbg !1169
  %91 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1151, metadata !732), !dbg !1169
  call void @llvm.dbg.value(metadata i32* %89, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !1149, metadata !732), !dbg !1164
  %92 = icmp eq i8* %91, null, !dbg !1170
  br i1 %92, label %93, label %11, !dbg !1170, !llvm.loop !1253

; <label>:93:                                     ; preds = %85, %4
  %94 = phi i64 [ 0, %4 ], [ %87, %85 ]
  %95 = phi i32* [ null, %4 ], [ %89, %85 ]
  %96 = phi i32 [ 0, %4 ], [ %90, %85 ]
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1152, metadata !732), !dbg !1167
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1147, metadata !732), !dbg !1162
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1149, metadata !732), !dbg !1164
  %97 = icmp ne i32 %96, 0, !dbg !1255
  %98 = icmp ne i64 %94, 0, !dbg !1257
  %99 = or i1 %98, %97, !dbg !1258
  %100 = xor i1 %3, true, !dbg !1258
  %101 = or i1 %99, %100, !dbg !1258
  %102 = select i1 %99, i32 %96, i32 -1, !dbg !1258
  br i1 %101, label %106, label %103, !dbg !1258

; <label>:103:                                    ; preds = %93
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1259
  %105 = call i8* @quote(i8* %0) #11, !dbg !1262
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %104, i8* %105) #11, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !1152, metadata !732), !dbg !1167
  store i32* %95, i32** %1, align 8, !dbg !1251, !tbaa !739
  br label %109, !dbg !1252

; <label>:106:                                    ; preds = %93
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !1152, metadata !732), !dbg !1167
  store i32* %95, i32** %1, align 8, !dbg !1251, !tbaa !739
  %107 = icmp eq i32 %102, 0, !dbg !1264
  br i1 %107, label %108, label %109, !dbg !1252

; <label>:108:                                    ; preds = %106
  store i64 %94, i64* %2, align 8, !dbg !1266, !tbaa !846
  br label %109, !dbg !1267

; <label>:109:                                    ; preds = %84, %103, %108, %106
  %110 = phi i32 [ -1, %103 ], [ 0, %108 ], [ %102, %106 ], [ -1, %84 ]
  call void @free(i8* %6) #11, !dbg !1268
  ret i32 %110, !dbg !1269
}

; Function Attrs: nounwind
declare i32 @chroot(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setgroups(i64, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setgid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setuid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1270 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1272, metadata !732), !dbg !1273
  store i8* %0, i8** @file_name, align 8, !dbg !1274, !tbaa !739
  ret void, !dbg !1275
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1276 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1280, metadata !732), !dbg !1281
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1282, !tbaa !1283
  ret void, !dbg !1285
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1286 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1293, !tbaa !739
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1294
  %3 = icmp eq i32 %2, 0, !dbg !1295
  br i1 %3, label %21, label %4, !dbg !1296

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1297, !tbaa !1283, !range !1298
  %6 = icmp eq i8 %5, 0, !dbg !1297
  %7 = tail call i32* @__errno_location() #17, !dbg !1299
  br i1 %6, label %11, label %8, !dbg !1301

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1302, !tbaa !838
  %10 = icmp eq i32 %9, 32, !dbg !1303
  br i1 %10, label %21, label %11, !dbg !1304

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !1305
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1290, metadata !732), !dbg !1306
  %13 = load i8*, i8** @file_name, align 8, !dbg !1307, !tbaa !739
  %14 = icmp eq i8* %13, null, !dbg !1307
  %15 = load i32, i32* %7, align 4, !tbaa !838
  br i1 %14, label %18, label %16, !dbg !1308

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1309
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1310
  br label %19, !dbg !1310

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #11, !dbg !1311
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1312, !tbaa !838
  tail call void @_exit(i32 %20) #15, !dbg !1313
  unreachable, !dbg !1313

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1314, !tbaa !739
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1316
  %24 = icmp eq i32 %23, 0, !dbg !1317
  br i1 %24, label %27, label %25, !dbg !1318

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1319, !tbaa !838
  tail call void @_exit(i32 %26) #15, !dbg !1320
  unreachable, !dbg !1320

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1321
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1322 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1324, metadata !732), !dbg !1327
  %2 = icmp eq i8* %0, null, !dbg !1328
  br i1 %2, label %3, label %6, !dbg !1330

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1331, !tbaa !739
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1333
  tail call void @abort() #15, !dbg !1334
  unreachable, !dbg !1334

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1335
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1325, metadata !732), !dbg !1336
  %8 = icmp eq i8* %7, null, !dbg !1337
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1338
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1339
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1326, metadata !732), !dbg !1340
  %11 = ptrtoint i8* %10 to i64, !dbg !1341
  %12 = ptrtoint i8* %0 to i64, !dbg !1341
  %13 = sub i64 %11, %12, !dbg !1341
  %14 = icmp sgt i64 %13, 6, !dbg !1343
  br i1 %14, label %15, label %24, !dbg !1344

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1345
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #14, !dbg !1346
  %18 = icmp eq i32 %17, 0, !dbg !1347
  br i1 %18, label %19, label %24, !dbg !1348

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1324, metadata !732), !dbg !1327
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #14, !dbg !1349
  %21 = icmp eq i32 %20, 0, !dbg !1352
  br i1 %21, label %22, label %24, !dbg !1353

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1354
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1324, metadata !732), !dbg !1327
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1356, !tbaa !739
  br label %24, !dbg !1357

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1324, metadata !732), !dbg !1327
  store i8* %25, i8** @program_name, align 8, !dbg !1358, !tbaa !739
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1359, !tbaa !739
  ret void, !dbg !1360
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1361 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1366, metadata !732), !dbg !1369
  %2 = tail call i32* @__errno_location() #17, !dbg !1370
  %3 = load i32, i32* %2, align 4, !dbg !1370, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1367, metadata !732), !dbg !1371
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1372
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1372
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1372
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1373
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1373
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1368, metadata !732), !dbg !1374
  store i32 %3, i32* %2, align 4, !dbg !1375, !tbaa !838
  ret %struct.quoting_options* %8, !dbg !1376
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1377 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1383, metadata !732), !dbg !1384
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1385
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1385
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1386
  %5 = load i32, i32* %4, align 8, !dbg !1386, !tbaa !1387
  ret i32 %5, !dbg !1389
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1390 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1394, metadata !732), !dbg !1396
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1395, metadata !732), !dbg !1397
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1398
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1398
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1399
  store i32 %1, i32* %5, align 8, !dbg !1400, !tbaa !1387
  ret void, !dbg !1401
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1402 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1406, metadata !732), !dbg !1414
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1407, metadata !732), !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1408, metadata !732), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1409, metadata !732), !dbg !1417
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1418
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1418
  %6 = lshr i8 %1, 5, !dbg !1419
  %7 = zext i8 %6 to i64, !dbg !1419
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1420
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1410, metadata !732), !dbg !1421
  %9 = and i8 %1, 31, !dbg !1422
  %10 = zext i8 %9 to i32, !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1412, metadata !732), !dbg !1424
  %11 = load i32, i32* %8, align 4, !dbg !1425, !tbaa !838
  %12 = lshr i32 %11, %10, !dbg !1426
  %13 = and i32 %12, 1, !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1413, metadata !732), !dbg !1428
  %14 = and i32 %2, 1, !dbg !1429
  %15 = xor i32 %13, %14, !dbg !1430
  %16 = shl i32 %15, %10, !dbg !1431
  %17 = xor i32 %16, %11, !dbg !1432
  store i32 %17, i32* %8, align 4, !dbg !1432, !tbaa !838
  ret i32 %13, !dbg !1433
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1434 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1438, metadata !732), !dbg !1441
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1439, metadata !732), !dbg !1442
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1438, metadata !732), !dbg !1441
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1445
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1438, metadata !732), !dbg !1441
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1446
  %6 = load i32, i32* %5, align 4, !dbg !1446, !tbaa !1447
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1440, metadata !732), !dbg !1448
  store i32 %1, i32* %5, align 4, !dbg !1449, !tbaa !1447
  ret i32 %6, !dbg !1450
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1451 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1455, metadata !732), !dbg !1458
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1456, metadata !732), !dbg !1459
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1457, metadata !732), !dbg !1460
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1461
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1455, metadata !732), !dbg !1458
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1463
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1455, metadata !732), !dbg !1458
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1464
  store i32 10, i32* %6, align 8, !dbg !1465, !tbaa !1387
  %7 = icmp ne i8* %1, null, !dbg !1466
  %8 = icmp ne i8* %2, null, !dbg !1468
  %9 = and i1 %7, %8, !dbg !1469
  br i1 %9, label %11, label %10, !dbg !1469

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1470
  unreachable, !dbg !1470

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1471
  store i8* %1, i8** %12, align 8, !dbg !1472, !tbaa !1473
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1474
  store i8* %2, i8** %13, align 8, !dbg !1475, !tbaa !1476
  ret void, !dbg !1477
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1482, metadata !732), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1483, metadata !732), !dbg !1491
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1484, metadata !732), !dbg !1492
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1485, metadata !732), !dbg !1493
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1486, metadata !732), !dbg !1494
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1495
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1487, metadata !732), !dbg !1496
  %8 = tail call i32* @__errno_location() #17, !dbg !1497
  %9 = load i32, i32* %8, align 4, !dbg !1497, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1488, metadata !732), !dbg !1498
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1499
  %11 = load i32, i32* %10, align 8, !dbg !1499, !tbaa !1387
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1500
  %13 = load i32, i32* %12, align 4, !dbg !1500, !tbaa !1447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1501
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1502
  %16 = load i8*, i8** %15, align 8, !dbg !1502, !tbaa !1473
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1503
  %18 = load i8*, i8** %17, align 8, !dbg !1503, !tbaa !1476
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1504
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1489, metadata !732), !dbg !1505
  store i32 %9, i32* %8, align 4, !dbg !1506, !tbaa !838
  ret i64 %19, !dbg !1507
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1508 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1514, metadata !732), !dbg !1578
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1515, metadata !732), !dbg !1579
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1516, metadata !732), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1517, metadata !732), !dbg !1581
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1518, metadata !732), !dbg !1582
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1519, metadata !732), !dbg !1583
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1520, metadata !732), !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1521, metadata !732), !dbg !1585
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1522, metadata !732), !dbg !1586
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1524, metadata !732), !dbg !1587
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1525, metadata !732), !dbg !1588
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1526, metadata !732), !dbg !1589
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1527, metadata !732), !dbg !1590
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1528, metadata !732), !dbg !1591
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1592
  %14 = icmp eq i64 %13, 1, !dbg !1593
  %15 = lshr i32 %5, 1, !dbg !1594
  %16 = trunc i32 %15 to i8, !dbg !1594
  %17 = and i8 %16, 1, !dbg !1594
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1530, metadata !732), !dbg !1594
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1531, metadata !732), !dbg !1595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1532, metadata !732), !dbg !1596
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1533, metadata !732), !dbg !1597
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1598

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1533, metadata !732), !dbg !1597
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1528, metadata !732), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1527, metadata !732), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1522, metadata !732), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1521, metadata !732), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1518, metadata !732), !dbg !1582
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
  ], !dbg !1599

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1518, metadata !732), !dbg !1582
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1518, metadata !732), !dbg !1582
  br label %94, !dbg !1600

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1518, metadata !732), !dbg !1582
  %43 = and i8 %36, 1, !dbg !1602
  %44 = icmp eq i8 %43, 0, !dbg !1602
  br i1 %44, label %45, label %94, !dbg !1600

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1604
  br i1 %46, label %94, label %47, !dbg !1607

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1604, !tbaa !874
  br label %94, !dbg !1604

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %28), !dbg !1608
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1521, metadata !732), !dbg !1585
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %28), !dbg !1612
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1522, metadata !732), !dbg !1586
  br label %51, !dbg !1613

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1522, metadata !732), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1521, metadata !732), !dbg !1585
  %54 = and i8 %36, 1, !dbg !1614
  %55 = icmp eq i8 %54, 0, !dbg !1614
  br i1 %55, label %56, label %72, !dbg !1616

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1524, metadata !732), !dbg !1587
  %57 = load i8, i8* %52, align 1, !dbg !1617, !tbaa !874
  %58 = icmp eq i8 %57, 0, !dbg !1620
  br i1 %58, label %72, label %59, !dbg !1620

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1621

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1526, metadata !732), !dbg !1589
  %64 = icmp ult i64 %63, %40, !dbg !1621
  br i1 %64, label %65, label %67, !dbg !1624

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1621
  store i8 %61, i8* %66, align 1, !dbg !1621, !tbaa !874
  br label %67, !dbg !1621

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1524, metadata !732), !dbg !1587
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1524, metadata !732), !dbg !1587
  %70 = load i8, i8* %69, align 1, !dbg !1617, !tbaa !874
  %71 = icmp eq i8 %70, 0, !dbg !1620
  br i1 %71, label %72, label %60, !dbg !1620, !llvm.loop !1626

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1528, metadata !732), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1526, metadata !732), !dbg !1589
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1527, metadata !732), !dbg !1590
  br label %94, !dbg !1629

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1528, metadata !732), !dbg !1591
  br label %76, !dbg !1630

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1528, metadata !732), !dbg !1591
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1530, metadata !732), !dbg !1594
  br label %78, !dbg !1631

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1528, metadata !732), !dbg !1591
  %81 = and i8 %80, 1, !dbg !1632
  %82 = icmp eq i8 %81, 0, !dbg !1632
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1528, metadata !732), !dbg !1591
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1634
  br label %84, !dbg !1634

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1528, metadata !732), !dbg !1591
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1518, metadata !732), !dbg !1582
  %87 = and i8 %86, 1, !dbg !1635
  %88 = icmp eq i8 %87, 0, !dbg !1635
  br i1 %88, label %89, label %94, !dbg !1637

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1638
  br i1 %90, label %94, label %91, !dbg !1641

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1638, !tbaa !874
  br label %94, !dbg !1638

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1530, metadata !732), !dbg !1594
  br label %94, !dbg !1642

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1643
  unreachable, !dbg !1643

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1530, metadata !732), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1528, metadata !732), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1527, metadata !732), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1522, metadata !732), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1521, metadata !732), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1518, metadata !732), !dbg !1582
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1523, metadata !732), !dbg !1644
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
  br label %122, !dbg !1645

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1533, metadata !732), !dbg !1597
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1523, metadata !732), !dbg !1644
  %131 = icmp eq i64 %126, -1, !dbg !1646
  br i1 %131, label %134, label %132, !dbg !1647

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1648
  br i1 %133, label %590, label %138, !dbg !1649

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1650
  %136 = load i8, i8* %135, align 1, !dbg !1650, !tbaa !874
  %137 = icmp eq i8 %136, 0, !dbg !1651
  br i1 %137, label %590, label %138, !dbg !1649

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1539, metadata !732), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1540, metadata !732), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1541, metadata !732), !dbg !1654
  br i1 %108, label %139, label %154, !dbg !1655

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1657
  %141 = and i1 %109, %131, !dbg !1658
  br i1 %141, label %142, label %144, !dbg !1658

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1517, metadata !732), !dbg !1581
  br label %144, !dbg !1660

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1517, metadata !732), !dbg !1581
  %146 = icmp ugt i64 %140, %145, !dbg !1661
  br i1 %146, label %154, label %147, !dbg !1662

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1663
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1664
  %150 = icmp ne i32 %149, 0, !dbg !1665
  %151 = or i1 %150, %111, !dbg !1666
  %152 = xor i1 %150, true, !dbg !1666
  %153 = zext i1 %152 to i8, !dbg !1666
  br i1 %151, label %154, label %635, !dbg !1666

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1539, metadata !732), !dbg !1652
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1517, metadata !732), !dbg !1581
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1667
  %158 = load i8, i8* %157, align 1, !dbg !1667, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1534, metadata !732), !dbg !1668
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
  ], !dbg !1669

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1670

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1671

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1540, metadata !732), !dbg !1653
  %162 = and i8 %127, 1, !dbg !1675
  %163 = icmp eq i8 %162, 0, !dbg !1675
  %164 = and i1 %113, %163, !dbg !1675
  br i1 %164, label %165, label %181, !dbg !1675

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1677
  br i1 %166, label %167, label %169, !dbg !1681

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1677
  store i8 39, i8* %168, align 1, !dbg !1677, !tbaa !874
  br label %169, !dbg !1677

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1524, metadata !732), !dbg !1587
  %171 = icmp ult i64 %170, %130, !dbg !1682
  br i1 %171, label %172, label %174, !dbg !1685

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1682
  store i8 36, i8* %173, align 1, !dbg !1682, !tbaa !874
  br label %174, !dbg !1682

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1524, metadata !732), !dbg !1587
  %176 = icmp ult i64 %175, %130, !dbg !1686
  br i1 %176, label %177, label %179, !dbg !1689

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1686
  store i8 39, i8* %178, align 1, !dbg !1686, !tbaa !874
  br label %179, !dbg !1686

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1531, metadata !732), !dbg !1595
  br label %181, !dbg !1690

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1524, metadata !732), !dbg !1587
  %184 = icmp ult i64 %182, %130, !dbg !1691
  br i1 %184, label %185, label %187, !dbg !1694

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1691
  store i8 92, i8* %186, align 1, !dbg !1691, !tbaa !874
  br label %187, !dbg !1691

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1524, metadata !732), !dbg !1587
  br i1 %105, label %189, label %470, !dbg !1695

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1697
  %191 = icmp ult i64 %190, %155, !dbg !1698
  br i1 %191, label %192, label %470, !dbg !1699

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1700
  %194 = load i8, i8* %193, align 1, !dbg !1700, !tbaa !874
  %195 = add i8 %194, -48, !dbg !1701
  %196 = icmp ult i8 %195, 10, !dbg !1701
  br i1 %196, label %197, label %470, !dbg !1701

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1702
  br i1 %198, label %199, label %201, !dbg !1706

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1702
  store i8 48, i8* %200, align 1, !dbg !1702, !tbaa !874
  br label %201, !dbg !1702

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1524, metadata !732), !dbg !1587
  %203 = icmp ult i64 %202, %130, !dbg !1707
  br i1 %203, label %204, label %206, !dbg !1710

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1707
  store i8 48, i8* %205, align 1, !dbg !1707, !tbaa !874
  br label %206, !dbg !1707

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1524, metadata !732), !dbg !1587
  br label %470, !dbg !1711

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1712

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1713

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1714

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1716

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1718
  %214 = icmp ult i64 %213, %155, !dbg !1719
  br i1 %214, label %215, label %470, !dbg !1720

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1721
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1722
  %218 = load i8, i8* %217, align 1, !dbg !1722, !tbaa !874
  %219 = icmp eq i8 %218, 63, !dbg !1723
  br i1 %219, label %220, label %470, !dbg !1724

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1725
  %222 = load i8, i8* %221, align 1, !dbg !1725, !tbaa !874
  %223 = sext i8 %222 to i32, !dbg !1725
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
  ], !dbg !1726

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1727

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1523, metadata !732), !dbg !1644
  %226 = icmp ult i64 %124, %130, !dbg !1729
  br i1 %226, label %227, label %229, !dbg !1732

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1729
  store i8 63, i8* %228, align 1, !dbg !1729, !tbaa !874
  br label %229, !dbg !1729

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1524, metadata !732), !dbg !1587
  %231 = icmp ult i64 %230, %130, !dbg !1733
  br i1 %231, label %232, label %234, !dbg !1736

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1733
  store i8 34, i8* %233, align 1, !dbg !1733, !tbaa !874
  br label %234, !dbg !1733

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1524, metadata !732), !dbg !1587
  %236 = icmp ult i64 %235, %130, !dbg !1737
  br i1 %236, label %237, label %239, !dbg !1740

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1737
  store i8 34, i8* %238, align 1, !dbg !1737, !tbaa !874
  br label %239, !dbg !1737

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1524, metadata !732), !dbg !1587
  %241 = icmp ult i64 %240, %130, !dbg !1741
  br i1 %241, label %242, label %244, !dbg !1744

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1741
  store i8 63, i8* %243, align 1, !dbg !1741, !tbaa !874
  br label %244, !dbg !1741

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1524, metadata !732), !dbg !1587
  br label %470, !dbg !1745

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1538, metadata !732), !dbg !1746
  br label %256, !dbg !1747

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1538, metadata !732), !dbg !1746
  br label %256, !dbg !1748

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1538, metadata !732), !dbg !1746
  br label %254, !dbg !1749

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1538, metadata !732), !dbg !1746
  br label %254, !dbg !1750

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1538, metadata !732), !dbg !1746
  br label %256, !dbg !1751

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1538, metadata !732), !dbg !1746
  br i1 %113, label %252, label %253, !dbg !1752

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1753

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1756

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1538, metadata !732), !dbg !1746
  br i1 %117, label %256, label %635, !dbg !1758

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1538, metadata !732), !dbg !1746
  br i1 %104, label %497, label %470, !dbg !1760

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1761
  br i1 %259, label %260, label %265, !dbg !1763

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1764, !tbaa !874
  %262 = icmp ne i8 %261, 0, !dbg !1765
  %263 = icmp ne i64 %123, 0, !dbg !1766
  %264 = or i1 %263, %262, !dbg !1768
  br i1 %264, label %470, label %271, !dbg !1768

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1769
  %267 = icmp ne i64 %123, 0, !dbg !1766
  %268 = or i1 %267, %266, !dbg !1763
  br i1 %268, label %470, label %271, !dbg !1763

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1766
  br i1 %270, label %271, label %470, !dbg !1770

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1541, metadata !732), !dbg !1654
  br label %272, !dbg !1771

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1541, metadata !732), !dbg !1654
  br i1 %117, label %470, label %635, !dbg !1772

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1541, metadata !732), !dbg !1654
  br i1 %113, label %275, label %470, !dbg !1774

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1775

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1778
  %278 = icmp ne i64 %125, 0, !dbg !1780
  %279 = or i1 %278, %277, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1515, metadata !732), !dbg !1579
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1781
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1525, metadata !732), !dbg !1588
  %282 = icmp ult i64 %124, %281, !dbg !1782
  br i1 %282, label %283, label %285, !dbg !1785

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1782
  store i8 39, i8* %284, align 1, !dbg !1782, !tbaa !874
  br label %285, !dbg !1782

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1524, metadata !732), !dbg !1587
  %287 = icmp ult i64 %286, %281, !dbg !1786
  br i1 %287, label %288, label %290, !dbg !1789

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1786
  store i8 92, i8* %289, align 1, !dbg !1786, !tbaa !874
  br label %290, !dbg !1786

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1524, metadata !732), !dbg !1587
  %292 = icmp ult i64 %291, %281, !dbg !1790
  br i1 %292, label %293, label %295, !dbg !1793

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1790
  store i8 39, i8* %294, align 1, !dbg !1790, !tbaa !874
  br label %295, !dbg !1790

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1531, metadata !732), !dbg !1595
  br label %470, !dbg !1794

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1795

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1542, metadata !732), !dbg !1796
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1797
  %300 = load i16*, i16** %299, align 8, !dbg !1797, !tbaa !739
  %301 = zext i8 %158 to i64, !dbg !1797
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1797
  %303 = load i16, i16* %302, align 2, !dbg !1797, !tbaa !1182
  %304 = lshr i16 %303, 14, !dbg !1799
  %305 = trunc i16 %304 to i8, !dbg !1799
  %306 = and i8 %305, 1, !dbg !1799
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1545, metadata !732), !dbg !1800
  br label %362, !dbg !1801

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1802
  store i64 0, i64* %10, align 8, !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1545, metadata !732), !dbg !1800
  %308 = icmp eq i64 %155, -1, !dbg !1804
  br i1 %308, label %309, label %311, !dbg !1806

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1517, metadata !732), !dbg !1581
  br label %311, !dbg !1808

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1517, metadata !732), !dbg !1581
  br label %313, !dbg !1809, !llvm.loop !1810

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1545, metadata !732), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1812
  %316 = add i64 %314, %123, !dbg !1813
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1814
  %318 = sub i64 %312, %316, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1546, metadata !732), !dbg !1816
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1564, metadata !732), !dbg !1817
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1567, metadata !732), !dbg !1819
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1820

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1545, metadata !732), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1542, metadata !732), !dbg !1796
  %321 = icmp ugt i64 %312, %316, !dbg !1821
  br i1 %321, label %322, label %347, !dbg !1823

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1824

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1542, metadata !732), !dbg !1796
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1824
  %327 = load i8, i8* %326, align 1, !dbg !1824, !tbaa !874
  %328 = icmp eq i8 %327, 0, !dbg !1823
  br i1 %328, label %347, label %329, !dbg !1825

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1542, metadata !732), !dbg !1796
  %331 = add i64 %330, %123, !dbg !1827
  %332 = icmp ult i64 %331, %312, !dbg !1821
  br i1 %332, label %323, label %347, !dbg !1823, !llvm.loop !1828

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1829
  %335 = and i1 %115, %334, !dbg !1832
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1568, metadata !732), !dbg !1833
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1568, metadata !732), !dbg !1833
  br i1 %335, label %336, label %350, !dbg !1832

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1834

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1568, metadata !732), !dbg !1833
  %339 = add i64 %338, %316, !dbg !1834
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1835
  %341 = load i8, i8* %340, align 1, !dbg !1835, !tbaa !874
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
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1568, metadata !732), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1568, metadata !732), !dbg !1833
  %345 = icmp ult i64 %344, %319, !dbg !1829
  br i1 %345, label %337, label %350, !dbg !1838, !llvm.loop !1839

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1841

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1545, metadata !732), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1841
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1842, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1564, metadata !732), !dbg !1817
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1844
  %353 = icmp eq i32 %352, 0, !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1545, metadata !732), !dbg !1800
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1845
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1545, metadata !732), !dbg !1800
  %355 = add i64 %319, %314, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1545, metadata !732), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1546, metadata !732), !dbg !1816
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1847
  %357 = icmp eq i32 %356, 0, !dbg !1848
  br i1 %357, label %313, label %358, !dbg !1849, !llvm.loop !1810

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1850
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1545, metadata !732), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1850
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1545, metadata !732), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1542, metadata !732), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1517, metadata !732), !dbg !1581
  %366 = and i8 %365, 1, !dbg !1851
  %367 = icmp ne i8 %366, 0, !dbg !1851
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1541, metadata !732), !dbg !1654
  %368 = icmp ult i64 %364, 2, !dbg !1852
  %369 = or i1 %367, %112, !dbg !1853
  %370 = and i1 %368, %369, !dbg !1854
  br i1 %370, label %470, label %371, !dbg !1854

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1575, metadata !732), !dbg !1856
  br label %373, !dbg !1857

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1540, metadata !732), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1539, metadata !732), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1523, metadata !732), !dbg !1644
  br i1 %369, label %426, label %380, !dbg !1858

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1863

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1540, metadata !732), !dbg !1653
  %382 = and i8 %376, 1, !dbg !1866
  %383 = icmp eq i8 %382, 0, !dbg !1866
  %384 = and i1 %113, %383, !dbg !1866
  br i1 %384, label %385, label %401, !dbg !1866

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1868
  br i1 %386, label %387, label %389, !dbg !1872

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1868
  store i8 39, i8* %388, align 1, !dbg !1868, !tbaa !874
  br label %389, !dbg !1868

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1524, metadata !732), !dbg !1587
  %391 = icmp ult i64 %390, %130, !dbg !1873
  br i1 %391, label %392, label %394, !dbg !1876

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1873
  store i8 36, i8* %393, align 1, !dbg !1873, !tbaa !874
  br label %394, !dbg !1873

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1524, metadata !732), !dbg !1587
  %396 = icmp ult i64 %395, %130, !dbg !1877
  br i1 %396, label %397, label %399, !dbg !1880

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1877
  store i8 39, i8* %398, align 1, !dbg !1877, !tbaa !874
  br label %399, !dbg !1877

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1531, metadata !732), !dbg !1595
  br label %401, !dbg !1881

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1524, metadata !732), !dbg !1587
  %404 = icmp ult i64 %402, %130, !dbg !1882
  br i1 %404, label %405, label %407, !dbg !1885

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1882
  store i8 92, i8* %406, align 1, !dbg !1882, !tbaa !874
  br label %407, !dbg !1882

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1524, metadata !732), !dbg !1587
  %409 = icmp ult i64 %408, %130, !dbg !1886
  br i1 %409, label %410, label %414, !dbg !1889

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1886
  %412 = or i8 %411, 48, !dbg !1886
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1886
  store i8 %412, i8* %413, align 1, !dbg !1886, !tbaa !874
  br label %414, !dbg !1886

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1524, metadata !732), !dbg !1587
  %416 = icmp ult i64 %415, %130, !dbg !1890
  br i1 %416, label %417, label %422, !dbg !1893

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1890
  %419 = and i8 %418, 7, !dbg !1890
  %420 = or i8 %419, 48, !dbg !1890
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1890
  store i8 %420, i8* %421, align 1, !dbg !1890, !tbaa !874
  br label %422, !dbg !1890

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1524, metadata !732), !dbg !1587
  %424 = and i8 %377, 7, !dbg !1894
  %425 = or i8 %424, 48, !dbg !1895
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1534, metadata !732), !dbg !1668
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
  store i8 92, i8* %432, align 1, !dbg !1900, !tbaa !874
  br label %433, !dbg !1900

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1539, metadata !732), !dbg !1652
  br label %435, !dbg !1905

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1540, metadata !732), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1539, metadata !732), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1524, metadata !732), !dbg !1587
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
  store i8 39, i8* %452, align 1, !dbg !1913, !tbaa !874
  br label %453, !dbg !1913

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1524, metadata !732), !dbg !1587
  %455 = icmp ult i64 %454, %130, !dbg !1918
  br i1 %455, label %456, label %458, !dbg !1921

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1918
  store i8 39, i8* %457, align 1, !dbg !1918, !tbaa !874
  br label %458, !dbg !1918

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1531, metadata !732), !dbg !1595
  br label %460, !dbg !1922

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1524, metadata !732), !dbg !1587
  %463 = icmp ult i64 %461, %130, !dbg !1923
  br i1 %463, label %464, label %466, !dbg !1926

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1923
  store i8 %438, i8* %465, align 1, !dbg !1923, !tbaa !874
  br label %466, !dbg !1923

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1523, metadata !732), !dbg !1644
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1927
  %469 = load i8, i8* %468, align 1, !dbg !1927, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1534, metadata !732), !dbg !1668
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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1541, metadata !732), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1540, metadata !732), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1539, metadata !732), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1523, metadata !732), !dbg !1644
  br i1 %106, label %482, label %481, !dbg !1932

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1934

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1935

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1936
  %485 = zext i8 %484 to i64, !dbg !1936
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1937
  %487 = load i32, i32* %486, align 4, !dbg !1937, !tbaa !838
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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1541, metadata !732), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1523, metadata !732), !dbg !1644
  br i1 %111, label %507, label %635, !dbg !1944

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1540, metadata !732), !dbg !1653
  %508 = and i8 %502, 1, !dbg !1946
  %509 = icmp eq i8 %508, 0, !dbg !1946
  %510 = and i1 %113, %509, !dbg !1946
  br i1 %510, label %511, label %527, !dbg !1946

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1948
  br i1 %512, label %513, label %515, !dbg !1952

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1948
  store i8 39, i8* %514, align 1, !dbg !1948, !tbaa !874
  br label %515, !dbg !1948

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1524, metadata !732), !dbg !1587
  %517 = icmp ult i64 %516, %506, !dbg !1953
  br i1 %517, label %518, label %520, !dbg !1956

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1953
  store i8 36, i8* %519, align 1, !dbg !1953, !tbaa !874
  br label %520, !dbg !1953

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1524, metadata !732), !dbg !1587
  %522 = icmp ult i64 %521, %506, !dbg !1957
  br i1 %522, label %523, label %525, !dbg !1960

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1957
  store i8 39, i8* %524, align 1, !dbg !1957, !tbaa !874
  br label %525, !dbg !1957

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1531, metadata !732), !dbg !1595
  br label %527, !dbg !1961

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1524, metadata !732), !dbg !1587
  %530 = icmp ult i64 %528, %506, !dbg !1962
  br i1 %530, label %531, label %533, !dbg !1965

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1962
  store i8 92, i8* %532, align 1, !dbg !1962, !tbaa !874
  br label %533, !dbg !1962

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1541, metadata !732), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1540, metadata !732), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1523, metadata !732), !dbg !1644
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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1541, metadata !732), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1540, metadata !732), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1534, metadata !732), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1523, metadata !732), !dbg !1644
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
  store i8 39, i8* %554, align 1, !dbg !1969, !tbaa !874
  br label %555, !dbg !1969

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1524, metadata !732), !dbg !1587
  %557 = icmp ult i64 %556, %545, !dbg !1974
  br i1 %557, label %558, label %560, !dbg !1977

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1974
  store i8 39, i8* %559, align 1, !dbg !1974, !tbaa !874
  br label %560, !dbg !1974

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1531, metadata !732), !dbg !1595
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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1524, metadata !732), !dbg !1587
  %572 = icmp ult i64 %570, %563, !dbg !1979
  br i1 %572, label %573, label %575, !dbg !1982

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1979
  store i8 %565, i8* %574, align 1, !dbg !1979, !tbaa !874
  br label %575, !dbg !1979

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1524, metadata !732), !dbg !1587
  %577 = and i8 %564, 1, !dbg !1983
  %578 = icmp eq i8 %577, 0, !dbg !1983
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1533, metadata !732), !dbg !1597
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1985
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1533, metadata !732), !dbg !1597
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
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1533, metadata !732), !dbg !1597
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1532, metadata !732), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1531, metadata !732), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1517, metadata !732), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1525, metadata !732), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1523, metadata !732), !dbg !1644
  %589 = add i64 %581, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1523, metadata !732), !dbg !1644
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
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1524, metadata !732), !dbg !1587
  br i1 %610, label %27, label %611, !dbg !2006

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2007
  %613 = and i1 %612, %111, !dbg !2009
  br i1 %613, label %614, label %630, !dbg !2009

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1524, metadata !732), !dbg !1587
  %615 = load i8, i8* %99, align 1, !dbg !2010, !tbaa !874
  %616 = icmp eq i8 %615, 0, !dbg !2013
  br i1 %616, label %630, label %617, !dbg !2013

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2014

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1524, metadata !732), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1526, metadata !732), !dbg !1589
  %622 = icmp ult i64 %621, %130, !dbg !2014
  br i1 %622, label %623, label %625, !dbg !2017

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2014
  store i8 %619, i8* %624, align 1, !dbg !2014, !tbaa !874
  br label %625, !dbg !2014

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1524, metadata !732), !dbg !1587
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2018
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1526, metadata !732), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1524, metadata !732), !dbg !1587
  %628 = load i8, i8* %627, align 1, !dbg !2010, !tbaa !874
  %629 = icmp eq i8 %628, 0, !dbg !2013
  br i1 %629, label %630, label %618, !dbg !2013, !llvm.loop !2019

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1524, metadata !732), !dbg !1587
  %632 = icmp ult i64 %631, %130, !dbg !2021
  br i1 %632, label %633, label %645, !dbg !2023

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2024
  store i8 0, i8* %634, align 1, !dbg !2025, !tbaa !874
  br label %645, !dbg !2024

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1515, metadata !732), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1517, metadata !732), !dbg !1581
  %639 = icmp ne i32 %636, 2, !dbg !2026
  %640 = icmp eq i8 %103, 0, !dbg !2028
  %641 = or i1 %639, %640, !dbg !2029
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1518, metadata !732), !dbg !1582
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1518, metadata !732), !dbg !1582
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
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2038, metadata !732), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2039, metadata !732), !dbg !2043
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2044
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2040, metadata !732), !dbg !2045
  %4 = icmp eq i8* %3, %0, !dbg !2046
  br i1 %4, label %5, label %75, !dbg !2048

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2049
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2041, metadata !732), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2051, metadata !732), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2065, metadata !732), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !732), !dbg !2071
  %7 = load i8, i8* %6, align 1, !dbg !2072, !tbaa !874
  %8 = sext i8 %7 to i32, !dbg !2072
  %9 = and i32 %8, -33, !dbg !2072
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2072

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2074, metadata !732), !dbg !2088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2086, metadata !732), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2087, metadata !732), !dbg !2093
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2094
  %12 = load i8, i8* %11, align 1, !dbg !2094, !tbaa !874
  %13 = sext i8 %12 to i32, !dbg !2094
  %14 = and i32 %13, -33, !dbg !2094
  %15 = icmp eq i32 %14, 84, !dbg !2094
  br i1 %15, label %16, label %72, !dbg !2094

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2096, metadata !732), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !732), !dbg !2113
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !732), !dbg !2114
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2115
  %18 = load i8, i8* %17, align 1, !dbg !2115, !tbaa !874
  %19 = sext i8 %18 to i32, !dbg !2115
  %20 = and i32 %19, -33, !dbg !2115
  %21 = icmp eq i32 %20, 70, !dbg !2115
  br i1 %21, label %22, label %72, !dbg !2115

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2117, metadata !732), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !732), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2128, metadata !732), !dbg !2134
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2135
  %24 = load i8, i8* %23, align 1, !dbg !2135, !tbaa !874
  %25 = icmp eq i8 %24, 45, !dbg !2135
  br i1 %25, label %26, label %72, !dbg !2137

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2138, metadata !732), !dbg !2149
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !732), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !732), !dbg !2154
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2155
  %28 = load i8, i8* %27, align 1, !dbg !2155, !tbaa !874
  %29 = icmp eq i8 %28, 56, !dbg !2155
  br i1 %29, label %30, label %72, !dbg !2157

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !732), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2166, metadata !732), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2167, metadata !732), !dbg !2173
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2174
  %32 = load i8, i8* %31, align 1, !dbg !2174, !tbaa !874
  %33 = icmp eq i8 %32, 0, !dbg !2174
  br i1 %33, label %34, label %72, !dbg !2176

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2177, !tbaa !874
  %36 = icmp eq i8 %35, 96, !dbg !2178
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2177
  br label %75, !dbg !2179

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2074, metadata !732), !dbg !2180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2086, metadata !732), !dbg !2184
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2087, metadata !732), !dbg !2185
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2186
  %40 = load i8, i8* %39, align 1, !dbg !2186, !tbaa !874
  %41 = sext i8 %40 to i32, !dbg !2186
  %42 = and i32 %41, -33, !dbg !2186
  %43 = icmp eq i32 %42, 66, !dbg !2186
  br i1 %43, label %44, label %72, !dbg !2186

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2096, metadata !732), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !732), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !732), !dbg !2190
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2191
  %46 = load i8, i8* %45, align 1, !dbg !2191, !tbaa !874
  %47 = icmp eq i8 %46, 49, !dbg !2191
  br i1 %47, label %48, label %72, !dbg !2192

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2117, metadata !732), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !732), !dbg !2195
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2128, metadata !732), !dbg !2196
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2197
  %50 = load i8, i8* %49, align 1, !dbg !2197, !tbaa !874
  %51 = icmp eq i8 %50, 56, !dbg !2197
  br i1 %51, label %52, label %72, !dbg !2198

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2138, metadata !732), !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !732), !dbg !2201
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !732), !dbg !2202
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2203
  %54 = load i8, i8* %53, align 1, !dbg !2203, !tbaa !874
  %55 = icmp eq i8 %54, 48, !dbg !2203
  br i1 %55, label %56, label %72, !dbg !2204

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !732), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2166, metadata !732), !dbg !2207
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2167, metadata !732), !dbg !2208
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2209
  %58 = load i8, i8* %57, align 1, !dbg !2209, !tbaa !874
  %59 = icmp eq i8 %58, 51, !dbg !2209
  br i1 %59, label %60, label %72, !dbg !2210

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2211, metadata !732), !dbg !2220
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2218, metadata !732), !dbg !2224
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2219, metadata !732), !dbg !2225
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2226
  %62 = load i8, i8* %61, align 1, !dbg !2226, !tbaa !874
  %63 = icmp eq i8 %62, 48, !dbg !2226
  br i1 %63, label %64, label %72, !dbg !2228

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2229, metadata !732), !dbg !2237
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2235, metadata !732), !dbg !2241
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2236, metadata !732), !dbg !2242
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2243
  %66 = load i8, i8* %65, align 1, !dbg !2243, !tbaa !874
  %67 = icmp eq i8 %66, 0, !dbg !2243
  br i1 %67, label %68, label %72, !dbg !2245

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2246, !tbaa !874
  %70 = icmp eq i8 %69, 96, !dbg !2247
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2246
  br label %75, !dbg !2248

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2249
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2250
  br label %75, !dbg !2251

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2252
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2253 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2257, metadata !732), !dbg !2260
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2258, metadata !732), !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2259, metadata !732), !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2263, metadata !732) #11, !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2268, metadata !732) #11, !dbg !2278
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2269, metadata !732) #11, !dbg !2279
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2270, metadata !732) #11, !dbg !2280
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2281
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2271, metadata !732) #11, !dbg !2282
  %6 = tail call i32* @__errno_location() #17, !dbg !2283
  %7 = load i32, i32* %6, align 4, !dbg !2283, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2272, metadata !732) #11, !dbg !2284
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2285
  %9 = load i32, i32* %8, align 4, !dbg !2285, !tbaa !1447
  %10 = or i32 %9, 1, !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2273, metadata !732) #11, !dbg !2287
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2288
  %12 = load i32, i32* %11, align 8, !dbg !2288, !tbaa !1387
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2289
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2290
  %15 = load i8*, i8** %14, align 8, !dbg !2290, !tbaa !1473
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2291
  %17 = load i8*, i8** %16, align 8, !dbg !2291, !tbaa !1476
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2292
  %19 = add i64 %18, 1, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2274, metadata !732) #11, !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2295, metadata !732) #11, !dbg !2300
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2302
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2275, metadata !732) #11, !dbg !2303
  %21 = load i32, i32* %11, align 8, !dbg !2304, !tbaa !1387
  %22 = load i8*, i8** %14, align 8, !dbg !2305, !tbaa !1473
  %23 = load i8*, i8** %16, align 8, !dbg !2306, !tbaa !1476
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2307
  store i32 %7, i32* %6, align 4, !dbg !2308, !tbaa !838
  ret i8* %20, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2264 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2263, metadata !732), !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2268, metadata !732), !dbg !2311
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2269, metadata !732), !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2270, metadata !732), !dbg !2313
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2314
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2271, metadata !732), !dbg !2315
  %7 = tail call i32* @__errno_location() #17, !dbg !2316
  %8 = load i32, i32* %7, align 4, !dbg !2316, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2272, metadata !732), !dbg !2317
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2318
  %10 = load i32, i32* %9, align 4, !dbg !2318, !tbaa !1447
  %11 = icmp ne i64* %2, null, !dbg !2319
  %12 = xor i1 %11, true, !dbg !2319
  %13 = zext i1 %12 to i32, !dbg !2319
  %14 = or i32 %10, %13, !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2273, metadata !732), !dbg !2321
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2322
  %16 = load i32, i32* %15, align 8, !dbg !2322, !tbaa !1387
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2323
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2324
  %19 = load i8*, i8** %18, align 8, !dbg !2324, !tbaa !1473
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2325
  %21 = load i8*, i8** %20, align 8, !dbg !2325, !tbaa !1476
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2326
  %23 = add i64 %22, 1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2274, metadata !732), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2295, metadata !732) #11, !dbg !2329
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2275, metadata !732), !dbg !2332
  %25 = load i32, i32* %15, align 8, !dbg !2333, !tbaa !1387
  %26 = load i8*, i8** %18, align 8, !dbg !2334, !tbaa !1473
  %27 = load i8*, i8** %20, align 8, !dbg !2335, !tbaa !1476
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2336
  store i32 %8, i32* %7, align 4, !dbg !2337, !tbaa !838
  br i1 %11, label %29, label %30, !dbg !2338

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2339, !tbaa !846
  br label %30, !dbg !2341

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2342
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2343 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2347, !tbaa !739
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2345, metadata !732), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2346, metadata !732), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2346, metadata !732), !dbg !2349
  %2 = load i32, i32* @nslots, align 4, !dbg !2350, !tbaa !838
  %3 = icmp sgt i32 %2, 1, !dbg !2353
  br i1 %3, label %4, label %13, !dbg !2354

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2355

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2346, metadata !732), !dbg !2349
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2355
  %8 = load i8*, i8** %7, align 8, !dbg !2355, !tbaa !2356
  tail call void @free(i8* %8) #11, !dbg !2358
  %9 = add nuw i64 %6, 1, !dbg !2359
  %10 = load i32, i32* @nslots, align 4, !dbg !2350, !tbaa !838
  %11 = sext i32 %10 to i64, !dbg !2353
  %12 = icmp slt i64 %9, %11, !dbg !2353
  br i1 %12, label %5, label %13, !dbg !2354, !llvm.loop !2360

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2362
  %15 = load i8*, i8** %14, align 8, !dbg !2362, !tbaa !2356
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2364
  br i1 %16, label %18, label %17, !dbg !2365

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2366
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2368, !tbaa !2369
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2370, !tbaa !2356
  br label %18, !dbg !2371

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2372
  br i1 %19, label %22, label %20, !dbg !2374

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2375
  tail call void @free(i8* %21) #11, !dbg !2377
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2378, !tbaa !739
  br label %22, !dbg !2379

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2380, !tbaa !838
  ret void, !dbg !2381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2382 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2386, metadata !732), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2387, metadata !732), !dbg !2389
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2390
  ret i8* %3, !dbg !2391
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2392 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2396, metadata !732), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2397, metadata !732), !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2398, metadata !732), !dbg !2412
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2399, metadata !732), !dbg !2413
  %5 = tail call i32* @__errno_location() #17, !dbg !2414
  %6 = load i32, i32* %5, align 4, !dbg !2414, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2400, metadata !732), !dbg !2415
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2416, !tbaa !739
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2401, metadata !732), !dbg !2417
  %8 = icmp slt i32 %0, 0, !dbg !2418
  br i1 %8, label %9, label %10, !dbg !2420

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2421
  unreachable, !dbg !2421

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2422, !tbaa !838
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
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2434
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2401, metadata !732), !dbg !2417
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2435, !tbaa !739
  br i1 %14, label %25, label %26, !dbg !2436

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2437, !tbaa.struct !2439
  br label %26, !dbg !2440

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2441, !tbaa !838
  %28 = sext i32 %27 to i64, !dbg !2442
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2442
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2443
  %31 = sub nsw i32 %20, %27, !dbg !2444
  %32 = sext i32 %31 to i64, !dbg !2445
  %33 = shl nsw i64 %32, 4, !dbg !2446
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2443
  store i32 %20, i32* @nslots, align 4, !dbg !2447, !tbaa !838
  br label %34, !dbg !2448

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2401, metadata !732), !dbg !2417
  %36 = sext i32 %0 to i64, !dbg !2449
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2450
  %38 = load i64, i64* %37, align 8, !dbg !2450, !tbaa !2369
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2405, metadata !732), !dbg !2451
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2452
  %40 = load i8*, i8** %39, align 8, !dbg !2452, !tbaa !2356
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2407, metadata !732), !dbg !2453
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2454
  %42 = load i32, i32* %41, align 4, !dbg !2454, !tbaa !1447
  %43 = or i32 %42, 1, !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2408, metadata !732), !dbg !2456
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2457
  %45 = load i32, i32* %44, align 8, !dbg !2457, !tbaa !1387
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2458
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2459
  %48 = load i8*, i8** %47, align 8, !dbg !2459, !tbaa !1473
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2460
  %50 = load i8*, i8** %49, align 8, !dbg !2460, !tbaa !1476
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2409, metadata !732), !dbg !2462
  %52 = icmp ugt i64 %38, %51, !dbg !2463
  br i1 %52, label %63, label %53, !dbg !2465

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2405, metadata !732), !dbg !2451
  store i64 %54, i64* %37, align 8, !dbg !2468, !tbaa !2369
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2469
  br i1 %55, label %57, label %56, !dbg !2471

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2472
  br label %57, !dbg !2472

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2295, metadata !732) #11, !dbg !2473
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2407, metadata !732), !dbg !2453
  store i8* %58, i8** %39, align 8, !dbg !2476, !tbaa !2356
  %59 = load i32, i32* %44, align 8, !dbg !2477, !tbaa !1387
  %60 = load i8*, i8** %47, align 8, !dbg !2478, !tbaa !1473
  %61 = load i8*, i8** %49, align 8, !dbg !2479, !tbaa !1476
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2480
  br label %63, !dbg !2481

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2407, metadata !732), !dbg !2453
  store i32 %6, i32* %5, align 4, !dbg !2482, !tbaa !838
  ret i8* %64, !dbg !2483
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2484 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2488, metadata !732), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2489, metadata !732), !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2490, metadata !732), !dbg !2493
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2494
  ret i8* %4, !dbg !2495
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2496 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2500, metadata !732), !dbg !2501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2386, metadata !732) #11, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2387, metadata !732) #11, !dbg !2504
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2505
  ret i8* %2, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2507 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2511, metadata !732), !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2512, metadata !732), !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2488, metadata !732) #11, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2489, metadata !732) #11, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2490, metadata !732) #11, !dbg !2518
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2519
  ret i8* %3, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2521 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2529, metadata !2535), !dbg !2536
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2525, metadata !732), !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2526, metadata !732), !dbg !2539
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2527, metadata !732), !dbg !2540
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2528, metadata !732), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2534, metadata !732) #11, !dbg !2543
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2544
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !732) #11, !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2536
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2536
  %8 = icmp eq i32 %1, 10, !dbg !2546
  br i1 %8, label %9, label %10, !dbg !2548

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2549, !noalias !2550
  unreachable, !dbg !2549

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !2545) #11, !dbg !2536
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2553
  store i32 %1, i32* %11, align 8, !dbg !2553, !alias.scope !2550
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2553
  %13 = bitcast i32* %12 to i8*, !dbg !2553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2528, metadata !732), !dbg !2542
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2556
  ret i8* %14, !dbg !2557
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2558 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2529, metadata !2535), !dbg !2567
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2562, metadata !732), !dbg !2569
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2563, metadata !732), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2564, metadata !732), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2565, metadata !732), !dbg !2572
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2573
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2566, metadata !732), !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2534, metadata !732) #11, !dbg !2575
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2576
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !732) #11, !dbg !2567
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2567
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2567
  %9 = icmp eq i32 %1, 10, !dbg !2577
  br i1 %9, label %10, label %11, !dbg !2578

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2579, !noalias !2580
  unreachable, !dbg !2579

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !2545) #11, !dbg !2567
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2583
  store i32 %1, i32* %12, align 8, !dbg !2583, !alias.scope !2580
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2583
  %14 = bitcast i32* %13 to i8*, !dbg !2583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2584
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2566, metadata !732), !dbg !2574
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2586
  ret i8* %15, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2588 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2529, metadata !2535), !dbg !2594
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2592, metadata !732), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2593, metadata !732), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2525, metadata !732) #11, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2526, metadata !732) #11, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2527, metadata !732) #11, !dbg !2601
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2602
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2528, metadata !732) #11, !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2534, metadata !732) #11, !dbg !2604
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2605
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !732) #11, !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2594
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2594
  %7 = icmp eq i32 %0, 10, !dbg !2606
  br i1 %7, label %8, label %9, !dbg !2607

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2608, !noalias !2609
  unreachable, !dbg !2608

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2594
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2612
  store i32 %0, i32* %10, align 8, !dbg !2612, !alias.scope !2609
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2612
  %12 = bitcast i32* %11 to i8*, !dbg !2612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2528, metadata !732) #11, !dbg !2603
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2614
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2615
  ret i8* %13, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2617 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2529, metadata !2535), !dbg !2624
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2621, metadata !732), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !732), !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2623, metadata !732), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2562, metadata !732) #11, !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !732) #11, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2564, metadata !732) #11, !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2565, metadata !732) #11, !dbg !2633
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2634
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2566, metadata !732) #11, !dbg !2635
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2534, metadata !732) #11, !dbg !2636
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2637
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !732) #11, !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2624
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2624
  %8 = icmp eq i32 %0, 10, !dbg !2638
  br i1 %8, label %9, label %10, !dbg !2639

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2640, !noalias !2641
  unreachable, !dbg !2640

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2624
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2644
  store i32 %0, i32* %11, align 8, !dbg !2644, !alias.scope !2641
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2644
  %13 = bitcast i32* %12 to i8*, !dbg !2644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2566, metadata !732) #11, !dbg !2635
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2647
  ret i8* %14, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2649 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !732), !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2654, metadata !732), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2655, metadata !732), !dbg !2659
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2660
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2661, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2656, metadata !732), !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1406, metadata !732), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1407, metadata !732), !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1408, metadata !732), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1409, metadata !732), !dbg !2668
  %6 = lshr i8 %2, 5, !dbg !2669
  %7 = zext i8 %6 to i64, !dbg !2669
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2670
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1410, metadata !732), !dbg !2671
  %9 = and i8 %2, 31, !dbg !2672
  %10 = zext i8 %9 to i32, !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1412, metadata !732), !dbg !2674
  %11 = load i32, i32* %8, align 4, !dbg !2675, !tbaa !838
  %12 = lshr i32 %11, %10, !dbg !2676
  %13 = and i32 %12, 1, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1413, metadata !732), !dbg !2678
  %14 = xor i32 %13, 1, !dbg !2679
  %15 = shl i32 %14, %10, !dbg !2680
  %16 = xor i32 %15, %11, !dbg !2681
  store i32 %16, i32* %8, align 4, !dbg !2681, !tbaa !838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2656, metadata !732), !dbg !2663
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2683
  ret i8* %17, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2685 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !732), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2690, metadata !732), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !732) #11, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2654, metadata !732) #11, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2655, metadata !732) #11, !dbg !2696
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2698, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !732) #11, !dbg !2699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1406, metadata !732) #11, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1407, metadata !732) #11, !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1408, metadata !732) #11, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1409, metadata !732) #11, !dbg !2704
  %5 = lshr i8 %1, 5, !dbg !2705
  %6 = zext i8 %5 to i64, !dbg !2705
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1410, metadata !732) #11, !dbg !2707
  %8 = and i8 %1, 31, !dbg !2708
  %9 = zext i8 %8 to i32, !dbg !2709
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1412, metadata !732) #11, !dbg !2710
  %10 = load i32, i32* %7, align 4, !dbg !2711, !tbaa !838
  %11 = lshr i32 %10, %9, !dbg !2712
  %12 = and i32 %11, 1, !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1413, metadata !732) #11, !dbg !2714
  %13 = xor i32 %12, 1, !dbg !2715
  %14 = shl i32 %13, %9, !dbg !2716
  %15 = xor i32 %14, %10, !dbg !2717
  store i32 %15, i32* %7, align 4, !dbg !2717, !tbaa !838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !732) #11, !dbg !2699
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2719
  ret i8* %16, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2721 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !732), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !732) #11, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2690, metadata !732) #11, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !732) #11, !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2654, metadata !732) #11, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2655, metadata !732) #11, !dbg !2731
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2733, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2656, metadata !732) #11, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1406, metadata !732) #11, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1407, metadata !732) #11, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1408, metadata !732) #11, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1409, metadata !732) #11, !dbg !2739
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2740
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1410, metadata !732) #11, !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1412, metadata !732) #11, !dbg !2742
  %5 = load i32, i32* %4, align 4, !dbg !2743, !tbaa !838
  %6 = or i32 %5, 67108864, !dbg !2744
  store i32 %6, i32* %4, align 4, !dbg !2744, !tbaa !838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2656, metadata !732) #11, !dbg !2734
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2746
  ret i8* %7, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2748 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2750, metadata !732), !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2751, metadata !732), !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !732) #11, !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2654, metadata !732) #11, !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2655, metadata !732) #11, !dbg !2757
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2759, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !732) #11, !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1406, metadata !732) #11, !dbg !2761
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1407, metadata !732) #11, !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1408, metadata !732) #11, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1409, metadata !732) #11, !dbg !2765
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2766
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1410, metadata !732) #11, !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1412, metadata !732) #11, !dbg !2768
  %6 = load i32, i32* %5, align 4, !dbg !2769, !tbaa !838
  %7 = or i32 %6, 67108864, !dbg !2770
  store i32 %7, i32* %5, align 4, !dbg !2770, !tbaa !838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !732) #11, !dbg !2760
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2772
  ret i8* %8, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2774 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2529, metadata !2535), !dbg !2780
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2776, metadata !732), !dbg !2782
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2777, metadata !732), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2778, metadata !732), !dbg !2784
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2785
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2534, metadata !732) #11, !dbg !2786
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2787
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2787
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !732) #11, !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #11, !dbg !2780
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2780
  %9 = icmp eq i32 %1, 10, !dbg !2788
  br i1 %9, label %10, label %11, !dbg !2789

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2790, !noalias !2791
  unreachable, !dbg !2790

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !2545) #11, !dbg !2780
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2795
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2796
  store i32 %1, i32* %13, align 8, !dbg !2796
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2796
  %15 = bitcast i32* %14 to i8*, !dbg !2796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2796
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2779, metadata !732), !dbg !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1406, metadata !732), !dbg !2798
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1407, metadata !732), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1408, metadata !732), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1409, metadata !732), !dbg !2802
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2803
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1410, metadata !732), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1412, metadata !732), !dbg !2805
  %17 = load i32, i32* %16, align 4, !dbg !2806, !tbaa !838
  %18 = or i32 %17, 67108864, !dbg !2807
  store i32 %18, i32* %16, align 4, !dbg !2807, !tbaa !838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2779, metadata !732), !dbg !2797
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2809
  ret i8* %19, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2811 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2815, metadata !732), !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2816, metadata !732), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2817, metadata !732), !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2818, metadata !732), !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2823, metadata !732) #11, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !732) #11, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2829, metadata !732) #11, !dbg !2836
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2830, metadata !732) #11, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2831, metadata !732) #11, !dbg !2838
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2840, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !732) #11, !dbg !2841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1455, metadata !732) #11, !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1456, metadata !732) #11, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1457, metadata !732) #11, !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1455, metadata !732) #11, !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1455, metadata !732) #11, !dbg !2842
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2846
  store i32 10, i32* %7, align 8, !dbg !2847, !tbaa !1387
  %8 = icmp ne i8* %1, null, !dbg !2848
  %9 = icmp ne i8* %2, null, !dbg !2849
  %10 = and i1 %8, %9, !dbg !2850
  br i1 %10, label %12, label %11, !dbg !2850

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2851
  unreachable, !dbg !2851

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2852
  store i8* %1, i8** %13, align 8, !dbg !2853, !tbaa !1473
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2854
  store i8* %2, i8** %14, align 8, !dbg !2855, !tbaa !1476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !732) #11, !dbg !2841
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2856
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2857
  ret i8* %15, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2824 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2823, metadata !732), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !732), !dbg !2860
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2829, metadata !732), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2830, metadata !732), !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2831, metadata !732), !dbg !2863
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2864
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2864
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2865, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2832, metadata !732), !dbg !2866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1455, metadata !732) #11, !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1456, metadata !732) #11, !dbg !2869
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1457, metadata !732) #11, !dbg !2870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1455, metadata !732) #11, !dbg !2867
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1455, metadata !732) #11, !dbg !2867
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2871
  store i32 10, i32* %8, align 8, !dbg !2872, !tbaa !1387
  %9 = icmp ne i8* %1, null, !dbg !2873
  %10 = icmp ne i8* %2, null, !dbg !2874
  %11 = and i1 %9, %10, !dbg !2875
  br i1 %11, label %13, label %12, !dbg !2875

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2876
  unreachable, !dbg !2876

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2877
  store i8* %1, i8** %14, align 8, !dbg !2878, !tbaa !1473
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2879
  store i8* %2, i8** %15, align 8, !dbg !2880, !tbaa !1476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2832, metadata !732), !dbg !2866
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2882
  ret i8* %16, !dbg !2883
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2884 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !732), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2889, metadata !732), !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2890, metadata !732), !dbg !2893
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2815, metadata !732) #11, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2816, metadata !732) #11, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2817, metadata !732) #11, !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2818, metadata !732) #11, !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2823, metadata !732) #11, !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !732) #11, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2829, metadata !732) #11, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2830, metadata !732) #11, !dbg !2903
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2831, metadata !732) #11, !dbg !2904
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2905
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2906, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2832, metadata !732) #11, !dbg !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1455, metadata !732) #11, !dbg !2908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1456, metadata !732) #11, !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1457, metadata !732) #11, !dbg !2911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1455, metadata !732) #11, !dbg !2908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1455, metadata !732) #11, !dbg !2908
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2912
  store i32 10, i32* %6, align 8, !dbg !2913, !tbaa !1387
  %7 = icmp ne i8* %0, null, !dbg !2914
  %8 = icmp ne i8* %1, null, !dbg !2915
  %9 = and i1 %7, %8, !dbg !2916
  br i1 %9, label %11, label %10, !dbg !2916

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2917
  unreachable, !dbg !2917

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2918
  store i8* %0, i8** %12, align 8, !dbg !2919, !tbaa !1473
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2920
  store i8* %1, i8** %13, align 8, !dbg !2921, !tbaa !1476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2832, metadata !732) #11, !dbg !2907
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2922
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2923
  ret i8* %14, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2925 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2929, metadata !732), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2930, metadata !732), !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2931, metadata !732), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2932, metadata !732), !dbg !2936
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2823, metadata !732) #11, !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !732) #11, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2829, metadata !732) #11, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2830, metadata !732) #11, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2831, metadata !732) #11, !dbg !2942
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2943
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2944, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !732) #11, !dbg !2945
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1455, metadata !732) #11, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1456, metadata !732) #11, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1457, metadata !732) #11, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1455, metadata !732) #11, !dbg !2946
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1455, metadata !732) #11, !dbg !2946
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2950
  store i32 10, i32* %7, align 8, !dbg !2951, !tbaa !1387
  %8 = icmp ne i8* %0, null, !dbg !2952
  %9 = icmp ne i8* %1, null, !dbg !2953
  %10 = and i1 %8, %9, !dbg !2954
  br i1 %10, label %12, label %11, !dbg !2954

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2955
  unreachable, !dbg !2955

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2956
  store i8* %0, i8** %13, align 8, !dbg !2957, !tbaa !1473
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2958
  store i8* %1, i8** %14, align 8, !dbg !2959, !tbaa !1476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !732) #11, !dbg !2945
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2960
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2961
  ret i8* %15, !dbg !2962
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2967, metadata !732), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !732), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2969, metadata !732), !dbg !2972
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2973
  ret i8* %4, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2975 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2979, metadata !732), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2980, metadata !732), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2967, metadata !732) #11, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2968, metadata !732) #11, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2969, metadata !732) #11, !dbg !2986
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2987
  ret i8* %3, !dbg !2988
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2993, metadata !732), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2994, metadata !732), !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2967, metadata !732) #11, !dbg !2997
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !732) #11, !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2969, metadata !732) #11, !dbg !3000
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3001
  ret i8* %3, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3007, metadata !732), !dbg !3008
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2993, metadata !732) #11, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2994, metadata !732) #11, !dbg !3011
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2967, metadata !732) #11, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2968, metadata !732) #11, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2969, metadata !732) #11, !dbg !3015
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3016
  ret i8* %2, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @parse_user_spec(i8*, i32* nocapture, i32*, i8**, i8**) local_unnamed_addr #6 !dbg !3018 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3022, metadata !732), !dbg !3032
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3023, metadata !732), !dbg !3033
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !3024, metadata !732), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3025, metadata !732), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3026, metadata !732), !dbg !3036
  %6 = icmp eq i32* %2, null, !dbg !3037
  br i1 %6, label %9, label %7, !dbg !3037

; <label>:7:                                      ; preds = %5
  %8 = tail call i8* @strchr(i8* %0, i32 58) #14, !dbg !3038
  br label %9, !dbg !3037

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3027, metadata !732), !dbg !3039
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3028, metadata !732), !dbg !3041
  %12 = icmp ne i32* %2, null, !dbg !3042
  %13 = icmp eq i8* %10, null, !dbg !3043
  %14 = and i1 %12, %13, !dbg !3044
  %15 = icmp ne i8* %11, null, !dbg !3045
  %16 = and i1 %14, %15, !dbg !3044
  br i1 %16, label %17, label %24, !dbg !3044

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @strchr(i8* %0, i32 46) #14, !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3029, metadata !732), !dbg !3047
  %19 = icmp eq i8* %18, null, !dbg !3048
  br i1 %19, label %24, label %20, !dbg !3050

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3051
  %22 = icmp eq i8* %21, null, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3028, metadata !732), !dbg !3041
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3052
  ret i8* %23, !dbg !3052

; <label>:24:                                     ; preds = %17, %9
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3028, metadata !732), !dbg !3041
  ret i8* %11, !dbg !3053
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8*, i8*, i32* nocapture, i32*, i8**, i8**) unnamed_addr #6 !dbg !572 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !579, metadata !732), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !580, metadata !732), !dbg !3055
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !581, metadata !732), !dbg !3056
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !582, metadata !732), !dbg !3057
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !583, metadata !732), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !584, metadata !732), !dbg !3059
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !608, metadata !732), !dbg !3060
  %10 = load i32, i32* %2, align 4, !dbg !3061, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !609, metadata !732), !dbg !3062
  %11 = icmp ne i32* %3, null, !dbg !3063
  br i1 %11, label %12, label %14, !dbg !3063

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3064, !tbaa !838
  br label %14, !dbg !3063

; <label>:14:                                     ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !610, metadata !732), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !585, metadata !732), !dbg !3066
  %16 = icmp ne i8** %4, null, !dbg !3067
  br i1 %16, label %17, label %18, !dbg !3069

; <label>:17:                                     ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3070, !tbaa !739
  br label %18, !dbg !3071

; <label>:18:                                     ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3072
  br i1 %19, label %20, label %21, !dbg !3074

; <label>:20:                                     ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3075, !tbaa !739
  br label %21, !dbg !3076

; <label>:21:                                     ; preds = %20, %18
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !606, metadata !732), !dbg !3077
  %22 = icmp eq i8* %1, null, !dbg !3078
  br i1 %22, label %23, label %28, !dbg !3079

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3080, !tbaa !874
  %25 = icmp eq i8 %24, 0, !dbg !3080
  br i1 %25, label %138, label %26, !dbg !3083

; <label>:26:                                     ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #11, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !606, metadata !732), !dbg !3077
  br label %43, !dbg !3085

; <label>:28:                                     ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3086
  %30 = ptrtoint i8* %0 to i64, !dbg !3086
  %31 = sub i64 %29, %30, !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !611, metadata !732), !dbg !3087
  %32 = icmp eq i64 %31, 0, !dbg !3088
  br i1 %32, label %37, label %33, !dbg !3090

; <label>:33:                                     ; preds = %28
  %34 = add i64 %31, 1, !dbg !3091
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #11, !dbg !3093
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !606, metadata !732), !dbg !3077
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3094
  store i8 0, i8* %36, align 1, !dbg !3095, !tbaa !874
  br label %37, !dbg !3096

; <label>:37:                                     ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !606, metadata !732), !dbg !3077
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3097
  %40 = load i8, i8* %39, align 1, !dbg !3098, !tbaa !874
  %41 = icmp eq i8 %40, 0, !dbg !3099
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3100
  br label %43, !dbg !3100

; <label>:43:                                     ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3100
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !607, metadata !732), !dbg !3101
  %46 = icmp eq i8* %44, null, !dbg !3102
  br i1 %46, label %97, label %47, !dbg !3103

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3104, !tbaa !874
  %49 = icmp eq i8 %48, 43, !dbg !3105
  br i1 %49, label %53, label %50, !dbg !3104

; <label>:50:                                     ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3106
  tail call void @llvm.dbg.value(metadata %struct.passwd* %51, i64 0, metadata !586, metadata !732), !dbg !3107
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3108
  br i1 %52, label %53, label %71, !dbg !3109

; <label>:53:                                     ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3110
  %55 = icmp eq i8* %45, null, !dbg !3111
  %56 = and i1 %54, %55, !dbg !3112
  br i1 %56, label %92, label %57, !dbg !3113

; <label>:57:                                     ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #11, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !619, metadata !732), !dbg !3115
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.82, i64 0, i64 0)) #11, !dbg !3116
  %60 = icmp eq i32 %59, 0, !dbg !3118
  %61 = load i64, i64* %7, align 8, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !619, metadata !732), !dbg !3115
  %62 = icmp ult i64 %61, 4294967296, !dbg !3120
  %63 = and i1 %60, %62, !dbg !3121
  br i1 %63, label %64, label %67, !dbg !3121

; <label>:64:                                     ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3122
  %66 = icmp eq i32 %65, -1, !dbg !3123
  br i1 %66, label %67, label %68, !dbg !3124

; <label>:67:                                     ; preds = %64, %57
  br label %68

; <label>:68:                                     ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ]
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), %67 ], [ null, %64 ]
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !585, metadata !732), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !609, metadata !732), !dbg !3062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #11, !dbg !3125
  br label %92

; <label>:71:                                     ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3126
  %73 = load i32, i32* %72, align 8, !dbg !3126, !tbaa !3127
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !609, metadata !732), !dbg !3062
  %74 = icmp eq i8* %45, null, !dbg !3128
  %75 = icmp ne i8* %1, null, !dbg !3129
  %76 = and i1 %75, %74, !dbg !3130
  br i1 %76, label %77, label %92, !dbg !3130

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3131
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %78) #11, !dbg !3131
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !622, metadata !732), !dbg !3132
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3133
  %80 = load i32, i32* %79, align 4, !dbg !3133, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !610, metadata !732), !dbg !3065
  %81 = tail call %struct.group* @getgrgid(i32 %80) #11, !dbg !3134
  tail call void @llvm.dbg.value(metadata %struct.group* %81, i64 0, metadata !598, metadata !732), !dbg !3135
  %82 = icmp eq %struct.group* %81, null, !dbg !3136
  br i1 %82, label %86, label %83, !dbg !3136

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3137
  %85 = load i8*, i8** %84, align 8, !dbg !3137, !tbaa !3138
  br label %89, !dbg !3136

; <label>:86:                                     ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3139
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #11, !dbg !3140
  br label %89, !dbg !3136

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3136
  %91 = call noalias i8* @xstrdup(i8* %90) #11, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !608, metadata !732), !dbg !3060
  call void @endgrent() #11, !dbg !3142
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %78) #11, !dbg !3143
  br label %92, !dbg !3144

; <label>:92:                                     ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ]
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ]
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ]
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i64 0, i64 0), %53 ], [ %70, %68 ]
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !585, metadata !732), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !610, metadata !732), !dbg !3065
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !609, metadata !732), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !608, metadata !732), !dbg !3060
  call void @endpwent() #11, !dbg !3145
  br label %97, !dbg !3146

; <label>:97:                                     ; preds = %43, %92
  %98 = phi i8* [ %44, %92 ], [ null, %43 ]
  %99 = phi i8* [ %93, %92 ], [ null, %43 ]
  %100 = phi i32 [ %94, %92 ], [ %10, %43 ]
  %101 = phi i32 [ %95, %92 ], [ %15, %43 ]
  %102 = phi i8* [ %96, %92 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !585, metadata !732), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !610, metadata !732), !dbg !3065
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !609, metadata !732), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !608, metadata !732), !dbg !3060
  %103 = icmp ne i8* %45, null, !dbg !3147
  %104 = icmp eq i8* %102, null, !dbg !3148
  %105 = and i1 %103, %104, !dbg !3149
  br i1 %105, label %106, label %133, !dbg !3149

; <label>:106:                                    ; preds = %97
  %107 = load i8, i8* %45, align 1, !dbg !3150, !tbaa !874
  %108 = icmp eq i8 %107, 43, !dbg !3151
  br i1 %108, label %112, label %109, !dbg !3150

; <label>:109:                                    ; preds = %106
  %110 = call %struct.group* @getgrnam(i8* nonnull %45) #11, !dbg !3152
  call void @llvm.dbg.value(metadata %struct.group* %110, i64 0, metadata !598, metadata !732), !dbg !3135
  %111 = icmp eq %struct.group* %110, null, !dbg !3153
  br i1 %111, label %112, label %126, !dbg !3154

; <label>:112:                                    ; preds = %106, %109
  %113 = bitcast i64* %9 to i8*, !dbg !3155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #11, !dbg !3155
  call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !629, metadata !732), !dbg !3156
  %114 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.82, i64 0, i64 0)) #11, !dbg !3157
  %115 = icmp eq i32 %114, 0, !dbg !3159
  %116 = load i64, i64* %9, align 8, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !629, metadata !732), !dbg !3156
  %117 = icmp ult i64 %116, 4294967296, !dbg !3161
  %118 = and i1 %115, %117, !dbg !3162
  br i1 %118, label %119, label %122, !dbg !3162

; <label>:119:                                    ; preds = %112
  %120 = trunc i64 %116 to i32, !dbg !3163
  %121 = icmp eq i32 %120, -1, !dbg !3164
  br i1 %121, label %122, label %123, !dbg !3165

; <label>:122:                                    ; preds = %119, %112
  br label %123

; <label>:123:                                    ; preds = %119, %122
  %124 = phi i32 [ %101, %122 ], [ %120, %119 ]
  %125 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.85, i64 0, i64 0), %122 ], [ null, %119 ]
  call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !585, metadata !732), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !610, metadata !732), !dbg !3065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #11, !dbg !3166
  br label %129, !dbg !3167

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds %struct.group, %struct.group* %110, i64 0, i32 2, !dbg !3168
  %128 = load i32, i32* %127, align 8, !dbg !3168, !tbaa !1196
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !610, metadata !732), !dbg !3065
  br label %129

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %126 ]
  %131 = phi i8* [ %125, %123 ], [ null, %126 ]
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !585, metadata !732), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !610, metadata !732), !dbg !3065
  call void @endgrent() #11, !dbg !3169
  %132 = call noalias i8* @xstrdup(i8* nonnull %45) #11, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !608, metadata !732), !dbg !3060
  br label %133, !dbg !3171

; <label>:133:                                    ; preds = %129, %97
  %134 = phi i8* [ %132, %129 ], [ %99, %97 ]
  %135 = phi i32 [ %130, %129 ], [ %101, %97 ]
  %136 = phi i8* [ %131, %129 ], [ %102, %97 ]
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !585, metadata !732), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !610, metadata !732), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !608, metadata !732), !dbg !3060
  %137 = icmp eq i8* %136, null, !dbg !3172
  br i1 %137, label %138, label %149, !dbg !3174

; <label>:138:                                    ; preds = %23, %133
  %139 = phi i32 [ %135, %133 ], [ %15, %23 ]
  %140 = phi i8* [ %134, %133 ], [ null, %23 ]
  %141 = phi i8* [ %98, %133 ], [ null, %23 ]
  %142 = phi i32 [ %100, %133 ], [ %10, %23 ]
  store i32 %142, i32* %2, align 4, !dbg !3175, !tbaa !838
  br i1 %11, label %143, label %144, !dbg !3177

; <label>:143:                                    ; preds = %138
  store i32 %139, i32* %3, align 4, !dbg !3178, !tbaa !838
  br label %144, !dbg !3180

; <label>:144:                                    ; preds = %143, %138
  br i1 %16, label %145, label %146, !dbg !3181

; <label>:145:                                    ; preds = %144
  store i8* %141, i8** %4, align 8, !dbg !3182, !tbaa !739
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !606, metadata !732), !dbg !3077
  br label %146, !dbg !3185

; <label>:146:                                    ; preds = %145, %144
  %147 = phi i8* [ null, %145 ], [ %141, %144 ]
  call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !606, metadata !732), !dbg !3077
  br i1 %19, label %148, label %149, !dbg !3186

; <label>:148:                                    ; preds = %146
  store i8* %140, i8** %5, align 8, !dbg !3187, !tbaa !739
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !608, metadata !732), !dbg !3060
  br label %149, !dbg !3190

; <label>:149:                                    ; preds = %146, %148, %133
  %150 = phi i1 [ true, %148 ], [ true, %146 ], [ false, %133 ]
  %151 = phi i8* [ null, %148 ], [ null, %146 ], [ %136, %133 ]
  %152 = phi i8* [ %147, %148 ], [ %147, %146 ], [ %98, %133 ]
  %153 = phi i8* [ null, %148 ], [ %140, %146 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !608, metadata !732), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !606, metadata !732), !dbg !3077
  call void @free(i8* %152) #11, !dbg !3191
  call void @free(i8* %153) #11, !dbg !3192
  br i1 %150, label %156, label %154, !dbg !3193

; <label>:154:                                    ; preds = %149
  %155 = call i8* @dcgettext(i8* null, i8* nonnull %151, i32 5) #11, !dbg !3194
  br label %156, !dbg !3193

; <label>:156:                                    ; preds = %149, %154
  %157 = phi i8* [ %155, %154 ], [ null, %149 ], !dbg !3193
  ret i8* %157, !dbg !3195
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3196 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3254, metadata !732), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3255, metadata !732), !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3256, metadata !732), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3257, metadata !732), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3258, metadata !732), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3259, metadata !732), !dbg !3265
  %7 = icmp eq i8* %1, null, !dbg !3266
  br i1 %7, label %10, label %8, !dbg !3268

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3269
  br label %12, !dbg !3269

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3270
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i32 5) #11, !dbg !3271
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3271
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.89, i64 0, i64 0), i32 5) #11, !dbg !3272
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3272
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
  ], !dbg !3273

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3274
  unreachable, !dbg !3274

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.90, i64 0, i64 0), i32 5) #11, !dbg !3276
  %20 = load i8*, i8** %4, align 8, !dbg !3276, !tbaa !739
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3276
  br label %146, !dbg !3277

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.91, i64 0, i64 0), i32 5) #11, !dbg !3278
  %24 = load i8*, i8** %4, align 8, !dbg !3278, !tbaa !739
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3278
  %26 = load i8*, i8** %25, align 8, !dbg !3278, !tbaa !739
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3278
  br label %146, !dbg !3279

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.92, i64 0, i64 0), i32 5) #11, !dbg !3280
  %30 = load i8*, i8** %4, align 8, !dbg !3280, !tbaa !739
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3280
  %32 = load i8*, i8** %31, align 8, !dbg !3280, !tbaa !739
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3280
  %34 = load i8*, i8** %33, align 8, !dbg !3280, !tbaa !739
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3280
  br label %146, !dbg !3281

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.93, i64 0, i64 0), i32 5) #11, !dbg !3282
  %38 = load i8*, i8** %4, align 8, !dbg !3282, !tbaa !739
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3282
  %40 = load i8*, i8** %39, align 8, !dbg !3282, !tbaa !739
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3282
  %42 = load i8*, i8** %41, align 8, !dbg !3282, !tbaa !739
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3282
  %44 = load i8*, i8** %43, align 8, !dbg !3282, !tbaa !739
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3282
  br label %146, !dbg !3283

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.94, i64 0, i64 0), i32 5) #11, !dbg !3284
  %48 = load i8*, i8** %4, align 8, !dbg !3284, !tbaa !739
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3284
  %50 = load i8*, i8** %49, align 8, !dbg !3284, !tbaa !739
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3284
  %52 = load i8*, i8** %51, align 8, !dbg !3284, !tbaa !739
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3284
  %54 = load i8*, i8** %53, align 8, !dbg !3284, !tbaa !739
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3284
  %56 = load i8*, i8** %55, align 8, !dbg !3284, !tbaa !739
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3284
  br label %146, !dbg !3285

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.95, i64 0, i64 0), i32 5) #11, !dbg !3286
  %60 = load i8*, i8** %4, align 8, !dbg !3286, !tbaa !739
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3286
  %62 = load i8*, i8** %61, align 8, !dbg !3286, !tbaa !739
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3286
  %64 = load i8*, i8** %63, align 8, !dbg !3286, !tbaa !739
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3286
  %66 = load i8*, i8** %65, align 8, !dbg !3286, !tbaa !739
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3286
  %68 = load i8*, i8** %67, align 8, !dbg !3286, !tbaa !739
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3286
  %70 = load i8*, i8** %69, align 8, !dbg !3286, !tbaa !739
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3286
  br label %146, !dbg !3287

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.96, i64 0, i64 0), i32 5) #11, !dbg !3288
  %74 = load i8*, i8** %4, align 8, !dbg !3288, !tbaa !739
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3288
  %76 = load i8*, i8** %75, align 8, !dbg !3288, !tbaa !739
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3288
  %78 = load i8*, i8** %77, align 8, !dbg !3288, !tbaa !739
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3288
  %80 = load i8*, i8** %79, align 8, !dbg !3288, !tbaa !739
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3288
  %82 = load i8*, i8** %81, align 8, !dbg !3288, !tbaa !739
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3288
  %84 = load i8*, i8** %83, align 8, !dbg !3288, !tbaa !739
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3288
  %86 = load i8*, i8** %85, align 8, !dbg !3288, !tbaa !739
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3288
  br label %146, !dbg !3289

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.97, i64 0, i64 0), i32 5) #11, !dbg !3290
  %90 = load i8*, i8** %4, align 8, !dbg !3290, !tbaa !739
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3290
  %92 = load i8*, i8** %91, align 8, !dbg !3290, !tbaa !739
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3290
  %94 = load i8*, i8** %93, align 8, !dbg !3290, !tbaa !739
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3290
  %96 = load i8*, i8** %95, align 8, !dbg !3290, !tbaa !739
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3290
  %98 = load i8*, i8** %97, align 8, !dbg !3290, !tbaa !739
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3290
  %100 = load i8*, i8** %99, align 8, !dbg !3290, !tbaa !739
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3290
  %102 = load i8*, i8** %101, align 8, !dbg !3290, !tbaa !739
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3290
  %104 = load i8*, i8** %103, align 8, !dbg !3290, !tbaa !739
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3290
  br label %146, !dbg !3291

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.98, i64 0, i64 0), i32 5) #11, !dbg !3292
  %108 = load i8*, i8** %4, align 8, !dbg !3292, !tbaa !739
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3292
  %110 = load i8*, i8** %109, align 8, !dbg !3292, !tbaa !739
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3292
  %112 = load i8*, i8** %111, align 8, !dbg !3292, !tbaa !739
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3292
  %114 = load i8*, i8** %113, align 8, !dbg !3292, !tbaa !739
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3292
  %116 = load i8*, i8** %115, align 8, !dbg !3292, !tbaa !739
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3292
  %118 = load i8*, i8** %117, align 8, !dbg !3292, !tbaa !739
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3292
  %120 = load i8*, i8** %119, align 8, !dbg !3292, !tbaa !739
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3292
  %122 = load i8*, i8** %121, align 8, !dbg !3292, !tbaa !739
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3292
  %124 = load i8*, i8** %123, align 8, !dbg !3292, !tbaa !739
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3292
  br label %146, !dbg !3293

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.99, i64 0, i64 0), i32 5) #11, !dbg !3294
  %128 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !739
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3294
  %130 = load i8*, i8** %129, align 8, !dbg !3294, !tbaa !739
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3294
  %132 = load i8*, i8** %131, align 8, !dbg !3294, !tbaa !739
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3294
  %134 = load i8*, i8** %133, align 8, !dbg !3294, !tbaa !739
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3294
  %136 = load i8*, i8** %135, align 8, !dbg !3294, !tbaa !739
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3294
  %138 = load i8*, i8** %137, align 8, !dbg !3294, !tbaa !739
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3294
  %140 = load i8*, i8** %139, align 8, !dbg !3294, !tbaa !739
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3294
  %142 = load i8*, i8** %141, align 8, !dbg !3294, !tbaa !739
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3294
  %144 = load i8*, i8** %143, align 8, !dbg !3294, !tbaa !739
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3294
  br label %146, !dbg !3295

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3296
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3297 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3301, metadata !732), !dbg !3307
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3302, metadata !732), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3303, metadata !732), !dbg !3309
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3304, metadata !732), !dbg !3310
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3305, metadata !732), !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3306, metadata !732), !dbg !3312
  br label %6, !dbg !3313

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3306, metadata !732), !dbg !3312
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3315
  %9 = load i8*, i8** %8, align 8, !dbg !3315, !tbaa !739
  %10 = icmp eq i8* %9, null, !dbg !3317
  %11 = add i64 %7, 1, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3306, metadata !732), !dbg !3312
  br i1 %10, label %12, label %6, !dbg !3317, !llvm.loop !3319

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3321
  ret void, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3323 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3334, metadata !732), !dbg !3342
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3335, metadata !732), !dbg !3343
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3336, metadata !732), !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3337, metadata !732), !dbg !3345
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3338, metadata !732), !dbg !3346
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3347
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3340, metadata !732), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %11 = load i32, i32* %8, align 8, !dbg !3350
  %12 = icmp ult i32 %11, 41, !dbg !3350
  br i1 %12, label %13, label %18, !dbg !3350

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3350
  %15 = sext i32 %11 to i64, !dbg !3350
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3350
  %17 = add i32 %11, 8, !dbg !3350
  store i32 %17, i32* %8, align 8, !dbg !3350
  br label %21, !dbg !3350

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3350
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3350
  store i8* %20, i8** %10, align 8, !dbg !3350
  br label %21, !dbg !3350

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3350
  %25 = load i8*, i8** %24, align 8, !dbg !3350
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3353
  store i8* %25, i8** %26, align 16, !dbg !3354, !tbaa !739
  %27 = icmp eq i8* %25, null, !dbg !3355
  br i1 %27, label %30, label %28, !dbg !3356

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %29 = icmp ult i32 %22, 41, !dbg !3350
  br i1 %29, label %35, label %32, !dbg !3350

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3358
  ret void, !dbg !3358

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3350
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3350
  store i8* %34, i8** %10, align 8, !dbg !3350
  br label %40, !dbg !3350

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3350
  %37 = sext i32 %22 to i64, !dbg !3350
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3350
  %39 = add i32 %22, 8, !dbg !3350
  store i32 %39, i32* %8, align 8, !dbg !3350
  br label %40, !dbg !3350

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3350
  %44 = load i8*, i8** %43, align 8, !dbg !3350
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3353
  store i8* %44, i8** %45, align 8, !dbg !3354, !tbaa !739
  %46 = icmp eq i8* %44, null, !dbg !3355
  br i1 %46, label %30, label %47, !dbg !3356

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %48 = icmp ult i32 %41, 41, !dbg !3350
  br i1 %48, label %52, label %49, !dbg !3350

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3350
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3350
  store i8* %51, i8** %10, align 8, !dbg !3350
  br label %57, !dbg !3350

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3350
  %54 = sext i32 %41 to i64, !dbg !3350
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3350
  %56 = add i32 %41, 8, !dbg !3350
  store i32 %56, i32* %8, align 8, !dbg !3350
  br label %57, !dbg !3350

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3350
  %61 = load i8*, i8** %60, align 8, !dbg !3350
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3353
  store i8* %61, i8** %62, align 16, !dbg !3354, !tbaa !739
  %63 = icmp eq i8* %61, null, !dbg !3355
  br i1 %63, label %30, label %64, !dbg !3356

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %65 = icmp ult i32 %58, 41, !dbg !3350
  br i1 %65, label %69, label %66, !dbg !3350

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3350
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3350
  store i8* %68, i8** %10, align 8, !dbg !3350
  br label %74, !dbg !3350

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3350
  %71 = sext i32 %58 to i64, !dbg !3350
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3350
  %73 = add i32 %58, 8, !dbg !3350
  store i32 %73, i32* %8, align 8, !dbg !3350
  br label %74, !dbg !3350

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3350
  %78 = load i8*, i8** %77, align 8, !dbg !3350
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3353
  store i8* %78, i8** %79, align 8, !dbg !3354, !tbaa !739
  %80 = icmp eq i8* %78, null, !dbg !3355
  br i1 %80, label %30, label %81, !dbg !3356

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %82 = icmp ult i32 %75, 41, !dbg !3350
  br i1 %82, label %86, label %83, !dbg !3350

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3350
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3350
  store i8* %85, i8** %10, align 8, !dbg !3350
  br label %91, !dbg !3350

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3350
  %88 = sext i32 %75 to i64, !dbg !3350
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3350
  %90 = add i32 %75, 8, !dbg !3350
  store i32 %90, i32* %8, align 8, !dbg !3350
  br label %91, !dbg !3350

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3350
  %95 = load i8*, i8** %94, align 8, !dbg !3350
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3353
  store i8* %95, i8** %96, align 16, !dbg !3354, !tbaa !739
  %97 = icmp eq i8* %95, null, !dbg !3355
  br i1 %97, label %30, label %98, !dbg !3356

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %99 = icmp ult i32 %92, 41, !dbg !3350
  br i1 %99, label %103, label %100, !dbg !3350

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3350
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3350
  store i8* %102, i8** %10, align 8, !dbg !3350
  br label %108, !dbg !3350

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3350
  %105 = sext i32 %92 to i64, !dbg !3350
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3350
  %107 = add i32 %92, 8, !dbg !3350
  store i32 %107, i32* %8, align 8, !dbg !3350
  br label %108, !dbg !3350

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3350
  %111 = load i8*, i8** %110, align 8, !dbg !3350
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3353
  store i8* %111, i8** %112, align 8, !dbg !3354, !tbaa !739
  %113 = icmp eq i8* %111, null, !dbg !3355
  br i1 %113, label %30, label %114, !dbg !3356

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %115 = load i8*, i8** %10, align 8, !dbg !3350
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3350
  store i8* %116, i8** %10, align 8, !dbg !3350
  %117 = bitcast i8* %115 to i8**, !dbg !3350
  %118 = load i8*, i8** %117, align 8, !dbg !3350
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3353
  store i8* %118, i8** %119, align 16, !dbg !3354, !tbaa !739
  %120 = icmp eq i8* %118, null, !dbg !3355
  br i1 %120, label %30, label %121, !dbg !3356

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %122 = load i8*, i8** %10, align 8, !dbg !3350
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3350
  store i8* %123, i8** %10, align 8, !dbg !3350
  %124 = bitcast i8* %122 to i8**, !dbg !3350
  %125 = load i8*, i8** %124, align 8, !dbg !3350
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3353
  store i8* %125, i8** %126, align 8, !dbg !3354, !tbaa !739
  %127 = icmp eq i8* %125, null, !dbg !3355
  br i1 %127, label %30, label %128, !dbg !3356

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %129 = load i8*, i8** %10, align 8, !dbg !3350
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3350
  store i8* %130, i8** %10, align 8, !dbg !3350
  %131 = bitcast i8* %129 to i8**, !dbg !3350
  %132 = load i8*, i8** %131, align 8, !dbg !3350
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3353
  store i8* %132, i8** %133, align 16, !dbg !3354, !tbaa !739
  %134 = icmp eq i8* %132, null, !dbg !3355
  br i1 %134, label %30, label %135, !dbg !3356

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3339, metadata !732), !dbg !3349
  %136 = load i8*, i8** %10, align 8, !dbg !3350
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3350
  store i8* %137, i8** %10, align 8, !dbg !3350
  %138 = bitcast i8* %136 to i8**, !dbg !3350
  %139 = load i8*, i8** %138, align 8, !dbg !3350
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3353
  store i8* %139, i8** %140, align 8, !dbg !3354, !tbaa !739
  %141 = icmp eq i8* %139, null, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3339, metadata !732), !dbg !3349
  %142 = select i1 %141, i64 9, i64 10, !dbg !3356
  br label %30, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3359 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3363, metadata !732), !dbg !3374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3364, metadata !732), !dbg !3375
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3365, metadata !732), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3366, metadata !732), !dbg !3377
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3378
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3378
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3367, metadata !732), !dbg !3379
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3380
  call void @llvm.va_start(i8* nonnull %6), !dbg !3380
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3381
  call void @llvm.va_end(i8* nonnull %6), !dbg !3382
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3383
  ret void, !dbg !3383
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3384 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.102, i64 0, i64 0), i32 5) #11, !dbg !3385
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.103, i64 0, i64 0)) #11, !dbg !3385
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.104, i64 0, i64 0), i32 5) #11, !dbg !3386
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.106, i64 0, i64 0)) #11, !dbg !3386
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.107, i64 0, i64 0), i32 5) #11, !dbg !3387
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3387, !tbaa !739
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3387
  ret void, !dbg !3388
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3389 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3393, metadata !732), !dbg !3395
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3394, metadata !732), !dbg !3396
  %3 = udiv i64 9223372036854775807, %1, !dbg !3397
  %4 = icmp ult i64 %3, %0, !dbg !3397
  br i1 %4, label %5, label %6, !dbg !3399

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3400
  unreachable, !dbg !3400

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3402, metadata !732) #11, !dbg !3409
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3408, metadata !732) #11, !dbg !3412
  %9 = icmp eq i8* %8, null, !dbg !3413
  %10 = icmp ne i64 %7, 0, !dbg !3415
  %11 = and i1 %10, %9, !dbg !3416
  br i1 %11, label %12, label %13, !dbg !3416

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3417
  unreachable, !dbg !3417

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3418
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3403 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3402, metadata !732), !dbg !3419
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3420
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3408, metadata !732), !dbg !3421
  %3 = icmp eq i8* %2, null, !dbg !3422
  %4 = icmp ne i64 %0, 0, !dbg !3423
  %5 = and i1 %4, %3, !dbg !3424
  br i1 %5, label %6, label %7, !dbg !3424

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3425
  unreachable, !dbg !3425

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3426
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3427 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3431, metadata !732), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3432, metadata !732), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3433, metadata !732), !dbg !3436
  %4 = udiv i64 9223372036854775807, %2, !dbg !3437
  %5 = icmp ult i64 %4, %1, !dbg !3437
  br i1 %5, label %6, label %7, !dbg !3439

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3440
  unreachable, !dbg !3440

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !732) #11, !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3447, metadata !732) #11, !dbg !3450
  %9 = icmp eq i64 %8, 0, !dbg !3451
  %10 = icmp ne i8* %0, null, !dbg !3453
  %11 = and i1 %10, %9, !dbg !3454
  br i1 %11, label %12, label %13, !dbg !3454

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3455
  br label %19, !dbg !3457

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3458
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3442, metadata !732) #11, !dbg !3448
  %15 = icmp eq i8* %14, null, !dbg !3459
  %16 = icmp ne i64 %8, 0, !dbg !3461
  %17 = and i1 %16, %15, !dbg !3462
  br i1 %17, label %18, label %19, !dbg !3462

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3463
  unreachable, !dbg !3463

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3464
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3443 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !732), !dbg !3465
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3447, metadata !732), !dbg !3466
  %3 = icmp eq i64 %1, 0, !dbg !3467
  %4 = icmp ne i8* %0, null, !dbg !3468
  %5 = and i1 %4, %3, !dbg !3469
  br i1 %5, label %6, label %7, !dbg !3469

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3470
  br label %13, !dbg !3471

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3442, metadata !732), !dbg !3465
  %9 = icmp eq i8* %8, null, !dbg !3473
  %10 = icmp ne i64 %1, 0, !dbg !3474
  %11 = and i1 %10, %9, !dbg !3475
  br i1 %11, label %12, label %13, !dbg !3475

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3476
  unreachable, !dbg !3476

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3477
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !650 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !652, metadata !732), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !653, metadata !732), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !654, metadata !732), !dbg !3480
  %4 = load i64, i64* %1, align 8, !dbg !3481, !tbaa !846
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !655, metadata !732), !dbg !3482
  %5 = icmp eq i8* %0, null, !dbg !3483
  br i1 %5, label %6, label %13, !dbg !3485

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3486
  br i1 %7, label %8, label %17, !dbg !3489

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !655, metadata !732), !dbg !3482
  %10 = icmp ugt i64 %2, 128, !dbg !3492
  %11 = zext i1 %10 to i64, !dbg !3492
  %12 = add nuw nsw i64 %9, %11, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !655, metadata !732), !dbg !3482
  br label %17, !dbg !3494

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3495
  %15 = icmp ugt i64 %14, %4, !dbg !3498
  br i1 %15, label %20, label %16, !dbg !3499

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3500
  unreachable, !dbg !3500

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !655, metadata !732), !dbg !3482
  store i64 %18, i64* %1, align 8, !dbg !3501, !tbaa !846
  %19 = mul i64 %18, %2, !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !732) #11, !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3447, metadata !732) #11, !dbg !3505
  br label %27, !dbg !3506

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3507
  %22 = add i64 %4, 1, !dbg !3508
  %23 = add i64 %22, %21, !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !655, metadata !732), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !655, metadata !732), !dbg !3482
  store i64 %23, i64* %1, align 8, !dbg !3501, !tbaa !846
  %24 = mul i64 %23, %2, !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !732) #11, !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3447, metadata !732) #11, !dbg !3505
  %25 = icmp eq i64 %24, 0, !dbg !3510
  br i1 %25, label %26, label %27, !dbg !3506

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3511
  br label %34, !dbg !3512

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3513
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3442, metadata !732) #11, !dbg !3503
  %30 = icmp eq i8* %29, null, !dbg !3514
  %31 = icmp ne i64 %28, 0, !dbg !3515
  %32 = and i1 %31, %30, !dbg !3516
  br i1 %32, label %33, label %34, !dbg !3516

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3517
  unreachable, !dbg !3517

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3518
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3519 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3521, metadata !732), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3402, metadata !732) #11, !dbg !3523
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3525
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3408, metadata !732) #11, !dbg !3526
  %3 = icmp eq i8* %2, null, !dbg !3527
  %4 = icmp ne i64 %0, 0, !dbg !3528
  %5 = and i1 %4, %3, !dbg !3529
  br i1 %5, label %6, label %7, !dbg !3529

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3530
  unreachable, !dbg !3530

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3532 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !732), !dbg !3538
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3537, metadata !732), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !652, metadata !732) #11, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !653, metadata !732) #11, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !654, metadata !732) #11, !dbg !3543
  %3 = load i64, i64* %1, align 8, !dbg !3544, !tbaa !846
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !655, metadata !732) #11, !dbg !3545
  %4 = icmp eq i8* %0, null, !dbg !3546
  br i1 %4, label %5, label %8, !dbg !3547

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !655, metadata !732) #11, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !655, metadata !732) #11, !dbg !3545
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !655, metadata !732) #11, !dbg !3545
  store i64 %7, i64* %1, align 8, !dbg !3550, !tbaa !846
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !732) #11, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3447, metadata !732) #11, !dbg !3553
  br label %17, !dbg !3554

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3555
  br i1 %9, label %11, label %10, !dbg !3556

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3557
  unreachable, !dbg !3557

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3558
  %13 = add i64 %3, 1, !dbg !3559
  %14 = add i64 %13, %12, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !655, metadata !732) #11, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !655, metadata !732) #11, !dbg !3545
  store i64 %14, i64* %1, align 8, !dbg !3550, !tbaa !846
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !732) #11, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3447, metadata !732) #11, !dbg !3553
  %15 = icmp eq i64 %14, 0, !dbg !3561
  br i1 %15, label %16, label %17, !dbg !3554

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3562
  br label %24, !dbg !3563

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3442, metadata !732) #11, !dbg !3551
  %20 = icmp eq i8* %19, null, !dbg !3565
  %21 = icmp ne i64 %18, 0, !dbg !3566
  %22 = and i1 %21, %20, !dbg !3567
  br i1 %22, label %23, label %24, !dbg !3567

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3568
  unreachable, !dbg !3568

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3569
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3570 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3572, metadata !732), !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3402, metadata !732) #11, !dbg !3574
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3408, metadata !732) #11, !dbg !3577
  %3 = icmp eq i8* %2, null, !dbg !3578
  %4 = icmp ne i64 %0, 0, !dbg !3579
  %5 = and i1 %4, %3, !dbg !3580
  br i1 %5, label %6, label %7, !dbg !3580

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3581
  unreachable, !dbg !3581

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3582
  ret i8* %2, !dbg !3583
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3584 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3586, metadata !732), !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3587, metadata !732), !dbg !3590
  %3 = udiv i64 9223372036854775807, %1, !dbg !3591
  %4 = icmp ult i64 %3, %0, !dbg !3591
  br i1 %4, label %8, label %5, !dbg !3593

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3588, metadata !732), !dbg !3595
  %7 = icmp eq i8* %6, null, !dbg !3596
  br i1 %7, label %8, label %9, !dbg !3597

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3598
  unreachable, !dbg !3598

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3599
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3600 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3606, metadata !732), !dbg !3608
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3607, metadata !732), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3402, metadata !732) #11, !dbg !3610
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3408, metadata !732) #11, !dbg !3613
  %4 = icmp eq i8* %3, null, !dbg !3614
  %5 = icmp ne i64 %1, 0, !dbg !3615
  %6 = and i1 %5, %4, !dbg !3616
  br i1 %6, label %7, label %8, !dbg !3616

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3617
  unreachable, !dbg !3617

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3618
  ret i8* %3, !dbg !3619
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3620 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3622, metadata !732), !dbg !3623
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3624
  %3 = add i64 %2, 1, !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3606, metadata !732) #11, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3607, metadata !732) #11, !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3402, metadata !732) #11, !dbg !3629
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3631
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3408, metadata !732) #11, !dbg !3632
  %5 = icmp eq i8* %4, null, !dbg !3633
  %6 = icmp ne i64 %3, 0, !dbg !3634
  %7 = and i1 %6, %5, !dbg !3635
  br i1 %7, label %8, label %9, !dbg !3635

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3636
  unreachable, !dbg !3636

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3637
  ret i8* %4, !dbg !3638
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3639 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3641, !tbaa !838
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.120, i64 0, i64 0), i32 5) #11, !dbg !3642
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i8* %2) #11, !dbg !3643
  tail call void @abort() #15, !dbg !3644
  unreachable, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #6 !dbg !3645 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3648, metadata !732), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3649, metadata !732), !dbg !3653
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !3650, metadata !732), !dbg !3654
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #11, !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3651, metadata !732), !dbg !3656
  %5 = icmp eq i32 %4, -1, !dbg !3657
  br i1 %5, label %6, label %11, !dbg !3659

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3660
  %8 = load i32, i32* %7, align 4, !dbg !3660, !tbaa !838
  %9 = icmp eq i32 %8, 12, !dbg !3661
  br i1 %9, label %10, label %11, !dbg !3662

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3663
  unreachable, !dbg !3663

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3665 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3672, metadata !732), !dbg !3690
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3673, metadata !732), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3674, metadata !732), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3675, metadata !732), !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3676, metadata !732), !dbg !3694
  %7 = bitcast i8** %6 to i8*, !dbg !3695
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !3695
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3680, metadata !732), !dbg !3696
  %8 = icmp ult i32 %2, 37, !dbg !3697
  br i1 %8, label %10, label %9, !dbg !3697

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.126, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.127, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15, !dbg !3697
  unreachable, !dbg !3697

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3700
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3678, metadata !732), !dbg !3701
  %12 = tail call i32* @__errno_location() #17, !dbg !3702
  store i32 0, i32* %12, align 4, !dbg !3703, !tbaa !838
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3681, metadata !732), !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3684, metadata !1107), !dbg !3705
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3706
  %14 = load i16*, i16** %13, align 8, !tbaa !739
  br label %15, !dbg !3707

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !874
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3684, metadata !732), !dbg !3705
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3681, metadata !732), !dbg !3704
  %18 = zext i8 %17 to i64, !dbg !3706
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3706
  %20 = load i16, i16* %19, align 2, !dbg !3706, !tbaa !1182
  %21 = and i16 %20, 8192, !dbg !3706
  %22 = icmp eq i16 %21, 0, !dbg !3707
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3708
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3681, metadata !732), !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3684, metadata !1107), !dbg !3705
  br i1 %22, label %24, label %15, !dbg !3707, !llvm.loop !3709

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3700
  %26 = icmp eq i8 %17, 45, !dbg !3711
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #11, !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3679, metadata !732), !dbg !3714
  %29 = load i8*, i8** %25, align 8, !dbg !3715, !tbaa !739
  %30 = icmp eq i8* %29, %0, !dbg !3717
  br i1 %30, label %31, label %40, !dbg !3718

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3719
  br i1 %32, label %265, label %33, !dbg !3722

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3723, !tbaa !874
  %35 = icmp eq i8 %34, 0, !dbg !3723
  br i1 %35, label %265, label %36, !dbg !3724

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3723
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3725
  %39 = icmp eq i8* %38, null, !dbg !3725
  br i1 %39, label %265, label %47, !dbg !3726

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3727, !tbaa !838
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3729

; <label>:42:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3680, metadata !732), !dbg !3696
  br label %43, !dbg !3730

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3680, metadata !732), !dbg !3696
  %45 = icmp eq i8* %4, null, !dbg !3732
  br i1 %45, label %46, label %47, !dbg !3734

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3679, metadata !732), !dbg !3714
  store i64 %28, i64* %3, align 8, !dbg !3735, !tbaa !846
  br label %265, !dbg !3737

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3738, !tbaa !874
  %51 = sext i8 %50 to i32, !dbg !3738
  %52 = icmp eq i8 %50, 0, !dbg !3739
  br i1 %52, label %262, label %53, !dbg !3740

; <label>:53:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3685, metadata !732), !dbg !3741
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3688, metadata !732), !dbg !3742
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3743
  %55 = icmp eq i8* %54, null, !dbg !3743
  br i1 %55, label %56, label %58, !dbg !3745

; <label>:56:                                     ; preds = %53
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3679, metadata !732), !dbg !3714
  store i64 %49, i64* %3, align 8, !dbg !3746, !tbaa !846
  %57 = or i32 %48, 2, !dbg !3748
  br label %265, !dbg !3749

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
  ], !dbg !3750

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3751
  %61 = icmp eq i8* %60, null, !dbg !3751
  br i1 %61, label %72, label %62, !dbg !3754

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3755
  %64 = load i8, i8* %63, align 1, !dbg !3755, !tbaa !874
  %65 = sext i8 %64 to i32, !dbg !3755
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3756

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3757
  %68 = load i8, i8* %67, align 1, !dbg !3757, !tbaa !874
  %69 = icmp eq i8 %68, 66, !dbg !3760
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3688, metadata !732), !dbg !3742
  %70 = select i1 %69, i64 3, i64 1, !dbg !3761
  br label %72, !dbg !3761

; <label>:71:                                     ; preds = %62, %62
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3685, metadata !732), !dbg !3741
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3688, metadata !732), !dbg !3742
  br label %72, !dbg !3762

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
  ], !dbg !3763

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3764, metadata !732), !dbg !3770
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3773
  %77 = shl i64 %49, 9, !dbg !3775
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3776
  %79 = zext i1 %76 to i32, !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3689, metadata !732), !dbg !3777
  br label %253, !dbg !3778

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3764, metadata !732), !dbg !3779
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3781
  %82 = shl i64 %49, 10, !dbg !3782
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3783
  %84 = zext i1 %81 to i32, !dbg !3783
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3689, metadata !732), !dbg !3777
  br label %253, !dbg !3784

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  %87 = icmp ult i64 %86, %49, !dbg !3796
  %88 = mul i64 %49, %73, !dbg !3798
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  %90 = icmp ult i64 %86, %89, !dbg !3796
  %91 = mul i64 %89, %73, !dbg !3798
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3799
  %93 = or i1 %87, %90, !dbg !3800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  %94 = icmp ult i64 %86, %92, !dbg !3796
  %95 = mul i64 %92, %73, !dbg !3798
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3799
  %97 = or i1 %93, %94, !dbg !3800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  %98 = icmp ult i64 %86, %96, !dbg !3796
  %99 = mul i64 %96, %73, !dbg !3798
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3799
  %101 = or i1 %97, %98, !dbg !3800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  %102 = icmp ult i64 %86, %100, !dbg !3796
  %103 = mul i64 %100, %73, !dbg !3798
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3799
  %105 = or i1 %101, %102, !dbg !3800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3795
  %106 = icmp ult i64 %86, %104, !dbg !3796
  %107 = mul i64 %104, %73, !dbg !3798
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3799
  %109 = or i1 %105, %106, !dbg !3800
  %110 = zext i1 %109 to i32, !dbg !3800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3793
  br label %253, !dbg !3801

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3802
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3804
  %113 = icmp ult i64 %112, %49, !dbg !3805
  %114 = mul i64 %49, %73, !dbg !3807
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3804
  %116 = icmp ult i64 %112, %115, !dbg !3805
  %117 = mul i64 %115, %73, !dbg !3807
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3808
  %119 = or i1 %113, %116, !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3804
  %120 = icmp ult i64 %112, %118, !dbg !3805
  %121 = mul i64 %118, %73, !dbg !3807
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3808
  %123 = or i1 %119, %120, !dbg !3809
  %124 = zext i1 %123 to i32, !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3802
  br label %253, !dbg !3801

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !732), !dbg !3810
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !732), !dbg !3810
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3785, metadata !732), !dbg !3810
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3812
  %127 = icmp ult i64 %126, %49, !dbg !3813
  %128 = mul i64 %49, %73, !dbg !3815
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3816
  %130 = zext i1 %127 to i32, !dbg !3816
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3792, metadata !732), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3792, metadata !732), !dbg !3812
  br label %253, !dbg !3801

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3819
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3819
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3817
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3819
  %133 = icmp ult i64 %132, %49, !dbg !3820
  %134 = mul i64 %49, %73, !dbg !3822
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3823
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !732), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !732), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3785, metadata !732), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3819
  %136 = icmp ult i64 %132, %135, !dbg !3820
  %137 = mul i64 %135, %73, !dbg !3822
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3823
  %139 = or i1 %133, %136, !dbg !3824
  %140 = zext i1 %139 to i32, !dbg !3824
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !732), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !732), !dbg !3817
  br label %253, !dbg !3801

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  %143 = icmp ult i64 %142, %49, !dbg !3828
  %144 = mul i64 %49, %73, !dbg !3830
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  %146 = icmp ult i64 %142, %145, !dbg !3828
  %147 = mul i64 %145, %73, !dbg !3830
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3831
  %149 = or i1 %143, %146, !dbg !3832
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  %150 = icmp ult i64 %142, %148, !dbg !3828
  %151 = mul i64 %148, %73, !dbg !3830
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3831
  %153 = or i1 %149, %150, !dbg !3832
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  %154 = icmp ult i64 %142, %152, !dbg !3828
  %155 = mul i64 %152, %73, !dbg !3830
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3831
  %157 = or i1 %153, %154, !dbg !3832
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3827
  %158 = icmp ult i64 %142, %156, !dbg !3828
  %159 = mul i64 %156, %73, !dbg !3830
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3831
  %161 = or i1 %157, %158, !dbg !3832
  %162 = zext i1 %161 to i32, !dbg !3832
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3825
  br label %253, !dbg !3801

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3835
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3835
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3833
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3835
  %165 = icmp ult i64 %164, %49, !dbg !3836
  %166 = mul i64 %49, %73, !dbg !3838
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3835
  %168 = icmp ult i64 %164, %167, !dbg !3836
  %169 = mul i64 %167, %73, !dbg !3838
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3839
  %171 = or i1 %165, %168, !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3835
  %172 = icmp ult i64 %164, %170, !dbg !3836
  %173 = mul i64 %170, %73, !dbg !3838
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3839
  %175 = or i1 %171, %172, !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3835
  %176 = icmp ult i64 %164, %174, !dbg !3836
  %177 = mul i64 %174, %73, !dbg !3838
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3839
  %179 = or i1 %175, %176, !dbg !3840
  %180 = zext i1 %179 to i32, !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3785, metadata !732), !dbg !3833
  br label %253, !dbg !3801

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3764, metadata !732), !dbg !3841
  %182 = icmp slt i64 %49, 0, !dbg !3843
  %183 = shl i64 %49, 1, !dbg !3844
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3845
  %185 = lshr i64 %49, 63, !dbg !3845
  %186 = trunc i64 %185 to i32, !dbg !3845
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3689, metadata !732), !dbg !3777
  br label %253, !dbg !3846

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %189 = icmp ult i64 %188, %49, !dbg !3850
  %190 = mul i64 %49, %73, !dbg !3852
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %192 = icmp ult i64 %188, %191, !dbg !3850
  %193 = mul i64 %191, %73, !dbg !3852
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3853
  %195 = or i1 %189, %192, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %196 = icmp ult i64 %188, %194, !dbg !3850
  %197 = mul i64 %194, %73, !dbg !3852
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3853
  %199 = or i1 %195, %196, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %200 = icmp ult i64 %188, %198, !dbg !3850
  %201 = mul i64 %198, %73, !dbg !3852
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3853
  %203 = or i1 %199, %200, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %204 = icmp ult i64 %188, %202, !dbg !3850
  %205 = mul i64 %202, %73, !dbg !3852
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3853
  %207 = or i1 %203, %204, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %208 = icmp ult i64 %188, %206, !dbg !3850
  %209 = mul i64 %206, %73, !dbg !3852
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3853
  %211 = or i1 %207, %208, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %212 = icmp ult i64 %188, %210, !dbg !3850
  %213 = mul i64 %210, %73, !dbg !3852
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3853
  %215 = or i1 %211, %212, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3849
  %216 = icmp ult i64 %188, %214, !dbg !3850
  %217 = mul i64 %214, %73, !dbg !3852
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3853
  %219 = or i1 %215, %216, !dbg !3854
  %220 = zext i1 %219 to i32, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3847
  br label %253, !dbg !3801

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %223 = icmp ult i64 %222, %49, !dbg !3858
  %224 = mul i64 %49, %73, !dbg !3860
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %226 = icmp ult i64 %222, %225, !dbg !3858
  %227 = mul i64 %225, %73, !dbg !3860
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3861
  %229 = or i1 %223, %226, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %230 = icmp ult i64 %222, %228, !dbg !3858
  %231 = mul i64 %228, %73, !dbg !3860
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3861
  %233 = or i1 %229, %230, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %234 = icmp ult i64 %222, %232, !dbg !3858
  %235 = mul i64 %232, %73, !dbg !3860
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3861
  %237 = or i1 %233, %234, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %238 = icmp ult i64 %222, %236, !dbg !3858
  %239 = mul i64 %236, %73, !dbg !3860
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3861
  %241 = or i1 %237, %238, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %242 = icmp ult i64 %222, %240, !dbg !3858
  %243 = mul i64 %240, %73, !dbg !3860
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3861
  %245 = or i1 %241, %242, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3792, metadata !732), !dbg !3857
  %246 = icmp ult i64 %222, %244, !dbg !3858
  %247 = mul i64 %244, %73, !dbg !3860
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3861
  %249 = or i1 %245, %246, !dbg !3862
  %250 = zext i1 %249 to i32, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3785, metadata !732), !dbg !3855
  br label %253, !dbg !3801

; <label>:251:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3679, metadata !732), !dbg !3714
  store i64 %49, i64* %3, align 8, !dbg !3863, !tbaa !846
  %252 = or i32 %48, 2, !dbg !3864
  br label %265, !dbg !3865

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3689, metadata !732), !dbg !3777
  %256 = or i32 %255, %48, !dbg !3801
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3680, metadata !732), !dbg !3696
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3866
  store i8* %257, i8** %25, align 8, !dbg !3866, !tbaa !739
  %258 = load i8, i8* %257, align 1, !dbg !3867, !tbaa !874
  %259 = icmp eq i8 %258, 0, !dbg !3867
  %260 = or i32 %256, 2, !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3680, metadata !732), !dbg !3696
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3680, metadata !732), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3680, metadata !732), !dbg !3696
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3680, metadata !732), !dbg !3696
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3679, metadata !732), !dbg !3714
  store i64 %263, i64* %3, align 8, !dbg !3871, !tbaa !846
  br label %265, !dbg !3872

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !3873
  ret i32 %266, !dbg !3873
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3874 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3877, metadata !732), !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3878, metadata !732), !dbg !3884
  %3 = icmp eq i64 %0, 0, !dbg !3885
  %4 = icmp eq i64 %1, 0, !dbg !3886
  %5 = or i1 %3, %4, !dbg !3887
  br i1 %5, label %12, label %6, !dbg !3887

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3880, metadata !732), !dbg !3889
  %8 = udiv i64 %7, %1, !dbg !3890
  %9 = icmp eq i64 %8, %0, !dbg !3892
  br i1 %9, label %12, label %10, !dbg !3893

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3894
  store i32 12, i32* %11, align 4, !dbg !3896, !tbaa !838
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3877, metadata !732), !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3878, metadata !732), !dbg !3884
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3897
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3879, metadata !732), !dbg !3898
  br label %16, !dbg !3899

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3900
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3901 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3918, metadata !732), !dbg !3927
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3919, metadata !732), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3920, metadata !732), !dbg !3929
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3921, metadata !732), !dbg !3930
  %6 = bitcast i32* %5 to i8*, !dbg !3931
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3931
  %7 = icmp eq i32* %0, null, !dbg !3932
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3918, metadata !732), !dbg !3927
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3934
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3918, metadata !732), !dbg !3927
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3922, metadata !732), !dbg !3936
  %10 = icmp ugt i64 %9, -3, !dbg !3937
  %11 = icmp ne i64 %2, 0, !dbg !3938
  %12 = and i1 %11, %10, !dbg !3939
  br i1 %12, label %13, label %18, !dbg !3939

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3940
  br i1 %14, label %18, label %15, !dbg !3941

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3942, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3924, metadata !732), !dbg !3943
  %17 = zext i8 %16 to i32, !dbg !3944
  store i32 %17, i32* %8, align 4, !dbg !3945, !tbaa !838
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3946
  ret i64 %19, !dbg !3946
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3947 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3992, metadata !732), !dbg !3997
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3998
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3999, metadata !732), !dbg !4003
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4005
  %4 = load i32, i32* %3, align 8, !dbg !4005, !tbaa !4006
  %5 = and i32 %4, 32, !dbg !4005
  %6 = icmp eq i32 %5, 0, !dbg !4008
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4009
  %8 = icmp ne i32 %7, 0, !dbg !4010
  br i1 %6, label %9, label %19, !dbg !4011

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4013
  %11 = xor i1 %8, true, !dbg !4014
  %12 = or i1 %10, %11, !dbg !4014
  %13 = sext i1 %8 to i32, !dbg !4014
  br i1 %12, label %22, label %14, !dbg !4014

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4015
  %16 = load i32, i32* %15, align 4, !dbg !4015, !tbaa !838
  %17 = icmp ne i32 %16, 9, !dbg !4016
  %18 = sext i1 %17 to i32, !dbg !4017
  br label %22, !dbg !4017

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4018

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4020
  store i32 0, i32* %21, align 4, !dbg !4022, !tbaa !838
  br label %22, !dbg !4020

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4023
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4024 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4029, metadata !732), !dbg !4032
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4030, metadata !732), !dbg !4033
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4034
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4031, metadata !732), !dbg !4035
  %3 = icmp eq i8* %2, null, !dbg !4036
  br i1 %3, label %11, label %4, !dbg !4038

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0)) #14, !dbg !4039
  %6 = icmp eq i32 %5, 0, !dbg !4044
  br i1 %6, label %10, label %7, !dbg !4045

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0)) #14, !dbg !4046
  %9 = icmp eq i32 %8, 0, !dbg !4047
  br i1 %9, label %10, label %11, !dbg !4048

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4030, metadata !732), !dbg !4033
  br label %11, !dbg !4049

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4050
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !4051 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4056, metadata !732), !dbg !4059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4057, metadata !732), !dbg !4060
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !4061
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4058, metadata !732), !dbg !4062
  store i8 0, i8* %3, align 1, !dbg !4063, !tbaa !874
  br label %4, !dbg !4064, !llvm.loop !4067

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4058, metadata !732), !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4056, metadata !732), !dbg !4059
  %7 = urem i64 %5, 10, !dbg !4069
  %8 = trunc i64 %7 to i8, !dbg !4070
  %9 = or i8 %8, 48, !dbg !4070
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4058, metadata !732), !dbg !4062
  store i8 %9, i8* %10, align 1, !dbg !4072, !tbaa !874
  %11 = udiv i64 %5, 10, !dbg !4073
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4056, metadata !732), !dbg !4059
  %12 = icmp ugt i64 %5, 9, !dbg !4074
  br i1 %12, label %4, label %13, !dbg !4075, !llvm.loop !4067

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4058, metadata !732), !dbg !4062
  ret i8* %10, !dbg !4076
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4077 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4083, metadata !732), !dbg !4157
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4150, metadata !732), !dbg !4160
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4161
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4081, metadata !732), !dbg !4162
  %4 = icmp eq i8* %3, null, !dbg !4163
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %3, !dbg !4165
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4081, metadata !732), !dbg !4162
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4166, !tbaa !739
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4097, metadata !732) #11, !dbg !4167
  %7 = icmp eq i8* %6, null, !dbg !4168
  br i1 %7, label %8, label %123, !dbg !4169

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.143, i64 0, i64 0)) #11, !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4098, metadata !732) #11, !dbg !4171
  %10 = icmp eq i8* %9, null, !dbg !4172
  br i1 %10, label %14, label %11, !dbg !4174

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4175, !tbaa !874
  %13 = icmp eq i8 %12, 0, !dbg !4176
  br i1 %13, label %14, label %15, !dbg !4177

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4178

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.144, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4098, metadata !732) #11, !dbg !4171
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4101, metadata !732) #11, !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4103, metadata !732) #11, !dbg !4181
  %18 = icmp eq i64 %17, 0, !dbg !4182
  br i1 %18, label %24, label %19, !dbg !4183

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4184
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4184
  %22 = load i8, i8* %21, align 1, !dbg !4184, !tbaa !874
  %23 = icmp ne i8 %22, 47, !dbg !4184
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4185
  %27 = add i64 %17, 14, !dbg !4186
  %28 = add i64 %27, %26, !dbg !4187
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4188
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4100, metadata !732) #11, !dbg !4189
  %30 = icmp eq i8* %29, null, !dbg !4190
  br i1 %30, label %121, label %31, !dbg !4190

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4191
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4194

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4195, !tbaa !874
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4197
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.145, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4198
  br label %37, !dbg !4199

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4197
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.145, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4198
  br label %37, !dbg !4199

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4105, metadata !732) #11, !dbg !4201
  %39 = icmp slt i32 %38, 0, !dbg !4202
  br i1 %39, label %119, label %40, !dbg !4203

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.146, i64 0, i64 0)) #11, !dbg !4204
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4106, metadata !732) #11, !dbg !4205
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4206
  br i1 %42, label %43, label %45, !dbg !4207

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4208
  br label %119, !dbg !4210

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4147, metadata !732) #11, !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
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
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4147, metadata !732) #11, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4214
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4215
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4216, metadata !732) #11, !dbg !4221
  %54 = load i8*, i8** %48, align 8, !dbg !4223, !tbaa !4224
  %55 = load i8*, i8** %49, align 8, !dbg !4223, !tbaa !4225
  %56 = icmp ult i8* %54, %55, !dbg !4223
  br i1 %56, label %59, label %57, !dbg !4223, !prof !4226

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4223
  br label %63, !dbg !4223

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4223
  store i8* %60, i8** %48, align 8, !dbg !4223, !tbaa !4224
  %61 = load i8, i8* %54, align 1, !dbg !4223, !tbaa !874
  %62 = zext i8 %61 to i32, !dbg !4223
  br label %63, !dbg !4223

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4223
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4149, metadata !732) #11, !dbg !4227
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
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4216, metadata !732) #11, !dbg !4236
  %67 = load i8*, i8** %48, align 8, !dbg !4234, !tbaa !4224
  %68 = load i8*, i8** %49, align 8, !dbg !4234, !tbaa !4225
  %69 = icmp ult i8* %67, %68, !dbg !4234
  br i1 %69, label %72, label %70, !dbg !4234, !prof !4226

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4234
  br label %76, !dbg !4234

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4234
  store i8* %73, i8** %48, align 8, !dbg !4234, !tbaa !4224
  %74 = load i8, i8* %67, align 1, !dbg !4234, !tbaa !874
  %75 = zext i8 %74 to i32, !dbg !4234
  br label %76, !dbg !4234

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4234
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4149, metadata !732) #11, !dbg !4227
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4237, !llvm.loop !4238

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4241
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.147, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4242
  %81 = icmp slt i32 %80, 2, !dbg !4244
  br i1 %81, label %112, label %82, !dbg !4245

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4154, metadata !732) #11, !dbg !4247
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4248
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4155, metadata !732) #11, !dbg !4249
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4156, metadata !732) #11, !dbg !4250
  %85 = icmp eq i64 %51, 0, !dbg !4251
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4253

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
  %90 = add i64 %87, 2, !dbg !4254
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4147, metadata !732) #11, !dbg !4211
  br label %96, !dbg !4257

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4258
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
  %94 = add i64 %93, 1, !dbg !4260
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4147, metadata !732) #11, !dbg !4211
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4147, metadata !732) #11, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
  %99 = icmp eq i8* %98, null, !dbg !4262
  br i1 %99, label %100, label %102, !dbg !4264

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
  call void @free(i8* %52) #11, !dbg !4265
  br label %112, !dbg !4267

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4268
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4268
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4269
  %104 = xor i64 %84, -1, !dbg !4270
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4270
  %106 = xor i64 %83, -1, !dbg !4271
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4272, metadata !732) #11, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4280, metadata !732) #11, !dbg !4281
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4283
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4284
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4272, metadata !732) #11, !dbg !4285
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4280, metadata !732) #11, !dbg !4285
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4287
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4288
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4147, metadata !732) #11, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4148, metadata !732) #11, !dbg !4212
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4268
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4268
  br label %50, !dbg !4289, !llvm.loop !4238

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4268
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4268
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4290
  %116 = icmp eq i64 %113, 0, !dbg !4291
  br i1 %116, label %119, label %117, !dbg !4293

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4294
  store i8 0, i8* %118, align 1, !dbg !4296, !tbaa !874
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4097, metadata !732) #11, !dbg !4167
  call void @free(i8* %29) #11, !dbg !4297
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4097, metadata !732) #11, !dbg !4167
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4298, !tbaa !739
  br label %123, !dbg !4299

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4097, metadata !732) #11, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4082, metadata !732), !dbg !4300
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4082, metadata !732), !dbg !4300
  %125 = load i8, i8* %124, align 1, !dbg !4301, !tbaa !874
  %126 = icmp eq i8 %125, 0, !dbg !4303
  br i1 %126, label %152, label %127, !dbg !4304

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4305

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4082, metadata !732), !dbg !4300
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4305
  %132 = icmp eq i32 %131, 0, !dbg !4307
  br i1 %132, label %139, label %133, !dbg !4308

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4309
  br i1 %134, label %135, label %143, !dbg !4310

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4311
  %137 = load i8, i8* %136, align 1, !dbg !4311, !tbaa !874
  %138 = icmp eq i8 %137, 0, !dbg !4312
  br i1 %138, label %139, label %143, !dbg !4313

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4314
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4316
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4317
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4081, metadata !732), !dbg !4162
  br label %152, !dbg !4318

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4319
  %145 = add i64 %144, 1, !dbg !4320
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4082, metadata !732), !dbg !4300
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4322
  %148 = add i64 %147, 1, !dbg !4323
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4324
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4082, metadata !732), !dbg !4300
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4082, metadata !732), !dbg !4300
  %150 = load i8, i8* %149, align 1, !dbg !4301, !tbaa !874
  %151 = icmp eq i8 %150, 0, !dbg !4303
  br i1 %151, label %152, label %128, !dbg !4304, !llvm.loop !4325

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4081, metadata !732), !dbg !4162
  %154 = load i8, i8* %153, align 1, !dbg !4327, !tbaa !874
  %155 = icmp eq i8 %154, 0, !dbg !4329
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i8* %153, !dbg !4330
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4081, metadata !732), !dbg !4162
  ret i8* %156, !dbg !4331
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

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #6 !dbg !685 {
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !690, metadata !732), !dbg !4332
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !691, metadata !732), !dbg !4333
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !692, metadata !732), !dbg !4334
  %5 = bitcast i32* %4 to i8*, !dbg !4335
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11, !dbg !4335
  %6 = icmp eq i8* %0, null, !dbg !4336
  br i1 %6, label %44, label %7, !dbg !4337

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !693, metadata !732), !dbg !4338
  store i32 10, i32* %4, align 4, !dbg !4339, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4340, metadata !732) #11, !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !4345, metadata !732) #11, !dbg !4348
  %8 = tail call i8* @realloc(i8* null, i64 40) #11, !dbg !4349
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !695, metadata !732), !dbg !4350
  %9 = icmp eq i8* %8, null, !dbg !4351
  br i1 %9, label %149, label %10, !dbg !4353

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !4349

; <label>:11:                                     ; preds = %10, %39
  %12 = phi i32 [ %40, %39 ], [ 10, %10 ], !dbg !4354
  %13 = phi i8* [ %30, %39 ], [ %8, %10 ]
  %14 = bitcast i8* %13 to i32*, !dbg !4349
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !695, metadata !732), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !693, metadata !732), !dbg !4338
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !700, metadata !732), !dbg !4355
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !693, metadata !732), !dbg !4338
  %15 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %14, i32* nonnull %4) #11, !dbg !4356
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !694, metadata !732), !dbg !4357
  %16 = icmp slt i32 %15, 0, !dbg !4358
  %17 = load i32, i32* %4, align 4, !tbaa !838
  %18 = icmp eq i32 %12, %17, !dbg !4360
  %19 = and i1 %16, %18, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !693, metadata !732), !dbg !4338
  br i1 %19, label %20, label %22, !dbg !4361

; <label>:20:                                     ; preds = %11
  %21 = shl nsw i32 %12, 1, !dbg !4362
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !693, metadata !732), !dbg !4338
  store i32 %21, i32* %4, align 4, !dbg !4362, !tbaa !838
  br label %22, !dbg !4363

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %17, %11 ], !dbg !4364
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !693, metadata !732), !dbg !4338
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !4340, metadata !732) #11, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4345, metadata !732) #11, !dbg !4367
  %24 = icmp slt i32 %23, 0, !dbg !4368
  br i1 %24, label %25, label %27, !dbg !4370

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #17, !dbg !4371
  store i32 12, i32* %26, align 4, !dbg !4373, !tbaa !838
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !696, metadata !732), !dbg !4374
  br label %34, !dbg !4375

; <label>:27:                                     ; preds = %22
  %28 = sext i32 %23 to i64, !dbg !4364
  %29 = shl nsw i64 %28, 2, !dbg !4376
  %30 = call i8* @realloc(i8* nonnull %13, i64 %29) #11, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !696, metadata !732), !dbg !4374
  %31 = icmp eq i8* %30, null, !dbg !4378
  br i1 %31, label %32, label %37, !dbg !4375

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #17, !dbg !4379
  br label %34, !dbg !4379

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i32* [ %33, %32 ], [ %26, %25 ], !dbg !4379
  %36 = load i32, i32* %35, align 4, !dbg !4379, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !701, metadata !732), !dbg !4380
  call void @free(i8* nonnull %13) #11, !dbg !4381
  store i32 %36, i32* %35, align 4, !dbg !4382, !tbaa !838
  br label %149

; <label>:37:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !695, metadata !732), !dbg !4350
  %38 = icmp sgt i32 %15, -1, !dbg !4383
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !695, metadata !732), !dbg !4350
  br i1 %38, label %41, label %39, !dbg !4385, !llvm.loop !4386

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %4, align 4, !dbg !4354, !tbaa !838
  br label %11, !dbg !4385

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %2 to i8**, !dbg !4389
  store i8* %30, i8** %42, align 8, !dbg !4389, !tbaa !739
  %43 = load i32, i32* %4, align 4, !dbg !4391, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !693, metadata !732), !dbg !4338
  br label %149, !dbg !4392

; <label>:44:                                     ; preds = %3
  %45 = tail call i32 @getgroups(i32 0, i32* null) #11, !dbg !4393
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !693, metadata !732), !dbg !4338
  store i32 %45, i32* %4, align 4, !dbg !4394, !tbaa !838
  %46 = icmp slt i32 %45, 0, !dbg !4395
  br i1 %46, label %47, label %59, !dbg !4397

; <label>:47:                                     ; preds = %44
  %48 = tail call i32* @__errno_location() #17, !dbg !4398
  %49 = load i32, i32* %48, align 4, !dbg !4398, !tbaa !838
  %50 = icmp eq i32 %49, 38, !dbg !4401
  br i1 %50, label %51, label %149, !dbg !4402

; <label>:51:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4340, metadata !732) #11, !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4345, metadata !732) #11, !dbg !4405
  %52 = tail call i8* @realloc(i8* null, i64 4) #11, !dbg !4406
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !695, metadata !732), !dbg !4350
  %53 = icmp eq i8* %52, null, !dbg !4407
  br i1 %53, label %149, label %54, !dbg !4408

; <label>:54:                                     ; preds = %51
  %55 = bitcast i8* %52 to i32*, !dbg !4406
  %56 = bitcast i32** %2 to i8**, !dbg !4409
  store i8* %52, i8** %56, align 8, !dbg !4409, !tbaa !739
  store i32 %1, i32* %55, align 4, !dbg !4411, !tbaa !838
  %57 = icmp ne i32 %1, -1, !dbg !4412
  %58 = zext i1 %57 to i32, !dbg !4412
  br label %149, !dbg !4413

; <label>:59:                                     ; preds = %44
  %60 = icmp eq i32 %45, 0, !dbg !4414
  %61 = icmp ne i32 %1, -1, !dbg !4416
  %62 = or i1 %61, %60, !dbg !4417
  br i1 %62, label %63, label %68, !dbg !4417

; <label>:63:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !693, metadata !732), !dbg !4338
  %64 = add nsw i32 %45, 1, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !693, metadata !732), !dbg !4338
  store i32 %64, i32* %4, align 4, !dbg !4418, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !693, metadata !732), !dbg !4338
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4340, metadata !732) #11, !dbg !4419
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !4345, metadata !732) #11, !dbg !4421
  %65 = icmp slt i32 %45, -1, !dbg !4422
  br i1 %65, label %66, label %68, !dbg !4423

; <label>:66:                                     ; preds = %63
  %67 = tail call i32* @__errno_location() #17, !dbg !4424
  store i32 12, i32* %67, align 4, !dbg !4425, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !695, metadata !732), !dbg !4350
  br label %149, !dbg !4426

; <label>:68:                                     ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ %45, %59 ]
  %70 = sext i32 %69 to i64, !dbg !4427
  %71 = shl nsw i64 %70, 2, !dbg !4428
  %72 = tail call i8* @realloc(i8* null, i64 %71) #11, !dbg !4429
  %73 = bitcast i8* %72 to i32*, !dbg !4429
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !695, metadata !732), !dbg !4350
  %74 = icmp eq i8* %72, null, !dbg !4430
  br i1 %74, label %149, label %75, !dbg !4426

; <label>:75:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !693, metadata !732), !dbg !4338
  %76 = zext i1 %61 to i32, !dbg !4432
  %77 = sub nsw i32 %69, %76, !dbg !4433
  %78 = zext i1 %61 to i64, !dbg !4434
  %79 = getelementptr inbounds i32, i32* %73, i64 %78, !dbg !4434
  %80 = tail call i32 @getgroups(i32 %77, i32* %79) #11, !dbg !4435
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !694, metadata !732), !dbg !4357
  %81 = icmp slt i32 %80, 0, !dbg !4436
  br i1 %81, label %82, label %85, !dbg !4437

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #17, !dbg !4438
  %84 = load i32, i32* %83, align 4, !dbg !4438, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !704, metadata !732), !dbg !4439
  tail call void @free(i8* nonnull %72) #11, !dbg !4440
  store i32 %84, i32* %83, align 4, !dbg !4441, !tbaa !838
  br label %149

; <label>:85:                                     ; preds = %75
  br i1 %61, label %86, label %88, !dbg !4442

; <label>:86:                                     ; preds = %85
  store i32 %1, i32* %73, align 4, !dbg !4444, !tbaa !838
  %87 = add nsw i32 %80, 1, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !694, metadata !732), !dbg !4357
  br label %88, !dbg !4447

; <label>:88:                                     ; preds = %85, %86
  %89 = phi i32 [ %87, %86 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !694, metadata !732), !dbg !4357
  %90 = bitcast i32** %2 to i8**, !dbg !4448
  store i8* %72, i8** %90, align 8, !dbg !4448, !tbaa !739
  %91 = icmp sgt i32 %89, 1, !dbg !4449
  br i1 %91, label %92, label %149, !dbg !4450

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %73, align 4, !dbg !4451, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !707, metadata !732), !dbg !4452
  %94 = sext i32 %89 to i64, !dbg !4453
  %95 = getelementptr inbounds i32, i32* %73, i64 %94, !dbg !4453
  tail call void @llvm.dbg.value(metadata i32* %95, i64 0, metadata !711, metadata !732), !dbg !4454
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !710, metadata !4455), !dbg !4456
  %96 = getelementptr inbounds i8, i8* %72, i64 4
  %97 = bitcast i8* %96 to i32*
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !710, metadata !732), !dbg !4456
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !695, metadata !732), !dbg !4350
  %98 = icmp ugt i32* %95, %97, !dbg !4457
  br i1 %98, label %99, label %149, !dbg !4460

; <label>:99:                                     ; preds = %92
  %100 = shl nsw i64 %94, 2, !dbg !4461
  %101 = add nsw i64 %100, -5, !dbg !4461
  %102 = lshr i64 %101, 2, !dbg !4461
  %103 = and i64 %102, 1, !dbg !4461
  %104 = icmp eq i64 %103, 0, !dbg !4461
  br i1 %104, label %105, label %119, !dbg !4461

; <label>:105:                                    ; preds = %99
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !694, metadata !732), !dbg !4357
  %106 = load i32, i32* %97, align 4, !dbg !4461, !tbaa !838
  %107 = icmp eq i32 %106, %93, !dbg !4464
  br i1 %107, label %111, label %108, !dbg !4465

; <label>:108:                                    ; preds = %105
  %109 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !4466
  %110 = bitcast i8* %109 to i32*, !dbg !4466
  tail call void @llvm.dbg.value(metadata i32* %110, i64 0, metadata !695, metadata !732), !dbg !4350
  store i32 %106, i32* %110, align 4, !dbg !4467, !tbaa !838
  br label %113

; <label>:111:                                    ; preds = %105
  %112 = add nsw i32 %89, -1, !dbg !4468
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !694, metadata !732), !dbg !4357
  br label %113, !dbg !4469

; <label>:113:                                    ; preds = %111, %108
  %114 = phi i32 [ %93, %111 ], [ %106, %108 ]
  %115 = phi i32* [ %73, %111 ], [ %110, %108 ]
  %116 = phi i32 [ %112, %111 ], [ %89, %108 ]
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !710, metadata !4455), !dbg !4456
  %117 = getelementptr inbounds i8, i8* %72, i64 8
  %118 = bitcast i8* %117 to i32*
  tail call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !710, metadata !732), !dbg !4456
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !695, metadata !732), !dbg !4350
  br label %119, !dbg !4460

; <label>:119:                                    ; preds = %113, %99
  %120 = phi i32 [ %93, %99 ], [ %114, %113 ]
  %121 = phi i32* [ %97, %99 ], [ %118, %113 ]
  %122 = phi i32 [ %89, %99 ], [ %116, %113 ]
  %123 = phi i32* [ %73, %99 ], [ %115, %113 ]
  %124 = phi i32 [ undef, %99 ], [ %116, %113 ]
  %125 = icmp eq i64 %102, 0, !dbg !4461
  br i1 %125, label %149, label %126, !dbg !4461

; <label>:126:                                    ; preds = %119
  br label %127, !dbg !4461

; <label>:127:                                    ; preds = %155, %126
  %128 = phi i32 [ %120, %126 ], [ %156, %155 ]
  %129 = phi i32* [ %121, %126 ], [ %159, %155 ]
  %130 = phi i32 [ %122, %126 ], [ %158, %155 ]
  %131 = phi i32* [ %123, %126 ], [ %157, %155 ]
  tail call void @llvm.dbg.value(metadata i32* %131, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !694, metadata !732), !dbg !4357
  %132 = load i32, i32* %129, align 4, !dbg !4461, !tbaa !838
  %133 = icmp eq i32 %132, %93, !dbg !4470
  %134 = icmp eq i32 %132, %128, !dbg !4464
  %135 = or i1 %133, %134, !dbg !4465
  br i1 %135, label %136, label %138, !dbg !4465

; <label>:136:                                    ; preds = %127
  %137 = add nsw i32 %130, -1, !dbg !4468
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !694, metadata !732), !dbg !4357
  br label %140, !dbg !4469

; <label>:138:                                    ; preds = %127
  %139 = getelementptr inbounds i32, i32* %131, i64 1, !dbg !4466
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !695, metadata !732), !dbg !4350
  store i32 %132, i32* %139, align 4, !dbg !4467, !tbaa !838
  br label %140

; <label>:140:                                    ; preds = %136, %138
  %141 = phi i32 [ %128, %136 ], [ %132, %138 ]
  %142 = phi i32* [ %131, %136 ], [ %139, %138 ]
  %143 = phi i32 [ %137, %136 ], [ %130, %138 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !710, metadata !4455), !dbg !4456
  %144 = getelementptr inbounds i32, i32* %129, i64 1
  tail call void @llvm.dbg.value(metadata i32* %144, i64 0, metadata !710, metadata !732), !dbg !4456
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32* %131, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !694, metadata !732), !dbg !4357
  %145 = load i32, i32* %144, align 4, !dbg !4461, !tbaa !838
  %146 = icmp eq i32 %145, %93, !dbg !4470
  %147 = icmp eq i32 %145, %141, !dbg !4464
  %148 = or i1 %146, %147, !dbg !4465
  br i1 %148, label %153, label %151, !dbg !4465

; <label>:149:                                    ; preds = %119, %155, %92, %41, %34, %66, %88, %68, %47, %51, %7, %82, %54
  %150 = phi i32 [ %58, %54 ], [ -1, %82 ], [ -1, %7 ], [ -1, %51 ], [ -1, %47 ], [ -1, %68 ], [ %89, %88 ], [ -1, %66 ], [ %43, %41 ], [ -1, %34 ], [ %89, %92 ], [ %124, %119 ], [ %158, %155 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11, !dbg !4471
  ret i32 %150, !dbg !4471

; <label>:151:                                    ; preds = %140
  %152 = getelementptr inbounds i32, i32* %142, i64 1, !dbg !4466
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !695, metadata !732), !dbg !4350
  store i32 %145, i32* %152, align 4, !dbg !4467, !tbaa !838
  br label %155

; <label>:153:                                    ; preds = %140
  %154 = add nsw i32 %143, -1, !dbg !4468
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !694, metadata !732), !dbg !4357
  br label %155, !dbg !4469

; <label>:155:                                    ; preds = %153, %151
  %156 = phi i32 [ %141, %153 ], [ %145, %151 ]
  %157 = phi i32* [ %142, %153 ], [ %152, %151 ]
  %158 = phi i32 [ %154, %153 ], [ %143, %151 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !695, metadata !732), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !710, metadata !4455), !dbg !4456
  %159 = getelementptr inbounds i32, i32* %129, i64 2
  tail call void @llvm.dbg.value(metadata i32* %144, i64 0, metadata !710, metadata !732), !dbg !4456
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !694, metadata !732), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !695, metadata !732), !dbg !4350
  %160 = icmp ult i32* %159, %95, !dbg !4457
  br i1 %160, label %127, label %149, !dbg !4460, !llvm.loop !4472
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4519, metadata !732), !dbg !4523
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4520, metadata !732), !dbg !4524
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4522, metadata !732), !dbg !4525
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4526
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4521, metadata !732), !dbg !4527
  %3 = icmp slt i32 %2, 0, !dbg !4528
  br i1 %3, label %4, label %6, !dbg !4530

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4531
  br label %24, !dbg !4532

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4533
  %8 = icmp eq i32 %7, 0, !dbg !4533
  br i1 %8, label %13, label %9, !dbg !4535

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4536
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4537
  %12 = icmp eq i64 %11, -1, !dbg !4538
  br i1 %12, label %16, label %13, !dbg !4539

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4540
  %15 = icmp eq i32 %14, 0, !dbg !4540
  br i1 %15, label %16, label %18, !dbg !4541

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4520, metadata !732), !dbg !4524
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4542
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4522, metadata !732), !dbg !4525
  br label %24, !dbg !4543

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4544
  %20 = load i32, i32* %19, align 4, !dbg !4544, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4520, metadata !732), !dbg !4524
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4520, metadata !732), !dbg !4524
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4542
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4522, metadata !732), !dbg !4525
  %22 = icmp eq i32 %20, 0, !dbg !4545
  br i1 %22, label %24, label %23, !dbg !4543

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4547, !tbaa !838
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4522, metadata !732), !dbg !4525
  br label %24, !dbg !4549

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4550
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4551 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4596, metadata !732), !dbg !4597
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4598
  br i1 %2, label %6, label %3, !dbg !4600

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4601
  %5 = icmp eq i32 %4, 0, !dbg !4601
  br i1 %5, label %6, label %8, !dbg !4602

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4603
  br label %17, !dbg !4604

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4605, metadata !732) #11, !dbg !4610
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4612
  %10 = load i32, i32* %9, align 8, !dbg !4612, !tbaa !4006
  %11 = and i32 %10, 256, !dbg !4614
  %12 = icmp eq i32 %11, 0, !dbg !4614
  br i1 %12, label %15, label %13, !dbg !4615

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4616
  br label %15, !dbg !4616

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4617
  br label %17, !dbg !4618

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4619
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4620 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4666, metadata !732), !dbg !4672
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4667, metadata !732), !dbg !4673
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4668, metadata !732), !dbg !4674
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4675
  %5 = load i8*, i8** %4, align 8, !dbg !4675, !tbaa !4225
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4676
  %7 = load i8*, i8** %6, align 8, !dbg !4676, !tbaa !4224
  %8 = icmp eq i8* %5, %7, !dbg !4677
  br i1 %8, label %9, label %28, !dbg !4678

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4679
  %11 = load i8*, i8** %10, align 8, !dbg !4679, !tbaa !4680
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4681
  %13 = load i8*, i8** %12, align 8, !dbg !4681, !tbaa !4682
  %14 = icmp eq i8* %11, %13, !dbg !4683
  br i1 %14, label %15, label %28, !dbg !4684

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4685
  %17 = load i8*, i8** %16, align 8, !dbg !4685, !tbaa !4686
  %18 = icmp eq i8* %17, null, !dbg !4687
  br i1 %18, label %19, label %28, !dbg !4688

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4689
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4690
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4669, metadata !732), !dbg !4691
  %22 = icmp eq i64 %21, -1, !dbg !4692
  br i1 %22, label %30, label %23, !dbg !4694

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4695
  %25 = load i32, i32* %24, align 8, !dbg !4696, !tbaa !4006
  %26 = and i32 %25, -17, !dbg !4696
  store i32 %26, i32* %24, align 8, !dbg !4696, !tbaa !4006
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4697
  store i64 %21, i64* %27, align 8, !dbg !4698, !tbaa !4699
  br label %30, !dbg !4700

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4701
  br label %30, !dbg !4702

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4703
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
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !127, !133, !142, !149, !156, !565, !638, !209, !646, !657, !659, !661, !665, !667, !670, !672, !674, !218, !680, !715, !717, !719}
!llvm.ident = !{!721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721, !721}
!llvm.module.flags = !{!722, !723, !724, !725, !726}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_opts", scope: !2, file: !3, line: 57, type: !113, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !91)
!3 = !DIFile(filename: "src/chroot.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !26, !34, !49}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 87, size: 32, elements: !21)
!20 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!23 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!24 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!25 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !27, line: 26, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!30 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!31 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!32 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!33 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 46, size: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!37 = !DIEnumerator(name: "_ISupper", value: 256)
!38 = !DIEnumerator(name: "_ISlower", value: 512)
!39 = !DIEnumerator(name: "_ISalpha", value: 1024)
!40 = !DIEnumerator(name: "_ISdigit", value: 2048)
!41 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!42 = !DIEnumerator(name: "_ISspace", value: 8192)
!43 = !DIEnumerator(name: "_ISprint", value: 16384)
!44 = !DIEnumerator(name: "_ISgraph", value: 32768)
!45 = !DIEnumerator(name: "_ISblank", value: 1)
!46 = !DIEnumerator(name: "_IScntrl", value: 2)
!47 = !DIEnumerator(name: "_ISpunct", value: 4)
!48 = !DIEnumerator(name: "_ISalnum", value: 8)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !51, file: !50, line: 192, size: 32, elements: !64)
!50 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!51 = distinct !DISubprogram(name: "x2nrealloc", scope: !50, file: !50, line: 180, type: !52, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !59)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 62, baseType: !58)
!57 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63}
!60 = !DILocalVariable(name: "p", arg: 1, scope: !51, file: !50, line: 180, type: !54)
!61 = !DILocalVariable(name: "pn", arg: 2, scope: !51, file: !50, line: 180, type: !55)
!62 = !DILocalVariable(name: "s", arg: 3, scope: !51, file: !50, line: 180, type: !56)
!63 = !DILocalVariable(name: "n", scope: !51, file: !50, line: 182, type: !56)
!64 = !{!65}
!65 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!66 = !{!67, !54, !69, !70, !75, !77, !78, !87}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !71, line: 80, baseType: !72)
!71 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !73, line: 134, baseType: !74)
!73 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !71, line: 65, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !73, line: 135, baseType: !74)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !80, line: 42, size: 256, elements: !81)
!80 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !79, file: !80, line: 44, baseType: !67, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !79, file: !80, line: 45, baseType: !67, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !79, file: !80, line: 46, baseType: !76, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !79, file: !80, line: 47, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !88, line: 270, baseType: !89)
!88 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !73, line: 195, baseType: !90)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !{!92, !0}
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "infomap", scope: !94, file: !20, line: 632, type: !110, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !20, file: !20, line: 630, type: !95, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !99)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!99 = !{!100, !101, !102, !109}
!100 = !DILocalVariable(name: "program", arg: 1, scope: !94, file: !20, line: 630, type: !97)
!101 = !DILocalVariable(name: "node", scope: !94, file: !20, line: 642, type: !97)
!102 = !DILocalVariable(name: "map_prog", scope: !94, file: !20, line: 643, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !94, file: !20, line: 632, size: 128, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !105, file: !20, line: 632, baseType: !97, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !20, line: 632, baseType: !97, size: 64, offset: 64)
!109 = !DILocalVariable(name: "lc_messages", scope: !94, file: !20, line: 655, type: !97)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 896, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 7)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1536, elements: !123)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !116, line: 50, size: 256, elements: !117)
!116 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!118, !119, !120, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !116, line: 52, baseType: !97, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !115, file: !116, line: 55, baseType: !69, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !115, file: !116, line: 56, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !115, file: !116, line: 57, baseType: !69, size: 32, offset: 192)
!123 = !{!124}
!124 = !DISubrange(count: 6)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "Version", scope: !127, file: !128, line: 2, type: !97, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, globals: !130)
!128 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !{}
!130 = !{!125}
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "file_name", scope: !133, file: !138, line: 36, type: !97, isLocal: true, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, globals: !135)
!134 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!131, !136}
!136 = !DIGlobalVariableExpression(var: !137)
!137 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !133, file: !138, line: 46, type: !139, isLocal: true, isDefinition: true)
!138 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "exit_failure", scope: !142, file: !145, line: 24, type: !146, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, globals: !144)
!143 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !{!140}
!145 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "program_name", scope: !149, file: !153, line: 33, type: !97, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !151, globals: !152)
!150 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!54, !67}
!152 = !{!147}
!153 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !156, file: !168, line: 77, type: !203, isLocal: false, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !164, globals: !165)
!157 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !{!5, !159, !34}
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !160)
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!162 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!163 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!164 = !{!69, !77, !56, !67}
!165 = !{!154, !166, !173, !185, !187, !192, !199, !201}
!166 = !DIGlobalVariableExpression(var: !167)
!167 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !156, file: !168, line: 93, type: !169, isLocal: false, isDefinition: true)
!168 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 320, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!171 = !{!172}
!172 = !DISubrange(count: 10)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !156, file: !168, line: 1043, type: !175, isLocal: false, isDefinition: true)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !168, line: 57, size: 448, elements: !176)
!176 = !{!177, !178, !179, !183, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !175, file: !168, line: 60, baseType: !5, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !168, line: 63, baseType: !69, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !175, file: !168, line: 67, baseType: !180, size: 256, offset: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !175, file: !168, line: 70, baseType: !97, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !175, file: !168, line: 73, baseType: !97, size: 64, offset: 384)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !156, file: !168, line: 108, type: !175, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "slot0", scope: !156, file: !168, line: 834, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 256)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "slotvec", scope: !156, file: !168, line: 837, type: !194, isLocal: true, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !168, line: 826, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !168, line: 828, baseType: !56, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !195, file: !168, line: 829, baseType: !67, size: 64, offset: 64)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "nslots", scope: !156, file: !168, line: 835, type: !69, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202)
!202 = distinct !DIGlobalVariable(name: "slotvec0", scope: !156, file: !168, line: 836, type: !195, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 704, elements: !205)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!205 = !{!206}
!206 = !DISubrange(count: 11)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !209, file: !212, line: 26, type: !213, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, globals: !211)
!210 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{!207}
!212 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 376, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 47)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !218, file: !563, line: 120, type: !564, isLocal: true, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !220, retainedTypes: !559, globals: !562)
!219 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!220 = !{!221}
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 41, size: 32, elements: !223)
!222 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!224 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!225 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!226 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!227 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!228 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!229 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!230 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!231 = !DIEnumerator(name: "DAY_1", value: 131079)
!232 = !DIEnumerator(name: "DAY_2", value: 131080)
!233 = !DIEnumerator(name: "DAY_3", value: 131081)
!234 = !DIEnumerator(name: "DAY_4", value: 131082)
!235 = !DIEnumerator(name: "DAY_5", value: 131083)
!236 = !DIEnumerator(name: "DAY_6", value: 131084)
!237 = !DIEnumerator(name: "DAY_7", value: 131085)
!238 = !DIEnumerator(name: "ABMON_1", value: 131086)
!239 = !DIEnumerator(name: "ABMON_2", value: 131087)
!240 = !DIEnumerator(name: "ABMON_3", value: 131088)
!241 = !DIEnumerator(name: "ABMON_4", value: 131089)
!242 = !DIEnumerator(name: "ABMON_5", value: 131090)
!243 = !DIEnumerator(name: "ABMON_6", value: 131091)
!244 = !DIEnumerator(name: "ABMON_7", value: 131092)
!245 = !DIEnumerator(name: "ABMON_8", value: 131093)
!246 = !DIEnumerator(name: "ABMON_9", value: 131094)
!247 = !DIEnumerator(name: "ABMON_10", value: 131095)
!248 = !DIEnumerator(name: "ABMON_11", value: 131096)
!249 = !DIEnumerator(name: "ABMON_12", value: 131097)
!250 = !DIEnumerator(name: "MON_1", value: 131098)
!251 = !DIEnumerator(name: "MON_2", value: 131099)
!252 = !DIEnumerator(name: "MON_3", value: 131100)
!253 = !DIEnumerator(name: "MON_4", value: 131101)
!254 = !DIEnumerator(name: "MON_5", value: 131102)
!255 = !DIEnumerator(name: "MON_6", value: 131103)
!256 = !DIEnumerator(name: "MON_7", value: 131104)
!257 = !DIEnumerator(name: "MON_8", value: 131105)
!258 = !DIEnumerator(name: "MON_9", value: 131106)
!259 = !DIEnumerator(name: "MON_10", value: 131107)
!260 = !DIEnumerator(name: "MON_11", value: 131108)
!261 = !DIEnumerator(name: "MON_12", value: 131109)
!262 = !DIEnumerator(name: "AM_STR", value: 131110)
!263 = !DIEnumerator(name: "PM_STR", value: 131111)
!264 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!265 = !DIEnumerator(name: "D_FMT", value: 131113)
!266 = !DIEnumerator(name: "T_FMT", value: 131114)
!267 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!268 = !DIEnumerator(name: "ERA", value: 131116)
!269 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!270 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!271 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!272 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!273 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!274 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!275 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!276 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!277 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!278 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!279 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!280 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!281 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!282 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!283 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!284 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!285 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!286 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!287 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!288 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!289 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!290 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!291 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!292 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!293 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!294 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!295 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!296 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!297 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!298 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!299 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!300 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!301 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!302 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!303 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!304 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!305 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!306 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!307 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!308 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!309 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!310 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!311 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!312 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!313 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!314 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!315 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!316 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!317 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!318 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!319 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!320 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!321 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!322 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!323 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!324 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!325 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!326 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!327 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!328 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!329 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!330 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!331 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!332 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!333 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!334 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!335 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!336 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!337 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!338 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!339 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!340 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!341 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!342 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!343 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!344 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!345 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!346 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!347 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!348 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!349 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!350 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!351 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!352 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!353 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!354 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!355 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!357 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!359 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!361 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!365 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!366 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!367 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!368 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!369 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!370 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!371 = !DIEnumerator(name: "CODESET", value: 14)
!372 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!373 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!375 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!427 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!428 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!443 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!444 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!445 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!446 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!447 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!448 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!449 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!450 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!451 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!452 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!453 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!454 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!455 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!456 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!457 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!458 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!459 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!460 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!461 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!462 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!463 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!464 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!465 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!482 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!483 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!486 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!487 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!488 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!489 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!490 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!491 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!492 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!493 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!494 = !DIEnumerator(name: "THOUSEP", value: 65537)
!495 = !DIEnumerator(name: "__GROUPING", value: 65538)
!496 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!497 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!498 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!499 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!500 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!501 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!502 = !DIEnumerator(name: "__YESSTR", value: 327682)
!503 = !DIEnumerator(name: "__NOSTR", value: 327683)
!504 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!505 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!506 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!507 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!508 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!509 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!516 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!517 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!518 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!528 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!529 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!530 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!531 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!535 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!536 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!537 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!538 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!539 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!540 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!557 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!558 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!559 = !{!54, !67, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!562 = !{!216}
!563 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !567, retainedTypes: !568, globals: !569)
!566 = !DIFile(filename: "./lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!26}
!568 = !{!54, !70, !75}
!569 = !{!570, !634, !636}
!570 = !DIGlobalVariableExpression(var: !571)
!571 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !572, file: !573, line: 106, type: !97, isLocal: true, isDefinition: true)
!572 = distinct !DISubprogram(name: "parse_with_separator", scope: !573, file: !573, line: 102, type: !574, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !578)
!573 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !DISubroutineType(types: !575)
!575 = !{!97, !97, !97, !576, !577, !86, !86}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !598, !606, !607, !608, !609, !610, !611, !614, !619, !622, !629}
!579 = !DILocalVariable(name: "spec", arg: 1, scope: !572, file: !573, line: 102, type: !97)
!580 = !DILocalVariable(name: "separator", arg: 2, scope: !572, file: !573, line: 102, type: !97)
!581 = !DILocalVariable(name: "uid", arg: 3, scope: !572, file: !573, line: 103, type: !576)
!582 = !DILocalVariable(name: "gid", arg: 4, scope: !572, file: !573, line: 103, type: !577)
!583 = !DILocalVariable(name: "username", arg: 5, scope: !572, file: !573, line: 104, type: !86)
!584 = !DILocalVariable(name: "groupname", arg: 6, scope: !572, file: !573, line: 104, type: !86)
!585 = !DILocalVariable(name: "error_msg", scope: !572, file: !573, line: 110, type: !97)
!586 = !DILocalVariable(name: "pwd", scope: !572, file: !573, line: 111, type: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !589, line: 49, size: 384, elements: !590)
!589 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !588, file: !589, line: 51, baseType: !67, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !588, file: !589, line: 52, baseType: !67, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !588, file: !589, line: 53, baseType: !72, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !588, file: !589, line: 54, baseType: !76, size: 32, offset: 160)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !588, file: !589, line: 55, baseType: !67, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !588, file: !589, line: 56, baseType: !67, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !588, file: !589, line: 57, baseType: !67, size: 64, offset: 320)
!598 = !DILocalVariable(name: "grp", scope: !572, file: !573, line: 112, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !80, line: 42, size: 256, elements: !601)
!601 = !{!602, !603, !604, !605}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !600, file: !80, line: 44, baseType: !67, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !600, file: !80, line: 45, baseType: !67, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !600, file: !80, line: 46, baseType: !76, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !600, file: !80, line: 47, baseType: !86, size: 64, offset: 192)
!606 = !DILocalVariable(name: "u", scope: !572, file: !573, line: 113, type: !67)
!607 = !DILocalVariable(name: "g", scope: !572, file: !573, line: 114, type: !97)
!608 = !DILocalVariable(name: "gname", scope: !572, file: !573, line: 115, type: !67)
!609 = !DILocalVariable(name: "unum", scope: !572, file: !573, line: 116, type: !70)
!610 = !DILocalVariable(name: "gnum", scope: !572, file: !573, line: 117, type: !75)
!611 = !DILocalVariable(name: "ulen", scope: !612, file: !573, line: 137, type: !56)
!612 = distinct !DILexicalBlock(scope: !613, file: !573, line: 136, column: 5)
!613 = distinct !DILexicalBlock(scope: !572, file: !573, line: 130, column: 7)
!614 = !DILocalVariable(name: "use_login_group", scope: !615, file: !573, line: 164, type: !139)
!615 = distinct !DILexicalBlock(scope: !616, file: !573, line: 163, column: 9)
!616 = distinct !DILexicalBlock(scope: !617, file: !573, line: 162, column: 11)
!617 = distinct !DILexicalBlock(scope: !618, file: !573, line: 159, column: 5)
!618 = distinct !DILexicalBlock(scope: !572, file: !573, line: 158, column: 7)
!619 = !DILocalVariable(name: "tmp", scope: !620, file: !573, line: 173, type: !58)
!620 = distinct !DILexicalBlock(scope: !621, file: !573, line: 172, column: 13)
!621 = distinct !DILexicalBlock(scope: !615, file: !573, line: 165, column: 15)
!622 = !DILocalVariable(name: "buf", scope: !623, file: !573, line: 188, type: !626)
!623 = distinct !DILexicalBlock(scope: !624, file: !573, line: 185, column: 13)
!624 = distinct !DILexicalBlock(scope: !625, file: !573, line: 184, column: 15)
!625 = distinct !DILexicalBlock(scope: !616, file: !573, line: 182, column: 9)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 168, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 21)
!629 = !DILocalVariable(name: "tmp", scope: !630, file: !573, line: 205, type: !58)
!630 = distinct !DILexicalBlock(scope: !631, file: !573, line: 204, column: 9)
!631 = distinct !DILexicalBlock(scope: !632, file: !573, line: 203, column: 11)
!632 = distinct !DILexicalBlock(scope: !633, file: !573, line: 199, column: 5)
!633 = distinct !DILexicalBlock(scope: !572, file: !573, line: 198, column: 7)
!634 = !DIGlobalVariableExpression(var: !635)
!635 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !572, file: !573, line: 107, type: !97, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637)
!637 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !572, file: !573, line: 108, type: !97, isLocal: true, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !640, retainedTypes: !645)
!639 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = !{!641}
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !642, line: 41, size: 32, elements: !643)
!642 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = !{!644}
!644 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!645 = !{!54}
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !648, retainedTypes: !656)
!647 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = !{!649}
!649 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !650, file: !50, line: 192, size: 32, elements: !64)
!650 = distinct !DISubprogram(name: "x2nrealloc", scope: !50, file: !50, line: 180, type: !52, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !651)
!651 = !{!652, !653, !654, !655}
!652 = !DILocalVariable(name: "p", arg: 1, scope: !650, file: !50, line: 180, type: !54)
!653 = !DILocalVariable(name: "pn", arg: 2, scope: !650, file: !50, line: 180, type: !55)
!654 = !DILocalVariable(name: "s", arg: 3, scope: !650, file: !50, line: 180, type: !56)
!655 = !DILocalVariable(name: "n", scope: !650, file: !50, line: 182, type: !56)
!656 = !{!56, !67, !54}
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129)
!658 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129)
!660 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !663, retainedTypes: !664)
!662 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = !{!26, !34}
!664 = !{!69, !77}
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !645)
!666 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !669)
!668 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !{!56}
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129)
!671 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129)
!673 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !676)
!675 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !678, line: 112, baseType: !679)
!678 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !73, line: 62, baseType: !58)
!680 = distinct !DICompileUnit(language: DW_LANG_C99, file: !681, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !714)
!681 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!682 = !{!683}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !685, file: !684, line: 83, size: 32, elements: !712)
!684 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!685 = distinct !DISubprogram(name: "mgetgroups", scope: !684, file: !684, line: 66, type: !686, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !680, variables: !689)
!686 = !DISubroutineType(types: !687)
!687 = !{!69, !97, !75, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !700, !701, !704, !707, !710, !711}
!690 = !DILocalVariable(name: "username", arg: 1, scope: !685, file: !684, line: 66, type: !97)
!691 = !DILocalVariable(name: "gid", arg: 2, scope: !685, file: !684, line: 66, type: !75)
!692 = !DILocalVariable(name: "groups", arg: 3, scope: !685, file: !684, line: 66, type: !688)
!693 = !DILocalVariable(name: "max_n_groups", scope: !685, file: !684, line: 68, type: !69)
!694 = !DILocalVariable(name: "ng", scope: !685, file: !684, line: 69, type: !69)
!695 = !DILocalVariable(name: "g", scope: !685, file: !684, line: 70, type: !577)
!696 = !DILocalVariable(name: "h", scope: !697, file: !684, line: 92, type: !577)
!697 = distinct !DILexicalBlock(scope: !698, file: !684, line: 91, column: 9)
!698 = distinct !DILexicalBlock(scope: !699, file: !684, line: 82, column: 5)
!699 = distinct !DILexicalBlock(scope: !685, file: !684, line: 81, column: 7)
!700 = !DILocalVariable(name: "last_n_groups", scope: !697, file: !684, line: 93, type: !69)
!701 = !DILocalVariable(name: "saved_errno", scope: !702, file: !684, line: 105, type: !69)
!702 = distinct !DILexicalBlock(scope: !703, file: !684, line: 104, column: 13)
!703 = distinct !DILexicalBlock(scope: !697, file: !684, line: 103, column: 15)
!704 = !DILocalVariable(name: "saved_errno", scope: !705, file: !684, line: 156, type: !69)
!705 = distinct !DILexicalBlock(scope: !706, file: !684, line: 154, column: 5)
!706 = distinct !DILexicalBlock(scope: !685, file: !684, line: 153, column: 7)
!707 = !DILocalVariable(name: "first", scope: !708, file: !684, line: 187, type: !75)
!708 = distinct !DILexicalBlock(scope: !709, file: !684, line: 186, column: 5)
!709 = distinct !DILexicalBlock(scope: !685, file: !684, line: 185, column: 7)
!710 = !DILocalVariable(name: "next", scope: !708, file: !684, line: 188, type: !577)
!711 = !DILocalVariable(name: "groups_end", scope: !708, file: !684, line: 189, type: !577)
!712 = !{!713}
!713 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!714 = !{!54, !75, !56}
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129)
!716 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !645)
!718 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !645)
!720 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!721 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!722 = !{i32 2, !"Dwarf Version", i32 4}
!723 = !{i32 2, !"Debug Info Version", i32 3}
!724 = !{i32 1, !"wchar_size", i32 4}
!725 = !{i32 7, !"PIC Level", i32 2}
!726 = !{i32 7, !"PIE Level", i32 2}
!727 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 180, type: !728, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !69}
!730 = !{!731}
!731 = !DILocalVariable(name: "status", arg: 1, scope: !727, file: !3, line: 180, type: !69)
!732 = !DIExpression()
!733 = !DILocation(line: 180, column: 12, scope: !727)
!734 = !DILocation(line: 182, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !3, line: 182, column: 7)
!736 = !DILocation(line: 182, column: 7, scope: !727)
!737 = !DILocation(line: 183, column: 5, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !3, line: 183, column: 5)
!739 = !{!740, !740, i64 0}
!740 = !{!"any pointer", !741, i64 0}
!741 = !{!"omnipotent char", !742, i64 0}
!742 = !{!"Simple C/C++ TBAA"}
!743 = !DILocation(line: 186, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !735, file: !3, line: 185, column: 5)
!745 = !DILocation(line: 191, column: 7, scope: !744)
!746 = !DILocation(line: 196, column: 7, scope: !744)
!747 = !DILocation(line: 199, column: 7, scope: !744)
!748 = !DILocation(line: 202, column: 7, scope: !744)
!749 = !DILocation(line: 206, column: 7, scope: !744)
!750 = !DILocation(line: 207, column: 7, scope: !744)
!751 = !DILocation(line: 208, column: 7, scope: !744)
!752 = !DILocation(line: 642, column: 15, scope: !94, inlinedAt: !753)
!753 = distinct !DILocation(line: 212, column: 7, scope: !744)
!754 = !DILocation(line: 651, column: 3, scope: !94, inlinedAt: !753)
!755 = !DILocation(line: 655, column: 29, scope: !94, inlinedAt: !753)
!756 = !DILocation(line: 655, column: 15, scope: !94, inlinedAt: !753)
!757 = !DILocation(line: 656, column: 7, scope: !758, inlinedAt: !753)
!758 = distinct !DILexicalBlock(scope: !94, file: !20, line: 656, column: 7)
!759 = !DILocation(line: 656, column: 19, scope: !758, inlinedAt: !753)
!760 = !DILocation(line: 656, column: 22, scope: !758, inlinedAt: !753)
!761 = !DILocation(line: 656, column: 7, scope: !94, inlinedAt: !753)
!762 = !DILocation(line: 662, column: 7, scope: !763, inlinedAt: !753)
!763 = distinct !DILexicalBlock(scope: !758, file: !20, line: 657, column: 5)
!764 = !DILocation(line: 664, column: 5, scope: !763, inlinedAt: !753)
!765 = !DILocation(line: 665, column: 3, scope: !94, inlinedAt: !753)
!766 = !DILocation(line: 667, column: 3, scope: !94, inlinedAt: !753)
!767 = !DILocation(line: 214, column: 3, scope: !727)
!768 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 218, type: !769, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{!69, !69, !86}
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !787, !788, !789, !794, !808, !811, !814, !817, !820, !823, !824, !825, !829}
!772 = !DILocalVariable(name: "argc", arg: 1, scope: !768, file: !3, line: 218, type: !69)
!773 = !DILocalVariable(name: "argv", arg: 2, scope: !768, file: !3, line: 218, type: !86)
!774 = !DILocalVariable(name: "c", scope: !768, file: !3, line: 220, type: !69)
!775 = !DILocalVariable(name: "userspec", scope: !768, file: !3, line: 223, type: !67)
!776 = !DILocalVariable(name: "username", scope: !768, file: !3, line: 224, type: !97)
!777 = !DILocalVariable(name: "groups", scope: !768, file: !3, line: 225, type: !97)
!778 = !DILocalVariable(name: "skip_chdir", scope: !768, file: !3, line: 226, type: !139)
!779 = !DILocalVariable(name: "uid", scope: !768, file: !3, line: 229, type: !70)
!780 = !DILocalVariable(name: "gid", scope: !768, file: !3, line: 230, type: !75)
!781 = !DILocalVariable(name: "out_gids", scope: !768, file: !3, line: 231, type: !577)
!782 = !DILocalVariable(name: "n_gids", scope: !768, file: !3, line: 232, type: !56)
!783 = !DILocalVariable(name: "userlen", scope: !784, file: !3, line: 253, type: !56)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 248, column: 11)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 246, column: 9)
!786 = distinct !DILexicalBlock(scope: !768, file: !3, line: 244, column: 5)
!787 = !DILocalVariable(name: "newroot", scope: !768, file: !3, line: 282, type: !97)
!788 = !DILocalVariable(name: "is_oldroot", scope: !768, file: !3, line: 283, type: !139)
!789 = !DILocalVariable(name: "__x", scope: !790, file: !3, line: 301, type: !97)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 301, column: 9)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 300, column: 11)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 293, column: 5)
!793 = distinct !DILexicalBlock(scope: !768, file: !3, line: 292, column: 7)
!794 = !DILocalVariable(name: "pwd", scope: !795, file: !3, line: 307, type: !797)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 306, column: 9)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 305, column: 11)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !589, line: 49, size: 384, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806, !807}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !799, file: !589, line: 51, baseType: !67, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !799, file: !589, line: 52, baseType: !67, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !799, file: !589, line: 53, baseType: !72, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !799, file: !589, line: 54, baseType: !76, size: 32, offset: 160)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !799, file: !589, line: 55, baseType: !67, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !799, file: !589, line: 56, baseType: !67, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !799, file: !589, line: 57, baseType: !67, size: 64, offset: 320)
!808 = !DILocalVariable(name: "__x", scope: !809, file: !3, line: 317, type: !69)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 317, column: 9)
!810 = distinct !DILexicalBlock(scope: !792, file: !3, line: 316, column: 11)
!811 = !DILocalVariable(name: "ngroups", scope: !812, file: !3, line: 322, type: !69)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 321, column: 9)
!813 = distinct !DILexicalBlock(scope: !810, file: !3, line: 320, column: 16)
!814 = !DILocalVariable(name: "shell", scope: !815, file: !3, line: 339, type: !67)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 337, column: 5)
!816 = distinct !DILexicalBlock(scope: !768, file: !3, line: 336, column: 7)
!817 = !DILocalVariable(name: "err", scope: !818, file: !3, line: 356, type: !97)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 355, column: 5)
!819 = distinct !DILexicalBlock(scope: !768, file: !3, line: 354, column: 7)
!820 = !DILocalVariable(name: "pwd", scope: !821, file: !3, line: 366, type: !797)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 365, column: 5)
!822 = distinct !DILexicalBlock(scope: !768, file: !3, line: 364, column: 7)
!823 = !DILocalVariable(name: "gids", scope: !768, file: !3, line: 380, type: !577)
!824 = !DILocalVariable(name: "in_gids", scope: !768, file: !3, line: 381, type: !577)
!825 = !DILocalVariable(name: "ngroups", scope: !826, file: !3, line: 396, type: !69)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 395, column: 5)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 394, column: 12)
!828 = distinct !DILexicalBlock(scope: !768, file: !3, line: 382, column: 7)
!829 = !DILocalVariable(name: "exit_status", scope: !768, file: !3, line: 427, type: !69)
!830 = !DILocation(line: 218, column: 11, scope: !768)
!831 = !DILocation(line: 218, column: 24, scope: !768)
!832 = !DILocation(line: 223, column: 9, scope: !768)
!833 = !DILocation(line: 224, column: 15, scope: !768)
!834 = !DILocation(line: 225, column: 15, scope: !768)
!835 = !DILocation(line: 226, column: 8, scope: !768)
!836 = !DILocation(line: 229, column: 3, scope: !768)
!837 = !DILocation(line: 229, column: 9, scope: !768)
!838 = !{!839, !839, i64 0}
!839 = !{!"int", !741, i64 0}
!840 = !DILocation(line: 230, column: 3, scope: !768)
!841 = !DILocation(line: 230, column: 9, scope: !768)
!842 = !DILocation(line: 231, column: 3, scope: !768)
!843 = !DILocation(line: 231, column: 16, scope: !768)
!844 = !DILocation(line: 232, column: 3, scope: !768)
!845 = !DILocation(line: 232, column: 10, scope: !768)
!846 = !{!847, !847, i64 0}
!847 = !{!"long", !741, i64 0}
!848 = !DILocation(line: 235, column: 21, scope: !768)
!849 = !DILocation(line: 235, column: 3, scope: !768)
!850 = !DILocation(line: 236, column: 3, scope: !768)
!851 = !DILocation(line: 237, column: 3, scope: !768)
!852 = !DILocation(line: 238, column: 3, scope: !768)
!853 = !DILocalVariable(name: "status", arg: 1, scope: !854, file: !20, line: 99, type: !69)
!854 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !20, file: !20, line: 99, type: !728, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !855)
!855 = !{!853}
!856 = !DILocation(line: 99, column: 30, scope: !854, inlinedAt: !857)
!857 = distinct !DILocation(line: 240, column: 3, scope: !768)
!858 = !DILocation(line: 102, column: 18, scope: !859, inlinedAt: !857)
!859 = distinct !DILexicalBlock(scope: !854, file: !20, line: 101, column: 7)
!860 = !DILocation(line: 241, column: 3, scope: !768)
!861 = !DILocation(line: 243, column: 3, scope: !768)
!862 = !DILocation(line: 243, column: 15, scope: !768)
!863 = !DILocation(line: 220, column: 7, scope: !768)
!864 = distinct !{!864, !861, !865}
!865 = !DILocation(line: 274, column: 5, scope: !768)
!866 = !DILocation(line: 249, column: 24, scope: !784)
!867 = !DILocation(line: 253, column: 30, scope: !784)
!868 = !DILocation(line: 253, column: 20, scope: !784)
!869 = !DILocation(line: 254, column: 17, scope: !870)
!870 = distinct !DILexicalBlock(scope: !784, file: !3, line: 254, column: 17)
!871 = !DILocation(line: 254, column: 25, scope: !870)
!872 = !DILocation(line: 254, column: 45, scope: !870)
!873 = !DILocation(line: 254, column: 28, scope: !870)
!874 = !{!741, !741, i64 0}
!875 = !DILocation(line: 254, column: 50, scope: !870)
!876 = !DILocation(line: 254, column: 17, scope: !784)
!877 = !DILocation(line: 255, column: 37, scope: !870)
!878 = !DILocation(line: 255, column: 15, scope: !870)
!879 = !DILocation(line: 260, column: 20, scope: !785)
!880 = !DILocation(line: 261, column: 11, scope: !785)
!881 = !DILocation(line: 267, column: 9, scope: !785)
!882 = !DILocation(line: 269, column: 9, scope: !785)
!883 = !DILocation(line: 272, column: 11, scope: !785)
!884 = !DILocation(line: 276, column: 15, scope: !885)
!885 = distinct !DILexicalBlock(scope: !768, file: !3, line: 276, column: 7)
!886 = !DILocation(line: 276, column: 12, scope: !885)
!887 = !DILocation(line: 276, column: 7, scope: !768)
!888 = !DILocation(line: 278, column: 20, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 277, column: 5)
!890 = !DILocation(line: 278, column: 7, scope: !889)
!891 = !DILocation(line: 279, column: 7, scope: !889)
!892 = !DILocation(line: 282, column: 25, scope: !768)
!893 = !DILocation(line: 282, column: 15, scope: !768)
!894 = !DILocalVariable(name: "dir", arg: 1, scope: !895, file: !3, line: 171, type: !97)
!895 = distinct !DISubprogram(name: "is_root", scope: !3, file: !3, line: 171, type: !896, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !898)
!896 = !DISubroutineType(types: !897)
!897 = !{!139, !97}
!898 = !{!894, !899, !900}
!899 = !DILocalVariable(name: "resolved", scope: !895, file: !3, line: 173, type: !67)
!900 = !DILocalVariable(name: "is_res_root", scope: !895, file: !3, line: 174, type: !139)
!901 = !DILocation(line: 171, column: 22, scope: !895, inlinedAt: !902)
!902 = distinct !DILocation(line: 283, column: 21, scope: !768)
!903 = !DILocation(line: 173, column: 20, scope: !895, inlinedAt: !902)
!904 = !DILocation(line: 173, column: 9, scope: !895, inlinedAt: !902)
!905 = !DILocation(line: 174, column: 22, scope: !895, inlinedAt: !902)
!906 = !DILocation(line: 174, column: 31, scope: !895, inlinedAt: !902)
!907 = !DILocation(line: 174, column: 34, scope: !895, inlinedAt: !902)
!908 = !DILocation(line: 175, column: 3, scope: !895, inlinedAt: !902)
!909 = !DILocation(line: 285, column: 23, scope: !910)
!910 = distinct !DILexicalBlock(scope: !768, file: !3, line: 285, column: 7)
!911 = !DILocation(line: 285, column: 20, scope: !910)
!912 = !DILocation(line: 287, column: 20, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 286, column: 5)
!914 = !DILocation(line: 288, column: 14, scope: !913)
!915 = !DILocation(line: 287, column: 7, scope: !913)
!916 = !DILocation(line: 289, column: 7, scope: !913)
!917 = !DILocation(line: 292, column: 7, scope: !768)
!918 = !DILocation(line: 300, column: 11, scope: !791)
!919 = !DILocation(line: 300, column: 11, scope: !792)
!920 = !DILocation(line: 301, column: 9, scope: !790)
!921 = !DILocation(line: 301, column: 9, scope: !791)
!922 = !DILocation(line: 305, column: 11, scope: !796)
!923 = !DILocalVariable(name: "uid", arg: 1, scope: !924, file: !3, line: 45, type: !70)
!924 = distinct !DISubprogram(name: "uid_unset", scope: !3, file: !3, line: 45, type: !925, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!139, !70}
!927 = !{!923}
!928 = !DILocation(line: 45, column: 37, scope: !924, inlinedAt: !929)
!929 = distinct !DILocation(line: 305, column: 11, scope: !796)
!930 = !DILocation(line: 45, column: 55, scope: !924, inlinedAt: !929)
!931 = !DILocation(line: 305, column: 25, scope: !796)
!932 = !DILocation(line: 305, column: 31, scope: !796)
!933 = !DILocation(line: 305, column: 52, scope: !796)
!934 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !940)
!935 = distinct !DISubprogram(name: "gid_unset", scope: !3, file: !3, line: 46, type: !936, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!139, !75}
!938 = !{!939}
!939 = !DILocalVariable(name: "gid", arg: 1, scope: !935, file: !3, line: 46, type: !75)
!940 = distinct !DILocation(line: 305, column: 41, scope: !796)
!941 = !DILocation(line: 305, column: 38, scope: !796)
!942 = !DILocation(line: 308, column: 22, scope: !943)
!943 = distinct !DILexicalBlock(scope: !795, file: !3, line: 308, column: 15)
!944 = !DILocation(line: 307, column: 32, scope: !795)
!945 = !DILocation(line: 308, column: 20, scope: !943)
!946 = !DILocation(line: 308, column: 15, scope: !795)
!947 = !DILocation(line: 310, column: 30, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 310, column: 19)
!949 = distinct !DILexicalBlock(scope: !943, file: !3, line: 309, column: 13)
!950 = !DILocation(line: 46, column: 37, scope: !935, inlinedAt: !951)
!951 = distinct !DILocation(line: 310, column: 19, scope: !948)
!952 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !951)
!953 = !DILocation(line: 310, column: 19, scope: !949)
!954 = !DILocation(line: 311, column: 28, scope: !948)
!955 = !{!956, !839, i64 20}
!956 = !{!"passwd", !740, i64 0, !740, i64 8, !839, i64 16, !839, i64 20, !740, i64 24, !740, i64 32, !740, i64 40}
!957 = !DILocation(line: 311, column: 21, scope: !948)
!958 = !DILocation(line: 311, column: 17, scope: !948)
!959 = !DILocation(line: 312, column: 31, scope: !949)
!960 = !{!956, !740, i64 0}
!961 = !DILocation(line: 313, column: 13, scope: !949)
!962 = !DILocation(line: 316, column: 11, scope: !810)
!963 = !DILocation(line: 316, column: 18, scope: !810)
!964 = !DILocation(line: 316, column: 21, scope: !810)
!965 = !DILocation(line: 316, column: 11, scope: !792)
!966 = !DILocation(line: 317, column: 9, scope: !809)
!967 = !DILocation(line: 317, column: 9, scope: !810)
!968 = !DILocation(line: 320, column: 28, scope: !813)
!969 = !DILocation(line: 46, column: 37, scope: !935, inlinedAt: !970)
!970 = distinct !DILocation(line: 320, column: 28, scope: !813)
!971 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !970)
!972 = !DILocation(line: 320, column: 45, scope: !813)
!973 = !DILocation(line: 320, column: 42, scope: !813)
!974 = !DILocation(line: 322, column: 25, scope: !812)
!975 = !DILocation(line: 322, column: 15, scope: !812)
!976 = !DILocation(line: 323, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !812, file: !3, line: 323, column: 15)
!978 = !DILocation(line: 323, column: 15, scope: !812)
!979 = !DILocation(line: 324, column: 22, scope: !977)
!980 = !DILocation(line: 324, column: 20, scope: !977)
!981 = !DILocation(line: 324, column: 13, scope: !977)
!982 = !DILocation(line: 329, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !768, file: !3, line: 329, column: 7)
!984 = !DILocation(line: 329, column: 24, scope: !983)
!985 = !DILocation(line: 329, column: 7, scope: !768)
!986 = !DILocation(line: 330, column: 5, scope: !983)
!987 = !DILocation(line: 333, column: 20, scope: !988)
!988 = distinct !DILexicalBlock(scope: !768, file: !3, line: 333, column: 7)
!989 = !DILocation(line: 333, column: 23, scope: !988)
!990 = !DILocation(line: 333, column: 7, scope: !768)
!991 = !DILocation(line: 334, column: 5, scope: !988)
!992 = !DILocation(line: 336, column: 15, scope: !816)
!993 = !DILocation(line: 336, column: 22, scope: !816)
!994 = !DILocation(line: 336, column: 12, scope: !816)
!995 = !DILocation(line: 336, column: 7, scope: !768)
!996 = !DILocation(line: 339, column: 21, scope: !815)
!997 = !DILocation(line: 339, column: 13, scope: !815)
!998 = !DILocation(line: 340, column: 17, scope: !999)
!999 = distinct !DILexicalBlock(scope: !815, file: !3, line: 340, column: 11)
!1000 = !DILocation(line: 340, column: 11, scope: !815)
!1001 = !DILocation(line: 342, column: 15, scope: !815)
!1002 = !DILocation(line: 343, column: 7, scope: !815)
!1003 = !DILocation(line: 343, column: 15, scope: !815)
!1004 = !DILocation(line: 345, column: 5, scope: !815)
!1005 = !DILocation(line: 349, column: 12, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !816, file: !3, line: 347, column: 5)
!1007 = !DILocation(line: 354, column: 7, scope: !819)
!1008 = !DILocation(line: 354, column: 7, scope: !768)
!1009 = !DILocation(line: 356, column: 25, scope: !818)
!1010 = !DILocation(line: 356, column: 19, scope: !818)
!1011 = !DILocation(line: 358, column: 11, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !818, file: !3, line: 358, column: 11)
!1013 = !DILocation(line: 358, column: 15, scope: !1012)
!1014 = !DILocation(line: 358, column: 29, scope: !1012)
!1015 = !DILocation(line: 45, column: 37, scope: !924, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 358, column: 18, scope: !1012)
!1017 = !DILocation(line: 45, column: 55, scope: !924, inlinedAt: !1016)
!1018 = !DILocation(line: 358, column: 34, scope: !1012)
!1019 = !DILocation(line: 358, column: 48, scope: !1012)
!1020 = !DILocation(line: 46, column: 37, scope: !935, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 358, column: 37, scope: !1012)
!1022 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !1021)
!1023 = !DILocation(line: 358, column: 11, scope: !818)
!1024 = !DILocation(line: 359, column: 9, scope: !1012)
!1025 = !DILocation(line: 364, column: 7, scope: !822)
!1026 = !DILocation(line: 45, column: 37, scope: !924, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 364, column: 7, scope: !822)
!1028 = !DILocation(line: 45, column: 55, scope: !924, inlinedAt: !1027)
!1029 = !DILocation(line: 364, column: 21, scope: !822)
!1030 = !DILocation(line: 364, column: 27, scope: !822)
!1031 = !DILocation(line: 364, column: 48, scope: !822)
!1032 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 364, column: 37, scope: !822)
!1034 = !DILocation(line: 364, column: 34, scope: !822)
!1035 = !DILocation(line: 380, column: 23, scope: !768)
!1036 = !DILocation(line: 380, column: 16, scope: !768)
!1037 = !DILocation(line: 381, column: 3, scope: !768)
!1038 = !DILocation(line: 381, column: 16, scope: !768)
!1039 = !DILocation(line: 382, column: 14, scope: !828)
!1040 = !DILocation(line: 367, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !821, file: !3, line: 367, column: 11)
!1042 = !DILocation(line: 366, column: 28, scope: !821)
!1043 = !DILocation(line: 367, column: 16, scope: !1041)
!1044 = !DILocation(line: 46, column: 37, scope: !935, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 369, column: 15, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 369, column: 15)
!1047 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 368, column: 9)
!1048 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !1045)
!1049 = !DILocation(line: 367, column: 11, scope: !821)
!1050 = !DILocation(line: 369, column: 15, scope: !1047)
!1051 = !DILocation(line: 370, column: 24, scope: !1046)
!1052 = !DILocation(line: 370, column: 17, scope: !1046)
!1053 = !DILocation(line: 370, column: 13, scope: !1046)
!1054 = !DILocation(line: 371, column: 27, scope: !1047)
!1055 = !DILocation(line: 372, column: 9, scope: !1047)
!1056 = !DILocation(line: 373, column: 16, scope: !1041)
!1057 = !DILocation(line: 375, column: 11, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 374, column: 9)
!1059 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 373, column: 16)
!1060 = !DILocation(line: 382, column: 7, scope: !828)
!1061 = !DILocation(line: 382, column: 17, scope: !828)
!1062 = !DILocation(line: 382, column: 7, scope: !768)
!1063 = !DILocation(line: 384, column: 64, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 384, column: 11)
!1065 = distinct !DILexicalBlock(scope: !828, file: !3, line: 383, column: 5)
!1066 = !DILocation(line: 384, column: 63, scope: !1064)
!1067 = !DILocation(line: 384, column: 11, scope: !1064)
!1068 = !DILocation(line: 384, column: 72, scope: !1064)
!1069 = !DILocation(line: 384, column: 11, scope: !1065)
!1070 = !DILocation(line: 386, column: 17, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 386, column: 15)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 385, column: 9)
!1073 = !DILocation(line: 386, column: 15, scope: !1072)
!1074 = !DILocation(line: 391, column: 16, scope: !1064)
!1075 = !DILocation(line: 394, column: 24, scope: !827)
!1076 = !DILocation(line: 46, column: 37, scope: !935, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 394, column: 24, scope: !827)
!1078 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !1077)
!1079 = !DILocation(line: 394, column: 41, scope: !827)
!1080 = !DILocation(line: 394, column: 38, scope: !827)
!1081 = !DILocation(line: 396, column: 21, scope: !826)
!1082 = !DILocation(line: 396, column: 11, scope: !826)
!1083 = !DILocation(line: 397, column: 19, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !826, file: !3, line: 397, column: 11)
!1085 = !DILocation(line: 397, column: 11, scope: !826)
!1086 = !DILocation(line: 399, column: 17, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 399, column: 15)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 398, column: 9)
!1089 = !DILocation(line: 399, column: 15, scope: !1088)
!1090 = !DILocation(line: 400, column: 13, scope: !1087)
!1091 = !DILocation(line: 406, column: 20, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 405, column: 9)
!1093 = !DILocation(line: 406, column: 18, scope: !1092)
!1094 = !DILocation(line: 407, column: 18, scope: !1092)
!1095 = !DILocation(line: 412, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !768, file: !3, line: 412, column: 7)
!1097 = !DILocation(line: 45, column: 37, scope: !924, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 412, column: 8, scope: !1096)
!1099 = !DILocation(line: 45, column: 55, scope: !924, inlinedAt: !1098)
!1100 = !DILocation(line: 412, column: 22, scope: !1096)
!1101 = !DILocation(line: 412, column: 47, scope: !1096)
!1102 = !DILocation(line: 412, column: 36, scope: !1096)
!1103 = !DILocation(line: 412, column: 61, scope: !1096)
!1104 = !DILocation(line: 412, column: 7, scope: !768)
!1105 = !DILocation(line: 413, column: 5, scope: !1096)
!1106 = !DILocation(line: 415, column: 9, scope: !768)
!1107 = !DIExpression(DW_OP_deref)
!1108 = !DILocation(line: 415, column: 3, scope: !768)
!1109 = !DILocation(line: 416, column: 9, scope: !768)
!1110 = !DILocation(line: 416, column: 3, scope: !768)
!1111 = !DILocation(line: 418, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !768, file: !3, line: 418, column: 7)
!1113 = !DILocation(line: 46, column: 37, scope: !935, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 418, column: 7, scope: !1112)
!1115 = !DILocation(line: 46, column: 55, scope: !935, inlinedAt: !1114)
!1116 = !DILocation(line: 418, column: 21, scope: !1112)
!1117 = !DILocation(line: 418, column: 24, scope: !1112)
!1118 = !DILocation(line: 418, column: 7, scope: !768)
!1119 = !DILocation(line: 419, column: 5, scope: !1112)
!1120 = !DILocation(line: 421, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !768, file: !3, line: 421, column: 7)
!1122 = !DILocation(line: 45, column: 37, scope: !924, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 421, column: 7, scope: !1121)
!1124 = !DILocation(line: 45, column: 55, scope: !924, inlinedAt: !1123)
!1125 = !DILocation(line: 421, column: 21, scope: !1121)
!1126 = !DILocation(line: 421, column: 24, scope: !1121)
!1127 = !DILocation(line: 421, column: 7, scope: !768)
!1128 = !DILocation(line: 422, column: 5, scope: !1121)
!1129 = !DILocation(line: 425, column: 11, scope: !768)
!1130 = !DILocation(line: 425, column: 3, scope: !768)
!1131 = !DILocation(line: 427, column: 21, scope: !768)
!1132 = !DILocation(line: 427, column: 27, scope: !768)
!1133 = !DILocation(line: 427, column: 7, scope: !768)
!1134 = !DILocation(line: 428, column: 20, scope: !768)
!1135 = !DILocation(line: 428, column: 58, scope: !768)
!1136 = !DILocation(line: 428, column: 51, scope: !768)
!1137 = !DILocation(line: 428, column: 3, scope: !768)
!1138 = !DILocation(line: 430, column: 1, scope: !768)
!1139 = distinct !DISubprogram(name: "parse_additional_groups", scope: !3, file: !3, line: 96, type: !1140, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!69, !97, !688, !55, !139}
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1157}
!1143 = !DILocalVariable(name: "groups", arg: 1, scope: !1139, file: !3, line: 96, type: !97)
!1144 = !DILocalVariable(name: "pgids", arg: 2, scope: !1139, file: !3, line: 96, type: !688)
!1145 = !DILocalVariable(name: "pn_gids", arg: 3, scope: !1139, file: !3, line: 97, type: !55)
!1146 = !DILocalVariable(name: "show_errors", arg: 4, scope: !1139, file: !3, line: 97, type: !139)
!1147 = !DILocalVariable(name: "gids", scope: !1139, file: !3, line: 99, type: !577)
!1148 = !DILocalVariable(name: "n_gids_allocated", scope: !1139, file: !3, line: 100, type: !56)
!1149 = !DILocalVariable(name: "n_gids", scope: !1139, file: !3, line: 101, type: !56)
!1150 = !DILocalVariable(name: "buffer", scope: !1139, file: !3, line: 102, type: !67)
!1151 = !DILocalVariable(name: "tmp", scope: !1139, file: !3, line: 103, type: !97)
!1152 = !DILocalVariable(name: "ret", scope: !1139, file: !3, line: 104, type: !69)
!1153 = !DILocalVariable(name: "g", scope: !1154, file: !3, line: 108, type: !78)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 107, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 106, column: 3)
!1156 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 106, column: 3)
!1157 = !DILocalVariable(name: "value", scope: !1154, file: !3, line: 109, type: !58)
!1158 = !DILocation(line: 96, column: 38, scope: !1139)
!1159 = !DILocation(line: 96, column: 60, scope: !1139)
!1160 = !DILocation(line: 97, column: 34, scope: !1139)
!1161 = !DILocation(line: 97, column: 48, scope: !1139)
!1162 = !DILocation(line: 99, column: 16, scope: !1139)
!1163 = !DILocation(line: 100, column: 10, scope: !1139)
!1164 = !DILocation(line: 101, column: 10, scope: !1139)
!1165 = !DILocation(line: 102, column: 18, scope: !1139)
!1166 = !DILocation(line: 102, column: 9, scope: !1139)
!1167 = !DILocation(line: 104, column: 7, scope: !1139)
!1168 = !DILocation(line: 106, column: 47, scope: !1155)
!1169 = !DILocation(line: 103, column: 15, scope: !1139)
!1170 = !DILocation(line: 106, column: 3, scope: !1156)
!1171 = !DILocation(line: 109, column: 7, scope: !1154)
!1172 = !DILocation(line: 109, column: 25, scope: !1154)
!1173 = !DILocation(line: 111, column: 11, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 111, column: 11)
!1175 = !DILocation(line: 111, column: 48, scope: !1174)
!1176 = !DILocation(line: 111, column: 65, scope: !1174)
!1177 = !DILocation(line: 111, column: 71, scope: !1174)
!1178 = !DILocation(line: 111, column: 62, scope: !1174)
!1179 = !DILocation(line: 113, column: 18, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 112, column: 9)
!1181 = !DILocation(line: 113, column: 11, scope: !1180)
!1182 = !{!1183, !1183, i64 0}
!1183 = !{!"short", !741, i64 0}
!1184 = !DILocation(line: 114, column: 16, scope: !1180)
!1185 = distinct !{!1185, !1181, !1184}
!1186 = !DILocation(line: 115, column: 20, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 115, column: 15)
!1188 = !DILocation(line: 115, column: 15, scope: !1180)
!1189 = !DILocation(line: 118, column: 19, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 116, column: 13)
!1191 = !DILocation(line: 108, column: 21, scope: !1154)
!1192 = !DILocation(line: 119, column: 21, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 119, column: 19)
!1194 = !DILocation(line: 119, column: 19, scope: !1190)
!1195 = !DILocation(line: 120, column: 28, scope: !1193)
!1196 = !{!1197, !839, i64 16}
!1197 = !{!"group", !740, i64 0, !740, i64 8, !839, i64 16, !740, i64 24}
!1198 = !DILocation(line: 120, column: 25, scope: !1193)
!1199 = !DILocation(line: 120, column: 23, scope: !1193)
!1200 = !DILocation(line: 120, column: 17, scope: !1193)
!1201 = !DILocation(line: 127, column: 15, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 126, column: 9)
!1203 = !DILocation(line: 128, column: 17, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 128, column: 15)
!1205 = !DILocation(line: 128, column: 15, scope: !1202)
!1206 = !DILocation(line: 129, column: 24, scope: !1204)
!1207 = !DILocation(line: 129, column: 21, scope: !1204)
!1208 = !DILocation(line: 129, column: 19, scope: !1204)
!1209 = !DILocation(line: 129, column: 13, scope: !1204)
!1210 = !DILocation(line: 136, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 133, column: 9)
!1212 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 132, column: 11)
!1213 = !DILocation(line: 138, column: 25, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 137, column: 13)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 136, column: 15)
!1216 = !DILocation(line: 138, column: 32, scope: !1214)
!1217 = !DILocation(line: 138, column: 55, scope: !1214)
!1218 = !DILocation(line: 138, column: 15, scope: !1214)
!1219 = !DILocation(line: 139, column: 15, scope: !1214)
!1220 = !DILocation(line: 145, column: 18, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 145, column: 11)
!1222 = !DILocation(line: 145, column: 11, scope: !1154)
!1223 = !DILocation(line: 180, column: 19, scope: !51, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 146, column: 16, scope: !1221)
!1225 = !DILocation(line: 180, column: 41, scope: !51, inlinedAt: !1224)
!1226 = !DILocation(line: 182, column: 10, scope: !51, inlinedAt: !1224)
!1227 = !DILocation(line: 184, column: 9, scope: !1228, inlinedAt: !1224)
!1228 = distinct !DILexicalBlock(scope: !51, file: !50, line: 184, column: 7)
!1229 = !DILocation(line: 184, column: 7, scope: !51, inlinedAt: !1224)
!1230 = !DILocation(line: 186, column: 13, scope: !1231, inlinedAt: !1224)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !50, line: 186, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !50, line: 185, column: 5)
!1233 = !DILocation(line: 186, column: 11, scope: !1232, inlinedAt: !1224)
!1234 = !DILocation(line: 205, column: 11, scope: !1235, inlinedAt: !1224)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !50, line: 204, column: 11)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !50, line: 199, column: 5)
!1237 = !DILocation(line: 204, column: 11, scope: !1236, inlinedAt: !1224)
!1238 = !DILocation(line: 206, column: 9, scope: !1235, inlinedAt: !1224)
!1239 = !DILocation(line: 207, column: 14, scope: !1236, inlinedAt: !1224)
!1240 = !DILocation(line: 207, column: 18, scope: !1236, inlinedAt: !1224)
!1241 = !DILocation(line: 207, column: 9, scope: !1236, inlinedAt: !1224)
!1242 = !DILocation(line: 211, column: 25, scope: !51, inlinedAt: !1224)
!1243 = !DILocation(line: 211, column: 10, scope: !51, inlinedAt: !1224)
!1244 = !DILocation(line: 146, column: 16, scope: !1221)
!1245 = !DILocation(line: 146, column: 9, scope: !1221)
!1246 = !DILocation(line: 147, column: 24, scope: !1154)
!1247 = !DILocation(line: 147, column: 18, scope: !1154)
!1248 = !DILocation(line: 147, column: 7, scope: !1154)
!1249 = !DILocation(line: 147, column: 22, scope: !1154)
!1250 = !DILocation(line: 148, column: 5, scope: !1155)
!1251 = !DILocation(line: 157, column: 10, scope: !1139)
!1252 = !DILocation(line: 159, column: 7, scope: !1139)
!1253 = distinct !{!1253, !1170, !1254}
!1254 = !DILocation(line: 148, column: 5, scope: !1156)
!1255 = !DILocation(line: 150, column: 11, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 150, column: 7)
!1257 = !DILocation(line: 150, column: 26, scope: !1256)
!1258 = !DILocation(line: 150, column: 16, scope: !1256)
!1259 = !DILocation(line: 153, column: 22, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 152, column: 11)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 151, column: 5)
!1262 = !DILocation(line: 153, column: 50, scope: !1260)
!1263 = !DILocation(line: 153, column: 9, scope: !1260)
!1264 = !DILocation(line: 159, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 159, column: 7)
!1266 = !DILocation(line: 160, column: 14, scope: !1265)
!1267 = !DILocation(line: 160, column: 5, scope: !1265)
!1268 = !DILocation(line: 162, column: 3, scope: !1139)
!1269 = !DILocation(line: 163, column: 3, scope: !1139)
!1270 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !138, file: !138, line: 41, type: !95, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1271)
!1271 = !{!1272}
!1272 = !DILocalVariable(name: "file", arg: 1, scope: !1270, file: !138, line: 41, type: !97)
!1273 = !DILocation(line: 41, column: 41, scope: !1270)
!1274 = !DILocation(line: 43, column: 13, scope: !1270)
!1275 = !DILocation(line: 44, column: 1, scope: !1270)
!1276 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !138, file: !138, line: 78, type: !1277, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !139}
!1279 = !{!1280}
!1280 = !DILocalVariable(name: "ignore", arg: 1, scope: !1276, file: !138, line: 78, type: !139)
!1281 = !DILocation(line: 78, column: 37, scope: !1276)
!1282 = !DILocation(line: 80, column: 16, scope: !1276)
!1283 = !{!1284, !1284, i64 0}
!1284 = !{!"_Bool", !741, i64 0}
!1285 = !DILocation(line: 81, column: 1, scope: !1276)
!1286 = distinct !DISubprogram(name: "close_stdout", scope: !138, file: !138, line: 107, type: !1287, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null}
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "write_error", scope: !1291, file: !138, line: 112, type: !97)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !138, line: 111, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !138, line: 109, column: 7)
!1293 = !DILocation(line: 109, column: 21, scope: !1292)
!1294 = !DILocation(line: 109, column: 7, scope: !1292)
!1295 = !DILocation(line: 109, column: 29, scope: !1292)
!1296 = !DILocation(line: 110, column: 7, scope: !1292)
!1297 = !DILocation(line: 110, column: 12, scope: !1292)
!1298 = !{i8 0, i8 2}
!1299 = !DILocation(line: 114, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1291, file: !138, line: 113, column: 11)
!1301 = !DILocation(line: 110, column: 25, scope: !1292)
!1302 = !DILocation(line: 110, column: 28, scope: !1292)
!1303 = !DILocation(line: 110, column: 34, scope: !1292)
!1304 = !DILocation(line: 109, column: 7, scope: !1286)
!1305 = !DILocation(line: 112, column: 33, scope: !1291)
!1306 = !DILocation(line: 112, column: 19, scope: !1291)
!1307 = !DILocation(line: 113, column: 11, scope: !1300)
!1308 = !DILocation(line: 113, column: 11, scope: !1291)
!1309 = !DILocation(line: 114, column: 36, scope: !1300)
!1310 = !DILocation(line: 114, column: 9, scope: !1300)
!1311 = !DILocation(line: 117, column: 9, scope: !1300)
!1312 = !DILocation(line: 119, column: 14, scope: !1291)
!1313 = !DILocation(line: 119, column: 7, scope: !1291)
!1314 = !DILocation(line: 122, column: 22, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1286, file: !138, line: 122, column: 8)
!1316 = !DILocation(line: 122, column: 8, scope: !1315)
!1317 = !DILocation(line: 122, column: 30, scope: !1315)
!1318 = !DILocation(line: 122, column: 8, scope: !1286)
!1319 = !DILocation(line: 123, column: 13, scope: !1315)
!1320 = !DILocation(line: 123, column: 6, scope: !1315)
!1321 = !DILocation(line: 124, column: 1, scope: !1286)
!1322 = distinct !DISubprogram(name: "set_program_name", scope: !153, file: !153, line: 39, type: !95, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !149, variables: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DILocalVariable(name: "argv0", arg: 1, scope: !1322, file: !153, line: 39, type: !97)
!1325 = !DILocalVariable(name: "slash", scope: !1322, file: !153, line: 46, type: !97)
!1326 = !DILocalVariable(name: "base", scope: !1322, file: !153, line: 47, type: !97)
!1327 = !DILocation(line: 39, column: 31, scope: !1322)
!1328 = !DILocation(line: 51, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !153, line: 51, column: 7)
!1330 = !DILocation(line: 51, column: 7, scope: !1322)
!1331 = !DILocation(line: 55, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !153, line: 52, column: 5)
!1333 = !DILocation(line: 54, column: 7, scope: !1332)
!1334 = !DILocation(line: 56, column: 7, scope: !1332)
!1335 = !DILocation(line: 59, column: 11, scope: !1322)
!1336 = !DILocation(line: 46, column: 15, scope: !1322)
!1337 = !DILocation(line: 60, column: 17, scope: !1322)
!1338 = !DILocation(line: 60, column: 33, scope: !1322)
!1339 = !DILocation(line: 60, column: 11, scope: !1322)
!1340 = !DILocation(line: 47, column: 15, scope: !1322)
!1341 = !DILocation(line: 61, column: 12, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1322, file: !153, line: 61, column: 7)
!1343 = !DILocation(line: 61, column: 20, scope: !1342)
!1344 = !DILocation(line: 61, column: 25, scope: !1342)
!1345 = !DILocation(line: 61, column: 42, scope: !1342)
!1346 = !DILocation(line: 61, column: 28, scope: !1342)
!1347 = !DILocation(line: 61, column: 61, scope: !1342)
!1348 = !DILocation(line: 61, column: 7, scope: !1322)
!1349 = !DILocation(line: 64, column: 11, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !153, line: 64, column: 11)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !153, line: 62, column: 5)
!1352 = !DILocation(line: 64, column: 36, scope: !1350)
!1353 = !DILocation(line: 64, column: 11, scope: !1351)
!1354 = !DILocation(line: 66, column: 24, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !153, line: 65, column: 9)
!1356 = !DILocation(line: 70, column: 41, scope: !1355)
!1357 = !DILocation(line: 72, column: 9, scope: !1355)
!1358 = !DILocation(line: 84, column: 16, scope: !1322)
!1359 = !DILocation(line: 90, column: 27, scope: !1322)
!1360 = !DILocation(line: 92, column: 1, scope: !1322)
!1361 = distinct !DISubprogram(name: "clone_quoting_options", scope: !168, file: !168, line: 114, type: !1362, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1365)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1364, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "o", arg: 1, scope: !1361, file: !168, line: 114, type: !1364)
!1367 = !DILocalVariable(name: "e", scope: !1361, file: !168, line: 116, type: !69)
!1368 = !DILocalVariable(name: "p", scope: !1361, file: !168, line: 117, type: !1364)
!1369 = !DILocation(line: 114, column: 48, scope: !1361)
!1370 = !DILocation(line: 116, column: 11, scope: !1361)
!1371 = !DILocation(line: 116, column: 7, scope: !1361)
!1372 = !DILocation(line: 117, column: 40, scope: !1361)
!1373 = !DILocation(line: 117, column: 31, scope: !1361)
!1374 = !DILocation(line: 117, column: 27, scope: !1361)
!1375 = !DILocation(line: 119, column: 9, scope: !1361)
!1376 = !DILocation(line: 120, column: 3, scope: !1361)
!1377 = distinct !DISubprogram(name: "get_quoting_style", scope: !168, file: !168, line: 125, type: !1378, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1382)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!5, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!1382 = !{!1383}
!1383 = !DILocalVariable(name: "o", arg: 1, scope: !1377, file: !168, line: 125, type: !1380)
!1384 = !DILocation(line: 125, column: 50, scope: !1377)
!1385 = !DILocation(line: 127, column: 11, scope: !1377)
!1386 = !DILocation(line: 127, column: 46, scope: !1377)
!1387 = !{!1388, !741, i64 0}
!1388 = !{!"quoting_options", !741, i64 0, !839, i64 4, !741, i64 8, !740, i64 40, !740, i64 48}
!1389 = !DILocation(line: 127, column: 3, scope: !1377)
!1390 = distinct !DISubprogram(name: "set_quoting_style", scope: !168, file: !168, line: 133, type: !1391, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1364, !5}
!1393 = !{!1394, !1395}
!1394 = !DILocalVariable(name: "o", arg: 1, scope: !1390, file: !168, line: 133, type: !1364)
!1395 = !DILocalVariable(name: "s", arg: 2, scope: !1390, file: !168, line: 133, type: !5)
!1396 = !DILocation(line: 133, column: 44, scope: !1390)
!1397 = !DILocation(line: 133, column: 66, scope: !1390)
!1398 = !DILocation(line: 135, column: 4, scope: !1390)
!1399 = !DILocation(line: 135, column: 39, scope: !1390)
!1400 = !DILocation(line: 135, column: 45, scope: !1390)
!1401 = !DILocation(line: 136, column: 1, scope: !1390)
!1402 = distinct !DISubprogram(name: "set_char_quoting", scope: !168, file: !168, line: 144, type: !1403, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!69, !1364, !68, !69}
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1412, !1413}
!1406 = !DILocalVariable(name: "o", arg: 1, scope: !1402, file: !168, line: 144, type: !1364)
!1407 = !DILocalVariable(name: "c", arg: 2, scope: !1402, file: !168, line: 144, type: !68)
!1408 = !DILocalVariable(name: "i", arg: 3, scope: !1402, file: !168, line: 144, type: !69)
!1409 = !DILocalVariable(name: "uc", scope: !1402, file: !168, line: 146, type: !561)
!1410 = !DILocalVariable(name: "p", scope: !1402, file: !168, line: 147, type: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1412 = !DILocalVariable(name: "shift", scope: !1402, file: !168, line: 149, type: !69)
!1413 = !DILocalVariable(name: "r", scope: !1402, file: !168, line: 150, type: !69)
!1414 = !DILocation(line: 144, column: 43, scope: !1402)
!1415 = !DILocation(line: 144, column: 51, scope: !1402)
!1416 = !DILocation(line: 144, column: 58, scope: !1402)
!1417 = !DILocation(line: 146, column: 17, scope: !1402)
!1418 = !DILocation(line: 148, column: 6, scope: !1402)
!1419 = !DILocation(line: 148, column: 62, scope: !1402)
!1420 = !DILocation(line: 148, column: 57, scope: !1402)
!1421 = !DILocation(line: 147, column: 17, scope: !1402)
!1422 = !DILocation(line: 149, column: 18, scope: !1402)
!1423 = !DILocation(line: 149, column: 15, scope: !1402)
!1424 = !DILocation(line: 149, column: 7, scope: !1402)
!1425 = !DILocation(line: 150, column: 12, scope: !1402)
!1426 = !DILocation(line: 150, column: 15, scope: !1402)
!1427 = !DILocation(line: 150, column: 25, scope: !1402)
!1428 = !DILocation(line: 150, column: 7, scope: !1402)
!1429 = !DILocation(line: 151, column: 13, scope: !1402)
!1430 = !DILocation(line: 151, column: 18, scope: !1402)
!1431 = !DILocation(line: 151, column: 23, scope: !1402)
!1432 = !DILocation(line: 151, column: 6, scope: !1402)
!1433 = !DILocation(line: 152, column: 3, scope: !1402)
!1434 = distinct !DISubprogram(name: "set_quoting_flags", scope: !168, file: !168, line: 160, type: !1435, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!69, !1364, !69}
!1437 = !{!1438, !1439, !1440}
!1438 = !DILocalVariable(name: "o", arg: 1, scope: !1434, file: !168, line: 160, type: !1364)
!1439 = !DILocalVariable(name: "i", arg: 2, scope: !1434, file: !168, line: 160, type: !69)
!1440 = !DILocalVariable(name: "r", scope: !1434, file: !168, line: 162, type: !69)
!1441 = !DILocation(line: 160, column: 44, scope: !1434)
!1442 = !DILocation(line: 160, column: 51, scope: !1434)
!1443 = !DILocation(line: 163, column: 8, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1434, file: !168, line: 163, column: 7)
!1445 = !DILocation(line: 163, column: 7, scope: !1434)
!1446 = !DILocation(line: 165, column: 10, scope: !1434)
!1447 = !{!1388, !839, i64 4}
!1448 = !DILocation(line: 162, column: 7, scope: !1434)
!1449 = !DILocation(line: 166, column: 12, scope: !1434)
!1450 = !DILocation(line: 167, column: 3, scope: !1434)
!1451 = distinct !DISubprogram(name: "set_custom_quoting", scope: !168, file: !168, line: 171, type: !1452, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1364, !97, !97}
!1454 = !{!1455, !1456, !1457}
!1455 = !DILocalVariable(name: "o", arg: 1, scope: !1451, file: !168, line: 171, type: !1364)
!1456 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1451, file: !168, line: 172, type: !97)
!1457 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1451, file: !168, line: 172, type: !97)
!1458 = !DILocation(line: 171, column: 45, scope: !1451)
!1459 = !DILocation(line: 172, column: 33, scope: !1451)
!1460 = !DILocation(line: 172, column: 57, scope: !1451)
!1461 = !DILocation(line: 174, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1451, file: !168, line: 174, column: 7)
!1463 = !DILocation(line: 174, column: 7, scope: !1451)
!1464 = !DILocation(line: 176, column: 6, scope: !1451)
!1465 = !DILocation(line: 176, column: 12, scope: !1451)
!1466 = !DILocation(line: 177, column: 8, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1451, file: !168, line: 177, column: 7)
!1468 = !DILocation(line: 177, column: 23, scope: !1467)
!1469 = !DILocation(line: 177, column: 19, scope: !1467)
!1470 = !DILocation(line: 178, column: 5, scope: !1467)
!1471 = !DILocation(line: 179, column: 6, scope: !1451)
!1472 = !DILocation(line: 179, column: 17, scope: !1451)
!1473 = !{!1388, !740, i64 40}
!1474 = !DILocation(line: 180, column: 6, scope: !1451)
!1475 = !DILocation(line: 180, column: 18, scope: !1451)
!1476 = !{!1388, !740, i64 48}
!1477 = !DILocation(line: 181, column: 1, scope: !1451)
!1478 = distinct !DISubprogram(name: "quotearg_buffer", scope: !168, file: !168, line: 776, type: !1479, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!56, !67, !56, !97, !56, !1380}
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1482 = !DILocalVariable(name: "buffer", arg: 1, scope: !1478, file: !168, line: 776, type: !67)
!1483 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1478, file: !168, line: 776, type: !56)
!1484 = !DILocalVariable(name: "arg", arg: 3, scope: !1478, file: !168, line: 777, type: !97)
!1485 = !DILocalVariable(name: "argsize", arg: 4, scope: !1478, file: !168, line: 777, type: !56)
!1486 = !DILocalVariable(name: "o", arg: 5, scope: !1478, file: !168, line: 778, type: !1380)
!1487 = !DILocalVariable(name: "p", scope: !1478, file: !168, line: 780, type: !1380)
!1488 = !DILocalVariable(name: "e", scope: !1478, file: !168, line: 781, type: !69)
!1489 = !DILocalVariable(name: "r", scope: !1478, file: !168, line: 782, type: !56)
!1490 = !DILocation(line: 776, column: 24, scope: !1478)
!1491 = !DILocation(line: 776, column: 39, scope: !1478)
!1492 = !DILocation(line: 777, column: 30, scope: !1478)
!1493 = !DILocation(line: 777, column: 42, scope: !1478)
!1494 = !DILocation(line: 778, column: 48, scope: !1478)
!1495 = !DILocation(line: 780, column: 37, scope: !1478)
!1496 = !DILocation(line: 780, column: 33, scope: !1478)
!1497 = !DILocation(line: 781, column: 11, scope: !1478)
!1498 = !DILocation(line: 781, column: 7, scope: !1478)
!1499 = !DILocation(line: 783, column: 43, scope: !1478)
!1500 = !DILocation(line: 783, column: 53, scope: !1478)
!1501 = !DILocation(line: 783, column: 60, scope: !1478)
!1502 = !DILocation(line: 784, column: 43, scope: !1478)
!1503 = !DILocation(line: 784, column: 58, scope: !1478)
!1504 = !DILocation(line: 782, column: 14, scope: !1478)
!1505 = !DILocation(line: 782, column: 10, scope: !1478)
!1506 = !DILocation(line: 785, column: 9, scope: !1478)
!1507 = !DILocation(line: 786, column: 3, scope: !1478)
!1508 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !168, file: !168, line: 248, type: !1509, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !1513)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!56, !67, !56, !97, !56, !5, !69, !1511, !97, !97}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1538, !1539, !1540, !1541, !1542, !1545, !1546, !1564, !1567, !1568, !1575}
!1514 = !DILocalVariable(name: "buffer", arg: 1, scope: !1508, file: !168, line: 248, type: !67)
!1515 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1508, file: !168, line: 248, type: !56)
!1516 = !DILocalVariable(name: "arg", arg: 3, scope: !1508, file: !168, line: 249, type: !97)
!1517 = !DILocalVariable(name: "argsize", arg: 4, scope: !1508, file: !168, line: 249, type: !56)
!1518 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1508, file: !168, line: 250, type: !5)
!1519 = !DILocalVariable(name: "flags", arg: 6, scope: !1508, file: !168, line: 250, type: !69)
!1520 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1508, file: !168, line: 251, type: !1511)
!1521 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1508, file: !168, line: 252, type: !97)
!1522 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1508, file: !168, line: 253, type: !97)
!1523 = !DILocalVariable(name: "i", scope: !1508, file: !168, line: 255, type: !56)
!1524 = !DILocalVariable(name: "len", scope: !1508, file: !168, line: 256, type: !56)
!1525 = !DILocalVariable(name: "orig_buffersize", scope: !1508, file: !168, line: 257, type: !56)
!1526 = !DILocalVariable(name: "quote_string", scope: !1508, file: !168, line: 258, type: !97)
!1527 = !DILocalVariable(name: "quote_string_len", scope: !1508, file: !168, line: 259, type: !56)
!1528 = !DILocalVariable(name: "backslash_escapes", scope: !1508, file: !168, line: 260, type: !139)
!1529 = !DILocalVariable(name: "unibyte_locale", scope: !1508, file: !168, line: 261, type: !139)
!1530 = !DILocalVariable(name: "elide_outer_quotes", scope: !1508, file: !168, line: 262, type: !139)
!1531 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1508, file: !168, line: 263, type: !139)
!1532 = !DILocalVariable(name: "encountered_single_quote", scope: !1508, file: !168, line: 264, type: !139)
!1533 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1508, file: !168, line: 265, type: !139)
!1534 = !DILocalVariable(name: "c", scope: !1535, file: !168, line: 394, type: !561)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !168, line: 393, column: 5)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !168, line: 392, column: 3)
!1537 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 392, column: 3)
!1538 = !DILocalVariable(name: "esc", scope: !1535, file: !168, line: 395, type: !561)
!1539 = !DILocalVariable(name: "is_right_quote", scope: !1535, file: !168, line: 396, type: !139)
!1540 = !DILocalVariable(name: "escaping", scope: !1535, file: !168, line: 397, type: !139)
!1541 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1535, file: !168, line: 398, type: !139)
!1542 = !DILocalVariable(name: "m", scope: !1543, file: !168, line: 602, type: !56)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 600, column: 11)
!1544 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 418, column: 9)
!1545 = !DILocalVariable(name: "printable", scope: !1543, file: !168, line: 604, type: !139)
!1546 = !DILocalVariable(name: "mbstate", scope: !1547, file: !168, line: 613, type: !1549)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !168, line: 612, column: 15)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !168, line: 606, column: 17)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1550, line: 6, baseType: !1551)
!1550 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1552, line: 21, baseType: !1553)
!1552 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 13, size: 64, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1553, file: !1552, line: 15, baseType: !69, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1553, file: !1552, line: 20, baseType: !1557, size: 32, offset: 32)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !1552, line: 16, size: 32, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1557, file: !1552, line: 18, baseType: !74, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1557, file: !1552, line: 19, baseType: !1561, size: 32)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 4)
!1564 = !DILocalVariable(name: "w", scope: !1565, file: !168, line: 623, type: !1566)
!1565 = distinct !DILexicalBlock(scope: !1547, file: !168, line: 622, column: 19)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !57, line: 90, baseType: !69)
!1567 = !DILocalVariable(name: "bytes", scope: !1565, file: !168, line: 624, type: !56)
!1568 = !DILocalVariable(name: "j", scope: !1569, file: !168, line: 649, type: !56)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !168, line: 648, column: 27)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !168, line: 646, column: 29)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !168, line: 641, column: 23)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !168, line: 633, column: 30)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !168, line: 628, column: 30)
!1574 = distinct !DILexicalBlock(scope: !1565, file: !168, line: 626, column: 25)
!1575 = !DILocalVariable(name: "ilim", scope: !1576, file: !168, line: 676, type: !56)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !168, line: 673, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1543, file: !168, line: 672, column: 17)
!1578 = !DILocation(line: 248, column: 33, scope: !1508)
!1579 = !DILocation(line: 248, column: 48, scope: !1508)
!1580 = !DILocation(line: 249, column: 39, scope: !1508)
!1581 = !DILocation(line: 249, column: 51, scope: !1508)
!1582 = !DILocation(line: 250, column: 46, scope: !1508)
!1583 = !DILocation(line: 250, column: 65, scope: !1508)
!1584 = !DILocation(line: 251, column: 47, scope: !1508)
!1585 = !DILocation(line: 252, column: 39, scope: !1508)
!1586 = !DILocation(line: 253, column: 39, scope: !1508)
!1587 = !DILocation(line: 256, column: 10, scope: !1508)
!1588 = !DILocation(line: 257, column: 10, scope: !1508)
!1589 = !DILocation(line: 258, column: 15, scope: !1508)
!1590 = !DILocation(line: 259, column: 10, scope: !1508)
!1591 = !DILocation(line: 260, column: 8, scope: !1508)
!1592 = !DILocation(line: 261, column: 25, scope: !1508)
!1593 = !DILocation(line: 261, column: 36, scope: !1508)
!1594 = !DILocation(line: 262, column: 8, scope: !1508)
!1595 = !DILocation(line: 263, column: 8, scope: !1508)
!1596 = !DILocation(line: 264, column: 8, scope: !1508)
!1597 = !DILocation(line: 265, column: 8, scope: !1508)
!1598 = !DILocation(line: 265, column: 3, scope: !1508)
!1599 = !DILocation(line: 308, column: 3, scope: !1508)
!1600 = !DILocation(line: 315, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 309, column: 5)
!1602 = !DILocation(line: 315, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1601, file: !168, line: 315, column: 11)
!1604 = !DILocation(line: 316, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !168, line: 316, column: 9)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !168, line: 316, column: 9)
!1607 = !DILocation(line: 316, column: 9, scope: !1606)
!1608 = !DILocation(line: 354, column: 26, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !168, line: 332, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !168, line: 331, column: 13)
!1611 = distinct !DILexicalBlock(scope: !1601, file: !168, line: 330, column: 7)
!1612 = !DILocation(line: 355, column: 27, scope: !1609)
!1613 = !DILocation(line: 356, column: 11, scope: !1609)
!1614 = !DILocation(line: 357, column: 14, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !168, line: 357, column: 13)
!1616 = !DILocation(line: 357, column: 13, scope: !1611)
!1617 = !DILocation(line: 358, column: 43, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !168, line: 358, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !168, line: 358, column: 11)
!1620 = !DILocation(line: 358, column: 11, scope: !1619)
!1621 = !DILocation(line: 359, column: 13, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !168, line: 359, column: 13)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !168, line: 359, column: 13)
!1624 = !DILocation(line: 359, column: 13, scope: !1623)
!1625 = !DILocation(line: 358, column: 70, scope: !1618)
!1626 = distinct !{!1626, !1620, !1627}
!1627 = !DILocation(line: 359, column: 13, scope: !1619)
!1628 = !DILocation(line: 362, column: 28, scope: !1611)
!1629 = !DILocation(line: 364, column: 7, scope: !1601)
!1630 = !DILocation(line: 367, column: 7, scope: !1601)
!1631 = !DILocation(line: 370, column: 7, scope: !1601)
!1632 = !DILocation(line: 373, column: 12, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1601, file: !168, line: 373, column: 11)
!1634 = !DILocation(line: 373, column: 11, scope: !1601)
!1635 = !DILocation(line: 378, column: 12, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1601, file: !168, line: 378, column: 11)
!1637 = !DILocation(line: 378, column: 11, scope: !1601)
!1638 = !DILocation(line: 379, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !168, line: 379, column: 9)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !168, line: 379, column: 9)
!1641 = !DILocation(line: 379, column: 9, scope: !1640)
!1642 = !DILocation(line: 386, column: 7, scope: !1601)
!1643 = !DILocation(line: 389, column: 7, scope: !1601)
!1644 = !DILocation(line: 255, column: 10, scope: !1508)
!1645 = !DILocation(line: 392, column: 8, scope: !1537)
!1646 = !DILocation(line: 392, column: 27, scope: !1536)
!1647 = !DILocation(line: 392, column: 19, scope: !1536)
!1648 = !DILocation(line: 392, column: 60, scope: !1536)
!1649 = !DILocation(line: 392, column: 3, scope: !1537)
!1650 = !DILocation(line: 392, column: 41, scope: !1536)
!1651 = !DILocation(line: 392, column: 48, scope: !1536)
!1652 = !DILocation(line: 396, column: 12, scope: !1535)
!1653 = !DILocation(line: 397, column: 12, scope: !1535)
!1654 = !DILocation(line: 398, column: 12, scope: !1535)
!1655 = !DILocation(line: 401, column: 11, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 400, column: 11)
!1657 = !DILocation(line: 403, column: 17, scope: !1656)
!1658 = !DILocation(line: 404, column: 39, scope: !1656)
!1659 = !DILocation(line: 408, column: 32, scope: !1656)
!1660 = !DILocation(line: 404, column: 19, scope: !1656)
!1661 = !DILocation(line: 404, column: 15, scope: !1656)
!1662 = !DILocation(line: 409, column: 11, scope: !1656)
!1663 = !DILocation(line: 409, column: 26, scope: !1656)
!1664 = !DILocation(line: 409, column: 14, scope: !1656)
!1665 = !DILocation(line: 409, column: 63, scope: !1656)
!1666 = !DILocation(line: 400, column: 11, scope: !1535)
!1667 = !DILocation(line: 416, column: 11, scope: !1535)
!1668 = !DILocation(line: 394, column: 21, scope: !1535)
!1669 = !DILocation(line: 417, column: 7, scope: !1535)
!1670 = !DILocation(line: 420, column: 15, scope: !1544)
!1671 = !DILocation(line: 422, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !168, line: 422, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !168, line: 421, column: 13)
!1674 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 420, column: 15)
!1675 = !DILocation(line: 422, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !168, line: 422, column: 15)
!1677 = !DILocation(line: 422, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !168, line: 422, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !168, line: 422, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !168, line: 422, column: 15)
!1681 = !DILocation(line: 422, column: 15, scope: !1679)
!1682 = !DILocation(line: 422, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !168, line: 422, column: 15)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !168, line: 422, column: 15)
!1685 = !DILocation(line: 422, column: 15, scope: !1684)
!1686 = !DILocation(line: 422, column: 15, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !168, line: 422, column: 15)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !168, line: 422, column: 15)
!1689 = !DILocation(line: 422, column: 15, scope: !1688)
!1690 = !DILocation(line: 422, column: 15, scope: !1680)
!1691 = !DILocation(line: 422, column: 15, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !168, line: 422, column: 15)
!1693 = distinct !DILexicalBlock(scope: !1672, file: !168, line: 422, column: 15)
!1694 = !DILocation(line: 422, column: 15, scope: !1693)
!1695 = !DILocation(line: 430, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1673, file: !168, line: 429, column: 19)
!1697 = !DILocation(line: 430, column: 24, scope: !1696)
!1698 = !DILocation(line: 430, column: 28, scope: !1696)
!1699 = !DILocation(line: 430, column: 38, scope: !1696)
!1700 = !DILocation(line: 430, column: 48, scope: !1696)
!1701 = !DILocation(line: 430, column: 59, scope: !1696)
!1702 = !DILocation(line: 432, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !168, line: 432, column: 19)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !168, line: 432, column: 19)
!1705 = distinct !DILexicalBlock(scope: !1696, file: !168, line: 431, column: 17)
!1706 = !DILocation(line: 432, column: 19, scope: !1704)
!1707 = !DILocation(line: 433, column: 19, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !168, line: 433, column: 19)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !168, line: 433, column: 19)
!1710 = !DILocation(line: 433, column: 19, scope: !1709)
!1711 = !DILocation(line: 434, column: 17, scope: !1705)
!1712 = !DILocation(line: 441, column: 20, scope: !1674)
!1713 = !DILocation(line: 446, column: 11, scope: !1544)
!1714 = !DILocation(line: 449, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 447, column: 13)
!1716 = !DILocation(line: 455, column: 19, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1715, file: !168, line: 454, column: 19)
!1718 = !DILocation(line: 455, column: 24, scope: !1717)
!1719 = !DILocation(line: 455, column: 28, scope: !1717)
!1720 = !DILocation(line: 455, column: 38, scope: !1717)
!1721 = !DILocation(line: 455, column: 47, scope: !1717)
!1722 = !DILocation(line: 455, column: 41, scope: !1717)
!1723 = !DILocation(line: 455, column: 52, scope: !1717)
!1724 = !DILocation(line: 454, column: 19, scope: !1715)
!1725 = !DILocation(line: 456, column: 25, scope: !1717)
!1726 = !DILocation(line: 456, column: 17, scope: !1717)
!1727 = !DILocation(line: 463, column: 25, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1717, file: !168, line: 457, column: 19)
!1729 = !DILocation(line: 467, column: 21, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !168, line: 467, column: 21)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !168, line: 467, column: 21)
!1732 = !DILocation(line: 467, column: 21, scope: !1731)
!1733 = !DILocation(line: 468, column: 21, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !168, line: 468, column: 21)
!1735 = distinct !DILexicalBlock(scope: !1728, file: !168, line: 468, column: 21)
!1736 = !DILocation(line: 468, column: 21, scope: !1735)
!1737 = !DILocation(line: 469, column: 21, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !168, line: 469, column: 21)
!1739 = distinct !DILexicalBlock(scope: !1728, file: !168, line: 469, column: 21)
!1740 = !DILocation(line: 469, column: 21, scope: !1739)
!1741 = !DILocation(line: 470, column: 21, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !168, line: 470, column: 21)
!1743 = distinct !DILexicalBlock(scope: !1728, file: !168, line: 470, column: 21)
!1744 = !DILocation(line: 470, column: 21, scope: !1743)
!1745 = !DILocation(line: 471, column: 21, scope: !1728)
!1746 = !DILocation(line: 395, column: 21, scope: !1535)
!1747 = !DILocation(line: 484, column: 31, scope: !1544)
!1748 = !DILocation(line: 485, column: 31, scope: !1544)
!1749 = !DILocation(line: 487, column: 31, scope: !1544)
!1750 = !DILocation(line: 488, column: 31, scope: !1544)
!1751 = !DILocation(line: 489, column: 31, scope: !1544)
!1752 = !DILocation(line: 492, column: 15, scope: !1544)
!1753 = !DILocation(line: 494, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !168, line: 493, column: 13)
!1755 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 492, column: 15)
!1756 = !DILocation(line: 501, column: 33, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 501, column: 15)
!1758 = !DILocation(line: 506, column: 15, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 505, column: 15)
!1760 = !DILocation(line: 510, column: 15, scope: !1544)
!1761 = !DILocation(line: 518, column: 26, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 518, column: 15)
!1763 = !DILocation(line: 518, column: 15, scope: !1544)
!1764 = !DILocation(line: 518, column: 40, scope: !1762)
!1765 = !DILocation(line: 518, column: 47, scope: !1762)
!1766 = !DILocation(line: 522, column: 17, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 522, column: 15)
!1768 = !DILocation(line: 518, column: 18, scope: !1762)
!1769 = !DILocation(line: 518, column: 65, scope: !1762)
!1770 = !DILocation(line: 522, column: 15, scope: !1544)
!1771 = !DILocation(line: 526, column: 11, scope: !1544)
!1772 = !DILocation(line: 541, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 540, column: 15)
!1774 = !DILocation(line: 548, column: 15, scope: !1544)
!1775 = !DILocation(line: 550, column: 19, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !168, line: 549, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1544, file: !168, line: 548, column: 15)
!1778 = !DILocation(line: 553, column: 19, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !168, line: 553, column: 19)
!1780 = !DILocation(line: 553, column: 35, scope: !1779)
!1781 = !DILocation(line: 553, column: 30, scope: !1779)
!1782 = !DILocation(line: 562, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !168, line: 562, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1776, file: !168, line: 562, column: 15)
!1785 = !DILocation(line: 562, column: 15, scope: !1784)
!1786 = !DILocation(line: 563, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !168, line: 563, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1776, file: !168, line: 563, column: 15)
!1789 = !DILocation(line: 563, column: 15, scope: !1788)
!1790 = !DILocation(line: 564, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !168, line: 564, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1776, file: !168, line: 564, column: 15)
!1793 = !DILocation(line: 564, column: 15, scope: !1792)
!1794 = !DILocation(line: 566, column: 13, scope: !1776)
!1795 = !DILocation(line: 606, column: 17, scope: !1543)
!1796 = !DILocation(line: 602, column: 20, scope: !1543)
!1797 = !DILocation(line: 609, column: 29, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1548, file: !168, line: 607, column: 15)
!1799 = !DILocation(line: 609, column: 27, scope: !1798)
!1800 = !DILocation(line: 604, column: 18, scope: !1543)
!1801 = !DILocation(line: 610, column: 15, scope: !1798)
!1802 = !DILocation(line: 613, column: 17, scope: !1547)
!1803 = !DILocation(line: 614, column: 17, scope: !1547)
!1804 = !DILocation(line: 618, column: 29, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1547, file: !168, line: 618, column: 21)
!1806 = !DILocation(line: 618, column: 21, scope: !1547)
!1807 = !DILocation(line: 619, column: 29, scope: !1805)
!1808 = !DILocation(line: 619, column: 19, scope: !1805)
!1809 = !DILocation(line: 621, column: 17, scope: !1547)
!1810 = distinct !{!1810, !1809, !1811}
!1811 = !DILocation(line: 667, column: 44, scope: !1547)
!1812 = !DILocation(line: 623, column: 21, scope: !1565)
!1813 = !DILocation(line: 624, column: 56, scope: !1565)
!1814 = !DILocation(line: 624, column: 50, scope: !1565)
!1815 = !DILocation(line: 625, column: 53, scope: !1565)
!1816 = !DILocation(line: 613, column: 27, scope: !1547)
!1817 = !DILocation(line: 623, column: 29, scope: !1565)
!1818 = !DILocation(line: 624, column: 36, scope: !1565)
!1819 = !DILocation(line: 624, column: 28, scope: !1565)
!1820 = !DILocation(line: 626, column: 25, scope: !1565)
!1821 = !DILocation(line: 636, column: 38, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1572, file: !168, line: 634, column: 23)
!1823 = !DILocation(line: 636, column: 48, scope: !1822)
!1824 = !DILocation(line: 636, column: 51, scope: !1822)
!1825 = !DILocation(line: 636, column: 25, scope: !1822)
!1826 = !DILocation(line: 637, column: 28, scope: !1822)
!1827 = !DILocation(line: 636, column: 34, scope: !1822)
!1828 = distinct !{!1828, !1825, !1826}
!1829 = !DILocation(line: 650, column: 43, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !168, line: 650, column: 29)
!1831 = distinct !DILexicalBlock(scope: !1569, file: !168, line: 650, column: 29)
!1832 = !DILocation(line: 647, column: 29, scope: !1570)
!1833 = !DILocation(line: 649, column: 36, scope: !1569)
!1834 = !DILocation(line: 651, column: 49, scope: !1830)
!1835 = !DILocation(line: 651, column: 39, scope: !1830)
!1836 = !DILocation(line: 651, column: 31, scope: !1830)
!1837 = !DILocation(line: 650, column: 53, scope: !1830)
!1838 = !DILocation(line: 650, column: 29, scope: !1831)
!1839 = distinct !{!1839, !1838, !1840}
!1840 = !DILocation(line: 659, column: 33, scope: !1831)
!1841 = !DILocation(line: 666, column: 19, scope: !1547)
!1842 = !DILocation(line: 662, column: 41, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1571, file: !168, line: 662, column: 29)
!1844 = !DILocation(line: 662, column: 31, scope: !1843)
!1845 = !DILocation(line: 662, column: 29, scope: !1571)
!1846 = !DILocation(line: 664, column: 27, scope: !1571)
!1847 = !DILocation(line: 667, column: 26, scope: !1547)
!1848 = !DILocation(line: 667, column: 24, scope: !1547)
!1849 = !DILocation(line: 666, column: 19, scope: !1565)
!1850 = !DILocation(line: 668, column: 15, scope: !1548)
!1851 = !DILocation(line: 670, column: 40, scope: !1543)
!1852 = !DILocation(line: 672, column: 19, scope: !1577)
!1853 = !DILocation(line: 672, column: 45, scope: !1577)
!1854 = !DILocation(line: 672, column: 23, scope: !1577)
!1855 = !DILocation(line: 676, column: 33, scope: !1576)
!1856 = !DILocation(line: 676, column: 24, scope: !1576)
!1857 = !DILocation(line: 678, column: 17, scope: !1576)
!1858 = !DILocation(line: 680, column: 43, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !168, line: 680, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !168, line: 679, column: 19)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !168, line: 678, column: 17)
!1862 = distinct !DILexicalBlock(scope: !1576, file: !168, line: 678, column: 17)
!1863 = !DILocation(line: 682, column: 25, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !168, line: 682, column: 25)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !168, line: 681, column: 23)
!1866 = !DILocation(line: 682, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !168, line: 682, column: 25)
!1868 = !DILocation(line: 682, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !168, line: 682, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !168, line: 682, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !168, line: 682, column: 25)
!1872 = !DILocation(line: 682, column: 25, scope: !1870)
!1873 = !DILocation(line: 682, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !168, line: 682, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !168, line: 682, column: 25)
!1876 = !DILocation(line: 682, column: 25, scope: !1875)
!1877 = !DILocation(line: 682, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !168, line: 682, column: 25)
!1879 = distinct !DILexicalBlock(scope: !1871, file: !168, line: 682, column: 25)
!1880 = !DILocation(line: 682, column: 25, scope: !1879)
!1881 = !DILocation(line: 682, column: 25, scope: !1871)
!1882 = !DILocation(line: 682, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !168, line: 682, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1864, file: !168, line: 682, column: 25)
!1885 = !DILocation(line: 682, column: 25, scope: !1884)
!1886 = !DILocation(line: 683, column: 25, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !168, line: 683, column: 25)
!1888 = distinct !DILexicalBlock(scope: !1865, file: !168, line: 683, column: 25)
!1889 = !DILocation(line: 683, column: 25, scope: !1888)
!1890 = !DILocation(line: 684, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !168, line: 684, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1865, file: !168, line: 684, column: 25)
!1893 = !DILocation(line: 684, column: 25, scope: !1892)
!1894 = !DILocation(line: 685, column: 38, scope: !1865)
!1895 = !DILocation(line: 685, column: 33, scope: !1865)
!1896 = !DILocation(line: 686, column: 23, scope: !1865)
!1897 = !DILocation(line: 687, column: 30, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1859, file: !168, line: 687, column: 30)
!1899 = !DILocation(line: 687, column: 30, scope: !1859)
!1900 = !DILocation(line: 689, column: 25, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !168, line: 689, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !168, line: 689, column: 25)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !168, line: 688, column: 23)
!1904 = !DILocation(line: 689, column: 25, scope: !1902)
!1905 = !DILocation(line: 691, column: 23, scope: !1903)
!1906 = !DILocation(line: 692, column: 35, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1860, file: !168, line: 692, column: 25)
!1908 = !DILocation(line: 692, column: 30, scope: !1907)
!1909 = !DILocation(line: 692, column: 25, scope: !1860)
!1910 = !DILocation(line: 694, column: 21, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !168, line: 694, column: 21)
!1912 = distinct !DILexicalBlock(scope: !1860, file: !168, line: 694, column: 21)
!1913 = !DILocation(line: 694, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !168, line: 694, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !168, line: 694, column: 21)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !168, line: 694, column: 21)
!1917 = !DILocation(line: 694, column: 21, scope: !1915)
!1918 = !DILocation(line: 694, column: 21, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !168, line: 694, column: 21)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !168, line: 694, column: 21)
!1921 = !DILocation(line: 694, column: 21, scope: !1920)
!1922 = !DILocation(line: 694, column: 21, scope: !1916)
!1923 = !DILocation(line: 695, column: 21, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !168, line: 695, column: 21)
!1925 = distinct !DILexicalBlock(scope: !1860, file: !168, line: 695, column: 21)
!1926 = !DILocation(line: 695, column: 21, scope: !1925)
!1927 = !DILocation(line: 696, column: 25, scope: !1860)
!1928 = !DILocation(line: 678, column: 17, scope: !1861)
!1929 = distinct !{!1929, !1930, !1931}
!1930 = !DILocation(line: 678, column: 17, scope: !1862)
!1931 = !DILocation(line: 697, column: 19, scope: !1862)
!1932 = !DILocation(line: 704, column: 34, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 704, column: 11)
!1934 = !DILocation(line: 706, column: 14, scope: !1933)
!1935 = !DILocation(line: 707, column: 14, scope: !1933)
!1936 = !DILocation(line: 707, column: 35, scope: !1933)
!1937 = !DILocation(line: 707, column: 17, scope: !1933)
!1938 = !DILocation(line: 707, column: 53, scope: !1933)
!1939 = !DILocation(line: 707, column: 47, scope: !1933)
!1940 = !DILocation(line: 707, column: 65, scope: !1933)
!1941 = !DILocation(line: 708, column: 15, scope: !1933)
!1942 = !DILocation(line: 708, column: 11, scope: !1933)
!1943 = !DILocation(line: 704, column: 11, scope: !1535)
!1944 = !DILocation(line: 712, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 712, column: 7)
!1946 = !DILocation(line: 712, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1945, file: !168, line: 712, column: 7)
!1948 = !DILocation(line: 712, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !168, line: 712, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !168, line: 712, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !168, line: 712, column: 7)
!1952 = !DILocation(line: 712, column: 7, scope: !1950)
!1953 = !DILocation(line: 712, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !168, line: 712, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !168, line: 712, column: 7)
!1956 = !DILocation(line: 712, column: 7, scope: !1955)
!1957 = !DILocation(line: 712, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !168, line: 712, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !168, line: 712, column: 7)
!1960 = !DILocation(line: 712, column: 7, scope: !1959)
!1961 = !DILocation(line: 712, column: 7, scope: !1951)
!1962 = !DILocation(line: 712, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !168, line: 712, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1945, file: !168, line: 712, column: 7)
!1965 = !DILocation(line: 712, column: 7, scope: !1964)
!1966 = !DILocation(line: 715, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !168, line: 715, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 715, column: 7)
!1969 = !DILocation(line: 715, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !168, line: 715, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !168, line: 715, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !168, line: 715, column: 7)
!1973 = !DILocation(line: 715, column: 7, scope: !1971)
!1974 = !DILocation(line: 715, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !168, line: 715, column: 7)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !168, line: 715, column: 7)
!1977 = !DILocation(line: 715, column: 7, scope: !1976)
!1978 = !DILocation(line: 715, column: 7, scope: !1972)
!1979 = !DILocation(line: 716, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !168, line: 716, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 716, column: 7)
!1982 = !DILocation(line: 716, column: 7, scope: !1981)
!1983 = !DILocation(line: 718, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1535, file: !168, line: 718, column: 11)
!1985 = !DILocation(line: 718, column: 11, scope: !1535)
!1986 = !DILocation(line: 720, column: 5, scope: !1536)
!1987 = !DILocation(line: 392, column: 75, scope: !1536)
!1988 = !DILocation(line: 392, column: 3, scope: !1536)
!1989 = distinct !{!1989, !1649, !1990}
!1990 = !DILocation(line: 720, column: 5, scope: !1537)
!1991 = !DILocation(line: 722, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 722, column: 7)
!1993 = !DILocation(line: 722, column: 16, scope: !1992)
!1994 = !DILocation(line: 730, column: 51, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 730, column: 7)
!1996 = !DILocation(line: 731, column: 10, scope: !1995)
!1997 = !DILocation(line: 733, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !168, line: 733, column: 11)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !168, line: 732, column: 5)
!2000 = !DILocation(line: 733, column: 11, scope: !1999)
!2001 = !DILocation(line: 734, column: 16, scope: !1998)
!2002 = !DILocation(line: 734, column: 9, scope: !1998)
!2003 = !DILocation(line: 738, column: 18, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !168, line: 738, column: 16)
!2005 = !DILocation(line: 738, column: 32, scope: !2004)
!2006 = !DILocation(line: 738, column: 29, scope: !2004)
!2007 = !DILocation(line: 747, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 747, column: 7)
!2009 = !DILocation(line: 747, column: 20, scope: !2008)
!2010 = !DILocation(line: 748, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !168, line: 748, column: 5)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !168, line: 748, column: 5)
!2013 = !DILocation(line: 748, column: 5, scope: !2012)
!2014 = !DILocation(line: 749, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !168, line: 749, column: 7)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !168, line: 749, column: 7)
!2017 = !DILocation(line: 749, column: 7, scope: !2016)
!2018 = !DILocation(line: 748, column: 39, scope: !2011)
!2019 = distinct !{!2019, !2013, !2020}
!2020 = !DILocation(line: 749, column: 7, scope: !2012)
!2021 = !DILocation(line: 751, column: 11, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 751, column: 7)
!2023 = !DILocation(line: 751, column: 7, scope: !1508)
!2024 = !DILocation(line: 752, column: 5, scope: !2022)
!2025 = !DILocation(line: 752, column: 17, scope: !2022)
!2026 = !DILocation(line: 758, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1508, file: !168, line: 758, column: 7)
!2028 = !DILocation(line: 758, column: 54, scope: !2027)
!2029 = !DILocation(line: 758, column: 51, scope: !2027)
!2030 = !DILocation(line: 762, column: 42, scope: !1508)
!2031 = !DILocation(line: 760, column: 10, scope: !1508)
!2032 = !DILocation(line: 760, column: 3, scope: !1508)
!2033 = !DILocation(line: 764, column: 1, scope: !1508)
!2034 = distinct !DISubprogram(name: "gettext_quote", scope: !168, file: !168, line: 199, type: !2035, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!97, !97, !5}
!2037 = !{!2038, !2039, !2040, !2041}
!2038 = !DILocalVariable(name: "msgid", arg: 1, scope: !2034, file: !168, line: 199, type: !97)
!2039 = !DILocalVariable(name: "s", arg: 2, scope: !2034, file: !168, line: 199, type: !5)
!2040 = !DILocalVariable(name: "translation", scope: !2034, file: !168, line: 201, type: !97)
!2041 = !DILocalVariable(name: "locale_code", scope: !2034, file: !168, line: 202, type: !97)
!2042 = !DILocation(line: 199, column: 28, scope: !2034)
!2043 = !DILocation(line: 199, column: 54, scope: !2034)
!2044 = !DILocation(line: 201, column: 29, scope: !2034)
!2045 = !DILocation(line: 201, column: 15, scope: !2034)
!2046 = !DILocation(line: 204, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2034, file: !168, line: 204, column: 7)
!2048 = !DILocation(line: 204, column: 7, scope: !2034)
!2049 = !DILocation(line: 225, column: 17, scope: !2034)
!2050 = !DILocation(line: 202, column: 15, scope: !2034)
!2051 = !DILocalVariable(name: "s2", arg: 2, scope: !2052, file: !2053, line: 160, type: !97)
!2052 = distinct !DISubprogram(name: "strcaseeq0", scope: !2053, file: !2053, line: 160, type: !2054, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2056)
!2053 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!69, !97, !97, !68, !68, !68, !68, !68, !68, !68, !68, !68}
!2056 = !{!2057, !2051, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2057 = !DILocalVariable(name: "s1", arg: 1, scope: !2052, file: !2053, line: 160, type: !97)
!2058 = !DILocalVariable(name: "s20", arg: 3, scope: !2052, file: !2053, line: 160, type: !68)
!2059 = !DILocalVariable(name: "s21", arg: 4, scope: !2052, file: !2053, line: 160, type: !68)
!2060 = !DILocalVariable(name: "s22", arg: 5, scope: !2052, file: !2053, line: 160, type: !68)
!2061 = !DILocalVariable(name: "s23", arg: 6, scope: !2052, file: !2053, line: 160, type: !68)
!2062 = !DILocalVariable(name: "s24", arg: 7, scope: !2052, file: !2053, line: 160, type: !68)
!2063 = !DILocalVariable(name: "s25", arg: 8, scope: !2052, file: !2053, line: 160, type: !68)
!2064 = !DILocalVariable(name: "s26", arg: 9, scope: !2052, file: !2053, line: 160, type: !68)
!2065 = !DILocalVariable(name: "s27", arg: 10, scope: !2052, file: !2053, line: 160, type: !68)
!2066 = !DILocalVariable(name: "s28", arg: 11, scope: !2052, file: !2053, line: 160, type: !68)
!2067 = !DILocation(line: 160, column: 41, scope: !2052, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 226, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2034, file: !168, line: 226, column: 7)
!2070 = !DILocation(line: 160, column: 120, scope: !2052, inlinedAt: !2068)
!2071 = !DILocation(line: 160, column: 130, scope: !2052, inlinedAt: !2068)
!2072 = !DILocation(line: 162, column: 7, scope: !2073, inlinedAt: !2068)
!2073 = distinct !DILexicalBlock(scope: !2052, file: !2053, line: 162, column: 7)
!2074 = !DILocalVariable(name: "s2", arg: 2, scope: !2075, file: !2053, line: 146, type: !97)
!2075 = distinct !DISubprogram(name: "strcaseeq1", scope: !2053, file: !2053, line: 146, type: !2076, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!69, !97, !97, !68, !68, !68, !68, !68, !68, !68, !68}
!2078 = !{!2079, !2074, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2079 = !DILocalVariable(name: "s1", arg: 1, scope: !2075, file: !2053, line: 146, type: !97)
!2080 = !DILocalVariable(name: "s21", arg: 3, scope: !2075, file: !2053, line: 146, type: !68)
!2081 = !DILocalVariable(name: "s22", arg: 4, scope: !2075, file: !2053, line: 146, type: !68)
!2082 = !DILocalVariable(name: "s23", arg: 5, scope: !2075, file: !2053, line: 146, type: !68)
!2083 = !DILocalVariable(name: "s24", arg: 6, scope: !2075, file: !2053, line: 146, type: !68)
!2084 = !DILocalVariable(name: "s25", arg: 7, scope: !2075, file: !2053, line: 146, type: !68)
!2085 = !DILocalVariable(name: "s26", arg: 8, scope: !2075, file: !2053, line: 146, type: !68)
!2086 = !DILocalVariable(name: "s27", arg: 9, scope: !2075, file: !2053, line: 146, type: !68)
!2087 = !DILocalVariable(name: "s28", arg: 10, scope: !2075, file: !2053, line: 146, type: !68)
!2088 = !DILocation(line: 146, column: 41, scope: !2075, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 167, column: 16, scope: !2090, inlinedAt: !2068)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !2053, line: 164, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2073, file: !2053, line: 163, column: 5)
!2092 = !DILocation(line: 146, column: 110, scope: !2075, inlinedAt: !2089)
!2093 = !DILocation(line: 146, column: 120, scope: !2075, inlinedAt: !2089)
!2094 = !DILocation(line: 148, column: 7, scope: !2095, inlinedAt: !2089)
!2095 = distinct !DILexicalBlock(scope: !2075, file: !2053, line: 148, column: 7)
!2096 = !DILocalVariable(name: "s2", arg: 2, scope: !2097, file: !2053, line: 132, type: !97)
!2097 = distinct !DISubprogram(name: "strcaseeq2", scope: !2053, file: !2053, line: 132, type: !2098, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!69, !97, !97, !68, !68, !68, !68, !68, !68, !68}
!2100 = !{!2101, !2096, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DILocalVariable(name: "s1", arg: 1, scope: !2097, file: !2053, line: 132, type: !97)
!2102 = !DILocalVariable(name: "s22", arg: 3, scope: !2097, file: !2053, line: 132, type: !68)
!2103 = !DILocalVariable(name: "s23", arg: 4, scope: !2097, file: !2053, line: 132, type: !68)
!2104 = !DILocalVariable(name: "s24", arg: 5, scope: !2097, file: !2053, line: 132, type: !68)
!2105 = !DILocalVariable(name: "s25", arg: 6, scope: !2097, file: !2053, line: 132, type: !68)
!2106 = !DILocalVariable(name: "s26", arg: 7, scope: !2097, file: !2053, line: 132, type: !68)
!2107 = !DILocalVariable(name: "s27", arg: 8, scope: !2097, file: !2053, line: 132, type: !68)
!2108 = !DILocalVariable(name: "s28", arg: 9, scope: !2097, file: !2053, line: 132, type: !68)
!2109 = !DILocation(line: 132, column: 41, scope: !2097, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 153, column: 16, scope: !2111, inlinedAt: !2089)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !2053, line: 150, column: 11)
!2112 = distinct !DILexicalBlock(scope: !2095, file: !2053, line: 149, column: 5)
!2113 = !DILocation(line: 132, column: 100, scope: !2097, inlinedAt: !2110)
!2114 = !DILocation(line: 132, column: 110, scope: !2097, inlinedAt: !2110)
!2115 = !DILocation(line: 134, column: 7, scope: !2116, inlinedAt: !2110)
!2116 = distinct !DILexicalBlock(scope: !2097, file: !2053, line: 134, column: 7)
!2117 = !DILocalVariable(name: "s2", arg: 2, scope: !2118, file: !2053, line: 118, type: !97)
!2118 = distinct !DISubprogram(name: "strcaseeq3", scope: !2053, file: !2053, line: 118, type: !2119, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!69, !97, !97, !68, !68, !68, !68, !68, !68}
!2121 = !{!2122, !2117, !2123, !2124, !2125, !2126, !2127, !2128}
!2122 = !DILocalVariable(name: "s1", arg: 1, scope: !2118, file: !2053, line: 118, type: !97)
!2123 = !DILocalVariable(name: "s23", arg: 3, scope: !2118, file: !2053, line: 118, type: !68)
!2124 = !DILocalVariable(name: "s24", arg: 4, scope: !2118, file: !2053, line: 118, type: !68)
!2125 = !DILocalVariable(name: "s25", arg: 5, scope: !2118, file: !2053, line: 118, type: !68)
!2126 = !DILocalVariable(name: "s26", arg: 6, scope: !2118, file: !2053, line: 118, type: !68)
!2127 = !DILocalVariable(name: "s27", arg: 7, scope: !2118, file: !2053, line: 118, type: !68)
!2128 = !DILocalVariable(name: "s28", arg: 8, scope: !2118, file: !2053, line: 118, type: !68)
!2129 = !DILocation(line: 118, column: 41, scope: !2118, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 139, column: 16, scope: !2131, inlinedAt: !2110)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2053, line: 136, column: 11)
!2132 = distinct !DILexicalBlock(scope: !2116, file: !2053, line: 135, column: 5)
!2133 = !DILocation(line: 118, column: 90, scope: !2118, inlinedAt: !2130)
!2134 = !DILocation(line: 118, column: 100, scope: !2118, inlinedAt: !2130)
!2135 = !DILocation(line: 120, column: 7, scope: !2136, inlinedAt: !2130)
!2136 = distinct !DILexicalBlock(scope: !2118, file: !2053, line: 120, column: 7)
!2137 = !DILocation(line: 120, column: 7, scope: !2118, inlinedAt: !2130)
!2138 = !DILocalVariable(name: "s2", arg: 2, scope: !2139, file: !2053, line: 104, type: !97)
!2139 = distinct !DISubprogram(name: "strcaseeq4", scope: !2053, file: !2053, line: 104, type: !2140, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!69, !97, !97, !68, !68, !68, !68, !68}
!2142 = !{!2143, !2138, !2144, !2145, !2146, !2147, !2148}
!2143 = !DILocalVariable(name: "s1", arg: 1, scope: !2139, file: !2053, line: 104, type: !97)
!2144 = !DILocalVariable(name: "s24", arg: 3, scope: !2139, file: !2053, line: 104, type: !68)
!2145 = !DILocalVariable(name: "s25", arg: 4, scope: !2139, file: !2053, line: 104, type: !68)
!2146 = !DILocalVariable(name: "s26", arg: 5, scope: !2139, file: !2053, line: 104, type: !68)
!2147 = !DILocalVariable(name: "s27", arg: 6, scope: !2139, file: !2053, line: 104, type: !68)
!2148 = !DILocalVariable(name: "s28", arg: 7, scope: !2139, file: !2053, line: 104, type: !68)
!2149 = !DILocation(line: 104, column: 41, scope: !2139, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 125, column: 16, scope: !2151, inlinedAt: !2130)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !2053, line: 122, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2136, file: !2053, line: 121, column: 5)
!2153 = !DILocation(line: 104, column: 80, scope: !2139, inlinedAt: !2150)
!2154 = !DILocation(line: 104, column: 90, scope: !2139, inlinedAt: !2150)
!2155 = !DILocation(line: 106, column: 7, scope: !2156, inlinedAt: !2150)
!2156 = distinct !DILexicalBlock(scope: !2139, file: !2053, line: 106, column: 7)
!2157 = !DILocation(line: 106, column: 7, scope: !2139, inlinedAt: !2150)
!2158 = !DILocalVariable(name: "s2", arg: 2, scope: !2159, file: !2053, line: 90, type: !97)
!2159 = distinct !DISubprogram(name: "strcaseeq5", scope: !2053, file: !2053, line: 90, type: !2160, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!69, !97, !97, !68, !68, !68, !68}
!2162 = !{!2163, !2158, !2164, !2165, !2166, !2167}
!2163 = !DILocalVariable(name: "s1", arg: 1, scope: !2159, file: !2053, line: 90, type: !97)
!2164 = !DILocalVariable(name: "s25", arg: 3, scope: !2159, file: !2053, line: 90, type: !68)
!2165 = !DILocalVariable(name: "s26", arg: 4, scope: !2159, file: !2053, line: 90, type: !68)
!2166 = !DILocalVariable(name: "s27", arg: 5, scope: !2159, file: !2053, line: 90, type: !68)
!2167 = !DILocalVariable(name: "s28", arg: 6, scope: !2159, file: !2053, line: 90, type: !68)
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
!2183 = distinct !DILexicalBlock(scope: !2034, file: !168, line: 228, column: 7)
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
!2211 = !DILocalVariable(name: "s2", arg: 2, scope: !2212, file: !2053, line: 76, type: !97)
!2212 = distinct !DISubprogram(name: "strcaseeq6", scope: !2053, file: !2053, line: 76, type: !2213, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!69, !97, !97, !68, !68, !68}
!2215 = !{!2216, !2211, !2217, !2218, !2219}
!2216 = !DILocalVariable(name: "s1", arg: 1, scope: !2212, file: !2053, line: 76, type: !97)
!2217 = !DILocalVariable(name: "s26", arg: 3, scope: !2212, file: !2053, line: 76, type: !68)
!2218 = !DILocalVariable(name: "s27", arg: 4, scope: !2212, file: !2053, line: 76, type: !68)
!2219 = !DILocalVariable(name: "s28", arg: 5, scope: !2212, file: !2053, line: 76, type: !68)
!2220 = !DILocation(line: 76, column: 41, scope: !2212, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 97, column: 16, scope: !2222, inlinedAt: !2206)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2053, line: 94, column: 11)
!2223 = distinct !DILexicalBlock(scope: !2175, file: !2053, line: 93, column: 5)
!2224 = !DILocation(line: 76, column: 60, scope: !2212, inlinedAt: !2221)
!2225 = !DILocation(line: 76, column: 70, scope: !2212, inlinedAt: !2221)
!2226 = !DILocation(line: 78, column: 7, scope: !2227, inlinedAt: !2221)
!2227 = distinct !DILexicalBlock(scope: !2212, file: !2053, line: 78, column: 7)
!2228 = !DILocation(line: 78, column: 7, scope: !2212, inlinedAt: !2221)
!2229 = !DILocalVariable(name: "s2", arg: 2, scope: !2230, file: !2053, line: 62, type: !97)
!2230 = distinct !DISubprogram(name: "strcaseeq7", scope: !2053, file: !2053, line: 62, type: !2231, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!69, !97, !97, !68, !68}
!2233 = !{!2234, !2229, !2235, !2236}
!2234 = !DILocalVariable(name: "s1", arg: 1, scope: !2230, file: !2053, line: 62, type: !97)
!2235 = !DILocalVariable(name: "s27", arg: 3, scope: !2230, file: !2053, line: 62, type: !68)
!2236 = !DILocalVariable(name: "s28", arg: 4, scope: !2230, file: !2053, line: 62, type: !68)
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
!2253 = distinct !DISubprogram(name: "quotearg_alloc", scope: !168, file: !168, line: 791, type: !2254, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!67, !97, !56, !1380}
!2256 = !{!2257, !2258, !2259}
!2257 = !DILocalVariable(name: "arg", arg: 1, scope: !2253, file: !168, line: 791, type: !97)
!2258 = !DILocalVariable(name: "argsize", arg: 2, scope: !2253, file: !168, line: 791, type: !56)
!2259 = !DILocalVariable(name: "o", arg: 3, scope: !2253, file: !168, line: 792, type: !1380)
!2260 = !DILocation(line: 791, column: 29, scope: !2253)
!2261 = !DILocation(line: 791, column: 41, scope: !2253)
!2262 = !DILocation(line: 792, column: 47, scope: !2253)
!2263 = !DILocalVariable(name: "arg", arg: 1, scope: !2264, file: !168, line: 804, type: !97)
!2264 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !168, file: !168, line: 804, type: !2265, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!67, !97, !56, !55, !1380}
!2267 = !{!2263, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2268 = !DILocalVariable(name: "argsize", arg: 2, scope: !2264, file: !168, line: 804, type: !56)
!2269 = !DILocalVariable(name: "size", arg: 3, scope: !2264, file: !168, line: 804, type: !55)
!2270 = !DILocalVariable(name: "o", arg: 4, scope: !2264, file: !168, line: 805, type: !1380)
!2271 = !DILocalVariable(name: "p", scope: !2264, file: !168, line: 807, type: !1380)
!2272 = !DILocalVariable(name: "e", scope: !2264, file: !168, line: 808, type: !69)
!2273 = !DILocalVariable(name: "flags", scope: !2264, file: !168, line: 810, type: !69)
!2274 = !DILocalVariable(name: "bufsize", scope: !2264, file: !168, line: 811, type: !56)
!2275 = !DILocalVariable(name: "buf", scope: !2264, file: !168, line: 815, type: !67)
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
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2296, file: !50, line: 220, type: !56)
!2296 = distinct !DISubprogram(name: "xcharalloc", scope: !50, file: !50, line: 220, type: !2297, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!67, !56}
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
!2340 = distinct !DILexicalBlock(scope: !2264, file: !168, line: 820, column: 7)
!2341 = !DILocation(line: 821, column: 5, scope: !2340)
!2342 = !DILocation(line: 822, column: 3, scope: !2264)
!2343 = distinct !DISubprogram(name: "quotearg_free", scope: !168, file: !168, line: 840, type: !1287, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2344)
!2344 = !{!2345, !2346}
!2345 = !DILocalVariable(name: "sv", scope: !2343, file: !168, line: 842, type: !194)
!2346 = !DILocalVariable(name: "i", scope: !2343, file: !168, line: 843, type: !69)
!2347 = !DILocation(line: 842, column: 24, scope: !2343)
!2348 = !DILocation(line: 842, column: 19, scope: !2343)
!2349 = !DILocation(line: 843, column: 7, scope: !2343)
!2350 = !DILocation(line: 844, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !168, line: 844, column: 3)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !168, line: 844, column: 3)
!2353 = !DILocation(line: 844, column: 17, scope: !2351)
!2354 = !DILocation(line: 844, column: 3, scope: !2352)
!2355 = !DILocation(line: 845, column: 17, scope: !2351)
!2356 = !{!2357, !740, i64 8}
!2357 = !{!"slotvec", !847, i64 0, !740, i64 8}
!2358 = !DILocation(line: 845, column: 5, scope: !2351)
!2359 = !DILocation(line: 844, column: 28, scope: !2351)
!2360 = distinct !{!2360, !2354, !2361}
!2361 = !DILocation(line: 845, column: 20, scope: !2352)
!2362 = !DILocation(line: 846, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2343, file: !168, line: 846, column: 7)
!2364 = !DILocation(line: 846, column: 17, scope: !2363)
!2365 = !DILocation(line: 846, column: 7, scope: !2343)
!2366 = !DILocation(line: 848, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !168, line: 847, column: 5)
!2368 = !DILocation(line: 849, column: 21, scope: !2367)
!2369 = !{!2357, !847, i64 0}
!2370 = !DILocation(line: 850, column: 20, scope: !2367)
!2371 = !DILocation(line: 851, column: 5, scope: !2367)
!2372 = !DILocation(line: 852, column: 10, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2343, file: !168, line: 852, column: 7)
!2374 = !DILocation(line: 852, column: 7, scope: !2343)
!2375 = !DILocation(line: 854, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !168, line: 853, column: 5)
!2377 = !DILocation(line: 854, column: 7, scope: !2376)
!2378 = !DILocation(line: 855, column: 15, scope: !2376)
!2379 = !DILocation(line: 856, column: 5, scope: !2376)
!2380 = !DILocation(line: 857, column: 10, scope: !2343)
!2381 = !DILocation(line: 858, column: 1, scope: !2343)
!2382 = distinct !DISubprogram(name: "quotearg_n", scope: !168, file: !168, line: 922, type: !2383, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!67, !69, !97}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !168, line: 922, type: !69)
!2387 = !DILocalVariable(name: "arg", arg: 2, scope: !2382, file: !168, line: 922, type: !97)
!2388 = !DILocation(line: 922, column: 17, scope: !2382)
!2389 = !DILocation(line: 922, column: 32, scope: !2382)
!2390 = !DILocation(line: 924, column: 10, scope: !2382)
!2391 = !DILocation(line: 924, column: 3, scope: !2382)
!2392 = distinct !DISubprogram(name: "quotearg_n_options", scope: !168, file: !168, line: 869, type: !2393, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!67, !69, !97, !56, !1380}
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2405, !2407, !2408, !2409}
!2396 = !DILocalVariable(name: "n", arg: 1, scope: !2392, file: !168, line: 869, type: !69)
!2397 = !DILocalVariable(name: "arg", arg: 2, scope: !2392, file: !168, line: 869, type: !97)
!2398 = !DILocalVariable(name: "argsize", arg: 3, scope: !2392, file: !168, line: 869, type: !56)
!2399 = !DILocalVariable(name: "options", arg: 4, scope: !2392, file: !168, line: 870, type: !1380)
!2400 = !DILocalVariable(name: "e", scope: !2392, file: !168, line: 872, type: !69)
!2401 = !DILocalVariable(name: "sv", scope: !2392, file: !168, line: 874, type: !194)
!2402 = !DILocalVariable(name: "preallocated", scope: !2403, file: !168, line: 881, type: !139)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !168, line: 880, column: 5)
!2404 = distinct !DILexicalBlock(scope: !2392, file: !168, line: 879, column: 7)
!2405 = !DILocalVariable(name: "size", scope: !2406, file: !168, line: 894, type: !56)
!2406 = distinct !DILexicalBlock(scope: !2392, file: !168, line: 893, column: 3)
!2407 = !DILocalVariable(name: "val", scope: !2406, file: !168, line: 895, type: !67)
!2408 = !DILocalVariable(name: "flags", scope: !2406, file: !168, line: 897, type: !69)
!2409 = !DILocalVariable(name: "qsize", scope: !2406, file: !168, line: 898, type: !56)
!2410 = !DILocation(line: 869, column: 25, scope: !2392)
!2411 = !DILocation(line: 869, column: 40, scope: !2392)
!2412 = !DILocation(line: 869, column: 52, scope: !2392)
!2413 = !DILocation(line: 870, column: 51, scope: !2392)
!2414 = !DILocation(line: 872, column: 11, scope: !2392)
!2415 = !DILocation(line: 872, column: 7, scope: !2392)
!2416 = !DILocation(line: 874, column: 24, scope: !2392)
!2417 = !DILocation(line: 874, column: 19, scope: !2392)
!2418 = !DILocation(line: 876, column: 9, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2392, file: !168, line: 876, column: 7)
!2420 = !DILocation(line: 876, column: 7, scope: !2392)
!2421 = !DILocation(line: 877, column: 5, scope: !2419)
!2422 = !DILocation(line: 879, column: 7, scope: !2404)
!2423 = !DILocation(line: 879, column: 14, scope: !2404)
!2424 = !DILocation(line: 879, column: 7, scope: !2392)
!2425 = !DILocation(line: 881, column: 31, scope: !2403)
!2426 = !DILocation(line: 883, column: 67, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2403, file: !168, line: 883, column: 11)
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
!2438 = distinct !DILexicalBlock(scope: !2403, file: !168, line: 887, column: 11)
!2439 = !{i64 0, i64 8, !846, i64 8, i64 8, !739}
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
!2464 = distinct !DILexicalBlock(scope: !2406, file: !168, line: 904, column: 9)
!2465 = !DILocation(line: 904, column: 9, scope: !2406)
!2466 = !DILocation(line: 906, column: 35, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !168, line: 905, column: 7)
!2468 = !DILocation(line: 906, column: 20, scope: !2467)
!2469 = !DILocation(line: 907, column: 17, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !168, line: 907, column: 13)
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
!2484 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !168, file: !168, line: 928, type: !2485, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!67, !69, !97, !56}
!2487 = !{!2488, !2489, !2490}
!2488 = !DILocalVariable(name: "n", arg: 1, scope: !2484, file: !168, line: 928, type: !69)
!2489 = !DILocalVariable(name: "arg", arg: 2, scope: !2484, file: !168, line: 928, type: !97)
!2490 = !DILocalVariable(name: "argsize", arg: 3, scope: !2484, file: !168, line: 928, type: !56)
!2491 = !DILocation(line: 928, column: 21, scope: !2484)
!2492 = !DILocation(line: 928, column: 36, scope: !2484)
!2493 = !DILocation(line: 928, column: 48, scope: !2484)
!2494 = !DILocation(line: 930, column: 10, scope: !2484)
!2495 = !DILocation(line: 930, column: 3, scope: !2484)
!2496 = distinct !DISubprogram(name: "quotearg", scope: !168, file: !168, line: 934, type: !2497, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!67, !97}
!2499 = !{!2500}
!2500 = !DILocalVariable(name: "arg", arg: 1, scope: !2496, file: !168, line: 934, type: !97)
!2501 = !DILocation(line: 934, column: 23, scope: !2496)
!2502 = !DILocation(line: 922, column: 17, scope: !2382, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 936, column: 10, scope: !2496)
!2504 = !DILocation(line: 922, column: 32, scope: !2382, inlinedAt: !2503)
!2505 = !DILocation(line: 924, column: 10, scope: !2382, inlinedAt: !2503)
!2506 = !DILocation(line: 936, column: 3, scope: !2496)
!2507 = distinct !DISubprogram(name: "quotearg_mem", scope: !168, file: !168, line: 940, type: !2508, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!67, !97, !56}
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !168, line: 940, type: !97)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !168, line: 940, type: !56)
!2513 = !DILocation(line: 940, column: 27, scope: !2507)
!2514 = !DILocation(line: 940, column: 39, scope: !2507)
!2515 = !DILocation(line: 928, column: 21, scope: !2484, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 942, column: 10, scope: !2507)
!2517 = !DILocation(line: 928, column: 36, scope: !2484, inlinedAt: !2516)
!2518 = !DILocation(line: 928, column: 48, scope: !2484, inlinedAt: !2516)
!2519 = !DILocation(line: 930, column: 10, scope: !2484, inlinedAt: !2516)
!2520 = !DILocation(line: 942, column: 3, scope: !2507)
!2521 = distinct !DISubprogram(name: "quotearg_n_style", scope: !168, file: !168, line: 946, type: !2522, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!67, !69, !5, !97}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "n", arg: 1, scope: !2521, file: !168, line: 946, type: !69)
!2526 = !DILocalVariable(name: "s", arg: 2, scope: !2521, file: !168, line: 946, type: !5)
!2527 = !DILocalVariable(name: "arg", arg: 3, scope: !2521, file: !168, line: 946, type: !97)
!2528 = !DILocalVariable(name: "o", scope: !2521, file: !168, line: 948, type: !1381)
!2529 = !DILocalVariable(name: "o", scope: !2530, file: !168, line: 187, type: !175)
!2530 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !168, file: !168, line: 185, type: !2531, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!175, !5}
!2533 = !{!2534, !2529}
!2534 = !DILocalVariable(name: "style", arg: 1, scope: !2530, file: !168, line: 185, type: !5)
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
!2547 = distinct !DILexicalBlock(scope: !2530, file: !168, line: 188, column: 7)
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
!2558 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !168, file: !168, line: 953, type: !2559, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!67, !69, !5, !97, !56}
!2561 = !{!2562, !2563, !2564, !2565, !2566}
!2562 = !DILocalVariable(name: "n", arg: 1, scope: !2558, file: !168, line: 953, type: !69)
!2563 = !DILocalVariable(name: "s", arg: 2, scope: !2558, file: !168, line: 953, type: !5)
!2564 = !DILocalVariable(name: "arg", arg: 3, scope: !2558, file: !168, line: 954, type: !97)
!2565 = !DILocalVariable(name: "argsize", arg: 4, scope: !2558, file: !168, line: 954, type: !56)
!2566 = !DILocalVariable(name: "o", scope: !2558, file: !168, line: 956, type: !1381)
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
!2588 = distinct !DISubprogram(name: "quotearg_style", scope: !168, file: !168, line: 961, type: !2589, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!67, !5, !97}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "s", arg: 1, scope: !2588, file: !168, line: 961, type: !5)
!2593 = !DILocalVariable(name: "arg", arg: 2, scope: !2588, file: !168, line: 961, type: !97)
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
!2617 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !168, file: !168, line: 967, type: !2618, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!67, !5, !97, !56}
!2620 = !{!2621, !2622, !2623}
!2621 = !DILocalVariable(name: "s", arg: 1, scope: !2617, file: !168, line: 967, type: !5)
!2622 = !DILocalVariable(name: "arg", arg: 2, scope: !2617, file: !168, line: 967, type: !97)
!2623 = !DILocalVariable(name: "argsize", arg: 3, scope: !2617, file: !168, line: 967, type: !56)
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
!2649 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !168, file: !168, line: 973, type: !2650, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!67, !97, !56, !68}
!2652 = !{!2653, !2654, !2655, !2656}
!2653 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !168, line: 973, type: !97)
!2654 = !DILocalVariable(name: "argsize", arg: 2, scope: !2649, file: !168, line: 973, type: !56)
!2655 = !DILocalVariable(name: "ch", arg: 3, scope: !2649, file: !168, line: 973, type: !68)
!2656 = !DILocalVariable(name: "options", scope: !2649, file: !168, line: 975, type: !175)
!2657 = !DILocation(line: 973, column: 32, scope: !2649)
!2658 = !DILocation(line: 973, column: 44, scope: !2649)
!2659 = !DILocation(line: 973, column: 58, scope: !2649)
!2660 = !DILocation(line: 975, column: 3, scope: !2649)
!2661 = !DILocation(line: 976, column: 13, scope: !2649)
!2662 = !{i64 0, i64 4, !874, i64 4, i64 4, !838, i64 8, i64 32, !874, i64 40, i64 8, !739, i64 48, i64 8, !739}
!2663 = !DILocation(line: 975, column: 26, scope: !2649)
!2664 = !DILocation(line: 144, column: 43, scope: !1402, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 977, column: 3, scope: !2649)
!2666 = !DILocation(line: 144, column: 51, scope: !1402, inlinedAt: !2665)
!2667 = !DILocation(line: 144, column: 58, scope: !1402, inlinedAt: !2665)
!2668 = !DILocation(line: 146, column: 17, scope: !1402, inlinedAt: !2665)
!2669 = !DILocation(line: 148, column: 62, scope: !1402, inlinedAt: !2665)
!2670 = !DILocation(line: 148, column: 57, scope: !1402, inlinedAt: !2665)
!2671 = !DILocation(line: 147, column: 17, scope: !1402, inlinedAt: !2665)
!2672 = !DILocation(line: 149, column: 18, scope: !1402, inlinedAt: !2665)
!2673 = !DILocation(line: 149, column: 15, scope: !1402, inlinedAt: !2665)
!2674 = !DILocation(line: 149, column: 7, scope: !1402, inlinedAt: !2665)
!2675 = !DILocation(line: 150, column: 12, scope: !1402, inlinedAt: !2665)
!2676 = !DILocation(line: 150, column: 15, scope: !1402, inlinedAt: !2665)
!2677 = !DILocation(line: 150, column: 25, scope: !1402, inlinedAt: !2665)
!2678 = !DILocation(line: 150, column: 7, scope: !1402, inlinedAt: !2665)
!2679 = !DILocation(line: 151, column: 18, scope: !1402, inlinedAt: !2665)
!2680 = !DILocation(line: 151, column: 23, scope: !1402, inlinedAt: !2665)
!2681 = !DILocation(line: 151, column: 6, scope: !1402, inlinedAt: !2665)
!2682 = !DILocation(line: 978, column: 10, scope: !2649)
!2683 = !DILocation(line: 979, column: 1, scope: !2649)
!2684 = !DILocation(line: 978, column: 3, scope: !2649)
!2685 = distinct !DISubprogram(name: "quotearg_char", scope: !168, file: !168, line: 982, type: !2686, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!67, !97, !68}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !168, line: 982, type: !97)
!2690 = !DILocalVariable(name: "ch", arg: 2, scope: !2685, file: !168, line: 982, type: !68)
!2691 = !DILocation(line: 982, column: 28, scope: !2685)
!2692 = !DILocation(line: 982, column: 38, scope: !2685)
!2693 = !DILocation(line: 973, column: 32, scope: !2649, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 984, column: 10, scope: !2685)
!2695 = !DILocation(line: 973, column: 44, scope: !2649, inlinedAt: !2694)
!2696 = !DILocation(line: 973, column: 58, scope: !2649, inlinedAt: !2694)
!2697 = !DILocation(line: 975, column: 3, scope: !2649, inlinedAt: !2694)
!2698 = !DILocation(line: 976, column: 13, scope: !2649, inlinedAt: !2694)
!2699 = !DILocation(line: 975, column: 26, scope: !2649, inlinedAt: !2694)
!2700 = !DILocation(line: 144, column: 43, scope: !1402, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 977, column: 3, scope: !2649, inlinedAt: !2694)
!2702 = !DILocation(line: 144, column: 51, scope: !1402, inlinedAt: !2701)
!2703 = !DILocation(line: 144, column: 58, scope: !1402, inlinedAt: !2701)
!2704 = !DILocation(line: 146, column: 17, scope: !1402, inlinedAt: !2701)
!2705 = !DILocation(line: 148, column: 62, scope: !1402, inlinedAt: !2701)
!2706 = !DILocation(line: 148, column: 57, scope: !1402, inlinedAt: !2701)
!2707 = !DILocation(line: 147, column: 17, scope: !1402, inlinedAt: !2701)
!2708 = !DILocation(line: 149, column: 18, scope: !1402, inlinedAt: !2701)
!2709 = !DILocation(line: 149, column: 15, scope: !1402, inlinedAt: !2701)
!2710 = !DILocation(line: 149, column: 7, scope: !1402, inlinedAt: !2701)
!2711 = !DILocation(line: 150, column: 12, scope: !1402, inlinedAt: !2701)
!2712 = !DILocation(line: 150, column: 15, scope: !1402, inlinedAt: !2701)
!2713 = !DILocation(line: 150, column: 25, scope: !1402, inlinedAt: !2701)
!2714 = !DILocation(line: 150, column: 7, scope: !1402, inlinedAt: !2701)
!2715 = !DILocation(line: 151, column: 18, scope: !1402, inlinedAt: !2701)
!2716 = !DILocation(line: 151, column: 23, scope: !1402, inlinedAt: !2701)
!2717 = !DILocation(line: 151, column: 6, scope: !1402, inlinedAt: !2701)
!2718 = !DILocation(line: 978, column: 10, scope: !2649, inlinedAt: !2694)
!2719 = !DILocation(line: 979, column: 1, scope: !2649, inlinedAt: !2694)
!2720 = !DILocation(line: 984, column: 3, scope: !2685)
!2721 = distinct !DISubprogram(name: "quotearg_colon", scope: !168, file: !168, line: 988, type: !2497, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2722)
!2722 = !{!2723}
!2723 = !DILocalVariable(name: "arg", arg: 1, scope: !2721, file: !168, line: 988, type: !97)
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
!2735 = !DILocation(line: 144, column: 43, scope: !1402, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 977, column: 3, scope: !2649, inlinedAt: !2729)
!2737 = !DILocation(line: 144, column: 51, scope: !1402, inlinedAt: !2736)
!2738 = !DILocation(line: 144, column: 58, scope: !1402, inlinedAt: !2736)
!2739 = !DILocation(line: 146, column: 17, scope: !1402, inlinedAt: !2736)
!2740 = !DILocation(line: 148, column: 57, scope: !1402, inlinedAt: !2736)
!2741 = !DILocation(line: 147, column: 17, scope: !1402, inlinedAt: !2736)
!2742 = !DILocation(line: 149, column: 7, scope: !1402, inlinedAt: !2736)
!2743 = !DILocation(line: 150, column: 12, scope: !1402, inlinedAt: !2736)
!2744 = !DILocation(line: 151, column: 6, scope: !1402, inlinedAt: !2736)
!2745 = !DILocation(line: 978, column: 10, scope: !2649, inlinedAt: !2729)
!2746 = !DILocation(line: 979, column: 1, scope: !2649, inlinedAt: !2729)
!2747 = !DILocation(line: 990, column: 3, scope: !2721)
!2748 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !168, file: !168, line: 994, type: !2508, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2749)
!2749 = !{!2750, !2751}
!2750 = !DILocalVariable(name: "arg", arg: 1, scope: !2748, file: !168, line: 994, type: !97)
!2751 = !DILocalVariable(name: "argsize", arg: 2, scope: !2748, file: !168, line: 994, type: !56)
!2752 = !DILocation(line: 994, column: 33, scope: !2748)
!2753 = !DILocation(line: 994, column: 45, scope: !2748)
!2754 = !DILocation(line: 973, column: 32, scope: !2649, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 996, column: 10, scope: !2748)
!2756 = !DILocation(line: 973, column: 44, scope: !2649, inlinedAt: !2755)
!2757 = !DILocation(line: 973, column: 58, scope: !2649, inlinedAt: !2755)
!2758 = !DILocation(line: 975, column: 3, scope: !2649, inlinedAt: !2755)
!2759 = !DILocation(line: 976, column: 13, scope: !2649, inlinedAt: !2755)
!2760 = !DILocation(line: 975, column: 26, scope: !2649, inlinedAt: !2755)
!2761 = !DILocation(line: 144, column: 43, scope: !1402, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 977, column: 3, scope: !2649, inlinedAt: !2755)
!2763 = !DILocation(line: 144, column: 51, scope: !1402, inlinedAt: !2762)
!2764 = !DILocation(line: 144, column: 58, scope: !1402, inlinedAt: !2762)
!2765 = !DILocation(line: 146, column: 17, scope: !1402, inlinedAt: !2762)
!2766 = !DILocation(line: 148, column: 57, scope: !1402, inlinedAt: !2762)
!2767 = !DILocation(line: 147, column: 17, scope: !1402, inlinedAt: !2762)
!2768 = !DILocation(line: 149, column: 7, scope: !1402, inlinedAt: !2762)
!2769 = !DILocation(line: 150, column: 12, scope: !1402, inlinedAt: !2762)
!2770 = !DILocation(line: 151, column: 6, scope: !1402, inlinedAt: !2762)
!2771 = !DILocation(line: 978, column: 10, scope: !2649, inlinedAt: !2755)
!2772 = !DILocation(line: 979, column: 1, scope: !2649, inlinedAt: !2755)
!2773 = !DILocation(line: 996, column: 3, scope: !2748)
!2774 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !168, file: !168, line: 1000, type: !2522, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2775)
!2775 = !{!2776, !2777, !2778, !2779}
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !168, line: 1000, type: !69)
!2777 = !DILocalVariable(name: "s", arg: 2, scope: !2774, file: !168, line: 1000, type: !5)
!2778 = !DILocalVariable(name: "arg", arg: 3, scope: !2774, file: !168, line: 1000, type: !97)
!2779 = !DILocalVariable(name: "options", scope: !2774, file: !168, line: 1002, type: !175)
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
!2798 = !DILocation(line: 144, column: 43, scope: !1402, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1004, column: 3, scope: !2774)
!2800 = !DILocation(line: 144, column: 51, scope: !1402, inlinedAt: !2799)
!2801 = !DILocation(line: 144, column: 58, scope: !1402, inlinedAt: !2799)
!2802 = !DILocation(line: 146, column: 17, scope: !1402, inlinedAt: !2799)
!2803 = !DILocation(line: 148, column: 57, scope: !1402, inlinedAt: !2799)
!2804 = !DILocation(line: 147, column: 17, scope: !1402, inlinedAt: !2799)
!2805 = !DILocation(line: 149, column: 7, scope: !1402, inlinedAt: !2799)
!2806 = !DILocation(line: 150, column: 12, scope: !1402, inlinedAt: !2799)
!2807 = !DILocation(line: 151, column: 6, scope: !1402, inlinedAt: !2799)
!2808 = !DILocation(line: 1005, column: 10, scope: !2774)
!2809 = !DILocation(line: 1006, column: 1, scope: !2774)
!2810 = !DILocation(line: 1005, column: 3, scope: !2774)
!2811 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !168, file: !168, line: 1009, type: !2812, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!67, !69, !97, !97, !97}
!2814 = !{!2815, !2816, !2817, !2818}
!2815 = !DILocalVariable(name: "n", arg: 1, scope: !2811, file: !168, line: 1009, type: !69)
!2816 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2811, file: !168, line: 1009, type: !97)
!2817 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2811, file: !168, line: 1010, type: !97)
!2818 = !DILocalVariable(name: "arg", arg: 4, scope: !2811, file: !168, line: 1010, type: !97)
!2819 = !DILocation(line: 1009, column: 24, scope: !2811)
!2820 = !DILocation(line: 1009, column: 39, scope: !2811)
!2821 = !DILocation(line: 1010, column: 32, scope: !2811)
!2822 = !DILocation(line: 1010, column: 57, scope: !2811)
!2823 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !168, line: 1017, type: !69)
!2824 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !168, file: !168, line: 1017, type: !2825, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!67, !69, !97, !97, !97, !56}
!2827 = !{!2823, !2828, !2829, !2830, !2831, !2832}
!2828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2824, file: !168, line: 1017, type: !97)
!2829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2824, file: !168, line: 1018, type: !97)
!2830 = !DILocalVariable(name: "arg", arg: 4, scope: !2824, file: !168, line: 1019, type: !97)
!2831 = !DILocalVariable(name: "argsize", arg: 5, scope: !2824, file: !168, line: 1019, type: !56)
!2832 = !DILocalVariable(name: "o", scope: !2824, file: !168, line: 1021, type: !175)
!2833 = !DILocation(line: 1017, column: 28, scope: !2824, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 1012, column: 10, scope: !2811)
!2835 = !DILocation(line: 1017, column: 43, scope: !2824, inlinedAt: !2834)
!2836 = !DILocation(line: 1018, column: 36, scope: !2824, inlinedAt: !2834)
!2837 = !DILocation(line: 1019, column: 36, scope: !2824, inlinedAt: !2834)
!2838 = !DILocation(line: 1019, column: 48, scope: !2824, inlinedAt: !2834)
!2839 = !DILocation(line: 1021, column: 3, scope: !2824, inlinedAt: !2834)
!2840 = !DILocation(line: 1021, column: 30, scope: !2824, inlinedAt: !2834)
!2841 = !DILocation(line: 1021, column: 26, scope: !2824, inlinedAt: !2834)
!2842 = !DILocation(line: 171, column: 45, scope: !1451, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1022, column: 3, scope: !2824, inlinedAt: !2834)
!2844 = !DILocation(line: 172, column: 33, scope: !1451, inlinedAt: !2843)
!2845 = !DILocation(line: 172, column: 57, scope: !1451, inlinedAt: !2843)
!2846 = !DILocation(line: 176, column: 6, scope: !1451, inlinedAt: !2843)
!2847 = !DILocation(line: 176, column: 12, scope: !1451, inlinedAt: !2843)
!2848 = !DILocation(line: 177, column: 8, scope: !1467, inlinedAt: !2843)
!2849 = !DILocation(line: 177, column: 23, scope: !1467, inlinedAt: !2843)
!2850 = !DILocation(line: 177, column: 19, scope: !1467, inlinedAt: !2843)
!2851 = !DILocation(line: 178, column: 5, scope: !1467, inlinedAt: !2843)
!2852 = !DILocation(line: 179, column: 6, scope: !1451, inlinedAt: !2843)
!2853 = !DILocation(line: 179, column: 17, scope: !1451, inlinedAt: !2843)
!2854 = !DILocation(line: 180, column: 6, scope: !1451, inlinedAt: !2843)
!2855 = !DILocation(line: 180, column: 18, scope: !1451, inlinedAt: !2843)
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
!2867 = !DILocation(line: 171, column: 45, scope: !1451, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 1022, column: 3, scope: !2824)
!2869 = !DILocation(line: 172, column: 33, scope: !1451, inlinedAt: !2868)
!2870 = !DILocation(line: 172, column: 57, scope: !1451, inlinedAt: !2868)
!2871 = !DILocation(line: 176, column: 6, scope: !1451, inlinedAt: !2868)
!2872 = !DILocation(line: 176, column: 12, scope: !1451, inlinedAt: !2868)
!2873 = !DILocation(line: 177, column: 8, scope: !1467, inlinedAt: !2868)
!2874 = !DILocation(line: 177, column: 23, scope: !1467, inlinedAt: !2868)
!2875 = !DILocation(line: 177, column: 19, scope: !1467, inlinedAt: !2868)
!2876 = !DILocation(line: 178, column: 5, scope: !1467, inlinedAt: !2868)
!2877 = !DILocation(line: 179, column: 6, scope: !1451, inlinedAt: !2868)
!2878 = !DILocation(line: 179, column: 17, scope: !1451, inlinedAt: !2868)
!2879 = !DILocation(line: 180, column: 6, scope: !1451, inlinedAt: !2868)
!2880 = !DILocation(line: 180, column: 18, scope: !1451, inlinedAt: !2868)
!2881 = !DILocation(line: 1023, column: 10, scope: !2824)
!2882 = !DILocation(line: 1024, column: 1, scope: !2824)
!2883 = !DILocation(line: 1023, column: 3, scope: !2824)
!2884 = distinct !DISubprogram(name: "quotearg_custom", scope: !168, file: !168, line: 1027, type: !2885, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!67, !97, !97, !97}
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2884, file: !168, line: 1027, type: !97)
!2889 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2884, file: !168, line: 1027, type: !97)
!2890 = !DILocalVariable(name: "arg", arg: 3, scope: !2884, file: !168, line: 1028, type: !97)
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
!2908 = !DILocation(line: 171, column: 45, scope: !1451, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1022, column: 3, scope: !2824, inlinedAt: !2900)
!2910 = !DILocation(line: 172, column: 33, scope: !1451, inlinedAt: !2909)
!2911 = !DILocation(line: 172, column: 57, scope: !1451, inlinedAt: !2909)
!2912 = !DILocation(line: 176, column: 6, scope: !1451, inlinedAt: !2909)
!2913 = !DILocation(line: 176, column: 12, scope: !1451, inlinedAt: !2909)
!2914 = !DILocation(line: 177, column: 8, scope: !1467, inlinedAt: !2909)
!2915 = !DILocation(line: 177, column: 23, scope: !1467, inlinedAt: !2909)
!2916 = !DILocation(line: 177, column: 19, scope: !1467, inlinedAt: !2909)
!2917 = !DILocation(line: 178, column: 5, scope: !1467, inlinedAt: !2909)
!2918 = !DILocation(line: 179, column: 6, scope: !1451, inlinedAt: !2909)
!2919 = !DILocation(line: 179, column: 17, scope: !1451, inlinedAt: !2909)
!2920 = !DILocation(line: 180, column: 6, scope: !1451, inlinedAt: !2909)
!2921 = !DILocation(line: 180, column: 18, scope: !1451, inlinedAt: !2909)
!2922 = !DILocation(line: 1023, column: 10, scope: !2824, inlinedAt: !2900)
!2923 = !DILocation(line: 1024, column: 1, scope: !2824, inlinedAt: !2900)
!2924 = !DILocation(line: 1030, column: 3, scope: !2884)
!2925 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !168, file: !168, line: 1034, type: !2926, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!67, !97, !97, !97, !56}
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2925, file: !168, line: 1034, type: !97)
!2930 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2925, file: !168, line: 1034, type: !97)
!2931 = !DILocalVariable(name: "arg", arg: 3, scope: !2925, file: !168, line: 1035, type: !97)
!2932 = !DILocalVariable(name: "argsize", arg: 4, scope: !2925, file: !168, line: 1035, type: !56)
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
!2946 = !DILocation(line: 171, column: 45, scope: !1451, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1022, column: 3, scope: !2824, inlinedAt: !2938)
!2948 = !DILocation(line: 172, column: 33, scope: !1451, inlinedAt: !2947)
!2949 = !DILocation(line: 172, column: 57, scope: !1451, inlinedAt: !2947)
!2950 = !DILocation(line: 176, column: 6, scope: !1451, inlinedAt: !2947)
!2951 = !DILocation(line: 176, column: 12, scope: !1451, inlinedAt: !2947)
!2952 = !DILocation(line: 177, column: 8, scope: !1467, inlinedAt: !2947)
!2953 = !DILocation(line: 177, column: 23, scope: !1467, inlinedAt: !2947)
!2954 = !DILocation(line: 177, column: 19, scope: !1467, inlinedAt: !2947)
!2955 = !DILocation(line: 178, column: 5, scope: !1467, inlinedAt: !2947)
!2956 = !DILocation(line: 179, column: 6, scope: !1451, inlinedAt: !2947)
!2957 = !DILocation(line: 179, column: 17, scope: !1451, inlinedAt: !2947)
!2958 = !DILocation(line: 180, column: 6, scope: !1451, inlinedAt: !2947)
!2959 = !DILocation(line: 180, column: 18, scope: !1451, inlinedAt: !2947)
!2960 = !DILocation(line: 1023, column: 10, scope: !2824, inlinedAt: !2938)
!2961 = !DILocation(line: 1024, column: 1, scope: !2824, inlinedAt: !2938)
!2962 = !DILocation(line: 1037, column: 3, scope: !2925)
!2963 = distinct !DISubprogram(name: "quote_n_mem", scope: !168, file: !168, line: 1052, type: !2964, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!97, !69, !97, !56}
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !168, line: 1052, type: !69)
!2968 = !DILocalVariable(name: "arg", arg: 2, scope: !2963, file: !168, line: 1052, type: !97)
!2969 = !DILocalVariable(name: "argsize", arg: 3, scope: !2963, file: !168, line: 1052, type: !56)
!2970 = !DILocation(line: 1052, column: 18, scope: !2963)
!2971 = !DILocation(line: 1052, column: 33, scope: !2963)
!2972 = !DILocation(line: 1052, column: 45, scope: !2963)
!2973 = !DILocation(line: 1054, column: 10, scope: !2963)
!2974 = !DILocation(line: 1054, column: 3, scope: !2963)
!2975 = distinct !DISubprogram(name: "quote_mem", scope: !168, file: !168, line: 1058, type: !2976, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!97, !97, !56}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "arg", arg: 1, scope: !2975, file: !168, line: 1058, type: !97)
!2980 = !DILocalVariable(name: "argsize", arg: 2, scope: !2975, file: !168, line: 1058, type: !56)
!2981 = !DILocation(line: 1058, column: 24, scope: !2975)
!2982 = !DILocation(line: 1058, column: 36, scope: !2975)
!2983 = !DILocation(line: 1052, column: 18, scope: !2963, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1060, column: 10, scope: !2975)
!2985 = !DILocation(line: 1052, column: 33, scope: !2963, inlinedAt: !2984)
!2986 = !DILocation(line: 1052, column: 45, scope: !2963, inlinedAt: !2984)
!2987 = !DILocation(line: 1054, column: 10, scope: !2963, inlinedAt: !2984)
!2988 = !DILocation(line: 1060, column: 3, scope: !2975)
!2989 = distinct !DISubprogram(name: "quote_n", scope: !168, file: !168, line: 1064, type: !2990, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!97, !69, !97}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !168, line: 1064, type: !69)
!2994 = !DILocalVariable(name: "arg", arg: 2, scope: !2989, file: !168, line: 1064, type: !97)
!2995 = !DILocation(line: 1064, column: 14, scope: !2989)
!2996 = !DILocation(line: 1064, column: 29, scope: !2989)
!2997 = !DILocation(line: 1052, column: 18, scope: !2963, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1066, column: 10, scope: !2989)
!2999 = !DILocation(line: 1052, column: 33, scope: !2963, inlinedAt: !2998)
!3000 = !DILocation(line: 1052, column: 45, scope: !2963, inlinedAt: !2998)
!3001 = !DILocation(line: 1054, column: 10, scope: !2963, inlinedAt: !2998)
!3002 = !DILocation(line: 1066, column: 3, scope: !2989)
!3003 = distinct !DISubprogram(name: "quote", scope: !168, file: !168, line: 1070, type: !3004, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!97, !97}
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !168, line: 1070, type: !97)
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
!3018 = distinct !DISubprogram(name: "parse_user_spec", scope: !573, file: !573, line: 259, type: !3019, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!97, !97, !576, !577, !86, !86}
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3022 = !DILocalVariable(name: "spec", arg: 1, scope: !3018, file: !573, line: 259, type: !97)
!3023 = !DILocalVariable(name: "uid", arg: 2, scope: !3018, file: !573, line: 259, type: !576)
!3024 = !DILocalVariable(name: "gid", arg: 3, scope: !3018, file: !573, line: 259, type: !577)
!3025 = !DILocalVariable(name: "username", arg: 4, scope: !3018, file: !573, line: 260, type: !86)
!3026 = !DILocalVariable(name: "groupname", arg: 5, scope: !3018, file: !573, line: 260, type: !86)
!3027 = !DILocalVariable(name: "colon", scope: !3018, file: !573, line: 262, type: !97)
!3028 = !DILocalVariable(name: "error_msg", scope: !3018, file: !573, line: 263, type: !97)
!3029 = !DILocalVariable(name: "dot", scope: !3030, file: !573, line: 274, type: !97)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !573, line: 267, column: 5)
!3031 = distinct !DILexicalBlock(scope: !3018, file: !573, line: 266, column: 7)
!3032 = !DILocation(line: 259, column: 30, scope: !3018)
!3033 = !DILocation(line: 259, column: 43, scope: !3018)
!3034 = !DILocation(line: 259, column: 55, scope: !3018)
!3035 = !DILocation(line: 260, column: 25, scope: !3018)
!3036 = !DILocation(line: 260, column: 42, scope: !3018)
!3037 = !DILocation(line: 262, column: 23, scope: !3018)
!3038 = !DILocation(line: 262, column: 29, scope: !3018)
!3039 = !DILocation(line: 262, column: 15, scope: !3018)
!3040 = !DILocation(line: 264, column: 5, scope: !3018)
!3041 = !DILocation(line: 263, column: 15, scope: !3018)
!3042 = !DILocation(line: 266, column: 7, scope: !3031)
!3043 = !DILocation(line: 266, column: 15, scope: !3031)
!3044 = !DILocation(line: 266, column: 11, scope: !3031)
!3045 = !DILocation(line: 266, column: 24, scope: !3031)
!3046 = !DILocation(line: 274, column: 25, scope: !3030)
!3047 = !DILocation(line: 274, column: 19, scope: !3030)
!3048 = !DILocation(line: 275, column: 11, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3030, file: !573, line: 275, column: 11)
!3050 = !DILocation(line: 276, column: 11, scope: !3049)
!3051 = !DILocation(line: 276, column: 16, scope: !3049)
!3052 = !DILocation(line: 275, column: 11, scope: !3030)
!3053 = !DILocation(line: 280, column: 3, scope: !3018)
!3054 = !DILocation(line: 102, column: 35, scope: !572)
!3055 = !DILocation(line: 102, column: 53, scope: !572)
!3056 = !DILocation(line: 103, column: 30, scope: !572)
!3057 = !DILocation(line: 103, column: 42, scope: !572)
!3058 = !DILocation(line: 104, column: 30, scope: !572)
!3059 = !DILocation(line: 104, column: 47, scope: !572)
!3060 = !DILocation(line: 115, column: 9, scope: !572)
!3061 = !DILocation(line: 116, column: 16, scope: !572)
!3062 = !DILocation(line: 116, column: 9, scope: !572)
!3063 = !DILocation(line: 117, column: 16, scope: !572)
!3064 = !DILocation(line: 117, column: 22, scope: !572)
!3065 = !DILocation(line: 117, column: 9, scope: !572)
!3066 = !DILocation(line: 110, column: 15, scope: !572)
!3067 = !DILocation(line: 120, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !572, file: !573, line: 120, column: 7)
!3069 = !DILocation(line: 120, column: 7, scope: !572)
!3070 = !DILocation(line: 121, column: 15, scope: !3068)
!3071 = !DILocation(line: 121, column: 5, scope: !3068)
!3072 = !DILocation(line: 122, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !572, file: !573, line: 122, column: 7)
!3074 = !DILocation(line: 122, column: 7, scope: !572)
!3075 = !DILocation(line: 123, column: 16, scope: !3073)
!3076 = !DILocation(line: 123, column: 5, scope: !3073)
!3077 = !DILocation(line: 113, column: 9, scope: !572)
!3078 = !DILocation(line: 130, column: 17, scope: !613)
!3079 = !DILocation(line: 130, column: 7, scope: !572)
!3080 = !DILocation(line: 132, column: 11, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !573, line: 132, column: 11)
!3082 = distinct !DILexicalBlock(scope: !613, file: !573, line: 131, column: 5)
!3083 = !DILocation(line: 132, column: 11, scope: !3082)
!3084 = !DILocation(line: 133, column: 13, scope: !3081)
!3085 = !DILocation(line: 133, column: 9, scope: !3081)
!3086 = !DILocation(line: 137, column: 31, scope: !612)
!3087 = !DILocation(line: 137, column: 14, scope: !612)
!3088 = !DILocation(line: 138, column: 16, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !612, file: !573, line: 138, column: 11)
!3090 = !DILocation(line: 138, column: 11, scope: !612)
!3091 = !DILocation(line: 140, column: 35, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !573, line: 139, column: 9)
!3093 = !DILocation(line: 140, column: 15, scope: !3092)
!3094 = !DILocation(line: 141, column: 11, scope: !3092)
!3095 = !DILocation(line: 141, column: 19, scope: !3092)
!3096 = !DILocation(line: 142, column: 9, scope: !3092)
!3097 = !DILocation(line: 145, column: 41, scope: !572)
!3098 = !DILocation(line: 145, column: 29, scope: !572)
!3099 = !DILocation(line: 145, column: 46, scope: !572)
!3100 = !DILocation(line: 145, column: 8, scope: !572)
!3101 = !DILocation(line: 114, column: 15, scope: !572)
!3102 = !DILocation(line: 158, column: 9, scope: !618)
!3103 = !DILocation(line: 158, column: 7, scope: !572)
!3104 = !DILocation(line: 161, column: 14, scope: !617)
!3105 = !DILocation(line: 161, column: 17, scope: !617)
!3106 = !DILocation(line: 161, column: 33, scope: !617)
!3107 = !DILocation(line: 111, column: 18, scope: !572)
!3108 = !DILocation(line: 162, column: 15, scope: !616)
!3109 = !DILocation(line: 162, column: 11, scope: !617)
!3110 = !DILocation(line: 164, column: 45, scope: !615)
!3111 = !DILocation(line: 164, column: 58, scope: !615)
!3112 = !DILocation(line: 164, column: 53, scope: !615)
!3113 = !DILocation(line: 165, column: 15, scope: !615)
!3114 = !DILocation(line: 173, column: 15, scope: !620)
!3115 = !DILocation(line: 173, column: 33, scope: !620)
!3116 = !DILocation(line: 174, column: 19, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !620, file: !573, line: 174, column: 19)
!3118 = !DILocation(line: 174, column: 52, scope: !3117)
!3119 = !DILocation(line: 175, column: 22, scope: !3117)
!3120 = !DILocation(line: 175, column: 26, scope: !3117)
!3121 = !DILocation(line: 175, column: 19, scope: !3117)
!3122 = !DILocation(line: 175, column: 39, scope: !3117)
!3123 = !DILocation(line: 175, column: 51, scope: !3117)
!3124 = !DILocation(line: 174, column: 19, scope: !620)
!3125 = !DILocation(line: 179, column: 13, scope: !621)
!3126 = !DILocation(line: 183, column: 23, scope: !625)
!3127 = !{!956, !839, i64 16}
!3128 = !DILocation(line: 184, column: 17, scope: !624)
!3129 = !DILocation(line: 184, column: 38, scope: !624)
!3130 = !DILocation(line: 184, column: 25, scope: !624)
!3131 = !DILocation(line: 188, column: 15, scope: !623)
!3132 = !DILocation(line: 188, column: 20, scope: !623)
!3133 = !DILocation(line: 189, column: 27, scope: !623)
!3134 = !DILocation(line: 190, column: 21, scope: !623)
!3135 = !DILocation(line: 112, column: 17, scope: !572)
!3136 = !DILocation(line: 191, column: 32, scope: !623)
!3137 = !DILocation(line: 191, column: 43, scope: !623)
!3138 = !{!1197, !740, i64 0}
!3139 = !DILocation(line: 191, column: 64, scope: !623)
!3140 = !DILocation(line: 191, column: 53, scope: !623)
!3141 = !DILocation(line: 191, column: 23, scope: !623)
!3142 = !DILocation(line: 192, column: 15, scope: !623)
!3143 = !DILocation(line: 193, column: 13, scope: !624)
!3144 = !DILocation(line: 193, column: 13, scope: !623)
!3145 = !DILocation(line: 195, column: 7, scope: !617)
!3146 = !DILocation(line: 196, column: 5, scope: !617)
!3147 = !DILocation(line: 198, column: 9, scope: !633)
!3148 = !DILocation(line: 198, column: 30, scope: !633)
!3149 = !DILocation(line: 198, column: 17, scope: !633)
!3150 = !DILocation(line: 202, column: 14, scope: !632)
!3151 = !DILocation(line: 202, column: 17, scope: !632)
!3152 = !DILocation(line: 202, column: 33, scope: !632)
!3153 = !DILocation(line: 203, column: 15, scope: !631)
!3154 = !DILocation(line: 203, column: 11, scope: !632)
!3155 = !DILocation(line: 205, column: 11, scope: !630)
!3156 = !DILocation(line: 205, column: 29, scope: !630)
!3157 = !DILocation(line: 206, column: 15, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !630, file: !573, line: 206, column: 15)
!3159 = !DILocation(line: 206, column: 48, scope: !3158)
!3160 = !DILocation(line: 207, column: 18, scope: !3158)
!3161 = !DILocation(line: 207, column: 22, scope: !3158)
!3162 = !DILocation(line: 207, column: 15, scope: !3158)
!3163 = !DILocation(line: 207, column: 35, scope: !3158)
!3164 = !DILocation(line: 207, column: 47, scope: !3158)
!3165 = !DILocation(line: 206, column: 15, scope: !630)
!3166 = !DILocation(line: 211, column: 9, scope: !631)
!3167 = !DILocation(line: 211, column: 9, scope: !630)
!3168 = !DILocation(line: 213, column: 21, scope: !631)
!3169 = !DILocation(line: 214, column: 7, scope: !632)
!3170 = !DILocation(line: 215, column: 15, scope: !632)
!3171 = !DILocation(line: 216, column: 5, scope: !632)
!3172 = !DILocation(line: 218, column: 17, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !572, file: !573, line: 218, column: 7)
!3174 = !DILocation(line: 218, column: 7, scope: !572)
!3175 = !DILocation(line: 220, column: 12, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3173, file: !573, line: 219, column: 5)
!3177 = !DILocation(line: 221, column: 11, scope: !3176)
!3178 = !DILocation(line: 222, column: 14, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !573, line: 221, column: 11)
!3180 = !DILocation(line: 222, column: 9, scope: !3179)
!3181 = !DILocation(line: 223, column: 11, scope: !3176)
!3182 = !DILocation(line: 225, column: 21, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !573, line: 224, column: 9)
!3184 = distinct !DILexicalBlock(scope: !3176, file: !573, line: 223, column: 11)
!3185 = !DILocation(line: 227, column: 9, scope: !3183)
!3186 = !DILocation(line: 228, column: 11, scope: !3176)
!3187 = !DILocation(line: 230, column: 22, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !573, line: 229, column: 9)
!3189 = distinct !DILexicalBlock(scope: !3176, file: !573, line: 228, column: 11)
!3190 = !DILocation(line: 232, column: 9, scope: !3188)
!3191 = !DILocation(line: 235, column: 3, scope: !572)
!3192 = !DILocation(line: 236, column: 3, scope: !572)
!3193 = !DILocation(line: 237, column: 10, scope: !572)
!3194 = !DILocation(line: 237, column: 22, scope: !572)
!3195 = !DILocation(line: 237, column: 3, scope: !572)
!3196 = distinct !DISubprogram(name: "version_etc_arn", scope: !642, file: !642, line: 62, type: !3197, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !3253)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !3199, !97, !97, !97, !3252, !56}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3201, line: 7, baseType: !3202)
!3201 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3203, line: 241, size: 1728, elements: !3204)
!3203 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3225, !3226, !3227, !3228, !3230, !3231, !3233, !3237, !3240, !3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3202, file: !3203, line: 242, baseType: !69, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3202, file: !3203, line: 247, baseType: !67, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3202, file: !3203, line: 248, baseType: !67, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3202, file: !3203, line: 249, baseType: !67, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3202, file: !3203, line: 250, baseType: !67, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3202, file: !3203, line: 251, baseType: !67, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3202, file: !3203, line: 252, baseType: !67, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3202, file: !3203, line: 253, baseType: !67, size: 64, offset: 448)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3202, file: !3203, line: 254, baseType: !67, size: 64, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3202, file: !3203, line: 256, baseType: !67, size: 64, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3202, file: !3203, line: 257, baseType: !67, size: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3202, file: !3203, line: 258, baseType: !67, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3202, file: !3203, line: 260, baseType: !3218, size: 64, offset: 768)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3203, line: 156, size: 192, elements: !3220)
!3220 = !{!3221, !3222, !3224}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3219, file: !3203, line: 157, baseType: !3218, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3219, file: !3203, line: 158, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3219, file: !3203, line: 162, baseType: !69, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3202, file: !3203, line: 262, baseType: !3223, size: 64, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3202, file: !3203, line: 264, baseType: !69, size: 32, offset: 896)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3202, file: !3203, line: 268, baseType: !69, size: 32, offset: 928)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3202, file: !3203, line: 270, baseType: !3229, size: 64, offset: 960)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 140, baseType: !90)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3202, file: !3203, line: 274, baseType: !77, size: 16, offset: 1024)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3202, file: !3203, line: 275, baseType: !3232, size: 8, offset: 1040)
!3232 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3202, file: !3203, line: 276, baseType: !3234, size: 8, offset: 1048)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, elements: !3235)
!3235 = !{!3236}
!3236 = !DISubrange(count: 1)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3202, file: !3203, line: 280, baseType: !3238, size: 64, offset: 1088)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3203, line: 150, baseType: null)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3202, file: !3203, line: 289, baseType: !3241, size: 64, offset: 1152)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 141, baseType: !90)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3202, file: !3203, line: 297, baseType: !54, size: 64, offset: 1216)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3202, file: !3203, line: 298, baseType: !54, size: 64, offset: 1280)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3202, file: !3203, line: 299, baseType: !54, size: 64, offset: 1344)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3202, file: !3203, line: 300, baseType: !54, size: 64, offset: 1408)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3202, file: !3203, line: 302, baseType: !56, size: 64, offset: 1472)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3202, file: !3203, line: 303, baseType: !69, size: 32, offset: 1536)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3202, file: !3203, line: 305, baseType: !3249, size: 160, offset: 1568)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !3250)
!3250 = !{!3251}
!3251 = !DISubrange(count: 20)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!3253 = !{!3254, !3255, !3256, !3257, !3258, !3259}
!3254 = !DILocalVariable(name: "stream", arg: 1, scope: !3196, file: !642, line: 62, type: !3199)
!3255 = !DILocalVariable(name: "command_name", arg: 2, scope: !3196, file: !642, line: 63, type: !97)
!3256 = !DILocalVariable(name: "package", arg: 3, scope: !3196, file: !642, line: 63, type: !97)
!3257 = !DILocalVariable(name: "version", arg: 4, scope: !3196, file: !642, line: 64, type: !97)
!3258 = !DILocalVariable(name: "authors", arg: 5, scope: !3196, file: !642, line: 65, type: !3252)
!3259 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3196, file: !642, line: 65, type: !56)
!3260 = !DILocation(line: 62, column: 24, scope: !3196)
!3261 = !DILocation(line: 63, column: 30, scope: !3196)
!3262 = !DILocation(line: 63, column: 56, scope: !3196)
!3263 = !DILocation(line: 64, column: 30, scope: !3196)
!3264 = !DILocation(line: 65, column: 39, scope: !3196)
!3265 = !DILocation(line: 65, column: 55, scope: !3196)
!3266 = !DILocation(line: 67, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3196, file: !642, line: 67, column: 7)
!3268 = !DILocation(line: 67, column: 7, scope: !3196)
!3269 = !DILocation(line: 68, column: 5, scope: !3267)
!3270 = !DILocation(line: 70, column: 5, scope: !3267)
!3271 = !DILocation(line: 84, column: 3, scope: !3196)
!3272 = !DILocation(line: 86, column: 3, scope: !3196)
!3273 = !DILocation(line: 95, column: 3, scope: !3196)
!3274 = !DILocation(line: 99, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3196, file: !642, line: 96, column: 5)
!3276 = !DILocation(line: 102, column: 7, scope: !3275)
!3277 = !DILocation(line: 103, column: 7, scope: !3275)
!3278 = !DILocation(line: 106, column: 7, scope: !3275)
!3279 = !DILocation(line: 107, column: 7, scope: !3275)
!3280 = !DILocation(line: 110, column: 7, scope: !3275)
!3281 = !DILocation(line: 112, column: 7, scope: !3275)
!3282 = !DILocation(line: 117, column: 7, scope: !3275)
!3283 = !DILocation(line: 119, column: 7, scope: !3275)
!3284 = !DILocation(line: 124, column: 7, scope: !3275)
!3285 = !DILocation(line: 126, column: 7, scope: !3275)
!3286 = !DILocation(line: 131, column: 7, scope: !3275)
!3287 = !DILocation(line: 134, column: 7, scope: !3275)
!3288 = !DILocation(line: 139, column: 7, scope: !3275)
!3289 = !DILocation(line: 142, column: 7, scope: !3275)
!3290 = !DILocation(line: 147, column: 7, scope: !3275)
!3291 = !DILocation(line: 151, column: 7, scope: !3275)
!3292 = !DILocation(line: 156, column: 7, scope: !3275)
!3293 = !DILocation(line: 160, column: 7, scope: !3275)
!3294 = !DILocation(line: 167, column: 7, scope: !3275)
!3295 = !DILocation(line: 171, column: 7, scope: !3275)
!3296 = !DILocation(line: 173, column: 1, scope: !3196)
!3297 = distinct !DISubprogram(name: "version_etc_ar", scope: !642, file: !642, line: 180, type: !3298, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3199, !97, !97, !97, !3252}
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306}
!3301 = !DILocalVariable(name: "stream", arg: 1, scope: !3297, file: !642, line: 180, type: !3199)
!3302 = !DILocalVariable(name: "command_name", arg: 2, scope: !3297, file: !642, line: 181, type: !97)
!3303 = !DILocalVariable(name: "package", arg: 3, scope: !3297, file: !642, line: 181, type: !97)
!3304 = !DILocalVariable(name: "version", arg: 4, scope: !3297, file: !642, line: 182, type: !97)
!3305 = !DILocalVariable(name: "authors", arg: 5, scope: !3297, file: !642, line: 182, type: !3252)
!3306 = !DILocalVariable(name: "n_authors", scope: !3297, file: !642, line: 184, type: !56)
!3307 = !DILocation(line: 180, column: 23, scope: !3297)
!3308 = !DILocation(line: 181, column: 29, scope: !3297)
!3309 = !DILocation(line: 181, column: 55, scope: !3297)
!3310 = !DILocation(line: 182, column: 29, scope: !3297)
!3311 = !DILocation(line: 182, column: 59, scope: !3297)
!3312 = !DILocation(line: 184, column: 10, scope: !3297)
!3313 = !DILocation(line: 186, column: 8, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3297, file: !642, line: 186, column: 3)
!3315 = !DILocation(line: 186, column: 23, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3314, file: !642, line: 186, column: 3)
!3317 = !DILocation(line: 186, column: 3, scope: !3314)
!3318 = !DILocation(line: 186, column: 52, scope: !3316)
!3319 = distinct !{!3319, !3317, !3320}
!3320 = !DILocation(line: 187, column: 5, scope: !3314)
!3321 = !DILocation(line: 188, column: 3, scope: !3297)
!3322 = !DILocation(line: 189, column: 1, scope: !3297)
!3323 = distinct !DISubprogram(name: "version_etc_va", scope: !642, file: !642, line: 196, type: !3324, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !3333)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3199, !97, !97, !97, !3326}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !639, line: 189, size: 192, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3327, file: !639, line: 189, baseType: !74, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3327, file: !639, line: 189, baseType: !74, size: 32, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3327, file: !639, line: 189, baseType: !54, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3327, file: !639, line: 189, baseType: !54, size: 64, offset: 128)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3334 = !DILocalVariable(name: "stream", arg: 1, scope: !3323, file: !642, line: 196, type: !3199)
!3335 = !DILocalVariable(name: "command_name", arg: 2, scope: !3323, file: !642, line: 197, type: !97)
!3336 = !DILocalVariable(name: "package", arg: 3, scope: !3323, file: !642, line: 197, type: !97)
!3337 = !DILocalVariable(name: "version", arg: 4, scope: !3323, file: !642, line: 198, type: !97)
!3338 = !DILocalVariable(name: "authors", arg: 5, scope: !3323, file: !642, line: 198, type: !3326)
!3339 = !DILocalVariable(name: "n_authors", scope: !3323, file: !642, line: 200, type: !56)
!3340 = !DILocalVariable(name: "authtab", scope: !3323, file: !642, line: 201, type: !3341)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 640, elements: !171)
!3342 = !DILocation(line: 196, column: 23, scope: !3323)
!3343 = !DILocation(line: 197, column: 29, scope: !3323)
!3344 = !DILocation(line: 197, column: 55, scope: !3323)
!3345 = !DILocation(line: 198, column: 29, scope: !3323)
!3346 = !DILocation(line: 198, column: 46, scope: !3323)
!3347 = !DILocation(line: 201, column: 3, scope: !3323)
!3348 = !DILocation(line: 201, column: 15, scope: !3323)
!3349 = !DILocation(line: 200, column: 10, scope: !3323)
!3350 = !DILocation(line: 205, column: 35, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !642, line: 203, column: 3)
!3352 = distinct !DILexicalBlock(scope: !3323, file: !642, line: 203, column: 3)
!3353 = !DILocation(line: 205, column: 14, scope: !3351)
!3354 = !DILocation(line: 205, column: 33, scope: !3351)
!3355 = !DILocation(line: 205, column: 67, scope: !3351)
!3356 = !DILocation(line: 203, column: 3, scope: !3352)
!3357 = !DILocation(line: 208, column: 3, scope: !3323)
!3358 = !DILocation(line: 210, column: 1, scope: !3323)
!3359 = distinct !DISubprogram(name: "version_etc", scope: !642, file: !642, line: 227, type: !3360, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !3199, !97, !97, !97, null}
!3362 = !{!3363, !3364, !3365, !3366, !3367}
!3363 = !DILocalVariable(name: "stream", arg: 1, scope: !3359, file: !642, line: 227, type: !3199)
!3364 = !DILocalVariable(name: "command_name", arg: 2, scope: !3359, file: !642, line: 228, type: !97)
!3365 = !DILocalVariable(name: "package", arg: 3, scope: !3359, file: !642, line: 228, type: !97)
!3366 = !DILocalVariable(name: "version", arg: 4, scope: !3359, file: !642, line: 229, type: !97)
!3367 = !DILocalVariable(name: "authors", scope: !3359, file: !642, line: 231, type: !3368)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3369, line: 46, baseType: !3370)
!3369 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3371, line: 48, baseType: !3372)
!3371 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !639, line: 231, baseType: !3373)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3327, size: 192, elements: !3235)
!3374 = !DILocation(line: 227, column: 20, scope: !3359)
!3375 = !DILocation(line: 228, column: 26, scope: !3359)
!3376 = !DILocation(line: 228, column: 52, scope: !3359)
!3377 = !DILocation(line: 229, column: 26, scope: !3359)
!3378 = !DILocation(line: 231, column: 3, scope: !3359)
!3379 = !DILocation(line: 231, column: 11, scope: !3359)
!3380 = !DILocation(line: 233, column: 3, scope: !3359)
!3381 = !DILocation(line: 234, column: 3, scope: !3359)
!3382 = !DILocation(line: 235, column: 3, scope: !3359)
!3383 = !DILocation(line: 236, column: 1, scope: !3359)
!3384 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !642, file: !642, line: 239, type: !1287, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !129)
!3385 = !DILocation(line: 245, column: 3, scope: !3384)
!3386 = !DILocation(line: 251, column: 3, scope: !3384)
!3387 = !DILocation(line: 256, column: 3, scope: !3384)
!3388 = !DILocation(line: 258, column: 1, scope: !3384)
!3389 = distinct !DISubprogram(name: "xnmalloc", scope: !50, file: !50, line: 105, type: !3390, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!54, !56, !56}
!3392 = !{!3393, !3394}
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !50, line: 105, type: !56)
!3394 = !DILocalVariable(name: "s", arg: 2, scope: !3389, file: !50, line: 105, type: !56)
!3395 = !DILocation(line: 105, column: 18, scope: !3389)
!3396 = !DILocation(line: 105, column: 28, scope: !3389)
!3397 = !DILocation(line: 107, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3389, file: !50, line: 107, column: 7)
!3399 = !DILocation(line: 107, column: 7, scope: !3389)
!3400 = !DILocation(line: 108, column: 5, scope: !3398)
!3401 = !DILocation(line: 109, column: 21, scope: !3389)
!3402 = !DILocalVariable(name: "n", arg: 1, scope: !3403, file: !3404, line: 39, type: !56)
!3403 = distinct !DISubprogram(name: "xmalloc", scope: !3404, file: !3404, line: 39, type: !3405, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3407)
!3404 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!54, !56}
!3407 = !{!3402, !3408}
!3408 = !DILocalVariable(name: "p", scope: !3403, file: !3404, line: 41, type: !54)
!3409 = !DILocation(line: 39, column: 17, scope: !3403, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 109, column: 10, scope: !3389)
!3411 = !DILocation(line: 41, column: 13, scope: !3403, inlinedAt: !3410)
!3412 = !DILocation(line: 41, column: 9, scope: !3403, inlinedAt: !3410)
!3413 = !DILocation(line: 42, column: 8, scope: !3414, inlinedAt: !3410)
!3414 = distinct !DILexicalBlock(scope: !3403, file: !3404, line: 42, column: 7)
!3415 = !DILocation(line: 42, column: 15, scope: !3414, inlinedAt: !3410)
!3416 = !DILocation(line: 42, column: 10, scope: !3414, inlinedAt: !3410)
!3417 = !DILocation(line: 43, column: 5, scope: !3414, inlinedAt: !3410)
!3418 = !DILocation(line: 109, column: 3, scope: !3389)
!3419 = !DILocation(line: 39, column: 17, scope: !3403)
!3420 = !DILocation(line: 41, column: 13, scope: !3403)
!3421 = !DILocation(line: 41, column: 9, scope: !3403)
!3422 = !DILocation(line: 42, column: 8, scope: !3414)
!3423 = !DILocation(line: 42, column: 15, scope: !3414)
!3424 = !DILocation(line: 42, column: 10, scope: !3414)
!3425 = !DILocation(line: 43, column: 5, scope: !3414)
!3426 = !DILocation(line: 44, column: 3, scope: !3403)
!3427 = distinct !DISubprogram(name: "xnrealloc", scope: !50, file: !50, line: 118, type: !3428, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!54, !54, !56, !56}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "p", arg: 1, scope: !3427, file: !50, line: 118, type: !54)
!3432 = !DILocalVariable(name: "n", arg: 2, scope: !3427, file: !50, line: 118, type: !56)
!3433 = !DILocalVariable(name: "s", arg: 3, scope: !3427, file: !50, line: 118, type: !56)
!3434 = !DILocation(line: 118, column: 18, scope: !3427)
!3435 = !DILocation(line: 118, column: 28, scope: !3427)
!3436 = !DILocation(line: 118, column: 38, scope: !3427)
!3437 = !DILocation(line: 120, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3427, file: !50, line: 120, column: 7)
!3439 = !DILocation(line: 120, column: 7, scope: !3427)
!3440 = !DILocation(line: 121, column: 5, scope: !3438)
!3441 = !DILocation(line: 122, column: 25, scope: !3427)
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3443, file: !3404, line: 51, type: !54)
!3443 = distinct !DISubprogram(name: "xrealloc", scope: !3404, file: !3404, line: 51, type: !3444, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!54, !54, !56}
!3446 = !{!3442, !3447}
!3447 = !DILocalVariable(name: "n", arg: 2, scope: !3443, file: !3404, line: 51, type: !56)
!3448 = !DILocation(line: 51, column: 17, scope: !3443, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 122, column: 10, scope: !3427)
!3450 = !DILocation(line: 51, column: 27, scope: !3443, inlinedAt: !3449)
!3451 = !DILocation(line: 53, column: 8, scope: !3452, inlinedAt: !3449)
!3452 = distinct !DILexicalBlock(scope: !3443, file: !3404, line: 53, column: 7)
!3453 = !DILocation(line: 53, column: 13, scope: !3452, inlinedAt: !3449)
!3454 = !DILocation(line: 53, column: 10, scope: !3452, inlinedAt: !3449)
!3455 = !DILocation(line: 57, column: 7, scope: !3456, inlinedAt: !3449)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !3404, line: 54, column: 5)
!3457 = !DILocation(line: 58, column: 7, scope: !3456, inlinedAt: !3449)
!3458 = !DILocation(line: 61, column: 7, scope: !3443, inlinedAt: !3449)
!3459 = !DILocation(line: 62, column: 8, scope: !3460, inlinedAt: !3449)
!3460 = distinct !DILexicalBlock(scope: !3443, file: !3404, line: 62, column: 7)
!3461 = !DILocation(line: 62, column: 13, scope: !3460, inlinedAt: !3449)
!3462 = !DILocation(line: 62, column: 10, scope: !3460, inlinedAt: !3449)
!3463 = !DILocation(line: 63, column: 5, scope: !3460, inlinedAt: !3449)
!3464 = !DILocation(line: 122, column: 3, scope: !3427)
!3465 = !DILocation(line: 51, column: 17, scope: !3443)
!3466 = !DILocation(line: 51, column: 27, scope: !3443)
!3467 = !DILocation(line: 53, column: 8, scope: !3452)
!3468 = !DILocation(line: 53, column: 13, scope: !3452)
!3469 = !DILocation(line: 53, column: 10, scope: !3452)
!3470 = !DILocation(line: 57, column: 7, scope: !3456)
!3471 = !DILocation(line: 58, column: 7, scope: !3456)
!3472 = !DILocation(line: 61, column: 7, scope: !3443)
!3473 = !DILocation(line: 62, column: 8, scope: !3460)
!3474 = !DILocation(line: 62, column: 13, scope: !3460)
!3475 = !DILocation(line: 62, column: 10, scope: !3460)
!3476 = !DILocation(line: 63, column: 5, scope: !3460)
!3477 = !DILocation(line: 65, column: 1, scope: !3443)
!3478 = !DILocation(line: 180, column: 19, scope: !650)
!3479 = !DILocation(line: 180, column: 30, scope: !650)
!3480 = !DILocation(line: 180, column: 41, scope: !650)
!3481 = !DILocation(line: 182, column: 14, scope: !650)
!3482 = !DILocation(line: 182, column: 10, scope: !650)
!3483 = !DILocation(line: 184, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !650, file: !50, line: 184, column: 7)
!3485 = !DILocation(line: 184, column: 7, scope: !650)
!3486 = !DILocation(line: 186, column: 13, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !50, line: 186, column: 11)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !50, line: 185, column: 5)
!3489 = !DILocation(line: 186, column: 11, scope: !3488)
!3490 = !DILocation(line: 194, column: 30, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !50, line: 187, column: 9)
!3492 = !DILocation(line: 195, column: 16, scope: !3491)
!3493 = !DILocation(line: 195, column: 13, scope: !3491)
!3494 = !DILocation(line: 196, column: 9, scope: !3491)
!3495 = !DILocation(line: 204, column: 69, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !50, line: 204, column: 11)
!3497 = distinct !DILexicalBlock(scope: !3484, file: !50, line: 199, column: 5)
!3498 = !DILocation(line: 205, column: 11, scope: !3496)
!3499 = !DILocation(line: 204, column: 11, scope: !3497)
!3500 = !DILocation(line: 206, column: 9, scope: !3496)
!3501 = !DILocation(line: 210, column: 7, scope: !650)
!3502 = !DILocation(line: 211, column: 25, scope: !650)
!3503 = !DILocation(line: 51, column: 17, scope: !3443, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 211, column: 10, scope: !650)
!3505 = !DILocation(line: 51, column: 27, scope: !3443, inlinedAt: !3504)
!3506 = !DILocation(line: 53, column: 10, scope: !3452, inlinedAt: !3504)
!3507 = !DILocation(line: 207, column: 14, scope: !3497)
!3508 = !DILocation(line: 207, column: 18, scope: !3497)
!3509 = !DILocation(line: 207, column: 9, scope: !3497)
!3510 = !DILocation(line: 53, column: 8, scope: !3452, inlinedAt: !3504)
!3511 = !DILocation(line: 57, column: 7, scope: !3456, inlinedAt: !3504)
!3512 = !DILocation(line: 58, column: 7, scope: !3456, inlinedAt: !3504)
!3513 = !DILocation(line: 61, column: 7, scope: !3443, inlinedAt: !3504)
!3514 = !DILocation(line: 62, column: 8, scope: !3460, inlinedAt: !3504)
!3515 = !DILocation(line: 62, column: 13, scope: !3460, inlinedAt: !3504)
!3516 = !DILocation(line: 62, column: 10, scope: !3460, inlinedAt: !3504)
!3517 = !DILocation(line: 63, column: 5, scope: !3460, inlinedAt: !3504)
!3518 = !DILocation(line: 211, column: 3, scope: !650)
!3519 = distinct !DISubprogram(name: "xcharalloc", scope: !50, file: !50, line: 220, type: !2297, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3520)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !50, line: 220, type: !56)
!3522 = !DILocation(line: 220, column: 20, scope: !3519)
!3523 = !DILocation(line: 39, column: 17, scope: !3403, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 222, column: 10, scope: !3519)
!3525 = !DILocation(line: 41, column: 13, scope: !3403, inlinedAt: !3524)
!3526 = !DILocation(line: 41, column: 9, scope: !3403, inlinedAt: !3524)
!3527 = !DILocation(line: 42, column: 8, scope: !3414, inlinedAt: !3524)
!3528 = !DILocation(line: 42, column: 15, scope: !3414, inlinedAt: !3524)
!3529 = !DILocation(line: 42, column: 10, scope: !3414, inlinedAt: !3524)
!3530 = !DILocation(line: 43, column: 5, scope: !3414, inlinedAt: !3524)
!3531 = !DILocation(line: 222, column: 3, scope: !3519)
!3532 = distinct !DISubprogram(name: "x2realloc", scope: !3404, file: !3404, line: 74, type: !3533, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!54, !54, !55}
!3535 = !{!3536, !3537}
!3536 = !DILocalVariable(name: "p", arg: 1, scope: !3532, file: !3404, line: 74, type: !54)
!3537 = !DILocalVariable(name: "pn", arg: 2, scope: !3532, file: !3404, line: 74, type: !55)
!3538 = !DILocation(line: 74, column: 18, scope: !3532)
!3539 = !DILocation(line: 74, column: 29, scope: !3532)
!3540 = !DILocation(line: 180, column: 19, scope: !650, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 76, column: 10, scope: !3532)
!3542 = !DILocation(line: 180, column: 30, scope: !650, inlinedAt: !3541)
!3543 = !DILocation(line: 180, column: 41, scope: !650, inlinedAt: !3541)
!3544 = !DILocation(line: 182, column: 14, scope: !650, inlinedAt: !3541)
!3545 = !DILocation(line: 182, column: 10, scope: !650, inlinedAt: !3541)
!3546 = !DILocation(line: 184, column: 9, scope: !3484, inlinedAt: !3541)
!3547 = !DILocation(line: 184, column: 7, scope: !650, inlinedAt: !3541)
!3548 = !DILocation(line: 186, column: 13, scope: !3487, inlinedAt: !3541)
!3549 = !DILocation(line: 186, column: 11, scope: !3488, inlinedAt: !3541)
!3550 = !DILocation(line: 210, column: 7, scope: !650, inlinedAt: !3541)
!3551 = !DILocation(line: 51, column: 17, scope: !3443, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 211, column: 10, scope: !650, inlinedAt: !3541)
!3553 = !DILocation(line: 51, column: 27, scope: !3443, inlinedAt: !3552)
!3554 = !DILocation(line: 53, column: 10, scope: !3452, inlinedAt: !3552)
!3555 = !DILocation(line: 205, column: 11, scope: !3496, inlinedAt: !3541)
!3556 = !DILocation(line: 204, column: 11, scope: !3497, inlinedAt: !3541)
!3557 = !DILocation(line: 206, column: 9, scope: !3496, inlinedAt: !3541)
!3558 = !DILocation(line: 207, column: 14, scope: !3497, inlinedAt: !3541)
!3559 = !DILocation(line: 207, column: 18, scope: !3497, inlinedAt: !3541)
!3560 = !DILocation(line: 207, column: 9, scope: !3497, inlinedAt: !3541)
!3561 = !DILocation(line: 53, column: 8, scope: !3452, inlinedAt: !3552)
!3562 = !DILocation(line: 57, column: 7, scope: !3456, inlinedAt: !3552)
!3563 = !DILocation(line: 58, column: 7, scope: !3456, inlinedAt: !3552)
!3564 = !DILocation(line: 61, column: 7, scope: !3443, inlinedAt: !3552)
!3565 = !DILocation(line: 62, column: 8, scope: !3460, inlinedAt: !3552)
!3566 = !DILocation(line: 62, column: 13, scope: !3460, inlinedAt: !3552)
!3567 = !DILocation(line: 62, column: 10, scope: !3460, inlinedAt: !3552)
!3568 = !DILocation(line: 63, column: 5, scope: !3460, inlinedAt: !3552)
!3569 = !DILocation(line: 76, column: 3, scope: !3532)
!3570 = distinct !DISubprogram(name: "xzalloc", scope: !3404, file: !3404, line: 84, type: !3405, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3571)
!3571 = !{!3572}
!3572 = !DILocalVariable(name: "s", arg: 1, scope: !3570, file: !3404, line: 84, type: !56)
!3573 = !DILocation(line: 84, column: 17, scope: !3570)
!3574 = !DILocation(line: 39, column: 17, scope: !3403, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 86, column: 18, scope: !3570)
!3576 = !DILocation(line: 41, column: 13, scope: !3403, inlinedAt: !3575)
!3577 = !DILocation(line: 41, column: 9, scope: !3403, inlinedAt: !3575)
!3578 = !DILocation(line: 42, column: 8, scope: !3414, inlinedAt: !3575)
!3579 = !DILocation(line: 42, column: 15, scope: !3414, inlinedAt: !3575)
!3580 = !DILocation(line: 42, column: 10, scope: !3414, inlinedAt: !3575)
!3581 = !DILocation(line: 43, column: 5, scope: !3414, inlinedAt: !3575)
!3582 = !DILocation(line: 86, column: 10, scope: !3570)
!3583 = !DILocation(line: 86, column: 3, scope: !3570)
!3584 = distinct !DISubprogram(name: "xcalloc", scope: !3404, file: !3404, line: 93, type: !3390, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3585)
!3585 = !{!3586, !3587, !3588}
!3586 = !DILocalVariable(name: "n", arg: 1, scope: !3584, file: !3404, line: 93, type: !56)
!3587 = !DILocalVariable(name: "s", arg: 2, scope: !3584, file: !3404, line: 93, type: !56)
!3588 = !DILocalVariable(name: "p", scope: !3584, file: !3404, line: 95, type: !54)
!3589 = !DILocation(line: 93, column: 17, scope: !3584)
!3590 = !DILocation(line: 93, column: 27, scope: !3584)
!3591 = !DILocation(line: 100, column: 7, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3584, file: !3404, line: 100, column: 7)
!3593 = !DILocation(line: 101, column: 7, scope: !3592)
!3594 = !DILocation(line: 101, column: 18, scope: !3592)
!3595 = !DILocation(line: 95, column: 9, scope: !3584)
!3596 = !DILocation(line: 101, column: 16, scope: !3592)
!3597 = !DILocation(line: 100, column: 7, scope: !3584)
!3598 = !DILocation(line: 102, column: 5, scope: !3592)
!3599 = !DILocation(line: 103, column: 3, scope: !3584)
!3600 = distinct !DISubprogram(name: "xmemdup", scope: !3404, file: !3404, line: 111, type: !3601, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3605)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!54, !3603, !56}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "p", arg: 1, scope: !3600, file: !3404, line: 111, type: !3603)
!3607 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !3404, line: 111, type: !56)
!3608 = !DILocation(line: 111, column: 22, scope: !3600)
!3609 = !DILocation(line: 111, column: 32, scope: !3600)
!3610 = !DILocation(line: 39, column: 17, scope: !3403, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 113, column: 18, scope: !3600)
!3612 = !DILocation(line: 41, column: 13, scope: !3403, inlinedAt: !3611)
!3613 = !DILocation(line: 41, column: 9, scope: !3403, inlinedAt: !3611)
!3614 = !DILocation(line: 42, column: 8, scope: !3414, inlinedAt: !3611)
!3615 = !DILocation(line: 42, column: 15, scope: !3414, inlinedAt: !3611)
!3616 = !DILocation(line: 42, column: 10, scope: !3414, inlinedAt: !3611)
!3617 = !DILocation(line: 43, column: 5, scope: !3414, inlinedAt: !3611)
!3618 = !DILocation(line: 113, column: 10, scope: !3600)
!3619 = !DILocation(line: 113, column: 3, scope: !3600)
!3620 = distinct !DISubprogram(name: "xstrdup", scope: !3404, file: !3404, line: 119, type: !2497, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3621)
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "string", arg: 1, scope: !3620, file: !3404, line: 119, type: !97)
!3623 = !DILocation(line: 119, column: 22, scope: !3620)
!3624 = !DILocation(line: 121, column: 27, scope: !3620)
!3625 = !DILocation(line: 121, column: 43, scope: !3620)
!3626 = !DILocation(line: 111, column: 22, scope: !3600, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 121, column: 10, scope: !3620)
!3628 = !DILocation(line: 111, column: 32, scope: !3600, inlinedAt: !3627)
!3629 = !DILocation(line: 39, column: 17, scope: !3403, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 113, column: 18, scope: !3600, inlinedAt: !3627)
!3631 = !DILocation(line: 41, column: 13, scope: !3403, inlinedAt: !3630)
!3632 = !DILocation(line: 41, column: 9, scope: !3403, inlinedAt: !3630)
!3633 = !DILocation(line: 42, column: 8, scope: !3414, inlinedAt: !3630)
!3634 = !DILocation(line: 42, column: 15, scope: !3414, inlinedAt: !3630)
!3635 = !DILocation(line: 42, column: 10, scope: !3414, inlinedAt: !3630)
!3636 = !DILocation(line: 43, column: 5, scope: !3414, inlinedAt: !3630)
!3637 = !DILocation(line: 113, column: 10, scope: !3600, inlinedAt: !3627)
!3638 = !DILocation(line: 121, column: 3, scope: !3620)
!3639 = distinct !DISubprogram(name: "xalloc_die", scope: !3640, file: !3640, line: 32, type: !1287, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !657, variables: !129)
!3640 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3641 = !DILocation(line: 34, column: 10, scope: !3639)
!3642 = !DILocation(line: 34, column: 33, scope: !3639)
!3643 = !DILocation(line: 34, column: 3, scope: !3639)
!3644 = !DILocation(line: 40, column: 3, scope: !3639)
!3645 = distinct !DISubprogram(name: "xgetgroups", scope: !3646, file: !3646, line: 31, type: !686, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3647)
!3646 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3647 = !{!3648, !3649, !3650, !3651}
!3648 = !DILocalVariable(name: "username", arg: 1, scope: !3645, file: !3646, line: 31, type: !97)
!3649 = !DILocalVariable(name: "gid", arg: 2, scope: !3645, file: !3646, line: 31, type: !75)
!3650 = !DILocalVariable(name: "groups", arg: 3, scope: !3645, file: !3646, line: 31, type: !688)
!3651 = !DILocalVariable(name: "result", scope: !3645, file: !3646, line: 33, type: !69)
!3652 = !DILocation(line: 31, column: 25, scope: !3645)
!3653 = !DILocation(line: 31, column: 41, scope: !3645)
!3654 = !DILocation(line: 31, column: 54, scope: !3645)
!3655 = !DILocation(line: 33, column: 16, scope: !3645)
!3656 = !DILocation(line: 33, column: 7, scope: !3645)
!3657 = !DILocation(line: 34, column: 14, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3645, file: !3646, line: 34, column: 7)
!3659 = !DILocation(line: 34, column: 20, scope: !3658)
!3660 = !DILocation(line: 34, column: 23, scope: !3658)
!3661 = !DILocation(line: 34, column: 29, scope: !3658)
!3662 = !DILocation(line: 34, column: 7, scope: !3645)
!3663 = !DILocation(line: 35, column: 5, scope: !3658)
!3664 = !DILocation(line: 36, column: 3, scope: !3645)
!3665 = distinct !DISubprogram(name: "xstrtoul", scope: !3666, file: !3666, line: 88, type: !3667, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !3671)
!3666 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!3669, !97, !86, !69, !3670, !97}
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !27, line: 39, baseType: !26)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!3671 = !{!3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3684, !3685, !3688, !3689}
!3672 = !DILocalVariable(name: "s", arg: 1, scope: !3665, file: !3666, line: 88, type: !97)
!3673 = !DILocalVariable(name: "ptr", arg: 2, scope: !3665, file: !3666, line: 88, type: !86)
!3674 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3665, file: !3666, line: 88, type: !69)
!3675 = !DILocalVariable(name: "val", arg: 4, scope: !3665, file: !3666, line: 89, type: !3670)
!3676 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3665, file: !3666, line: 89, type: !97)
!3677 = !DILocalVariable(name: "t_ptr", scope: !3665, file: !3666, line: 91, type: !67)
!3678 = !DILocalVariable(name: "p", scope: !3665, file: !3666, line: 92, type: !86)
!3679 = !DILocalVariable(name: "tmp", scope: !3665, file: !3666, line: 93, type: !58)
!3680 = !DILocalVariable(name: "err", scope: !3665, file: !3666, line: 94, type: !3669)
!3681 = !DILocalVariable(name: "q", scope: !3682, file: !3666, line: 104, type: !97)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3666, line: 103, column: 5)
!3683 = distinct !DILexicalBlock(scope: !3665, file: !3666, line: 102, column: 7)
!3684 = !DILocalVariable(name: "ch", scope: !3682, file: !3666, line: 105, type: !561)
!3685 = !DILocalVariable(name: "base", scope: !3686, file: !3666, line: 141, type: !69)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !3666, line: 140, column: 5)
!3687 = distinct !DILexicalBlock(scope: !3665, file: !3666, line: 139, column: 7)
!3688 = !DILocalVariable(name: "suffixes", scope: !3686, file: !3666, line: 142, type: !69)
!3689 = !DILocalVariable(name: "overflow", scope: !3686, file: !3666, line: 143, type: !3669)
!3690 = !DILocation(line: 88, column: 24, scope: !3665)
!3691 = !DILocation(line: 88, column: 34, scope: !3665)
!3692 = !DILocation(line: 88, column: 43, scope: !3665)
!3693 = !DILocation(line: 89, column: 24, scope: !3665)
!3694 = !DILocation(line: 89, column: 41, scope: !3665)
!3695 = !DILocation(line: 91, column: 3, scope: !3665)
!3696 = !DILocation(line: 94, column: 16, scope: !3665)
!3697 = !DILocation(line: 96, column: 3, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3666, line: 96, column: 3)
!3699 = distinct !DILexicalBlock(scope: !3665, file: !3666, line: 96, column: 3)
!3700 = !DILocation(line: 98, column: 8, scope: !3665)
!3701 = !DILocation(line: 92, column: 10, scope: !3665)
!3702 = !DILocation(line: 100, column: 3, scope: !3665)
!3703 = !DILocation(line: 100, column: 9, scope: !3665)
!3704 = !DILocation(line: 104, column: 19, scope: !3682)
!3705 = !DILocation(line: 105, column: 21, scope: !3682)
!3706 = !DILocation(line: 106, column: 14, scope: !3682)
!3707 = !DILocation(line: 106, column: 7, scope: !3682)
!3708 = !DILocation(line: 107, column: 15, scope: !3682)
!3709 = distinct !{!3709, !3707, !3710}
!3710 = !DILocation(line: 107, column: 17, scope: !3682)
!3711 = !DILocation(line: 108, column: 14, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3682, file: !3666, line: 108, column: 11)
!3713 = !DILocation(line: 112, column: 9, scope: !3665)
!3714 = !DILocation(line: 93, column: 14, scope: !3665)
!3715 = !DILocation(line: 114, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3665, file: !3666, line: 114, column: 7)
!3717 = !DILocation(line: 114, column: 10, scope: !3716)
!3718 = !DILocation(line: 114, column: 7, scope: !3665)
!3719 = !DILocation(line: 118, column: 11, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !3666, line: 118, column: 11)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !3666, line: 115, column: 5)
!3722 = !DILocation(line: 118, column: 26, scope: !3720)
!3723 = !DILocation(line: 118, column: 29, scope: !3720)
!3724 = !DILocation(line: 118, column: 33, scope: !3720)
!3725 = !DILocation(line: 118, column: 36, scope: !3720)
!3726 = !DILocation(line: 118, column: 11, scope: !3721)
!3727 = !DILocation(line: 123, column: 12, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3716, file: !3666, line: 123, column: 12)
!3729 = !DILocation(line: 123, column: 12, scope: !3716)
!3730 = !DILocation(line: 128, column: 5, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !3666, line: 124, column: 5)
!3732 = !DILocation(line: 133, column: 8, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3665, file: !3666, line: 133, column: 7)
!3734 = !DILocation(line: 133, column: 7, scope: !3665)
!3735 = !DILocation(line: 135, column: 12, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !3666, line: 134, column: 5)
!3737 = !DILocation(line: 136, column: 7, scope: !3736)
!3738 = !DILocation(line: 139, column: 7, scope: !3687)
!3739 = !DILocation(line: 139, column: 11, scope: !3687)
!3740 = !DILocation(line: 139, column: 7, scope: !3665)
!3741 = !DILocation(line: 141, column: 11, scope: !3686)
!3742 = !DILocation(line: 142, column: 11, scope: !3686)
!3743 = !DILocation(line: 145, column: 12, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3686, file: !3666, line: 145, column: 11)
!3745 = !DILocation(line: 145, column: 11, scope: !3686)
!3746 = !DILocation(line: 147, column: 16, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3744, file: !3666, line: 146, column: 9)
!3748 = !DILocation(line: 148, column: 22, scope: !3747)
!3749 = !DILocation(line: 148, column: 11, scope: !3747)
!3750 = !DILocation(line: 151, column: 7, scope: !3686)
!3751 = !DILocation(line: 163, column: 15, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !3666, line: 163, column: 15)
!3753 = distinct !DILexicalBlock(scope: !3686, file: !3666, line: 152, column: 9)
!3754 = !DILocation(line: 163, column: 15, scope: !3753)
!3755 = !DILocation(line: 164, column: 21, scope: !3752)
!3756 = !DILocation(line: 164, column: 13, scope: !3752)
!3757 = !DILocation(line: 167, column: 21, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !3666, line: 167, column: 21)
!3759 = distinct !DILexicalBlock(scope: !3752, file: !3666, line: 165, column: 15)
!3760 = !DILocation(line: 167, column: 29, scope: !3758)
!3761 = !DILocation(line: 167, column: 21, scope: !3759)
!3762 = !DILocation(line: 175, column: 17, scope: !3759)
!3763 = !DILocation(line: 179, column: 7, scope: !3686)
!3764 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3765, file: !3666, line: 60, type: !69)
!3765 = distinct !DISubprogram(name: "bkm_scale", scope: !3666, file: !3666, line: 60, type: !3766, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!3669, !3670, !69}
!3768 = !{!3769, !3764}
!3769 = !DILocalVariable(name: "x", arg: 1, scope: !3765, file: !3666, line: 60, type: !3670)
!3770 = !DILocation(line: 60, column: 31, scope: !3765, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 182, column: 22, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3686, file: !3666, line: 180, column: 9)
!3773 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3771)
!3774 = distinct !DILexicalBlock(scope: !3765, file: !3666, line: 67, column: 7)
!3775 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3771)
!3776 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3771)
!3777 = !DILocation(line: 143, column: 20, scope: !3686)
!3778 = !DILocation(line: 183, column: 11, scope: !3772)
!3779 = !DILocation(line: 60, column: 31, scope: !3765, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 189, column: 22, scope: !3772)
!3781 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3780)
!3782 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3780)
!3783 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3780)
!3784 = !DILocation(line: 190, column: 11, scope: !3772)
!3785 = !DILocalVariable(name: "power", arg: 3, scope: !3786, file: !3666, line: 77, type: !69)
!3786 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3666, file: !3666, line: 77, type: !3787, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!3669, !3670, !69, !69}
!3789 = !{!3790, !3791, !3785, !3792}
!3790 = !DILocalVariable(name: "x", arg: 1, scope: !3786, file: !3666, line: 77, type: !3670)
!3791 = !DILocalVariable(name: "base", arg: 2, scope: !3786, file: !3666, line: 77, type: !69)
!3792 = !DILocalVariable(name: "err", scope: !3786, file: !3666, line: 79, type: !3669)
!3793 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 197, column: 22, scope: !3772)
!3795 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3794)
!3796 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3794)
!3798 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3797)
!3799 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3797)
!3800 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3794)
!3801 = !DILocation(line: 241, column: 11, scope: !3686)
!3802 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 202, column: 22, scope: !3772)
!3804 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3803)
!3805 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3803)
!3807 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3806)
!3808 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3806)
!3809 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3803)
!3810 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 207, column: 22, scope: !3772)
!3812 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3811)
!3813 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3811)
!3815 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3814)
!3816 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3814)
!3817 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 212, column: 22, scope: !3772)
!3819 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3818)
!3820 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3818)
!3822 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3821)
!3823 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3821)
!3824 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3818)
!3825 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 216, column: 22, scope: !3772)
!3827 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3826)
!3828 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3826)
!3830 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3829)
!3831 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3829)
!3832 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3826)
!3833 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 221, column: 22, scope: !3772)
!3835 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3834)
!3836 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3834)
!3838 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3837)
!3839 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3837)
!3840 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3834)
!3841 = !DILocation(line: 60, column: 31, scope: !3765, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 225, column: 22, scope: !3772)
!3843 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3842)
!3844 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3842)
!3845 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3842)
!3846 = !DILocation(line: 226, column: 11, scope: !3772)
!3847 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 229, column: 22, scope: !3772)
!3849 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3848)
!3850 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3848)
!3852 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3851)
!3853 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3851)
!3854 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3848)
!3855 = !DILocation(line: 77, column: 50, scope: !3786, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 233, column: 22, scope: !3772)
!3857 = !DILocation(line: 79, column: 16, scope: !3786, inlinedAt: !3856)
!3858 = !DILocation(line: 67, column: 39, scope: !3774, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 81, column: 12, scope: !3786, inlinedAt: !3856)
!3860 = !DILocation(line: 72, column: 6, scope: !3765, inlinedAt: !3859)
!3861 = !DILocation(line: 67, column: 7, scope: !3765, inlinedAt: !3859)
!3862 = !DILocation(line: 81, column: 9, scope: !3786, inlinedAt: !3856)
!3863 = !DILocation(line: 237, column: 16, scope: !3772)
!3864 = !DILocation(line: 238, column: 22, scope: !3772)
!3865 = !DILocation(line: 238, column: 11, scope: !3772)
!3866 = !DILocation(line: 242, column: 10, scope: !3686)
!3867 = !DILocation(line: 243, column: 11, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3686, file: !3666, line: 243, column: 11)
!3869 = !DILocation(line: 244, column: 13, scope: !3868)
!3870 = !DILocation(line: 243, column: 11, scope: !3686)
!3871 = !DILocation(line: 247, column: 8, scope: !3665)
!3872 = !DILocation(line: 248, column: 3, scope: !3665)
!3873 = !DILocation(line: 249, column: 1, scope: !3665)
!3874 = distinct !DISubprogram(name: "rpl_calloc", scope: !3875, file: !3875, line: 42, type: !3390, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !665, variables: !3876)
!3875 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3876 = !{!3877, !3878, !3879, !3880}
!3877 = !DILocalVariable(name: "n", arg: 1, scope: !3874, file: !3875, line: 42, type: !56)
!3878 = !DILocalVariable(name: "s", arg: 2, scope: !3874, file: !3875, line: 42, type: !56)
!3879 = !DILocalVariable(name: "result", scope: !3874, file: !3875, line: 44, type: !54)
!3880 = !DILocalVariable(name: "bytes", scope: !3881, file: !3875, line: 56, type: !56)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3875, line: 53, column: 5)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !3875, line: 47, column: 7)
!3883 = !DILocation(line: 42, column: 20, scope: !3874)
!3884 = !DILocation(line: 42, column: 30, scope: !3874)
!3885 = !DILocation(line: 47, column: 9, scope: !3882)
!3886 = !DILocation(line: 47, column: 19, scope: !3882)
!3887 = !DILocation(line: 47, column: 14, scope: !3882)
!3888 = !DILocation(line: 56, column: 24, scope: !3881)
!3889 = !DILocation(line: 56, column: 14, scope: !3881)
!3890 = !DILocation(line: 57, column: 17, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3881, file: !3875, line: 57, column: 11)
!3892 = !DILocation(line: 57, column: 21, scope: !3891)
!3893 = !DILocation(line: 57, column: 11, scope: !3881)
!3894 = !DILocation(line: 59, column: 11, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3891, file: !3875, line: 58, column: 9)
!3896 = !DILocation(line: 59, column: 17, scope: !3895)
!3897 = !DILocation(line: 65, column: 12, scope: !3874)
!3898 = !DILocation(line: 44, column: 9, scope: !3874)
!3899 = !DILocation(line: 72, column: 3, scope: !3874)
!3900 = !DILocation(line: 73, column: 1, scope: !3874)
!3901 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3902, file: !3902, line: 334, type: !3903, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3917)
!3902 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!56, !3905, !97, !56, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1550, line: 6, baseType: !3908)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1552, line: 21, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 13, size: 64, elements: !3910)
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3909, file: !1552, line: 15, baseType: !69, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3909, file: !1552, line: 20, baseType: !3913, size: 32, offset: 32)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3909, file: !1552, line: 16, size: 32, elements: !3914)
!3914 = !{!3915, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3913, file: !1552, line: 18, baseType: !74, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3913, file: !1552, line: 19, baseType: !1561, size: 32)
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3918 = !DILocalVariable(name: "pwc", arg: 1, scope: !3901, file: !3902, line: 334, type: !3905)
!3919 = !DILocalVariable(name: "s", arg: 2, scope: !3901, file: !3902, line: 334, type: !97)
!3920 = !DILocalVariable(name: "n", arg: 3, scope: !3901, file: !3902, line: 334, type: !56)
!3921 = !DILocalVariable(name: "ps", arg: 4, scope: !3901, file: !3902, line: 334, type: !3906)
!3922 = !DILocalVariable(name: "ret", scope: !3901, file: !3902, line: 336, type: !56)
!3923 = !DILocalVariable(name: "wc", scope: !3901, file: !3902, line: 337, type: !1566)
!3924 = !DILocalVariable(name: "uc", scope: !3925, file: !3902, line: 398, type: !561)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3902, line: 397, column: 5)
!3926 = distinct !DILexicalBlock(scope: !3901, file: !3902, line: 396, column: 7)
!3927 = !DILocation(line: 334, column: 23, scope: !3901)
!3928 = !DILocation(line: 334, column: 40, scope: !3901)
!3929 = !DILocation(line: 334, column: 50, scope: !3901)
!3930 = !DILocation(line: 334, column: 64, scope: !3901)
!3931 = !DILocation(line: 337, column: 3, scope: !3901)
!3932 = !DILocation(line: 353, column: 9, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3901, file: !3902, line: 353, column: 7)
!3934 = !DILocation(line: 353, column: 7, scope: !3901)
!3935 = !DILocation(line: 388, column: 9, scope: !3901)
!3936 = !DILocation(line: 336, column: 10, scope: !3901)
!3937 = !DILocation(line: 396, column: 19, scope: !3926)
!3938 = !DILocation(line: 396, column: 31, scope: !3926)
!3939 = !DILocation(line: 396, column: 26, scope: !3926)
!3940 = !DILocation(line: 396, column: 41, scope: !3926)
!3941 = !DILocation(line: 396, column: 7, scope: !3901)
!3942 = !DILocation(line: 398, column: 26, scope: !3925)
!3943 = !DILocation(line: 398, column: 21, scope: !3925)
!3944 = !DILocation(line: 399, column: 14, scope: !3925)
!3945 = !DILocation(line: 399, column: 12, scope: !3925)
!3946 = !DILocation(line: 405, column: 1, scope: !3901)
!3947 = distinct !DISubprogram(name: "close_stream", scope: !3948, file: !3948, line: 56, type: !3949, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !3991)
!3948 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!69, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3201, line: 7, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3203, line: 241, size: 1728, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3953, file: !3203, line: 242, baseType: !69, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3953, file: !3203, line: 247, baseType: !67, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3953, file: !3203, line: 248, baseType: !67, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3953, file: !3203, line: 249, baseType: !67, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3953, file: !3203, line: 250, baseType: !67, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3953, file: !3203, line: 251, baseType: !67, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3953, file: !3203, line: 252, baseType: !67, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3953, file: !3203, line: 253, baseType: !67, size: 64, offset: 448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3953, file: !3203, line: 254, baseType: !67, size: 64, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3953, file: !3203, line: 256, baseType: !67, size: 64, offset: 576)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3953, file: !3203, line: 257, baseType: !67, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3953, file: !3203, line: 258, baseType: !67, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3953, file: !3203, line: 260, baseType: !3968, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3203, line: 156, size: 192, elements: !3970)
!3970 = !{!3971, !3972, !3974}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3969, file: !3203, line: 157, baseType: !3968, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3969, file: !3203, line: 158, baseType: !3973, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3969, file: !3203, line: 162, baseType: !69, size: 32, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3953, file: !3203, line: 262, baseType: !3973, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3953, file: !3203, line: 264, baseType: !69, size: 32, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3953, file: !3203, line: 268, baseType: !69, size: 32, offset: 928)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3953, file: !3203, line: 270, baseType: !3229, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3953, file: !3203, line: 274, baseType: !77, size: 16, offset: 1024)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3953, file: !3203, line: 275, baseType: !3232, size: 8, offset: 1040)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3953, file: !3203, line: 276, baseType: !3234, size: 8, offset: 1048)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3953, file: !3203, line: 280, baseType: !3238, size: 64, offset: 1088)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3953, file: !3203, line: 289, baseType: !3241, size: 64, offset: 1152)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3953, file: !3203, line: 297, baseType: !54, size: 64, offset: 1216)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3953, file: !3203, line: 298, baseType: !54, size: 64, offset: 1280)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3953, file: !3203, line: 299, baseType: !54, size: 64, offset: 1344)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3953, file: !3203, line: 300, baseType: !54, size: 64, offset: 1408)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3953, file: !3203, line: 302, baseType: !56, size: 64, offset: 1472)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3953, file: !3203, line: 303, baseType: !69, size: 32, offset: 1536)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3953, file: !3203, line: 305, baseType: !3249, size: 160, offset: 1568)
!3991 = !{!3992, !3993, !3995, !3996}
!3992 = !DILocalVariable(name: "stream", arg: 1, scope: !3947, file: !3948, line: 56, type: !3951)
!3993 = !DILocalVariable(name: "some_pending", scope: !3947, file: !3948, line: 58, type: !3994)
!3994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!3995 = !DILocalVariable(name: "prev_fail", scope: !3947, file: !3948, line: 59, type: !3994)
!3996 = !DILocalVariable(name: "fclose_fail", scope: !3947, file: !3948, line: 60, type: !3994)
!3997 = !DILocation(line: 56, column: 21, scope: !3947)
!3998 = !DILocation(line: 58, column: 30, scope: !3947)
!3999 = !DILocalVariable(name: "__stream", arg: 1, scope: !4000, file: !4001, line: 132, type: !3951)
!4000 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4001, file: !4001, line: 132, type: !3949, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !4002)
!4001 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4002 = !{!3999}
!4003 = !DILocation(line: 132, column: 1, scope: !4000, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 59, column: 27, scope: !3947)
!4005 = !DILocation(line: 134, column: 10, scope: !4000, inlinedAt: !4004)
!4006 = !{!4007, !839, i64 0}
!4007 = !{!"_IO_FILE", !839, i64 0, !740, i64 8, !740, i64 16, !740, i64 24, !740, i64 32, !740, i64 40, !740, i64 48, !740, i64 56, !740, i64 64, !740, i64 72, !740, i64 80, !740, i64 88, !740, i64 96, !740, i64 104, !839, i64 112, !839, i64 116, !847, i64 120, !1183, i64 128, !741, i64 130, !741, i64 131, !740, i64 136, !847, i64 144, !740, i64 152, !740, i64 160, !740, i64 168, !740, i64 176, !847, i64 184, !839, i64 192, !741, i64 196}
!4008 = !DILocation(line: 59, column: 43, scope: !3947)
!4009 = !DILocation(line: 60, column: 29, scope: !3947)
!4010 = !DILocation(line: 60, column: 45, scope: !3947)
!4011 = !DILocation(line: 70, column: 17, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3947, file: !3948, line: 70, column: 7)
!4013 = !DILocation(line: 58, column: 50, scope: !3947)
!4014 = !DILocation(line: 70, column: 33, scope: !4012)
!4015 = !DILocation(line: 70, column: 53, scope: !4012)
!4016 = !DILocation(line: 70, column: 59, scope: !4012)
!4017 = !DILocation(line: 70, column: 7, scope: !3947)
!4018 = !DILocation(line: 72, column: 11, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !3948, line: 71, column: 5)
!4020 = !DILocation(line: 73, column: 9, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4019, file: !3948, line: 72, column: 11)
!4022 = !DILocation(line: 73, column: 15, scope: !4021)
!4023 = !DILocation(line: 78, column: 1, scope: !3947)
!4024 = distinct !DISubprogram(name: "hard_locale", scope: !4025, file: !4025, line: 38, type: !4026, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4028)
!4025 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!139, !69}
!4028 = !{!4029, !4030, !4031}
!4029 = !DILocalVariable(name: "category", arg: 1, scope: !4024, file: !4025, line: 38, type: !69)
!4030 = !DILocalVariable(name: "hard", scope: !4024, file: !4025, line: 40, type: !139)
!4031 = !DILocalVariable(name: "p", scope: !4024, file: !4025, line: 41, type: !97)
!4032 = !DILocation(line: 38, column: 18, scope: !4024)
!4033 = !DILocation(line: 40, column: 8, scope: !4024)
!4034 = !DILocation(line: 41, column: 19, scope: !4024)
!4035 = !DILocation(line: 41, column: 15, scope: !4024)
!4036 = !DILocation(line: 43, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4024, file: !4025, line: 43, column: 7)
!4038 = !DILocation(line: 43, column: 7, scope: !4024)
!4039 = !DILocation(line: 47, column: 15, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !4025, line: 47, column: 15)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !4025, line: 46, column: 9)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !4025, line: 45, column: 11)
!4043 = distinct !DILexicalBlock(scope: !4037, file: !4025, line: 44, column: 5)
!4044 = !DILocation(line: 47, column: 31, scope: !4040)
!4045 = !DILocation(line: 47, column: 36, scope: !4040)
!4046 = !DILocation(line: 47, column: 39, scope: !4040)
!4047 = !DILocation(line: 47, column: 59, scope: !4040)
!4048 = !DILocation(line: 47, column: 15, scope: !4041)
!4049 = !DILocation(line: 48, column: 13, scope: !4040)
!4050 = !DILocation(line: 71, column: 3, scope: !4024)
!4051 = distinct !DISubprogram(name: "umaxtostr", scope: !4052, file: !4052, line: 36, type: !4053, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4055)
!4052 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!67, !677, !67}
!4055 = !{!4056, !4057, !4058}
!4056 = !DILocalVariable(name: "i", arg: 1, scope: !4051, file: !4052, line: 36, type: !677)
!4057 = !DILocalVariable(name: "buf", arg: 2, scope: !4051, file: !4052, line: 36, type: !67)
!4058 = !DILocalVariable(name: "p", scope: !4051, file: !4052, line: 38, type: !67)
!4059 = !DILocation(line: 36, column: 19, scope: !4051)
!4060 = !DILocation(line: 36, column: 28, scope: !4051)
!4061 = !DILocation(line: 38, column: 17, scope: !4051)
!4062 = !DILocation(line: 38, column: 9, scope: !4051)
!4063 = !DILocation(line: 39, column: 6, scope: !4051)
!4064 = !DILocation(line: 51, column: 7, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !4052, line: 50, column: 5)
!4066 = distinct !DILexicalBlock(scope: !4051, file: !4052, line: 41, column: 7)
!4067 = distinct !{!4067, !4064, !4068}
!4068 = !DILocation(line: 53, column: 28, scope: !4065)
!4069 = !DILocation(line: 52, column: 24, scope: !4065)
!4070 = !DILocation(line: 52, column: 16, scope: !4065)
!4071 = !DILocation(line: 52, column: 10, scope: !4065)
!4072 = !DILocation(line: 52, column: 14, scope: !4065)
!4073 = !DILocation(line: 53, column: 17, scope: !4065)
!4074 = !DILocation(line: 53, column: 24, scope: !4065)
!4075 = !DILocation(line: 52, column: 9, scope: !4065)
!4076 = !DILocation(line: 56, column: 3, scope: !4051)
!4077 = distinct !DISubprogram(name: "locale_charset", scope: !563, file: !563, line: 393, type: !4078, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!97}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "codeset", scope: !4077, file: !563, line: 395, type: !97)
!4082 = !DILocalVariable(name: "aliases", scope: !4077, file: !563, line: 396, type: !97)
!4083 = !DILocalVariable(name: "buf1", scope: !4084, file: !563, line: 196, type: !4151)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !563, line: 194, column: 21)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !563, line: 193, column: 19)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !563, line: 193, column: 19)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !563, line: 188, column: 17)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !563, line: 181, column: 19)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !563, line: 177, column: 13)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !563, line: 173, column: 15)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !563, line: 161, column: 9)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !563, line: 157, column: 11)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !563, line: 130, column: 5)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !563, line: 129, column: 7)
!4095 = distinct !DISubprogram(name: "get_charset_aliases", scope: !563, file: !563, line: 124, type: !4078, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4103, !4104, !4105, !4106, !4147, !4148, !4149, !4083, !4150, !4154, !4155, !4156}
!4097 = !DILocalVariable(name: "cp", scope: !4095, file: !563, line: 126, type: !97)
!4098 = !DILocalVariable(name: "dir", scope: !4093, file: !563, line: 132, type: !97)
!4099 = !DILocalVariable(name: "base", scope: !4093, file: !563, line: 133, type: !97)
!4100 = !DILocalVariable(name: "file_name", scope: !4093, file: !563, line: 134, type: !67)
!4101 = !DILocalVariable(name: "dir_len", scope: !4102, file: !563, line: 144, type: !56)
!4102 = distinct !DILexicalBlock(scope: !4093, file: !563, line: 143, column: 7)
!4103 = !DILocalVariable(name: "base_len", scope: !4102, file: !563, line: 145, type: !56)
!4104 = !DILocalVariable(name: "add_slash", scope: !4102, file: !563, line: 146, type: !69)
!4105 = !DILocalVariable(name: "fd", scope: !4091, file: !563, line: 162, type: !69)
!4106 = !DILocalVariable(name: "fp", scope: !4089, file: !563, line: 178, type: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3201, line: 7, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3203, line: 241, size: 1728, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4109, file: !3203, line: 242, baseType: !69, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4109, file: !3203, line: 247, baseType: !67, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4109, file: !3203, line: 248, baseType: !67, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4109, file: !3203, line: 249, baseType: !67, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4109, file: !3203, line: 250, baseType: !67, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4109, file: !3203, line: 251, baseType: !67, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4109, file: !3203, line: 252, baseType: !67, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4109, file: !3203, line: 253, baseType: !67, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4109, file: !3203, line: 254, baseType: !67, size: 64, offset: 512)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4109, file: !3203, line: 256, baseType: !67, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4109, file: !3203, line: 257, baseType: !67, size: 64, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4109, file: !3203, line: 258, baseType: !67, size: 64, offset: 704)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4109, file: !3203, line: 260, baseType: !4124, size: 64, offset: 768)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3203, line: 156, size: 192, elements: !4126)
!4126 = !{!4127, !4128, !4130}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4125, file: !3203, line: 157, baseType: !4124, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4125, file: !3203, line: 158, baseType: !4129, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4125, file: !3203, line: 162, baseType: !69, size: 32, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4109, file: !3203, line: 262, baseType: !4129, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4109, file: !3203, line: 264, baseType: !69, size: 32, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4109, file: !3203, line: 268, baseType: !69, size: 32, offset: 928)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4109, file: !3203, line: 270, baseType: !3229, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4109, file: !3203, line: 274, baseType: !77, size: 16, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4109, file: !3203, line: 275, baseType: !3232, size: 8, offset: 1040)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4109, file: !3203, line: 276, baseType: !3234, size: 8, offset: 1048)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4109, file: !3203, line: 280, baseType: !3238, size: 64, offset: 1088)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4109, file: !3203, line: 289, baseType: !3241, size: 64, offset: 1152)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4109, file: !3203, line: 297, baseType: !54, size: 64, offset: 1216)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4109, file: !3203, line: 298, baseType: !54, size: 64, offset: 1280)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4109, file: !3203, line: 299, baseType: !54, size: 64, offset: 1344)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4109, file: !3203, line: 300, baseType: !54, size: 64, offset: 1408)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4109, file: !3203, line: 302, baseType: !56, size: 64, offset: 1472)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4109, file: !3203, line: 303, baseType: !69, size: 32, offset: 1536)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4109, file: !3203, line: 305, baseType: !3249, size: 160, offset: 1568)
!4147 = !DILocalVariable(name: "res_ptr", scope: !4087, file: !563, line: 190, type: !67)
!4148 = !DILocalVariable(name: "res_size", scope: !4087, file: !563, line: 191, type: !56)
!4149 = !DILocalVariable(name: "c", scope: !4084, file: !563, line: 195, type: !69)
!4150 = !DILocalVariable(name: "buf2", scope: !4084, file: !563, line: 197, type: !4151)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 408, elements: !4152)
!4152 = !{!4153}
!4153 = !DISubrange(count: 51)
!4154 = !DILocalVariable(name: "l1", scope: !4084, file: !563, line: 198, type: !56)
!4155 = !DILocalVariable(name: "l2", scope: !4084, file: !563, line: 198, type: !56)
!4156 = !DILocalVariable(name: "old_res_ptr", scope: !4084, file: !563, line: 199, type: !67)
!4157 = !DILocation(line: 196, column: 28, scope: !4084, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 589, column: 18, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4077, file: !563, line: 589, column: 3)
!4160 = !DILocation(line: 197, column: 28, scope: !4084, inlinedAt: !4158)
!4161 = !DILocation(line: 403, column: 13, scope: !4077)
!4162 = !DILocation(line: 395, column: 15, scope: !4077)
!4163 = !DILocation(line: 584, column: 15, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4077, file: !563, line: 584, column: 7)
!4165 = !DILocation(line: 584, column: 7, scope: !4077)
!4166 = !DILocation(line: 128, column: 8, scope: !4095, inlinedAt: !4158)
!4167 = !DILocation(line: 126, column: 15, scope: !4095, inlinedAt: !4158)
!4168 = !DILocation(line: 129, column: 10, scope: !4094, inlinedAt: !4158)
!4169 = !DILocation(line: 129, column: 7, scope: !4095, inlinedAt: !4158)
!4170 = !DILocation(line: 138, column: 13, scope: !4093, inlinedAt: !4158)
!4171 = !DILocation(line: 132, column: 19, scope: !4093, inlinedAt: !4158)
!4172 = !DILocation(line: 139, column: 15, scope: !4173, inlinedAt: !4158)
!4173 = distinct !DILexicalBlock(scope: !4093, file: !563, line: 139, column: 11)
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
!4192 = distinct !DILexicalBlock(scope: !4193, file: !563, line: 149, column: 11)
!4193 = distinct !DILexicalBlock(scope: !4102, file: !563, line: 148, column: 13)
!4194 = !DILocation(line: 151, column: 17, scope: !4192, inlinedAt: !4158)
!4195 = !DILocation(line: 152, column: 34, scope: !4196, inlinedAt: !4158)
!4196 = distinct !DILexicalBlock(scope: !4192, file: !563, line: 151, column: 17)
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
!4209 = distinct !DILexicalBlock(scope: !4088, file: !563, line: 182, column: 17)
!4210 = !DILocation(line: 186, column: 17, scope: !4209, inlinedAt: !4158)
!4211 = !DILocation(line: 190, column: 25, scope: !4087, inlinedAt: !4158)
!4212 = !DILocation(line: 191, column: 26, scope: !4087, inlinedAt: !4158)
!4213 = !DILocation(line: 193, column: 19, scope: !4087, inlinedAt: !4158)
!4214 = !DILocation(line: 196, column: 23, scope: !4084, inlinedAt: !4158)
!4215 = !DILocation(line: 197, column: 23, scope: !4084, inlinedAt: !4158)
!4216 = !DILocalVariable(name: "__fp", arg: 1, scope: !4217, file: !4001, line: 63, type: !4107)
!4217 = distinct !DISubprogram(name: "getc_unlocked", scope: !4001, file: !4001, line: 63, type: !4218, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !4220)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!69, !4107}
!4220 = !{!4216}
!4221 = !DILocation(line: 63, column: 22, scope: !4217, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 201, column: 27, scope: !4084, inlinedAt: !4158)
!4223 = !DILocation(line: 65, column: 10, scope: !4217, inlinedAt: !4222)
!4224 = !{!4007, !740, i64 8}
!4225 = !{!4007, !740, i64 16}
!4226 = !{!"branch_weights", i32 2000, i32 1}
!4227 = !DILocation(line: 195, column: 27, scope: !4084, inlinedAt: !4158)
!4228 = !DILocation(line: 202, column: 27, scope: !4084, inlinedAt: !4158)
!4229 = distinct !{!4229, !4230, !4233}
!4230 = !DILocation(line: 209, column: 27, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !563, line: 207, column: 25)
!4232 = distinct !DILexicalBlock(scope: !4084, file: !563, line: 206, column: 27)
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
!4243 = distinct !DILexicalBlock(scope: !4084, file: !563, line: 217, column: 27)
!4244 = !DILocation(line: 217, column: 64, scope: !4243, inlinedAt: !4158)
!4245 = !DILocation(line: 217, column: 27, scope: !4084, inlinedAt: !4158)
!4246 = !DILocation(line: 219, column: 28, scope: !4084, inlinedAt: !4158)
!4247 = !DILocation(line: 198, column: 30, scope: !4084, inlinedAt: !4158)
!4248 = !DILocation(line: 220, column: 28, scope: !4084, inlinedAt: !4158)
!4249 = !DILocation(line: 198, column: 34, scope: !4084, inlinedAt: !4158)
!4250 = !DILocation(line: 199, column: 29, scope: !4084, inlinedAt: !4158)
!4251 = !DILocation(line: 222, column: 36, scope: !4252, inlinedAt: !4158)
!4252 = distinct !DILexicalBlock(scope: !4084, file: !563, line: 222, column: 27)
!4253 = !DILocation(line: 222, column: 27, scope: !4084, inlinedAt: !4158)
!4254 = !DILocation(line: 225, column: 63, scope: !4255, inlinedAt: !4158)
!4255 = distinct !DILexicalBlock(scope: !4252, file: !563, line: 223, column: 25)
!4256 = !DILocation(line: 225, column: 46, scope: !4255, inlinedAt: !4158)
!4257 = !DILocation(line: 226, column: 25, scope: !4255, inlinedAt: !4158)
!4258 = !DILocation(line: 229, column: 36, scope: !4259, inlinedAt: !4158)
!4259 = distinct !DILexicalBlock(scope: !4252, file: !563, line: 228, column: 25)
!4260 = !DILocation(line: 230, column: 73, scope: !4259, inlinedAt: !4158)
!4261 = !DILocation(line: 230, column: 46, scope: !4259, inlinedAt: !4158)
!4262 = !DILocation(line: 232, column: 35, scope: !4263, inlinedAt: !4158)
!4263 = distinct !DILexicalBlock(scope: !4084, file: !563, line: 232, column: 27)
!4264 = !DILocation(line: 232, column: 27, scope: !4084, inlinedAt: !4158)
!4265 = !DILocation(line: 236, column: 27, scope: !4266, inlinedAt: !4158)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !563, line: 233, column: 25)
!4267 = !DILocation(line: 237, column: 27, scope: !4266, inlinedAt: !4158)
!4268 = !DILocation(line: 241, column: 21, scope: !4085, inlinedAt: !4158)
!4269 = !DILocation(line: 239, column: 39, scope: !4084, inlinedAt: !4158)
!4270 = !DILocation(line: 239, column: 50, scope: !4084, inlinedAt: !4158)
!4271 = !DILocation(line: 239, column: 61, scope: !4084, inlinedAt: !4158)
!4272 = !DILocalVariable(name: "__dest", arg: 1, scope: !4273, file: !4274, line: 88, type: !4277)
!4273 = distinct !DISubprogram(name: "strcpy", scope: !4274, file: !4274, line: 88, type: !4275, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !4279)
!4274 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!67, !4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!4278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!4279 = !{!4272, !4280}
!4280 = !DILocalVariable(name: "__src", arg: 2, scope: !4273, file: !4274, line: 88, type: !4278)
!4281 = !DILocation(line: 88, column: 1, scope: !4273, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 239, column: 23, scope: !4084, inlinedAt: !4158)
!4283 = !DILocation(line: 90, column: 49, scope: !4273, inlinedAt: !4282)
!4284 = !DILocation(line: 90, column: 10, scope: !4273, inlinedAt: !4282)
!4285 = !DILocation(line: 88, column: 1, scope: !4273, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 240, column: 23, scope: !4084, inlinedAt: !4158)
!4287 = !DILocation(line: 90, column: 49, scope: !4273, inlinedAt: !4286)
!4288 = !DILocation(line: 90, column: 10, scope: !4273, inlinedAt: !4286)
!4289 = !DILocation(line: 193, column: 19, scope: !4085, inlinedAt: !4158)
!4290 = !DILocation(line: 242, column: 19, scope: !4087, inlinedAt: !4158)
!4291 = !DILocation(line: 243, column: 32, scope: !4292, inlinedAt: !4158)
!4292 = distinct !DILexicalBlock(scope: !4087, file: !563, line: 243, column: 23)
!4293 = !DILocation(line: 243, column: 23, scope: !4087, inlinedAt: !4158)
!4294 = !DILocation(line: 247, column: 33, scope: !4295, inlinedAt: !4158)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !563, line: 246, column: 21)
!4296 = !DILocation(line: 247, column: 45, scope: !4295, inlinedAt: !4158)
!4297 = !DILocation(line: 253, column: 11, scope: !4091, inlinedAt: !4158)
!4298 = !DILocation(line: 377, column: 23, scope: !4093, inlinedAt: !4158)
!4299 = !DILocation(line: 378, column: 5, scope: !4093, inlinedAt: !4158)
!4300 = !DILocation(line: 396, column: 15, scope: !4077)
!4301 = !DILocation(line: 590, column: 8, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4159, file: !563, line: 589, column: 3)
!4303 = !DILocation(line: 590, column: 17, scope: !4302)
!4304 = !DILocation(line: 589, column: 3, scope: !4159)
!4305 = !DILocation(line: 592, column: 9, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4302, file: !563, line: 592, column: 9)
!4307 = !DILocation(line: 592, column: 35, scope: !4306)
!4308 = !DILocation(line: 593, column: 9, scope: !4306)
!4309 = !DILocation(line: 593, column: 24, scope: !4306)
!4310 = !DILocation(line: 593, column: 31, scope: !4306)
!4311 = !DILocation(line: 593, column: 34, scope: !4306)
!4312 = !DILocation(line: 593, column: 45, scope: !4306)
!4313 = !DILocation(line: 592, column: 9, scope: !4302)
!4314 = !DILocation(line: 595, column: 29, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4306, file: !563, line: 594, column: 7)
!4316 = !DILocation(line: 595, column: 27, scope: !4315)
!4317 = !DILocation(line: 595, column: 46, scope: !4315)
!4318 = !DILocation(line: 596, column: 9, scope: !4315)
!4319 = !DILocation(line: 591, column: 19, scope: !4302)
!4320 = !DILocation(line: 591, column: 36, scope: !4302)
!4321 = !DILocation(line: 591, column: 16, scope: !4302)
!4322 = !DILocation(line: 591, column: 52, scope: !4302)
!4323 = !DILocation(line: 591, column: 69, scope: !4302)
!4324 = !DILocation(line: 591, column: 49, scope: !4302)
!4325 = distinct !{!4325, !4304, !4326}
!4326 = !DILocation(line: 597, column: 7, scope: !4159)
!4327 = !DILocation(line: 602, column: 7, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4077, file: !563, line: 602, column: 7)
!4329 = !DILocation(line: 602, column: 18, scope: !4328)
!4330 = !DILocation(line: 602, column: 7, scope: !4077)
!4331 = !DILocation(line: 612, column: 3, scope: !4077)
!4332 = !DILocation(line: 66, column: 25, scope: !685)
!4333 = !DILocation(line: 66, column: 41, scope: !685)
!4334 = !DILocation(line: 66, column: 54, scope: !685)
!4335 = !DILocation(line: 68, column: 3, scope: !685)
!4336 = !DILocation(line: 81, column: 7, scope: !699)
!4337 = !DILocation(line: 81, column: 7, scope: !685)
!4338 = !DILocation(line: 68, column: 7, scope: !685)
!4339 = !DILocation(line: 84, column: 20, scope: !698)
!4340 = !DILocalVariable(name: "g", arg: 1, scope: !4341, file: !684, line: 43, type: !577)
!4341 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !684, file: !684, line: 43, type: !4342, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !680, variables: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!577, !577, !56}
!4344 = !{!4340, !4345}
!4345 = !DILocalVariable(name: "num", arg: 2, scope: !4341, file: !684, line: 43, type: !56)
!4346 = !DILocation(line: 43, column: 26, scope: !4341, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 86, column: 11, scope: !698)
!4348 = !DILocation(line: 43, column: 36, scope: !4341, inlinedAt: !4347)
!4349 = !DILocation(line: 51, column: 10, scope: !4341, inlinedAt: !4347)
!4350 = !DILocation(line: 70, column: 10, scope: !685)
!4351 = !DILocation(line: 87, column: 13, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !698, file: !684, line: 87, column: 11)
!4353 = !DILocation(line: 87, column: 11, scope: !698)
!4354 = !DILocation(line: 93, column: 31, scope: !697)
!4355 = !DILocation(line: 93, column: 15, scope: !697)
!4356 = !DILocation(line: 96, column: 16, scope: !697)
!4357 = !DILocation(line: 69, column: 7, scope: !685)
!4358 = !DILocation(line: 100, column: 18, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !697, file: !684, line: 100, column: 15)
!4360 = !DILocation(line: 100, column: 39, scope: !4359)
!4361 = !DILocation(line: 100, column: 22, scope: !4359)
!4362 = !DILocation(line: 101, column: 26, scope: !4359)
!4363 = !DILocation(line: 101, column: 13, scope: !4359)
!4364 = !DILocation(line: 103, column: 41, scope: !703)
!4365 = !DILocation(line: 43, column: 26, scope: !4341, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 103, column: 20, scope: !703)
!4367 = !DILocation(line: 43, column: 36, scope: !4341, inlinedAt: !4366)
!4368 = !DILocation(line: 45, column: 7, scope: !4369, inlinedAt: !4366)
!4369 = distinct !DILexicalBlock(scope: !4341, file: !684, line: 45, column: 7)
!4370 = !DILocation(line: 45, column: 7, scope: !4341, inlinedAt: !4366)
!4371 = !DILocation(line: 47, column: 7, scope: !4372, inlinedAt: !4366)
!4372 = distinct !DILexicalBlock(scope: !4369, file: !684, line: 46, column: 5)
!4373 = !DILocation(line: 47, column: 13, scope: !4372, inlinedAt: !4366)
!4374 = !DILocation(line: 92, column: 18, scope: !697)
!4375 = !DILocation(line: 103, column: 15, scope: !697)
!4376 = !DILocation(line: 51, column: 26, scope: !4341, inlinedAt: !4366)
!4377 = !DILocation(line: 51, column: 10, scope: !4341, inlinedAt: !4366)
!4378 = !DILocation(line: 103, column: 56, scope: !703)
!4379 = !DILocation(line: 105, column: 33, scope: !702)
!4380 = !DILocation(line: 105, column: 19, scope: !702)
!4381 = !DILocation(line: 106, column: 15, scope: !702)
!4382 = !DILocation(line: 107, column: 21, scope: !702)
!4383 = !DILocation(line: 112, column: 17, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !697, file: !684, line: 112, column: 15)
!4385 = !DILocation(line: 112, column: 15, scope: !697)
!4386 = distinct !{!4386, !4387, !4388}
!4387 = !DILocation(line: 90, column: 7, scope: !698)
!4388 = !DILocation(line: 119, column: 9, scope: !698)
!4389 = !DILocation(line: 114, column: 23, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4384, file: !684, line: 113, column: 13)
!4391 = !DILocation(line: 117, column: 22, scope: !4390)
!4392 = !DILocation(line: 117, column: 15, scope: !4390)
!4393 = !DILocation(line: 126, column: 21, scope: !685)
!4394 = !DILocation(line: 124, column: 16, scope: !685)
!4395 = !DILocation(line: 131, column: 20, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !685, file: !684, line: 131, column: 7)
!4397 = !DILocation(line: 131, column: 7, scope: !685)
!4398 = !DILocation(line: 133, column: 11, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !684, line: 133, column: 11)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !684, line: 132, column: 5)
!4401 = !DILocation(line: 133, column: 17, scope: !4399)
!4402 = !DILocation(line: 133, column: 27, scope: !4399)
!4403 = !DILocation(line: 43, column: 26, scope: !4341, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 133, column: 35, scope: !4399)
!4405 = !DILocation(line: 43, column: 36, scope: !4341, inlinedAt: !4404)
!4406 = !DILocation(line: 51, column: 10, scope: !4341, inlinedAt: !4404)
!4407 = !DILocation(line: 133, column: 33, scope: !4399)
!4408 = !DILocation(line: 133, column: 11, scope: !4400)
!4409 = !DILocation(line: 135, column: 19, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4399, file: !684, line: 134, column: 9)
!4411 = !DILocation(line: 136, column: 14, scope: !4410)
!4412 = !DILocation(line: 137, column: 22, scope: !4410)
!4413 = !DILocation(line: 137, column: 11, scope: !4410)
!4414 = !DILocation(line: 142, column: 20, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !685, file: !684, line: 142, column: 7)
!4416 = !DILocation(line: 142, column: 46, scope: !4415)
!4417 = !DILocation(line: 142, column: 25, scope: !4415)
!4418 = !DILocation(line: 143, column: 17, scope: !4415)
!4419 = !DILocation(line: 43, column: 26, scope: !4341, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 144, column: 7, scope: !685)
!4421 = !DILocation(line: 43, column: 36, scope: !4341, inlinedAt: !4420)
!4422 = !DILocation(line: 45, column: 7, scope: !4369, inlinedAt: !4420)
!4423 = !DILocation(line: 45, column: 7, scope: !4341, inlinedAt: !4420)
!4424 = !DILocation(line: 47, column: 7, scope: !4372, inlinedAt: !4420)
!4425 = !DILocation(line: 47, column: 13, scope: !4372, inlinedAt: !4420)
!4426 = !DILocation(line: 145, column: 7, scope: !685)
!4427 = !DILocation(line: 144, column: 31, scope: !685)
!4428 = !DILocation(line: 51, column: 26, scope: !4341, inlinedAt: !4420)
!4429 = !DILocation(line: 51, column: 10, scope: !4341, inlinedAt: !4420)
!4430 = !DILocation(line: 145, column: 9, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !685, file: !684, line: 145, column: 7)
!4432 = !DILocation(line: 150, column: 42, scope: !685)
!4433 = !DILocation(line: 150, column: 35, scope: !685)
!4434 = !DILocation(line: 151, column: 35, scope: !685)
!4435 = !DILocation(line: 150, column: 11, scope: !685)
!4436 = !DILocation(line: 153, column: 10, scope: !706)
!4437 = !DILocation(line: 153, column: 7, scope: !685)
!4438 = !DILocation(line: 156, column: 25, scope: !705)
!4439 = !DILocation(line: 156, column: 11, scope: !705)
!4440 = !DILocation(line: 157, column: 7, scope: !705)
!4441 = !DILocation(line: 158, column: 13, scope: !705)
!4442 = !DILocation(line: 162, column: 17, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !685, file: !684, line: 162, column: 7)
!4444 = !DILocation(line: 164, column: 10, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4443, file: !684, line: 163, column: 5)
!4446 = !DILocation(line: 165, column: 9, scope: !4445)
!4447 = !DILocation(line: 166, column: 5, scope: !4445)
!4448 = !DILocation(line: 167, column: 11, scope: !685)
!4449 = !DILocation(line: 185, column: 9, scope: !709)
!4450 = !DILocation(line: 185, column: 7, scope: !685)
!4451 = !DILocation(line: 187, column: 21, scope: !708)
!4452 = !DILocation(line: 187, column: 13, scope: !708)
!4453 = !DILocation(line: 189, column: 29, scope: !708)
!4454 = !DILocation(line: 189, column: 14, scope: !708)
!4455 = !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)
!4456 = !DILocation(line: 188, column: 14, scope: !708)
!4457 = !DILocation(line: 191, column: 31, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !684, line: 191, column: 7)
!4459 = distinct !DILexicalBlock(scope: !708, file: !684, line: 191, column: 7)
!4460 = !DILocation(line: 191, column: 7, scope: !4459)
!4461 = !DILocation(line: 193, column: 15, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !684, line: 193, column: 15)
!4463 = distinct !DILexicalBlock(scope: !4458, file: !684, line: 192, column: 9)
!4464 = !DILocation(line: 193, column: 39, scope: !4462)
!4465 = !DILocation(line: 193, column: 30, scope: !4462)
!4466 = !DILocation(line: 196, column: 14, scope: !4462)
!4467 = !DILocation(line: 196, column: 18, scope: !4462)
!4468 = !DILocation(line: 194, column: 15, scope: !4462)
!4469 = !DILocation(line: 194, column: 13, scope: !4462)
!4470 = !DILocation(line: 193, column: 21, scope: !4462)
!4471 = !DILocation(line: 201, column: 1, scope: !685)
!4472 = distinct !{!4472, !4460, !4473}
!4473 = !DILocation(line: 197, column: 9, scope: !4459)
!4474 = distinct !DISubprogram(name: "rpl_fclose", scope: !4475, file: !4475, line: 56, type: !4476, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !4518)
!4475 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!69, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3201, line: 7, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3203, line: 241, size: 1728, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4480, file: !3203, line: 242, baseType: !69, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4480, file: !3203, line: 247, baseType: !67, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4480, file: !3203, line: 248, baseType: !67, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4480, file: !3203, line: 249, baseType: !67, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4480, file: !3203, line: 250, baseType: !67, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4480, file: !3203, line: 251, baseType: !67, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4480, file: !3203, line: 252, baseType: !67, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4480, file: !3203, line: 253, baseType: !67, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4480, file: !3203, line: 254, baseType: !67, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4480, file: !3203, line: 256, baseType: !67, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4480, file: !3203, line: 257, baseType: !67, size: 64, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4480, file: !3203, line: 258, baseType: !67, size: 64, offset: 704)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4480, file: !3203, line: 260, baseType: !4495, size: 64, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3203, line: 156, size: 192, elements: !4497)
!4497 = !{!4498, !4499, !4501}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4496, file: !3203, line: 157, baseType: !4495, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4496, file: !3203, line: 158, baseType: !4500, size: 64, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4496, file: !3203, line: 162, baseType: !69, size: 32, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4480, file: !3203, line: 262, baseType: !4500, size: 64, offset: 832)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4480, file: !3203, line: 264, baseType: !69, size: 32, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4480, file: !3203, line: 268, baseType: !69, size: 32, offset: 928)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4480, file: !3203, line: 270, baseType: !3229, size: 64, offset: 960)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4480, file: !3203, line: 274, baseType: !77, size: 16, offset: 1024)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4480, file: !3203, line: 275, baseType: !3232, size: 8, offset: 1040)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4480, file: !3203, line: 276, baseType: !3234, size: 8, offset: 1048)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4480, file: !3203, line: 280, baseType: !3238, size: 64, offset: 1088)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4480, file: !3203, line: 289, baseType: !3241, size: 64, offset: 1152)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4480, file: !3203, line: 297, baseType: !54, size: 64, offset: 1216)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4480, file: !3203, line: 298, baseType: !54, size: 64, offset: 1280)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4480, file: !3203, line: 299, baseType: !54, size: 64, offset: 1344)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4480, file: !3203, line: 300, baseType: !54, size: 64, offset: 1408)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4480, file: !3203, line: 302, baseType: !56, size: 64, offset: 1472)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4480, file: !3203, line: 303, baseType: !69, size: 32, offset: 1536)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4480, file: !3203, line: 305, baseType: !3249, size: 160, offset: 1568)
!4518 = !{!4519, !4520, !4521, !4522}
!4519 = !DILocalVariable(name: "fp", arg: 1, scope: !4474, file: !4475, line: 56, type: !4478)
!4520 = !DILocalVariable(name: "saved_errno", scope: !4474, file: !4475, line: 58, type: !69)
!4521 = !DILocalVariable(name: "fd", scope: !4474, file: !4475, line: 59, type: !69)
!4522 = !DILocalVariable(name: "result", scope: !4474, file: !4475, line: 60, type: !69)
!4523 = !DILocation(line: 56, column: 19, scope: !4474)
!4524 = !DILocation(line: 58, column: 7, scope: !4474)
!4525 = !DILocation(line: 60, column: 7, scope: !4474)
!4526 = !DILocation(line: 63, column: 8, scope: !4474)
!4527 = !DILocation(line: 59, column: 7, scope: !4474)
!4528 = !DILocation(line: 64, column: 10, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 64, column: 7)
!4530 = !DILocation(line: 64, column: 7, scope: !4474)
!4531 = !DILocation(line: 65, column: 12, scope: !4529)
!4532 = !DILocation(line: 65, column: 5, scope: !4529)
!4533 = !DILocation(line: 70, column: 9, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 70, column: 7)
!4535 = !DILocation(line: 70, column: 23, scope: !4534)
!4536 = !DILocation(line: 70, column: 33, scope: !4534)
!4537 = !DILocation(line: 70, column: 26, scope: !4534)
!4538 = !DILocation(line: 70, column: 59, scope: !4534)
!4539 = !DILocation(line: 71, column: 7, scope: !4534)
!4540 = !DILocation(line: 71, column: 10, scope: !4534)
!4541 = !DILocation(line: 70, column: 7, scope: !4474)
!4542 = !DILocation(line: 98, column: 12, scope: !4474)
!4543 = !DILocation(line: 103, column: 7, scope: !4474)
!4544 = !DILocation(line: 72, column: 19, scope: !4534)
!4545 = !DILocation(line: 103, column: 19, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 103, column: 7)
!4547 = !DILocation(line: 105, column: 13, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4546, file: !4475, line: 104, column: 5)
!4549 = !DILocation(line: 107, column: 5, scope: !4548)
!4550 = !DILocation(line: 110, column: 1, scope: !4474)
!4551 = distinct !DISubprogram(name: "rpl_fflush", scope: !4552, file: !4552, line: 127, type: !4553, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !717, variables: !4595)
!4552 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!69, !4555}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3201, line: 7, baseType: !4557)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3203, line: 241, size: 1728, elements: !4558)
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4557, file: !3203, line: 242, baseType: !69, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4557, file: !3203, line: 247, baseType: !67, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4557, file: !3203, line: 248, baseType: !67, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4557, file: !3203, line: 249, baseType: !67, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4557, file: !3203, line: 250, baseType: !67, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4557, file: !3203, line: 251, baseType: !67, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4557, file: !3203, line: 252, baseType: !67, size: 64, offset: 384)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4557, file: !3203, line: 253, baseType: !67, size: 64, offset: 448)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4557, file: !3203, line: 254, baseType: !67, size: 64, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4557, file: !3203, line: 256, baseType: !67, size: 64, offset: 576)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4557, file: !3203, line: 257, baseType: !67, size: 64, offset: 640)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4557, file: !3203, line: 258, baseType: !67, size: 64, offset: 704)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4557, file: !3203, line: 260, baseType: !4572, size: 64, offset: 768)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3203, line: 156, size: 192, elements: !4574)
!4574 = !{!4575, !4576, !4578}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4573, file: !3203, line: 157, baseType: !4572, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4573, file: !3203, line: 158, baseType: !4577, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4573, file: !3203, line: 162, baseType: !69, size: 32, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4557, file: !3203, line: 262, baseType: !4577, size: 64, offset: 832)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4557, file: !3203, line: 264, baseType: !69, size: 32, offset: 896)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4557, file: !3203, line: 268, baseType: !69, size: 32, offset: 928)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4557, file: !3203, line: 270, baseType: !3229, size: 64, offset: 960)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4557, file: !3203, line: 274, baseType: !77, size: 16, offset: 1024)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4557, file: !3203, line: 275, baseType: !3232, size: 8, offset: 1040)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4557, file: !3203, line: 276, baseType: !3234, size: 8, offset: 1048)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4557, file: !3203, line: 280, baseType: !3238, size: 64, offset: 1088)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4557, file: !3203, line: 289, baseType: !3241, size: 64, offset: 1152)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4557, file: !3203, line: 297, baseType: !54, size: 64, offset: 1216)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4557, file: !3203, line: 298, baseType: !54, size: 64, offset: 1280)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4557, file: !3203, line: 299, baseType: !54, size: 64, offset: 1344)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4557, file: !3203, line: 300, baseType: !54, size: 64, offset: 1408)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4557, file: !3203, line: 302, baseType: !56, size: 64, offset: 1472)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4557, file: !3203, line: 303, baseType: !69, size: 32, offset: 1536)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4557, file: !3203, line: 305, baseType: !3249, size: 160, offset: 1568)
!4595 = !{!4596}
!4596 = !DILocalVariable(name: "stream", arg: 1, scope: !4551, file: !4552, line: 127, type: !4555)
!4597 = !DILocation(line: 127, column: 19, scope: !4551)
!4598 = !DILocation(line: 148, column: 14, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4551, file: !4552, line: 148, column: 7)
!4600 = !DILocation(line: 148, column: 22, scope: !4599)
!4601 = !DILocation(line: 148, column: 27, scope: !4599)
!4602 = !DILocation(line: 148, column: 7, scope: !4551)
!4603 = !DILocation(line: 149, column: 12, scope: !4599)
!4604 = !DILocation(line: 149, column: 5, scope: !4599)
!4605 = !DILocalVariable(name: "fp", arg: 1, scope: !4606, file: !4552, line: 40, type: !4555)
!4606 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4552, file: !4552, line: 40, type: !4607, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !717, variables: !4609)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4555}
!4609 = !{!4605}
!4610 = !DILocation(line: 40, column: 48, scope: !4606, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 153, column: 3, scope: !4551)
!4612 = !DILocation(line: 42, column: 11, scope: !4613, inlinedAt: !4611)
!4613 = distinct !DILexicalBlock(scope: !4606, file: !4552, line: 42, column: 7)
!4614 = !DILocation(line: 42, column: 18, scope: !4613, inlinedAt: !4611)
!4615 = !DILocation(line: 42, column: 7, scope: !4606, inlinedAt: !4611)
!4616 = !DILocation(line: 44, column: 5, scope: !4613, inlinedAt: !4611)
!4617 = !DILocation(line: 155, column: 10, scope: !4551)
!4618 = !DILocation(line: 155, column: 3, scope: !4551)
!4619 = !DILocation(line: 229, column: 1, scope: !4551)
!4620 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4621, file: !4621, line: 28, type: !4622, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !719, variables: !4665)
!4621 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!69, !4624, !4664, !69}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3201, line: 7, baseType: !4626)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3203, line: 241, size: 1728, elements: !4627)
!4627 = !{!4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4626, file: !3203, line: 242, baseType: !69, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4626, file: !3203, line: 247, baseType: !67, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4626, file: !3203, line: 248, baseType: !67, size: 64, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4626, file: !3203, line: 249, baseType: !67, size: 64, offset: 192)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4626, file: !3203, line: 250, baseType: !67, size: 64, offset: 256)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4626, file: !3203, line: 251, baseType: !67, size: 64, offset: 320)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4626, file: !3203, line: 252, baseType: !67, size: 64, offset: 384)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4626, file: !3203, line: 253, baseType: !67, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4626, file: !3203, line: 254, baseType: !67, size: 64, offset: 512)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4626, file: !3203, line: 256, baseType: !67, size: 64, offset: 576)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4626, file: !3203, line: 257, baseType: !67, size: 64, offset: 640)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4626, file: !3203, line: 258, baseType: !67, size: 64, offset: 704)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4626, file: !3203, line: 260, baseType: !4641, size: 64, offset: 768)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3203, line: 156, size: 192, elements: !4643)
!4643 = !{!4644, !4645, !4647}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4642, file: !3203, line: 157, baseType: !4641, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4642, file: !3203, line: 158, baseType: !4646, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4642, file: !3203, line: 162, baseType: !69, size: 32, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4626, file: !3203, line: 262, baseType: !4646, size: 64, offset: 832)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4626, file: !3203, line: 264, baseType: !69, size: 32, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4626, file: !3203, line: 268, baseType: !69, size: 32, offset: 928)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4626, file: !3203, line: 270, baseType: !3229, size: 64, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4626, file: !3203, line: 274, baseType: !77, size: 16, offset: 1024)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4626, file: !3203, line: 275, baseType: !3232, size: 8, offset: 1040)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4626, file: !3203, line: 276, baseType: !3234, size: 8, offset: 1048)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4626, file: !3203, line: 280, baseType: !3238, size: 64, offset: 1088)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4626, file: !3203, line: 289, baseType: !3241, size: 64, offset: 1152)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4626, file: !3203, line: 297, baseType: !54, size: 64, offset: 1216)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4626, file: !3203, line: 298, baseType: !54, size: 64, offset: 1280)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4626, file: !3203, line: 299, baseType: !54, size: 64, offset: 1344)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4626, file: !3203, line: 300, baseType: !54, size: 64, offset: 1408)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4626, file: !3203, line: 302, baseType: !56, size: 64, offset: 1472)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4626, file: !3203, line: 303, baseType: !69, size: 32, offset: 1536)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4626, file: !3203, line: 305, baseType: !3249, size: 160, offset: 1568)
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3369, line: 57, baseType: !3229)
!4665 = !{!4666, !4667, !4668, !4669}
!4666 = !DILocalVariable(name: "fp", arg: 1, scope: !4620, file: !4621, line: 28, type: !4624)
!4667 = !DILocalVariable(name: "offset", arg: 2, scope: !4620, file: !4621, line: 28, type: !4664)
!4668 = !DILocalVariable(name: "whence", arg: 3, scope: !4620, file: !4621, line: 28, type: !69)
!4669 = !DILocalVariable(name: "pos", scope: !4670, file: !4621, line: 116, type: !4664)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !4621, line: 112, column: 5)
!4671 = distinct !DILexicalBlock(scope: !4620, file: !4621, line: 51, column: 7)
!4672 = !DILocation(line: 28, column: 15, scope: !4620)
!4673 = !DILocation(line: 28, column: 25, scope: !4620)
!4674 = !DILocation(line: 28, column: 37, scope: !4620)
!4675 = !DILocation(line: 51, column: 11, scope: !4671)
!4676 = !DILocation(line: 51, column: 31, scope: !4671)
!4677 = !DILocation(line: 51, column: 24, scope: !4671)
!4678 = !DILocation(line: 52, column: 7, scope: !4671)
!4679 = !DILocation(line: 52, column: 14, scope: !4671)
!4680 = !{!4007, !740, i64 40}
!4681 = !DILocation(line: 52, column: 35, scope: !4671)
!4682 = !{!4007, !740, i64 32}
!4683 = !DILocation(line: 52, column: 28, scope: !4671)
!4684 = !DILocation(line: 53, column: 7, scope: !4671)
!4685 = !DILocation(line: 53, column: 14, scope: !4671)
!4686 = !{!4007, !740, i64 72}
!4687 = !DILocation(line: 53, column: 28, scope: !4671)
!4688 = !DILocation(line: 51, column: 7, scope: !4620)
!4689 = !DILocation(line: 116, column: 26, scope: !4670)
!4690 = !DILocation(line: 116, column: 19, scope: !4670)
!4691 = !DILocation(line: 116, column: 13, scope: !4670)
!4692 = !DILocation(line: 117, column: 15, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4670, file: !4621, line: 117, column: 11)
!4694 = !DILocation(line: 117, column: 11, scope: !4670)
!4695 = !DILocation(line: 127, column: 11, scope: !4670)
!4696 = !DILocation(line: 127, column: 18, scope: !4670)
!4697 = !DILocation(line: 128, column: 11, scope: !4670)
!4698 = !DILocation(line: 128, column: 19, scope: !4670)
!4699 = !{!4007, !847, i64 144}
!4700 = !DILocation(line: 159, column: 7, scope: !4670)
!4701 = !DILocation(line: 161, column: 10, scope: !4620)
!4702 = !DILocation(line: 161, column: 3, scope: !4620)
!4703 = !DILocation(line: 162, column: 1, scope: !4620)
