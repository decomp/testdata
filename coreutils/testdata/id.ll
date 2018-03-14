; ModuleID = 'coreutils-8.27/src/id.bc'
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
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [USER]\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print user and group information for the specified USER,\0Aor (when USER omitted) for the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [521 x i8] c"  -a             ignore, for compatibility with other versions\0A  -Z, --context  print only the security context of the process\0A  -g, --group    print only the effective group ID\0A  -G, --groups   print all group IDs\0A  -n, --name     print a name instead of a number, for -ugG\0A  -r, --real     print the real ID instead of the effective ID, with -ugG\0A  -u, --user     print only the effective user ID\0A  -z, --zero     delimit entries with NUL characters, not whitespace;\0A                   not permitted in default format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1
@longopts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1
@use_name = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"cannot print only names or real IDs in default format\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@euid = internal global i32 0, align 4, !dbg !18
@.str.23 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@ruid = internal global i32 0, align 4, !dbg !11
@.str.25 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@egid = internal global i32 0, align 4, !dbg !24
@.str.26 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@rgid = internal global i32 0, align 4, !dbg !20
@.str.27 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"cannot find name for user ID %s\00", align 1
@uidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !57
@ok = internal unnamed_addr global i1 false, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"uid=%s\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c" gid=%s\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !69
@.str.56 = private unnamed_addr constant [9 x i8] c" euid=%s\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c" egid=%s\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@gidtostr_ptr.buf.3 = internal global [21 x i8] zeroinitializer, align 16, !dbg !91
@.str.2.4 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.18 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !101
@.str.28 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !106
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !111
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !114
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !121
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !128
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !172
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !177
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !189
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !196
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !203
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !191
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !205
@.str.3.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.89 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.90 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.111 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.112 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !211
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.132 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !220
@.str.3.146 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.147 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.148 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.149 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.150 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !743 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !747, metadata !748), !dbg !749
  %2 = icmp eq i32 %0, 0, !dbg !750
  br i1 %2, label %8, label %3, !dbg !752

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !753, !tbaa !755
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !753
  %6 = load i8*, i8** @program_name, align 8, !dbg !753, !tbaa !755
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !753
  br label %42, !dbg !753

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !759
  %10 = load i8*, i8** @program_name, align 8, !dbg !759, !tbaa !755
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !759
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !761
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !755
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !761
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !762
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !755
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !762
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !763
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !755
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !763
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !764
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !755
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !764
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !765
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !755
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !765
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !36, metadata !748) #10, !dbg !766
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !36, metadata !748) #10, !dbg !766
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !768
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !768
  %29 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !769
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !44, metadata !748) #10, !dbg !770
  %30 = icmp eq i8* %29, null, !dbg !771
  br i1 %30, label %37, label %31, !dbg !773

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #14, !dbg !774
  %33 = icmp eq i32 %32, 0, !dbg !774
  br i1 %33, label %37, label %34, !dbg !775

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !776
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !776
  br label %37, !dbg !778

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !779
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !779
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !780
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !780
  br label %42

; <label>:42:                                     ; preds = %37, %3
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
  %3 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !786, metadata !748), !dbg !816
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !787, metadata !748), !dbg !817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !789, metadata !748), !dbg !818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !790, metadata !748), !dbg !819
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !791, metadata !748), !dbg !820
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !792, metadata !748), !dbg !821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !793, metadata !748), !dbg !822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !794, metadata !748), !dbg !823
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !795, metadata !748), !dbg !824
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !796, metadata !748), !dbg !825
  %4 = load i8*, i8** %1, align 8, !dbg !826, !tbaa !755
  tail call void @set_program_name(i8* %4) #10, !dbg !827
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !828
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !829
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !830
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !831
  br label %9, !dbg !832

; <label>:9:                                      ; preds = %36, %2
  %10 = phi i8 [ 1, %36 ], [ 0, %2 ]
  %11 = phi i8 [ %16, %36 ], [ 0, %2 ]
  %12 = phi i8 [ %21, %36 ], [ 0, %2 ]
  %13 = phi i8 [ %25, %36 ], [ 0, %2 ]
  %14 = phi i8 [ %28, %36 ], [ 0, %2 ]
  br label %15, !dbg !833

; <label>:15:                                     ; preds = %9, %37
  %16 = phi i8 [ %11, %9 ], [ 1, %37 ]
  %17 = phi i8 [ %12, %9 ], [ %21, %37 ]
  %18 = phi i8 [ %13, %9 ], [ %25, %37 ]
  %19 = phi i8 [ %14, %9 ], [ %28, %37 ]
  br label %20, !dbg !833

; <label>:20:                                     ; preds = %15, %34
  %21 = phi i8 [ %17, %15 ], [ 1, %34 ]
  %22 = phi i8 [ %18, %15 ], [ %25, %34 ]
  %23 = phi i8 [ %19, %15 ], [ %28, %34 ]
  br label %24, !dbg !833

; <label>:24:                                     ; preds = %20, %39
  %25 = phi i8 [ %22, %20 ], [ 1, %39 ]
  %26 = phi i8 [ %23, %20 ], [ %28, %39 ]
  br label %27, !dbg !833

; <label>:27:                                     ; preds = %24, %38
  %28 = phi i8 [ %26, %24 ], [ 1, %38 ]
  br label %29, !dbg !833

; <label>:29:                                     ; preds = %31, %27
  tail call void @llvm.dbg.value(metadata i8 %28, i64 0, metadata !791, metadata !748), !dbg !820
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !793, metadata !748), !dbg !822
  tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !794, metadata !748), !dbg !823
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !796, metadata !748), !dbg !825
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !795, metadata !748), !dbg !824
  %30 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !788, metadata !748), !dbg !834
  switch i32 %30, label %44 [
    i32 -1, label %45
    i32 97, label %31
    i32 90, label %32
    i32 103, label %34
    i32 110, label %35
    i32 114, label %36
    i32 117, label %37
    i32 122, label %38
    i32 71, label %39
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !832

; <label>:31:                                     ; preds = %29, %35
  br label %29, !dbg !820, !llvm.loop !835

; <label>:32:                                     ; preds = %29
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !837
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %33) #10, !dbg !837
  unreachable, !dbg !837

; <label>:34:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !794, metadata !748), !dbg !823
  br label %20, !dbg !841, !llvm.loop !835

; <label>:35:                                     ; preds = %29
  store i1 true, i1* @use_name, align 1
  br label %31, !dbg !842

; <label>:36:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !795, metadata !748), !dbg !824
  br label %9, !dbg !843, !llvm.loop !835

; <label>:37:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !796, metadata !748), !dbg !825
  br label %15, !dbg !844, !llvm.loop !835

; <label>:38:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !791, metadata !748), !dbg !820
  br label %27, !dbg !845, !llvm.loop !835

; <label>:39:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !793, metadata !748), !dbg !822
  br label %24, !dbg !846, !llvm.loop !835

; <label>:40:                                     ; preds = %29
  tail call void @usage(i32 0) #16, !dbg !847
  unreachable, !dbg !847

; <label>:41:                                     ; preds = %29
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !848, !tbaa !755
  %43 = load i8*, i8** @Version, align 8, !dbg !848, !tbaa !755
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !848
  tail call void @exit(i32 0) #15, !dbg !848
  unreachable, !dbg !848

; <label>:44:                                     ; preds = %29
  tail call void @usage(i32 1) #16, !dbg !849
  unreachable, !dbg !849

; <label>:45:                                     ; preds = %29
  %46 = load i32, i32* @optind, align 4, !dbg !850, !tbaa !851
  %47 = sub nsw i32 %0, %46, !dbg !853
  %48 = icmp ugt i32 %47, 1, !dbg !854
  br i1 %48, label %49, label %57, !dbg !856

; <label>:49:                                     ; preds = %45
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !857
  %51 = load i32, i32* @optind, align 4, !dbg !859, !tbaa !851
  %52 = add nsw i32 %51, 1, !dbg !860
  %53 = sext i32 %52 to i64, !dbg !861
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !861
  %55 = load i8*, i8** %54, align 8, !dbg !861, !tbaa !755
  %56 = tail call i8* @quote(i8* %55) #10, !dbg !862
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i8* %56) #10, !dbg !863
  tail call void @usage(i32 1) #16, !dbg !864
  unreachable, !dbg !864

; <label>:57:                                     ; preds = %45
  %58 = icmp ne i8 %16, 0, !dbg !865
  %59 = icmp ne i8 %21, 0, !dbg !867
  %60 = add nuw nsw i8 %21, %16, !dbg !868
  %61 = icmp ne i8 %25, 0, !dbg !869
  %62 = add nuw nsw i8 %60, %25, !dbg !870
  %63 = icmp ugt i8 %62, 1, !dbg !871
  br i1 %63, label %64, label %66, !dbg !872

; <label>:64:                                     ; preds = %57
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !873
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %65) #10, !dbg !873
  unreachable, !dbg !873

; <label>:66:                                     ; preds = %57
  %67 = or i8 %21, %16, !dbg !874
  %68 = icmp eq i8 %67, 0, !dbg !874
  %69 = xor i1 %61, true, !dbg !875
  %70 = and i1 %68, %69, !dbg !874
  br i1 %70, label %71, label %81, !dbg !876

; <label>:71:                                     ; preds = %66
  %72 = icmp eq i8 %10, 0, !dbg !878
  br i1 %72, label %73, label %75, !dbg !879

; <label>:73:                                     ; preds = %71
  %74 = load i1, i1* @use_name, align 1
  br i1 %74, label %75, label %77, !dbg !880

; <label>:75:                                     ; preds = %71, %73
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !881
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %76) #10, !dbg !881
  unreachable, !dbg !881

; <label>:77:                                     ; preds = %73
  %78 = icmp eq i8 %28, 0, !dbg !882
  br i1 %78, label %81, label %79, !dbg !884

; <label>:79:                                     ; preds = %77
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !885
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %80) #10, !dbg !885
  unreachable, !dbg !885

; <label>:81:                                     ; preds = %66, %77
  %82 = icmp eq i32 %47, 1, !dbg !886
  br i1 %82, label %83, label %99, !dbg !887

; <label>:83:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !799, metadata !748), !dbg !888
  %84 = sext i32 %46 to i64, !dbg !889
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !889
  %86 = load i8*, i8** %85, align 8, !dbg !889, !tbaa !755
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !812, metadata !748), !dbg !890
  %87 = load i8, i8* %86, align 1, !dbg !891, !tbaa !893
  %88 = icmp eq i8 %87, 0, !dbg !891
  br i1 %88, label %96, label %89, !dbg !894

; <label>:89:                                     ; preds = %83
  %90 = tail call i8* @parse_user_spec(i8* %86, i32* nonnull @euid, i32* null, i8** null, i8** null) #10, !dbg !895
  %91 = icmp eq i8* %90, null, !dbg !898
  br i1 %91, label %92, label %96, !dbg !899

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* @euid, align 4, !dbg !900, !tbaa !851
  %94 = tail call %struct.passwd* @getpwuid(i32 %93) #10, !dbg !902
  tail call void @llvm.dbg.value(metadata %struct.passwd* %94, i64 0, metadata !799, metadata !748), !dbg !888
  tail call void @llvm.dbg.value(metadata %struct.passwd* %94, i64 0, metadata !799, metadata !748), !dbg !888
  %95 = icmp eq %struct.passwd* %94, null, !dbg !903
  br i1 %95, label %96, label %149, !dbg !905

; <label>:96:                                     ; preds = %83, %89, %92
  %97 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !906
  %98 = tail call i8* @quote(i8* %86) #10, !dbg !906
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %97, i8* %98) #10, !dbg !906
  unreachable, !dbg !906

; <label>:99:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !813, metadata !748), !dbg !907
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !815, metadata !748), !dbg !908
  br i1 %58, label %100, label %102, !dbg !909

; <label>:100:                                    ; preds = %99
  %101 = icmp eq i8 %10, 0, !dbg !910
  br i1 %101, label %105, label %122, !dbg !912

; <label>:102:                                    ; preds = %99
  %103 = or i8 %25, %21, !dbg !913
  %104 = icmp eq i8 %103, 0, !dbg !913
  br i1 %104, label %105, label %119, !dbg !913

; <label>:105:                                    ; preds = %102, %100
  %106 = tail call i32* @__errno_location() #17, !dbg !914
  store i32 0, i32* %106, align 4, !dbg !916, !tbaa !851
  %107 = tail call i32 @geteuid() #10, !dbg !917
  store i32 %107, i32* @euid, align 4, !dbg !918, !tbaa !851
  %108 = icmp eq i32 %107, -1, !dbg !919
  br i1 %108, label %109, label %114, !dbg !921

; <label>:109:                                    ; preds = %105
  %110 = load i32, i32* %106, align 4, !dbg !922, !tbaa !851
  %111 = icmp eq i32 %110, 0, !dbg !922
  br i1 %111, label %114, label %112, !dbg !923

; <label>:112:                                    ; preds = %109
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !924
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %110, i8* %113) #10, !dbg !924
  unreachable, !dbg !924

; <label>:114:                                    ; preds = %109, %105
  br i1 %58, label %115, label %119, !dbg !925

; <label>:115:                                    ; preds = %114
  %116 = icmp eq i8 %10, 0, !dbg !926
  br i1 %116, label %117, label %122, !dbg !928

; <label>:117:                                    ; preds = %115
  %118 = load i32, i32* @ruid, align 4
  br label %157, !dbg !928

; <label>:119:                                    ; preds = %102, %114
  br i1 %59, label %120, label %122, !dbg !929

; <label>:120:                                    ; preds = %119
  %121 = tail call i32* @__errno_location() #17, !dbg !930
  br label %132, !dbg !929

; <label>:122:                                    ; preds = %100, %119, %115
  %123 = tail call i32* @__errno_location() #17, !dbg !933
  store i32 0, i32* %123, align 4, !dbg !935, !tbaa !851
  %124 = tail call i32 @getuid() #10, !dbg !936
  store i32 %124, i32* @ruid, align 4, !dbg !937, !tbaa !851
  %125 = icmp eq i32 %124, -1, !dbg !938
  br i1 %125, label %126, label %131, !dbg !940

; <label>:126:                                    ; preds = %122
  %127 = load i32, i32* %123, align 4, !dbg !941, !tbaa !851
  %128 = icmp eq i32 %127, 0, !dbg !941
  br i1 %128, label %131, label %129, !dbg !942

; <label>:129:                                    ; preds = %126
  %130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !943
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %127, i8* %130) #10, !dbg !943
  unreachable, !dbg !943

; <label>:131:                                    ; preds = %126, %122
  br i1 %58, label %157, label %132, !dbg !944

; <label>:132:                                    ; preds = %120, %131
  %133 = phi i32* [ %121, %120 ], [ %123, %131 ], !dbg !930
  store i32 0, i32* %133, align 4, !dbg !945, !tbaa !851
  %134 = tail call i32 @getegid() #10, !dbg !946
  store i32 %134, i32* @egid, align 4, !dbg !947, !tbaa !851
  %135 = icmp eq i32 %134, -1, !dbg !948
  br i1 %135, label %136, label %141, !dbg !950

; <label>:136:                                    ; preds = %132
  %137 = load i32, i32* %133, align 4, !dbg !951, !tbaa !851
  %138 = icmp eq i32 %137, 0, !dbg !951
  br i1 %138, label %141, label %139, !dbg !952

; <label>:139:                                    ; preds = %136
  %140 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !953
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %137, i8* %140) #10, !dbg !953
  unreachable, !dbg !953

; <label>:141:                                    ; preds = %136, %132
  store i32 0, i32* %133, align 4, !dbg !954, !tbaa !851
  %142 = tail call i32 @getgid() #10, !dbg !955
  store i32 %142, i32* @rgid, align 4, !dbg !956, !tbaa !851
  %143 = icmp eq i32 %142, -1, !dbg !957
  br i1 %143, label %144, label %182, !dbg !959

; <label>:144:                                    ; preds = %141
  %145 = load i32, i32* %133, align 4, !dbg !960, !tbaa !851
  %146 = icmp eq i32 %145, 0, !dbg !960
  br i1 %146, label %182, label %147, !dbg !961

; <label>:147:                                    ; preds = %144
  %148 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !962
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %145, i8* %148) #10, !dbg !962
  unreachable, !dbg !962

; <label>:149:                                    ; preds = %92
  %150 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i64 0, i32 0, !dbg !963
  %151 = load i8*, i8** %150, align 8, !dbg !963, !tbaa !964
  %152 = tail call noalias i8* @xstrdup(i8* %151) #10, !dbg !966
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !792, metadata !748), !dbg !821
  %153 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i64 0, i32 2, !dbg !967
  %154 = load i32, i32* %153, align 8, !dbg !967, !tbaa !968
  store i32 %154, i32* @euid, align 4, !dbg !969, !tbaa !851
  store i32 %154, i32* @ruid, align 4, !dbg !970, !tbaa !851
  %155 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i64 0, i32 3, !dbg !971
  %156 = load i32, i32* %155, align 4, !dbg !971, !tbaa !972
  store i32 %156, i32* @egid, align 4, !dbg !973, !tbaa !851
  store i32 %156, i32* @rgid, align 4, !dbg !974, !tbaa !851
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !792, metadata !748), !dbg !821
  br i1 %58, label %157, label %182, !dbg !975

; <label>:157:                                    ; preds = %117, %131, %149
  %158 = phi i32 [ %118, %117 ], [ %124, %131 ], [ %154, %149 ]
  %159 = icmp eq i8 %10, 0, !dbg !976
  %160 = load i32, i32* @euid, align 4
  %161 = select i1 %159, i32 %160, i32 %158
  tail call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !979, metadata !748) #10, !dbg !986
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !984, metadata !748) #10, !dbg !988
  %162 = load i1, i1* @use_name, align 1
  br i1 %162, label %165, label %163, !dbg !989

; <label>:163:                                    ; preds = %157
  %164 = zext i32 %161 to i64, !dbg !990
  br label %175, !dbg !989

; <label>:165:                                    ; preds = %157
  %166 = tail call %struct.passwd* @getpwuid(i32 %161) #10, !dbg !992
  tail call void @llvm.dbg.value(metadata %struct.passwd* %166, i64 0, metadata !984, metadata !748) #10, !dbg !988
  %167 = icmp eq %struct.passwd* %166, null, !dbg !995
  br i1 %167, label %168, label %172, !dbg !997

; <label>:168:                                    ; preds = %165
  %169 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !998
  %170 = zext i32 %161 to i64, !dbg !1000
  %171 = tail call i8* @umaxtostr(i64 %170, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1002
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %169, i8* %171) #10, !dbg !1003
  store i1 true, i1* @ok, align 1
  br label %175, !dbg !1004

; <label>:172:                                    ; preds = %165
  tail call void @llvm.dbg.value(metadata %struct.passwd* %166, i64 0, metadata !984, metadata !748) #10, !dbg !988
  %173 = getelementptr inbounds %struct.passwd, %struct.passwd* %166, i64 0, i32 0, !dbg !1005
  %174 = load i8*, i8** %173, align 8, !dbg !1005, !tbaa !964
  br label %178, !dbg !1006

; <label>:175:                                    ; preds = %168, %163
  %176 = phi i64 [ %164, %163 ], [ %170, %168 ], !dbg !990
  %177 = tail call i8* @umaxtostr(i64 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1007
  br label %178, !dbg !1006

; <label>:178:                                    ; preds = %172, %175
  %179 = phi i8* [ %174, %172 ], [ %177, %175 ], !dbg !1006
  tail call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !985, metadata !748) #10, !dbg !1008
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1009, !tbaa !755
  %181 = tail call i32 @fputs_unlocked(i8* %179, %struct._IO_FILE* %180) #10, !dbg !1009
  br label %329, !dbg !1010

; <label>:182:                                    ; preds = %144, %141, %149
  %183 = phi i32 [ %156, %149 ], [ %142, %141 ], [ -1, %144 ]
  %184 = phi i8* [ %152, %149 ], [ null, %141 ], [ null, %144 ]
  br i1 %59, label %185, label %192, !dbg !1011

; <label>:185:                                    ; preds = %182
  %186 = icmp eq i8 %10, 0, !dbg !1012
  %187 = load i32, i32* @egid, align 4
  %188 = select i1 %186, i32 %187, i32 %183
  %189 = load i1, i1* @use_name, align 1
  %190 = tail call zeroext i1 @print_group(i32 %188, i1 zeroext %189) #10, !dbg !1016
  br i1 %190, label %329, label %191, !dbg !1017

; <label>:191:                                    ; preds = %185
  store i1 true, i1* @ok, align 1
  br label %329, !dbg !1018

; <label>:192:                                    ; preds = %182
  br i1 %61, label %193, label %201, !dbg !1019

; <label>:193:                                    ; preds = %192
  %194 = load i32, i32* @ruid, align 4, !dbg !1020, !tbaa !851
  %195 = load i32, i32* @egid, align 4, !dbg !1024, !tbaa !851
  %196 = load i1, i1* @use_name, align 1
  %197 = shl nuw nsw i8 %28, 5, !dbg !1025
  %198 = xor i8 %197, 32, !dbg !1025
  %199 = tail call zeroext i1 @print_group_list(i8* %184, i32 %194, i32 %183, i32 %195, i1 zeroext %196, i8 signext %198) #10, !dbg !1026
  br i1 %199, label %329, label %200, !dbg !1027

; <label>:200:                                    ; preds = %193
  store i1 true, i1* @ok, align 1
  br label %329, !dbg !1028

; <label>:201:                                    ; preds = %192
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1029, metadata !748) #10, !dbg !1046
  %202 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1050
  tail call void @llvm.dbg.value(metadata i32* @ruid, i64 0, metadata !65, metadata !748) #10, !dbg !1051
  %203 = load i32, i32* @ruid, align 4, !dbg !1053, !tbaa !851
  %204 = zext i32 %203 to i64, !dbg !1053
  %205 = tail call i8* @umaxtostr(i64 %204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1054
  %206 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %202, i8* %205) #10, !dbg !1050
  %207 = load i32, i32* @ruid, align 4, !dbg !1055, !tbaa !851
  %208 = tail call %struct.passwd* @getpwuid(i32 %207) #10, !dbg !1056
  tail call void @llvm.dbg.value(metadata %struct.passwd* %208, i64 0, metadata !1032, metadata !748) #10, !dbg !1057
  %209 = icmp eq %struct.passwd* %208, null, !dbg !1058
  br i1 %209, label %214, label %210, !dbg !1060

; <label>:210:                                    ; preds = %201
  %211 = getelementptr inbounds %struct.passwd, %struct.passwd* %208, i64 0, i32 0, !dbg !1061
  %212 = load i8*, i8** %211, align 8, !dbg !1061, !tbaa !964
  %213 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %212) #10, !dbg !1061
  br label %214, !dbg !1061

; <label>:214:                                    ; preds = %210, %201
  %215 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1062
  tail call void @llvm.dbg.value(metadata i32* @rgid, i64 0, metadata !77, metadata !748) #10, !dbg !1063
  %216 = load i32, i32* @rgid, align 4, !dbg !1065, !tbaa !851
  %217 = zext i32 %216 to i64, !dbg !1065
  %218 = tail call i8* @umaxtostr(i64 %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1066
  %219 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %215, i8* %218) #10, !dbg !1062
  %220 = load i32, i32* @rgid, align 4, !dbg !1067, !tbaa !851
  %221 = tail call %struct.group* @getgrgid(i32 %220) #10, !dbg !1068
  tail call void @llvm.dbg.value(metadata %struct.group* %221, i64 0, metadata !1033, metadata !748) #10, !dbg !1069
  %222 = icmp eq %struct.group* %221, null, !dbg !1070
  br i1 %222, label %227, label %223, !dbg !1072

; <label>:223:                                    ; preds = %214
  %224 = getelementptr inbounds %struct.group, %struct.group* %221, i64 0, i32 0, !dbg !1073
  %225 = load i8*, i8** %224, align 8, !dbg !1073, !tbaa !1074
  %226 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %225) #10, !dbg !1073
  br label %227, !dbg !1073

; <label>:227:                                    ; preds = %223, %214
  %228 = load i32, i32* @euid, align 4, !dbg !1076, !tbaa !851
  %229 = load i32, i32* @ruid, align 4, !dbg !1078, !tbaa !851
  %230 = icmp eq i32 %228, %229, !dbg !1079
  br i1 %230, label %244, label %231, !dbg !1080

; <label>:231:                                    ; preds = %227
  %232 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !1081
  tail call void @llvm.dbg.value(metadata i32* @euid, i64 0, metadata !65, metadata !748) #10, !dbg !1083
  %233 = load i32, i32* @euid, align 4, !dbg !1085, !tbaa !851
  %234 = zext i32 %233 to i64, !dbg !1085
  %235 = tail call i8* @umaxtostr(i64 %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1086
  %236 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %232, i8* %235) #10, !dbg !1081
  %237 = load i32, i32* @euid, align 4, !dbg !1087, !tbaa !851
  %238 = tail call %struct.passwd* @getpwuid(i32 %237) #10, !dbg !1088
  tail call void @llvm.dbg.value(metadata %struct.passwd* %238, i64 0, metadata !1032, metadata !748) #10, !dbg !1057
  %239 = icmp eq %struct.passwd* %238, null, !dbg !1089
  br i1 %239, label %244, label %240, !dbg !1091

; <label>:240:                                    ; preds = %231
  %241 = getelementptr inbounds %struct.passwd, %struct.passwd* %238, i64 0, i32 0, !dbg !1092
  %242 = load i8*, i8** %241, align 8, !dbg !1092, !tbaa !964
  %243 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %242) #10, !dbg !1092
  br label %244, !dbg !1092

; <label>:244:                                    ; preds = %240, %231, %227
  %245 = phi %struct.passwd* [ %238, %240 ], [ null, %231 ], [ %208, %227 ]
  tail call void @llvm.dbg.value(metadata %struct.passwd* %245, i64 0, metadata !1032, metadata !748) #10, !dbg !1057
  %246 = load i32, i32* @egid, align 4, !dbg !1093, !tbaa !851
  %247 = load i32, i32* @rgid, align 4, !dbg !1095, !tbaa !851
  %248 = icmp eq i32 %246, %247, !dbg !1096
  br i1 %248, label %262, label %249, !dbg !1097

; <label>:249:                                    ; preds = %244
  %250 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1098
  tail call void @llvm.dbg.value(metadata i32* @egid, i64 0, metadata !77, metadata !748) #10, !dbg !1100
  %251 = load i32, i32* @egid, align 4, !dbg !1102, !tbaa !851
  %252 = zext i32 %251 to i64, !dbg !1102
  %253 = tail call i8* @umaxtostr(i64 %252, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1103
  %254 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %250, i8* %253) #10, !dbg !1098
  %255 = load i32, i32* @egid, align 4, !dbg !1104, !tbaa !851
  %256 = tail call %struct.group* @getgrgid(i32 %255) #10, !dbg !1105
  tail call void @llvm.dbg.value(metadata %struct.group* %256, i64 0, metadata !1033, metadata !748) #10, !dbg !1069
  %257 = icmp eq %struct.group* %256, null, !dbg !1106
  br i1 %257, label %262, label %258, !dbg !1108

; <label>:258:                                    ; preds = %249
  %259 = getelementptr inbounds %struct.group, %struct.group* %256, i64 0, i32 0, !dbg !1109
  %260 = load i8*, i8** %259, align 8, !dbg !1109, !tbaa !1074
  %261 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %260) #10, !dbg !1109
  br label %262, !dbg !1109

; <label>:262:                                    ; preds = %258, %249, %244
  %263 = bitcast i32** %3 to i8*, !dbg !1110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %263) #10, !dbg !1110
  %264 = icmp ne i8* %184, null, !dbg !1111
  br i1 %264, label %265, label %269, !dbg !1113

; <label>:265:                                    ; preds = %262
  %266 = icmp eq %struct.passwd* %245, null, !dbg !1114
  br i1 %266, label %272, label %267, !dbg !1114

; <label>:267:                                    ; preds = %265
  %268 = getelementptr inbounds %struct.passwd, %struct.passwd* %245, i64 0, i32 3, !dbg !1115
  br label %269, !dbg !1114

; <label>:269:                                    ; preds = %267, %262
  %270 = phi i32* [ %268, %267 ], [ @egid, %262 ]
  %271 = load i32, i32* %270, align 4, !tbaa !851
  br label %272, !dbg !1116

; <label>:272:                                    ; preds = %269, %265
  %273 = phi i32 [ -1, %265 ], [ %271, %269 ]
  tail call void @llvm.dbg.value(metadata i32 %273, i64 0, metadata !1044, metadata !748) #10, !dbg !1117
  tail call void @llvm.dbg.value(metadata i32** %3, i64 0, metadata !1041, metadata !748) #10, !dbg !1118
  %274 = call i32 @xgetgroups(i8* %184, i32 %273, i32** nonnull %3) #10, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %274, i64 0, metadata !1045, metadata !748) #10, !dbg !1119
  %275 = icmp slt i32 %274, 0, !dbg !1120
  br i1 %275, label %276, label %285, !dbg !1122

; <label>:276:                                    ; preds = %272
  %277 = tail call i32* @__errno_location() #17, !dbg !1123
  %278 = load i32, i32* %277, align 4, !tbaa !851
  br i1 %264, label %279, label %282, !dbg !1126

; <label>:279:                                    ; preds = %276
  %280 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1127
  %281 = call i8* @quote(i8* nonnull %184) #10, !dbg !1128
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %278, i8* %280, i8* %281) #10, !dbg !1129
  br label %284, !dbg !1129

; <label>:282:                                    ; preds = %276
  %283 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !1130
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %278, i8* %283) #10, !dbg !1131
  br label %284

; <label>:284:                                    ; preds = %282, %279
  store i1 true, i1* @ok, align 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %263) #10, !dbg !1132
  br label %329

; <label>:285:                                    ; preds = %272
  %286 = icmp eq i32 %274, 0, !dbg !1133
  br i1 %286, label %326, label %287, !dbg !1135

; <label>:287:                                    ; preds = %285
  %288 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !1136
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !755
  %290 = call i32 @fputs_unlocked(i8* %288, %struct._IO_FILE* %289) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1043, metadata !748) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1043, metadata !748) #10, !dbg !1137
  %291 = zext i32 %274 to i64
  br label %292, !dbg !1138

; <label>:292:                                    ; preds = %323, %287
  %293 = phi i64 [ 0, %287 ], [ %324, %323 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1043, metadata !748) #10, !dbg !1137
  %294 = icmp eq i64 %293, 0, !dbg !1140
  br i1 %294, label %306, label %295, !dbg !1144

; <label>:295:                                    ; preds = %292
  call void @llvm.dbg.value(metadata i32 44, i64 0, metadata !1145, metadata !748) #10, !dbg !1151
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1153, !tbaa !755
  %297 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %296, i64 0, i32 5, !dbg !1153
  %298 = load i8*, i8** %297, align 8, !dbg !1153, !tbaa !1154
  %299 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %296, i64 0, i32 6, !dbg !1153
  %300 = load i8*, i8** %299, align 8, !dbg !1153, !tbaa !1158
  %301 = icmp ult i8* %298, %300, !dbg !1153
  br i1 %301, label %304, label %302, !dbg !1153, !prof !1159

; <label>:302:                                    ; preds = %295
  %303 = call i32 @__overflow(%struct._IO_FILE* %296, i32 44) #10, !dbg !1153
  br label %306, !dbg !1153

; <label>:304:                                    ; preds = %295
  %305 = getelementptr inbounds i8, i8* %298, i64 1, !dbg !1153
  store i8* %305, i8** %297, align 8, !dbg !1153, !tbaa !1154
  store i8 44, i8* %298, align 1, !dbg !1153, !tbaa !893
  br label %306, !dbg !1153

; <label>:306:                                    ; preds = %304, %302, %292
  %307 = load i32*, i32** %3, align 8, !dbg !1160, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %307, i64 0, metadata !1041, metadata !748) #10, !dbg !1118
  %308 = getelementptr inbounds i32, i32* %307, i64 %293, !dbg !1160
  call void @llvm.dbg.value(metadata i32* %308, i64 0, metadata !77, metadata !748) #10, !dbg !1161
  %309 = load i32, i32* %308, align 4, !dbg !1163, !tbaa !851
  %310 = zext i32 %309 to i64, !dbg !1163
  %311 = call i8* @umaxtostr(i64 %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1164
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1160, !tbaa !755
  %313 = call i32 @fputs_unlocked(i8* %311, %struct._IO_FILE* %312) #10, !dbg !1160
  %314 = load i32*, i32** %3, align 8, !dbg !1165, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %314, i64 0, metadata !1041, metadata !748) #10, !dbg !1118
  %315 = getelementptr inbounds i32, i32* %314, i64 %293, !dbg !1165
  %316 = load i32, i32* %315, align 4, !dbg !1165, !tbaa !851
  %317 = call %struct.group* @getgrgid(i32 %316) #10, !dbg !1166
  call void @llvm.dbg.value(metadata %struct.group* %317, i64 0, metadata !1033, metadata !748) #10, !dbg !1069
  %318 = icmp eq %struct.group* %317, null, !dbg !1167
  br i1 %318, label %323, label %319, !dbg !1169

; <label>:319:                                    ; preds = %306
  %320 = getelementptr inbounds %struct.group, %struct.group* %317, i64 0, i32 0, !dbg !1170
  %321 = load i8*, i8** %320, align 8, !dbg !1170, !tbaa !1074
  %322 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %321) #10, !dbg !1170
  br label %323, !dbg !1170

; <label>:323:                                    ; preds = %319, %306
  %324 = add nuw nsw i64 %293, 1, !dbg !1171
  %325 = icmp eq i64 %324, %291, !dbg !1172
  br i1 %325, label %326, label %292, !dbg !1138, !llvm.loop !1173

; <label>:326:                                    ; preds = %323, %285
  %327 = bitcast i32** %3 to i8**, !dbg !1176
  %328 = load i8*, i8** %327, align 8, !dbg !1176, !tbaa !755
  call void @llvm.dbg.value(metadata i32** %3, i64 0, metadata !1041, metadata !1177) #10, !dbg !1118
  call void @free(i8* %328) #10, !dbg !1178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %263) #10, !dbg !1132
  br label %329, !dbg !1179

; <label>:329:                                    ; preds = %326, %284, %191, %185, %193, %200, %178
  %330 = icmp eq i8 %28, 0, !dbg !1180
  %331 = select i1 %330, i32 10, i32 0, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %331, i64 0, metadata !1145, metadata !748) #10, !dbg !1181
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1183, !tbaa !755
  %333 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %332, i64 0, i32 5, !dbg !1183
  %334 = load i8*, i8** %333, align 8, !dbg !1183, !tbaa !1154
  %335 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %332, i64 0, i32 6, !dbg !1183
  %336 = load i8*, i8** %335, align 8, !dbg !1183, !tbaa !1158
  %337 = icmp ult i8* %334, %336, !dbg !1183
  br i1 %337, label %340, label %338, !dbg !1183, !prof !1159

; <label>:338:                                    ; preds = %329
  %339 = call i32 @__overflow(%struct._IO_FILE* %332, i32 %331) #10, !dbg !1183
  br label %343, !dbg !1183

; <label>:340:                                    ; preds = %329
  %341 = trunc i32 %331 to i8, !dbg !1183
  %342 = getelementptr inbounds i8, i8* %334, i64 1, !dbg !1183
  store i8* %342, i8** %333, align 8, !dbg !1183, !tbaa !1154
  store i8 %341, i8* %334, align 1, !dbg !1183, !tbaa !893
  br label %343, !dbg !1183

; <label>:343:                                    ; preds = %338, %340
  %344 = load i1, i1* @ok, align 1
  %345 = zext i1 %344 to i32, !dbg !1184
  ret i32 %345, !dbg !1185
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

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group_list(i8*, i32, i32, i32, i1 zeroext, i8 signext) local_unnamed_addr #6 !dbg !1186 {
  %7 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1190, metadata !748), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1191, metadata !748), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1192, metadata !748), !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1193, metadata !748), !dbg !1215
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1194, metadata !748), !dbg !1216
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !1195, metadata !748), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1196, metadata !748), !dbg !1218
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !1197, metadata !748), !dbg !1219
  %8 = icmp ne i8* %0, null, !dbg !1220
  br i1 %8, label %9, label %13, !dbg !1222

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #10, !dbg !1223
  tail call void @llvm.dbg.value(metadata %struct.passwd* %10, i64 0, metadata !1197, metadata !748), !dbg !1219
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1225
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  %12 = zext i1 %11 to i8, !dbg !1227
  br label %13, !dbg !1227

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ]
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata %struct.passwd* %15, i64 0, metadata !1197, metadata !748), !dbg !1219
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !1196, metadata !748), !dbg !1218
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1228, metadata !748) #10, !dbg !1244
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1233, metadata !748) #10, !dbg !1247
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1234, metadata !748) #10, !dbg !1248
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1242, metadata !748) #10, !dbg !1249
  br i1 %4, label %21, label %16, !dbg !1250

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1251
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1253
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1243, metadata !748) #10, !dbg !1254
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255, !tbaa !755
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !1255
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %35

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.group* @getgrgid(i32 %2) #10, !dbg !1256
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !1234, metadata !748) #10, !dbg !1248
  %23 = icmp eq %struct.group* %22, null, !dbg !1259
  br i1 %23, label %24, label %30, !dbg !1261

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1228, metadata !748) #10, !dbg !1244
  %26 = zext i32 %2 to i64, !dbg !1264
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i64 %26) #10, !dbg !1265
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1242, metadata !748) #10, !dbg !1249
  %27 = tail call i8* @umaxtostr(i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1253
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1243, metadata !748) #10, !dbg !1254
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255, !tbaa !755
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !1255
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %35, !dbg !1266

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !1234, metadata !748) #10, !dbg !1248
  %31 = getelementptr inbounds %struct.group, %struct.group* %22, i64 0, i32 0, !dbg !1267
  %32 = load i8*, i8** %31, align 8, !dbg !1267, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1243, metadata !748) #10, !dbg !1254
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255, !tbaa !755
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !1255
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %35, !dbg !1266

; <label>:35:                                     ; preds = %30, %16, %24
  %36 = phi i8 [ 0, %24 ], [ %14, %16 ], [ %14, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1196, metadata !748), !dbg !1218
  %37 = icmp eq i32 %3, %2, !dbg !1268
  br i1 %37, label %70, label %38, !dbg !1270

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1271, !tbaa !755
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1271
  %41 = load i8*, i8** %40, align 8, !dbg !1271, !tbaa !1154
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1271
  %43 = load i8*, i8** %42, align 8, !dbg !1271, !tbaa !1158
  %44 = icmp ult i8* %41, %43, !dbg !1271
  br i1 %44, label %48, label %45, !dbg !1271, !prof !1159

; <label>:45:                                     ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !1277
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #10, !dbg !1271
  br label %50, !dbg !1271

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1271
  store i8* %49, i8** %40, align 8, !dbg !1271, !tbaa !1154
  store i8 %5, i8* %41, align 1, !dbg !1271, !tbaa !893
  br label %50, !dbg !1271

; <label>:50:                                     ; preds = %45, %48
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1228, metadata !748) #10, !dbg !1278
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1233, metadata !748) #10, !dbg !1281
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1234, metadata !748) #10, !dbg !1282
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1242, metadata !748) #10, !dbg !1283
  br i1 %4, label %56, label %51, !dbg !1284

; <label>:51:                                     ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !1285
  %53 = tail call i8* @umaxtostr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1243, metadata !748) #10, !dbg !1288
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1289, !tbaa !755
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #10, !dbg !1289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %70

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct.group* @getgrgid(i32 %3) #10, !dbg !1290
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !1234, metadata !748) #10, !dbg !1282
  %58 = icmp eq %struct.group* %57, null, !dbg !1291
  br i1 %58, label %59, label %65, !dbg !1292

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1293
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1228, metadata !748) #10, !dbg !1278
  %61 = zext i32 %3 to i64, !dbg !1294
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i64 %61) #10, !dbg !1295
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1242, metadata !748) #10, !dbg !1283
  %62 = tail call i8* @umaxtostr(i64 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1243, metadata !748) #10, !dbg !1288
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1289, !tbaa !755
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #10, !dbg !1289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %70, !dbg !1296

; <label>:65:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !1234, metadata !748) #10, !dbg !1282
  %66 = getelementptr inbounds %struct.group, %struct.group* %57, i64 0, i32 0, !dbg !1297
  %67 = load i8*, i8** %66, align 8, !dbg !1297, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1243, metadata !748) #10, !dbg !1288
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1289, !tbaa !755
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #10, !dbg !1289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %70, !dbg !1296

; <label>:70:                                     ; preds = %65, %51, %59, %35
  %71 = phi i8 [ %36, %35 ], [ 0, %59 ], [ %36, %51 ], [ %36, %65 ]
  tail call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !1196, metadata !748), !dbg !1218
  %72 = bitcast i32** %7 to i8*, !dbg !1298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1298
  %73 = icmp eq %struct.passwd* %15, null, !dbg !1299
  br i1 %73, label %77, label %74, !dbg !1299

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1300
  %76 = load i32, i32* %75, align 4, !dbg !1300, !tbaa !972
  br label %77, !dbg !1299

; <label>:77:                                     ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !1299
  tail call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !1208, metadata !748), !dbg !1301
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #10, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !1211, metadata !748), !dbg !1303
  %80 = icmp slt i32 %79, 0, !dbg !1304
  br i1 %80, label %81, label %89, !dbg !1306

; <label>:81:                                     ; preds = %77
  %82 = tail call i32* @__errno_location() #17, !dbg !1307
  %83 = load i32, i32* %82, align 4, !tbaa !851
  br i1 %8, label %84, label %87, !dbg !1311

; <label>:84:                                     ; preds = %81
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !1312
  %86 = call i8* @quote(i8* nonnull %0) #10, !dbg !1313
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %83, i8* %85, i8* %86) #10, !dbg !1314
  br label %143, !dbg !1315

; <label>:87:                                     ; preds = %81
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.18, i64 0, i64 0), i32 5) #10, !dbg !1316
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %83, i8* %88) #10, !dbg !1318
  br label %143

; <label>:89:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1210, metadata !748), !dbg !1319
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1210, metadata !748), !dbg !1319
  call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !1196, metadata !748), !dbg !1218
  %90 = icmp eq i32 %79, 0, !dbg !1320
  %91 = load i32*, i32** %7, align 8, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %91, i64 0, metadata !1208, metadata !748), !dbg !1301
  br i1 %90, label %144, label %92, !dbg !1323

; <label>:92:                                     ; preds = %89
  %93 = zext i8 %5 to i32
  %94 = sext i32 %79 to i64, !dbg !1323
  br label %95, !dbg !1323

; <label>:95:                                     ; preds = %92, %138
  %96 = phi i64 [ 0, %92 ], [ %140, %138 ]
  %97 = phi i32* [ %91, %92 ], [ %142, %138 ]
  %98 = phi i8 [ %71, %92 ], [ %139, %138 ]
  call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !1196, metadata !748), !dbg !1218
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1210, metadata !748), !dbg !1319
  %99 = getelementptr inbounds i32, i32* %97, i64 %96, !dbg !1324
  %100 = load i32, i32* %99, align 4, !dbg !1324, !tbaa !851
  %101 = icmp eq i32 %100, %2, !dbg !1326
  %102 = icmp eq i32 %100, %3, !dbg !1327
  %103 = or i1 %101, %102, !dbg !1328
  br i1 %103, label %138, label %104, !dbg !1328

; <label>:104:                                    ; preds = %95
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1329, !tbaa !755
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !1329
  %107 = load i8*, i8** %106, align 8, !dbg !1329, !tbaa !1154
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !1329
  %109 = load i8*, i8** %108, align 8, !dbg !1329, !tbaa !1158
  %110 = icmp ult i8* %107, %109, !dbg !1329
  br i1 %110, label %113, label %111, !dbg !1329, !prof !1159

; <label>:111:                                    ; preds = %104
  %112 = call i32 @__overflow(%struct._IO_FILE* %105, i32 %93) #10, !dbg !1329
  br label %115, !dbg !1329

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1329
  store i8* %114, i8** %106, align 8, !dbg !1329, !tbaa !1154
  store i8 %5, i8* %107, align 1, !dbg !1329, !tbaa !893
  br label %115, !dbg !1329

; <label>:115:                                    ; preds = %111, %113
  %116 = load i32*, i32** %7, align 8, !dbg !1332, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %116, i64 0, metadata !1208, metadata !748), !dbg !1301
  %117 = getelementptr inbounds i32, i32* %116, i64 %96, !dbg !1332
  %118 = load i32, i32* %117, align 4, !dbg !1332, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1228, metadata !748) #10, !dbg !1334
  call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1233, metadata !748) #10, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1234, metadata !748) #10, !dbg !1337
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1242, metadata !748) #10, !dbg !1338
  br i1 %4, label %124, label %119, !dbg !1339

; <label>:119:                                    ; preds = %115
  %120 = zext i32 %118 to i64, !dbg !1340
  %121 = call i8* @umaxtostr(i64 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1243, metadata !748) #10, !dbg !1343
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1344, !tbaa !755
  %123 = call i32 @fputs_unlocked(i8* %121, %struct._IO_FILE* %122) #10, !dbg !1344
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %138

; <label>:124:                                    ; preds = %115
  %125 = call %struct.group* @getgrgid(i32 %118) #10, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !1234, metadata !748) #10, !dbg !1337
  %126 = icmp eq %struct.group* %125, null, !dbg !1346
  br i1 %126, label %127, label %133, !dbg !1347

; <label>:127:                                    ; preds = %124
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1228, metadata !748) #10, !dbg !1334
  %129 = zext i32 %118 to i64, !dbg !1349
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i64 %129) #10, !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1242, metadata !748) #10, !dbg !1338
  %130 = call i8* @umaxtostr(i64 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1243, metadata !748) #10, !dbg !1343
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1344, !tbaa !755
  %132 = call i32 @fputs_unlocked(i8* %130, %struct._IO_FILE* %131) #10, !dbg !1344
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %138, !dbg !1351

; <label>:133:                                    ; preds = %124
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !1234, metadata !748) #10, !dbg !1337
  %134 = getelementptr inbounds %struct.group, %struct.group* %125, i64 0, i32 0, !dbg !1352
  %135 = load i8*, i8** %134, align 8, !dbg !1352, !tbaa !1074
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1243, metadata !748) #10, !dbg !1343
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1344, !tbaa !755
  %137 = call i32 @fputs_unlocked(i8* %135, %struct._IO_FILE* %136) #10, !dbg !1344
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1196, metadata !748), !dbg !1218
  br label %138, !dbg !1351

; <label>:138:                                    ; preds = %133, %119, %127, %95
  %139 = phi i8 [ %98, %95 ], [ 0, %127 ], [ %98, %119 ], [ %98, %133 ]
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !1196, metadata !748), !dbg !1218
  %140 = add nuw nsw i64 %96, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !1196, metadata !748), !dbg !1218
  %141 = icmp slt i64 %140, %94, !dbg !1320
  %142 = load i32*, i32** %7, align 8, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !1208, metadata !748), !dbg !1301
  br i1 %141, label %95, label %144, !dbg !1323, !llvm.loop !1354

; <label>:143:                                    ; preds = %87, %84
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !1196, metadata !748), !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1356
  br label %150

; <label>:144:                                    ; preds = %138, %89
  %145 = phi i8 [ %71, %89 ], [ %139, %138 ]
  %146 = phi i32* [ %91, %89 ], [ %142, %138 ]
  %147 = bitcast i32* %146 to i8*, !dbg !1357
  call void @free(i8* %147) #10, !dbg !1358
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !1196, metadata !748), !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1356
  %148 = and i8 %145, 1, !dbg !1359
  %149 = icmp ne i8 %148, 0, !dbg !1359
  br label %150

; <label>:150:                                    ; preds = %143, %144
  %151 = phi i1 [ %149, %144 ], [ false, %143 ]
  ret i1 %151, !dbg !1360
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group(i32, i1 zeroext) local_unnamed_addr #6 !dbg !1229 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1228, metadata !748), !dbg !1361
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1233, metadata !748), !dbg !1362
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1234, metadata !748), !dbg !1363
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1242, metadata !748), !dbg !1364
  br i1 %1, label %5, label %3, !dbg !1365

; <label>:3:                                      ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1366
  br label %14, !dbg !1365

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #10, !dbg !1368
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !1234, metadata !748), !dbg !1363
  %7 = icmp eq %struct.group* %6, null, !dbg !1369
  br i1 %7, label %8, label %11, !dbg !1370

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1371
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1228, metadata !748), !dbg !1361
  %10 = zext i32 %0 to i64, !dbg !1372
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #10, !dbg !1373
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1242, metadata !748), !dbg !1364
  br label %14, !dbg !1374

; <label>:11:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !1234, metadata !748), !dbg !1363
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1375
  %13 = load i8*, i8** %12, align 8, !dbg !1375, !tbaa !1074
  br label %18, !dbg !1376

; <label>:14:                                     ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1366
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !1234, metadata !748), !dbg !1363
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1377
  br label %18, !dbg !1376

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1376
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1243, metadata !748), !dbg !1378
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1379, !tbaa !755
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !1379
  ret i1 %19, !dbg !1380
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1381 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1383, metadata !748), !dbg !1384
  store i8* %0, i8** @file_name, align 8, !dbg !1385, !tbaa !755
  ret void, !dbg !1386
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1387 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1391, metadata !748), !dbg !1392
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1393, !tbaa !1394
  ret void, !dbg !1396
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1397 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !755
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1405
  %3 = icmp eq i32 %2, 0, !dbg !1406
  br i1 %3, label %21, label %4, !dbg !1407

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1408, !tbaa !1394, !range !1409
  %6 = icmp eq i8 %5, 0, !dbg !1408
  %7 = tail call i32* @__errno_location() #17, !dbg !1410
  br i1 %6, label %11, label %8, !dbg !1412

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1413, !tbaa !851
  %10 = icmp eq i32 %9, 32, !dbg !1414
  br i1 %10, label %21, label %11, !dbg !1415

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !1416
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1401, metadata !748), !dbg !1417
  %13 = load i8*, i8** @file_name, align 8, !dbg !1418, !tbaa !755
  %14 = icmp eq i8* %13, null, !dbg !1418
  %15 = load i32, i32* %7, align 4, !tbaa !851
  br i1 %14, label %18, label %16, !dbg !1419

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1420
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1421
  br label %19, !dbg !1421

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #10, !dbg !1422
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1423, !tbaa !851
  tail call void @_exit(i32 %20) #15, !dbg !1424
  unreachable, !dbg !1424

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1425, !tbaa !755
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1427
  %24 = icmp eq i32 %23, 0, !dbg !1428
  br i1 %24, label %27, label %25, !dbg !1429

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1430, !tbaa !851
  tail call void @_exit(i32 %26) #15, !dbg !1431
  unreachable, !dbg !1431

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1432
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1433 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1438, metadata !748), !dbg !1441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1439, metadata !748), !dbg !1442
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1443
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1440, metadata !748), !dbg !1444
  store i8 0, i8* %3, align 1, !dbg !1445, !tbaa !893
  br label %4, !dbg !1446, !llvm.loop !1449

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1440, metadata !748), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1438, metadata !748), !dbg !1441
  %7 = urem i64 %5, 10, !dbg !1451
  %8 = trunc i64 %7 to i8, !dbg !1452
  %9 = or i8 %8, 48, !dbg !1452
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1453
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1440, metadata !748), !dbg !1444
  store i8 %9, i8* %10, align 1, !dbg !1454, !tbaa !893
  %11 = udiv i64 %5, 10, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1438, metadata !748), !dbg !1441
  %12 = icmp ugt i64 %5, 9, !dbg !1456
  br i1 %12, label %4, label %13, !dbg !1457, !llvm.loop !1449

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1440, metadata !748), !dbg !1444
  ret i8* %10, !dbg !1458
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1459 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1461, metadata !748), !dbg !1464
  %2 = icmp eq i8* %0, null, !dbg !1465
  br i1 %2, label %3, label %6, !dbg !1467

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1468, !tbaa !755
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1470
  tail call void @abort() #15, !dbg !1471
  unreachable, !dbg !1471

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1472
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1462, metadata !748), !dbg !1473
  %8 = icmp eq i8* %7, null, !dbg !1474
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1475
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1476
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1463, metadata !748), !dbg !1477
  %11 = ptrtoint i8* %10 to i64, !dbg !1478
  %12 = ptrtoint i8* %0 to i64, !dbg !1478
  %13 = sub i64 %11, %12, !dbg !1478
  %14 = icmp sgt i64 %13, 6, !dbg !1480
  br i1 %14, label %15, label %24, !dbg !1481

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1482
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #14, !dbg !1483
  %18 = icmp eq i32 %17, 0, !dbg !1484
  br i1 %18, label %19, label %24, !dbg !1485

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1461, metadata !748), !dbg !1464
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #14, !dbg !1486
  %21 = icmp eq i32 %20, 0, !dbg !1489
  br i1 %21, label %22, label %24, !dbg !1490

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1491
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1461, metadata !748), !dbg !1464
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1493, !tbaa !755
  br label %24, !dbg !1494

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1461, metadata !748), !dbg !1464
  store i8* %25, i8** @program_name, align 8, !dbg !1495, !tbaa !755
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1496, !tbaa !755
  ret void, !dbg !1497
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1498 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1503, metadata !748), !dbg !1506
  %2 = tail call i32* @__errno_location() #17, !dbg !1507
  %3 = load i32, i32* %2, align 4, !dbg !1507, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1504, metadata !748), !dbg !1508
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1509
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1509
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1509
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1510
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1510
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1505, metadata !748), !dbg !1511
  store i32 %3, i32* %2, align 4, !dbg !1512, !tbaa !851
  ret %struct.quoting_options* %8, !dbg !1513
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1514 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1520, metadata !748), !dbg !1521
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1522
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1522
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1523
  %5 = load i32, i32* %4, align 8, !dbg !1523, !tbaa !1524
  ret i32 %5, !dbg !1526
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1527 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1531, metadata !748), !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1532, metadata !748), !dbg !1534
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1535
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1535
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1536
  store i32 %1, i32* %5, align 8, !dbg !1537, !tbaa !1524
  ret void, !dbg !1538
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1539 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1543, metadata !748), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1544, metadata !748), !dbg !1552
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1545, metadata !748), !dbg !1553
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1546, metadata !748), !dbg !1554
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1555
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1555
  %6 = lshr i8 %1, 5, !dbg !1556
  %7 = zext i8 %6 to i64, !dbg !1556
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1557
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1547, metadata !748), !dbg !1558
  %9 = and i8 %1, 31, !dbg !1559
  %10 = zext i8 %9 to i32, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1549, metadata !748), !dbg !1561
  %11 = load i32, i32* %8, align 4, !dbg !1562, !tbaa !851
  %12 = lshr i32 %11, %10, !dbg !1563
  %13 = and i32 %12, 1, !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1550, metadata !748), !dbg !1565
  %14 = and i32 %2, 1, !dbg !1566
  %15 = xor i32 %13, %14, !dbg !1567
  %16 = shl i32 %15, %10, !dbg !1568
  %17 = xor i32 %16, %11, !dbg !1569
  store i32 %17, i32* %8, align 4, !dbg !1569, !tbaa !851
  ret i32 %13, !dbg !1570
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1571 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1575, metadata !748), !dbg !1578
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1576, metadata !748), !dbg !1579
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1580
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1575, metadata !748), !dbg !1578
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1575, metadata !748), !dbg !1578
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1583
  %6 = load i32, i32* %5, align 4, !dbg !1583, !tbaa !1584
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1577, metadata !748), !dbg !1585
  store i32 %1, i32* %5, align 4, !dbg !1586, !tbaa !1584
  ret i32 %6, !dbg !1587
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1588 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1592, metadata !748), !dbg !1595
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1593, metadata !748), !dbg !1596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1594, metadata !748), !dbg !1597
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1598
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1592, metadata !748), !dbg !1595
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1600
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1592, metadata !748), !dbg !1595
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1601
  store i32 10, i32* %6, align 8, !dbg !1602, !tbaa !1524
  %7 = icmp ne i8* %1, null, !dbg !1603
  %8 = icmp ne i8* %2, null, !dbg !1605
  %9 = and i1 %7, %8, !dbg !1606
  br i1 %9, label %11, label %10, !dbg !1606

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1607
  unreachable, !dbg !1607

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1608
  store i8* %1, i8** %12, align 8, !dbg !1609, !tbaa !1610
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1611
  store i8* %2, i8** %13, align 8, !dbg !1612, !tbaa !1613
  ret void, !dbg !1614
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1615 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1619, metadata !748), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1620, metadata !748), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1621, metadata !748), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1622, metadata !748), !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1623, metadata !748), !dbg !1631
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1632
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1624, metadata !748), !dbg !1633
  %8 = tail call i32* @__errno_location() #17, !dbg !1634
  %9 = load i32, i32* %8, align 4, !dbg !1634, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1625, metadata !748), !dbg !1635
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1636
  %11 = load i32, i32* %10, align 8, !dbg !1636, !tbaa !1524
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1637
  %13 = load i32, i32* %12, align 4, !dbg !1637, !tbaa !1584
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1638
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1639
  %16 = load i8*, i8** %15, align 8, !dbg !1639, !tbaa !1610
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1640
  %18 = load i8*, i8** %17, align 8, !dbg !1640, !tbaa !1613
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1641
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1626, metadata !748), !dbg !1642
  store i32 %9, i32* %8, align 4, !dbg !1643, !tbaa !851
  ret i64 %19, !dbg !1644
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1645 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1651, metadata !748), !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1652, metadata !748), !dbg !1716
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1653, metadata !748), !dbg !1717
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1654, metadata !748), !dbg !1718
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1655, metadata !748), !dbg !1719
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1656, metadata !748), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1657, metadata !748), !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1658, metadata !748), !dbg !1722
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1659, metadata !748), !dbg !1723
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1661, metadata !748), !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1662, metadata !748), !dbg !1725
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !748), !dbg !1726
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1664, metadata !748), !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1665, metadata !748), !dbg !1728
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1729
  %14 = icmp eq i64 %13, 1, !dbg !1730
  %15 = lshr i32 %5, 1, !dbg !1731
  %16 = trunc i32 %15 to i8, !dbg !1731
  %17 = and i8 %16, 1, !dbg !1731
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1667, metadata !748), !dbg !1731
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !748), !dbg !1732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1669, metadata !748), !dbg !1733
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1670, metadata !748), !dbg !1734
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1735

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1670, metadata !748), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1665, metadata !748), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1664, metadata !748), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1659, metadata !748), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1658, metadata !748), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1655, metadata !748), !dbg !1719
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
  ], !dbg !1736

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1655, metadata !748), !dbg !1719
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1655, metadata !748), !dbg !1719
  br label %94, !dbg !1737

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1655, metadata !748), !dbg !1719
  %43 = and i8 %36, 1, !dbg !1739
  %44 = icmp eq i8 %43, 0, !dbg !1739
  br i1 %44, label %45, label %94, !dbg !1737

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1741
  br i1 %46, label %94, label %47, !dbg !1744

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1741, !tbaa !893
  br label %94, !dbg !1741

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1658, metadata !748), !dbg !1722
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !1749
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1659, metadata !748), !dbg !1723
  br label %51, !dbg !1750

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1659, metadata !748), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1658, metadata !748), !dbg !1722
  %54 = and i8 %36, 1, !dbg !1751
  %55 = icmp eq i8 %54, 0, !dbg !1751
  br i1 %55, label %56, label %72, !dbg !1753

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1661, metadata !748), !dbg !1724
  %57 = load i8, i8* %52, align 1, !dbg !1754, !tbaa !893
  %58 = icmp eq i8 %57, 0, !dbg !1757
  br i1 %58, label %72, label %59, !dbg !1757

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1758

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1663, metadata !748), !dbg !1726
  %64 = icmp ult i64 %63, %40, !dbg !1758
  br i1 %64, label %65, label %67, !dbg !1761

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1758
  store i8 %61, i8* %66, align 1, !dbg !1758, !tbaa !893
  br label %67, !dbg !1758

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1661, metadata !748), !dbg !1724
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1661, metadata !748), !dbg !1724
  %70 = load i8, i8* %69, align 1, !dbg !1754, !tbaa !893
  %71 = icmp eq i8 %70, 0, !dbg !1757
  br i1 %71, label %72, label %60, !dbg !1757, !llvm.loop !1763

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !748), !dbg !1728
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1663, metadata !748), !dbg !1726
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1664, metadata !748), !dbg !1727
  br label %94, !dbg !1766

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !748), !dbg !1728
  br label %76, !dbg !1767

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1665, metadata !748), !dbg !1728
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1667, metadata !748), !dbg !1731
  br label %78, !dbg !1768

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1665, metadata !748), !dbg !1728
  %81 = and i8 %80, 1, !dbg !1769
  %82 = icmp eq i8 %81, 0, !dbg !1769
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !748), !dbg !1728
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1771
  br label %84, !dbg !1771

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1665, metadata !748), !dbg !1728
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1655, metadata !748), !dbg !1719
  %87 = and i8 %86, 1, !dbg !1772
  %88 = icmp eq i8 %87, 0, !dbg !1772
  br i1 %88, label %89, label %94, !dbg !1774

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1775
  br i1 %90, label %94, label %91, !dbg !1778

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1775, !tbaa !893
  br label %94, !dbg !1775

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1667, metadata !748), !dbg !1731
  br label %94, !dbg !1779

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1780
  unreachable, !dbg !1780

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1667, metadata !748), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1665, metadata !748), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1664, metadata !748), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1659, metadata !748), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1658, metadata !748), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1655, metadata !748), !dbg !1719
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1660, metadata !748), !dbg !1781
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
  br label %122, !dbg !1782

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1670, metadata !748), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1660, metadata !748), !dbg !1781
  %131 = icmp eq i64 %126, -1, !dbg !1783
  br i1 %131, label %134, label %132, !dbg !1784

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1785
  br i1 %133, label %590, label %138, !dbg !1786

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1787
  %136 = load i8, i8* %135, align 1, !dbg !1787, !tbaa !893
  %137 = icmp eq i8 %136, 0, !dbg !1788
  br i1 %137, label %590, label %138, !dbg !1786

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1676, metadata !748), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1677, metadata !748), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1678, metadata !748), !dbg !1791
  br i1 %108, label %139, label %154, !dbg !1792

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1794
  %141 = and i1 %109, %131, !dbg !1795
  br i1 %141, label %142, label %144, !dbg !1795

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1654, metadata !748), !dbg !1718
  br label %144, !dbg !1797

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1654, metadata !748), !dbg !1718
  %146 = icmp ugt i64 %140, %145, !dbg !1798
  br i1 %146, label %154, label %147, !dbg !1799

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1800
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1801
  %150 = icmp ne i32 %149, 0, !dbg !1802
  %151 = or i1 %150, %111, !dbg !1803
  %152 = xor i1 %150, true, !dbg !1803
  %153 = zext i1 %152 to i8, !dbg !1803
  br i1 %151, label %154, label %635, !dbg !1803

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1676, metadata !748), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1654, metadata !748), !dbg !1718
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1804
  %158 = load i8, i8* %157, align 1, !dbg !1804, !tbaa !893
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1671, metadata !748), !dbg !1805
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
  ], !dbg !1806

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1807

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1808

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1677, metadata !748), !dbg !1790
  %162 = and i8 %127, 1, !dbg !1812
  %163 = icmp eq i8 %162, 0, !dbg !1812
  %164 = and i1 %113, %163, !dbg !1812
  br i1 %164, label %165, label %181, !dbg !1812

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1814
  br i1 %166, label %167, label %169, !dbg !1818

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1814
  store i8 39, i8* %168, align 1, !dbg !1814, !tbaa !893
  br label %169, !dbg !1814

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1661, metadata !748), !dbg !1724
  %171 = icmp ult i64 %170, %130, !dbg !1819
  br i1 %171, label %172, label %174, !dbg !1822

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1819
  store i8 36, i8* %173, align 1, !dbg !1819, !tbaa !893
  br label %174, !dbg !1819

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1661, metadata !748), !dbg !1724
  %176 = icmp ult i64 %175, %130, !dbg !1823
  br i1 %176, label %177, label %179, !dbg !1826

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1823
  store i8 39, i8* %178, align 1, !dbg !1823, !tbaa !893
  br label %179, !dbg !1823

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1668, metadata !748), !dbg !1732
  br label %181, !dbg !1827

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1661, metadata !748), !dbg !1724
  %184 = icmp ult i64 %182, %130, !dbg !1828
  br i1 %184, label %185, label %187, !dbg !1831

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1828
  store i8 92, i8* %186, align 1, !dbg !1828, !tbaa !893
  br label %187, !dbg !1828

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1661, metadata !748), !dbg !1724
  br i1 %105, label %189, label %470, !dbg !1832

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1834
  %191 = icmp ult i64 %190, %155, !dbg !1835
  br i1 %191, label %192, label %470, !dbg !1836

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1837
  %194 = load i8, i8* %193, align 1, !dbg !1837, !tbaa !893
  %195 = add i8 %194, -48, !dbg !1838
  %196 = icmp ult i8 %195, 10, !dbg !1838
  br i1 %196, label %197, label %470, !dbg !1838

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1839
  br i1 %198, label %199, label %201, !dbg !1843

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1839
  store i8 48, i8* %200, align 1, !dbg !1839, !tbaa !893
  br label %201, !dbg !1839

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1661, metadata !748), !dbg !1724
  %203 = icmp ult i64 %202, %130, !dbg !1844
  br i1 %203, label %204, label %206, !dbg !1847

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1844
  store i8 48, i8* %205, align 1, !dbg !1844, !tbaa !893
  br label %206, !dbg !1844

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1661, metadata !748), !dbg !1724
  br label %470, !dbg !1848

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1849

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1850

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1851

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1853

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1855
  %214 = icmp ult i64 %213, %155, !dbg !1856
  br i1 %214, label %215, label %470, !dbg !1857

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1858
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1859
  %218 = load i8, i8* %217, align 1, !dbg !1859, !tbaa !893
  %219 = icmp eq i8 %218, 63, !dbg !1860
  br i1 %219, label %220, label %470, !dbg !1861

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1862
  %222 = load i8, i8* %221, align 1, !dbg !1862, !tbaa !893
  %223 = sext i8 %222 to i32, !dbg !1862
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
  ], !dbg !1863

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1864

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1660, metadata !748), !dbg !1781
  %226 = icmp ult i64 %124, %130, !dbg !1866
  br i1 %226, label %227, label %229, !dbg !1869

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1866
  store i8 63, i8* %228, align 1, !dbg !1866, !tbaa !893
  br label %229, !dbg !1866

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1661, metadata !748), !dbg !1724
  %231 = icmp ult i64 %230, %130, !dbg !1870
  br i1 %231, label %232, label %234, !dbg !1873

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1870
  store i8 34, i8* %233, align 1, !dbg !1870, !tbaa !893
  br label %234, !dbg !1870

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1661, metadata !748), !dbg !1724
  %236 = icmp ult i64 %235, %130, !dbg !1874
  br i1 %236, label %237, label %239, !dbg !1877

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1874
  store i8 34, i8* %238, align 1, !dbg !1874, !tbaa !893
  br label %239, !dbg !1874

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1661, metadata !748), !dbg !1724
  %241 = icmp ult i64 %240, %130, !dbg !1878
  br i1 %241, label %242, label %244, !dbg !1881

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1878
  store i8 63, i8* %243, align 1, !dbg !1878, !tbaa !893
  br label %244, !dbg !1878

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1661, metadata !748), !dbg !1724
  br label %470, !dbg !1882

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1675, metadata !748), !dbg !1883
  br label %256, !dbg !1884

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1675, metadata !748), !dbg !1883
  br label %256, !dbg !1885

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1675, metadata !748), !dbg !1883
  br label %254, !dbg !1886

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1675, metadata !748), !dbg !1883
  br label %254, !dbg !1887

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1675, metadata !748), !dbg !1883
  br label %256, !dbg !1888

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1675, metadata !748), !dbg !1883
  br i1 %113, label %252, label %253, !dbg !1889

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1890

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1893

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1675, metadata !748), !dbg !1883
  br i1 %117, label %256, label %635, !dbg !1895

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1675, metadata !748), !dbg !1883
  br i1 %104, label %497, label %470, !dbg !1897

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1898
  br i1 %259, label %260, label %265, !dbg !1900

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1901, !tbaa !893
  %262 = icmp ne i8 %261, 0, !dbg !1902
  %263 = icmp ne i64 %123, 0, !dbg !1903
  %264 = or i1 %263, %262, !dbg !1905
  br i1 %264, label %470, label %271, !dbg !1905

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1906
  %267 = icmp ne i64 %123, 0, !dbg !1903
  %268 = or i1 %267, %266, !dbg !1900
  br i1 %268, label %470, label %271, !dbg !1900

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1903
  br i1 %270, label %271, label %470, !dbg !1907

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1678, metadata !748), !dbg !1791
  br label %272, !dbg !1908

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1678, metadata !748), !dbg !1791
  br i1 %117, label %470, label %635, !dbg !1909

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1678, metadata !748), !dbg !1791
  br i1 %113, label %275, label %470, !dbg !1911

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1912

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1915
  %278 = icmp ne i64 %125, 0, !dbg !1917
  %279 = or i1 %278, %277, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1652, metadata !748), !dbg !1716
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1918
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1662, metadata !748), !dbg !1725
  %282 = icmp ult i64 %124, %281, !dbg !1919
  br i1 %282, label %283, label %285, !dbg !1922

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1919
  store i8 39, i8* %284, align 1, !dbg !1919, !tbaa !893
  br label %285, !dbg !1919

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1661, metadata !748), !dbg !1724
  %287 = icmp ult i64 %286, %281, !dbg !1923
  br i1 %287, label %288, label %290, !dbg !1926

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1923
  store i8 92, i8* %289, align 1, !dbg !1923, !tbaa !893
  br label %290, !dbg !1923

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1661, metadata !748), !dbg !1724
  %292 = icmp ult i64 %291, %281, !dbg !1927
  br i1 %292, label %293, label %295, !dbg !1930

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1927
  store i8 39, i8* %294, align 1, !dbg !1927, !tbaa !893
  br label %295, !dbg !1927

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !748), !dbg !1732
  br label %470, !dbg !1931

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1932

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1679, metadata !748), !dbg !1933
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1934
  %300 = load i16*, i16** %299, align 8, !dbg !1934, !tbaa !755
  %301 = zext i8 %158 to i64, !dbg !1934
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1934
  %303 = load i16, i16* %302, align 2, !dbg !1934, !tbaa !1936
  %304 = lshr i16 %303, 14, !dbg !1937
  %305 = trunc i16 %304 to i8, !dbg !1937
  %306 = and i8 %305, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1682, metadata !748), !dbg !1938
  br label %362, !dbg !1939

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1940
  store i64 0, i64* %10, align 8, !dbg !1941
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1682, metadata !748), !dbg !1938
  %308 = icmp eq i64 %155, -1, !dbg !1942
  br i1 %308, label %309, label %311, !dbg !1944

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1654, metadata !748), !dbg !1718
  br label %311, !dbg !1946

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1654, metadata !748), !dbg !1718
  br label %313, !dbg !1947, !llvm.loop !1948

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1682, metadata !748), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1950
  %316 = add i64 %314, %123, !dbg !1951
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1952
  %318 = sub i64 %312, %316, !dbg !1953
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1683, metadata !748), !dbg !1954
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1701, metadata !748), !dbg !1955
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1704, metadata !748), !dbg !1957
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1958

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1682, metadata !748), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1679, metadata !748), !dbg !1933
  %321 = icmp ugt i64 %312, %316, !dbg !1959
  br i1 %321, label %322, label %347, !dbg !1961

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1962

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1679, metadata !748), !dbg !1933
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1962
  %327 = load i8, i8* %326, align 1, !dbg !1962, !tbaa !893
  %328 = icmp eq i8 %327, 0, !dbg !1961
  br i1 %328, label %347, label %329, !dbg !1963

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1679, metadata !748), !dbg !1933
  %331 = add i64 %330, %123, !dbg !1965
  %332 = icmp ult i64 %331, %312, !dbg !1959
  br i1 %332, label %323, label %347, !dbg !1961, !llvm.loop !1966

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1967
  %335 = and i1 %115, %334, !dbg !1970
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1705, metadata !748), !dbg !1971
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1705, metadata !748), !dbg !1971
  br i1 %335, label %336, label %350, !dbg !1970

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1972

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1705, metadata !748), !dbg !1971
  %339 = add i64 %338, %316, !dbg !1972
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1973
  %341 = load i8, i8* %340, align 1, !dbg !1973, !tbaa !893
  %342 = sext i8 %341 to i32, !dbg !1973
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1974

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1705, metadata !748), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1705, metadata !748), !dbg !1971
  %345 = icmp ult i64 %344, %319, !dbg !1967
  br i1 %345, label %337, label %350, !dbg !1976, !llvm.loop !1977

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1979

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1682, metadata !748), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1979
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1980, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1701, metadata !748), !dbg !1955
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1982
  %353 = icmp eq i32 %352, 0, !dbg !1982
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1682, metadata !748), !dbg !1938
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1983
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1682, metadata !748), !dbg !1938
  %355 = add i64 %319, %314, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1682, metadata !748), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1979
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1683, metadata !748), !dbg !1954
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1985
  %357 = icmp eq i32 %356, 0, !dbg !1986
  br i1 %357, label %313, label %358, !dbg !1987, !llvm.loop !1948

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1988
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1682, metadata !748), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1979
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1988
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1682, metadata !748), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1679, metadata !748), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1654, metadata !748), !dbg !1718
  %366 = and i8 %365, 1, !dbg !1989
  %367 = icmp ne i8 %366, 0, !dbg !1989
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1678, metadata !748), !dbg !1791
  %368 = icmp ult i64 %364, 2, !dbg !1990
  %369 = or i1 %367, %112, !dbg !1991
  %370 = and i1 %368, %369, !dbg !1992
  br i1 %370, label %470, label %371, !dbg !1992

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1712, metadata !748), !dbg !1994
  br label %373, !dbg !1995

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1677, metadata !748), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1676, metadata !748), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1660, metadata !748), !dbg !1781
  br i1 %369, label %426, label %380, !dbg !1996

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2001

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1677, metadata !748), !dbg !1790
  %382 = and i8 %376, 1, !dbg !2004
  %383 = icmp eq i8 %382, 0, !dbg !2004
  %384 = and i1 %113, %383, !dbg !2004
  br i1 %384, label %385, label %401, !dbg !2004

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2006
  br i1 %386, label %387, label %389, !dbg !2010

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2006
  store i8 39, i8* %388, align 1, !dbg !2006, !tbaa !893
  br label %389, !dbg !2006

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1661, metadata !748), !dbg !1724
  %391 = icmp ult i64 %390, %130, !dbg !2011
  br i1 %391, label %392, label %394, !dbg !2014

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2011
  store i8 36, i8* %393, align 1, !dbg !2011, !tbaa !893
  br label %394, !dbg !2011

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1661, metadata !748), !dbg !1724
  %396 = icmp ult i64 %395, %130, !dbg !2015
  br i1 %396, label %397, label %399, !dbg !2018

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2015
  store i8 39, i8* %398, align 1, !dbg !2015, !tbaa !893
  br label %399, !dbg !2015

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1668, metadata !748), !dbg !1732
  br label %401, !dbg !2019

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1661, metadata !748), !dbg !1724
  %404 = icmp ult i64 %402, %130, !dbg !2020
  br i1 %404, label %405, label %407, !dbg !2023

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2020
  store i8 92, i8* %406, align 1, !dbg !2020, !tbaa !893
  br label %407, !dbg !2020

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1661, metadata !748), !dbg !1724
  %409 = icmp ult i64 %408, %130, !dbg !2024
  br i1 %409, label %410, label %414, !dbg !2027

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2024
  %412 = or i8 %411, 48, !dbg !2024
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2024
  store i8 %412, i8* %413, align 1, !dbg !2024, !tbaa !893
  br label %414, !dbg !2024

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1661, metadata !748), !dbg !1724
  %416 = icmp ult i64 %415, %130, !dbg !2028
  br i1 %416, label %417, label %422, !dbg !2031

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2028
  %419 = and i8 %418, 7, !dbg !2028
  %420 = or i8 %419, 48, !dbg !2028
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2028
  store i8 %420, i8* %421, align 1, !dbg !2028, !tbaa !893
  br label %422, !dbg !2028

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1661, metadata !748), !dbg !1724
  %424 = and i8 %377, 7, !dbg !2032
  %425 = or i8 %424, 48, !dbg !2033
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1671, metadata !748), !dbg !1805
  br label %435, !dbg !2034

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2035
  %428 = icmp eq i8 %427, 0, !dbg !2035
  br i1 %428, label %435, label %429, !dbg !2037

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2038
  br i1 %430, label %431, label %433, !dbg !2042

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2038
  store i8 92, i8* %432, align 1, !dbg !2038, !tbaa !893
  br label %433, !dbg !2038

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1676, metadata !748), !dbg !1789
  br label %435, !dbg !2043

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1677, metadata !748), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1676, metadata !748), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1661, metadata !748), !dbg !1724
  %441 = add i64 %374, 1, !dbg !2044
  %442 = icmp ugt i64 %372, %441, !dbg !2046
  br i1 %442, label %443, label %535, !dbg !2047

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2048
  %445 = icmp ne i8 %444, 0, !dbg !2048
  %446 = and i8 %440, 1, !dbg !2048
  %447 = icmp eq i8 %446, 0, !dbg !2048
  %448 = and i1 %445, %447, !dbg !2048
  br i1 %448, label %449, label %460, !dbg !2048

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2051
  br i1 %450, label %451, label %453, !dbg !2055

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2051
  store i8 39, i8* %452, align 1, !dbg !2051, !tbaa !893
  br label %453, !dbg !2051

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1661, metadata !748), !dbg !1724
  %455 = icmp ult i64 %454, %130, !dbg !2056
  br i1 %455, label %456, label %458, !dbg !2059

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2056
  store i8 39, i8* %457, align 1, !dbg !2056, !tbaa !893
  br label %458, !dbg !2056

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !748), !dbg !1732
  br label %460, !dbg !2060

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1661, metadata !748), !dbg !1724
  %463 = icmp ult i64 %461, %130, !dbg !2061
  br i1 %463, label %464, label %466, !dbg !2064

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2061
  store i8 %438, i8* %465, align 1, !dbg !2061, !tbaa !893
  br label %466, !dbg !2061

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1660, metadata !748), !dbg !1781
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2065
  %469 = load i8, i8* %468, align 1, !dbg !2065, !tbaa !893
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1671, metadata !748), !dbg !1805
  br label %373, !dbg !2066, !llvm.loop !2067

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1678, metadata !748), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1677, metadata !748), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1676, metadata !748), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1660, metadata !748), !dbg !1781
  br i1 %106, label %482, label %481, !dbg !2070

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2072

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2073

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2074
  %485 = zext i8 %484 to i64, !dbg !2074
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2075
  %487 = load i32, i32* %486, align 4, !dbg !2075, !tbaa !851
  %488 = and i8 %477, 31, !dbg !2076
  %489 = zext i8 %488 to i32, !dbg !2077
  %490 = shl i32 1, %489, !dbg !2078
  %491 = and i32 %487, %490, !dbg !2078
  %492 = icmp eq i32 %491, 0, !dbg !2078
  %493 = icmp eq i8 %156, 0, !dbg !2079
  %494 = and i1 %493, %492, !dbg !2080
  br i1 %494, label %535, label %497, !dbg !2080

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2079
  br i1 %496, label %535, label %497, !dbg !2081

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1678, metadata !748), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1660, metadata !748), !dbg !1781
  br i1 %111, label %507, label %635, !dbg !2082

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1677, metadata !748), !dbg !1790
  %508 = and i8 %502, 1, !dbg !2084
  %509 = icmp eq i8 %508, 0, !dbg !2084
  %510 = and i1 %113, %509, !dbg !2084
  br i1 %510, label %511, label %527, !dbg !2084

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2086
  br i1 %512, label %513, label %515, !dbg !2090

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2086
  store i8 39, i8* %514, align 1, !dbg !2086, !tbaa !893
  br label %515, !dbg !2086

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1661, metadata !748), !dbg !1724
  %517 = icmp ult i64 %516, %506, !dbg !2091
  br i1 %517, label %518, label %520, !dbg !2094

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2091
  store i8 36, i8* %519, align 1, !dbg !2091, !tbaa !893
  br label %520, !dbg !2091

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1661, metadata !748), !dbg !1724
  %522 = icmp ult i64 %521, %506, !dbg !2095
  br i1 %522, label %523, label %525, !dbg !2098

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2095
  store i8 39, i8* %524, align 1, !dbg !2095, !tbaa !893
  br label %525, !dbg !2095

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1668, metadata !748), !dbg !1732
  br label %527, !dbg !2099

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1661, metadata !748), !dbg !1724
  %530 = icmp ult i64 %528, %506, !dbg !2100
  br i1 %530, label %531, label %533, !dbg !2103

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2100
  store i8 92, i8* %532, align 1, !dbg !2100, !tbaa !893
  br label %533, !dbg !2100

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1678, metadata !748), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1677, metadata !748), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1660, metadata !748), !dbg !1781
  br label %562, !dbg !2104

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1678, metadata !748), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1677, metadata !748), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1671, metadata !748), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1660, metadata !748), !dbg !1781
  %546 = and i8 %540, 1, !dbg !2104
  %547 = icmp ne i8 %546, 0, !dbg !2104
  %548 = and i8 %543, 1, !dbg !2104
  %549 = icmp eq i8 %548, 0, !dbg !2104
  %550 = and i1 %547, %549, !dbg !2104
  br i1 %550, label %551, label %562, !dbg !2104

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2107
  br i1 %552, label %553, label %555, !dbg !2111

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2107
  store i8 39, i8* %554, align 1, !dbg !2107, !tbaa !893
  br label %555, !dbg !2107

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1661, metadata !748), !dbg !1724
  %557 = icmp ult i64 %556, %545, !dbg !2112
  br i1 %557, label %558, label %560, !dbg !2115

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2112
  store i8 39, i8* %559, align 1, !dbg !2112, !tbaa !893
  br label %560, !dbg !2112

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !748), !dbg !1732
  br label %562, !dbg !2116

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1661, metadata !748), !dbg !1724
  %572 = icmp ult i64 %570, %563, !dbg !2117
  br i1 %572, label %573, label %575, !dbg !2120

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2117
  store i8 %565, i8* %574, align 1, !dbg !2117, !tbaa !893
  br label %575, !dbg !2117

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1661, metadata !748), !dbg !1724
  %577 = and i8 %564, 1, !dbg !2121
  %578 = icmp eq i8 %577, 0, !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1670, metadata !748), !dbg !1734
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2123
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1670, metadata !748), !dbg !1734
  br label %580, !dbg !2124

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1670, metadata !748), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1669, metadata !748), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1668, metadata !748), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1654, metadata !748), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1662, metadata !748), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1660, metadata !748), !dbg !1781
  %589 = add i64 %581, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1660, metadata !748), !dbg !1781
  br label %122, !dbg !2126, !llvm.loop !2127

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2129
  %593 = and i1 %113, %592, !dbg !2131
  %594 = xor i1 %593, true, !dbg !2131
  %595 = or i1 %111, %594, !dbg !2131
  br i1 %595, label %596, label %635, !dbg !2131

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2132
  %598 = xor i1 %597, true, !dbg !2132
  %599 = and i8 %128, 1, !dbg !2134
  %600 = icmp eq i8 %599, 0, !dbg !2134
  %601 = or i1 %600, %598, !dbg !2132
  br i1 %601, label %611, label %602, !dbg !2132

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2135
  %604 = icmp eq i8 %603, 0, !dbg !2135
  br i1 %604, label %607, label %605, !dbg !2138

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2139
  br label %645, !dbg !2140

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2141
  %609 = icmp ne i64 %125, 0, !dbg !2143
  %610 = and i1 %609, %608, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1661, metadata !748), !dbg !1724
  br i1 %610, label %27, label %611, !dbg !2144

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2145
  %613 = and i1 %612, %111, !dbg !2147
  br i1 %613, label %614, label %630, !dbg !2147

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1661, metadata !748), !dbg !1724
  %615 = load i8, i8* %99, align 1, !dbg !2148, !tbaa !893
  %616 = icmp eq i8 %615, 0, !dbg !2151
  br i1 %616, label %630, label %617, !dbg !2151

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2152

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1661, metadata !748), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1663, metadata !748), !dbg !1726
  %622 = icmp ult i64 %621, %130, !dbg !2152
  br i1 %622, label %623, label %625, !dbg !2155

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2152
  store i8 %619, i8* %624, align 1, !dbg !2152, !tbaa !893
  br label %625, !dbg !2152

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1661, metadata !748), !dbg !1724
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2156
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1663, metadata !748), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1661, metadata !748), !dbg !1724
  %628 = load i8, i8* %627, align 1, !dbg !2148, !tbaa !893
  %629 = icmp eq i8 %628, 0, !dbg !2151
  br i1 %629, label %630, label %618, !dbg !2151, !llvm.loop !2157

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1661, metadata !748), !dbg !1724
  %632 = icmp ult i64 %631, %130, !dbg !2159
  br i1 %632, label %633, label %645, !dbg !2161

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2162
  store i8 0, i8* %634, align 1, !dbg !2163, !tbaa !893
  br label %645, !dbg !2162

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1652, metadata !748), !dbg !1716
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1654, metadata !748), !dbg !1718
  %639 = icmp ne i32 %636, 2, !dbg !2164
  %640 = icmp eq i8 %103, 0, !dbg !2166
  %641 = or i1 %639, %640, !dbg !2167
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1655, metadata !748), !dbg !1719
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1655, metadata !748), !dbg !1719
  %643 = and i32 %5, -3, !dbg !2168
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2169
  br label %645, !dbg !2170

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2171
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2172 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2176, metadata !748), !dbg !2180
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2177, metadata !748), !dbg !2181
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2182
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2178, metadata !748), !dbg !2183
  %4 = icmp eq i8* %3, %0, !dbg !2184
  br i1 %4, label %5, label %75, !dbg !2186

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2179, metadata !748), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2189, metadata !748), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2203, metadata !748), !dbg !2208
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2204, metadata !748), !dbg !2209
  %7 = load i8, i8* %6, align 1, !dbg !2210, !tbaa !893
  %8 = sext i8 %7 to i32, !dbg !2210
  %9 = and i32 %8, -33, !dbg !2210
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2210

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2212, metadata !748), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2224, metadata !748), !dbg !2230
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2225, metadata !748), !dbg !2231
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2232
  %12 = load i8, i8* %11, align 1, !dbg !2232, !tbaa !893
  %13 = sext i8 %12 to i32, !dbg !2232
  %14 = and i32 %13, -33, !dbg !2232
  %15 = icmp eq i32 %14, 84, !dbg !2232
  br i1 %15, label %16, label %72, !dbg !2232

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2234, metadata !748), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2245, metadata !748), !dbg !2251
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2246, metadata !748), !dbg !2252
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2253
  %18 = load i8, i8* %17, align 1, !dbg !2253, !tbaa !893
  %19 = sext i8 %18 to i32, !dbg !2253
  %20 = and i32 %19, -33, !dbg !2253
  %21 = icmp eq i32 %20, 70, !dbg !2253
  br i1 %21, label %22, label %72, !dbg !2253

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2255, metadata !748), !dbg !2267
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2265, metadata !748), !dbg !2271
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2266, metadata !748), !dbg !2272
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2273
  %24 = load i8, i8* %23, align 1, !dbg !2273, !tbaa !893
  %25 = icmp eq i8 %24, 45, !dbg !2273
  br i1 %25, label %26, label %72, !dbg !2275

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2276, metadata !748), !dbg !2287
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2285, metadata !748), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2286, metadata !748), !dbg !2292
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2293
  %28 = load i8, i8* %27, align 1, !dbg !2293, !tbaa !893
  %29 = icmp eq i8 %28, 56, !dbg !2293
  br i1 %29, label %30, label %72, !dbg !2295

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2296, metadata !748), !dbg !2306
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2304, metadata !748), !dbg !2310
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2305, metadata !748), !dbg !2311
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2312
  %32 = load i8, i8* %31, align 1, !dbg !2312, !tbaa !893
  %33 = icmp eq i8 %32, 0, !dbg !2312
  br i1 %33, label %34, label %72, !dbg !2314

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2315, !tbaa !893
  %36 = icmp eq i8 %35, 96, !dbg !2316
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2315
  br label %75, !dbg !2317

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2212, metadata !748), !dbg !2318
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2224, metadata !748), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2225, metadata !748), !dbg !2323
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2324
  %40 = load i8, i8* %39, align 1, !dbg !2324, !tbaa !893
  %41 = sext i8 %40 to i32, !dbg !2324
  %42 = and i32 %41, -33, !dbg !2324
  %43 = icmp eq i32 %42, 66, !dbg !2324
  br i1 %43, label %44, label %72, !dbg !2324

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2234, metadata !748), !dbg !2325
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2245, metadata !748), !dbg !2327
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2246, metadata !748), !dbg !2328
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2329
  %46 = load i8, i8* %45, align 1, !dbg !2329, !tbaa !893
  %47 = icmp eq i8 %46, 49, !dbg !2329
  br i1 %47, label %48, label %72, !dbg !2330

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2255, metadata !748), !dbg !2331
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2265, metadata !748), !dbg !2333
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2266, metadata !748), !dbg !2334
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2335
  %50 = load i8, i8* %49, align 1, !dbg !2335, !tbaa !893
  %51 = icmp eq i8 %50, 56, !dbg !2335
  br i1 %51, label %52, label %72, !dbg !2336

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2276, metadata !748), !dbg !2337
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2285, metadata !748), !dbg !2339
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2286, metadata !748), !dbg !2340
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2341
  %54 = load i8, i8* %53, align 1, !dbg !2341, !tbaa !893
  %55 = icmp eq i8 %54, 48, !dbg !2341
  br i1 %55, label %56, label %72, !dbg !2342

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2296, metadata !748), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2304, metadata !748), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2305, metadata !748), !dbg !2346
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2347
  %58 = load i8, i8* %57, align 1, !dbg !2347, !tbaa !893
  %59 = icmp eq i8 %58, 51, !dbg !2347
  br i1 %59, label %60, label %72, !dbg !2348

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2349, metadata !748), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2356, metadata !748), !dbg !2362
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2357, metadata !748), !dbg !2363
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2364
  %62 = load i8, i8* %61, align 1, !dbg !2364, !tbaa !893
  %63 = icmp eq i8 %62, 48, !dbg !2364
  br i1 %63, label %64, label %72, !dbg !2366

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2367, metadata !748), !dbg !2375
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2373, metadata !748), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2374, metadata !748), !dbg !2380
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2381
  %66 = load i8, i8* %65, align 1, !dbg !2381, !tbaa !893
  %67 = icmp eq i8 %66, 0, !dbg !2381
  br i1 %67, label %68, label %72, !dbg !2383

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2384, !tbaa !893
  %70 = icmp eq i8 %69, 96, !dbg !2385
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2384
  br label %75, !dbg !2386

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2387
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2388
  br label %75, !dbg !2389

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2390
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2395, metadata !748), !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2396, metadata !748), !dbg !2399
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2397, metadata !748), !dbg !2400
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2401, metadata !748) #10, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2406, metadata !748) #10, !dbg !2416
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2407, metadata !748) #10, !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2408, metadata !748) #10, !dbg !2418
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2419
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2409, metadata !748) #10, !dbg !2420
  %6 = tail call i32* @__errno_location() #17, !dbg !2421
  %7 = load i32, i32* %6, align 4, !dbg !2421, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2410, metadata !748) #10, !dbg !2422
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2423
  %9 = load i32, i32* %8, align 4, !dbg !2423, !tbaa !1584
  %10 = or i32 %9, 1, !dbg !2424
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2411, metadata !748) #10, !dbg !2425
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2426
  %12 = load i32, i32* %11, align 8, !dbg !2426, !tbaa !1524
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2427
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2428
  %15 = load i8*, i8** %14, align 8, !dbg !2428, !tbaa !1610
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2429
  %17 = load i8*, i8** %16, align 8, !dbg !2429, !tbaa !1613
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2430
  %19 = add i64 %18, 1, !dbg !2431
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2412, metadata !748) #10, !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2433, metadata !748) #10, !dbg !2438
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2413, metadata !748) #10, !dbg !2441
  %21 = load i32, i32* %11, align 8, !dbg !2442, !tbaa !1524
  %22 = load i8*, i8** %14, align 8, !dbg !2443, !tbaa !1610
  %23 = load i8*, i8** %16, align 8, !dbg !2444, !tbaa !1613
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2445
  store i32 %7, i32* %6, align 4, !dbg !2446, !tbaa !851
  ret i8* %20, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2402 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2401, metadata !748), !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2406, metadata !748), !dbg !2449
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2407, metadata !748), !dbg !2450
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2408, metadata !748), !dbg !2451
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2452
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2409, metadata !748), !dbg !2453
  %7 = tail call i32* @__errno_location() #17, !dbg !2454
  %8 = load i32, i32* %7, align 4, !dbg !2454, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2410, metadata !748), !dbg !2455
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2456
  %10 = load i32, i32* %9, align 4, !dbg !2456, !tbaa !1584
  %11 = icmp ne i64* %2, null, !dbg !2457
  %12 = xor i1 %11, true, !dbg !2457
  %13 = zext i1 %12 to i32, !dbg !2457
  %14 = or i32 %10, %13, !dbg !2458
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2411, metadata !748), !dbg !2459
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2460
  %16 = load i32, i32* %15, align 8, !dbg !2460, !tbaa !1524
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2461
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2462
  %19 = load i8*, i8** %18, align 8, !dbg !2462, !tbaa !1610
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2463
  %21 = load i8*, i8** %20, align 8, !dbg !2463, !tbaa !1613
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2464
  %23 = add i64 %22, 1, !dbg !2465
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2412, metadata !748), !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2433, metadata !748) #10, !dbg !2467
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2413, metadata !748), !dbg !2470
  %25 = load i32, i32* %15, align 8, !dbg !2471, !tbaa !1524
  %26 = load i8*, i8** %18, align 8, !dbg !2472, !tbaa !1610
  %27 = load i8*, i8** %20, align 8, !dbg !2473, !tbaa !1613
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2474
  store i32 %8, i32* %7, align 4, !dbg !2475, !tbaa !851
  br i1 %11, label %29, label %30, !dbg !2476

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2477, !tbaa !2479
  br label %30, !dbg !2480

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2481
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2482 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2486, !tbaa !755
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2484, metadata !748), !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2485, metadata !748), !dbg !2488
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2485, metadata !748), !dbg !2488
  %2 = load i32, i32* @nslots, align 4, !dbg !2489, !tbaa !851
  %3 = icmp sgt i32 %2, 1, !dbg !2492
  br i1 %3, label %4, label %13, !dbg !2493

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2494

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2485, metadata !748), !dbg !2488
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2494
  %8 = load i8*, i8** %7, align 8, !dbg !2494, !tbaa !2495
  tail call void @free(i8* %8) #10, !dbg !2497
  %9 = add nuw i64 %6, 1, !dbg !2498
  %10 = load i32, i32* @nslots, align 4, !dbg !2489, !tbaa !851
  %11 = sext i32 %10 to i64, !dbg !2492
  %12 = icmp slt i64 %9, %11, !dbg !2492
  br i1 %12, label %5, label %13, !dbg !2493, !llvm.loop !2499

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2501
  %15 = load i8*, i8** %14, align 8, !dbg !2501, !tbaa !2495
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2503
  br i1 %16, label %18, label %17, !dbg !2504

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2505
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2507, !tbaa !2508
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2509, !tbaa !2495
  br label %18, !dbg !2510

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2511
  br i1 %19, label %22, label %20, !dbg !2513

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2514
  tail call void @free(i8* %21) #10, !dbg !2516
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2517, !tbaa !755
  br label %22, !dbg !2518

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2519, !tbaa !851
  ret void, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2525, metadata !748), !dbg !2527
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2526, metadata !748), !dbg !2528
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2529
  ret i8* %3, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2531 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2535, metadata !748), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2536, metadata !748), !dbg !2550
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2537, metadata !748), !dbg !2551
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2538, metadata !748), !dbg !2552
  %5 = tail call i32* @__errno_location() #17, !dbg !2553
  %6 = load i32, i32* %5, align 4, !dbg !2553, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2539, metadata !748), !dbg !2554
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2555, !tbaa !755
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2540, metadata !748), !dbg !2556
  %8 = icmp slt i32 %0, 0, !dbg !2557
  br i1 %8, label %9, label %10, !dbg !2559

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2560
  unreachable, !dbg !2560

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2561, !tbaa !851
  %12 = icmp sgt i32 %11, %0, !dbg !2562
  br i1 %12, label %34, label %13, !dbg !2563

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2564
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2565
  br i1 %15, label %16, label %17, !dbg !2567

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2568
  unreachable, !dbg !2568

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2569
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2569
  %20 = add nsw i32 %0, 1, !dbg !2570
  %21 = sext i32 %20 to i64, !dbg !2571
  %22 = shl nsw i64 %21, 4, !dbg !2572
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2573
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2573
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2540, metadata !748), !dbg !2556
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2574, !tbaa !755
  br i1 %14, label %25, label %26, !dbg !2575

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2576, !tbaa.struct !2578
  br label %26, !dbg !2579

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2580, !tbaa !851
  %28 = sext i32 %27 to i64, !dbg !2581
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2581
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2582
  %31 = sub nsw i32 %20, %27, !dbg !2583
  %32 = sext i32 %31 to i64, !dbg !2584
  %33 = shl nsw i64 %32, 4, !dbg !2585
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2582
  store i32 %20, i32* @nslots, align 4, !dbg !2586, !tbaa !851
  br label %34, !dbg !2587

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2540, metadata !748), !dbg !2556
  %36 = sext i32 %0 to i64, !dbg !2588
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2589
  %38 = load i64, i64* %37, align 8, !dbg !2589, !tbaa !2508
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2544, metadata !748), !dbg !2590
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2591
  %40 = load i8*, i8** %39, align 8, !dbg !2591, !tbaa !2495
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2546, metadata !748), !dbg !2592
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2593
  %42 = load i32, i32* %41, align 4, !dbg !2593, !tbaa !1584
  %43 = or i32 %42, 1, !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2547, metadata !748), !dbg !2595
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2596
  %45 = load i32, i32* %44, align 8, !dbg !2596, !tbaa !1524
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2597
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2598
  %48 = load i8*, i8** %47, align 8, !dbg !2598, !tbaa !1610
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2599
  %50 = load i8*, i8** %49, align 8, !dbg !2599, !tbaa !1613
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2600
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2548, metadata !748), !dbg !2601
  %52 = icmp ugt i64 %38, %51, !dbg !2602
  br i1 %52, label %63, label %53, !dbg !2604

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2605
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2544, metadata !748), !dbg !2590
  store i64 %54, i64* %37, align 8, !dbg !2607, !tbaa !2508
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2608
  br i1 %55, label %57, label %56, !dbg !2610

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2611
  br label %57, !dbg !2611

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2433, metadata !748) #10, !dbg !2612
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2546, metadata !748), !dbg !2592
  store i8* %58, i8** %39, align 8, !dbg !2615, !tbaa !2495
  %59 = load i32, i32* %44, align 8, !dbg !2616, !tbaa !1524
  %60 = load i8*, i8** %47, align 8, !dbg !2617, !tbaa !1610
  %61 = load i8*, i8** %49, align 8, !dbg !2618, !tbaa !1613
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2619
  br label %63, !dbg !2620

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2546, metadata !748), !dbg !2592
  store i32 %6, i32* %5, align 4, !dbg !2621, !tbaa !851
  ret i8* %64, !dbg !2622
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2623 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2627, metadata !748), !dbg !2630
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2628, metadata !748), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2629, metadata !748), !dbg !2632
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2633
  ret i8* %4, !dbg !2634
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2635 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2639, metadata !748), !dbg !2640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2525, metadata !748) #10, !dbg !2641
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2526, metadata !748) #10, !dbg !2643
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2644
  ret i8* %2, !dbg !2645
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2646 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2650, metadata !748), !dbg !2652
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2651, metadata !748), !dbg !2653
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2627, metadata !748) #10, !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2628, metadata !748) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2629, metadata !748) #10, !dbg !2657
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2658
  ret i8* %3, !dbg !2659
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2660 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2668, metadata !2674), !dbg !2675
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2664, metadata !748), !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2665, metadata !748), !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2666, metadata !748), !dbg !2679
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !748), !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2673, metadata !748) #10, !dbg !2682
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2683
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2668, metadata !748) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2675
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2675
  %8 = icmp eq i32 %1, 10, !dbg !2685
  br i1 %8, label %9, label %10, !dbg !2687

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2688, !noalias !2689
  unreachable, !dbg !2688

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2668, metadata !2684) #10, !dbg !2675
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2692
  store i32 %1, i32* %11, align 8, !dbg !2692, !alias.scope !2689
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2692
  %13 = bitcast i32* %12 to i8*, !dbg !2692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2692
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !748), !dbg !2681
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2694
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2695
  ret i8* %14, !dbg !2696
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2697 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2668, metadata !2674), !dbg !2706
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2701, metadata !748), !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2702, metadata !748), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2703, metadata !748), !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2704, metadata !748), !dbg !2711
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2712
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2705, metadata !748), !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2673, metadata !748) #10, !dbg !2714
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2715
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2715
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2668, metadata !748) #10, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2706
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2706
  %9 = icmp eq i32 %1, 10, !dbg !2716
  br i1 %9, label %10, label %11, !dbg !2717

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2718, !noalias !2719
  unreachable, !dbg !2718

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2668, metadata !2684) #10, !dbg !2706
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2722
  store i32 %1, i32* %12, align 8, !dbg !2722, !alias.scope !2719
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2722
  %14 = bitcast i32* %13 to i8*, !dbg !2722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2722
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2705, metadata !748), !dbg !2713
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2725
  ret i8* %15, !dbg !2726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2727 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2668, metadata !2674), !dbg !2733
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2731, metadata !748), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2732, metadata !748), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2664, metadata !748) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2665, metadata !748) #10, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2666, metadata !748) #10, !dbg !2740
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2741
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2667, metadata !748) #10, !dbg !2742
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2673, metadata !748) #10, !dbg !2743
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2744
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2744
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2668, metadata !748) #10, !dbg !2733
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2733
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2733
  %7 = icmp eq i32 %0, 10, !dbg !2745
  br i1 %7, label %8, label %9, !dbg !2746

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2747, !noalias !2748
  unreachable, !dbg !2747

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2733
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2751
  store i32 %0, i32* %10, align 8, !dbg !2751, !alias.scope !2748
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2751
  %12 = bitcast i32* %11 to i8*, !dbg !2751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2667, metadata !748) #10, !dbg !2742
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2754
  ret i8* %13, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2756 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2668, metadata !2674), !dbg !2763
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !748), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2761, metadata !748), !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2762, metadata !748), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2701, metadata !748) #10, !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2702, metadata !748) #10, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !748) #10, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2704, metadata !748) #10, !dbg !2772
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2773
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2705, metadata !748) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2673, metadata !748) #10, !dbg !2775
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2776
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2668, metadata !748) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2763
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2763
  %8 = icmp eq i32 %0, 10, !dbg !2777
  br i1 %8, label %9, label %10, !dbg !2778

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2779, !noalias !2780
  unreachable, !dbg !2779

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2763
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2783
  store i32 %0, i32* %11, align 8, !dbg !2783, !alias.scope !2780
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2783
  %13 = bitcast i32* %12 to i8*, !dbg !2783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2783
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2784
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2705, metadata !748) #10, !dbg !2774
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2786
  ret i8* %14, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2788 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !748), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2793, metadata !748), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2794, metadata !748), !dbg !2798
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2799
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2800, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2795, metadata !748), !dbg !2802
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1543, metadata !748), !dbg !2803
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1544, metadata !748), !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1545, metadata !748), !dbg !2806
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1546, metadata !748), !dbg !2807
  %6 = lshr i8 %2, 5, !dbg !2808
  %7 = zext i8 %6 to i64, !dbg !2808
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2809
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1547, metadata !748), !dbg !2810
  %9 = and i8 %2, 31, !dbg !2811
  %10 = zext i8 %9 to i32, !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1549, metadata !748), !dbg !2813
  %11 = load i32, i32* %8, align 4, !dbg !2814, !tbaa !851
  %12 = lshr i32 %11, %10, !dbg !2815
  %13 = and i32 %12, 1, !dbg !2816
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1550, metadata !748), !dbg !2817
  %14 = xor i32 %13, 1, !dbg !2818
  %15 = shl i32 %14, %10, !dbg !2819
  %16 = xor i32 %15, %11, !dbg !2820
  store i32 %16, i32* %8, align 4, !dbg !2820, !tbaa !851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2795, metadata !748), !dbg !2802
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2821
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2822
  ret i8* %17, !dbg !2823
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2824 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !748), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2829, metadata !748), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !748) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2793, metadata !748) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2794, metadata !748) #10, !dbg !2835
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2836
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2837, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2795, metadata !748) #10, !dbg !2838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1543, metadata !748) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1544, metadata !748) #10, !dbg !2841
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1545, metadata !748) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1546, metadata !748) #10, !dbg !2843
  %5 = lshr i8 %1, 5, !dbg !2844
  %6 = zext i8 %5 to i64, !dbg !2844
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1547, metadata !748) #10, !dbg !2846
  %8 = and i8 %1, 31, !dbg !2847
  %9 = zext i8 %8 to i32, !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1549, metadata !748) #10, !dbg !2849
  %10 = load i32, i32* %7, align 4, !dbg !2850, !tbaa !851
  %11 = lshr i32 %10, %9, !dbg !2851
  %12 = and i32 %11, 1, !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1550, metadata !748) #10, !dbg !2853
  %13 = xor i32 %12, 1, !dbg !2854
  %14 = shl i32 %13, %9, !dbg !2855
  %15 = xor i32 %14, %10, !dbg !2856
  store i32 %15, i32* %7, align 4, !dbg !2856, !tbaa !851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2795, metadata !748) #10, !dbg !2838
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2858
  ret i8* %16, !dbg !2859
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2860 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !748), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !748) #10, !dbg !2864
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2829, metadata !748) #10, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !748) #10, !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2793, metadata !748) #10, !dbg !2869
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2794, metadata !748) #10, !dbg !2870
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2871
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2872, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2795, metadata !748) #10, !dbg !2873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1543, metadata !748) #10, !dbg !2874
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1544, metadata !748) #10, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1545, metadata !748) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1546, metadata !748) #10, !dbg !2878
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1547, metadata !748) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1549, metadata !748) #10, !dbg !2881
  %5 = load i32, i32* %4, align 4, !dbg !2882, !tbaa !851
  %6 = or i32 %5, 67108864, !dbg !2883
  store i32 %6, i32* %4, align 4, !dbg !2883, !tbaa !851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2795, metadata !748) #10, !dbg !2873
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2884
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2885
  ret i8* %7, !dbg !2886
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2887 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2889, metadata !748), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2890, metadata !748), !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !748) #10, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2793, metadata !748) #10, !dbg !2895
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2794, metadata !748) #10, !dbg !2896
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2897
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2898, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2795, metadata !748) #10, !dbg !2899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1543, metadata !748) #10, !dbg !2900
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1544, metadata !748) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1545, metadata !748) #10, !dbg !2903
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1546, metadata !748) #10, !dbg !2904
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2905
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1547, metadata !748) #10, !dbg !2906
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1549, metadata !748) #10, !dbg !2907
  %6 = load i32, i32* %5, align 4, !dbg !2908, !tbaa !851
  %7 = or i32 %6, 67108864, !dbg !2909
  store i32 %7, i32* %5, align 4, !dbg !2909, !tbaa !851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2795, metadata !748) #10, !dbg !2899
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2911
  ret i8* %8, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2913 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2668, metadata !2674), !dbg !2919
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2915, metadata !748), !dbg !2921
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2916, metadata !748), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2917, metadata !748), !dbg !2923
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2924
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2673, metadata !748) #10, !dbg !2925
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2926
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2926
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2668, metadata !748) #10, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !2684) #10, !dbg !2919
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2919
  %9 = icmp eq i32 %1, 10, !dbg !2927
  br i1 %9, label %10, label %11, !dbg !2928

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2929, !noalias !2930
  unreachable, !dbg !2929

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2668, metadata !2684) #10, !dbg !2919
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2934
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2935
  store i32 %1, i32* %13, align 8, !dbg !2935
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2935
  %15 = bitcast i32* %14 to i8*, !dbg !2935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2918, metadata !748), !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1543, metadata !748), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1544, metadata !748), !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1545, metadata !748), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1546, metadata !748), !dbg !2941
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2942
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1547, metadata !748), !dbg !2943
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1549, metadata !748), !dbg !2944
  %17 = load i32, i32* %16, align 4, !dbg !2945, !tbaa !851
  %18 = or i32 %17, 67108864, !dbg !2946
  store i32 %18, i32* %16, align 4, !dbg !2946, !tbaa !851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2918, metadata !748), !dbg !2936
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2948
  ret i8* %19, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2950 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2954, metadata !748), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2955, metadata !748), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2956, metadata !748), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2957, metadata !748), !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2962, metadata !748) #10, !dbg !2972
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2967, metadata !748) #10, !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2968, metadata !748) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2969, metadata !748) #10, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2970, metadata !748) #10, !dbg !2977
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2979, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2971, metadata !748) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1592, metadata !748) #10, !dbg !2981
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1593, metadata !748) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1594, metadata !748) #10, !dbg !2984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1592, metadata !748) #10, !dbg !2981
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1592, metadata !748) #10, !dbg !2981
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2985
  store i32 10, i32* %7, align 8, !dbg !2986, !tbaa !1524
  %8 = icmp ne i8* %1, null, !dbg !2987
  %9 = icmp ne i8* %2, null, !dbg !2988
  %10 = and i1 %8, %9, !dbg !2989
  br i1 %10, label %12, label %11, !dbg !2989

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2990
  unreachable, !dbg !2990

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2991
  store i8* %1, i8** %13, align 8, !dbg !2992, !tbaa !1610
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2993
  store i8* %2, i8** %14, align 8, !dbg !2994, !tbaa !1613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2971, metadata !748) #10, !dbg !2980
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2995
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2996
  ret i8* %15, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2963 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2962, metadata !748), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2967, metadata !748), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2968, metadata !748), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2969, metadata !748), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2970, metadata !748), !dbg !3002
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3004, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2971, metadata !748), !dbg !3005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1592, metadata !748) #10, !dbg !3006
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1593, metadata !748) #10, !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1594, metadata !748) #10, !dbg !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1592, metadata !748) #10, !dbg !3006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1592, metadata !748) #10, !dbg !3006
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3010
  store i32 10, i32* %8, align 8, !dbg !3011, !tbaa !1524
  %9 = icmp ne i8* %1, null, !dbg !3012
  %10 = icmp ne i8* %2, null, !dbg !3013
  %11 = and i1 %9, %10, !dbg !3014
  br i1 %11, label %13, label %12, !dbg !3014

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3015
  unreachable, !dbg !3015

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3016
  store i8* %1, i8** %14, align 8, !dbg !3017, !tbaa !1610
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3018
  store i8* %2, i8** %15, align 8, !dbg !3019, !tbaa !1613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2971, metadata !748), !dbg !3005
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3020
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3021
  ret i8* %16, !dbg !3022
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3023 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3027, metadata !748), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3028, metadata !748), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3029, metadata !748), !dbg !3032
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2954, metadata !748) #10, !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2955, metadata !748) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2956, metadata !748) #10, !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2957, metadata !748) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2962, metadata !748) #10, !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2967, metadata !748) #10, !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !748) #10, !dbg !3041
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2969, metadata !748) #10, !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2970, metadata !748) #10, !dbg !3043
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3045, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2971, metadata !748) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1592, metadata !748) #10, !dbg !3047
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1593, metadata !748) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1594, metadata !748) #10, !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1592, metadata !748) #10, !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1592, metadata !748) #10, !dbg !3047
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3051
  store i32 10, i32* %6, align 8, !dbg !3052, !tbaa !1524
  %7 = icmp ne i8* %0, null, !dbg !3053
  %8 = icmp ne i8* %1, null, !dbg !3054
  %9 = and i1 %7, %8, !dbg !3055
  br i1 %9, label %11, label %10, !dbg !3055

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3056
  unreachable, !dbg !3056

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3057
  store i8* %0, i8** %12, align 8, !dbg !3058, !tbaa !1610
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3059
  store i8* %1, i8** %13, align 8, !dbg !3060, !tbaa !1613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2971, metadata !748) #10, !dbg !3046
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3061
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3062
  ret i8* %14, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3064 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !748), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3069, metadata !748), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !748), !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3071, metadata !748), !dbg !3075
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2962, metadata !748) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2967, metadata !748) #10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !748) #10, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2969, metadata !748) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2970, metadata !748) #10, !dbg !3081
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3083, !tbaa.struct !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2971, metadata !748) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1592, metadata !748) #10, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1593, metadata !748) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1594, metadata !748) #10, !dbg !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1592, metadata !748) #10, !dbg !3085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1592, metadata !748) #10, !dbg !3085
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3089
  store i32 10, i32* %7, align 8, !dbg !3090, !tbaa !1524
  %8 = icmp ne i8* %0, null, !dbg !3091
  %9 = icmp ne i8* %1, null, !dbg !3092
  %10 = and i1 %8, %9, !dbg !3093
  br i1 %10, label %12, label %11, !dbg !3093

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3094
  unreachable, !dbg !3094

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3095
  store i8* %0, i8** %13, align 8, !dbg !3096, !tbaa !1610
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3097
  store i8* %1, i8** %14, align 8, !dbg !3098, !tbaa !1613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2971, metadata !748) #10, !dbg !3084
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3100
  ret i8* %15, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3102 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3106, metadata !748), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3107, metadata !748), !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3108, metadata !748), !dbg !3111
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3112
  ret i8* %4, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3114 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3118, metadata !748), !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3119, metadata !748), !dbg !3121
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !748) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3107, metadata !748) #10, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3108, metadata !748) #10, !dbg !3125
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3126
  ret i8* %3, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3128 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3132, metadata !748), !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3133, metadata !748), !dbg !3135
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3106, metadata !748) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3107, metadata !748) #10, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3108, metadata !748) #10, !dbg !3139
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3140
  ret i8* %3, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3146, metadata !748), !dbg !3147
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3132, metadata !748) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3133, metadata !748) #10, !dbg !3150
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !748) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3107, metadata !748) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3108, metadata !748) #10, !dbg !3154
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3155
  ret i8* %2, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @parse_user_spec(i8*, i32* nocapture, i32*, i8**, i8**) local_unnamed_addr #6 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3161, metadata !748), !dbg !3171
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3162, metadata !748), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !3163, metadata !748), !dbg !3173
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3164, metadata !748), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3165, metadata !748), !dbg !3175
  %6 = icmp eq i32* %2, null, !dbg !3176
  br i1 %6, label %9, label %7, !dbg !3176

; <label>:7:                                      ; preds = %5
  %8 = tail call i8* @strchr(i8* %0, i32 58) #14, !dbg !3177
  br label %9, !dbg !3176

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3166, metadata !748), !dbg !3178
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3167, metadata !748), !dbg !3180
  %12 = icmp ne i32* %2, null, !dbg !3181
  %13 = icmp eq i8* %10, null, !dbg !3182
  %14 = and i1 %12, %13, !dbg !3183
  %15 = icmp ne i8* %11, null, !dbg !3184
  %16 = and i1 %14, %15, !dbg !3183
  br i1 %16, label %17, label %24, !dbg !3183

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @strchr(i8* %0, i32 46) #14, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3168, metadata !748), !dbg !3186
  %19 = icmp eq i8* %18, null, !dbg !3187
  br i1 %19, label %24, label %20, !dbg !3189

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3190
  %22 = icmp eq i8* %21, null, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3167, metadata !748), !dbg !3180
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3191
  ret i8* %23, !dbg !3191

; <label>:24:                                     ; preds = %17, %9
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3167, metadata !748), !dbg !3180
  ret i8* %11, !dbg !3192
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8*, i8*, i32* nocapture, i32*, i8**, i8**) unnamed_addr #6 !dbg !589 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !597, metadata !748), !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !598, metadata !748), !dbg !3194
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !599, metadata !748), !dbg !3195
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !600, metadata !748), !dbg !3196
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !601, metadata !748), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !602, metadata !748), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !627, metadata !748), !dbg !3199
  %10 = load i32, i32* %2, align 4, !dbg !3200, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !628, metadata !748), !dbg !3201
  %11 = icmp ne i32* %3, null, !dbg !3202
  br i1 %11, label %12, label %14, !dbg !3202

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3203, !tbaa !851
  br label %14, !dbg !3202

; <label>:14:                                     ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !629, metadata !748), !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !603, metadata !748), !dbg !3205
  %16 = icmp ne i8** %4, null, !dbg !3206
  br i1 %16, label %17, label %18, !dbg !3208

; <label>:17:                                     ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3209, !tbaa !755
  br label %18, !dbg !3210

; <label>:18:                                     ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3211
  br i1 %19, label %20, label %21, !dbg !3213

; <label>:20:                                     ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3214, !tbaa !755
  br label %21, !dbg !3215

; <label>:21:                                     ; preds = %20, %18
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !625, metadata !748), !dbg !3216
  %22 = icmp eq i8* %1, null, !dbg !3217
  br i1 %22, label %23, label %28, !dbg !3218

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3219, !tbaa !893
  %25 = icmp eq i8 %24, 0, !dbg !3219
  br i1 %25, label %138, label %26, !dbg !3222

; <label>:26:                                     ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #10, !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !625, metadata !748), !dbg !3216
  br label %43, !dbg !3224

; <label>:28:                                     ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3225
  %30 = ptrtoint i8* %0 to i64, !dbg !3225
  %31 = sub i64 %29, %30, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !630, metadata !748), !dbg !3226
  %32 = icmp eq i64 %31, 0, !dbg !3227
  br i1 %32, label %37, label %33, !dbg !3229

; <label>:33:                                     ; preds = %28
  %34 = add i64 %31, 1, !dbg !3230
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #10, !dbg !3232
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !625, metadata !748), !dbg !3216
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3233
  store i8 0, i8* %36, align 1, !dbg !3234, !tbaa !893
  br label %37, !dbg !3235

; <label>:37:                                     ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !625, metadata !748), !dbg !3216
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3236
  %40 = load i8, i8* %39, align 1, !dbg !3237, !tbaa !893
  %41 = icmp eq i8 %40, 0, !dbg !3238
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3239
  br label %43, !dbg !3239

; <label>:43:                                     ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !626, metadata !748), !dbg !3240
  %46 = icmp eq i8* %44, null, !dbg !3241
  br i1 %46, label %97, label %47, !dbg !3242

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3243, !tbaa !893
  %49 = icmp eq i8 %48, 43, !dbg !3244
  br i1 %49, label %53, label %50, !dbg !3243

; <label>:50:                                     ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3245
  tail call void @llvm.dbg.value(metadata %struct.passwd* %51, i64 0, metadata !604, metadata !748), !dbg !3246
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3247
  br i1 %52, label %53, label %71, !dbg !3248

; <label>:53:                                     ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3249
  %55 = icmp eq i8* %45, null, !dbg !3250
  %56 = and i1 %54, %55, !dbg !3251
  br i1 %56, label %92, label %57, !dbg !3252

; <label>:57:                                     ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #10, !dbg !3253
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !638, metadata !748), !dbg !3254
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.87, i64 0, i64 0)) #10, !dbg !3255
  %60 = icmp eq i32 %59, 0, !dbg !3257
  %61 = load i64, i64* %7, align 8, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !638, metadata !748), !dbg !3254
  %62 = icmp ult i64 %61, 4294967296, !dbg !3259
  %63 = and i1 %60, %62, !dbg !3260
  br i1 %63, label %64, label %67, !dbg !3260

; <label>:64:                                     ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3261
  %66 = icmp eq i32 %65, -1, !dbg !3262
  br i1 %66, label %67, label %68, !dbg !3263

; <label>:67:                                     ; preds = %64, %57
  br label %68

; <label>:68:                                     ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ]
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i64 0, i64 0), %67 ], [ null, %64 ]
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !603, metadata !748), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !628, metadata !748), !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #10, !dbg !3264
  br label %92

; <label>:71:                                     ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3265
  %73 = load i32, i32* %72, align 8, !dbg !3265, !tbaa !968
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !628, metadata !748), !dbg !3201
  %74 = icmp eq i8* %45, null, !dbg !3266
  %75 = icmp ne i8* %1, null, !dbg !3267
  %76 = and i1 %75, %74, !dbg !3268
  br i1 %76, label %77, label %92, !dbg !3268

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3269
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %78) #10, !dbg !3269
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !641, metadata !748), !dbg !3270
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3271
  %80 = load i32, i32* %79, align 4, !dbg !3271, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !629, metadata !748), !dbg !3204
  %81 = tail call %struct.group* @getgrgid(i32 %80) #10, !dbg !3272
  tail call void @llvm.dbg.value(metadata %struct.group* %81, i64 0, metadata !616, metadata !748), !dbg !3273
  %82 = icmp eq %struct.group* %81, null, !dbg !3274
  br i1 %82, label %86, label %83, !dbg !3274

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3275
  %85 = load i8*, i8** %84, align 8, !dbg !3275, !tbaa !1074
  br label %89, !dbg !3274

; <label>:86:                                     ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3276
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #10, !dbg !3277
  br label %89, !dbg !3274

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3274
  %91 = call noalias i8* @xstrdup(i8* %90) #10, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !627, metadata !748), !dbg !3199
  call void @endgrent() #10, !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %78) #10, !dbg !3280
  br label %92, !dbg !3281

; <label>:92:                                     ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ]
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ]
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ]
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.89, i64 0, i64 0), %53 ], [ %70, %68 ]
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !603, metadata !748), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !629, metadata !748), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !628, metadata !748), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !627, metadata !748), !dbg !3199
  call void @endpwent() #10, !dbg !3282
  br label %97, !dbg !3283

; <label>:97:                                     ; preds = %43, %92
  %98 = phi i8* [ %44, %92 ], [ null, %43 ]
  %99 = phi i8* [ %93, %92 ], [ null, %43 ]
  %100 = phi i32 [ %94, %92 ], [ %10, %43 ]
  %101 = phi i32 [ %95, %92 ], [ %15, %43 ]
  %102 = phi i8* [ %96, %92 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !603, metadata !748), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !629, metadata !748), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !628, metadata !748), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !627, metadata !748), !dbg !3199
  %103 = icmp ne i8* %45, null, !dbg !3284
  %104 = icmp eq i8* %102, null, !dbg !3285
  %105 = and i1 %103, %104, !dbg !3286
  br i1 %105, label %106, label %133, !dbg !3286

; <label>:106:                                    ; preds = %97
  %107 = load i8, i8* %45, align 1, !dbg !3287, !tbaa !893
  %108 = icmp eq i8 %107, 43, !dbg !3288
  br i1 %108, label %112, label %109, !dbg !3287

; <label>:109:                                    ; preds = %106
  %110 = call %struct.group* @getgrnam(i8* nonnull %45) #10, !dbg !3289
  call void @llvm.dbg.value(metadata %struct.group* %110, i64 0, metadata !616, metadata !748), !dbg !3273
  %111 = icmp eq %struct.group* %110, null, !dbg !3290
  br i1 %111, label %112, label %126, !dbg !3291

; <label>:112:                                    ; preds = %106, %109
  %113 = bitcast i64* %9 to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !645, metadata !748), !dbg !3293
  %114 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.87, i64 0, i64 0)) #10, !dbg !3294
  %115 = icmp eq i32 %114, 0, !dbg !3296
  %116 = load i64, i64* %9, align 8, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !645, metadata !748), !dbg !3293
  %117 = icmp ult i64 %116, 4294967296, !dbg !3298
  %118 = and i1 %115, %117, !dbg !3299
  br i1 %118, label %119, label %122, !dbg !3299

; <label>:119:                                    ; preds = %112
  %120 = trunc i64 %116 to i32, !dbg !3300
  %121 = icmp eq i32 %120, -1, !dbg !3301
  br i1 %121, label %122, label %123, !dbg !3302

; <label>:122:                                    ; preds = %119, %112
  br label %123

; <label>:123:                                    ; preds = %119, %122
  %124 = phi i32 [ %101, %122 ], [ %120, %119 ]
  %125 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.90, i64 0, i64 0), %122 ], [ null, %119 ]
  call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !603, metadata !748), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !629, metadata !748), !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #10, !dbg !3303
  br label %129, !dbg !3304

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds %struct.group, %struct.group* %110, i64 0, i32 2, !dbg !3305
  %128 = load i32, i32* %127, align 8, !dbg !3305, !tbaa !3306
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !629, metadata !748), !dbg !3204
  br label %129

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %126 ]
  %131 = phi i8* [ %125, %123 ], [ null, %126 ]
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !603, metadata !748), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !629, metadata !748), !dbg !3204
  call void @endgrent() #10, !dbg !3307
  %132 = call noalias i8* @xstrdup(i8* nonnull %45) #10, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !627, metadata !748), !dbg !3199
  br label %133, !dbg !3309

; <label>:133:                                    ; preds = %129, %97
  %134 = phi i8* [ %132, %129 ], [ %99, %97 ]
  %135 = phi i32 [ %130, %129 ], [ %101, %97 ]
  %136 = phi i8* [ %131, %129 ], [ %102, %97 ]
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !603, metadata !748), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !629, metadata !748), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !627, metadata !748), !dbg !3199
  %137 = icmp eq i8* %136, null, !dbg !3310
  br i1 %137, label %138, label %149, !dbg !3312

; <label>:138:                                    ; preds = %23, %133
  %139 = phi i32 [ %135, %133 ], [ %15, %23 ]
  %140 = phi i8* [ %134, %133 ], [ null, %23 ]
  %141 = phi i8* [ %98, %133 ], [ null, %23 ]
  %142 = phi i32 [ %100, %133 ], [ %10, %23 ]
  store i32 %142, i32* %2, align 4, !dbg !3313, !tbaa !851
  br i1 %11, label %143, label %144, !dbg !3315

; <label>:143:                                    ; preds = %138
  store i32 %139, i32* %3, align 4, !dbg !3316, !tbaa !851
  br label %144, !dbg !3318

; <label>:144:                                    ; preds = %143, %138
  br i1 %16, label %145, label %146, !dbg !3319

; <label>:145:                                    ; preds = %144
  store i8* %141, i8** %4, align 8, !dbg !3320, !tbaa !755
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !625, metadata !748), !dbg !3216
  br label %146, !dbg !3323

; <label>:146:                                    ; preds = %145, %144
  %147 = phi i8* [ null, %145 ], [ %141, %144 ]
  call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !625, metadata !748), !dbg !3216
  br i1 %19, label %148, label %149, !dbg !3324

; <label>:148:                                    ; preds = %146
  store i8* %140, i8** %5, align 8, !dbg !3325, !tbaa !755
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !627, metadata !748), !dbg !3199
  br label %149, !dbg !3328

; <label>:149:                                    ; preds = %146, %148, %133
  %150 = phi i1 [ true, %148 ], [ true, %146 ], [ false, %133 ]
  %151 = phi i8* [ null, %148 ], [ null, %146 ], [ %136, %133 ]
  %152 = phi i8* [ %147, %148 ], [ %147, %146 ], [ %98, %133 ]
  %153 = phi i8* [ null, %148 ], [ %140, %146 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !627, metadata !748), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !625, metadata !748), !dbg !3216
  call void @free(i8* %152) #10, !dbg !3329
  call void @free(i8* %153) #10, !dbg !3330
  br i1 %150, label %156, label %154, !dbg !3331

; <label>:154:                                    ; preds = %149
  %155 = call i8* @dcgettext(i8* null, i8* nonnull %151, i32 5) #10, !dbg !3332
  br label %156, !dbg !3331

; <label>:156:                                    ; preds = %149, %154
  %157 = phi i8* [ %155, %154 ], [ null, %149 ], !dbg !3331
  ret i8* %157, !dbg !3333
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

declare %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3334 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3393, metadata !748), !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3394, metadata !748), !dbg !3400
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3395, metadata !748), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3396, metadata !748), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3397, metadata !748), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3398, metadata !748), !dbg !3404
  %7 = icmp eq i8* %1, null, !dbg !3405
  br i1 %7, label %10, label %8, !dbg !3407

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3408
  br label %12, !dbg !3408

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3409
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #10, !dbg !3410
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3410
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.94, i64 0, i64 0), i32 5) #10, !dbg !3411
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3411
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
  ], !dbg !3412

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3413
  unreachable, !dbg !3413

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #10, !dbg !3415
  %20 = load i8*, i8** %4, align 8, !dbg !3415, !tbaa !755
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3415
  br label %146, !dbg !3416

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #10, !dbg !3417
  %24 = load i8*, i8** %4, align 8, !dbg !3417, !tbaa !755
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3417
  %26 = load i8*, i8** %25, align 8, !dbg !3417, !tbaa !755
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3417
  br label %146, !dbg !3418

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #10, !dbg !3419
  %30 = load i8*, i8** %4, align 8, !dbg !3419, !tbaa !755
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3419
  %32 = load i8*, i8** %31, align 8, !dbg !3419, !tbaa !755
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3419
  %34 = load i8*, i8** %33, align 8, !dbg !3419, !tbaa !755
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3419
  br label %146, !dbg !3420

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #10, !dbg !3421
  %38 = load i8*, i8** %4, align 8, !dbg !3421, !tbaa !755
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3421
  %40 = load i8*, i8** %39, align 8, !dbg !3421, !tbaa !755
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3421
  %42 = load i8*, i8** %41, align 8, !dbg !3421, !tbaa !755
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3421
  %44 = load i8*, i8** %43, align 8, !dbg !3421, !tbaa !755
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3421
  br label %146, !dbg !3422

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #10, !dbg !3423
  %48 = load i8*, i8** %4, align 8, !dbg !3423, !tbaa !755
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3423
  %50 = load i8*, i8** %49, align 8, !dbg !3423, !tbaa !755
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3423
  %52 = load i8*, i8** %51, align 8, !dbg !3423, !tbaa !755
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3423
  %54 = load i8*, i8** %53, align 8, !dbg !3423, !tbaa !755
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3423
  %56 = load i8*, i8** %55, align 8, !dbg !3423, !tbaa !755
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3423
  br label %146, !dbg !3424

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #10, !dbg !3425
  %60 = load i8*, i8** %4, align 8, !dbg !3425, !tbaa !755
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3425
  %62 = load i8*, i8** %61, align 8, !dbg !3425, !tbaa !755
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3425
  %64 = load i8*, i8** %63, align 8, !dbg !3425, !tbaa !755
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3425
  %66 = load i8*, i8** %65, align 8, !dbg !3425, !tbaa !755
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3425
  %68 = load i8*, i8** %67, align 8, !dbg !3425, !tbaa !755
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3425
  %70 = load i8*, i8** %69, align 8, !dbg !3425, !tbaa !755
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3425
  br label %146, !dbg !3426

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #10, !dbg !3427
  %74 = load i8*, i8** %4, align 8, !dbg !3427, !tbaa !755
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3427
  %76 = load i8*, i8** %75, align 8, !dbg !3427, !tbaa !755
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3427
  %78 = load i8*, i8** %77, align 8, !dbg !3427, !tbaa !755
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3427
  %80 = load i8*, i8** %79, align 8, !dbg !3427, !tbaa !755
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3427
  %82 = load i8*, i8** %81, align 8, !dbg !3427, !tbaa !755
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3427
  %84 = load i8*, i8** %83, align 8, !dbg !3427, !tbaa !755
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3427
  %86 = load i8*, i8** %85, align 8, !dbg !3427, !tbaa !755
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3427
  br label %146, !dbg !3428

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #10, !dbg !3429
  %90 = load i8*, i8** %4, align 8, !dbg !3429, !tbaa !755
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3429
  %92 = load i8*, i8** %91, align 8, !dbg !3429, !tbaa !755
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3429
  %94 = load i8*, i8** %93, align 8, !dbg !3429, !tbaa !755
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3429
  %96 = load i8*, i8** %95, align 8, !dbg !3429, !tbaa !755
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3429
  %98 = load i8*, i8** %97, align 8, !dbg !3429, !tbaa !755
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3429
  %100 = load i8*, i8** %99, align 8, !dbg !3429, !tbaa !755
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3429
  %102 = load i8*, i8** %101, align 8, !dbg !3429, !tbaa !755
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3429
  %104 = load i8*, i8** %103, align 8, !dbg !3429, !tbaa !755
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3429
  br label %146, !dbg !3430

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #10, !dbg !3431
  %108 = load i8*, i8** %4, align 8, !dbg !3431, !tbaa !755
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3431
  %110 = load i8*, i8** %109, align 8, !dbg !3431, !tbaa !755
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3431
  %112 = load i8*, i8** %111, align 8, !dbg !3431, !tbaa !755
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3431
  %114 = load i8*, i8** %113, align 8, !dbg !3431, !tbaa !755
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3431
  %116 = load i8*, i8** %115, align 8, !dbg !3431, !tbaa !755
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3431
  %118 = load i8*, i8** %117, align 8, !dbg !3431, !tbaa !755
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3431
  %120 = load i8*, i8** %119, align 8, !dbg !3431, !tbaa !755
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3431
  %122 = load i8*, i8** %121, align 8, !dbg !3431, !tbaa !755
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3431
  %124 = load i8*, i8** %123, align 8, !dbg !3431, !tbaa !755
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3431
  br label %146, !dbg !3432

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #10, !dbg !3433
  %128 = load i8*, i8** %4, align 8, !dbg !3433, !tbaa !755
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3433
  %130 = load i8*, i8** %129, align 8, !dbg !3433, !tbaa !755
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3433
  %132 = load i8*, i8** %131, align 8, !dbg !3433, !tbaa !755
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3433
  %134 = load i8*, i8** %133, align 8, !dbg !3433, !tbaa !755
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3433
  %136 = load i8*, i8** %135, align 8, !dbg !3433, !tbaa !755
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3433
  %138 = load i8*, i8** %137, align 8, !dbg !3433, !tbaa !755
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3433
  %140 = load i8*, i8** %139, align 8, !dbg !3433, !tbaa !755
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3433
  %142 = load i8*, i8** %141, align 8, !dbg !3433, !tbaa !755
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3433
  %144 = load i8*, i8** %143, align 8, !dbg !3433, !tbaa !755
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3433
  br label %146, !dbg !3434

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3436 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3440, metadata !748), !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3441, metadata !748), !dbg !3447
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3442, metadata !748), !dbg !3448
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3443, metadata !748), !dbg !3449
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3444, metadata !748), !dbg !3450
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3445, metadata !748), !dbg !3451
  br label %6, !dbg !3452

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3445, metadata !748), !dbg !3451
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3454
  %9 = load i8*, i8** %8, align 8, !dbg !3454, !tbaa !755
  %10 = icmp eq i8* %9, null, !dbg !3456
  %11 = add i64 %7, 1, !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3445, metadata !748), !dbg !3451
  br i1 %10, label %12, label %6, !dbg !3456, !llvm.loop !3458

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3460
  ret void, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3462 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3473, metadata !748), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3474, metadata !748), !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3475, metadata !748), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3476, metadata !748), !dbg !3484
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3477, metadata !748), !dbg !3485
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3486
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3479, metadata !748), !dbg !3487
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %11 = load i32, i32* %8, align 8, !dbg !3489
  %12 = icmp ult i32 %11, 41, !dbg !3489
  br i1 %12, label %13, label %18, !dbg !3489

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3489
  %15 = sext i32 %11 to i64, !dbg !3489
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3489
  %17 = add i32 %11, 8, !dbg !3489
  store i32 %17, i32* %8, align 8, !dbg !3489
  br label %21, !dbg !3489

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3489
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3489
  store i8* %20, i8** %10, align 8, !dbg !3489
  br label %21, !dbg !3489

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3489
  %25 = load i8*, i8** %24, align 8, !dbg !3489
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3492
  store i8* %25, i8** %26, align 16, !dbg !3493, !tbaa !755
  %27 = icmp eq i8* %25, null, !dbg !3494
  br i1 %27, label %30, label %28, !dbg !3495

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %29 = icmp ult i32 %22, 41, !dbg !3489
  br i1 %29, label %35, label %32, !dbg !3489

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3496
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3497
  ret void, !dbg !3497

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3489
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3489
  store i8* %34, i8** %10, align 8, !dbg !3489
  br label %40, !dbg !3489

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3489
  %37 = sext i32 %22 to i64, !dbg !3489
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3489
  %39 = add i32 %22, 8, !dbg !3489
  store i32 %39, i32* %8, align 8, !dbg !3489
  br label %40, !dbg !3489

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3489
  %44 = load i8*, i8** %43, align 8, !dbg !3489
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3492
  store i8* %44, i8** %45, align 8, !dbg !3493, !tbaa !755
  %46 = icmp eq i8* %44, null, !dbg !3494
  br i1 %46, label %30, label %47, !dbg !3495

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %48 = icmp ult i32 %41, 41, !dbg !3489
  br i1 %48, label %52, label %49, !dbg !3489

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3489
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3489
  store i8* %51, i8** %10, align 8, !dbg !3489
  br label %57, !dbg !3489

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3489
  %54 = sext i32 %41 to i64, !dbg !3489
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3489
  %56 = add i32 %41, 8, !dbg !3489
  store i32 %56, i32* %8, align 8, !dbg !3489
  br label %57, !dbg !3489

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3489
  %61 = load i8*, i8** %60, align 8, !dbg !3489
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3492
  store i8* %61, i8** %62, align 16, !dbg !3493, !tbaa !755
  %63 = icmp eq i8* %61, null, !dbg !3494
  br i1 %63, label %30, label %64, !dbg !3495

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %65 = icmp ult i32 %58, 41, !dbg !3489
  br i1 %65, label %69, label %66, !dbg !3489

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3489
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3489
  store i8* %68, i8** %10, align 8, !dbg !3489
  br label %74, !dbg !3489

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3489
  %71 = sext i32 %58 to i64, !dbg !3489
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3489
  %73 = add i32 %58, 8, !dbg !3489
  store i32 %73, i32* %8, align 8, !dbg !3489
  br label %74, !dbg !3489

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3489
  %78 = load i8*, i8** %77, align 8, !dbg !3489
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3492
  store i8* %78, i8** %79, align 8, !dbg !3493, !tbaa !755
  %80 = icmp eq i8* %78, null, !dbg !3494
  br i1 %80, label %30, label %81, !dbg !3495

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %82 = icmp ult i32 %75, 41, !dbg !3489
  br i1 %82, label %86, label %83, !dbg !3489

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3489
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3489
  store i8* %85, i8** %10, align 8, !dbg !3489
  br label %91, !dbg !3489

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3489
  %88 = sext i32 %75 to i64, !dbg !3489
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3489
  %90 = add i32 %75, 8, !dbg !3489
  store i32 %90, i32* %8, align 8, !dbg !3489
  br label %91, !dbg !3489

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3489
  %95 = load i8*, i8** %94, align 8, !dbg !3489
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3492
  store i8* %95, i8** %96, align 16, !dbg !3493, !tbaa !755
  %97 = icmp eq i8* %95, null, !dbg !3494
  br i1 %97, label %30, label %98, !dbg !3495

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %99 = icmp ult i32 %92, 41, !dbg !3489
  br i1 %99, label %103, label %100, !dbg !3489

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3489
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3489
  store i8* %102, i8** %10, align 8, !dbg !3489
  br label %108, !dbg !3489

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3489
  %105 = sext i32 %92 to i64, !dbg !3489
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3489
  %107 = add i32 %92, 8, !dbg !3489
  store i32 %107, i32* %8, align 8, !dbg !3489
  br label %108, !dbg !3489

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3489
  %111 = load i8*, i8** %110, align 8, !dbg !3489
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3492
  store i8* %111, i8** %112, align 8, !dbg !3493, !tbaa !755
  %113 = icmp eq i8* %111, null, !dbg !3494
  br i1 %113, label %30, label %114, !dbg !3495

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %115 = load i8*, i8** %10, align 8, !dbg !3489
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3489
  store i8* %116, i8** %10, align 8, !dbg !3489
  %117 = bitcast i8* %115 to i8**, !dbg !3489
  %118 = load i8*, i8** %117, align 8, !dbg !3489
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3492
  store i8* %118, i8** %119, align 16, !dbg !3493, !tbaa !755
  %120 = icmp eq i8* %118, null, !dbg !3494
  br i1 %120, label %30, label %121, !dbg !3495

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %122 = load i8*, i8** %10, align 8, !dbg !3489
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3489
  store i8* %123, i8** %10, align 8, !dbg !3489
  %124 = bitcast i8* %122 to i8**, !dbg !3489
  %125 = load i8*, i8** %124, align 8, !dbg !3489
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3492
  store i8* %125, i8** %126, align 8, !dbg !3493, !tbaa !755
  %127 = icmp eq i8* %125, null, !dbg !3494
  br i1 %127, label %30, label %128, !dbg !3495

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %129 = load i8*, i8** %10, align 8, !dbg !3489
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3489
  store i8* %130, i8** %10, align 8, !dbg !3489
  %131 = bitcast i8* %129 to i8**, !dbg !3489
  %132 = load i8*, i8** %131, align 8, !dbg !3489
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3492
  store i8* %132, i8** %133, align 16, !dbg !3493, !tbaa !755
  %134 = icmp eq i8* %132, null, !dbg !3494
  br i1 %134, label %30, label %135, !dbg !3495

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3478, metadata !748), !dbg !3488
  %136 = load i8*, i8** %10, align 8, !dbg !3489
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3489
  store i8* %137, i8** %10, align 8, !dbg !3489
  %138 = bitcast i8* %136 to i8**, !dbg !3489
  %139 = load i8*, i8** %138, align 8, !dbg !3489
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3492
  store i8* %139, i8** %140, align 8, !dbg !3493, !tbaa !755
  %141 = icmp eq i8* %139, null, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3478, metadata !748), !dbg !3488
  %142 = select i1 %141, i64 9, i64 10, !dbg !3495
  br label %30, !dbg !3495
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3498 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3502, metadata !748), !dbg !3513
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3503, metadata !748), !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3504, metadata !748), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3505, metadata !748), !dbg !3516
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3517
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3517
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3506, metadata !748), !dbg !3518
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3519
  call void @llvm.va_start(i8* nonnull %6), !dbg !3519
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3520
  call void @llvm.va_end(i8* nonnull %6), !dbg !3521
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3522
  ret void, !dbg !3522
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3523 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #10, !dbg !3524
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.108, i64 0, i64 0)) #10, !dbg !3524
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #10, !dbg !3525
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.111, i64 0, i64 0)) #10, !dbg !3525
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.112, i64 0, i64 0), i32 5) #10, !dbg !3526
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3526, !tbaa !755
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3526
  ret void, !dbg !3527
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3532, metadata !748), !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3533, metadata !748), !dbg !3535
  %3 = udiv i64 9223372036854775807, %1, !dbg !3536
  %4 = icmp ult i64 %3, %0, !dbg !3536
  br i1 %4, label %5, label %6, !dbg !3538

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3539
  unreachable, !dbg !3539

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3541, metadata !748) #10, !dbg !3548
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3547, metadata !748) #10, !dbg !3551
  %9 = icmp eq i8* %8, null, !dbg !3552
  %10 = icmp ne i64 %7, 0, !dbg !3554
  %11 = and i1 %10, %9, !dbg !3555
  br i1 %11, label %12, label %13, !dbg !3555

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3556
  unreachable, !dbg !3556

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3557
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3542 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3541, metadata !748), !dbg !3558
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3547, metadata !748), !dbg !3560
  %3 = icmp eq i8* %2, null, !dbg !3561
  %4 = icmp ne i64 %0, 0, !dbg !3562
  %5 = and i1 %4, %3, !dbg !3563
  br i1 %5, label %6, label %7, !dbg !3563

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3564
  unreachable, !dbg !3564

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3565
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3566 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !748), !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3571, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3572, metadata !748), !dbg !3575
  %4 = udiv i64 9223372036854775807, %2, !dbg !3576
  %5 = icmp ult i64 %4, %1, !dbg !3576
  br i1 %5, label %6, label %7, !dbg !3578

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3579
  unreachable, !dbg !3579

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3580
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3581, metadata !748) #10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3586, metadata !748) #10, !dbg !3589
  %9 = icmp eq i64 %8, 0, !dbg !3590
  %10 = icmp ne i8* %0, null, !dbg !3592
  %11 = and i1 %10, %9, !dbg !3593
  br i1 %11, label %12, label %13, !dbg !3593

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3594
  br label %19, !dbg !3596

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3597
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3581, metadata !748) #10, !dbg !3587
  %15 = icmp eq i8* %14, null, !dbg !3598
  %16 = icmp ne i64 %8, 0, !dbg !3600
  %17 = and i1 %16, %15, !dbg !3601
  br i1 %17, label %18, label %19, !dbg !3601

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3602
  unreachable, !dbg !3602

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3603
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3582 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3581, metadata !748), !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3586, metadata !748), !dbg !3605
  %3 = icmp eq i64 %1, 0, !dbg !3606
  %4 = icmp ne i8* %0, null, !dbg !3607
  %5 = and i1 %4, %3, !dbg !3608
  br i1 %5, label %6, label %7, !dbg !3608

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3609
  br label %13, !dbg !3610

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3611
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3581, metadata !748), !dbg !3604
  %9 = icmp eq i8* %8, null, !dbg !3612
  %10 = icmp ne i64 %1, 0, !dbg !3613
  %11 = and i1 %10, %9, !dbg !3614
  br i1 %11, label %12, label %13, !dbg !3614

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3615
  unreachable, !dbg !3615

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3616
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !667 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !672, metadata !748), !dbg !3617
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !673, metadata !748), !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !674, metadata !748), !dbg !3619
  %4 = load i64, i64* %1, align 8, !dbg !3620, !tbaa !2479
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !675, metadata !748), !dbg !3621
  %5 = icmp eq i8* %0, null, !dbg !3622
  br i1 %5, label %6, label %13, !dbg !3624

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3625
  br i1 %7, label %8, label %17, !dbg !3628

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !675, metadata !748), !dbg !3621
  %10 = icmp ugt i64 %2, 128, !dbg !3631
  %11 = zext i1 %10 to i64, !dbg !3631
  %12 = add nuw nsw i64 %9, %11, !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !675, metadata !748), !dbg !3621
  br label %17, !dbg !3633

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3634
  %15 = icmp ugt i64 %14, %4, !dbg !3637
  br i1 %15, label %20, label %16, !dbg !3638

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3639
  unreachable, !dbg !3639

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !675, metadata !748), !dbg !3621
  store i64 %18, i64* %1, align 8, !dbg !3640, !tbaa !2479
  %19 = mul i64 %18, %2, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3581, metadata !748) #10, !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3586, metadata !748) #10, !dbg !3644
  br label %27, !dbg !3645

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3646
  %22 = add i64 %4, 1, !dbg !3647
  %23 = add i64 %22, %21, !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !675, metadata !748), !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !675, metadata !748), !dbg !3621
  store i64 %23, i64* %1, align 8, !dbg !3640, !tbaa !2479
  %24 = mul i64 %23, %2, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3581, metadata !748) #10, !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3586, metadata !748) #10, !dbg !3644
  %25 = icmp eq i64 %24, 0, !dbg !3649
  br i1 %25, label %26, label %27, !dbg !3645

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3650
  br label %34, !dbg !3651

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3581, metadata !748) #10, !dbg !3642
  %30 = icmp eq i8* %29, null, !dbg !3653
  %31 = icmp ne i64 %28, 0, !dbg !3654
  %32 = and i1 %31, %30, !dbg !3655
  br i1 %32, label %33, label %34, !dbg !3655

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3656
  unreachable, !dbg !3656

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3657
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3658 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3660, metadata !748), !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3541, metadata !748) #10, !dbg !3662
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3664
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3547, metadata !748) #10, !dbg !3665
  %3 = icmp eq i8* %2, null, !dbg !3666
  %4 = icmp ne i64 %0, 0, !dbg !3667
  %5 = and i1 %4, %3, !dbg !3668
  br i1 %5, label %6, label %7, !dbg !3668

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3669
  unreachable, !dbg !3669

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3670
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3671 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3675, metadata !748), !dbg !3677
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3676, metadata !748), !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !672, metadata !748) #10, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !673, metadata !748) #10, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !674, metadata !748) #10, !dbg !3682
  %3 = load i64, i64* %1, align 8, !dbg !3683, !tbaa !2479
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !675, metadata !748) #10, !dbg !3684
  %4 = icmp eq i8* %0, null, !dbg !3685
  br i1 %4, label %5, label %8, !dbg !3686

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !675, metadata !748) #10, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !675, metadata !748) #10, !dbg !3684
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3688
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !675, metadata !748) #10, !dbg !3684
  store i64 %7, i64* %1, align 8, !dbg !3689, !tbaa !2479
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3581, metadata !748) #10, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3586, metadata !748) #10, !dbg !3692
  br label %17, !dbg !3693

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3694
  br i1 %9, label %11, label %10, !dbg !3695

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3696
  unreachable, !dbg !3696

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3697
  %13 = add i64 %3, 1, !dbg !3698
  %14 = add i64 %13, %12, !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !675, metadata !748) #10, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !675, metadata !748) #10, !dbg !3684
  store i64 %14, i64* %1, align 8, !dbg !3689, !tbaa !2479
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3581, metadata !748) #10, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3586, metadata !748) #10, !dbg !3692
  %15 = icmp eq i64 %14, 0, !dbg !3700
  br i1 %15, label %16, label %17, !dbg !3693

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3701
  br label %24, !dbg !3702

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3703
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3581, metadata !748) #10, !dbg !3690
  %20 = icmp eq i8* %19, null, !dbg !3704
  %21 = icmp ne i64 %18, 0, !dbg !3705
  %22 = and i1 %21, %20, !dbg !3706
  br i1 %22, label %23, label %24, !dbg !3706

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3707
  unreachable, !dbg !3707

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3708
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3711, metadata !748), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3541, metadata !748) #10, !dbg !3713
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3715
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3547, metadata !748) #10, !dbg !3716
  %3 = icmp eq i8* %2, null, !dbg !3717
  %4 = icmp ne i64 %0, 0, !dbg !3718
  %5 = and i1 %4, %3, !dbg !3719
  br i1 %5, label %6, label %7, !dbg !3719

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3720
  unreachable, !dbg !3720

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3721
  ret i8* %2, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3723 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3725, metadata !748), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3726, metadata !748), !dbg !3729
  %3 = udiv i64 9223372036854775807, %1, !dbg !3730
  %4 = icmp ult i64 %3, %0, !dbg !3730
  br i1 %4, label %8, label %5, !dbg !3732

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3733
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3727, metadata !748), !dbg !3734
  %7 = icmp eq i8* %6, null, !dbg !3735
  br i1 %7, label %8, label %9, !dbg !3736

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3737
  unreachable, !dbg !3737

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3738
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3739 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3745, metadata !748), !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3746, metadata !748), !dbg !3748
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3541, metadata !748) #10, !dbg !3749
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3547, metadata !748) #10, !dbg !3752
  %4 = icmp eq i8* %3, null, !dbg !3753
  %5 = icmp ne i64 %1, 0, !dbg !3754
  %6 = and i1 %5, %4, !dbg !3755
  br i1 %6, label %7, label %8, !dbg !3755

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3756
  unreachable, !dbg !3756

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3757
  ret i8* %3, !dbg !3758
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3761, metadata !748), !dbg !3762
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3763
  %3 = add i64 %2, 1, !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3745, metadata !748) #10, !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3746, metadata !748) #10, !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3541, metadata !748) #10, !dbg !3768
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3770
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3547, metadata !748) #10, !dbg !3771
  %5 = icmp eq i8* %4, null, !dbg !3772
  %6 = icmp ne i64 %3, 0, !dbg !3773
  %7 = and i1 %6, %5, !dbg !3774
  br i1 %7, label %8, label %9, !dbg !3774

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3775
  unreachable, !dbg !3775

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3776
  ret i8* %4, !dbg !3777
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3778 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3780, !tbaa !851
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #10, !dbg !3781
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #10, !dbg !3782
  tail call void @abort() #15, !dbg !3783
  unreachable, !dbg !3783
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #6 !dbg !3784 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3787, metadata !748), !dbg !3791
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3788, metadata !748), !dbg !3792
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !3789, metadata !748), !dbg !3793
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !3794
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3790, metadata !748), !dbg !3795
  %5 = icmp eq i32 %4, -1, !dbg !3796
  br i1 %5, label %6, label %11, !dbg !3798

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3799
  %8 = load i32, i32* %7, align 4, !dbg !3799, !tbaa !851
  %9 = icmp eq i32 %8, 12, !dbg !3800
  br i1 %9, label %10, label %11, !dbg !3801

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3802
  unreachable, !dbg !3802

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3803
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3804 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3811, metadata !748), !dbg !3829
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3812, metadata !748), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3813, metadata !748), !dbg !3831
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3814, metadata !748), !dbg !3832
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3815, metadata !748), !dbg !3833
  %7 = bitcast i8** %6 to i8*, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3819, metadata !748), !dbg !3835
  %8 = icmp ult i32 %2, 37, !dbg !3836
  br i1 %8, label %10, label %9, !dbg !3836

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.132, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15, !dbg !3836
  unreachable, !dbg !3836

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3839
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3817, metadata !748), !dbg !3840
  %12 = tail call i32* @__errno_location() #17, !dbg !3841
  store i32 0, i32* %12, align 4, !dbg !3842, !tbaa !851
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3820, metadata !748), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3823, metadata !1177), !dbg !3844
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3845
  %14 = load i16*, i16** %13, align 8, !tbaa !755
  br label %15, !dbg !3846

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !893
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3823, metadata !748), !dbg !3844
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3820, metadata !748), !dbg !3843
  %18 = zext i8 %17 to i64, !dbg !3845
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3845
  %20 = load i16, i16* %19, align 2, !dbg !3845, !tbaa !1936
  %21 = and i16 %20, 8192, !dbg !3845
  %22 = icmp eq i16 %21, 0, !dbg !3846
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3820, metadata !748), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3823, metadata !1177), !dbg !3844
  br i1 %22, label %24, label %15, !dbg !3846, !llvm.loop !3848

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3839
  %26 = icmp eq i8 %17, 45, !dbg !3850
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #10, !dbg !3852
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3818, metadata !748), !dbg !3853
  %29 = load i8*, i8** %25, align 8, !dbg !3854, !tbaa !755
  %30 = icmp eq i8* %29, %0, !dbg !3856
  br i1 %30, label %31, label %40, !dbg !3857

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3858
  br i1 %32, label %265, label %33, !dbg !3861

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3862, !tbaa !893
  %35 = icmp eq i8 %34, 0, !dbg !3862
  br i1 %35, label %265, label %36, !dbg !3863

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3862
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3864
  %39 = icmp eq i8* %38, null, !dbg !3864
  br i1 %39, label %265, label %47, !dbg !3865

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3866, !tbaa !851
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3868

; <label>:42:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3819, metadata !748), !dbg !3835
  br label %43, !dbg !3869

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3819, metadata !748), !dbg !3835
  %45 = icmp eq i8* %4, null, !dbg !3871
  br i1 %45, label %46, label %47, !dbg !3873

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3818, metadata !748), !dbg !3853
  store i64 %28, i64* %3, align 8, !dbg !3874, !tbaa !2479
  br label %265, !dbg !3876

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3877, !tbaa !893
  %51 = sext i8 %50 to i32, !dbg !3877
  %52 = icmp eq i8 %50, 0, !dbg !3878
  br i1 %52, label %262, label %53, !dbg !3879

; <label>:53:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3824, metadata !748), !dbg !3880
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3827, metadata !748), !dbg !3881
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3882
  %55 = icmp eq i8* %54, null, !dbg !3882
  br i1 %55, label %56, label %58, !dbg !3884

; <label>:56:                                     ; preds = %53
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3818, metadata !748), !dbg !3853
  store i64 %49, i64* %3, align 8, !dbg !3885, !tbaa !2479
  %57 = or i32 %48, 2, !dbg !3887
  br label %265, !dbg !3888

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
  ], !dbg !3889

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3890
  %61 = icmp eq i8* %60, null, !dbg !3890
  br i1 %61, label %72, label %62, !dbg !3893

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3894
  %64 = load i8, i8* %63, align 1, !dbg !3894, !tbaa !893
  %65 = sext i8 %64 to i32, !dbg !3894
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3895

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3896
  %68 = load i8, i8* %67, align 1, !dbg !3896, !tbaa !893
  %69 = icmp eq i8 %68, 66, !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3827, metadata !748), !dbg !3881
  %70 = select i1 %69, i64 3, i64 1, !dbg !3900
  br label %72, !dbg !3900

; <label>:71:                                     ; preds = %62, %62
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3824, metadata !748), !dbg !3880
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3827, metadata !748), !dbg !3881
  br label %72, !dbg !3901

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
  ], !dbg !3902

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3903, metadata !748), !dbg !3909
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3912
  %77 = shl i64 %49, 9, !dbg !3914
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3915
  %79 = zext i1 %76 to i32, !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3828, metadata !748), !dbg !3916
  br label %253, !dbg !3917

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3903, metadata !748), !dbg !3918
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3920
  %82 = shl i64 %49, 10, !dbg !3921
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3922
  %84 = zext i1 %81 to i32, !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3828, metadata !748), !dbg !3916
  br label %253, !dbg !3923

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  %87 = icmp ult i64 %86, %49, !dbg !3935
  %88 = mul i64 %49, %73, !dbg !3937
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  %90 = icmp ult i64 %86, %89, !dbg !3935
  %91 = mul i64 %89, %73, !dbg !3937
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3938
  %93 = or i1 %87, %90, !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  %94 = icmp ult i64 %86, %92, !dbg !3935
  %95 = mul i64 %92, %73, !dbg !3937
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3938
  %97 = or i1 %93, %94, !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  %98 = icmp ult i64 %86, %96, !dbg !3935
  %99 = mul i64 %96, %73, !dbg !3937
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3938
  %101 = or i1 %97, %98, !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  %102 = icmp ult i64 %86, %100, !dbg !3935
  %103 = mul i64 %100, %73, !dbg !3937
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3938
  %105 = or i1 %101, %102, !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3934
  %106 = icmp ult i64 %86, %104, !dbg !3935
  %107 = mul i64 %104, %73, !dbg !3937
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3938
  %109 = or i1 %105, %106, !dbg !3939
  %110 = zext i1 %109 to i32, !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3932
  br label %253, !dbg !3940

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3943
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3943
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3941
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3943
  %113 = icmp ult i64 %112, %49, !dbg !3944
  %114 = mul i64 %49, %73, !dbg !3946
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3943
  %116 = icmp ult i64 %112, %115, !dbg !3944
  %117 = mul i64 %115, %73, !dbg !3946
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3947
  %119 = or i1 %113, %116, !dbg !3948
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3943
  %120 = icmp ult i64 %112, %118, !dbg !3944
  %121 = mul i64 %118, %73, !dbg !3946
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3947
  %123 = or i1 %119, %120, !dbg !3948
  %124 = zext i1 %123 to i32, !dbg !3948
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3941
  br label %253, !dbg !3940

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3924, metadata !748), !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3951
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3951
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3924, metadata !748), !dbg !3949
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3924, metadata !748), !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3951
  %127 = icmp ult i64 %126, %49, !dbg !3952
  %128 = mul i64 %49, %73, !dbg !3954
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3955
  %130 = zext i1 %127 to i32, !dbg !3955
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3931, metadata !748), !dbg !3951
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3931, metadata !748), !dbg !3951
  br label %253, !dbg !3940

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3956
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3958
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3958
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3956
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3956
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3958
  %133 = icmp ult i64 %132, %49, !dbg !3959
  %134 = mul i64 %49, %73, !dbg !3961
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3962
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3924, metadata !748), !dbg !3956
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3924, metadata !748), !dbg !3956
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3924, metadata !748), !dbg !3956
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3958
  %136 = icmp ult i64 %132, %135, !dbg !3959
  %137 = mul i64 %135, %73, !dbg !3961
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3962
  %139 = or i1 %133, %136, !dbg !3963
  %140 = zext i1 %139 to i32, !dbg !3963
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3924, metadata !748), !dbg !3956
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3924, metadata !748), !dbg !3956
  br label %253, !dbg !3940

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  %143 = icmp ult i64 %142, %49, !dbg !3967
  %144 = mul i64 %49, %73, !dbg !3969
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3970
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  %146 = icmp ult i64 %142, %145, !dbg !3967
  %147 = mul i64 %145, %73, !dbg !3969
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3970
  %149 = or i1 %143, %146, !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  %150 = icmp ult i64 %142, %148, !dbg !3967
  %151 = mul i64 %148, %73, !dbg !3969
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3970
  %153 = or i1 %149, %150, !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  %154 = icmp ult i64 %142, %152, !dbg !3967
  %155 = mul i64 %152, %73, !dbg !3969
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3970
  %157 = or i1 %153, %154, !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3966
  %158 = icmp ult i64 %142, %156, !dbg !3967
  %159 = mul i64 %156, %73, !dbg !3969
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3970
  %161 = or i1 %157, %158, !dbg !3971
  %162 = zext i1 %161 to i32, !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3964
  br label %253, !dbg !3940

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3974
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3972
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3974
  %165 = icmp ult i64 %164, %49, !dbg !3975
  %166 = mul i64 %49, %73, !dbg !3977
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3978
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3974
  %168 = icmp ult i64 %164, %167, !dbg !3975
  %169 = mul i64 %167, %73, !dbg !3977
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3978
  %171 = or i1 %165, %168, !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3974
  %172 = icmp ult i64 %164, %170, !dbg !3975
  %173 = mul i64 %170, %73, !dbg !3977
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3978
  %175 = or i1 %171, %172, !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3974
  %176 = icmp ult i64 %164, %174, !dbg !3975
  %177 = mul i64 %174, %73, !dbg !3977
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3978
  %179 = or i1 %175, %176, !dbg !3979
  %180 = zext i1 %179 to i32, !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3924, metadata !748), !dbg !3972
  br label %253, !dbg !3940

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3903, metadata !748), !dbg !3980
  %182 = icmp slt i64 %49, 0, !dbg !3982
  %183 = shl i64 %49, 1, !dbg !3983
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3984
  %185 = lshr i64 %49, 63, !dbg !3984
  %186 = trunc i64 %185 to i32, !dbg !3984
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3828, metadata !748), !dbg !3916
  br label %253, !dbg !3985

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %189 = icmp ult i64 %188, %49, !dbg !3989
  %190 = mul i64 %49, %73, !dbg !3991
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3992
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %192 = icmp ult i64 %188, %191, !dbg !3989
  %193 = mul i64 %191, %73, !dbg !3991
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3992
  %195 = or i1 %189, %192, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %196 = icmp ult i64 %188, %194, !dbg !3989
  %197 = mul i64 %194, %73, !dbg !3991
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3992
  %199 = or i1 %195, %196, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %200 = icmp ult i64 %188, %198, !dbg !3989
  %201 = mul i64 %198, %73, !dbg !3991
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3992
  %203 = or i1 %199, %200, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %204 = icmp ult i64 %188, %202, !dbg !3989
  %205 = mul i64 %202, %73, !dbg !3991
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3992
  %207 = or i1 %203, %204, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %208 = icmp ult i64 %188, %206, !dbg !3989
  %209 = mul i64 %206, %73, !dbg !3991
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3992
  %211 = or i1 %207, %208, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %212 = icmp ult i64 %188, %210, !dbg !3989
  %213 = mul i64 %210, %73, !dbg !3991
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3992
  %215 = or i1 %211, %212, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3988
  %216 = icmp ult i64 %188, %214, !dbg !3989
  %217 = mul i64 %214, %73, !dbg !3991
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3992
  %219 = or i1 %215, %216, !dbg !3993
  %220 = zext i1 %219 to i32, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3986
  br label %253, !dbg !3940

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %223 = icmp ult i64 %222, %49, !dbg !3997
  %224 = mul i64 %49, %73, !dbg !3999
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %226 = icmp ult i64 %222, %225, !dbg !3997
  %227 = mul i64 %225, %73, !dbg !3999
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4000
  %229 = or i1 %223, %226, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %230 = icmp ult i64 %222, %228, !dbg !3997
  %231 = mul i64 %228, %73, !dbg !3999
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4000
  %233 = or i1 %229, %230, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %234 = icmp ult i64 %222, %232, !dbg !3997
  %235 = mul i64 %232, %73, !dbg !3999
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4000
  %237 = or i1 %233, %234, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %238 = icmp ult i64 %222, %236, !dbg !3997
  %239 = mul i64 %236, %73, !dbg !3999
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4000
  %241 = or i1 %237, %238, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %242 = icmp ult i64 %222, %240, !dbg !3997
  %243 = mul i64 %240, %73, !dbg !3999
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4000
  %245 = or i1 %241, %242, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3931, metadata !748), !dbg !3996
  %246 = icmp ult i64 %222, %244, !dbg !3997
  %247 = mul i64 %244, %73, !dbg !3999
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4000
  %249 = or i1 %245, %246, !dbg !4001
  %250 = zext i1 %249 to i32, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3924, metadata !748), !dbg !3994
  br label %253, !dbg !3940

; <label>:251:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3818, metadata !748), !dbg !3853
  store i64 %49, i64* %3, align 8, !dbg !4002, !tbaa !2479
  %252 = or i32 %48, 2, !dbg !4003
  br label %265, !dbg !4004

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3828, metadata !748), !dbg !3916
  %256 = or i32 %255, %48, !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3819, metadata !748), !dbg !3835
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4005
  store i8* %257, i8** %25, align 8, !dbg !4005, !tbaa !755
  %258 = load i8, i8* %257, align 1, !dbg !4006, !tbaa !893
  %259 = icmp eq i8 %258, 0, !dbg !4006
  %260 = or i32 %256, 2, !dbg !4008
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3819, metadata !748), !dbg !3835
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3819, metadata !748), !dbg !3835
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3819, metadata !748), !dbg !3835
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3819, metadata !748), !dbg !3835
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3818, metadata !748), !dbg !3853
  store i64 %263, i64* %3, align 8, !dbg !4010, !tbaa !2479
  br label %265, !dbg !4011

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4012
  ret i32 %266, !dbg !4012
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4013 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4016, metadata !748), !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4017, metadata !748), !dbg !4023
  %3 = icmp eq i64 %0, 0, !dbg !4024
  %4 = icmp eq i64 %1, 0, !dbg !4025
  %5 = or i1 %3, %4, !dbg !4026
  br i1 %5, label %12, label %6, !dbg !4026

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4019, metadata !748), !dbg !4028
  %8 = udiv i64 %7, %1, !dbg !4029
  %9 = icmp eq i64 %8, %0, !dbg !4031
  br i1 %9, label %12, label %10, !dbg !4032

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4033
  store i32 12, i32* %11, align 4, !dbg !4035, !tbaa !851
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4016, metadata !748), !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4017, metadata !748), !dbg !4023
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4018, metadata !748), !dbg !4037
  br label %16, !dbg !4038

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4039
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4040 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4057, metadata !748), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4058, metadata !748), !dbg !4067
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4059, metadata !748), !dbg !4068
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4060, metadata !748), !dbg !4069
  %6 = bitcast i32* %5 to i8*, !dbg !4070
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4070
  %7 = icmp eq i32* %0, null, !dbg !4071
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4057, metadata !748), !dbg !4066
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4073
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4057, metadata !748), !dbg !4066
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4061, metadata !748), !dbg !4075
  %10 = icmp ugt i64 %9, -3, !dbg !4076
  %11 = icmp ne i64 %2, 0, !dbg !4077
  %12 = and i1 %11, %10, !dbg !4078
  br i1 %12, label %13, label %18, !dbg !4078

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4079
  br i1 %14, label %18, label %15, !dbg !4080

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4081, !tbaa !893
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4063, metadata !748), !dbg !4082
  %17 = zext i8 %16 to i32, !dbg !4083
  store i32 %17, i32* %8, align 4, !dbg !4084, !tbaa !851
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4085
  ret i64 %19, !dbg !4085
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4086 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4131, metadata !748), !dbg !4136
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4137
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4138, metadata !748), !dbg !4141
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4143
  %4 = load i32, i32* %3, align 8, !dbg !4143, !tbaa !4144
  %5 = and i32 %4, 32, !dbg !4143
  %6 = icmp eq i32 %5, 0, !dbg !4145
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4146
  %8 = icmp ne i32 %7, 0, !dbg !4147
  br i1 %6, label %9, label %19, !dbg !4148

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4150
  %11 = xor i1 %8, true, !dbg !4151
  %12 = or i1 %10, %11, !dbg !4151
  %13 = sext i1 %8 to i32, !dbg !4151
  br i1 %12, label %22, label %14, !dbg !4151

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4152
  %16 = load i32, i32* %15, align 4, !dbg !4152, !tbaa !851
  %17 = icmp ne i32 %16, 9, !dbg !4153
  %18 = sext i1 %17 to i32, !dbg !4154
  br label %22, !dbg !4154

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4155

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4157
  store i32 0, i32* %21, align 4, !dbg !4159, !tbaa !851
  br label %22, !dbg !4157

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4160
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4161 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4166, metadata !748), !dbg !4169
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4167, metadata !748), !dbg !4170
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4171
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4168, metadata !748), !dbg !4172
  %3 = icmp eq i8* %2, null, !dbg !4173
  br i1 %3, label %11, label %4, !dbg !4175

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i64 0, i64 0)) #14, !dbg !4176
  %6 = icmp eq i32 %5, 0, !dbg !4181
  br i1 %6, label %10, label %7, !dbg !4182

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0)) #14, !dbg !4183
  %9 = icmp eq i32 %8, 0, !dbg !4184
  br i1 %9, label %10, label %11, !dbg !4185

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4167, metadata !748), !dbg !4170
  br label %11, !dbg !4186

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4187
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4188 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4194, metadata !748), !dbg !4268
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4261, metadata !748), !dbg !4271
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4272
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4192, metadata !748), !dbg !4273
  %4 = icmp eq i8* %3, null, !dbg !4274
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), i8* %3, !dbg !4276
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4192, metadata !748), !dbg !4273
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4277, !tbaa !755
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4208, metadata !748) #10, !dbg !4278
  %7 = icmp eq i8* %6, null, !dbg !4279
  br i1 %7, label %8, label %123, !dbg !4280

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.146, i64 0, i64 0)) #10, !dbg !4281
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4209, metadata !748) #10, !dbg !4282
  %10 = icmp eq i8* %9, null, !dbg !4283
  br i1 %10, label %14, label %11, !dbg !4285

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4286, !tbaa !893
  %13 = icmp eq i8 %12, 0, !dbg !4287
  br i1 %13, label %14, label %15, !dbg !4288

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4289

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.147, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4209, metadata !748) #10, !dbg !4282
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4290
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4212, metadata !748) #10, !dbg !4291
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4214, metadata !748) #10, !dbg !4292
  %18 = icmp eq i64 %17, 0, !dbg !4293
  br i1 %18, label %24, label %19, !dbg !4294

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4295
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4295
  %22 = load i8, i8* %21, align 1, !dbg !4295, !tbaa !893
  %23 = icmp ne i8 %22, 47, !dbg !4295
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4296
  %27 = add i64 %17, 14, !dbg !4297
  %28 = add i64 %27, %26, !dbg !4298
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4299
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4211, metadata !748) #10, !dbg !4300
  %30 = icmp eq i8* %29, null, !dbg !4301
  br i1 %30, label %121, label %31, !dbg !4301

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4302
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4305

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4306, !tbaa !893
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4308
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.148, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4309
  br label %37, !dbg !4310

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4308
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.148, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4309
  br label %37, !dbg !4310

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4311
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4216, metadata !748) #10, !dbg !4312
  %39 = icmp slt i32 %38, 0, !dbg !4313
  br i1 %39, label %119, label %40, !dbg !4314

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.149, i64 0, i64 0)) #10, !dbg !4315
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4217, metadata !748) #10, !dbg !4316
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4317
  br i1 %42, label %43, label %45, !dbg !4318

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4319
  br label %119, !dbg !4321

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4258, metadata !748) #10, !dbg !4322
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4324

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4325

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4258, metadata !748) #10, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4325
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4326
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4327, metadata !748) #10, !dbg !4332
  %54 = load i8*, i8** %48, align 8, !dbg !4334, !tbaa !4335
  %55 = load i8*, i8** %49, align 8, !dbg !4334, !tbaa !4336
  %56 = icmp ult i8* %54, %55, !dbg !4334
  br i1 %56, label %59, label %57, !dbg !4334, !prof !1159

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4334
  br label %63, !dbg !4334

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4334
  store i8* %60, i8** %48, align 8, !dbg !4334, !tbaa !4335
  %61 = load i8, i8* %54, align 1, !dbg !4334, !tbaa !893
  %62 = zext i8 %61 to i32, !dbg !4334
  br label %63, !dbg !4334

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4334
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4260, metadata !748) #10, !dbg !4337
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4338, !llvm.loop !4339

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4344

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4327, metadata !748) #10, !dbg !4346
  %67 = load i8*, i8** %48, align 8, !dbg !4344, !tbaa !4335
  %68 = load i8*, i8** %49, align 8, !dbg !4344, !tbaa !4336
  %69 = icmp ult i8* %67, %68, !dbg !4344
  br i1 %69, label %72, label %70, !dbg !4344, !prof !1159

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4344
  br label %76, !dbg !4344

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4344
  store i8* %73, i8** %48, align 8, !dbg !4344, !tbaa !4335
  %74 = load i8, i8* %67, align 1, !dbg !4344, !tbaa !893
  %75 = zext i8 %74 to i32, !dbg !4344
  br label %76, !dbg !4344

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4344
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4260, metadata !748) #10, !dbg !4337
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4347, !llvm.loop !4348

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4351
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.150, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4352
  %81 = icmp slt i32 %80, 2, !dbg !4354
  br i1 %81, label %112, label %82, !dbg !4355

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4356
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4265, metadata !748) #10, !dbg !4357
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4358
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4266, metadata !748) #10, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4267, metadata !748) #10, !dbg !4360
  %85 = icmp eq i64 %51, 0, !dbg !4361
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4363

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  %90 = add i64 %87, 2, !dbg !4364
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4366
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4258, metadata !748) #10, !dbg !4322
  br label %96, !dbg !4367

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4368
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  %94 = add i64 %93, 1, !dbg !4370
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4371
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4258, metadata !748) #10, !dbg !4322
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4258, metadata !748) #10, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  %99 = icmp eq i8* %98, null, !dbg !4372
  br i1 %99, label %100, label %102, !dbg !4374

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  call void @free(i8* %52) #10, !dbg !4375
  br label %112, !dbg !4377

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4378
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4378
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4379
  %104 = xor i64 %84, -1, !dbg !4380
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4380
  %106 = xor i64 %83, -1, !dbg !4381
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4381
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4382, metadata !748) #10, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4390, metadata !748) #10, !dbg !4391
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4393
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4394
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4382, metadata !748) #10, !dbg !4395
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4390, metadata !748) #10, !dbg !4395
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4397
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4398
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4258, metadata !748) #10, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4259, metadata !748) #10, !dbg !4323
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4378
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4378
  br label %50, !dbg !4399, !llvm.loop !4348

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4378
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4378
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4400
  %116 = icmp eq i64 %113, 0, !dbg !4401
  br i1 %116, label %119, label %117, !dbg !4403

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4404
  store i8 0, i8* %118, align 1, !dbg !4406, !tbaa !893
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4208, metadata !748) #10, !dbg !4278
  call void @free(i8* %29) #10, !dbg !4407
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4208, metadata !748) #10, !dbg !4278
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4408, !tbaa !755
  br label %123, !dbg !4409

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4208, metadata !748) #10, !dbg !4278
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4193, metadata !748), !dbg !4410
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4193, metadata !748), !dbg !4410
  %125 = load i8, i8* %124, align 1, !dbg !4411, !tbaa !893
  %126 = icmp eq i8 %125, 0, !dbg !4413
  br i1 %126, label %152, label %127, !dbg !4414

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4415

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4193, metadata !748), !dbg !4410
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4415
  %132 = icmp eq i32 %131, 0, !dbg !4417
  br i1 %132, label %139, label %133, !dbg !4418

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4419
  br i1 %134, label %135, label %143, !dbg !4420

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4421
  %137 = load i8, i8* %136, align 1, !dbg !4421, !tbaa !893
  %138 = icmp eq i8 %137, 0, !dbg !4422
  br i1 %138, label %139, label %143, !dbg !4423

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4424
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4426
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4427
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4192, metadata !748), !dbg !4273
  br label %152, !dbg !4428

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4429
  %145 = add i64 %144, 1, !dbg !4430
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4431
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4193, metadata !748), !dbg !4410
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4432
  %148 = add i64 %147, 1, !dbg !4433
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4434
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4193, metadata !748), !dbg !4410
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4193, metadata !748), !dbg !4410
  %150 = load i8, i8* %149, align 1, !dbg !4411, !tbaa !893
  %151 = icmp eq i8 %150, 0, !dbg !4413
  br i1 %151, label %152, label %128, !dbg !4414, !llvm.loop !4435

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4192, metadata !748), !dbg !4273
  %154 = load i8, i8* %153, align 1, !dbg !4437, !tbaa !893
  %155 = icmp eq i8 %154, 0, !dbg !4439
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i8* %153, !dbg !4440
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4192, metadata !748), !dbg !4273
  ret i8* %156, !dbg !4441
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
define i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #6 !dbg !701 {
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !706, metadata !748), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !707, metadata !748), !dbg !4443
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !708, metadata !748), !dbg !4444
  %5 = bitcast i32* %4 to i8*, !dbg !4445
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10, !dbg !4445
  %6 = icmp eq i8* %0, null, !dbg !4446
  br i1 %6, label %44, label %7, !dbg !4447

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !709, metadata !748), !dbg !4448
  store i32 10, i32* %4, align 4, !dbg !4449, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4450, metadata !748) #10, !dbg !4456
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !4455, metadata !748) #10, !dbg !4458
  %8 = tail call i8* @realloc(i8* null, i64 40) #10, !dbg !4459
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !711, metadata !748), !dbg !4460
  %9 = icmp eq i8* %8, null, !dbg !4461
  br i1 %9, label %149, label %10, !dbg !4463

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !4459

; <label>:11:                                     ; preds = %10, %39
  %12 = phi i32 [ %40, %39 ], [ 10, %10 ], !dbg !4464
  %13 = phi i8* [ %30, %39 ], [ %8, %10 ]
  %14 = bitcast i8* %13 to i32*, !dbg !4459
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !711, metadata !748), !dbg !4460
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !709, metadata !748), !dbg !4448
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !716, metadata !748), !dbg !4465
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !709, metadata !748), !dbg !4448
  %15 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %14, i32* nonnull %4) #10, !dbg !4466
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !710, metadata !748), !dbg !4467
  %16 = icmp slt i32 %15, 0, !dbg !4468
  %17 = load i32, i32* %4, align 4, !tbaa !851
  %18 = icmp eq i32 %12, %17, !dbg !4470
  %19 = and i1 %16, %18, !dbg !4471
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !709, metadata !748), !dbg !4448
  br i1 %19, label %20, label %22, !dbg !4471

; <label>:20:                                     ; preds = %11
  %21 = shl nsw i32 %12, 1, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !709, metadata !748), !dbg !4448
  store i32 %21, i32* %4, align 4, !dbg !4472, !tbaa !851
  br label %22, !dbg !4473

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %17, %11 ], !dbg !4474
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !709, metadata !748), !dbg !4448
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !4450, metadata !748) #10, !dbg !4475
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4455, metadata !748) #10, !dbg !4477
  %24 = icmp slt i32 %23, 0, !dbg !4478
  br i1 %24, label %25, label %27, !dbg !4480

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #17, !dbg !4481
  store i32 12, i32* %26, align 4, !dbg !4483, !tbaa !851
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !712, metadata !748), !dbg !4484
  br label %34, !dbg !4485

; <label>:27:                                     ; preds = %22
  %28 = sext i32 %23 to i64, !dbg !4474
  %29 = shl nsw i64 %28, 2, !dbg !4486
  %30 = call i8* @realloc(i8* nonnull %13, i64 %29) #10, !dbg !4487
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !712, metadata !748), !dbg !4484
  %31 = icmp eq i8* %30, null, !dbg !4488
  br i1 %31, label %32, label %37, !dbg !4485

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #17, !dbg !4489
  br label %34, !dbg !4489

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i32* [ %33, %32 ], [ %26, %25 ], !dbg !4489
  %36 = load i32, i32* %35, align 4, !dbg !4489, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !717, metadata !748), !dbg !4490
  call void @free(i8* nonnull %13) #10, !dbg !4491
  store i32 %36, i32* %35, align 4, !dbg !4492, !tbaa !851
  br label %149

; <label>:37:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !711, metadata !748), !dbg !4460
  %38 = icmp sgt i32 %15, -1, !dbg !4493
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !711, metadata !748), !dbg !4460
  br i1 %38, label %41, label %39, !dbg !4495, !llvm.loop !4496

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %4, align 4, !dbg !4464, !tbaa !851
  br label %11, !dbg !4495

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %2 to i8**, !dbg !4499
  store i8* %30, i8** %42, align 8, !dbg !4499, !tbaa !755
  %43 = load i32, i32* %4, align 4, !dbg !4501, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !709, metadata !748), !dbg !4448
  br label %149, !dbg !4502

; <label>:44:                                     ; preds = %3
  %45 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !4503
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !709, metadata !748), !dbg !4448
  store i32 %45, i32* %4, align 4, !dbg !4504, !tbaa !851
  %46 = icmp slt i32 %45, 0, !dbg !4505
  br i1 %46, label %47, label %59, !dbg !4507

; <label>:47:                                     ; preds = %44
  %48 = tail call i32* @__errno_location() #17, !dbg !4508
  %49 = load i32, i32* %48, align 4, !dbg !4508, !tbaa !851
  %50 = icmp eq i32 %49, 38, !dbg !4511
  br i1 %50, label %51, label %149, !dbg !4512

; <label>:51:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4450, metadata !748) #10, !dbg !4513
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4455, metadata !748) #10, !dbg !4515
  %52 = tail call i8* @realloc(i8* null, i64 4) #10, !dbg !4516
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !711, metadata !748), !dbg !4460
  %53 = icmp eq i8* %52, null, !dbg !4517
  br i1 %53, label %149, label %54, !dbg !4518

; <label>:54:                                     ; preds = %51
  %55 = bitcast i8* %52 to i32*, !dbg !4516
  %56 = bitcast i32** %2 to i8**, !dbg !4519
  store i8* %52, i8** %56, align 8, !dbg !4519, !tbaa !755
  store i32 %1, i32* %55, align 4, !dbg !4521, !tbaa !851
  %57 = icmp ne i32 %1, -1, !dbg !4522
  %58 = zext i1 %57 to i32, !dbg !4522
  br label %149, !dbg !4523

; <label>:59:                                     ; preds = %44
  %60 = icmp eq i32 %45, 0, !dbg !4524
  %61 = icmp ne i32 %1, -1, !dbg !4526
  %62 = or i1 %61, %60, !dbg !4527
  br i1 %62, label %63, label %68, !dbg !4527

; <label>:63:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !709, metadata !748), !dbg !4448
  %64 = add nsw i32 %45, 1, !dbg !4528
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !709, metadata !748), !dbg !4448
  store i32 %64, i32* %4, align 4, !dbg !4528, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !709, metadata !748), !dbg !4448
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4450, metadata !748) #10, !dbg !4529
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !4455, metadata !748) #10, !dbg !4531
  %65 = icmp slt i32 %45, -1, !dbg !4532
  br i1 %65, label %66, label %68, !dbg !4533

; <label>:66:                                     ; preds = %63
  %67 = tail call i32* @__errno_location() #17, !dbg !4534
  store i32 12, i32* %67, align 4, !dbg !4535, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !711, metadata !748), !dbg !4460
  br label %149, !dbg !4536

; <label>:68:                                     ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ %45, %59 ]
  %70 = sext i32 %69 to i64, !dbg !4537
  %71 = shl nsw i64 %70, 2, !dbg !4538
  %72 = tail call i8* @realloc(i8* null, i64 %71) #10, !dbg !4539
  %73 = bitcast i8* %72 to i32*, !dbg !4539
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !711, metadata !748), !dbg !4460
  %74 = icmp eq i8* %72, null, !dbg !4540
  br i1 %74, label %149, label %75, !dbg !4536

; <label>:75:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !709, metadata !748), !dbg !4448
  %76 = zext i1 %61 to i32, !dbg !4542
  %77 = sub nsw i32 %69, %76, !dbg !4543
  %78 = zext i1 %61 to i64, !dbg !4544
  %79 = getelementptr inbounds i32, i32* %73, i64 %78, !dbg !4544
  %80 = tail call i32 @getgroups(i32 %77, i32* %79) #10, !dbg !4545
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !710, metadata !748), !dbg !4467
  %81 = icmp slt i32 %80, 0, !dbg !4546
  br i1 %81, label %82, label %85, !dbg !4547

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #17, !dbg !4548
  %84 = load i32, i32* %83, align 4, !dbg !4548, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !720, metadata !748), !dbg !4549
  tail call void @free(i8* nonnull %72) #10, !dbg !4550
  store i32 %84, i32* %83, align 4, !dbg !4551, !tbaa !851
  br label %149

; <label>:85:                                     ; preds = %75
  br i1 %61, label %86, label %88, !dbg !4552

; <label>:86:                                     ; preds = %85
  store i32 %1, i32* %73, align 4, !dbg !4554, !tbaa !851
  %87 = add nsw i32 %80, 1, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !710, metadata !748), !dbg !4467
  br label %88, !dbg !4557

; <label>:88:                                     ; preds = %85, %86
  %89 = phi i32 [ %87, %86 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !710, metadata !748), !dbg !4467
  %90 = bitcast i32** %2 to i8**, !dbg !4558
  store i8* %72, i8** %90, align 8, !dbg !4558, !tbaa !755
  %91 = icmp sgt i32 %89, 1, !dbg !4559
  br i1 %91, label %92, label %149, !dbg !4560

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %73, align 4, !dbg !4561, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !723, metadata !748), !dbg !4562
  %94 = sext i32 %89 to i64, !dbg !4563
  %95 = getelementptr inbounds i32, i32* %73, i64 %94, !dbg !4563
  tail call void @llvm.dbg.value(metadata i32* %95, i64 0, metadata !727, metadata !748), !dbg !4564
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !726, metadata !4565), !dbg !4566
  %96 = getelementptr inbounds i8, i8* %72, i64 4
  %97 = bitcast i8* %96 to i32*
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !726, metadata !748), !dbg !4566
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !711, metadata !748), !dbg !4460
  %98 = icmp ugt i32* %95, %97, !dbg !4567
  br i1 %98, label %99, label %149, !dbg !4570

; <label>:99:                                     ; preds = %92
  %100 = shl nsw i64 %94, 2, !dbg !4571
  %101 = add nsw i64 %100, -5, !dbg !4571
  %102 = lshr i64 %101, 2, !dbg !4571
  %103 = and i64 %102, 1, !dbg !4571
  %104 = icmp eq i64 %103, 0, !dbg !4571
  br i1 %104, label %105, label %119, !dbg !4571

; <label>:105:                                    ; preds = %99
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !710, metadata !748), !dbg !4467
  %106 = load i32, i32* %97, align 4, !dbg !4571, !tbaa !851
  %107 = icmp eq i32 %106, %93, !dbg !4574
  br i1 %107, label %111, label %108, !dbg !4575

; <label>:108:                                    ; preds = %105
  %109 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !4576
  %110 = bitcast i8* %109 to i32*, !dbg !4576
  tail call void @llvm.dbg.value(metadata i32* %110, i64 0, metadata !711, metadata !748), !dbg !4460
  store i32 %106, i32* %110, align 4, !dbg !4577, !tbaa !851
  br label %113

; <label>:111:                                    ; preds = %105
  %112 = add nsw i32 %89, -1, !dbg !4578
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !710, metadata !748), !dbg !4467
  br label %113, !dbg !4579

; <label>:113:                                    ; preds = %111, %108
  %114 = phi i32 [ %93, %111 ], [ %106, %108 ]
  %115 = phi i32* [ %73, %111 ], [ %110, %108 ]
  %116 = phi i32 [ %112, %111 ], [ %89, %108 ]
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !726, metadata !4565), !dbg !4566
  %117 = getelementptr inbounds i8, i8* %72, i64 8
  %118 = bitcast i8* %117 to i32*
  tail call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !726, metadata !748), !dbg !4566
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !711, metadata !748), !dbg !4460
  br label %119, !dbg !4570

; <label>:119:                                    ; preds = %113, %99
  %120 = phi i32 [ %93, %99 ], [ %114, %113 ]
  %121 = phi i32* [ %97, %99 ], [ %118, %113 ]
  %122 = phi i32 [ %89, %99 ], [ %116, %113 ]
  %123 = phi i32* [ %73, %99 ], [ %115, %113 ]
  %124 = phi i32 [ undef, %99 ], [ %116, %113 ]
  %125 = icmp eq i64 %102, 0, !dbg !4571
  br i1 %125, label %149, label %126, !dbg !4571

; <label>:126:                                    ; preds = %119
  br label %127, !dbg !4571

; <label>:127:                                    ; preds = %155, %126
  %128 = phi i32 [ %120, %126 ], [ %156, %155 ]
  %129 = phi i32* [ %121, %126 ], [ %159, %155 ]
  %130 = phi i32 [ %122, %126 ], [ %158, %155 ]
  %131 = phi i32* [ %123, %126 ], [ %157, %155 ]
  tail call void @llvm.dbg.value(metadata i32* %131, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !710, metadata !748), !dbg !4467
  %132 = load i32, i32* %129, align 4, !dbg !4571, !tbaa !851
  %133 = icmp eq i32 %132, %93, !dbg !4580
  %134 = icmp eq i32 %132, %128, !dbg !4574
  %135 = or i1 %133, %134, !dbg !4575
  br i1 %135, label %136, label %138, !dbg !4575

; <label>:136:                                    ; preds = %127
  %137 = add nsw i32 %130, -1, !dbg !4578
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !710, metadata !748), !dbg !4467
  br label %140, !dbg !4579

; <label>:138:                                    ; preds = %127
  %139 = getelementptr inbounds i32, i32* %131, i64 1, !dbg !4576
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !711, metadata !748), !dbg !4460
  store i32 %132, i32* %139, align 4, !dbg !4577, !tbaa !851
  br label %140

; <label>:140:                                    ; preds = %136, %138
  %141 = phi i32 [ %128, %136 ], [ %132, %138 ]
  %142 = phi i32* [ %131, %136 ], [ %139, %138 ]
  %143 = phi i32 [ %137, %136 ], [ %130, %138 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !726, metadata !4565), !dbg !4566
  %144 = getelementptr inbounds i32, i32* %129, i64 1
  tail call void @llvm.dbg.value(metadata i32* %144, i64 0, metadata !726, metadata !748), !dbg !4566
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32* %131, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !710, metadata !748), !dbg !4467
  %145 = load i32, i32* %144, align 4, !dbg !4571, !tbaa !851
  %146 = icmp eq i32 %145, %93, !dbg !4580
  %147 = icmp eq i32 %145, %141, !dbg !4574
  %148 = or i1 %146, %147, !dbg !4575
  br i1 %148, label %153, label %151, !dbg !4575

; <label>:149:                                    ; preds = %119, %155, %92, %41, %34, %66, %88, %68, %47, %51, %7, %82, %54
  %150 = phi i32 [ %58, %54 ], [ -1, %82 ], [ -1, %7 ], [ -1, %51 ], [ -1, %47 ], [ -1, %68 ], [ %89, %88 ], [ -1, %66 ], [ %43, %41 ], [ -1, %34 ], [ %89, %92 ], [ %124, %119 ], [ %158, %155 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10, !dbg !4581
  ret i32 %150, !dbg !4581

; <label>:151:                                    ; preds = %140
  %152 = getelementptr inbounds i32, i32* %142, i64 1, !dbg !4576
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !711, metadata !748), !dbg !4460
  store i32 %145, i32* %152, align 4, !dbg !4577, !tbaa !851
  br label %155

; <label>:153:                                    ; preds = %140
  %154 = add nsw i32 %143, -1, !dbg !4578
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !710, metadata !748), !dbg !4467
  br label %155, !dbg !4579

; <label>:155:                                    ; preds = %153, %151
  %156 = phi i32 [ %141, %153 ], [ %145, %151 ]
  %157 = phi i32* [ %142, %153 ], [ %152, %151 ]
  %158 = phi i32 [ %154, %153 ], [ %143, %151 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !711, metadata !748), !dbg !4460
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !726, metadata !4565), !dbg !4566
  %159 = getelementptr inbounds i32, i32* %129, i64 2
  tail call void @llvm.dbg.value(metadata i32* %144, i64 0, metadata !726, metadata !748), !dbg !4566
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !710, metadata !748), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !711, metadata !748), !dbg !4460
  %160 = icmp ult i32* %159, %95, !dbg !4567
  br i1 %160, label %127, label %149, !dbg !4570, !llvm.loop !4582
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4584 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4629, metadata !748), !dbg !4633
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4630, metadata !748), !dbg !4634
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4632, metadata !748), !dbg !4635
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4636
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4631, metadata !748), !dbg !4637
  %3 = icmp slt i32 %2, 0, !dbg !4638
  br i1 %3, label %4, label %6, !dbg !4640

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4641
  br label %24, !dbg !4642

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4643
  %8 = icmp eq i32 %7, 0, !dbg !4643
  br i1 %8, label %13, label %9, !dbg !4645

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4646
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4647
  %12 = icmp eq i64 %11, -1, !dbg !4648
  br i1 %12, label %16, label %13, !dbg !4649

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4650
  %15 = icmp eq i32 %14, 0, !dbg !4650
  br i1 %15, label %16, label %18, !dbg !4651

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4630, metadata !748), !dbg !4634
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4632, metadata !748), !dbg !4635
  br label %24, !dbg !4653

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4654
  %20 = load i32, i32* %19, align 4, !dbg !4654, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4630, metadata !748), !dbg !4634
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4630, metadata !748), !dbg !4634
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4632, metadata !748), !dbg !4635
  %22 = icmp eq i32 %20, 0, !dbg !4655
  br i1 %22, label %24, label %23, !dbg !4653

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4657, !tbaa !851
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4632, metadata !748), !dbg !4635
  br label %24, !dbg !4659

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4660
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4661 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4706, metadata !748), !dbg !4707
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4708
  br i1 %2, label %6, label %3, !dbg !4710

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4711
  %5 = icmp eq i32 %4, 0, !dbg !4711
  br i1 %5, label %6, label %8, !dbg !4712

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4713
  br label %17, !dbg !4714

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4715, metadata !748) #10, !dbg !4720
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4722
  %10 = load i32, i32* %9, align 8, !dbg !4722, !tbaa !4144
  %11 = and i32 %10, 256, !dbg !4724
  %12 = icmp eq i32 %11, 0, !dbg !4724
  br i1 %12, label %15, label %13, !dbg !4725

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4726
  br label %15, !dbg !4726

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4727
  br label %17, !dbg !4728

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4729
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4730 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4776, metadata !748), !dbg !4782
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4777, metadata !748), !dbg !4783
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4778, metadata !748), !dbg !4784
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4785
  %5 = load i8*, i8** %4, align 8, !dbg !4785, !tbaa !4336
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4786
  %7 = load i8*, i8** %6, align 8, !dbg !4786, !tbaa !4335
  %8 = icmp eq i8* %5, %7, !dbg !4787
  br i1 %8, label %9, label %28, !dbg !4788

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4789
  %11 = load i8*, i8** %10, align 8, !dbg !4789, !tbaa !1154
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4790
  %13 = load i8*, i8** %12, align 8, !dbg !4790, !tbaa !4791
  %14 = icmp eq i8* %11, %13, !dbg !4792
  br i1 %14, label %15, label %28, !dbg !4793

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4794
  %17 = load i8*, i8** %16, align 8, !dbg !4794, !tbaa !4795
  %18 = icmp eq i8* %17, null, !dbg !4796
  br i1 %18, label %19, label %28, !dbg !4797

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4798
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4799
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4779, metadata !748), !dbg !4800
  %22 = icmp eq i64 %21, -1, !dbg !4801
  br i1 %22, label %30, label %23, !dbg !4803

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4804
  %25 = load i32, i32* %24, align 8, !dbg !4805, !tbaa !4144
  %26 = and i32 %25, -17, !dbg !4805
  store i32 %26, i32* %24, align 8, !dbg !4805, !tbaa !4144
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4806
  store i64 %21, i64* %27, align 8, !dbg !4807, !tbaa !4808
  br label %30, !dbg !4809

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4810
  br label %30, !dbg !4811

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4812
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
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
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

!llvm.dbg.cu = !{!2, !95, !103, !108, !116, !568, !123, !130, !574, !654, !213, !662, !679, !681, !683, !687, !689, !692, !694, !222, !696, !731, !733, !735}
!llvm.ident = !{!737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737}
!llvm.module.flags = !{!738, !739, !740, !741, !742}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 64, type: !78, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/id.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !18, !20, !24, !26, !0, !48, !51, !53, !55, !57, !69}
!11 = !DIGlobalVariableExpression(var: !12)
!12 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 54, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !14, line: 80, baseType: !15)
!14 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !16, line: 134, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIGlobalVariableExpression(var: !19)
!19 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 54, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21)
!21 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 55, type: !22, isLocal: true, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !14, line: 65, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !16, line: 135, baseType: !17)
!24 = !DIGlobalVariableExpression(var: !25)
!25 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 55, type: !22, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27)
!27 = distinct !DIGlobalVariable(name: "infomap", scope: !28, file: !29, line: 632, type: !45, isLocal: true, isDefinition: true)
!28 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !29, file: !29, line: 630, type: !30, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !34)
!29 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!34 = !{!35, !36, !37, !44}
!35 = !DILocalVariable(name: "program", arg: 1, scope: !28, file: !29, line: 630, type: !32)
!36 = !DILocalVariable(name: "node", scope: !28, file: !29, line: 642, type: !32)
!37 = !DILocalVariable(name: "map_prog", scope: !28, file: !29, line: 643, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !28, file: !29, line: 632, size: 128, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !40, file: !29, line: 632, baseType: !32, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !40, file: !29, line: 632, baseType: !32, size: 64, offset: 64)
!44 = !DILocalVariable(name: "lc_messages", scope: !28, file: !29, line: 655, type: !32)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 896, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 7)
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 45, type: !50, isLocal: true, isDefinition: true)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 51, type: !50, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54)
!54 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 62, type: !6, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 58, type: !50, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "buf", scope: !59, file: !3, line: 340, type: !66, isLocal: true, isDefinition: true)
!59 = distinct !DISubprogram(name: "uidtostr_ptr", scope: !3, file: !3, line: 338, type: !60, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!60 = !DISubroutineType(types: !61)
!61 = !{!6, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!64 = !{!65}
!65 = !DILocalVariable(name: "uid", arg: 1, scope: !59, file: !3, line: 338, type: !62)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 21)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "buf", scope: !71, file: !3, line: 329, type: !66, isLocal: true, isDefinition: true)
!71 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !3, file: !3, line: 327, type: !72, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !76)
!72 = !DISubroutineType(types: !73)
!73 = !{!6, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!76 = !{!77}
!77 = !DILocalVariable(name: "gid", arg: 1, scope: !71, file: !3, line: 327, type: !74)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2560, elements: !89)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !81, line: 50, size: 256, elements: !82)
!81 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{!83, !84, !86, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !81, line: 52, baseType: !32, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !80, file: !81, line: 55, baseType: !85, size: 32, offset: 64)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !80, file: !81, line: 56, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !81, line: 57, baseType: !85, size: 32, offset: 192)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "buf", scope: !93, file: !94, line: 97, type: !66, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !94, file: !94, line: 95, type: !72, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !99)
!94 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !96, globals: !98)
!96 = !{!8, !97, !9}
!97 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !{!91}
!99 = !{!100}
!100 = !DILocalVariable(name: "gid", arg: 1, scope: !93, file: !94, line: 95, type: !74)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "Version", scope: !103, file: !104, line: 2, type: !32, isLocal: false, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !105)
!104 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!101}
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "file_name", scope: !108, file: !113, line: 36, type: !32, isLocal: true, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !110)
!109 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !{!106, !111}
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !108, file: !113, line: 46, type: !50, isLocal: true, isDefinition: true)
!113 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "exit_failure", scope: !116, file: !119, line: 24, type: !120, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !118)
!117 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !{!114}
!119 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!121 = !DIGlobalVariableExpression(var: !122)
!122 = distinct !DIGlobalVariable(name: "program_name", scope: !123, file: !127, line: 33, type: !32, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !126)
!124 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!8, !6}
!126 = !{!121}
!127 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !130, file: !174, line: 77, type: !207, isLocal: false, isDefinition: true)
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !132, retainedTypes: !167, globals: !171)
!131 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !{!133, !147, !152}
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !134, line: 32, size: 32, elements: !135)
!134 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!136 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!137 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!138 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!139 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!140 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!141 = !DIEnumerator(name: "c_quoting_style", value: 5)
!142 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!143 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!144 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!145 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!146 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !134, line: 242, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!150 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!151 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 46, size: 32, elements: !154)
!153 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!155 = !DIEnumerator(name: "_ISupper", value: 256)
!156 = !DIEnumerator(name: "_ISlower", value: 512)
!157 = !DIEnumerator(name: "_ISalpha", value: 1024)
!158 = !DIEnumerator(name: "_ISdigit", value: 2048)
!159 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!160 = !DIEnumerator(name: "_ISspace", value: 8192)
!161 = !DIEnumerator(name: "_ISprint", value: 16384)
!162 = !DIEnumerator(name: "_ISgraph", value: 32768)
!163 = !DIEnumerator(name: "_ISblank", value: 1)
!164 = !DIEnumerator(name: "_IScntrl", value: 2)
!165 = !DIEnumerator(name: "_ISpunct", value: 4)
!166 = !DIEnumerator(name: "_ISalnum", value: 8)
!167 = !{!85, !168, !169, !6}
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 62, baseType: !97)
!170 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !{!128, !172, !177, !189, !191, !196, !203, !205}
!172 = !DIGlobalVariableExpression(var: !173)
!173 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !130, file: !174, line: 93, type: !175, isLocal: false, isDefinition: true)
!174 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !89)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !130, file: !174, line: 1043, type: !179, isLocal: false, isDefinition: true)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !174, line: 57, size: 448, elements: !180)
!180 = !{!181, !182, !183, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !179, file: !174, line: 60, baseType: !133, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !174, line: 63, baseType: !85, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !179, file: !174, line: 67, baseType: !184, size: 256, offset: 64)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !179, file: !174, line: 70, baseType: !32, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !179, file: !174, line: 73, baseType: !32, size: 64, offset: 384)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !130, file: !174, line: 108, type: !179, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "slot0", scope: !130, file: !174, line: 834, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 256)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "slotvec", scope: !130, file: !174, line: 837, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !174, line: 826, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !174, line: 828, baseType: !169, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !174, line: 829, baseType: !6, size: 64, offset: 64)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "nslots", scope: !130, file: !174, line: 835, type: !85, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "slotvec0", scope: !130, file: !174, line: 836, type: !199, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 704, elements: !209)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!209 = !{!210}
!210 = !DISubrange(count: 11)
!211 = !DIGlobalVariableExpression(var: !212)
!212 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !213, file: !216, line: 26, type: !217, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !215)
!214 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !{!211}
!216 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 376, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 47)
!220 = !DIGlobalVariableExpression(var: !221)
!221 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !222, file: !566, line: 120, type: !567, isLocal: true, isDefinition: true)
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !224, retainedTypes: !563, globals: !565)
!223 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!224 = !{!225}
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 41, size: 32, elements: !227)
!226 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!228 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!229 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!230 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!231 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!232 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!233 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!234 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!235 = !DIEnumerator(name: "DAY_1", value: 131079)
!236 = !DIEnumerator(name: "DAY_2", value: 131080)
!237 = !DIEnumerator(name: "DAY_3", value: 131081)
!238 = !DIEnumerator(name: "DAY_4", value: 131082)
!239 = !DIEnumerator(name: "DAY_5", value: 131083)
!240 = !DIEnumerator(name: "DAY_6", value: 131084)
!241 = !DIEnumerator(name: "DAY_7", value: 131085)
!242 = !DIEnumerator(name: "ABMON_1", value: 131086)
!243 = !DIEnumerator(name: "ABMON_2", value: 131087)
!244 = !DIEnumerator(name: "ABMON_3", value: 131088)
!245 = !DIEnumerator(name: "ABMON_4", value: 131089)
!246 = !DIEnumerator(name: "ABMON_5", value: 131090)
!247 = !DIEnumerator(name: "ABMON_6", value: 131091)
!248 = !DIEnumerator(name: "ABMON_7", value: 131092)
!249 = !DIEnumerator(name: "ABMON_8", value: 131093)
!250 = !DIEnumerator(name: "ABMON_9", value: 131094)
!251 = !DIEnumerator(name: "ABMON_10", value: 131095)
!252 = !DIEnumerator(name: "ABMON_11", value: 131096)
!253 = !DIEnumerator(name: "ABMON_12", value: 131097)
!254 = !DIEnumerator(name: "MON_1", value: 131098)
!255 = !DIEnumerator(name: "MON_2", value: 131099)
!256 = !DIEnumerator(name: "MON_3", value: 131100)
!257 = !DIEnumerator(name: "MON_4", value: 131101)
!258 = !DIEnumerator(name: "MON_5", value: 131102)
!259 = !DIEnumerator(name: "MON_6", value: 131103)
!260 = !DIEnumerator(name: "MON_7", value: 131104)
!261 = !DIEnumerator(name: "MON_8", value: 131105)
!262 = !DIEnumerator(name: "MON_9", value: 131106)
!263 = !DIEnumerator(name: "MON_10", value: 131107)
!264 = !DIEnumerator(name: "MON_11", value: 131108)
!265 = !DIEnumerator(name: "MON_12", value: 131109)
!266 = !DIEnumerator(name: "AM_STR", value: 131110)
!267 = !DIEnumerator(name: "PM_STR", value: 131111)
!268 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!269 = !DIEnumerator(name: "D_FMT", value: 131113)
!270 = !DIEnumerator(name: "T_FMT", value: 131114)
!271 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!272 = !DIEnumerator(name: "ERA", value: 131116)
!273 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!274 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!275 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!276 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!277 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!278 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!279 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!280 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!281 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!282 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!283 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!284 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!285 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!286 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!287 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!288 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!289 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!290 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!291 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!292 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!293 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!294 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!295 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!296 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!297 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!298 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!299 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!300 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!301 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!302 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!303 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!304 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!305 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!306 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!307 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!308 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!309 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!310 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!311 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!312 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!313 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!314 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!315 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!316 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!317 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!318 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!319 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!320 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!321 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!322 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!323 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!324 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!325 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!326 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!327 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!328 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!332 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!333 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!334 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!335 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!336 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!337 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!338 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!339 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!340 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!341 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!342 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!343 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!344 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!345 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!346 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!347 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!348 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!349 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!350 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!351 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!352 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!353 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!354 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!355 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!356 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!357 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!358 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!359 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!360 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!363 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!365 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!366 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!367 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!368 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!369 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!370 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!371 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!372 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!373 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!374 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!375 = !DIEnumerator(name: "CODESET", value: 14)
!376 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!377 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!378 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!379 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!431 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!432 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!447 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!448 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!449 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!450 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!451 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!452 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!453 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!454 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!455 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!456 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!457 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!458 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!459 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!460 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!461 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!462 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!463 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!464 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!465 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!466 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!467 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!468 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!469 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!486 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!487 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!490 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!491 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!492 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!493 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!494 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!495 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!496 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!497 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!498 = !DIEnumerator(name: "THOUSEP", value: 65537)
!499 = !DIEnumerator(name: "__GROUPING", value: 65538)
!500 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!501 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!502 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!503 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!504 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!505 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!506 = !DIEnumerator(name: "__YESSTR", value: 327682)
!507 = !DIEnumerator(name: "__NOSTR", value: 327683)
!508 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!509 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!510 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!511 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!512 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!513 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!516 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!517 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!518 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!519 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!520 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!521 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!522 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!526 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!528 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!529 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!530 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!531 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!532 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!533 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!534 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!535 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!536 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!537 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!538 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!539 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!540 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!541 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!542 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!543 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!544 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!561 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!562 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!563 = !{!8, !6, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!565 = !{!220}
!566 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !570)
!569 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !572, line: 112, baseType: !573)
!572 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !16, line: 62, baseType: !97)
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !576, retainedTypes: !585, globals: !586)
!575 = !DIFile(filename: "./lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = !{!577}
!577 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !578, line: 26, size: 32, elements: !579)
!578 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!580, !581, !582, !583, !584}
!580 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!581 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!582 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!583 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!584 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!585 = !{!8, !13, !22}
!586 = !{!587, !650, !652}
!587 = !DIGlobalVariableExpression(var: !588)
!588 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !589, file: !590, line: 106, type: !32, isLocal: true, isDefinition: true)
!589 = distinct !DISubprogram(name: "parse_with_separator", scope: !590, file: !590, line: 102, type: !591, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !596)
!590 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !DISubroutineType(types: !592)
!592 = !{!32, !32, !32, !593, !594, !595, !595}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !616, !625, !626, !627, !628, !629, !630, !633, !638, !641, !645}
!597 = !DILocalVariable(name: "spec", arg: 1, scope: !589, file: !590, line: 102, type: !32)
!598 = !DILocalVariable(name: "separator", arg: 2, scope: !589, file: !590, line: 102, type: !32)
!599 = !DILocalVariable(name: "uid", arg: 3, scope: !589, file: !590, line: 103, type: !593)
!600 = !DILocalVariable(name: "gid", arg: 4, scope: !589, file: !590, line: 103, type: !594)
!601 = !DILocalVariable(name: "username", arg: 5, scope: !589, file: !590, line: 104, type: !595)
!602 = !DILocalVariable(name: "groupname", arg: 6, scope: !589, file: !590, line: 104, type: !595)
!603 = !DILocalVariable(name: "error_msg", scope: !589, file: !590, line: 110, type: !32)
!604 = !DILocalVariable(name: "pwd", scope: !589, file: !590, line: 111, type: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !607, line: 49, size: 384, elements: !608)
!607 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !{!609, !610, !611, !612, !613, !614, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !606, file: !607, line: 51, baseType: !6, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !606, file: !607, line: 52, baseType: !6, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !606, file: !607, line: 53, baseType: !15, size: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !606, file: !607, line: 54, baseType: !23, size: 32, offset: 160)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !606, file: !607, line: 55, baseType: !6, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !606, file: !607, line: 56, baseType: !6, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !606, file: !607, line: 57, baseType: !6, size: 64, offset: 320)
!616 = !DILocalVariable(name: "grp", scope: !589, file: !590, line: 112, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !619, line: 42, size: 256, elements: !620)
!619 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = !{!621, !622, !623, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !618, file: !619, line: 44, baseType: !6, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !618, file: !619, line: 45, baseType: !6, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !618, file: !619, line: 46, baseType: !23, size: 32, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !618, file: !619, line: 47, baseType: !595, size: 64, offset: 192)
!625 = !DILocalVariable(name: "u", scope: !589, file: !590, line: 113, type: !6)
!626 = !DILocalVariable(name: "g", scope: !589, file: !590, line: 114, type: !32)
!627 = !DILocalVariable(name: "gname", scope: !589, file: !590, line: 115, type: !6)
!628 = !DILocalVariable(name: "unum", scope: !589, file: !590, line: 116, type: !13)
!629 = !DILocalVariable(name: "gnum", scope: !589, file: !590, line: 117, type: !22)
!630 = !DILocalVariable(name: "ulen", scope: !631, file: !590, line: 137, type: !169)
!631 = distinct !DILexicalBlock(scope: !632, file: !590, line: 136, column: 5)
!632 = distinct !DILexicalBlock(scope: !589, file: !590, line: 130, column: 7)
!633 = !DILocalVariable(name: "use_login_group", scope: !634, file: !590, line: 164, type: !50)
!634 = distinct !DILexicalBlock(scope: !635, file: !590, line: 163, column: 9)
!635 = distinct !DILexicalBlock(scope: !636, file: !590, line: 162, column: 11)
!636 = distinct !DILexicalBlock(scope: !637, file: !590, line: 159, column: 5)
!637 = distinct !DILexicalBlock(scope: !589, file: !590, line: 158, column: 7)
!638 = !DILocalVariable(name: "tmp", scope: !639, file: !590, line: 173, type: !97)
!639 = distinct !DILexicalBlock(scope: !640, file: !590, line: 172, column: 13)
!640 = distinct !DILexicalBlock(scope: !634, file: !590, line: 165, column: 15)
!641 = !DILocalVariable(name: "buf", scope: !642, file: !590, line: 188, type: !66)
!642 = distinct !DILexicalBlock(scope: !643, file: !590, line: 185, column: 13)
!643 = distinct !DILexicalBlock(scope: !644, file: !590, line: 184, column: 15)
!644 = distinct !DILexicalBlock(scope: !635, file: !590, line: 182, column: 9)
!645 = !DILocalVariable(name: "tmp", scope: !646, file: !590, line: 205, type: !97)
!646 = distinct !DILexicalBlock(scope: !647, file: !590, line: 204, column: 9)
!647 = distinct !DILexicalBlock(scope: !648, file: !590, line: 203, column: 11)
!648 = distinct !DILexicalBlock(scope: !649, file: !590, line: 199, column: 5)
!649 = distinct !DILexicalBlock(scope: !589, file: !590, line: 198, column: 7)
!650 = !DIGlobalVariableExpression(var: !651)
!651 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !589, file: !590, line: 107, type: !32, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653)
!653 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !589, file: !590, line: 108, type: !32, isLocal: true, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !656, retainedTypes: !661)
!655 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = !{!657}
!657 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !658, line: 41, size: 32, elements: !659)
!658 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = !{!660}
!660 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!661 = !{!8}
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !664, retainedTypes: !678)
!663 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = !{!665}
!665 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !667, file: !666, line: 192, size: 32, elements: !676)
!666 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = distinct !DISubprogram(name: "x2nrealloc", scope: !666, file: !666, line: 180, type: !668, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !671)
!668 = !DISubroutineType(types: !669)
!669 = !{!8, !8, !670, !169}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(name: "p", arg: 1, scope: !667, file: !666, line: 180, type: !8)
!673 = !DILocalVariable(name: "pn", arg: 2, scope: !667, file: !666, line: 180, type: !670)
!674 = !DILocalVariable(name: "s", arg: 3, scope: !667, file: !666, line: 180, type: !169)
!675 = !DILocalVariable(name: "n", scope: !667, file: !666, line: 182, type: !169)
!676 = !{!677}
!677 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!678 = !{!169, !6, !8}
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!680 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!682 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !685, retainedTypes: !686)
!684 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!685 = !{!577, !152}
!686 = !{!85, !168}
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !661)
!688 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !691)
!690 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !{!169}
!692 = distinct !DICompileUnit(language: DW_LANG_C99, file: !693, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!693 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !695, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!695 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !698, retainedTypes: !730)
!697 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!698 = !{!699}
!699 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !701, file: !700, line: 83, size: 32, elements: !728)
!700 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = distinct !DISubprogram(name: "mgetgroups", scope: !700, file: !700, line: 66, type: !702, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !696, variables: !705)
!702 = !DISubroutineType(types: !703)
!703 = !{!85, !32, !22, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !716, !717, !720, !723, !726, !727}
!706 = !DILocalVariable(name: "username", arg: 1, scope: !701, file: !700, line: 66, type: !32)
!707 = !DILocalVariable(name: "gid", arg: 2, scope: !701, file: !700, line: 66, type: !22)
!708 = !DILocalVariable(name: "groups", arg: 3, scope: !701, file: !700, line: 66, type: !704)
!709 = !DILocalVariable(name: "max_n_groups", scope: !701, file: !700, line: 68, type: !85)
!710 = !DILocalVariable(name: "ng", scope: !701, file: !700, line: 69, type: !85)
!711 = !DILocalVariable(name: "g", scope: !701, file: !700, line: 70, type: !594)
!712 = !DILocalVariable(name: "h", scope: !713, file: !700, line: 92, type: !594)
!713 = distinct !DILexicalBlock(scope: !714, file: !700, line: 91, column: 9)
!714 = distinct !DILexicalBlock(scope: !715, file: !700, line: 82, column: 5)
!715 = distinct !DILexicalBlock(scope: !701, file: !700, line: 81, column: 7)
!716 = !DILocalVariable(name: "last_n_groups", scope: !713, file: !700, line: 93, type: !85)
!717 = !DILocalVariable(name: "saved_errno", scope: !718, file: !700, line: 105, type: !85)
!718 = distinct !DILexicalBlock(scope: !719, file: !700, line: 104, column: 13)
!719 = distinct !DILexicalBlock(scope: !713, file: !700, line: 103, column: 15)
!720 = !DILocalVariable(name: "saved_errno", scope: !721, file: !700, line: 156, type: !85)
!721 = distinct !DILexicalBlock(scope: !722, file: !700, line: 154, column: 5)
!722 = distinct !DILexicalBlock(scope: !701, file: !700, line: 153, column: 7)
!723 = !DILocalVariable(name: "first", scope: !724, file: !700, line: 187, type: !22)
!724 = distinct !DILexicalBlock(scope: !725, file: !700, line: 186, column: 5)
!725 = distinct !DILexicalBlock(scope: !701, file: !700, line: 185, column: 7)
!726 = !DILocalVariable(name: "next", scope: !724, file: !700, line: 188, type: !594)
!727 = !DILocalVariable(name: "groups_end", scope: !724, file: !700, line: 189, type: !594)
!728 = !{!729}
!729 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!730 = !{!8, !22, !169}
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !732, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!732 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!733 = distinct !DICompileUnit(language: DW_LANG_C99, file: !734, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !661)
!734 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!735 = distinct !DICompileUnit(language: DW_LANG_C99, file: !736, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !661)
!736 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!737 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!738 = !{i32 2, !"Dwarf Version", i32 4}
!739 = !{i32 2, !"Debug Info Version", i32 3}
!740 = !{i32 1, !"wchar_size", i32 4}
!741 = !{i32 7, !"PIC Level", i32 2}
!742 = !{i32 7, !"PIE Level", i32 2}
!743 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 79, type: !744, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !85}
!746 = !{!747}
!747 = !DILocalVariable(name: "status", arg: 1, scope: !743, file: !3, line: 79, type: !85)
!748 = !DIExpression()
!749 = !DILocation(line: 79, column: 12, scope: !743)
!750 = !DILocation(line: 81, column: 14, scope: !751)
!751 = distinct !DILexicalBlock(scope: !743, file: !3, line: 81, column: 7)
!752 = !DILocation(line: 81, column: 7, scope: !743)
!753 = !DILocation(line: 82, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 82, column: 5)
!755 = !{!756, !756, i64 0}
!756 = !{!"any pointer", !757, i64 0}
!757 = !{!"omnipotent char", !758, i64 0}
!758 = !{!"Simple C/C++ TBAA"}
!759 = !DILocation(line: 85, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !751, file: !3, line: 84, column: 5)
!761 = !DILocation(line: 86, column: 7, scope: !760)
!762 = !DILocation(line: 91, column: 7, scope: !760)
!763 = !DILocation(line: 102, column: 7, scope: !760)
!764 = !DILocation(line: 103, column: 7, scope: !760)
!765 = !DILocation(line: 104, column: 7, scope: !760)
!766 = !DILocation(line: 642, column: 15, scope: !28, inlinedAt: !767)
!767 = distinct !DILocation(line: 108, column: 7, scope: !760)
!768 = !DILocation(line: 651, column: 3, scope: !28, inlinedAt: !767)
!769 = !DILocation(line: 655, column: 29, scope: !28, inlinedAt: !767)
!770 = !DILocation(line: 655, column: 15, scope: !28, inlinedAt: !767)
!771 = !DILocation(line: 656, column: 7, scope: !772, inlinedAt: !767)
!772 = distinct !DILexicalBlock(scope: !28, file: !29, line: 656, column: 7)
!773 = !DILocation(line: 656, column: 19, scope: !772, inlinedAt: !767)
!774 = !DILocation(line: 656, column: 22, scope: !772, inlinedAt: !767)
!775 = !DILocation(line: 656, column: 7, scope: !28, inlinedAt: !767)
!776 = !DILocation(line: 662, column: 7, scope: !777, inlinedAt: !767)
!777 = distinct !DILexicalBlock(scope: !772, file: !29, line: 657, column: 5)
!778 = !DILocation(line: 664, column: 5, scope: !777, inlinedAt: !767)
!779 = !DILocation(line: 665, column: 3, scope: !28, inlinedAt: !767)
!780 = !DILocation(line: 667, column: 3, scope: !28, inlinedAt: !767)
!781 = !DILocation(line: 110, column: 3, scope: !743)
!782 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 114, type: !783, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{!85, !85, !595}
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !812, !813, !815}
!786 = !DILocalVariable(name: "argc", arg: 1, scope: !782, file: !3, line: 114, type: !85)
!787 = !DILocalVariable(name: "argv", arg: 2, scope: !782, file: !3, line: 114, type: !595)
!788 = !DILocalVariable(name: "optc", scope: !782, file: !3, line: 116, type: !85)
!789 = !DILocalVariable(name: "selinux_enabled", scope: !782, file: !3, line: 117, type: !85)
!790 = !DILocalVariable(name: "smack_enabled", scope: !782, file: !3, line: 118, type: !50)
!791 = !DILocalVariable(name: "opt_zero", scope: !782, file: !3, line: 119, type: !50)
!792 = !DILocalVariable(name: "pw_name", scope: !782, file: !3, line: 120, type: !6)
!793 = !DILocalVariable(name: "just_group_list", scope: !782, file: !3, line: 123, type: !50)
!794 = !DILocalVariable(name: "just_group", scope: !782, file: !3, line: 125, type: !50)
!795 = !DILocalVariable(name: "use_real", scope: !782, file: !3, line: 127, type: !50)
!796 = !DILocalVariable(name: "just_user", scope: !782, file: !3, line: 129, type: !50)
!797 = !DILocalVariable(name: "n_ids", scope: !782, file: !3, line: 187, type: !169)
!798 = !DILocalVariable(name: "default_format", scope: !782, file: !3, line: 201, type: !50)
!799 = !DILocalVariable(name: "pwd", scope: !800, file: !3, line: 233, type: !802)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 232, column: 5)
!801 = distinct !DILexicalBlock(scope: !782, file: !3, line: 231, column: 7)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !607, line: 49, size: 384, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !803, file: !607, line: 51, baseType: !6, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !803, file: !607, line: 52, baseType: !6, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !803, file: !607, line: 53, baseType: !15, size: 32, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !803, file: !607, line: 54, baseType: !23, size: 32, offset: 160)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !803, file: !607, line: 55, baseType: !6, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !803, file: !607, line: 56, baseType: !6, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !803, file: !607, line: 57, baseType: !6, size: 64, offset: 320)
!812 = !DILocalVariable(name: "spec", scope: !800, file: !3, line: 234, type: !32)
!813 = !DILocalVariable(name: "NO_UID", scope: !814, file: !3, line: 259, type: !13)
!814 = distinct !DILexicalBlock(scope: !801, file: !3, line: 255, column: 5)
!815 = !DILocalVariable(name: "NO_GID", scope: !814, file: !3, line: 260, type: !22)
!816 = !DILocation(line: 114, column: 11, scope: !782)
!817 = !DILocation(line: 114, column: 24, scope: !782)
!818 = !DILocation(line: 117, column: 7, scope: !782)
!819 = !DILocation(line: 118, column: 8, scope: !782)
!820 = !DILocation(line: 119, column: 8, scope: !782)
!821 = !DILocation(line: 120, column: 9, scope: !782)
!822 = !DILocation(line: 123, column: 8, scope: !782)
!823 = !DILocation(line: 125, column: 8, scope: !782)
!824 = !DILocation(line: 127, column: 8, scope: !782)
!825 = !DILocation(line: 129, column: 8, scope: !782)
!826 = !DILocation(line: 132, column: 21, scope: !782)
!827 = !DILocation(line: 132, column: 3, scope: !782)
!828 = !DILocation(line: 133, column: 3, scope: !782)
!829 = !DILocation(line: 134, column: 3, scope: !782)
!830 = !DILocation(line: 135, column: 3, scope: !782)
!831 = !DILocation(line: 137, column: 3, scope: !782)
!832 = !DILocation(line: 139, column: 3, scope: !782)
!833 = !DILocation(line: 139, column: 18, scope: !782)
!834 = !DILocation(line: 116, column: 7, scope: !782)
!835 = distinct !{!835, !832, !836}
!836 = !DILocation(line: 185, column: 5, scope: !782)
!837 = !DILocation(line: 156, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 155, column: 15)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 142, column: 9)
!840 = distinct !DILexicalBlock(scope: !782, file: !3, line: 140, column: 5)
!841 = !DILocation(line: 164, column: 11, scope: !839)
!842 = !DILocation(line: 167, column: 11, scope: !839)
!843 = !DILocation(line: 170, column: 11, scope: !839)
!844 = !DILocation(line: 173, column: 11, scope: !839)
!845 = !DILocation(line: 176, column: 11, scope: !839)
!846 = !DILocation(line: 179, column: 11, scope: !839)
!847 = !DILocation(line: 180, column: 9, scope: !839)
!848 = !DILocation(line: 181, column: 9, scope: !839)
!849 = !DILocation(line: 183, column: 11, scope: !839)
!850 = !DILocation(line: 187, column: 25, scope: !782)
!851 = !{!852, !852, i64 0}
!852 = !{!"int", !757, i64 0}
!853 = !DILocation(line: 187, column: 23, scope: !782)
!854 = !DILocation(line: 188, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !782, file: !3, line: 188, column: 7)
!856 = !DILocation(line: 188, column: 7, scope: !782)
!857 = !DILocation(line: 190, column: 20, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !3, line: 189, column: 5)
!859 = !DILocation(line: 190, column: 55, scope: !858)
!860 = !DILocation(line: 190, column: 62, scope: !858)
!861 = !DILocation(line: 190, column: 50, scope: !858)
!862 = !DILocation(line: 190, column: 43, scope: !858)
!863 = !DILocation(line: 190, column: 7, scope: !858)
!864 = !DILocation(line: 191, column: 7, scope: !858)
!865 = !DILocation(line: 198, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !782, file: !3, line: 198, column: 7)
!867 = !DILocation(line: 198, column: 19, scope: !866)
!868 = !DILocation(line: 198, column: 17, scope: !866)
!869 = !DILocation(line: 198, column: 32, scope: !866)
!870 = !DILocation(line: 198, column: 30, scope: !866)
!871 = !DILocation(line: 198, column: 63, scope: !866)
!872 = !DILocation(line: 198, column: 7, scope: !782)
!873 = !DILocation(line: 199, column: 5, scope: !866)
!874 = !DILocation(line: 202, column: 28, scope: !782)
!875 = !DILocation(line: 204, column: 28, scope: !782)
!876 = !DILocation(line: 206, column: 22, scope: !877)
!877 = distinct !DILexicalBlock(scope: !782, file: !3, line: 206, column: 7)
!878 = !DILocation(line: 206, column: 26, scope: !877)
!879 = !DILocation(line: 206, column: 35, scope: !877)
!880 = !DILocation(line: 206, column: 7, scope: !782)
!881 = !DILocation(line: 207, column: 5, scope: !877)
!882 = !DILocation(line: 210, column: 25, scope: !883)
!883 = distinct !DILexicalBlock(scope: !782, file: !3, line: 210, column: 7)
!884 = !DILocation(line: 210, column: 22, scope: !883)
!885 = !DILocation(line: 211, column: 5, scope: !883)
!886 = !DILocation(line: 231, column: 13, scope: !801)
!887 = !DILocation(line: 231, column: 7, scope: !782)
!888 = !DILocation(line: 233, column: 22, scope: !800)
!889 = !DILocation(line: 234, column: 26, scope: !800)
!890 = !DILocation(line: 234, column: 19, scope: !800)
!891 = !DILocation(line: 238, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !800, file: !3, line: 238, column: 11)
!893 = !{!757, !757, i64 0}
!894 = !DILocation(line: 238, column: 11, scope: !800)
!895 = !DILocation(line: 240, column: 15, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 240, column: 15)
!897 = distinct !DILexicalBlock(scope: !892, file: !3, line: 239, column: 9)
!898 = !DILocation(line: 240, column: 63, scope: !896)
!899 = !DILocation(line: 240, column: 15, scope: !897)
!900 = !DILocation(line: 245, column: 31, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !3, line: 241, column: 13)
!902 = !DILocation(line: 245, column: 21, scope: !901)
!903 = !DILocation(line: 248, column: 15, scope: !904)
!904 = distinct !DILexicalBlock(scope: !800, file: !3, line: 248, column: 11)
!905 = !DILocation(line: 248, column: 11, scope: !800)
!906 = !DILocation(line: 249, column: 9, scope: !904)
!907 = !DILocation(line: 259, column: 13, scope: !814)
!908 = !DILocation(line: 260, column: 13, scope: !814)
!909 = !DILocation(line: 262, column: 11, scope: !814)
!910 = !DILocation(line: 262, column: 24, scope: !911)
!911 = distinct !DILexicalBlock(scope: !814, file: !3, line: 262, column: 11)
!912 = !DILocation(line: 262, column: 11, scope: !911)
!913 = !DILocation(line: 263, column: 25, scope: !911)
!914 = !DILocation(line: 265, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 264, column: 9)
!916 = !DILocation(line: 265, column: 17, scope: !915)
!917 = !DILocation(line: 266, column: 18, scope: !915)
!918 = !DILocation(line: 266, column: 16, scope: !915)
!919 = !DILocation(line: 267, column: 20, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !3, line: 267, column: 15)
!921 = !DILocation(line: 267, column: 30, scope: !920)
!922 = !DILocation(line: 267, column: 33, scope: !920)
!923 = !DILocation(line: 267, column: 15, scope: !915)
!924 = !DILocation(line: 268, column: 13, scope: !920)
!925 = !DILocation(line: 271, column: 11, scope: !814)
!926 = !DILocation(line: 271, column: 23, scope: !927)
!927 = distinct !DILexicalBlock(scope: !814, file: !3, line: 271, column: 11)
!928 = !DILocation(line: 271, column: 11, scope: !927)
!929 = !DILocation(line: 272, column: 25, scope: !927)
!930 = !DILocation(line: 282, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 281, column: 9)
!932 = distinct !DILexicalBlock(scope: !814, file: !3, line: 280, column: 11)
!933 = !DILocation(line: 274, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !3, line: 273, column: 9)
!935 = !DILocation(line: 274, column: 17, scope: !934)
!936 = !DILocation(line: 275, column: 18, scope: !934)
!937 = !DILocation(line: 275, column: 16, scope: !934)
!938 = !DILocation(line: 276, column: 20, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !3, line: 276, column: 15)
!940 = !DILocation(line: 276, column: 30, scope: !939)
!941 = !DILocation(line: 276, column: 33, scope: !939)
!942 = !DILocation(line: 276, column: 15, scope: !934)
!943 = !DILocation(line: 277, column: 13, scope: !939)
!944 = !DILocation(line: 280, column: 22, scope: !932)
!945 = !DILocation(line: 282, column: 17, scope: !931)
!946 = !DILocation(line: 283, column: 18, scope: !931)
!947 = !DILocation(line: 283, column: 16, scope: !931)
!948 = !DILocation(line: 284, column: 20, scope: !949)
!949 = distinct !DILexicalBlock(scope: !931, file: !3, line: 284, column: 15)
!950 = !DILocation(line: 284, column: 30, scope: !949)
!951 = !DILocation(line: 284, column: 33, scope: !949)
!952 = !DILocation(line: 284, column: 15, scope: !931)
!953 = !DILocation(line: 285, column: 13, scope: !949)
!954 = !DILocation(line: 287, column: 17, scope: !931)
!955 = !DILocation(line: 288, column: 18, scope: !931)
!956 = !DILocation(line: 288, column: 16, scope: !931)
!957 = !DILocation(line: 289, column: 20, scope: !958)
!958 = distinct !DILexicalBlock(scope: !931, file: !3, line: 289, column: 15)
!959 = !DILocation(line: 289, column: 30, scope: !958)
!960 = !DILocation(line: 289, column: 33, scope: !958)
!961 = !DILocation(line: 289, column: 15, scope: !931)
!962 = !DILocation(line: 290, column: 13, scope: !958)
!963 = !DILocation(line: 250, column: 31, scope: !800)
!964 = !{!965, !756, i64 0}
!965 = !{!"passwd", !756, i64 0, !756, i64 8, !852, i64 16, !852, i64 20, !756, i64 24, !756, i64 32, !756, i64 40}
!966 = !DILocation(line: 250, column: 17, scope: !800)
!967 = !DILocation(line: 251, column: 26, scope: !800)
!968 = !{!965, !852, i64 16}
!969 = !DILocation(line: 251, column: 19, scope: !800)
!970 = !DILocation(line: 251, column: 12, scope: !800)
!971 = !DILocation(line: 252, column: 26, scope: !800)
!972 = !{!965, !852, i64 20}
!973 = !DILocation(line: 252, column: 19, scope: !800)
!974 = !DILocation(line: 252, column: 12, scope: !800)
!975 = !DILocation(line: 294, column: 7, scope: !782)
!976 = !DILocation(line: 296, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 295, column: 5)
!978 = distinct !DILexicalBlock(scope: !782, file: !3, line: 294, column: 7)
!979 = !DILocalVariable(name: "uid", arg: 1, scope: !980, file: !3, line: 348, type: !13)
!980 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 348, type: !981, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !13}
!983 = !{!979, !984, !985}
!984 = !DILocalVariable(name: "pwd", scope: !980, file: !3, line: 350, type: !802)
!985 = !DILocalVariable(name: "s", scope: !980, file: !3, line: 363, type: !6)
!986 = !DILocation(line: 348, column: 19, scope: !980, inlinedAt: !987)
!987 = distinct !DILocation(line: 296, column: 7, scope: !977)
!988 = !DILocation(line: 350, column: 18, scope: !980, inlinedAt: !987)
!989 = !DILocation(line: 352, column: 7, scope: !980, inlinedAt: !987)
!990 = !DILocation(line: 341, column: 21, scope: !59, inlinedAt: !991)
!991 = distinct !DILocation(line: 363, column: 34, scope: !980, inlinedAt: !987)
!992 = !DILocation(line: 354, column: 13, scope: !993, inlinedAt: !987)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 353, column: 5)
!994 = distinct !DILexicalBlock(scope: !980, file: !3, line: 352, column: 7)
!995 = !DILocation(line: 355, column: 15, scope: !996, inlinedAt: !987)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 355, column: 11)
!997 = !DILocation(line: 355, column: 11, scope: !993, inlinedAt: !987)
!998 = !DILocation(line: 357, column: 24, scope: !999, inlinedAt: !987)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 356, column: 9)
!1000 = !DILocation(line: 341, column: 21, scope: !59, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 358, column: 18, scope: !999, inlinedAt: !987)
!1002 = !DILocation(line: 341, column: 10, scope: !59, inlinedAt: !1001)
!1003 = !DILocation(line: 357, column: 11, scope: !999, inlinedAt: !987)
!1004 = !DILocation(line: 360, column: 9, scope: !999, inlinedAt: !987)
!1005 = !DILocation(line: 363, column: 24, scope: !980, inlinedAt: !987)
!1006 = !DILocation(line: 363, column: 13, scope: !980, inlinedAt: !987)
!1007 = !DILocation(line: 341, column: 10, scope: !59, inlinedAt: !991)
!1008 = !DILocation(line: 363, column: 9, scope: !980, inlinedAt: !987)
!1009 = !DILocation(line: 364, column: 3, scope: !980, inlinedAt: !987)
!1010 = !DILocation(line: 297, column: 5, scope: !977)
!1011 = !DILocation(line: 298, column: 12, scope: !978)
!1012 = !DILocation(line: 300, column: 25, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 300, column: 11)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 299, column: 5)
!1015 = distinct !DILexicalBlock(scope: !978, file: !3, line: 298, column: 12)
!1016 = !DILocation(line: 300, column: 12, scope: !1013)
!1017 = !DILocation(line: 300, column: 11, scope: !1014)
!1018 = !DILocation(line: 301, column: 9, scope: !1013)
!1019 = !DILocation(line: 303, column: 12, scope: !1015)
!1020 = !DILocation(line: 305, column: 39, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 305, column: 11)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 304, column: 5)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 303, column: 12)
!1024 = !DILocation(line: 305, column: 51, scope: !1021)
!1025 = !DILocation(line: 306, column: 30, scope: !1021)
!1026 = !DILocation(line: 305, column: 12, scope: !1021)
!1027 = !DILocation(line: 305, column: 11, scope: !1022)
!1028 = !DILocation(line: 307, column: 9, scope: !1021)
!1029 = !DILocalVariable(name: "username", arg: 1, scope: !1030, file: !3, line: 370, type: !32)
!1030 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 370, type: !30, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1031)
!1031 = !{!1029, !1032, !1033, !1041, !1043, !1044, !1045}
!1032 = !DILocalVariable(name: "pwd", scope: !1030, file: !3, line: 372, type: !802)
!1033 = !DILocalVariable(name: "grp", scope: !1030, file: !3, line: 373, type: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !619, line: 42, size: 256, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1035, file: !619, line: 44, baseType: !6, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1035, file: !619, line: 45, baseType: !6, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1035, file: !619, line: 46, baseType: !23, size: 32, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1035, file: !619, line: 47, baseType: !595, size: 64, offset: 192)
!1041 = !DILocalVariable(name: "groups", scope: !1042, file: !3, line: 402, type: !594)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 401, column: 3)
!1043 = !DILocalVariable(name: "i", scope: !1042, file: !3, line: 403, type: !85)
!1044 = !DILocalVariable(name: "primary_group", scope: !1042, file: !3, line: 405, type: !22)
!1045 = !DILocalVariable(name: "n_groups", scope: !1042, file: !3, line: 411, type: !85)
!1046 = !DILocation(line: 370, column: 30, scope: !1030, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 315, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 314, column: 5)
!1049 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 309, column: 12)
!1050 = !DILocation(line: 375, column: 3, scope: !1030, inlinedAt: !1047)
!1051 = !DILocation(line: 338, column: 28, scope: !59, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 375, column: 3, scope: !1030, inlinedAt: !1047)
!1053 = !DILocation(line: 341, column: 21, scope: !59, inlinedAt: !1052)
!1054 = !DILocation(line: 341, column: 10, scope: !59, inlinedAt: !1052)
!1055 = !DILocation(line: 376, column: 19, scope: !1030, inlinedAt: !1047)
!1056 = !DILocation(line: 376, column: 9, scope: !1030, inlinedAt: !1047)
!1057 = !DILocation(line: 372, column: 18, scope: !1030, inlinedAt: !1047)
!1058 = !DILocation(line: 377, column: 7, scope: !1059, inlinedAt: !1047)
!1059 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 377, column: 7)
!1060 = !DILocation(line: 377, column: 7, scope: !1030, inlinedAt: !1047)
!1061 = !DILocation(line: 378, column: 5, scope: !1059, inlinedAt: !1047)
!1062 = !DILocation(line: 380, column: 3, scope: !1030, inlinedAt: !1047)
!1063 = !DILocation(line: 327, column: 28, scope: !71, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 380, column: 3, scope: !1030, inlinedAt: !1047)
!1065 = !DILocation(line: 330, column: 21, scope: !71, inlinedAt: !1064)
!1066 = !DILocation(line: 330, column: 10, scope: !71, inlinedAt: !1064)
!1067 = !DILocation(line: 381, column: 19, scope: !1030, inlinedAt: !1047)
!1068 = !DILocation(line: 381, column: 9, scope: !1030, inlinedAt: !1047)
!1069 = !DILocation(line: 373, column: 17, scope: !1030, inlinedAt: !1047)
!1070 = !DILocation(line: 382, column: 7, scope: !1071, inlinedAt: !1047)
!1071 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 382, column: 7)
!1072 = !DILocation(line: 382, column: 7, scope: !1030, inlinedAt: !1047)
!1073 = !DILocation(line: 383, column: 5, scope: !1071, inlinedAt: !1047)
!1074 = !{!1075, !756, i64 0}
!1075 = !{!"group", !756, i64 0, !756, i64 8, !852, i64 16, !756, i64 24}
!1076 = !DILocation(line: 385, column: 7, scope: !1077, inlinedAt: !1047)
!1077 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 385, column: 7)
!1078 = !DILocation(line: 385, column: 15, scope: !1077, inlinedAt: !1047)
!1079 = !DILocation(line: 385, column: 12, scope: !1077, inlinedAt: !1047)
!1080 = !DILocation(line: 385, column: 7, scope: !1030, inlinedAt: !1047)
!1081 = !DILocation(line: 387, column: 7, scope: !1082, inlinedAt: !1047)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 386, column: 5)
!1083 = !DILocation(line: 338, column: 28, scope: !59, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 387, column: 7, scope: !1082, inlinedAt: !1047)
!1085 = !DILocation(line: 341, column: 21, scope: !59, inlinedAt: !1084)
!1086 = !DILocation(line: 341, column: 10, scope: !59, inlinedAt: !1084)
!1087 = !DILocation(line: 388, column: 23, scope: !1082, inlinedAt: !1047)
!1088 = !DILocation(line: 388, column: 13, scope: !1082, inlinedAt: !1047)
!1089 = !DILocation(line: 389, column: 11, scope: !1090, inlinedAt: !1047)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 389, column: 11)
!1091 = !DILocation(line: 389, column: 11, scope: !1082, inlinedAt: !1047)
!1092 = !DILocation(line: 390, column: 9, scope: !1090, inlinedAt: !1047)
!1093 = !DILocation(line: 393, column: 7, scope: !1094, inlinedAt: !1047)
!1094 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 393, column: 7)
!1095 = !DILocation(line: 393, column: 15, scope: !1094, inlinedAt: !1047)
!1096 = !DILocation(line: 393, column: 12, scope: !1094, inlinedAt: !1047)
!1097 = !DILocation(line: 393, column: 7, scope: !1030, inlinedAt: !1047)
!1098 = !DILocation(line: 395, column: 7, scope: !1099, inlinedAt: !1047)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 394, column: 5)
!1100 = !DILocation(line: 327, column: 28, scope: !71, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 395, column: 7, scope: !1099, inlinedAt: !1047)
!1102 = !DILocation(line: 330, column: 21, scope: !71, inlinedAt: !1101)
!1103 = !DILocation(line: 330, column: 10, scope: !71, inlinedAt: !1101)
!1104 = !DILocation(line: 396, column: 23, scope: !1099, inlinedAt: !1047)
!1105 = !DILocation(line: 396, column: 13, scope: !1099, inlinedAt: !1047)
!1106 = !DILocation(line: 397, column: 11, scope: !1107, inlinedAt: !1047)
!1107 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 397, column: 11)
!1108 = !DILocation(line: 397, column: 11, scope: !1099, inlinedAt: !1047)
!1109 = !DILocation(line: 398, column: 9, scope: !1107, inlinedAt: !1047)
!1110 = !DILocation(line: 402, column: 5, scope: !1042, inlinedAt: !1047)
!1111 = !DILocation(line: 406, column: 9, scope: !1112, inlinedAt: !1047)
!1112 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 406, column: 9)
!1113 = !DILocation(line: 406, column: 9, scope: !1042, inlinedAt: !1047)
!1114 = !DILocation(line: 407, column: 23, scope: !1112, inlinedAt: !1047)
!1115 = !DILocation(line: 407, column: 34, scope: !1112, inlinedAt: !1047)
!1116 = !DILocation(line: 411, column: 20, scope: !1042, inlinedAt: !1047)
!1117 = !DILocation(line: 405, column: 11, scope: !1042, inlinedAt: !1047)
!1118 = !DILocation(line: 402, column: 12, scope: !1042, inlinedAt: !1047)
!1119 = !DILocation(line: 411, column: 9, scope: !1042, inlinedAt: !1047)
!1120 = !DILocation(line: 412, column: 18, scope: !1121, inlinedAt: !1047)
!1121 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 412, column: 9)
!1122 = !DILocation(line: 412, column: 9, scope: !1042, inlinedAt: !1047)
!1123 = !DILocation(line: 415, column: 21, scope: !1124, inlinedAt: !1047)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 414, column: 13)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 413, column: 7)
!1126 = !DILocation(line: 414, column: 13, scope: !1125, inlinedAt: !1047)
!1127 = !DILocation(line: 415, column: 28, scope: !1124, inlinedAt: !1047)
!1128 = !DILocation(line: 416, column: 18, scope: !1124, inlinedAt: !1047)
!1129 = !DILocation(line: 415, column: 11, scope: !1124, inlinedAt: !1047)
!1130 = !DILocation(line: 418, column: 28, scope: !1124, inlinedAt: !1047)
!1131 = !DILocation(line: 418, column: 11, scope: !1124, inlinedAt: !1047)
!1132 = !DILocation(line: 435, column: 3, scope: !1030, inlinedAt: !1047)
!1133 = !DILocation(line: 423, column: 18, scope: !1134, inlinedAt: !1047)
!1134 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 423, column: 9)
!1135 = !DILocation(line: 423, column: 9, scope: !1042, inlinedAt: !1047)
!1136 = !DILocation(line: 424, column: 7, scope: !1134, inlinedAt: !1047)
!1137 = !DILocation(line: 403, column: 9, scope: !1042, inlinedAt: !1047)
!1138 = !DILocation(line: 425, column: 5, scope: !1139, inlinedAt: !1047)
!1139 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 425, column: 5)
!1140 = !DILocation(line: 427, column: 15, scope: !1141, inlinedAt: !1047)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 427, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 426, column: 7)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 425, column: 5)
!1144 = !DILocation(line: 427, column: 13, scope: !1142, inlinedAt: !1047)
!1145 = !DILocalVariable(name: "__c", arg: 1, scope: !1146, file: !1147, line: 105, type: !85)
!1146 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1147, file: !1147, line: 105, type: !1148, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1150)
!1147 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!85, !85}
!1150 = !{!1145}
!1151 = !DILocation(line: 105, column: 23, scope: !1146, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 428, column: 11, scope: !1141, inlinedAt: !1047)
!1153 = !DILocation(line: 107, column: 10, scope: !1146, inlinedAt: !1152)
!1154 = !{!1155, !756, i64 40}
!1155 = !{!"_IO_FILE", !852, i64 0, !756, i64 8, !756, i64 16, !756, i64 24, !756, i64 32, !756, i64 40, !756, i64 48, !756, i64 56, !756, i64 64, !756, i64 72, !756, i64 80, !756, i64 88, !756, i64 96, !756, i64 104, !852, i64 112, !852, i64 116, !1156, i64 120, !1157, i64 128, !757, i64 130, !757, i64 131, !756, i64 136, !1156, i64 144, !756, i64 152, !756, i64 160, !756, i64 168, !756, i64 176, !1156, i64 184, !852, i64 192, !757, i64 196}
!1156 = !{!"long", !757, i64 0}
!1157 = !{!"short", !757, i64 0}
!1158 = !{!1155, !756, i64 48}
!1159 = !{!"branch_weights", i32 2000, i32 1}
!1160 = !DILocation(line: 429, column: 9, scope: !1142, inlinedAt: !1047)
!1161 = !DILocation(line: 327, column: 28, scope: !71, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 429, column: 9, scope: !1142, inlinedAt: !1047)
!1163 = !DILocation(line: 330, column: 21, scope: !71, inlinedAt: !1162)
!1164 = !DILocation(line: 330, column: 10, scope: !71, inlinedAt: !1162)
!1165 = !DILocation(line: 430, column: 25, scope: !1142, inlinedAt: !1047)
!1166 = !DILocation(line: 430, column: 15, scope: !1142, inlinedAt: !1047)
!1167 = !DILocation(line: 431, column: 13, scope: !1168, inlinedAt: !1047)
!1168 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 431, column: 13)
!1169 = !DILocation(line: 431, column: 13, scope: !1142, inlinedAt: !1047)
!1170 = !DILocation(line: 432, column: 11, scope: !1168, inlinedAt: !1047)
!1171 = !DILocation(line: 425, column: 32, scope: !1143, inlinedAt: !1047)
!1172 = !DILocation(line: 425, column: 19, scope: !1143, inlinedAt: !1047)
!1173 = distinct !{!1173, !1174, !1175}
!1174 = !DILocation(line: 425, column: 5, scope: !1139)
!1175 = !DILocation(line: 433, column: 7, scope: !1139)
!1176 = !DILocation(line: 434, column: 11, scope: !1042, inlinedAt: !1047)
!1177 = !DIExpression(DW_OP_deref)
!1178 = !DILocation(line: 434, column: 5, scope: !1042, inlinedAt: !1047)
!1179 = !DILocation(line: 441, column: 1, scope: !1030, inlinedAt: !1047)
!1180 = !DILocation(line: 317, column: 3, scope: !782)
!1181 = !DILocation(line: 105, column: 23, scope: !1146, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 317, column: 3, scope: !782)
!1183 = !DILocation(line: 107, column: 10, scope: !1146, inlinedAt: !1182)
!1184 = !DILocation(line: 320, column: 10, scope: !782)
!1185 = !DILocation(line: 321, column: 1, scope: !782)
!1186 = distinct !DISubprogram(name: "print_group_list", scope: !94, file: !94, line: 36, type: !1187, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!50, !32, !13, !22, !22, !50, !7}
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1208, !1210, !1211}
!1190 = !DILocalVariable(name: "username", arg: 1, scope: !1186, file: !94, line: 36, type: !32)
!1191 = !DILocalVariable(name: "ruid", arg: 2, scope: !1186, file: !94, line: 37, type: !13)
!1192 = !DILocalVariable(name: "rgid", arg: 3, scope: !1186, file: !94, line: 37, type: !22)
!1193 = !DILocalVariable(name: "egid", arg: 4, scope: !1186, file: !94, line: 37, type: !22)
!1194 = !DILocalVariable(name: "use_names", arg: 5, scope: !1186, file: !94, line: 38, type: !50)
!1195 = !DILocalVariable(name: "delim", arg: 6, scope: !1186, file: !94, line: 38, type: !7)
!1196 = !DILocalVariable(name: "ok", scope: !1186, file: !94, line: 40, type: !50)
!1197 = !DILocalVariable(name: "pwd", scope: !1186, file: !94, line: 41, type: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !607, line: 49, size: 384, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1199, file: !607, line: 51, baseType: !6, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1199, file: !607, line: 52, baseType: !6, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1199, file: !607, line: 53, baseType: !15, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1199, file: !607, line: 54, baseType: !23, size: 32, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1199, file: !607, line: 55, baseType: !6, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1199, file: !607, line: 56, baseType: !6, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1199, file: !607, line: 57, baseType: !6, size: 64, offset: 320)
!1208 = !DILocalVariable(name: "groups", scope: !1209, file: !94, line: 61, type: !594)
!1209 = distinct !DILexicalBlock(scope: !1186, file: !94, line: 60, column: 3)
!1210 = !DILocalVariable(name: "i", scope: !1209, file: !94, line: 62, type: !85)
!1211 = !DILocalVariable(name: "n_groups", scope: !1209, file: !94, line: 64, type: !85)
!1212 = !DILocation(line: 36, column: 31, scope: !1186)
!1213 = !DILocation(line: 37, column: 25, scope: !1186)
!1214 = !DILocation(line: 37, column: 37, scope: !1186)
!1215 = !DILocation(line: 37, column: 49, scope: !1186)
!1216 = !DILocation(line: 38, column: 24, scope: !1186)
!1217 = !DILocation(line: 38, column: 40, scope: !1186)
!1218 = !DILocation(line: 40, column: 8, scope: !1186)
!1219 = !DILocation(line: 41, column: 18, scope: !1186)
!1220 = !DILocation(line: 43, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1186, file: !94, line: 43, column: 7)
!1222 = !DILocation(line: 43, column: 7, scope: !1186)
!1223 = !DILocation(line: 45, column: 13, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !94, line: 44, column: 5)
!1225 = !DILocation(line: 46, column: 15, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1224, file: !94, line: 46, column: 11)
!1227 = !DILocation(line: 46, column: 11, scope: !1224)
!1228 = !DILocalVariable(name: "gid", arg: 1, scope: !1229, file: !94, line: 104, type: !22)
!1229 = distinct !DISubprogram(name: "print_group", scope: !94, file: !94, line: 104, type: !1230, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!50, !22, !50}
!1232 = !{!1228, !1233, !1234, !1242, !1243}
!1233 = !DILocalVariable(name: "use_name", arg: 2, scope: !1229, file: !94, line: 104, type: !50)
!1234 = !DILocalVariable(name: "grp", scope: !1229, file: !94, line: 106, type: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !619, line: 42, size: 256, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1236, file: !619, line: 44, baseType: !6, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1236, file: !619, line: 45, baseType: !6, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1236, file: !619, line: 46, baseType: !23, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1236, file: !619, line: 47, baseType: !595, size: 64, offset: 192)
!1242 = !DILocalVariable(name: "ok", scope: !1229, file: !94, line: 107, type: !50)
!1243 = !DILocalVariable(name: "s", scope: !1229, file: !94, line: 120, type: !6)
!1244 = !DILocation(line: 104, column: 20, scope: !1229, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 50, column: 8, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1186, file: !94, line: 50, column: 7)
!1247 = !DILocation(line: 104, column: 30, scope: !1229, inlinedAt: !1245)
!1248 = !DILocation(line: 106, column: 17, scope: !1229, inlinedAt: !1245)
!1249 = !DILocation(line: 107, column: 8, scope: !1229, inlinedAt: !1245)
!1250 = !DILocation(line: 109, column: 7, scope: !1229, inlinedAt: !1245)
!1251 = !DILocation(line: 98, column: 21, scope: !93, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 120, column: 34, scope: !1229, inlinedAt: !1245)
!1253 = !DILocation(line: 98, column: 10, scope: !93, inlinedAt: !1252)
!1254 = !DILocation(line: 120, column: 9, scope: !1229, inlinedAt: !1245)
!1255 = !DILocation(line: 121, column: 3, scope: !1229, inlinedAt: !1245)
!1256 = !DILocation(line: 111, column: 13, scope: !1257, inlinedAt: !1245)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !94, line: 110, column: 5)
!1258 = distinct !DILexicalBlock(scope: !1229, file: !94, line: 109, column: 7)
!1259 = !DILocation(line: 112, column: 15, scope: !1260, inlinedAt: !1245)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !94, line: 112, column: 11)
!1261 = !DILocation(line: 112, column: 11, scope: !1257, inlinedAt: !1245)
!1262 = !DILocation(line: 114, column: 24, scope: !1263, inlinedAt: !1245)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !94, line: 113, column: 9)
!1264 = !DILocation(line: 115, column: 18, scope: !1263, inlinedAt: !1245)
!1265 = !DILocation(line: 114, column: 11, scope: !1263, inlinedAt: !1245)
!1266 = !DILocation(line: 50, column: 7, scope: !1186)
!1267 = !DILocation(line: 120, column: 24, scope: !1229, inlinedAt: !1245)
!1268 = !DILocation(line: 53, column: 12, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1186, file: !94, line: 53, column: 7)
!1270 = !DILocation(line: 53, column: 7, scope: !1186)
!1271 = !DILocation(line: 107, column: 10, scope: !1272, inlinedAt: !1275)
!1272 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1147, file: !1147, line: 105, type: !1148, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !95, variables: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "__c", arg: 1, scope: !1272, file: !1147, line: 105, type: !85)
!1275 = distinct !DILocation(line: 55, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !94, line: 54, column: 5)
!1277 = !DILocation(line: 55, column: 7, scope: !1276)
!1278 = !DILocation(line: 104, column: 20, scope: !1229, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 56, column: 12, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !94, line: 56, column: 11)
!1281 = !DILocation(line: 104, column: 30, scope: !1229, inlinedAt: !1279)
!1282 = !DILocation(line: 106, column: 17, scope: !1229, inlinedAt: !1279)
!1283 = !DILocation(line: 107, column: 8, scope: !1229, inlinedAt: !1279)
!1284 = !DILocation(line: 109, column: 7, scope: !1229, inlinedAt: !1279)
!1285 = !DILocation(line: 98, column: 21, scope: !93, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 120, column: 34, scope: !1229, inlinedAt: !1279)
!1287 = !DILocation(line: 98, column: 10, scope: !93, inlinedAt: !1286)
!1288 = !DILocation(line: 120, column: 9, scope: !1229, inlinedAt: !1279)
!1289 = !DILocation(line: 121, column: 3, scope: !1229, inlinedAt: !1279)
!1290 = !DILocation(line: 111, column: 13, scope: !1257, inlinedAt: !1279)
!1291 = !DILocation(line: 112, column: 15, scope: !1260, inlinedAt: !1279)
!1292 = !DILocation(line: 112, column: 11, scope: !1257, inlinedAt: !1279)
!1293 = !DILocation(line: 114, column: 24, scope: !1263, inlinedAt: !1279)
!1294 = !DILocation(line: 115, column: 18, scope: !1263, inlinedAt: !1279)
!1295 = !DILocation(line: 114, column: 11, scope: !1263, inlinedAt: !1279)
!1296 = !DILocation(line: 56, column: 11, scope: !1276)
!1297 = !DILocation(line: 120, column: 24, scope: !1229, inlinedAt: !1279)
!1298 = !DILocation(line: 61, column: 5, scope: !1209)
!1299 = !DILocation(line: 64, column: 43, scope: !1209)
!1300 = !DILocation(line: 64, column: 54, scope: !1209)
!1301 = !DILocation(line: 61, column: 12, scope: !1209)
!1302 = !DILocation(line: 64, column: 20, scope: !1209)
!1303 = !DILocation(line: 64, column: 9, scope: !1209)
!1304 = !DILocation(line: 65, column: 18, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1209, file: !94, line: 65, column: 9)
!1306 = !DILocation(line: 65, column: 9, scope: !1209)
!1307 = !DILocation(line: 69, column: 23, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !94, line: 68, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !94, line: 67, column: 13)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !94, line: 66, column: 7)
!1311 = !DILocation(line: 67, column: 13, scope: !1310)
!1312 = !DILocation(line: 69, column: 30, scope: !1308)
!1313 = !DILocation(line: 70, column: 20, scope: !1308)
!1314 = !DILocation(line: 69, column: 13, scope: !1308)
!1315 = !DILocation(line: 71, column: 11, scope: !1308)
!1316 = !DILocation(line: 74, column: 30, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1309, file: !94, line: 73, column: 11)
!1318 = !DILocation(line: 74, column: 13, scope: !1317)
!1319 = !DILocation(line: 62, column: 9, scope: !1209)
!1320 = !DILocation(line: 79, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !94, line: 79, column: 5)
!1322 = distinct !DILexicalBlock(scope: !1209, file: !94, line: 79, column: 5)
!1323 = !DILocation(line: 79, column: 5, scope: !1322)
!1324 = !DILocation(line: 80, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !94, line: 80, column: 11)
!1326 = !DILocation(line: 80, column: 21, scope: !1325)
!1327 = !DILocation(line: 80, column: 42, scope: !1325)
!1328 = !DILocation(line: 80, column: 29, scope: !1325)
!1329 = !DILocation(line: 107, column: 10, scope: !1272, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 82, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1325, file: !94, line: 81, column: 9)
!1332 = !DILocation(line: 83, column: 29, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1331, file: !94, line: 83, column: 15)
!1334 = !DILocation(line: 104, column: 20, scope: !1229, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 83, column: 16, scope: !1333)
!1336 = !DILocation(line: 104, column: 30, scope: !1229, inlinedAt: !1335)
!1337 = !DILocation(line: 106, column: 17, scope: !1229, inlinedAt: !1335)
!1338 = !DILocation(line: 107, column: 8, scope: !1229, inlinedAt: !1335)
!1339 = !DILocation(line: 109, column: 7, scope: !1229, inlinedAt: !1335)
!1340 = !DILocation(line: 98, column: 21, scope: !93, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 120, column: 34, scope: !1229, inlinedAt: !1335)
!1342 = !DILocation(line: 98, column: 10, scope: !93, inlinedAt: !1341)
!1343 = !DILocation(line: 120, column: 9, scope: !1229, inlinedAt: !1335)
!1344 = !DILocation(line: 121, column: 3, scope: !1229, inlinedAt: !1335)
!1345 = !DILocation(line: 111, column: 13, scope: !1257, inlinedAt: !1335)
!1346 = !DILocation(line: 112, column: 15, scope: !1260, inlinedAt: !1335)
!1347 = !DILocation(line: 112, column: 11, scope: !1257, inlinedAt: !1335)
!1348 = !DILocation(line: 114, column: 24, scope: !1263, inlinedAt: !1335)
!1349 = !DILocation(line: 115, column: 18, scope: !1263, inlinedAt: !1335)
!1350 = !DILocation(line: 114, column: 11, scope: !1263, inlinedAt: !1335)
!1351 = !DILocation(line: 83, column: 15, scope: !1331)
!1352 = !DILocation(line: 120, column: 24, scope: !1229, inlinedAt: !1335)
!1353 = !DILocation(line: 79, column: 32, scope: !1321)
!1354 = distinct !{!1354, !1323, !1355}
!1355 = !DILocation(line: 85, column: 9, scope: !1322)
!1356 = !DILocation(line: 87, column: 3, scope: !1186)
!1357 = !DILocation(line: 86, column: 11, scope: !1209)
!1358 = !DILocation(line: 86, column: 5, scope: !1209)
!1359 = !DILocation(line: 88, column: 10, scope: !1186)
!1360 = !DILocation(line: 89, column: 1, scope: !1186)
!1361 = !DILocation(line: 104, column: 20, scope: !1229)
!1362 = !DILocation(line: 104, column: 30, scope: !1229)
!1363 = !DILocation(line: 106, column: 17, scope: !1229)
!1364 = !DILocation(line: 107, column: 8, scope: !1229)
!1365 = !DILocation(line: 109, column: 7, scope: !1229)
!1366 = !DILocation(line: 98, column: 21, scope: !93, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 120, column: 34, scope: !1229)
!1368 = !DILocation(line: 111, column: 13, scope: !1257)
!1369 = !DILocation(line: 112, column: 15, scope: !1260)
!1370 = !DILocation(line: 112, column: 11, scope: !1257)
!1371 = !DILocation(line: 114, column: 24, scope: !1263)
!1372 = !DILocation(line: 115, column: 18, scope: !1263)
!1373 = !DILocation(line: 114, column: 11, scope: !1263)
!1374 = !DILocation(line: 117, column: 9, scope: !1263)
!1375 = !DILocation(line: 120, column: 24, scope: !1229)
!1376 = !DILocation(line: 120, column: 13, scope: !1229)
!1377 = !DILocation(line: 98, column: 10, scope: !93, inlinedAt: !1367)
!1378 = !DILocation(line: 120, column: 9, scope: !1229)
!1379 = !DILocation(line: 121, column: 3, scope: !1229)
!1380 = !DILocation(line: 122, column: 3, scope: !1229)
!1381 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !113, file: !113, line: 41, type: !30, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1382)
!1382 = !{!1383}
!1383 = !DILocalVariable(name: "file", arg: 1, scope: !1381, file: !113, line: 41, type: !32)
!1384 = !DILocation(line: 41, column: 41, scope: !1381)
!1385 = !DILocation(line: 43, column: 13, scope: !1381)
!1386 = !DILocation(line: 44, column: 1, scope: !1381)
!1387 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !113, file: !113, line: 78, type: !1388, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !50}
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "ignore", arg: 1, scope: !1387, file: !113, line: 78, type: !50)
!1392 = !DILocation(line: 78, column: 37, scope: !1387)
!1393 = !DILocation(line: 80, column: 16, scope: !1387)
!1394 = !{!1395, !1395, i64 0}
!1395 = !{!"_Bool", !757, i64 0}
!1396 = !DILocation(line: 81, column: 1, scope: !1387)
!1397 = distinct !DISubprogram(name: "close_stdout", scope: !113, file: !113, line: 107, type: !1398, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null}
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "write_error", scope: !1402, file: !113, line: 112, type: !32)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !113, line: 111, column: 5)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !113, line: 109, column: 7)
!1404 = !DILocation(line: 109, column: 21, scope: !1403)
!1405 = !DILocation(line: 109, column: 7, scope: !1403)
!1406 = !DILocation(line: 109, column: 29, scope: !1403)
!1407 = !DILocation(line: 110, column: 7, scope: !1403)
!1408 = !DILocation(line: 110, column: 12, scope: !1403)
!1409 = !{i8 0, i8 2}
!1410 = !DILocation(line: 114, column: 19, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1402, file: !113, line: 113, column: 11)
!1412 = !DILocation(line: 110, column: 25, scope: !1403)
!1413 = !DILocation(line: 110, column: 28, scope: !1403)
!1414 = !DILocation(line: 110, column: 34, scope: !1403)
!1415 = !DILocation(line: 109, column: 7, scope: !1397)
!1416 = !DILocation(line: 112, column: 33, scope: !1402)
!1417 = !DILocation(line: 112, column: 19, scope: !1402)
!1418 = !DILocation(line: 113, column: 11, scope: !1411)
!1419 = !DILocation(line: 113, column: 11, scope: !1402)
!1420 = !DILocation(line: 114, column: 36, scope: !1411)
!1421 = !DILocation(line: 114, column: 9, scope: !1411)
!1422 = !DILocation(line: 117, column: 9, scope: !1411)
!1423 = !DILocation(line: 119, column: 14, scope: !1402)
!1424 = !DILocation(line: 119, column: 7, scope: !1402)
!1425 = !DILocation(line: 122, column: 22, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1397, file: !113, line: 122, column: 8)
!1427 = !DILocation(line: 122, column: 8, scope: !1426)
!1428 = !DILocation(line: 122, column: 30, scope: !1426)
!1429 = !DILocation(line: 122, column: 8, scope: !1397)
!1430 = !DILocation(line: 123, column: 13, scope: !1426)
!1431 = !DILocation(line: 123, column: 6, scope: !1426)
!1432 = !DILocation(line: 124, column: 1, scope: !1397)
!1433 = distinct !DISubprogram(name: "umaxtostr", scope: !1434, file: !1434, line: 36, type: !1435, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !1437)
!1434 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!6, !571, !6}
!1437 = !{!1438, !1439, !1440}
!1438 = !DILocalVariable(name: "i", arg: 1, scope: !1433, file: !1434, line: 36, type: !571)
!1439 = !DILocalVariable(name: "buf", arg: 2, scope: !1433, file: !1434, line: 36, type: !6)
!1440 = !DILocalVariable(name: "p", scope: !1433, file: !1434, line: 38, type: !6)
!1441 = !DILocation(line: 36, column: 19, scope: !1433)
!1442 = !DILocation(line: 36, column: 28, scope: !1433)
!1443 = !DILocation(line: 38, column: 17, scope: !1433)
!1444 = !DILocation(line: 38, column: 9, scope: !1433)
!1445 = !DILocation(line: 39, column: 6, scope: !1433)
!1446 = !DILocation(line: 51, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !1434, line: 50, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1433, file: !1434, line: 41, column: 7)
!1449 = distinct !{!1449, !1446, !1450}
!1450 = !DILocation(line: 53, column: 28, scope: !1447)
!1451 = !DILocation(line: 52, column: 24, scope: !1447)
!1452 = !DILocation(line: 52, column: 16, scope: !1447)
!1453 = !DILocation(line: 52, column: 10, scope: !1447)
!1454 = !DILocation(line: 52, column: 14, scope: !1447)
!1455 = !DILocation(line: 53, column: 17, scope: !1447)
!1456 = !DILocation(line: 53, column: 24, scope: !1447)
!1457 = !DILocation(line: 52, column: 9, scope: !1447)
!1458 = !DILocation(line: 56, column: 3, scope: !1433)
!1459 = distinct !DISubprogram(name: "set_program_name", scope: !127, file: !127, line: 39, type: !30, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !1460)
!1460 = !{!1461, !1462, !1463}
!1461 = !DILocalVariable(name: "argv0", arg: 1, scope: !1459, file: !127, line: 39, type: !32)
!1462 = !DILocalVariable(name: "slash", scope: !1459, file: !127, line: 46, type: !32)
!1463 = !DILocalVariable(name: "base", scope: !1459, file: !127, line: 47, type: !32)
!1464 = !DILocation(line: 39, column: 31, scope: !1459)
!1465 = !DILocation(line: 51, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1459, file: !127, line: 51, column: 7)
!1467 = !DILocation(line: 51, column: 7, scope: !1459)
!1468 = !DILocation(line: 55, column: 14, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !127, line: 52, column: 5)
!1470 = !DILocation(line: 54, column: 7, scope: !1469)
!1471 = !DILocation(line: 56, column: 7, scope: !1469)
!1472 = !DILocation(line: 59, column: 11, scope: !1459)
!1473 = !DILocation(line: 46, column: 15, scope: !1459)
!1474 = !DILocation(line: 60, column: 17, scope: !1459)
!1475 = !DILocation(line: 60, column: 33, scope: !1459)
!1476 = !DILocation(line: 60, column: 11, scope: !1459)
!1477 = !DILocation(line: 47, column: 15, scope: !1459)
!1478 = !DILocation(line: 61, column: 12, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1459, file: !127, line: 61, column: 7)
!1480 = !DILocation(line: 61, column: 20, scope: !1479)
!1481 = !DILocation(line: 61, column: 25, scope: !1479)
!1482 = !DILocation(line: 61, column: 42, scope: !1479)
!1483 = !DILocation(line: 61, column: 28, scope: !1479)
!1484 = !DILocation(line: 61, column: 61, scope: !1479)
!1485 = !DILocation(line: 61, column: 7, scope: !1459)
!1486 = !DILocation(line: 64, column: 11, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !127, line: 64, column: 11)
!1488 = distinct !DILexicalBlock(scope: !1479, file: !127, line: 62, column: 5)
!1489 = !DILocation(line: 64, column: 36, scope: !1487)
!1490 = !DILocation(line: 64, column: 11, scope: !1488)
!1491 = !DILocation(line: 66, column: 24, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !127, line: 65, column: 9)
!1493 = !DILocation(line: 70, column: 41, scope: !1492)
!1494 = !DILocation(line: 72, column: 9, scope: !1492)
!1495 = !DILocation(line: 84, column: 16, scope: !1459)
!1496 = !DILocation(line: 90, column: 27, scope: !1459)
!1497 = !DILocation(line: 92, column: 1, scope: !1459)
!1498 = distinct !DISubprogram(name: "clone_quoting_options", scope: !174, file: !174, line: 114, type: !1499, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1502)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!1501, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1502 = !{!1503, !1504, !1505}
!1503 = !DILocalVariable(name: "o", arg: 1, scope: !1498, file: !174, line: 114, type: !1501)
!1504 = !DILocalVariable(name: "e", scope: !1498, file: !174, line: 116, type: !85)
!1505 = !DILocalVariable(name: "p", scope: !1498, file: !174, line: 117, type: !1501)
!1506 = !DILocation(line: 114, column: 48, scope: !1498)
!1507 = !DILocation(line: 116, column: 11, scope: !1498)
!1508 = !DILocation(line: 116, column: 7, scope: !1498)
!1509 = !DILocation(line: 117, column: 40, scope: !1498)
!1510 = !DILocation(line: 117, column: 31, scope: !1498)
!1511 = !DILocation(line: 117, column: 27, scope: !1498)
!1512 = !DILocation(line: 119, column: 9, scope: !1498)
!1513 = !DILocation(line: 120, column: 3, scope: !1498)
!1514 = distinct !DISubprogram(name: "get_quoting_style", scope: !174, file: !174, line: 125, type: !1515, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1519)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!133, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1519 = !{!1520}
!1520 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !174, line: 125, type: !1517)
!1521 = !DILocation(line: 125, column: 50, scope: !1514)
!1522 = !DILocation(line: 127, column: 11, scope: !1514)
!1523 = !DILocation(line: 127, column: 46, scope: !1514)
!1524 = !{!1525, !757, i64 0}
!1525 = !{!"quoting_options", !757, i64 0, !852, i64 4, !757, i64 8, !756, i64 40, !756, i64 48}
!1526 = !DILocation(line: 127, column: 3, scope: !1514)
!1527 = distinct !DISubprogram(name: "set_quoting_style", scope: !174, file: !174, line: 133, type: !1528, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1501, !133}
!1530 = !{!1531, !1532}
!1531 = !DILocalVariable(name: "o", arg: 1, scope: !1527, file: !174, line: 133, type: !1501)
!1532 = !DILocalVariable(name: "s", arg: 2, scope: !1527, file: !174, line: 133, type: !133)
!1533 = !DILocation(line: 133, column: 44, scope: !1527)
!1534 = !DILocation(line: 133, column: 66, scope: !1527)
!1535 = !DILocation(line: 135, column: 4, scope: !1527)
!1536 = !DILocation(line: 135, column: 39, scope: !1527)
!1537 = !DILocation(line: 135, column: 45, scope: !1527)
!1538 = !DILocation(line: 136, column: 1, scope: !1527)
!1539 = distinct !DISubprogram(name: "set_char_quoting", scope: !174, file: !174, line: 144, type: !1540, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!85, !1501, !7, !85}
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1549, !1550}
!1543 = !DILocalVariable(name: "o", arg: 1, scope: !1539, file: !174, line: 144, type: !1501)
!1544 = !DILocalVariable(name: "c", arg: 2, scope: !1539, file: !174, line: 144, type: !7)
!1545 = !DILocalVariable(name: "i", arg: 3, scope: !1539, file: !174, line: 144, type: !85)
!1546 = !DILocalVariable(name: "uc", scope: !1539, file: !174, line: 146, type: !9)
!1547 = !DILocalVariable(name: "p", scope: !1539, file: !174, line: 147, type: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1549 = !DILocalVariable(name: "shift", scope: !1539, file: !174, line: 149, type: !85)
!1550 = !DILocalVariable(name: "r", scope: !1539, file: !174, line: 150, type: !85)
!1551 = !DILocation(line: 144, column: 43, scope: !1539)
!1552 = !DILocation(line: 144, column: 51, scope: !1539)
!1553 = !DILocation(line: 144, column: 58, scope: !1539)
!1554 = !DILocation(line: 146, column: 17, scope: !1539)
!1555 = !DILocation(line: 148, column: 6, scope: !1539)
!1556 = !DILocation(line: 148, column: 62, scope: !1539)
!1557 = !DILocation(line: 148, column: 57, scope: !1539)
!1558 = !DILocation(line: 147, column: 17, scope: !1539)
!1559 = !DILocation(line: 149, column: 18, scope: !1539)
!1560 = !DILocation(line: 149, column: 15, scope: !1539)
!1561 = !DILocation(line: 149, column: 7, scope: !1539)
!1562 = !DILocation(line: 150, column: 12, scope: !1539)
!1563 = !DILocation(line: 150, column: 15, scope: !1539)
!1564 = !DILocation(line: 150, column: 25, scope: !1539)
!1565 = !DILocation(line: 150, column: 7, scope: !1539)
!1566 = !DILocation(line: 151, column: 13, scope: !1539)
!1567 = !DILocation(line: 151, column: 18, scope: !1539)
!1568 = !DILocation(line: 151, column: 23, scope: !1539)
!1569 = !DILocation(line: 151, column: 6, scope: !1539)
!1570 = !DILocation(line: 152, column: 3, scope: !1539)
!1571 = distinct !DISubprogram(name: "set_quoting_flags", scope: !174, file: !174, line: 160, type: !1572, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!85, !1501, !85}
!1574 = !{!1575, !1576, !1577}
!1575 = !DILocalVariable(name: "o", arg: 1, scope: !1571, file: !174, line: 160, type: !1501)
!1576 = !DILocalVariable(name: "i", arg: 2, scope: !1571, file: !174, line: 160, type: !85)
!1577 = !DILocalVariable(name: "r", scope: !1571, file: !174, line: 162, type: !85)
!1578 = !DILocation(line: 160, column: 44, scope: !1571)
!1579 = !DILocation(line: 160, column: 51, scope: !1571)
!1580 = !DILocation(line: 163, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1571, file: !174, line: 163, column: 7)
!1582 = !DILocation(line: 163, column: 7, scope: !1571)
!1583 = !DILocation(line: 165, column: 10, scope: !1571)
!1584 = !{!1525, !852, i64 4}
!1585 = !DILocation(line: 162, column: 7, scope: !1571)
!1586 = !DILocation(line: 166, column: 12, scope: !1571)
!1587 = !DILocation(line: 167, column: 3, scope: !1571)
!1588 = distinct !DISubprogram(name: "set_custom_quoting", scope: !174, file: !174, line: 171, type: !1589, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1591)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1501, !32, !32}
!1591 = !{!1592, !1593, !1594}
!1592 = !DILocalVariable(name: "o", arg: 1, scope: !1588, file: !174, line: 171, type: !1501)
!1593 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1588, file: !174, line: 172, type: !32)
!1594 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1588, file: !174, line: 172, type: !32)
!1595 = !DILocation(line: 171, column: 45, scope: !1588)
!1596 = !DILocation(line: 172, column: 33, scope: !1588)
!1597 = !DILocation(line: 172, column: 57, scope: !1588)
!1598 = !DILocation(line: 174, column: 8, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1588, file: !174, line: 174, column: 7)
!1600 = !DILocation(line: 174, column: 7, scope: !1588)
!1601 = !DILocation(line: 176, column: 6, scope: !1588)
!1602 = !DILocation(line: 176, column: 12, scope: !1588)
!1603 = !DILocation(line: 177, column: 8, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1588, file: !174, line: 177, column: 7)
!1605 = !DILocation(line: 177, column: 23, scope: !1604)
!1606 = !DILocation(line: 177, column: 19, scope: !1604)
!1607 = !DILocation(line: 178, column: 5, scope: !1604)
!1608 = !DILocation(line: 179, column: 6, scope: !1588)
!1609 = !DILocation(line: 179, column: 17, scope: !1588)
!1610 = !{!1525, !756, i64 40}
!1611 = !DILocation(line: 180, column: 6, scope: !1588)
!1612 = !DILocation(line: 180, column: 18, scope: !1588)
!1613 = !{!1525, !756, i64 48}
!1614 = !DILocation(line: 181, column: 1, scope: !1588)
!1615 = distinct !DISubprogram(name: "quotearg_buffer", scope: !174, file: !174, line: 776, type: !1616, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!169, !6, !169, !32, !169, !1517}
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1619 = !DILocalVariable(name: "buffer", arg: 1, scope: !1615, file: !174, line: 776, type: !6)
!1620 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1615, file: !174, line: 776, type: !169)
!1621 = !DILocalVariable(name: "arg", arg: 3, scope: !1615, file: !174, line: 777, type: !32)
!1622 = !DILocalVariable(name: "argsize", arg: 4, scope: !1615, file: !174, line: 777, type: !169)
!1623 = !DILocalVariable(name: "o", arg: 5, scope: !1615, file: !174, line: 778, type: !1517)
!1624 = !DILocalVariable(name: "p", scope: !1615, file: !174, line: 780, type: !1517)
!1625 = !DILocalVariable(name: "e", scope: !1615, file: !174, line: 781, type: !85)
!1626 = !DILocalVariable(name: "r", scope: !1615, file: !174, line: 782, type: !169)
!1627 = !DILocation(line: 776, column: 24, scope: !1615)
!1628 = !DILocation(line: 776, column: 39, scope: !1615)
!1629 = !DILocation(line: 777, column: 30, scope: !1615)
!1630 = !DILocation(line: 777, column: 42, scope: !1615)
!1631 = !DILocation(line: 778, column: 48, scope: !1615)
!1632 = !DILocation(line: 780, column: 37, scope: !1615)
!1633 = !DILocation(line: 780, column: 33, scope: !1615)
!1634 = !DILocation(line: 781, column: 11, scope: !1615)
!1635 = !DILocation(line: 781, column: 7, scope: !1615)
!1636 = !DILocation(line: 783, column: 43, scope: !1615)
!1637 = !DILocation(line: 783, column: 53, scope: !1615)
!1638 = !DILocation(line: 783, column: 60, scope: !1615)
!1639 = !DILocation(line: 784, column: 43, scope: !1615)
!1640 = !DILocation(line: 784, column: 58, scope: !1615)
!1641 = !DILocation(line: 782, column: 14, scope: !1615)
!1642 = !DILocation(line: 782, column: 10, scope: !1615)
!1643 = !DILocation(line: 785, column: 9, scope: !1615)
!1644 = !DILocation(line: 786, column: 3, scope: !1615)
!1645 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !174, file: !174, line: 248, type: !1646, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !1650)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!169, !6, !169, !32, !169, !133, !85, !1648, !32, !32}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1675, !1676, !1677, !1678, !1679, !1682, !1683, !1701, !1704, !1705, !1712}
!1651 = !DILocalVariable(name: "buffer", arg: 1, scope: !1645, file: !174, line: 248, type: !6)
!1652 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1645, file: !174, line: 248, type: !169)
!1653 = !DILocalVariable(name: "arg", arg: 3, scope: !1645, file: !174, line: 249, type: !32)
!1654 = !DILocalVariable(name: "argsize", arg: 4, scope: !1645, file: !174, line: 249, type: !169)
!1655 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1645, file: !174, line: 250, type: !133)
!1656 = !DILocalVariable(name: "flags", arg: 6, scope: !1645, file: !174, line: 250, type: !85)
!1657 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1645, file: !174, line: 251, type: !1648)
!1658 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1645, file: !174, line: 252, type: !32)
!1659 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1645, file: !174, line: 253, type: !32)
!1660 = !DILocalVariable(name: "i", scope: !1645, file: !174, line: 255, type: !169)
!1661 = !DILocalVariable(name: "len", scope: !1645, file: !174, line: 256, type: !169)
!1662 = !DILocalVariable(name: "orig_buffersize", scope: !1645, file: !174, line: 257, type: !169)
!1663 = !DILocalVariable(name: "quote_string", scope: !1645, file: !174, line: 258, type: !32)
!1664 = !DILocalVariable(name: "quote_string_len", scope: !1645, file: !174, line: 259, type: !169)
!1665 = !DILocalVariable(name: "backslash_escapes", scope: !1645, file: !174, line: 260, type: !50)
!1666 = !DILocalVariable(name: "unibyte_locale", scope: !1645, file: !174, line: 261, type: !50)
!1667 = !DILocalVariable(name: "elide_outer_quotes", scope: !1645, file: !174, line: 262, type: !50)
!1668 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1645, file: !174, line: 263, type: !50)
!1669 = !DILocalVariable(name: "encountered_single_quote", scope: !1645, file: !174, line: 264, type: !50)
!1670 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1645, file: !174, line: 265, type: !50)
!1671 = !DILocalVariable(name: "c", scope: !1672, file: !174, line: 394, type: !9)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !174, line: 393, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !174, line: 392, column: 3)
!1674 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 392, column: 3)
!1675 = !DILocalVariable(name: "esc", scope: !1672, file: !174, line: 395, type: !9)
!1676 = !DILocalVariable(name: "is_right_quote", scope: !1672, file: !174, line: 396, type: !50)
!1677 = !DILocalVariable(name: "escaping", scope: !1672, file: !174, line: 397, type: !50)
!1678 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1672, file: !174, line: 398, type: !50)
!1679 = !DILocalVariable(name: "m", scope: !1680, file: !174, line: 602, type: !169)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 600, column: 11)
!1681 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 418, column: 9)
!1682 = !DILocalVariable(name: "printable", scope: !1680, file: !174, line: 604, type: !50)
!1683 = !DILocalVariable(name: "mbstate", scope: !1684, file: !174, line: 613, type: !1686)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !174, line: 612, column: 15)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !174, line: 606, column: 17)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1687, line: 6, baseType: !1688)
!1687 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1689, line: 21, baseType: !1690)
!1689 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 13, size: 64, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1690, file: !1689, line: 15, baseType: !85, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1690, file: !1689, line: 20, baseType: !1694, size: 32, offset: 32)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !1689, line: 16, size: 32, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1694, file: !1689, line: 18, baseType: !17, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1694, file: !1689, line: 19, baseType: !1698, size: 32)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 4)
!1701 = !DILocalVariable(name: "w", scope: !1702, file: !174, line: 623, type: !1703)
!1702 = distinct !DILexicalBlock(scope: !1684, file: !174, line: 622, column: 19)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !170, line: 90, baseType: !85)
!1704 = !DILocalVariable(name: "bytes", scope: !1702, file: !174, line: 624, type: !169)
!1705 = !DILocalVariable(name: "j", scope: !1706, file: !174, line: 649, type: !169)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !174, line: 648, column: 27)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !174, line: 646, column: 29)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !174, line: 641, column: 23)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !174, line: 633, column: 30)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !174, line: 628, column: 30)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !174, line: 626, column: 25)
!1712 = !DILocalVariable(name: "ilim", scope: !1713, file: !174, line: 676, type: !169)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !174, line: 673, column: 15)
!1714 = distinct !DILexicalBlock(scope: !1680, file: !174, line: 672, column: 17)
!1715 = !DILocation(line: 248, column: 33, scope: !1645)
!1716 = !DILocation(line: 248, column: 48, scope: !1645)
!1717 = !DILocation(line: 249, column: 39, scope: !1645)
!1718 = !DILocation(line: 249, column: 51, scope: !1645)
!1719 = !DILocation(line: 250, column: 46, scope: !1645)
!1720 = !DILocation(line: 250, column: 65, scope: !1645)
!1721 = !DILocation(line: 251, column: 47, scope: !1645)
!1722 = !DILocation(line: 252, column: 39, scope: !1645)
!1723 = !DILocation(line: 253, column: 39, scope: !1645)
!1724 = !DILocation(line: 256, column: 10, scope: !1645)
!1725 = !DILocation(line: 257, column: 10, scope: !1645)
!1726 = !DILocation(line: 258, column: 15, scope: !1645)
!1727 = !DILocation(line: 259, column: 10, scope: !1645)
!1728 = !DILocation(line: 260, column: 8, scope: !1645)
!1729 = !DILocation(line: 261, column: 25, scope: !1645)
!1730 = !DILocation(line: 261, column: 36, scope: !1645)
!1731 = !DILocation(line: 262, column: 8, scope: !1645)
!1732 = !DILocation(line: 263, column: 8, scope: !1645)
!1733 = !DILocation(line: 264, column: 8, scope: !1645)
!1734 = !DILocation(line: 265, column: 8, scope: !1645)
!1735 = !DILocation(line: 265, column: 3, scope: !1645)
!1736 = !DILocation(line: 308, column: 3, scope: !1645)
!1737 = !DILocation(line: 315, column: 11, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 309, column: 5)
!1739 = !DILocation(line: 315, column: 12, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1738, file: !174, line: 315, column: 11)
!1741 = !DILocation(line: 316, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !174, line: 316, column: 9)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !174, line: 316, column: 9)
!1744 = !DILocation(line: 316, column: 9, scope: !1743)
!1745 = !DILocation(line: 354, column: 26, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !174, line: 332, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !174, line: 331, column: 13)
!1748 = distinct !DILexicalBlock(scope: !1738, file: !174, line: 330, column: 7)
!1749 = !DILocation(line: 355, column: 27, scope: !1746)
!1750 = !DILocation(line: 356, column: 11, scope: !1746)
!1751 = !DILocation(line: 357, column: 14, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !174, line: 357, column: 13)
!1753 = !DILocation(line: 357, column: 13, scope: !1748)
!1754 = !DILocation(line: 358, column: 43, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !174, line: 358, column: 11)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !174, line: 358, column: 11)
!1757 = !DILocation(line: 358, column: 11, scope: !1756)
!1758 = !DILocation(line: 359, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !174, line: 359, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !174, line: 359, column: 13)
!1761 = !DILocation(line: 359, column: 13, scope: !1760)
!1762 = !DILocation(line: 358, column: 70, scope: !1755)
!1763 = distinct !{!1763, !1757, !1764}
!1764 = !DILocation(line: 359, column: 13, scope: !1756)
!1765 = !DILocation(line: 362, column: 28, scope: !1748)
!1766 = !DILocation(line: 364, column: 7, scope: !1738)
!1767 = !DILocation(line: 367, column: 7, scope: !1738)
!1768 = !DILocation(line: 370, column: 7, scope: !1738)
!1769 = !DILocation(line: 373, column: 12, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1738, file: !174, line: 373, column: 11)
!1771 = !DILocation(line: 373, column: 11, scope: !1738)
!1772 = !DILocation(line: 378, column: 12, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1738, file: !174, line: 378, column: 11)
!1774 = !DILocation(line: 378, column: 11, scope: !1738)
!1775 = !DILocation(line: 379, column: 9, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !174, line: 379, column: 9)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !174, line: 379, column: 9)
!1778 = !DILocation(line: 379, column: 9, scope: !1777)
!1779 = !DILocation(line: 386, column: 7, scope: !1738)
!1780 = !DILocation(line: 389, column: 7, scope: !1738)
!1781 = !DILocation(line: 255, column: 10, scope: !1645)
!1782 = !DILocation(line: 392, column: 8, scope: !1674)
!1783 = !DILocation(line: 392, column: 27, scope: !1673)
!1784 = !DILocation(line: 392, column: 19, scope: !1673)
!1785 = !DILocation(line: 392, column: 60, scope: !1673)
!1786 = !DILocation(line: 392, column: 3, scope: !1674)
!1787 = !DILocation(line: 392, column: 41, scope: !1673)
!1788 = !DILocation(line: 392, column: 48, scope: !1673)
!1789 = !DILocation(line: 396, column: 12, scope: !1672)
!1790 = !DILocation(line: 397, column: 12, scope: !1672)
!1791 = !DILocation(line: 398, column: 12, scope: !1672)
!1792 = !DILocation(line: 401, column: 11, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 400, column: 11)
!1794 = !DILocation(line: 403, column: 17, scope: !1793)
!1795 = !DILocation(line: 404, column: 39, scope: !1793)
!1796 = !DILocation(line: 408, column: 32, scope: !1793)
!1797 = !DILocation(line: 404, column: 19, scope: !1793)
!1798 = !DILocation(line: 404, column: 15, scope: !1793)
!1799 = !DILocation(line: 409, column: 11, scope: !1793)
!1800 = !DILocation(line: 409, column: 26, scope: !1793)
!1801 = !DILocation(line: 409, column: 14, scope: !1793)
!1802 = !DILocation(line: 409, column: 63, scope: !1793)
!1803 = !DILocation(line: 400, column: 11, scope: !1672)
!1804 = !DILocation(line: 416, column: 11, scope: !1672)
!1805 = !DILocation(line: 394, column: 21, scope: !1672)
!1806 = !DILocation(line: 417, column: 7, scope: !1672)
!1807 = !DILocation(line: 420, column: 15, scope: !1681)
!1808 = !DILocation(line: 422, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !174, line: 422, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !174, line: 421, column: 13)
!1811 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 420, column: 15)
!1812 = !DILocation(line: 422, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !174, line: 422, column: 15)
!1814 = !DILocation(line: 422, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !174, line: 422, column: 15)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !174, line: 422, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !174, line: 422, column: 15)
!1818 = !DILocation(line: 422, column: 15, scope: !1816)
!1819 = !DILocation(line: 422, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !174, line: 422, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !174, line: 422, column: 15)
!1822 = !DILocation(line: 422, column: 15, scope: !1821)
!1823 = !DILocation(line: 422, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !174, line: 422, column: 15)
!1825 = distinct !DILexicalBlock(scope: !1817, file: !174, line: 422, column: 15)
!1826 = !DILocation(line: 422, column: 15, scope: !1825)
!1827 = !DILocation(line: 422, column: 15, scope: !1817)
!1828 = !DILocation(line: 422, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !174, line: 422, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1809, file: !174, line: 422, column: 15)
!1831 = !DILocation(line: 422, column: 15, scope: !1830)
!1832 = !DILocation(line: 430, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1810, file: !174, line: 429, column: 19)
!1834 = !DILocation(line: 430, column: 24, scope: !1833)
!1835 = !DILocation(line: 430, column: 28, scope: !1833)
!1836 = !DILocation(line: 430, column: 38, scope: !1833)
!1837 = !DILocation(line: 430, column: 48, scope: !1833)
!1838 = !DILocation(line: 430, column: 59, scope: !1833)
!1839 = !DILocation(line: 432, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !174, line: 432, column: 19)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !174, line: 432, column: 19)
!1842 = distinct !DILexicalBlock(scope: !1833, file: !174, line: 431, column: 17)
!1843 = !DILocation(line: 432, column: 19, scope: !1841)
!1844 = !DILocation(line: 433, column: 19, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !174, line: 433, column: 19)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !174, line: 433, column: 19)
!1847 = !DILocation(line: 433, column: 19, scope: !1846)
!1848 = !DILocation(line: 434, column: 17, scope: !1842)
!1849 = !DILocation(line: 441, column: 20, scope: !1811)
!1850 = !DILocation(line: 446, column: 11, scope: !1681)
!1851 = !DILocation(line: 449, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 447, column: 13)
!1853 = !DILocation(line: 455, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1852, file: !174, line: 454, column: 19)
!1855 = !DILocation(line: 455, column: 24, scope: !1854)
!1856 = !DILocation(line: 455, column: 28, scope: !1854)
!1857 = !DILocation(line: 455, column: 38, scope: !1854)
!1858 = !DILocation(line: 455, column: 47, scope: !1854)
!1859 = !DILocation(line: 455, column: 41, scope: !1854)
!1860 = !DILocation(line: 455, column: 52, scope: !1854)
!1861 = !DILocation(line: 454, column: 19, scope: !1852)
!1862 = !DILocation(line: 456, column: 25, scope: !1854)
!1863 = !DILocation(line: 456, column: 17, scope: !1854)
!1864 = !DILocation(line: 463, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1854, file: !174, line: 457, column: 19)
!1866 = !DILocation(line: 467, column: 21, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !174, line: 467, column: 21)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !174, line: 467, column: 21)
!1869 = !DILocation(line: 467, column: 21, scope: !1868)
!1870 = !DILocation(line: 468, column: 21, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !174, line: 468, column: 21)
!1872 = distinct !DILexicalBlock(scope: !1865, file: !174, line: 468, column: 21)
!1873 = !DILocation(line: 468, column: 21, scope: !1872)
!1874 = !DILocation(line: 469, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !174, line: 469, column: 21)
!1876 = distinct !DILexicalBlock(scope: !1865, file: !174, line: 469, column: 21)
!1877 = !DILocation(line: 469, column: 21, scope: !1876)
!1878 = !DILocation(line: 470, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !174, line: 470, column: 21)
!1880 = distinct !DILexicalBlock(scope: !1865, file: !174, line: 470, column: 21)
!1881 = !DILocation(line: 470, column: 21, scope: !1880)
!1882 = !DILocation(line: 471, column: 21, scope: !1865)
!1883 = !DILocation(line: 395, column: 21, scope: !1672)
!1884 = !DILocation(line: 484, column: 31, scope: !1681)
!1885 = !DILocation(line: 485, column: 31, scope: !1681)
!1886 = !DILocation(line: 487, column: 31, scope: !1681)
!1887 = !DILocation(line: 488, column: 31, scope: !1681)
!1888 = !DILocation(line: 489, column: 31, scope: !1681)
!1889 = !DILocation(line: 492, column: 15, scope: !1681)
!1890 = !DILocation(line: 494, column: 19, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !174, line: 493, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 492, column: 15)
!1893 = !DILocation(line: 501, column: 33, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 501, column: 15)
!1895 = !DILocation(line: 506, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 505, column: 15)
!1897 = !DILocation(line: 510, column: 15, scope: !1681)
!1898 = !DILocation(line: 518, column: 26, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 518, column: 15)
!1900 = !DILocation(line: 518, column: 15, scope: !1681)
!1901 = !DILocation(line: 518, column: 40, scope: !1899)
!1902 = !DILocation(line: 518, column: 47, scope: !1899)
!1903 = !DILocation(line: 522, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 522, column: 15)
!1905 = !DILocation(line: 518, column: 18, scope: !1899)
!1906 = !DILocation(line: 518, column: 65, scope: !1899)
!1907 = !DILocation(line: 522, column: 15, scope: !1681)
!1908 = !DILocation(line: 526, column: 11, scope: !1681)
!1909 = !DILocation(line: 541, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 540, column: 15)
!1911 = !DILocation(line: 548, column: 15, scope: !1681)
!1912 = !DILocation(line: 550, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !174, line: 549, column: 13)
!1914 = distinct !DILexicalBlock(scope: !1681, file: !174, line: 548, column: 15)
!1915 = !DILocation(line: 553, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !174, line: 553, column: 19)
!1917 = !DILocation(line: 553, column: 35, scope: !1916)
!1918 = !DILocation(line: 553, column: 30, scope: !1916)
!1919 = !DILocation(line: 562, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !174, line: 562, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1913, file: !174, line: 562, column: 15)
!1922 = !DILocation(line: 562, column: 15, scope: !1921)
!1923 = !DILocation(line: 563, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !174, line: 563, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1913, file: !174, line: 563, column: 15)
!1926 = !DILocation(line: 563, column: 15, scope: !1925)
!1927 = !DILocation(line: 564, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !174, line: 564, column: 15)
!1929 = distinct !DILexicalBlock(scope: !1913, file: !174, line: 564, column: 15)
!1930 = !DILocation(line: 564, column: 15, scope: !1929)
!1931 = !DILocation(line: 566, column: 13, scope: !1913)
!1932 = !DILocation(line: 606, column: 17, scope: !1680)
!1933 = !DILocation(line: 602, column: 20, scope: !1680)
!1934 = !DILocation(line: 609, column: 29, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1685, file: !174, line: 607, column: 15)
!1936 = !{!1157, !1157, i64 0}
!1937 = !DILocation(line: 609, column: 27, scope: !1935)
!1938 = !DILocation(line: 604, column: 18, scope: !1680)
!1939 = !DILocation(line: 610, column: 15, scope: !1935)
!1940 = !DILocation(line: 613, column: 17, scope: !1684)
!1941 = !DILocation(line: 614, column: 17, scope: !1684)
!1942 = !DILocation(line: 618, column: 29, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1684, file: !174, line: 618, column: 21)
!1944 = !DILocation(line: 618, column: 21, scope: !1684)
!1945 = !DILocation(line: 619, column: 29, scope: !1943)
!1946 = !DILocation(line: 619, column: 19, scope: !1943)
!1947 = !DILocation(line: 621, column: 17, scope: !1684)
!1948 = distinct !{!1948, !1947, !1949}
!1949 = !DILocation(line: 667, column: 44, scope: !1684)
!1950 = !DILocation(line: 623, column: 21, scope: !1702)
!1951 = !DILocation(line: 624, column: 56, scope: !1702)
!1952 = !DILocation(line: 624, column: 50, scope: !1702)
!1953 = !DILocation(line: 625, column: 53, scope: !1702)
!1954 = !DILocation(line: 613, column: 27, scope: !1684)
!1955 = !DILocation(line: 623, column: 29, scope: !1702)
!1956 = !DILocation(line: 624, column: 36, scope: !1702)
!1957 = !DILocation(line: 624, column: 28, scope: !1702)
!1958 = !DILocation(line: 626, column: 25, scope: !1702)
!1959 = !DILocation(line: 636, column: 38, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1709, file: !174, line: 634, column: 23)
!1961 = !DILocation(line: 636, column: 48, scope: !1960)
!1962 = !DILocation(line: 636, column: 51, scope: !1960)
!1963 = !DILocation(line: 636, column: 25, scope: !1960)
!1964 = !DILocation(line: 637, column: 28, scope: !1960)
!1965 = !DILocation(line: 636, column: 34, scope: !1960)
!1966 = distinct !{!1966, !1963, !1964}
!1967 = !DILocation(line: 650, column: 43, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !174, line: 650, column: 29)
!1969 = distinct !DILexicalBlock(scope: !1706, file: !174, line: 650, column: 29)
!1970 = !DILocation(line: 647, column: 29, scope: !1707)
!1971 = !DILocation(line: 649, column: 36, scope: !1706)
!1972 = !DILocation(line: 651, column: 49, scope: !1968)
!1973 = !DILocation(line: 651, column: 39, scope: !1968)
!1974 = !DILocation(line: 651, column: 31, scope: !1968)
!1975 = !DILocation(line: 650, column: 53, scope: !1968)
!1976 = !DILocation(line: 650, column: 29, scope: !1969)
!1977 = distinct !{!1977, !1976, !1978}
!1978 = !DILocation(line: 659, column: 33, scope: !1969)
!1979 = !DILocation(line: 666, column: 19, scope: !1684)
!1980 = !DILocation(line: 662, column: 41, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1708, file: !174, line: 662, column: 29)
!1982 = !DILocation(line: 662, column: 31, scope: !1981)
!1983 = !DILocation(line: 662, column: 29, scope: !1708)
!1984 = !DILocation(line: 664, column: 27, scope: !1708)
!1985 = !DILocation(line: 667, column: 26, scope: !1684)
!1986 = !DILocation(line: 667, column: 24, scope: !1684)
!1987 = !DILocation(line: 666, column: 19, scope: !1702)
!1988 = !DILocation(line: 668, column: 15, scope: !1685)
!1989 = !DILocation(line: 670, column: 40, scope: !1680)
!1990 = !DILocation(line: 672, column: 19, scope: !1714)
!1991 = !DILocation(line: 672, column: 45, scope: !1714)
!1992 = !DILocation(line: 672, column: 23, scope: !1714)
!1993 = !DILocation(line: 676, column: 33, scope: !1713)
!1994 = !DILocation(line: 676, column: 24, scope: !1713)
!1995 = !DILocation(line: 678, column: 17, scope: !1713)
!1996 = !DILocation(line: 680, column: 43, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !174, line: 680, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !174, line: 679, column: 19)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !174, line: 678, column: 17)
!2000 = distinct !DILexicalBlock(scope: !1713, file: !174, line: 678, column: 17)
!2001 = !DILocation(line: 682, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !174, line: 682, column: 25)
!2003 = distinct !DILexicalBlock(scope: !1997, file: !174, line: 681, column: 23)
!2004 = !DILocation(line: 682, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !174, line: 682, column: 25)
!2006 = !DILocation(line: 682, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !174, line: 682, column: 25)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !174, line: 682, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !174, line: 682, column: 25)
!2010 = !DILocation(line: 682, column: 25, scope: !2008)
!2011 = !DILocation(line: 682, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !174, line: 682, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !174, line: 682, column: 25)
!2014 = !DILocation(line: 682, column: 25, scope: !2013)
!2015 = !DILocation(line: 682, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !174, line: 682, column: 25)
!2017 = distinct !DILexicalBlock(scope: !2009, file: !174, line: 682, column: 25)
!2018 = !DILocation(line: 682, column: 25, scope: !2017)
!2019 = !DILocation(line: 682, column: 25, scope: !2009)
!2020 = !DILocation(line: 682, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !174, line: 682, column: 25)
!2022 = distinct !DILexicalBlock(scope: !2002, file: !174, line: 682, column: 25)
!2023 = !DILocation(line: 682, column: 25, scope: !2022)
!2024 = !DILocation(line: 683, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !174, line: 683, column: 25)
!2026 = distinct !DILexicalBlock(scope: !2003, file: !174, line: 683, column: 25)
!2027 = !DILocation(line: 683, column: 25, scope: !2026)
!2028 = !DILocation(line: 684, column: 25, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !174, line: 684, column: 25)
!2030 = distinct !DILexicalBlock(scope: !2003, file: !174, line: 684, column: 25)
!2031 = !DILocation(line: 684, column: 25, scope: !2030)
!2032 = !DILocation(line: 685, column: 38, scope: !2003)
!2033 = !DILocation(line: 685, column: 33, scope: !2003)
!2034 = !DILocation(line: 686, column: 23, scope: !2003)
!2035 = !DILocation(line: 687, column: 30, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1997, file: !174, line: 687, column: 30)
!2037 = !DILocation(line: 687, column: 30, scope: !1997)
!2038 = !DILocation(line: 689, column: 25, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !174, line: 689, column: 25)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !174, line: 689, column: 25)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !174, line: 688, column: 23)
!2042 = !DILocation(line: 689, column: 25, scope: !2040)
!2043 = !DILocation(line: 691, column: 23, scope: !2041)
!2044 = !DILocation(line: 692, column: 35, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1998, file: !174, line: 692, column: 25)
!2046 = !DILocation(line: 692, column: 30, scope: !2045)
!2047 = !DILocation(line: 692, column: 25, scope: !1998)
!2048 = !DILocation(line: 694, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !174, line: 694, column: 21)
!2050 = distinct !DILexicalBlock(scope: !1998, file: !174, line: 694, column: 21)
!2051 = !DILocation(line: 694, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !174, line: 694, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !174, line: 694, column: 21)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !174, line: 694, column: 21)
!2055 = !DILocation(line: 694, column: 21, scope: !2053)
!2056 = !DILocation(line: 694, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !174, line: 694, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !174, line: 694, column: 21)
!2059 = !DILocation(line: 694, column: 21, scope: !2058)
!2060 = !DILocation(line: 694, column: 21, scope: !2054)
!2061 = !DILocation(line: 695, column: 21, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !174, line: 695, column: 21)
!2063 = distinct !DILexicalBlock(scope: !1998, file: !174, line: 695, column: 21)
!2064 = !DILocation(line: 695, column: 21, scope: !2063)
!2065 = !DILocation(line: 696, column: 25, scope: !1998)
!2066 = !DILocation(line: 678, column: 17, scope: !1999)
!2067 = distinct !{!2067, !2068, !2069}
!2068 = !DILocation(line: 678, column: 17, scope: !2000)
!2069 = !DILocation(line: 697, column: 19, scope: !2000)
!2070 = !DILocation(line: 704, column: 34, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 704, column: 11)
!2072 = !DILocation(line: 706, column: 14, scope: !2071)
!2073 = !DILocation(line: 707, column: 14, scope: !2071)
!2074 = !DILocation(line: 707, column: 35, scope: !2071)
!2075 = !DILocation(line: 707, column: 17, scope: !2071)
!2076 = !DILocation(line: 707, column: 53, scope: !2071)
!2077 = !DILocation(line: 707, column: 47, scope: !2071)
!2078 = !DILocation(line: 707, column: 65, scope: !2071)
!2079 = !DILocation(line: 708, column: 15, scope: !2071)
!2080 = !DILocation(line: 708, column: 11, scope: !2071)
!2081 = !DILocation(line: 704, column: 11, scope: !1672)
!2082 = !DILocation(line: 712, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 712, column: 7)
!2084 = !DILocation(line: 712, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2083, file: !174, line: 712, column: 7)
!2086 = !DILocation(line: 712, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !174, line: 712, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !174, line: 712, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !174, line: 712, column: 7)
!2090 = !DILocation(line: 712, column: 7, scope: !2088)
!2091 = !DILocation(line: 712, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !174, line: 712, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !174, line: 712, column: 7)
!2094 = !DILocation(line: 712, column: 7, scope: !2093)
!2095 = !DILocation(line: 712, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !174, line: 712, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !174, line: 712, column: 7)
!2098 = !DILocation(line: 712, column: 7, scope: !2097)
!2099 = !DILocation(line: 712, column: 7, scope: !2089)
!2100 = !DILocation(line: 712, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !174, line: 712, column: 7)
!2102 = distinct !DILexicalBlock(scope: !2083, file: !174, line: 712, column: 7)
!2103 = !DILocation(line: 712, column: 7, scope: !2102)
!2104 = !DILocation(line: 715, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !174, line: 715, column: 7)
!2106 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 715, column: 7)
!2107 = !DILocation(line: 715, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !174, line: 715, column: 7)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !174, line: 715, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !174, line: 715, column: 7)
!2111 = !DILocation(line: 715, column: 7, scope: !2109)
!2112 = !DILocation(line: 715, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !174, line: 715, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !174, line: 715, column: 7)
!2115 = !DILocation(line: 715, column: 7, scope: !2114)
!2116 = !DILocation(line: 715, column: 7, scope: !2110)
!2117 = !DILocation(line: 716, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !174, line: 716, column: 7)
!2119 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 716, column: 7)
!2120 = !DILocation(line: 716, column: 7, scope: !2119)
!2121 = !DILocation(line: 718, column: 13, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 718, column: 11)
!2123 = !DILocation(line: 718, column: 11, scope: !1672)
!2124 = !DILocation(line: 720, column: 5, scope: !1673)
!2125 = !DILocation(line: 392, column: 75, scope: !1673)
!2126 = !DILocation(line: 392, column: 3, scope: !1673)
!2127 = distinct !{!2127, !1786, !2128}
!2128 = !DILocation(line: 720, column: 5, scope: !1674)
!2129 = !DILocation(line: 722, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 722, column: 7)
!2131 = !DILocation(line: 722, column: 16, scope: !2130)
!2132 = !DILocation(line: 730, column: 51, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 730, column: 7)
!2134 = !DILocation(line: 731, column: 10, scope: !2133)
!2135 = !DILocation(line: 733, column: 11, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !174, line: 733, column: 11)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !174, line: 732, column: 5)
!2138 = !DILocation(line: 733, column: 11, scope: !2137)
!2139 = !DILocation(line: 734, column: 16, scope: !2136)
!2140 = !DILocation(line: 734, column: 9, scope: !2136)
!2141 = !DILocation(line: 738, column: 18, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !174, line: 738, column: 16)
!2143 = !DILocation(line: 738, column: 32, scope: !2142)
!2144 = !DILocation(line: 738, column: 29, scope: !2142)
!2145 = !DILocation(line: 747, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 747, column: 7)
!2147 = !DILocation(line: 747, column: 20, scope: !2146)
!2148 = !DILocation(line: 748, column: 12, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !174, line: 748, column: 5)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !174, line: 748, column: 5)
!2151 = !DILocation(line: 748, column: 5, scope: !2150)
!2152 = !DILocation(line: 749, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !174, line: 749, column: 7)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !174, line: 749, column: 7)
!2155 = !DILocation(line: 749, column: 7, scope: !2154)
!2156 = !DILocation(line: 748, column: 39, scope: !2149)
!2157 = distinct !{!2157, !2151, !2158}
!2158 = !DILocation(line: 749, column: 7, scope: !2150)
!2159 = !DILocation(line: 751, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 751, column: 7)
!2161 = !DILocation(line: 751, column: 7, scope: !1645)
!2162 = !DILocation(line: 752, column: 5, scope: !2160)
!2163 = !DILocation(line: 752, column: 17, scope: !2160)
!2164 = !DILocation(line: 758, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1645, file: !174, line: 758, column: 7)
!2166 = !DILocation(line: 758, column: 54, scope: !2165)
!2167 = !DILocation(line: 758, column: 51, scope: !2165)
!2168 = !DILocation(line: 762, column: 42, scope: !1645)
!2169 = !DILocation(line: 760, column: 10, scope: !1645)
!2170 = !DILocation(line: 760, column: 3, scope: !1645)
!2171 = !DILocation(line: 764, column: 1, scope: !1645)
!2172 = distinct !DISubprogram(name: "gettext_quote", scope: !174, file: !174, line: 199, type: !2173, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!32, !32, !133}
!2175 = !{!2176, !2177, !2178, !2179}
!2176 = !DILocalVariable(name: "msgid", arg: 1, scope: !2172, file: !174, line: 199, type: !32)
!2177 = !DILocalVariable(name: "s", arg: 2, scope: !2172, file: !174, line: 199, type: !133)
!2178 = !DILocalVariable(name: "translation", scope: !2172, file: !174, line: 201, type: !32)
!2179 = !DILocalVariable(name: "locale_code", scope: !2172, file: !174, line: 202, type: !32)
!2180 = !DILocation(line: 199, column: 28, scope: !2172)
!2181 = !DILocation(line: 199, column: 54, scope: !2172)
!2182 = !DILocation(line: 201, column: 29, scope: !2172)
!2183 = !DILocation(line: 201, column: 15, scope: !2172)
!2184 = !DILocation(line: 204, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2172, file: !174, line: 204, column: 7)
!2186 = !DILocation(line: 204, column: 7, scope: !2172)
!2187 = !DILocation(line: 225, column: 17, scope: !2172)
!2188 = !DILocation(line: 202, column: 15, scope: !2172)
!2189 = !DILocalVariable(name: "s2", arg: 2, scope: !2190, file: !2191, line: 160, type: !32)
!2190 = distinct !DISubprogram(name: "strcaseeq0", scope: !2191, file: !2191, line: 160, type: !2192, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2194)
!2191 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!85, !32, !32, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2194 = !{!2195, !2189, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2195 = !DILocalVariable(name: "s1", arg: 1, scope: !2190, file: !2191, line: 160, type: !32)
!2196 = !DILocalVariable(name: "s20", arg: 3, scope: !2190, file: !2191, line: 160, type: !7)
!2197 = !DILocalVariable(name: "s21", arg: 4, scope: !2190, file: !2191, line: 160, type: !7)
!2198 = !DILocalVariable(name: "s22", arg: 5, scope: !2190, file: !2191, line: 160, type: !7)
!2199 = !DILocalVariable(name: "s23", arg: 6, scope: !2190, file: !2191, line: 160, type: !7)
!2200 = !DILocalVariable(name: "s24", arg: 7, scope: !2190, file: !2191, line: 160, type: !7)
!2201 = !DILocalVariable(name: "s25", arg: 8, scope: !2190, file: !2191, line: 160, type: !7)
!2202 = !DILocalVariable(name: "s26", arg: 9, scope: !2190, file: !2191, line: 160, type: !7)
!2203 = !DILocalVariable(name: "s27", arg: 10, scope: !2190, file: !2191, line: 160, type: !7)
!2204 = !DILocalVariable(name: "s28", arg: 11, scope: !2190, file: !2191, line: 160, type: !7)
!2205 = !DILocation(line: 160, column: 41, scope: !2190, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 226, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2172, file: !174, line: 226, column: 7)
!2208 = !DILocation(line: 160, column: 120, scope: !2190, inlinedAt: !2206)
!2209 = !DILocation(line: 160, column: 130, scope: !2190, inlinedAt: !2206)
!2210 = !DILocation(line: 162, column: 7, scope: !2211, inlinedAt: !2206)
!2211 = distinct !DILexicalBlock(scope: !2190, file: !2191, line: 162, column: 7)
!2212 = !DILocalVariable(name: "s2", arg: 2, scope: !2213, file: !2191, line: 146, type: !32)
!2213 = distinct !DISubprogram(name: "strcaseeq1", scope: !2191, file: !2191, line: 146, type: !2214, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!85, !32, !32, !7, !7, !7, !7, !7, !7, !7, !7}
!2216 = !{!2217, !2212, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225}
!2217 = !DILocalVariable(name: "s1", arg: 1, scope: !2213, file: !2191, line: 146, type: !32)
!2218 = !DILocalVariable(name: "s21", arg: 3, scope: !2213, file: !2191, line: 146, type: !7)
!2219 = !DILocalVariable(name: "s22", arg: 4, scope: !2213, file: !2191, line: 146, type: !7)
!2220 = !DILocalVariable(name: "s23", arg: 5, scope: !2213, file: !2191, line: 146, type: !7)
!2221 = !DILocalVariable(name: "s24", arg: 6, scope: !2213, file: !2191, line: 146, type: !7)
!2222 = !DILocalVariable(name: "s25", arg: 7, scope: !2213, file: !2191, line: 146, type: !7)
!2223 = !DILocalVariable(name: "s26", arg: 8, scope: !2213, file: !2191, line: 146, type: !7)
!2224 = !DILocalVariable(name: "s27", arg: 9, scope: !2213, file: !2191, line: 146, type: !7)
!2225 = !DILocalVariable(name: "s28", arg: 10, scope: !2213, file: !2191, line: 146, type: !7)
!2226 = !DILocation(line: 146, column: 41, scope: !2213, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 167, column: 16, scope: !2228, inlinedAt: !2206)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !2191, line: 164, column: 11)
!2229 = distinct !DILexicalBlock(scope: !2211, file: !2191, line: 163, column: 5)
!2230 = !DILocation(line: 146, column: 110, scope: !2213, inlinedAt: !2227)
!2231 = !DILocation(line: 146, column: 120, scope: !2213, inlinedAt: !2227)
!2232 = !DILocation(line: 148, column: 7, scope: !2233, inlinedAt: !2227)
!2233 = distinct !DILexicalBlock(scope: !2213, file: !2191, line: 148, column: 7)
!2234 = !DILocalVariable(name: "s2", arg: 2, scope: !2235, file: !2191, line: 132, type: !32)
!2235 = distinct !DISubprogram(name: "strcaseeq2", scope: !2191, file: !2191, line: 132, type: !2236, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!85, !32, !32, !7, !7, !7, !7, !7, !7, !7}
!2238 = !{!2239, !2234, !2240, !2241, !2242, !2243, !2244, !2245, !2246}
!2239 = !DILocalVariable(name: "s1", arg: 1, scope: !2235, file: !2191, line: 132, type: !32)
!2240 = !DILocalVariable(name: "s22", arg: 3, scope: !2235, file: !2191, line: 132, type: !7)
!2241 = !DILocalVariable(name: "s23", arg: 4, scope: !2235, file: !2191, line: 132, type: !7)
!2242 = !DILocalVariable(name: "s24", arg: 5, scope: !2235, file: !2191, line: 132, type: !7)
!2243 = !DILocalVariable(name: "s25", arg: 6, scope: !2235, file: !2191, line: 132, type: !7)
!2244 = !DILocalVariable(name: "s26", arg: 7, scope: !2235, file: !2191, line: 132, type: !7)
!2245 = !DILocalVariable(name: "s27", arg: 8, scope: !2235, file: !2191, line: 132, type: !7)
!2246 = !DILocalVariable(name: "s28", arg: 9, scope: !2235, file: !2191, line: 132, type: !7)
!2247 = !DILocation(line: 132, column: 41, scope: !2235, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 153, column: 16, scope: !2249, inlinedAt: !2227)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !2191, line: 150, column: 11)
!2250 = distinct !DILexicalBlock(scope: !2233, file: !2191, line: 149, column: 5)
!2251 = !DILocation(line: 132, column: 100, scope: !2235, inlinedAt: !2248)
!2252 = !DILocation(line: 132, column: 110, scope: !2235, inlinedAt: !2248)
!2253 = !DILocation(line: 134, column: 7, scope: !2254, inlinedAt: !2248)
!2254 = distinct !DILexicalBlock(scope: !2235, file: !2191, line: 134, column: 7)
!2255 = !DILocalVariable(name: "s2", arg: 2, scope: !2256, file: !2191, line: 118, type: !32)
!2256 = distinct !DISubprogram(name: "strcaseeq3", scope: !2191, file: !2191, line: 118, type: !2257, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!85, !32, !32, !7, !7, !7, !7, !7, !7}
!2259 = !{!2260, !2255, !2261, !2262, !2263, !2264, !2265, !2266}
!2260 = !DILocalVariable(name: "s1", arg: 1, scope: !2256, file: !2191, line: 118, type: !32)
!2261 = !DILocalVariable(name: "s23", arg: 3, scope: !2256, file: !2191, line: 118, type: !7)
!2262 = !DILocalVariable(name: "s24", arg: 4, scope: !2256, file: !2191, line: 118, type: !7)
!2263 = !DILocalVariable(name: "s25", arg: 5, scope: !2256, file: !2191, line: 118, type: !7)
!2264 = !DILocalVariable(name: "s26", arg: 6, scope: !2256, file: !2191, line: 118, type: !7)
!2265 = !DILocalVariable(name: "s27", arg: 7, scope: !2256, file: !2191, line: 118, type: !7)
!2266 = !DILocalVariable(name: "s28", arg: 8, scope: !2256, file: !2191, line: 118, type: !7)
!2267 = !DILocation(line: 118, column: 41, scope: !2256, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 139, column: 16, scope: !2269, inlinedAt: !2248)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !2191, line: 136, column: 11)
!2270 = distinct !DILexicalBlock(scope: !2254, file: !2191, line: 135, column: 5)
!2271 = !DILocation(line: 118, column: 90, scope: !2256, inlinedAt: !2268)
!2272 = !DILocation(line: 118, column: 100, scope: !2256, inlinedAt: !2268)
!2273 = !DILocation(line: 120, column: 7, scope: !2274, inlinedAt: !2268)
!2274 = distinct !DILexicalBlock(scope: !2256, file: !2191, line: 120, column: 7)
!2275 = !DILocation(line: 120, column: 7, scope: !2256, inlinedAt: !2268)
!2276 = !DILocalVariable(name: "s2", arg: 2, scope: !2277, file: !2191, line: 104, type: !32)
!2277 = distinct !DISubprogram(name: "strcaseeq4", scope: !2191, file: !2191, line: 104, type: !2278, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!85, !32, !32, !7, !7, !7, !7, !7}
!2280 = !{!2281, !2276, !2282, !2283, !2284, !2285, !2286}
!2281 = !DILocalVariable(name: "s1", arg: 1, scope: !2277, file: !2191, line: 104, type: !32)
!2282 = !DILocalVariable(name: "s24", arg: 3, scope: !2277, file: !2191, line: 104, type: !7)
!2283 = !DILocalVariable(name: "s25", arg: 4, scope: !2277, file: !2191, line: 104, type: !7)
!2284 = !DILocalVariable(name: "s26", arg: 5, scope: !2277, file: !2191, line: 104, type: !7)
!2285 = !DILocalVariable(name: "s27", arg: 6, scope: !2277, file: !2191, line: 104, type: !7)
!2286 = !DILocalVariable(name: "s28", arg: 7, scope: !2277, file: !2191, line: 104, type: !7)
!2287 = !DILocation(line: 104, column: 41, scope: !2277, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 125, column: 16, scope: !2289, inlinedAt: !2268)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !2191, line: 122, column: 11)
!2290 = distinct !DILexicalBlock(scope: !2274, file: !2191, line: 121, column: 5)
!2291 = !DILocation(line: 104, column: 80, scope: !2277, inlinedAt: !2288)
!2292 = !DILocation(line: 104, column: 90, scope: !2277, inlinedAt: !2288)
!2293 = !DILocation(line: 106, column: 7, scope: !2294, inlinedAt: !2288)
!2294 = distinct !DILexicalBlock(scope: !2277, file: !2191, line: 106, column: 7)
!2295 = !DILocation(line: 106, column: 7, scope: !2277, inlinedAt: !2288)
!2296 = !DILocalVariable(name: "s2", arg: 2, scope: !2297, file: !2191, line: 90, type: !32)
!2297 = distinct !DISubprogram(name: "strcaseeq5", scope: !2191, file: !2191, line: 90, type: !2298, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!85, !32, !32, !7, !7, !7, !7}
!2300 = !{!2301, !2296, !2302, !2303, !2304, !2305}
!2301 = !DILocalVariable(name: "s1", arg: 1, scope: !2297, file: !2191, line: 90, type: !32)
!2302 = !DILocalVariable(name: "s25", arg: 3, scope: !2297, file: !2191, line: 90, type: !7)
!2303 = !DILocalVariable(name: "s26", arg: 4, scope: !2297, file: !2191, line: 90, type: !7)
!2304 = !DILocalVariable(name: "s27", arg: 5, scope: !2297, file: !2191, line: 90, type: !7)
!2305 = !DILocalVariable(name: "s28", arg: 6, scope: !2297, file: !2191, line: 90, type: !7)
!2306 = !DILocation(line: 90, column: 41, scope: !2297, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 111, column: 16, scope: !2308, inlinedAt: !2288)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !2191, line: 108, column: 11)
!2309 = distinct !DILexicalBlock(scope: !2294, file: !2191, line: 107, column: 5)
!2310 = !DILocation(line: 90, column: 70, scope: !2297, inlinedAt: !2307)
!2311 = !DILocation(line: 90, column: 80, scope: !2297, inlinedAt: !2307)
!2312 = !DILocation(line: 92, column: 7, scope: !2313, inlinedAt: !2307)
!2313 = distinct !DILexicalBlock(scope: !2297, file: !2191, line: 92, column: 7)
!2314 = !DILocation(line: 92, column: 7, scope: !2297, inlinedAt: !2307)
!2315 = !DILocation(line: 227, column: 12, scope: !2207)
!2316 = !DILocation(line: 227, column: 21, scope: !2207)
!2317 = !DILocation(line: 227, column: 5, scope: !2207)
!2318 = !DILocation(line: 146, column: 41, scope: !2213, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 167, column: 16, scope: !2228, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 228, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2172, file: !174, line: 228, column: 7)
!2322 = !DILocation(line: 146, column: 110, scope: !2213, inlinedAt: !2319)
!2323 = !DILocation(line: 146, column: 120, scope: !2213, inlinedAt: !2319)
!2324 = !DILocation(line: 148, column: 7, scope: !2233, inlinedAt: !2319)
!2325 = !DILocation(line: 132, column: 41, scope: !2235, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 153, column: 16, scope: !2249, inlinedAt: !2319)
!2327 = !DILocation(line: 132, column: 100, scope: !2235, inlinedAt: !2326)
!2328 = !DILocation(line: 132, column: 110, scope: !2235, inlinedAt: !2326)
!2329 = !DILocation(line: 134, column: 7, scope: !2254, inlinedAt: !2326)
!2330 = !DILocation(line: 134, column: 7, scope: !2235, inlinedAt: !2326)
!2331 = !DILocation(line: 118, column: 41, scope: !2256, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 139, column: 16, scope: !2269, inlinedAt: !2326)
!2333 = !DILocation(line: 118, column: 90, scope: !2256, inlinedAt: !2332)
!2334 = !DILocation(line: 118, column: 100, scope: !2256, inlinedAt: !2332)
!2335 = !DILocation(line: 120, column: 7, scope: !2274, inlinedAt: !2332)
!2336 = !DILocation(line: 120, column: 7, scope: !2256, inlinedAt: !2332)
!2337 = !DILocation(line: 104, column: 41, scope: !2277, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 125, column: 16, scope: !2289, inlinedAt: !2332)
!2339 = !DILocation(line: 104, column: 80, scope: !2277, inlinedAt: !2338)
!2340 = !DILocation(line: 104, column: 90, scope: !2277, inlinedAt: !2338)
!2341 = !DILocation(line: 106, column: 7, scope: !2294, inlinedAt: !2338)
!2342 = !DILocation(line: 106, column: 7, scope: !2277, inlinedAt: !2338)
!2343 = !DILocation(line: 90, column: 41, scope: !2297, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 111, column: 16, scope: !2308, inlinedAt: !2338)
!2345 = !DILocation(line: 90, column: 70, scope: !2297, inlinedAt: !2344)
!2346 = !DILocation(line: 90, column: 80, scope: !2297, inlinedAt: !2344)
!2347 = !DILocation(line: 92, column: 7, scope: !2313, inlinedAt: !2344)
!2348 = !DILocation(line: 92, column: 7, scope: !2297, inlinedAt: !2344)
!2349 = !DILocalVariable(name: "s2", arg: 2, scope: !2350, file: !2191, line: 76, type: !32)
!2350 = distinct !DISubprogram(name: "strcaseeq6", scope: !2191, file: !2191, line: 76, type: !2351, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!85, !32, !32, !7, !7, !7}
!2353 = !{!2354, !2349, !2355, !2356, !2357}
!2354 = !DILocalVariable(name: "s1", arg: 1, scope: !2350, file: !2191, line: 76, type: !32)
!2355 = !DILocalVariable(name: "s26", arg: 3, scope: !2350, file: !2191, line: 76, type: !7)
!2356 = !DILocalVariable(name: "s27", arg: 4, scope: !2350, file: !2191, line: 76, type: !7)
!2357 = !DILocalVariable(name: "s28", arg: 5, scope: !2350, file: !2191, line: 76, type: !7)
!2358 = !DILocation(line: 76, column: 41, scope: !2350, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 97, column: 16, scope: !2360, inlinedAt: !2344)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !2191, line: 94, column: 11)
!2361 = distinct !DILexicalBlock(scope: !2313, file: !2191, line: 93, column: 5)
!2362 = !DILocation(line: 76, column: 60, scope: !2350, inlinedAt: !2359)
!2363 = !DILocation(line: 76, column: 70, scope: !2350, inlinedAt: !2359)
!2364 = !DILocation(line: 78, column: 7, scope: !2365, inlinedAt: !2359)
!2365 = distinct !DILexicalBlock(scope: !2350, file: !2191, line: 78, column: 7)
!2366 = !DILocation(line: 78, column: 7, scope: !2350, inlinedAt: !2359)
!2367 = !DILocalVariable(name: "s2", arg: 2, scope: !2368, file: !2191, line: 62, type: !32)
!2368 = distinct !DISubprogram(name: "strcaseeq7", scope: !2191, file: !2191, line: 62, type: !2369, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!85, !32, !32, !7, !7}
!2371 = !{!2372, !2367, !2373, !2374}
!2372 = !DILocalVariable(name: "s1", arg: 1, scope: !2368, file: !2191, line: 62, type: !32)
!2373 = !DILocalVariable(name: "s27", arg: 3, scope: !2368, file: !2191, line: 62, type: !7)
!2374 = !DILocalVariable(name: "s28", arg: 4, scope: !2368, file: !2191, line: 62, type: !7)
!2375 = !DILocation(line: 62, column: 41, scope: !2368, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 83, column: 16, scope: !2377, inlinedAt: !2359)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !2191, line: 80, column: 11)
!2378 = distinct !DILexicalBlock(scope: !2365, file: !2191, line: 79, column: 5)
!2379 = !DILocation(line: 62, column: 50, scope: !2368, inlinedAt: !2376)
!2380 = !DILocation(line: 62, column: 60, scope: !2368, inlinedAt: !2376)
!2381 = !DILocation(line: 64, column: 7, scope: !2382, inlinedAt: !2376)
!2382 = distinct !DILexicalBlock(scope: !2368, file: !2191, line: 64, column: 7)
!2383 = !DILocation(line: 228, column: 7, scope: !2172)
!2384 = !DILocation(line: 229, column: 12, scope: !2321)
!2385 = !DILocation(line: 229, column: 21, scope: !2321)
!2386 = !DILocation(line: 229, column: 5, scope: !2321)
!2387 = !DILocation(line: 231, column: 13, scope: !2172)
!2388 = !DILocation(line: 231, column: 11, scope: !2172)
!2389 = !DILocation(line: 231, column: 3, scope: !2172)
!2390 = !DILocation(line: 232, column: 1, scope: !2172)
!2391 = distinct !DISubprogram(name: "quotearg_alloc", scope: !174, file: !174, line: 791, type: !2392, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!6, !32, !169, !1517}
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "arg", arg: 1, scope: !2391, file: !174, line: 791, type: !32)
!2396 = !DILocalVariable(name: "argsize", arg: 2, scope: !2391, file: !174, line: 791, type: !169)
!2397 = !DILocalVariable(name: "o", arg: 3, scope: !2391, file: !174, line: 792, type: !1517)
!2398 = !DILocation(line: 791, column: 29, scope: !2391)
!2399 = !DILocation(line: 791, column: 41, scope: !2391)
!2400 = !DILocation(line: 792, column: 47, scope: !2391)
!2401 = !DILocalVariable(name: "arg", arg: 1, scope: !2402, file: !174, line: 804, type: !32)
!2402 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !174, file: !174, line: 804, type: !2403, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!6, !32, !169, !670, !1517}
!2405 = !{!2401, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2406 = !DILocalVariable(name: "argsize", arg: 2, scope: !2402, file: !174, line: 804, type: !169)
!2407 = !DILocalVariable(name: "size", arg: 3, scope: !2402, file: !174, line: 804, type: !670)
!2408 = !DILocalVariable(name: "o", arg: 4, scope: !2402, file: !174, line: 805, type: !1517)
!2409 = !DILocalVariable(name: "p", scope: !2402, file: !174, line: 807, type: !1517)
!2410 = !DILocalVariable(name: "e", scope: !2402, file: !174, line: 808, type: !85)
!2411 = !DILocalVariable(name: "flags", scope: !2402, file: !174, line: 810, type: !85)
!2412 = !DILocalVariable(name: "bufsize", scope: !2402, file: !174, line: 811, type: !169)
!2413 = !DILocalVariable(name: "buf", scope: !2402, file: !174, line: 815, type: !6)
!2414 = !DILocation(line: 804, column: 33, scope: !2402, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 794, column: 10, scope: !2391)
!2416 = !DILocation(line: 804, column: 45, scope: !2402, inlinedAt: !2415)
!2417 = !DILocation(line: 804, column: 62, scope: !2402, inlinedAt: !2415)
!2418 = !DILocation(line: 805, column: 51, scope: !2402, inlinedAt: !2415)
!2419 = !DILocation(line: 807, column: 37, scope: !2402, inlinedAt: !2415)
!2420 = !DILocation(line: 807, column: 33, scope: !2402, inlinedAt: !2415)
!2421 = !DILocation(line: 808, column: 11, scope: !2402, inlinedAt: !2415)
!2422 = !DILocation(line: 808, column: 7, scope: !2402, inlinedAt: !2415)
!2423 = !DILocation(line: 810, column: 18, scope: !2402, inlinedAt: !2415)
!2424 = !DILocation(line: 810, column: 24, scope: !2402, inlinedAt: !2415)
!2425 = !DILocation(line: 810, column: 7, scope: !2402, inlinedAt: !2415)
!2426 = !DILocation(line: 811, column: 69, scope: !2402, inlinedAt: !2415)
!2427 = !DILocation(line: 812, column: 53, scope: !2402, inlinedAt: !2415)
!2428 = !DILocation(line: 813, column: 49, scope: !2402, inlinedAt: !2415)
!2429 = !DILocation(line: 814, column: 49, scope: !2402, inlinedAt: !2415)
!2430 = !DILocation(line: 811, column: 20, scope: !2402, inlinedAt: !2415)
!2431 = !DILocation(line: 814, column: 62, scope: !2402, inlinedAt: !2415)
!2432 = !DILocation(line: 811, column: 10, scope: !2402, inlinedAt: !2415)
!2433 = !DILocalVariable(name: "n", arg: 1, scope: !2434, file: !666, line: 220, type: !169)
!2434 = distinct !DISubprogram(name: "xcharalloc", scope: !666, file: !666, line: 220, type: !2435, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!6, !169}
!2437 = !{!2433}
!2438 = !DILocation(line: 220, column: 20, scope: !2434, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 815, column: 15, scope: !2402, inlinedAt: !2415)
!2440 = !DILocation(line: 222, column: 10, scope: !2434, inlinedAt: !2439)
!2441 = !DILocation(line: 815, column: 9, scope: !2402, inlinedAt: !2415)
!2442 = !DILocation(line: 816, column: 60, scope: !2402, inlinedAt: !2415)
!2443 = !DILocation(line: 818, column: 32, scope: !2402, inlinedAt: !2415)
!2444 = !DILocation(line: 818, column: 47, scope: !2402, inlinedAt: !2415)
!2445 = !DILocation(line: 816, column: 3, scope: !2402, inlinedAt: !2415)
!2446 = !DILocation(line: 819, column: 9, scope: !2402, inlinedAt: !2415)
!2447 = !DILocation(line: 794, column: 3, scope: !2391)
!2448 = !DILocation(line: 804, column: 33, scope: !2402)
!2449 = !DILocation(line: 804, column: 45, scope: !2402)
!2450 = !DILocation(line: 804, column: 62, scope: !2402)
!2451 = !DILocation(line: 805, column: 51, scope: !2402)
!2452 = !DILocation(line: 807, column: 37, scope: !2402)
!2453 = !DILocation(line: 807, column: 33, scope: !2402)
!2454 = !DILocation(line: 808, column: 11, scope: !2402)
!2455 = !DILocation(line: 808, column: 7, scope: !2402)
!2456 = !DILocation(line: 810, column: 18, scope: !2402)
!2457 = !DILocation(line: 810, column: 27, scope: !2402)
!2458 = !DILocation(line: 810, column: 24, scope: !2402)
!2459 = !DILocation(line: 810, column: 7, scope: !2402)
!2460 = !DILocation(line: 811, column: 69, scope: !2402)
!2461 = !DILocation(line: 812, column: 53, scope: !2402)
!2462 = !DILocation(line: 813, column: 49, scope: !2402)
!2463 = !DILocation(line: 814, column: 49, scope: !2402)
!2464 = !DILocation(line: 811, column: 20, scope: !2402)
!2465 = !DILocation(line: 814, column: 62, scope: !2402)
!2466 = !DILocation(line: 811, column: 10, scope: !2402)
!2467 = !DILocation(line: 220, column: 20, scope: !2434, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 815, column: 15, scope: !2402)
!2469 = !DILocation(line: 222, column: 10, scope: !2434, inlinedAt: !2468)
!2470 = !DILocation(line: 815, column: 9, scope: !2402)
!2471 = !DILocation(line: 816, column: 60, scope: !2402)
!2472 = !DILocation(line: 818, column: 32, scope: !2402)
!2473 = !DILocation(line: 818, column: 47, scope: !2402)
!2474 = !DILocation(line: 816, column: 3, scope: !2402)
!2475 = !DILocation(line: 819, column: 9, scope: !2402)
!2476 = !DILocation(line: 820, column: 7, scope: !2402)
!2477 = !DILocation(line: 821, column: 11, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2402, file: !174, line: 820, column: 7)
!2479 = !{!1156, !1156, i64 0}
!2480 = !DILocation(line: 821, column: 5, scope: !2478)
!2481 = !DILocation(line: 822, column: 3, scope: !2402)
!2482 = distinct !DISubprogram(name: "quotearg_free", scope: !174, file: !174, line: 840, type: !1398, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2483)
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "sv", scope: !2482, file: !174, line: 842, type: !198)
!2485 = !DILocalVariable(name: "i", scope: !2482, file: !174, line: 843, type: !85)
!2486 = !DILocation(line: 842, column: 24, scope: !2482)
!2487 = !DILocation(line: 842, column: 19, scope: !2482)
!2488 = !DILocation(line: 843, column: 7, scope: !2482)
!2489 = !DILocation(line: 844, column: 19, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !174, line: 844, column: 3)
!2491 = distinct !DILexicalBlock(scope: !2482, file: !174, line: 844, column: 3)
!2492 = !DILocation(line: 844, column: 17, scope: !2490)
!2493 = !DILocation(line: 844, column: 3, scope: !2491)
!2494 = !DILocation(line: 845, column: 17, scope: !2490)
!2495 = !{!2496, !756, i64 8}
!2496 = !{!"slotvec", !1156, i64 0, !756, i64 8}
!2497 = !DILocation(line: 845, column: 5, scope: !2490)
!2498 = !DILocation(line: 844, column: 28, scope: !2490)
!2499 = distinct !{!2499, !2493, !2500}
!2500 = !DILocation(line: 845, column: 20, scope: !2491)
!2501 = !DILocation(line: 846, column: 13, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2482, file: !174, line: 846, column: 7)
!2503 = !DILocation(line: 846, column: 17, scope: !2502)
!2504 = !DILocation(line: 846, column: 7, scope: !2482)
!2505 = !DILocation(line: 848, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !174, line: 847, column: 5)
!2507 = !DILocation(line: 849, column: 21, scope: !2506)
!2508 = !{!2496, !1156, i64 0}
!2509 = !DILocation(line: 850, column: 20, scope: !2506)
!2510 = !DILocation(line: 851, column: 5, scope: !2506)
!2511 = !DILocation(line: 852, column: 10, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2482, file: !174, line: 852, column: 7)
!2513 = !DILocation(line: 852, column: 7, scope: !2482)
!2514 = !DILocation(line: 854, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !174, line: 853, column: 5)
!2516 = !DILocation(line: 854, column: 7, scope: !2515)
!2517 = !DILocation(line: 855, column: 15, scope: !2515)
!2518 = !DILocation(line: 856, column: 5, scope: !2515)
!2519 = !DILocation(line: 857, column: 10, scope: !2482)
!2520 = !DILocation(line: 858, column: 1, scope: !2482)
!2521 = distinct !DISubprogram(name: "quotearg_n", scope: !174, file: !174, line: 922, type: !2522, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!6, !85, !32}
!2524 = !{!2525, !2526}
!2525 = !DILocalVariable(name: "n", arg: 1, scope: !2521, file: !174, line: 922, type: !85)
!2526 = !DILocalVariable(name: "arg", arg: 2, scope: !2521, file: !174, line: 922, type: !32)
!2527 = !DILocation(line: 922, column: 17, scope: !2521)
!2528 = !DILocation(line: 922, column: 32, scope: !2521)
!2529 = !DILocation(line: 924, column: 10, scope: !2521)
!2530 = !DILocation(line: 924, column: 3, scope: !2521)
!2531 = distinct !DISubprogram(name: "quotearg_n_options", scope: !174, file: !174, line: 869, type: !2532, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!6, !85, !32, !169, !1517}
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541, !2544, !2546, !2547, !2548}
!2535 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !174, line: 869, type: !85)
!2536 = !DILocalVariable(name: "arg", arg: 2, scope: !2531, file: !174, line: 869, type: !32)
!2537 = !DILocalVariable(name: "argsize", arg: 3, scope: !2531, file: !174, line: 869, type: !169)
!2538 = !DILocalVariable(name: "options", arg: 4, scope: !2531, file: !174, line: 870, type: !1517)
!2539 = !DILocalVariable(name: "e", scope: !2531, file: !174, line: 872, type: !85)
!2540 = !DILocalVariable(name: "sv", scope: !2531, file: !174, line: 874, type: !198)
!2541 = !DILocalVariable(name: "preallocated", scope: !2542, file: !174, line: 881, type: !50)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !174, line: 880, column: 5)
!2543 = distinct !DILexicalBlock(scope: !2531, file: !174, line: 879, column: 7)
!2544 = !DILocalVariable(name: "size", scope: !2545, file: !174, line: 894, type: !169)
!2545 = distinct !DILexicalBlock(scope: !2531, file: !174, line: 893, column: 3)
!2546 = !DILocalVariable(name: "val", scope: !2545, file: !174, line: 895, type: !6)
!2547 = !DILocalVariable(name: "flags", scope: !2545, file: !174, line: 897, type: !85)
!2548 = !DILocalVariable(name: "qsize", scope: !2545, file: !174, line: 898, type: !169)
!2549 = !DILocation(line: 869, column: 25, scope: !2531)
!2550 = !DILocation(line: 869, column: 40, scope: !2531)
!2551 = !DILocation(line: 869, column: 52, scope: !2531)
!2552 = !DILocation(line: 870, column: 51, scope: !2531)
!2553 = !DILocation(line: 872, column: 11, scope: !2531)
!2554 = !DILocation(line: 872, column: 7, scope: !2531)
!2555 = !DILocation(line: 874, column: 24, scope: !2531)
!2556 = !DILocation(line: 874, column: 19, scope: !2531)
!2557 = !DILocation(line: 876, column: 9, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2531, file: !174, line: 876, column: 7)
!2559 = !DILocation(line: 876, column: 7, scope: !2531)
!2560 = !DILocation(line: 877, column: 5, scope: !2558)
!2561 = !DILocation(line: 879, column: 7, scope: !2543)
!2562 = !DILocation(line: 879, column: 14, scope: !2543)
!2563 = !DILocation(line: 879, column: 7, scope: !2531)
!2564 = !DILocation(line: 881, column: 31, scope: !2542)
!2565 = !DILocation(line: 883, column: 67, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2542, file: !174, line: 883, column: 11)
!2567 = !DILocation(line: 883, column: 11, scope: !2542)
!2568 = !DILocation(line: 884, column: 9, scope: !2566)
!2569 = !DILocation(line: 886, column: 32, scope: !2542)
!2570 = !DILocation(line: 886, column: 61, scope: !2542)
!2571 = !DILocation(line: 886, column: 58, scope: !2542)
!2572 = !DILocation(line: 886, column: 66, scope: !2542)
!2573 = !DILocation(line: 886, column: 22, scope: !2542)
!2574 = !DILocation(line: 886, column: 15, scope: !2542)
!2575 = !DILocation(line: 887, column: 11, scope: !2542)
!2576 = !DILocation(line: 888, column: 15, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2542, file: !174, line: 887, column: 11)
!2578 = !{i64 0, i64 8, !2479, i64 8, i64 8, !755}
!2579 = !DILocation(line: 888, column: 9, scope: !2577)
!2580 = !DILocation(line: 889, column: 20, scope: !2542)
!2581 = !DILocation(line: 889, column: 18, scope: !2542)
!2582 = !DILocation(line: 889, column: 7, scope: !2542)
!2583 = !DILocation(line: 889, column: 38, scope: !2542)
!2584 = !DILocation(line: 889, column: 31, scope: !2542)
!2585 = !DILocation(line: 889, column: 48, scope: !2542)
!2586 = !DILocation(line: 890, column: 14, scope: !2542)
!2587 = !DILocation(line: 891, column: 5, scope: !2542)
!2588 = !DILocation(line: 894, column: 19, scope: !2545)
!2589 = !DILocation(line: 894, column: 25, scope: !2545)
!2590 = !DILocation(line: 894, column: 12, scope: !2545)
!2591 = !DILocation(line: 895, column: 23, scope: !2545)
!2592 = !DILocation(line: 895, column: 11, scope: !2545)
!2593 = !DILocation(line: 897, column: 26, scope: !2545)
!2594 = !DILocation(line: 897, column: 32, scope: !2545)
!2595 = !DILocation(line: 897, column: 9, scope: !2545)
!2596 = !DILocation(line: 899, column: 55, scope: !2545)
!2597 = !DILocation(line: 900, column: 46, scope: !2545)
!2598 = !DILocation(line: 901, column: 55, scope: !2545)
!2599 = !DILocation(line: 902, column: 55, scope: !2545)
!2600 = !DILocation(line: 898, column: 20, scope: !2545)
!2601 = !DILocation(line: 898, column: 12, scope: !2545)
!2602 = !DILocation(line: 904, column: 14, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2545, file: !174, line: 904, column: 9)
!2604 = !DILocation(line: 904, column: 9, scope: !2545)
!2605 = !DILocation(line: 906, column: 35, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !174, line: 905, column: 7)
!2607 = !DILocation(line: 906, column: 20, scope: !2606)
!2608 = !DILocation(line: 907, column: 17, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !174, line: 907, column: 13)
!2610 = !DILocation(line: 907, column: 13, scope: !2606)
!2611 = !DILocation(line: 908, column: 11, scope: !2609)
!2612 = !DILocation(line: 220, column: 20, scope: !2434, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 909, column: 27, scope: !2606)
!2614 = !DILocation(line: 222, column: 10, scope: !2434, inlinedAt: !2613)
!2615 = !DILocation(line: 909, column: 19, scope: !2606)
!2616 = !DILocation(line: 910, column: 69, scope: !2606)
!2617 = !DILocation(line: 912, column: 44, scope: !2606)
!2618 = !DILocation(line: 913, column: 44, scope: !2606)
!2619 = !DILocation(line: 910, column: 9, scope: !2606)
!2620 = !DILocation(line: 914, column: 7, scope: !2606)
!2621 = !DILocation(line: 916, column: 11, scope: !2545)
!2622 = !DILocation(line: 917, column: 5, scope: !2545)
!2623 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !174, file: !174, line: 928, type: !2624, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!6, !85, !32, !169}
!2626 = !{!2627, !2628, !2629}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !174, line: 928, type: !85)
!2628 = !DILocalVariable(name: "arg", arg: 2, scope: !2623, file: !174, line: 928, type: !32)
!2629 = !DILocalVariable(name: "argsize", arg: 3, scope: !2623, file: !174, line: 928, type: !169)
!2630 = !DILocation(line: 928, column: 21, scope: !2623)
!2631 = !DILocation(line: 928, column: 36, scope: !2623)
!2632 = !DILocation(line: 928, column: 48, scope: !2623)
!2633 = !DILocation(line: 930, column: 10, scope: !2623)
!2634 = !DILocation(line: 930, column: 3, scope: !2623)
!2635 = distinct !DISubprogram(name: "quotearg", scope: !174, file: !174, line: 934, type: !2636, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!6, !32}
!2638 = !{!2639}
!2639 = !DILocalVariable(name: "arg", arg: 1, scope: !2635, file: !174, line: 934, type: !32)
!2640 = !DILocation(line: 934, column: 23, scope: !2635)
!2641 = !DILocation(line: 922, column: 17, scope: !2521, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 936, column: 10, scope: !2635)
!2643 = !DILocation(line: 922, column: 32, scope: !2521, inlinedAt: !2642)
!2644 = !DILocation(line: 924, column: 10, scope: !2521, inlinedAt: !2642)
!2645 = !DILocation(line: 936, column: 3, scope: !2635)
!2646 = distinct !DISubprogram(name: "quotearg_mem", scope: !174, file: !174, line: 940, type: !2647, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!6, !32, !169}
!2649 = !{!2650, !2651}
!2650 = !DILocalVariable(name: "arg", arg: 1, scope: !2646, file: !174, line: 940, type: !32)
!2651 = !DILocalVariable(name: "argsize", arg: 2, scope: !2646, file: !174, line: 940, type: !169)
!2652 = !DILocation(line: 940, column: 27, scope: !2646)
!2653 = !DILocation(line: 940, column: 39, scope: !2646)
!2654 = !DILocation(line: 928, column: 21, scope: !2623, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 942, column: 10, scope: !2646)
!2656 = !DILocation(line: 928, column: 36, scope: !2623, inlinedAt: !2655)
!2657 = !DILocation(line: 928, column: 48, scope: !2623, inlinedAt: !2655)
!2658 = !DILocation(line: 930, column: 10, scope: !2623, inlinedAt: !2655)
!2659 = !DILocation(line: 942, column: 3, scope: !2646)
!2660 = distinct !DISubprogram(name: "quotearg_n_style", scope: !174, file: !174, line: 946, type: !2661, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!6, !85, !133, !32}
!2663 = !{!2664, !2665, !2666, !2667}
!2664 = !DILocalVariable(name: "n", arg: 1, scope: !2660, file: !174, line: 946, type: !85)
!2665 = !DILocalVariable(name: "s", arg: 2, scope: !2660, file: !174, line: 946, type: !133)
!2666 = !DILocalVariable(name: "arg", arg: 3, scope: !2660, file: !174, line: 946, type: !32)
!2667 = !DILocalVariable(name: "o", scope: !2660, file: !174, line: 948, type: !1518)
!2668 = !DILocalVariable(name: "o", scope: !2669, file: !174, line: 187, type: !179)
!2669 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !174, file: !174, line: 185, type: !2670, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!179, !133}
!2672 = !{!2673, !2668}
!2673 = !DILocalVariable(name: "style", arg: 1, scope: !2669, file: !174, line: 185, type: !133)
!2674 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2675 = !DILocation(line: 187, column: 26, scope: !2669, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 948, column: 36, scope: !2660)
!2677 = !DILocation(line: 946, column: 23, scope: !2660)
!2678 = !DILocation(line: 946, column: 45, scope: !2660)
!2679 = !DILocation(line: 946, column: 60, scope: !2660)
!2680 = !DILocation(line: 948, column: 3, scope: !2660)
!2681 = !DILocation(line: 948, column: 32, scope: !2660)
!2682 = !DILocation(line: 185, column: 48, scope: !2669, inlinedAt: !2676)
!2683 = !DILocation(line: 187, column: 3, scope: !2669, inlinedAt: !2676)
!2684 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2685 = !DILocation(line: 188, column: 13, scope: !2686, inlinedAt: !2676)
!2686 = distinct !DILexicalBlock(scope: !2669, file: !174, line: 188, column: 7)
!2687 = !DILocation(line: 188, column: 7, scope: !2669, inlinedAt: !2676)
!2688 = !DILocation(line: 189, column: 5, scope: !2686, inlinedAt: !2676)
!2689 = !{!2690}
!2690 = distinct !{!2690, !2691, !"quoting_options_from_style: argument 0"}
!2691 = distinct !{!2691, !"quoting_options_from_style"}
!2692 = !DILocation(line: 191, column: 10, scope: !2669, inlinedAt: !2676)
!2693 = !DILocation(line: 192, column: 1, scope: !2669, inlinedAt: !2676)
!2694 = !DILocation(line: 949, column: 10, scope: !2660)
!2695 = !DILocation(line: 950, column: 1, scope: !2660)
!2696 = !DILocation(line: 949, column: 3, scope: !2660)
!2697 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !174, file: !174, line: 953, type: !2698, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!6, !85, !133, !32, !169}
!2700 = !{!2701, !2702, !2703, !2704, !2705}
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2697, file: !174, line: 953, type: !85)
!2702 = !DILocalVariable(name: "s", arg: 2, scope: !2697, file: !174, line: 953, type: !133)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !174, line: 954, type: !32)
!2704 = !DILocalVariable(name: "argsize", arg: 4, scope: !2697, file: !174, line: 954, type: !169)
!2705 = !DILocalVariable(name: "o", scope: !2697, file: !174, line: 956, type: !1518)
!2706 = !DILocation(line: 187, column: 26, scope: !2669, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 956, column: 36, scope: !2697)
!2708 = !DILocation(line: 953, column: 27, scope: !2697)
!2709 = !DILocation(line: 953, column: 49, scope: !2697)
!2710 = !DILocation(line: 954, column: 35, scope: !2697)
!2711 = !DILocation(line: 954, column: 47, scope: !2697)
!2712 = !DILocation(line: 956, column: 3, scope: !2697)
!2713 = !DILocation(line: 956, column: 32, scope: !2697)
!2714 = !DILocation(line: 185, column: 48, scope: !2669, inlinedAt: !2707)
!2715 = !DILocation(line: 187, column: 3, scope: !2669, inlinedAt: !2707)
!2716 = !DILocation(line: 188, column: 13, scope: !2686, inlinedAt: !2707)
!2717 = !DILocation(line: 188, column: 7, scope: !2669, inlinedAt: !2707)
!2718 = !DILocation(line: 189, column: 5, scope: !2686, inlinedAt: !2707)
!2719 = !{!2720}
!2720 = distinct !{!2720, !2721, !"quoting_options_from_style: argument 0"}
!2721 = distinct !{!2721, !"quoting_options_from_style"}
!2722 = !DILocation(line: 191, column: 10, scope: !2669, inlinedAt: !2707)
!2723 = !DILocation(line: 192, column: 1, scope: !2669, inlinedAt: !2707)
!2724 = !DILocation(line: 957, column: 10, scope: !2697)
!2725 = !DILocation(line: 958, column: 1, scope: !2697)
!2726 = !DILocation(line: 957, column: 3, scope: !2697)
!2727 = distinct !DISubprogram(name: "quotearg_style", scope: !174, file: !174, line: 961, type: !2728, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!6, !133, !32}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "s", arg: 1, scope: !2727, file: !174, line: 961, type: !133)
!2732 = !DILocalVariable(name: "arg", arg: 2, scope: !2727, file: !174, line: 961, type: !32)
!2733 = !DILocation(line: 187, column: 26, scope: !2669, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 948, column: 36, scope: !2660, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 963, column: 10, scope: !2727)
!2736 = !DILocation(line: 961, column: 36, scope: !2727)
!2737 = !DILocation(line: 961, column: 51, scope: !2727)
!2738 = !DILocation(line: 946, column: 23, scope: !2660, inlinedAt: !2735)
!2739 = !DILocation(line: 946, column: 45, scope: !2660, inlinedAt: !2735)
!2740 = !DILocation(line: 946, column: 60, scope: !2660, inlinedAt: !2735)
!2741 = !DILocation(line: 948, column: 3, scope: !2660, inlinedAt: !2735)
!2742 = !DILocation(line: 948, column: 32, scope: !2660, inlinedAt: !2735)
!2743 = !DILocation(line: 185, column: 48, scope: !2669, inlinedAt: !2734)
!2744 = !DILocation(line: 187, column: 3, scope: !2669, inlinedAt: !2734)
!2745 = !DILocation(line: 188, column: 13, scope: !2686, inlinedAt: !2734)
!2746 = !DILocation(line: 188, column: 7, scope: !2669, inlinedAt: !2734)
!2747 = !DILocation(line: 189, column: 5, scope: !2686, inlinedAt: !2734)
!2748 = !{!2749}
!2749 = distinct !{!2749, !2750, !"quoting_options_from_style: argument 0"}
!2750 = distinct !{!2750, !"quoting_options_from_style"}
!2751 = !DILocation(line: 191, column: 10, scope: !2669, inlinedAt: !2734)
!2752 = !DILocation(line: 192, column: 1, scope: !2669, inlinedAt: !2734)
!2753 = !DILocation(line: 949, column: 10, scope: !2660, inlinedAt: !2735)
!2754 = !DILocation(line: 950, column: 1, scope: !2660, inlinedAt: !2735)
!2755 = !DILocation(line: 963, column: 3, scope: !2727)
!2756 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !174, file: !174, line: 967, type: !2757, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!6, !133, !32, !169}
!2759 = !{!2760, !2761, !2762}
!2760 = !DILocalVariable(name: "s", arg: 1, scope: !2756, file: !174, line: 967, type: !133)
!2761 = !DILocalVariable(name: "arg", arg: 2, scope: !2756, file: !174, line: 967, type: !32)
!2762 = !DILocalVariable(name: "argsize", arg: 3, scope: !2756, file: !174, line: 967, type: !169)
!2763 = !DILocation(line: 187, column: 26, scope: !2669, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 956, column: 36, scope: !2697, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 969, column: 10, scope: !2756)
!2766 = !DILocation(line: 967, column: 40, scope: !2756)
!2767 = !DILocation(line: 967, column: 55, scope: !2756)
!2768 = !DILocation(line: 967, column: 67, scope: !2756)
!2769 = !DILocation(line: 953, column: 27, scope: !2697, inlinedAt: !2765)
!2770 = !DILocation(line: 953, column: 49, scope: !2697, inlinedAt: !2765)
!2771 = !DILocation(line: 954, column: 35, scope: !2697, inlinedAt: !2765)
!2772 = !DILocation(line: 954, column: 47, scope: !2697, inlinedAt: !2765)
!2773 = !DILocation(line: 956, column: 3, scope: !2697, inlinedAt: !2765)
!2774 = !DILocation(line: 956, column: 32, scope: !2697, inlinedAt: !2765)
!2775 = !DILocation(line: 185, column: 48, scope: !2669, inlinedAt: !2764)
!2776 = !DILocation(line: 187, column: 3, scope: !2669, inlinedAt: !2764)
!2777 = !DILocation(line: 188, column: 13, scope: !2686, inlinedAt: !2764)
!2778 = !DILocation(line: 188, column: 7, scope: !2669, inlinedAt: !2764)
!2779 = !DILocation(line: 189, column: 5, scope: !2686, inlinedAt: !2764)
!2780 = !{!2781}
!2781 = distinct !{!2781, !2782, !"quoting_options_from_style: argument 0"}
!2782 = distinct !{!2782, !"quoting_options_from_style"}
!2783 = !DILocation(line: 191, column: 10, scope: !2669, inlinedAt: !2764)
!2784 = !DILocation(line: 192, column: 1, scope: !2669, inlinedAt: !2764)
!2785 = !DILocation(line: 957, column: 10, scope: !2697, inlinedAt: !2765)
!2786 = !DILocation(line: 958, column: 1, scope: !2697, inlinedAt: !2765)
!2787 = !DILocation(line: 969, column: 3, scope: !2756)
!2788 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !174, file: !174, line: 973, type: !2789, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!6, !32, !169, !7}
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2788, file: !174, line: 973, type: !32)
!2793 = !DILocalVariable(name: "argsize", arg: 2, scope: !2788, file: !174, line: 973, type: !169)
!2794 = !DILocalVariable(name: "ch", arg: 3, scope: !2788, file: !174, line: 973, type: !7)
!2795 = !DILocalVariable(name: "options", scope: !2788, file: !174, line: 975, type: !179)
!2796 = !DILocation(line: 973, column: 32, scope: !2788)
!2797 = !DILocation(line: 973, column: 44, scope: !2788)
!2798 = !DILocation(line: 973, column: 58, scope: !2788)
!2799 = !DILocation(line: 975, column: 3, scope: !2788)
!2800 = !DILocation(line: 976, column: 13, scope: !2788)
!2801 = !{i64 0, i64 4, !893, i64 4, i64 4, !851, i64 8, i64 32, !893, i64 40, i64 8, !755, i64 48, i64 8, !755}
!2802 = !DILocation(line: 975, column: 26, scope: !2788)
!2803 = !DILocation(line: 144, column: 43, scope: !1539, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 977, column: 3, scope: !2788)
!2805 = !DILocation(line: 144, column: 51, scope: !1539, inlinedAt: !2804)
!2806 = !DILocation(line: 144, column: 58, scope: !1539, inlinedAt: !2804)
!2807 = !DILocation(line: 146, column: 17, scope: !1539, inlinedAt: !2804)
!2808 = !DILocation(line: 148, column: 62, scope: !1539, inlinedAt: !2804)
!2809 = !DILocation(line: 148, column: 57, scope: !1539, inlinedAt: !2804)
!2810 = !DILocation(line: 147, column: 17, scope: !1539, inlinedAt: !2804)
!2811 = !DILocation(line: 149, column: 18, scope: !1539, inlinedAt: !2804)
!2812 = !DILocation(line: 149, column: 15, scope: !1539, inlinedAt: !2804)
!2813 = !DILocation(line: 149, column: 7, scope: !1539, inlinedAt: !2804)
!2814 = !DILocation(line: 150, column: 12, scope: !1539, inlinedAt: !2804)
!2815 = !DILocation(line: 150, column: 15, scope: !1539, inlinedAt: !2804)
!2816 = !DILocation(line: 150, column: 25, scope: !1539, inlinedAt: !2804)
!2817 = !DILocation(line: 150, column: 7, scope: !1539, inlinedAt: !2804)
!2818 = !DILocation(line: 151, column: 18, scope: !1539, inlinedAt: !2804)
!2819 = !DILocation(line: 151, column: 23, scope: !1539, inlinedAt: !2804)
!2820 = !DILocation(line: 151, column: 6, scope: !1539, inlinedAt: !2804)
!2821 = !DILocation(line: 978, column: 10, scope: !2788)
!2822 = !DILocation(line: 979, column: 1, scope: !2788)
!2823 = !DILocation(line: 978, column: 3, scope: !2788)
!2824 = distinct !DISubprogram(name: "quotearg_char", scope: !174, file: !174, line: 982, type: !2825, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!6, !32, !7}
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "arg", arg: 1, scope: !2824, file: !174, line: 982, type: !32)
!2829 = !DILocalVariable(name: "ch", arg: 2, scope: !2824, file: !174, line: 982, type: !7)
!2830 = !DILocation(line: 982, column: 28, scope: !2824)
!2831 = !DILocation(line: 982, column: 38, scope: !2824)
!2832 = !DILocation(line: 973, column: 32, scope: !2788, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 984, column: 10, scope: !2824)
!2834 = !DILocation(line: 973, column: 44, scope: !2788, inlinedAt: !2833)
!2835 = !DILocation(line: 973, column: 58, scope: !2788, inlinedAt: !2833)
!2836 = !DILocation(line: 975, column: 3, scope: !2788, inlinedAt: !2833)
!2837 = !DILocation(line: 976, column: 13, scope: !2788, inlinedAt: !2833)
!2838 = !DILocation(line: 975, column: 26, scope: !2788, inlinedAt: !2833)
!2839 = !DILocation(line: 144, column: 43, scope: !1539, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 977, column: 3, scope: !2788, inlinedAt: !2833)
!2841 = !DILocation(line: 144, column: 51, scope: !1539, inlinedAt: !2840)
!2842 = !DILocation(line: 144, column: 58, scope: !1539, inlinedAt: !2840)
!2843 = !DILocation(line: 146, column: 17, scope: !1539, inlinedAt: !2840)
!2844 = !DILocation(line: 148, column: 62, scope: !1539, inlinedAt: !2840)
!2845 = !DILocation(line: 148, column: 57, scope: !1539, inlinedAt: !2840)
!2846 = !DILocation(line: 147, column: 17, scope: !1539, inlinedAt: !2840)
!2847 = !DILocation(line: 149, column: 18, scope: !1539, inlinedAt: !2840)
!2848 = !DILocation(line: 149, column: 15, scope: !1539, inlinedAt: !2840)
!2849 = !DILocation(line: 149, column: 7, scope: !1539, inlinedAt: !2840)
!2850 = !DILocation(line: 150, column: 12, scope: !1539, inlinedAt: !2840)
!2851 = !DILocation(line: 150, column: 15, scope: !1539, inlinedAt: !2840)
!2852 = !DILocation(line: 150, column: 25, scope: !1539, inlinedAt: !2840)
!2853 = !DILocation(line: 150, column: 7, scope: !1539, inlinedAt: !2840)
!2854 = !DILocation(line: 151, column: 18, scope: !1539, inlinedAt: !2840)
!2855 = !DILocation(line: 151, column: 23, scope: !1539, inlinedAt: !2840)
!2856 = !DILocation(line: 151, column: 6, scope: !1539, inlinedAt: !2840)
!2857 = !DILocation(line: 978, column: 10, scope: !2788, inlinedAt: !2833)
!2858 = !DILocation(line: 979, column: 1, scope: !2788, inlinedAt: !2833)
!2859 = !DILocation(line: 984, column: 3, scope: !2824)
!2860 = distinct !DISubprogram(name: "quotearg_colon", scope: !174, file: !174, line: 988, type: !2636, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2861)
!2861 = !{!2862}
!2862 = !DILocalVariable(name: "arg", arg: 1, scope: !2860, file: !174, line: 988, type: !32)
!2863 = !DILocation(line: 988, column: 29, scope: !2860)
!2864 = !DILocation(line: 982, column: 28, scope: !2824, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 990, column: 10, scope: !2860)
!2866 = !DILocation(line: 982, column: 38, scope: !2824, inlinedAt: !2865)
!2867 = !DILocation(line: 973, column: 32, scope: !2788, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 984, column: 10, scope: !2824, inlinedAt: !2865)
!2869 = !DILocation(line: 973, column: 44, scope: !2788, inlinedAt: !2868)
!2870 = !DILocation(line: 973, column: 58, scope: !2788, inlinedAt: !2868)
!2871 = !DILocation(line: 975, column: 3, scope: !2788, inlinedAt: !2868)
!2872 = !DILocation(line: 976, column: 13, scope: !2788, inlinedAt: !2868)
!2873 = !DILocation(line: 975, column: 26, scope: !2788, inlinedAt: !2868)
!2874 = !DILocation(line: 144, column: 43, scope: !1539, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 977, column: 3, scope: !2788, inlinedAt: !2868)
!2876 = !DILocation(line: 144, column: 51, scope: !1539, inlinedAt: !2875)
!2877 = !DILocation(line: 144, column: 58, scope: !1539, inlinedAt: !2875)
!2878 = !DILocation(line: 146, column: 17, scope: !1539, inlinedAt: !2875)
!2879 = !DILocation(line: 148, column: 57, scope: !1539, inlinedAt: !2875)
!2880 = !DILocation(line: 147, column: 17, scope: !1539, inlinedAt: !2875)
!2881 = !DILocation(line: 149, column: 7, scope: !1539, inlinedAt: !2875)
!2882 = !DILocation(line: 150, column: 12, scope: !1539, inlinedAt: !2875)
!2883 = !DILocation(line: 151, column: 6, scope: !1539, inlinedAt: !2875)
!2884 = !DILocation(line: 978, column: 10, scope: !2788, inlinedAt: !2868)
!2885 = !DILocation(line: 979, column: 1, scope: !2788, inlinedAt: !2868)
!2886 = !DILocation(line: 990, column: 3, scope: !2860)
!2887 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !174, file: !174, line: 994, type: !2647, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2888)
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !174, line: 994, type: !32)
!2890 = !DILocalVariable(name: "argsize", arg: 2, scope: !2887, file: !174, line: 994, type: !169)
!2891 = !DILocation(line: 994, column: 33, scope: !2887)
!2892 = !DILocation(line: 994, column: 45, scope: !2887)
!2893 = !DILocation(line: 973, column: 32, scope: !2788, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 996, column: 10, scope: !2887)
!2895 = !DILocation(line: 973, column: 44, scope: !2788, inlinedAt: !2894)
!2896 = !DILocation(line: 973, column: 58, scope: !2788, inlinedAt: !2894)
!2897 = !DILocation(line: 975, column: 3, scope: !2788, inlinedAt: !2894)
!2898 = !DILocation(line: 976, column: 13, scope: !2788, inlinedAt: !2894)
!2899 = !DILocation(line: 975, column: 26, scope: !2788, inlinedAt: !2894)
!2900 = !DILocation(line: 144, column: 43, scope: !1539, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 977, column: 3, scope: !2788, inlinedAt: !2894)
!2902 = !DILocation(line: 144, column: 51, scope: !1539, inlinedAt: !2901)
!2903 = !DILocation(line: 144, column: 58, scope: !1539, inlinedAt: !2901)
!2904 = !DILocation(line: 146, column: 17, scope: !1539, inlinedAt: !2901)
!2905 = !DILocation(line: 148, column: 57, scope: !1539, inlinedAt: !2901)
!2906 = !DILocation(line: 147, column: 17, scope: !1539, inlinedAt: !2901)
!2907 = !DILocation(line: 149, column: 7, scope: !1539, inlinedAt: !2901)
!2908 = !DILocation(line: 150, column: 12, scope: !1539, inlinedAt: !2901)
!2909 = !DILocation(line: 151, column: 6, scope: !1539, inlinedAt: !2901)
!2910 = !DILocation(line: 978, column: 10, scope: !2788, inlinedAt: !2894)
!2911 = !DILocation(line: 979, column: 1, scope: !2788, inlinedAt: !2894)
!2912 = !DILocation(line: 996, column: 3, scope: !2887)
!2913 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !174, file: !174, line: 1000, type: !2661, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DILocalVariable(name: "n", arg: 1, scope: !2913, file: !174, line: 1000, type: !85)
!2916 = !DILocalVariable(name: "s", arg: 2, scope: !2913, file: !174, line: 1000, type: !133)
!2917 = !DILocalVariable(name: "arg", arg: 3, scope: !2913, file: !174, line: 1000, type: !32)
!2918 = !DILocalVariable(name: "options", scope: !2913, file: !174, line: 1002, type: !179)
!2919 = !DILocation(line: 187, column: 26, scope: !2669, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1003, column: 13, scope: !2913)
!2921 = !DILocation(line: 1000, column: 29, scope: !2913)
!2922 = !DILocation(line: 1000, column: 51, scope: !2913)
!2923 = !DILocation(line: 1000, column: 66, scope: !2913)
!2924 = !DILocation(line: 1002, column: 3, scope: !2913)
!2925 = !DILocation(line: 185, column: 48, scope: !2669, inlinedAt: !2920)
!2926 = !DILocation(line: 187, column: 3, scope: !2669, inlinedAt: !2920)
!2927 = !DILocation(line: 188, column: 13, scope: !2686, inlinedAt: !2920)
!2928 = !DILocation(line: 188, column: 7, scope: !2669, inlinedAt: !2920)
!2929 = !DILocation(line: 189, column: 5, scope: !2686, inlinedAt: !2920)
!2930 = !{!2931}
!2931 = distinct !{!2931, !2932, !"quoting_options_from_style: argument 0"}
!2932 = distinct !{!2932, !"quoting_options_from_style"}
!2933 = !DILocation(line: 191, column: 10, scope: !2669, inlinedAt: !2920)
!2934 = !DILocation(line: 192, column: 1, scope: !2669, inlinedAt: !2920)
!2935 = !DILocation(line: 1003, column: 13, scope: !2913)
!2936 = !DILocation(line: 1002, column: 26, scope: !2913)
!2937 = !DILocation(line: 144, column: 43, scope: !1539, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1004, column: 3, scope: !2913)
!2939 = !DILocation(line: 144, column: 51, scope: !1539, inlinedAt: !2938)
!2940 = !DILocation(line: 144, column: 58, scope: !1539, inlinedAt: !2938)
!2941 = !DILocation(line: 146, column: 17, scope: !1539, inlinedAt: !2938)
!2942 = !DILocation(line: 148, column: 57, scope: !1539, inlinedAt: !2938)
!2943 = !DILocation(line: 147, column: 17, scope: !1539, inlinedAt: !2938)
!2944 = !DILocation(line: 149, column: 7, scope: !1539, inlinedAt: !2938)
!2945 = !DILocation(line: 150, column: 12, scope: !1539, inlinedAt: !2938)
!2946 = !DILocation(line: 151, column: 6, scope: !1539, inlinedAt: !2938)
!2947 = !DILocation(line: 1005, column: 10, scope: !2913)
!2948 = !DILocation(line: 1006, column: 1, scope: !2913)
!2949 = !DILocation(line: 1005, column: 3, scope: !2913)
!2950 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !174, file: !174, line: 1009, type: !2951, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!6, !85, !32, !32, !32}
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !174, line: 1009, type: !85)
!2955 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2950, file: !174, line: 1009, type: !32)
!2956 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2950, file: !174, line: 1010, type: !32)
!2957 = !DILocalVariable(name: "arg", arg: 4, scope: !2950, file: !174, line: 1010, type: !32)
!2958 = !DILocation(line: 1009, column: 24, scope: !2950)
!2959 = !DILocation(line: 1009, column: 39, scope: !2950)
!2960 = !DILocation(line: 1010, column: 32, scope: !2950)
!2961 = !DILocation(line: 1010, column: 57, scope: !2950)
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !174, line: 1017, type: !85)
!2963 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !174, file: !174, line: 1017, type: !2964, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!6, !85, !32, !32, !32, !169}
!2966 = !{!2962, !2967, !2968, !2969, !2970, !2971}
!2967 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2963, file: !174, line: 1017, type: !32)
!2968 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2963, file: !174, line: 1018, type: !32)
!2969 = !DILocalVariable(name: "arg", arg: 4, scope: !2963, file: !174, line: 1019, type: !32)
!2970 = !DILocalVariable(name: "argsize", arg: 5, scope: !2963, file: !174, line: 1019, type: !169)
!2971 = !DILocalVariable(name: "o", scope: !2963, file: !174, line: 1021, type: !179)
!2972 = !DILocation(line: 1017, column: 28, scope: !2963, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 1012, column: 10, scope: !2950)
!2974 = !DILocation(line: 1017, column: 43, scope: !2963, inlinedAt: !2973)
!2975 = !DILocation(line: 1018, column: 36, scope: !2963, inlinedAt: !2973)
!2976 = !DILocation(line: 1019, column: 36, scope: !2963, inlinedAt: !2973)
!2977 = !DILocation(line: 1019, column: 48, scope: !2963, inlinedAt: !2973)
!2978 = !DILocation(line: 1021, column: 3, scope: !2963, inlinedAt: !2973)
!2979 = !DILocation(line: 1021, column: 30, scope: !2963, inlinedAt: !2973)
!2980 = !DILocation(line: 1021, column: 26, scope: !2963, inlinedAt: !2973)
!2981 = !DILocation(line: 171, column: 45, scope: !1588, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 1022, column: 3, scope: !2963, inlinedAt: !2973)
!2983 = !DILocation(line: 172, column: 33, scope: !1588, inlinedAt: !2982)
!2984 = !DILocation(line: 172, column: 57, scope: !1588, inlinedAt: !2982)
!2985 = !DILocation(line: 176, column: 6, scope: !1588, inlinedAt: !2982)
!2986 = !DILocation(line: 176, column: 12, scope: !1588, inlinedAt: !2982)
!2987 = !DILocation(line: 177, column: 8, scope: !1604, inlinedAt: !2982)
!2988 = !DILocation(line: 177, column: 23, scope: !1604, inlinedAt: !2982)
!2989 = !DILocation(line: 177, column: 19, scope: !1604, inlinedAt: !2982)
!2990 = !DILocation(line: 178, column: 5, scope: !1604, inlinedAt: !2982)
!2991 = !DILocation(line: 179, column: 6, scope: !1588, inlinedAt: !2982)
!2992 = !DILocation(line: 179, column: 17, scope: !1588, inlinedAt: !2982)
!2993 = !DILocation(line: 180, column: 6, scope: !1588, inlinedAt: !2982)
!2994 = !DILocation(line: 180, column: 18, scope: !1588, inlinedAt: !2982)
!2995 = !DILocation(line: 1023, column: 10, scope: !2963, inlinedAt: !2973)
!2996 = !DILocation(line: 1024, column: 1, scope: !2963, inlinedAt: !2973)
!2997 = !DILocation(line: 1012, column: 3, scope: !2950)
!2998 = !DILocation(line: 1017, column: 28, scope: !2963)
!2999 = !DILocation(line: 1017, column: 43, scope: !2963)
!3000 = !DILocation(line: 1018, column: 36, scope: !2963)
!3001 = !DILocation(line: 1019, column: 36, scope: !2963)
!3002 = !DILocation(line: 1019, column: 48, scope: !2963)
!3003 = !DILocation(line: 1021, column: 3, scope: !2963)
!3004 = !DILocation(line: 1021, column: 30, scope: !2963)
!3005 = !DILocation(line: 1021, column: 26, scope: !2963)
!3006 = !DILocation(line: 171, column: 45, scope: !1588, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 1022, column: 3, scope: !2963)
!3008 = !DILocation(line: 172, column: 33, scope: !1588, inlinedAt: !3007)
!3009 = !DILocation(line: 172, column: 57, scope: !1588, inlinedAt: !3007)
!3010 = !DILocation(line: 176, column: 6, scope: !1588, inlinedAt: !3007)
!3011 = !DILocation(line: 176, column: 12, scope: !1588, inlinedAt: !3007)
!3012 = !DILocation(line: 177, column: 8, scope: !1604, inlinedAt: !3007)
!3013 = !DILocation(line: 177, column: 23, scope: !1604, inlinedAt: !3007)
!3014 = !DILocation(line: 177, column: 19, scope: !1604, inlinedAt: !3007)
!3015 = !DILocation(line: 178, column: 5, scope: !1604, inlinedAt: !3007)
!3016 = !DILocation(line: 179, column: 6, scope: !1588, inlinedAt: !3007)
!3017 = !DILocation(line: 179, column: 17, scope: !1588, inlinedAt: !3007)
!3018 = !DILocation(line: 180, column: 6, scope: !1588, inlinedAt: !3007)
!3019 = !DILocation(line: 180, column: 18, scope: !1588, inlinedAt: !3007)
!3020 = !DILocation(line: 1023, column: 10, scope: !2963)
!3021 = !DILocation(line: 1024, column: 1, scope: !2963)
!3022 = !DILocation(line: 1023, column: 3, scope: !2963)
!3023 = distinct !DISubprogram(name: "quotearg_custom", scope: !174, file: !174, line: 1027, type: !3024, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!6, !32, !32, !32}
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3023, file: !174, line: 1027, type: !32)
!3028 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3023, file: !174, line: 1027, type: !32)
!3029 = !DILocalVariable(name: "arg", arg: 3, scope: !3023, file: !174, line: 1028, type: !32)
!3030 = !DILocation(line: 1027, column: 30, scope: !3023)
!3031 = !DILocation(line: 1027, column: 54, scope: !3023)
!3032 = !DILocation(line: 1028, column: 30, scope: !3023)
!3033 = !DILocation(line: 1009, column: 24, scope: !2950, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 1030, column: 10, scope: !3023)
!3035 = !DILocation(line: 1009, column: 39, scope: !2950, inlinedAt: !3034)
!3036 = !DILocation(line: 1010, column: 32, scope: !2950, inlinedAt: !3034)
!3037 = !DILocation(line: 1010, column: 57, scope: !2950, inlinedAt: !3034)
!3038 = !DILocation(line: 1017, column: 28, scope: !2963, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1012, column: 10, scope: !2950, inlinedAt: !3034)
!3040 = !DILocation(line: 1017, column: 43, scope: !2963, inlinedAt: !3039)
!3041 = !DILocation(line: 1018, column: 36, scope: !2963, inlinedAt: !3039)
!3042 = !DILocation(line: 1019, column: 36, scope: !2963, inlinedAt: !3039)
!3043 = !DILocation(line: 1019, column: 48, scope: !2963, inlinedAt: !3039)
!3044 = !DILocation(line: 1021, column: 3, scope: !2963, inlinedAt: !3039)
!3045 = !DILocation(line: 1021, column: 30, scope: !2963, inlinedAt: !3039)
!3046 = !DILocation(line: 1021, column: 26, scope: !2963, inlinedAt: !3039)
!3047 = !DILocation(line: 171, column: 45, scope: !1588, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1022, column: 3, scope: !2963, inlinedAt: !3039)
!3049 = !DILocation(line: 172, column: 33, scope: !1588, inlinedAt: !3048)
!3050 = !DILocation(line: 172, column: 57, scope: !1588, inlinedAt: !3048)
!3051 = !DILocation(line: 176, column: 6, scope: !1588, inlinedAt: !3048)
!3052 = !DILocation(line: 176, column: 12, scope: !1588, inlinedAt: !3048)
!3053 = !DILocation(line: 177, column: 8, scope: !1604, inlinedAt: !3048)
!3054 = !DILocation(line: 177, column: 23, scope: !1604, inlinedAt: !3048)
!3055 = !DILocation(line: 177, column: 19, scope: !1604, inlinedAt: !3048)
!3056 = !DILocation(line: 178, column: 5, scope: !1604, inlinedAt: !3048)
!3057 = !DILocation(line: 179, column: 6, scope: !1588, inlinedAt: !3048)
!3058 = !DILocation(line: 179, column: 17, scope: !1588, inlinedAt: !3048)
!3059 = !DILocation(line: 180, column: 6, scope: !1588, inlinedAt: !3048)
!3060 = !DILocation(line: 180, column: 18, scope: !1588, inlinedAt: !3048)
!3061 = !DILocation(line: 1023, column: 10, scope: !2963, inlinedAt: !3039)
!3062 = !DILocation(line: 1024, column: 1, scope: !2963, inlinedAt: !3039)
!3063 = !DILocation(line: 1030, column: 3, scope: !3023)
!3064 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !174, file: !174, line: 1034, type: !3065, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!6, !32, !32, !32, !169}
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3064, file: !174, line: 1034, type: !32)
!3069 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3064, file: !174, line: 1034, type: !32)
!3070 = !DILocalVariable(name: "arg", arg: 3, scope: !3064, file: !174, line: 1035, type: !32)
!3071 = !DILocalVariable(name: "argsize", arg: 4, scope: !3064, file: !174, line: 1035, type: !169)
!3072 = !DILocation(line: 1034, column: 34, scope: !3064)
!3073 = !DILocation(line: 1034, column: 58, scope: !3064)
!3074 = !DILocation(line: 1035, column: 34, scope: !3064)
!3075 = !DILocation(line: 1035, column: 46, scope: !3064)
!3076 = !DILocation(line: 1017, column: 28, scope: !2963, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 1037, column: 10, scope: !3064)
!3078 = !DILocation(line: 1017, column: 43, scope: !2963, inlinedAt: !3077)
!3079 = !DILocation(line: 1018, column: 36, scope: !2963, inlinedAt: !3077)
!3080 = !DILocation(line: 1019, column: 36, scope: !2963, inlinedAt: !3077)
!3081 = !DILocation(line: 1019, column: 48, scope: !2963, inlinedAt: !3077)
!3082 = !DILocation(line: 1021, column: 3, scope: !2963, inlinedAt: !3077)
!3083 = !DILocation(line: 1021, column: 30, scope: !2963, inlinedAt: !3077)
!3084 = !DILocation(line: 1021, column: 26, scope: !2963, inlinedAt: !3077)
!3085 = !DILocation(line: 171, column: 45, scope: !1588, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1022, column: 3, scope: !2963, inlinedAt: !3077)
!3087 = !DILocation(line: 172, column: 33, scope: !1588, inlinedAt: !3086)
!3088 = !DILocation(line: 172, column: 57, scope: !1588, inlinedAt: !3086)
!3089 = !DILocation(line: 176, column: 6, scope: !1588, inlinedAt: !3086)
!3090 = !DILocation(line: 176, column: 12, scope: !1588, inlinedAt: !3086)
!3091 = !DILocation(line: 177, column: 8, scope: !1604, inlinedAt: !3086)
!3092 = !DILocation(line: 177, column: 23, scope: !1604, inlinedAt: !3086)
!3093 = !DILocation(line: 177, column: 19, scope: !1604, inlinedAt: !3086)
!3094 = !DILocation(line: 178, column: 5, scope: !1604, inlinedAt: !3086)
!3095 = !DILocation(line: 179, column: 6, scope: !1588, inlinedAt: !3086)
!3096 = !DILocation(line: 179, column: 17, scope: !1588, inlinedAt: !3086)
!3097 = !DILocation(line: 180, column: 6, scope: !1588, inlinedAt: !3086)
!3098 = !DILocation(line: 180, column: 18, scope: !1588, inlinedAt: !3086)
!3099 = !DILocation(line: 1023, column: 10, scope: !2963, inlinedAt: !3077)
!3100 = !DILocation(line: 1024, column: 1, scope: !2963, inlinedAt: !3077)
!3101 = !DILocation(line: 1037, column: 3, scope: !3064)
!3102 = distinct !DISubprogram(name: "quote_n_mem", scope: !174, file: !174, line: 1052, type: !3103, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!32, !85, !32, !169}
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3102, file: !174, line: 1052, type: !85)
!3107 = !DILocalVariable(name: "arg", arg: 2, scope: !3102, file: !174, line: 1052, type: !32)
!3108 = !DILocalVariable(name: "argsize", arg: 3, scope: !3102, file: !174, line: 1052, type: !169)
!3109 = !DILocation(line: 1052, column: 18, scope: !3102)
!3110 = !DILocation(line: 1052, column: 33, scope: !3102)
!3111 = !DILocation(line: 1052, column: 45, scope: !3102)
!3112 = !DILocation(line: 1054, column: 10, scope: !3102)
!3113 = !DILocation(line: 1054, column: 3, scope: !3102)
!3114 = distinct !DISubprogram(name: "quote_mem", scope: !174, file: !174, line: 1058, type: !3115, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!32, !32, !169}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3114, file: !174, line: 1058, type: !32)
!3119 = !DILocalVariable(name: "argsize", arg: 2, scope: !3114, file: !174, line: 1058, type: !169)
!3120 = !DILocation(line: 1058, column: 24, scope: !3114)
!3121 = !DILocation(line: 1058, column: 36, scope: !3114)
!3122 = !DILocation(line: 1052, column: 18, scope: !3102, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1060, column: 10, scope: !3114)
!3124 = !DILocation(line: 1052, column: 33, scope: !3102, inlinedAt: !3123)
!3125 = !DILocation(line: 1052, column: 45, scope: !3102, inlinedAt: !3123)
!3126 = !DILocation(line: 1054, column: 10, scope: !3102, inlinedAt: !3123)
!3127 = !DILocation(line: 1060, column: 3, scope: !3114)
!3128 = distinct !DISubprogram(name: "quote_n", scope: !174, file: !174, line: 1064, type: !3129, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!32, !85, !32}
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "n", arg: 1, scope: !3128, file: !174, line: 1064, type: !85)
!3133 = !DILocalVariable(name: "arg", arg: 2, scope: !3128, file: !174, line: 1064, type: !32)
!3134 = !DILocation(line: 1064, column: 14, scope: !3128)
!3135 = !DILocation(line: 1064, column: 29, scope: !3128)
!3136 = !DILocation(line: 1052, column: 18, scope: !3102, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 1066, column: 10, scope: !3128)
!3138 = !DILocation(line: 1052, column: 33, scope: !3102, inlinedAt: !3137)
!3139 = !DILocation(line: 1052, column: 45, scope: !3102, inlinedAt: !3137)
!3140 = !DILocation(line: 1054, column: 10, scope: !3102, inlinedAt: !3137)
!3141 = !DILocation(line: 1066, column: 3, scope: !3128)
!3142 = distinct !DISubprogram(name: "quote", scope: !174, file: !174, line: 1070, type: !3143, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!32, !32}
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "arg", arg: 1, scope: !3142, file: !174, line: 1070, type: !32)
!3147 = !DILocation(line: 1070, column: 20, scope: !3142)
!3148 = !DILocation(line: 1064, column: 14, scope: !3128, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1072, column: 10, scope: !3142)
!3150 = !DILocation(line: 1064, column: 29, scope: !3128, inlinedAt: !3149)
!3151 = !DILocation(line: 1052, column: 18, scope: !3102, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 1066, column: 10, scope: !3128, inlinedAt: !3149)
!3153 = !DILocation(line: 1052, column: 33, scope: !3102, inlinedAt: !3152)
!3154 = !DILocation(line: 1052, column: 45, scope: !3102, inlinedAt: !3152)
!3155 = !DILocation(line: 1054, column: 10, scope: !3102, inlinedAt: !3152)
!3156 = !DILocation(line: 1072, column: 3, scope: !3142)
!3157 = distinct !DISubprogram(name: "parse_user_spec", scope: !590, file: !590, line: 259, type: !3158, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!32, !32, !593, !594, !595, !595}
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168}
!3161 = !DILocalVariable(name: "spec", arg: 1, scope: !3157, file: !590, line: 259, type: !32)
!3162 = !DILocalVariable(name: "uid", arg: 2, scope: !3157, file: !590, line: 259, type: !593)
!3163 = !DILocalVariable(name: "gid", arg: 3, scope: !3157, file: !590, line: 259, type: !594)
!3164 = !DILocalVariable(name: "username", arg: 4, scope: !3157, file: !590, line: 260, type: !595)
!3165 = !DILocalVariable(name: "groupname", arg: 5, scope: !3157, file: !590, line: 260, type: !595)
!3166 = !DILocalVariable(name: "colon", scope: !3157, file: !590, line: 262, type: !32)
!3167 = !DILocalVariable(name: "error_msg", scope: !3157, file: !590, line: 263, type: !32)
!3168 = !DILocalVariable(name: "dot", scope: !3169, file: !590, line: 274, type: !32)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !590, line: 267, column: 5)
!3170 = distinct !DILexicalBlock(scope: !3157, file: !590, line: 266, column: 7)
!3171 = !DILocation(line: 259, column: 30, scope: !3157)
!3172 = !DILocation(line: 259, column: 43, scope: !3157)
!3173 = !DILocation(line: 259, column: 55, scope: !3157)
!3174 = !DILocation(line: 260, column: 25, scope: !3157)
!3175 = !DILocation(line: 260, column: 42, scope: !3157)
!3176 = !DILocation(line: 262, column: 23, scope: !3157)
!3177 = !DILocation(line: 262, column: 29, scope: !3157)
!3178 = !DILocation(line: 262, column: 15, scope: !3157)
!3179 = !DILocation(line: 264, column: 5, scope: !3157)
!3180 = !DILocation(line: 263, column: 15, scope: !3157)
!3181 = !DILocation(line: 266, column: 7, scope: !3170)
!3182 = !DILocation(line: 266, column: 15, scope: !3170)
!3183 = !DILocation(line: 266, column: 11, scope: !3170)
!3184 = !DILocation(line: 266, column: 24, scope: !3170)
!3185 = !DILocation(line: 274, column: 25, scope: !3169)
!3186 = !DILocation(line: 274, column: 19, scope: !3169)
!3187 = !DILocation(line: 275, column: 11, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3169, file: !590, line: 275, column: 11)
!3189 = !DILocation(line: 276, column: 11, scope: !3188)
!3190 = !DILocation(line: 276, column: 16, scope: !3188)
!3191 = !DILocation(line: 275, column: 11, scope: !3169)
!3192 = !DILocation(line: 280, column: 3, scope: !3157)
!3193 = !DILocation(line: 102, column: 35, scope: !589)
!3194 = !DILocation(line: 102, column: 53, scope: !589)
!3195 = !DILocation(line: 103, column: 30, scope: !589)
!3196 = !DILocation(line: 103, column: 42, scope: !589)
!3197 = !DILocation(line: 104, column: 30, scope: !589)
!3198 = !DILocation(line: 104, column: 47, scope: !589)
!3199 = !DILocation(line: 115, column: 9, scope: !589)
!3200 = !DILocation(line: 116, column: 16, scope: !589)
!3201 = !DILocation(line: 116, column: 9, scope: !589)
!3202 = !DILocation(line: 117, column: 16, scope: !589)
!3203 = !DILocation(line: 117, column: 22, scope: !589)
!3204 = !DILocation(line: 117, column: 9, scope: !589)
!3205 = !DILocation(line: 110, column: 15, scope: !589)
!3206 = !DILocation(line: 120, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !589, file: !590, line: 120, column: 7)
!3208 = !DILocation(line: 120, column: 7, scope: !589)
!3209 = !DILocation(line: 121, column: 15, scope: !3207)
!3210 = !DILocation(line: 121, column: 5, scope: !3207)
!3211 = !DILocation(line: 122, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !589, file: !590, line: 122, column: 7)
!3213 = !DILocation(line: 122, column: 7, scope: !589)
!3214 = !DILocation(line: 123, column: 16, scope: !3212)
!3215 = !DILocation(line: 123, column: 5, scope: !3212)
!3216 = !DILocation(line: 113, column: 9, scope: !589)
!3217 = !DILocation(line: 130, column: 17, scope: !632)
!3218 = !DILocation(line: 130, column: 7, scope: !589)
!3219 = !DILocation(line: 132, column: 11, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !590, line: 132, column: 11)
!3221 = distinct !DILexicalBlock(scope: !632, file: !590, line: 131, column: 5)
!3222 = !DILocation(line: 132, column: 11, scope: !3221)
!3223 = !DILocation(line: 133, column: 13, scope: !3220)
!3224 = !DILocation(line: 133, column: 9, scope: !3220)
!3225 = !DILocation(line: 137, column: 31, scope: !631)
!3226 = !DILocation(line: 137, column: 14, scope: !631)
!3227 = !DILocation(line: 138, column: 16, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !631, file: !590, line: 138, column: 11)
!3229 = !DILocation(line: 138, column: 11, scope: !631)
!3230 = !DILocation(line: 140, column: 35, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !590, line: 139, column: 9)
!3232 = !DILocation(line: 140, column: 15, scope: !3231)
!3233 = !DILocation(line: 141, column: 11, scope: !3231)
!3234 = !DILocation(line: 141, column: 19, scope: !3231)
!3235 = !DILocation(line: 142, column: 9, scope: !3231)
!3236 = !DILocation(line: 145, column: 41, scope: !589)
!3237 = !DILocation(line: 145, column: 29, scope: !589)
!3238 = !DILocation(line: 145, column: 46, scope: !589)
!3239 = !DILocation(line: 145, column: 8, scope: !589)
!3240 = !DILocation(line: 114, column: 15, scope: !589)
!3241 = !DILocation(line: 158, column: 9, scope: !637)
!3242 = !DILocation(line: 158, column: 7, scope: !589)
!3243 = !DILocation(line: 161, column: 14, scope: !636)
!3244 = !DILocation(line: 161, column: 17, scope: !636)
!3245 = !DILocation(line: 161, column: 33, scope: !636)
!3246 = !DILocation(line: 111, column: 18, scope: !589)
!3247 = !DILocation(line: 162, column: 15, scope: !635)
!3248 = !DILocation(line: 162, column: 11, scope: !636)
!3249 = !DILocation(line: 164, column: 45, scope: !634)
!3250 = !DILocation(line: 164, column: 58, scope: !634)
!3251 = !DILocation(line: 164, column: 53, scope: !634)
!3252 = !DILocation(line: 165, column: 15, scope: !634)
!3253 = !DILocation(line: 173, column: 15, scope: !639)
!3254 = !DILocation(line: 173, column: 33, scope: !639)
!3255 = !DILocation(line: 174, column: 19, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !639, file: !590, line: 174, column: 19)
!3257 = !DILocation(line: 174, column: 52, scope: !3256)
!3258 = !DILocation(line: 175, column: 22, scope: !3256)
!3259 = !DILocation(line: 175, column: 26, scope: !3256)
!3260 = !DILocation(line: 175, column: 19, scope: !3256)
!3261 = !DILocation(line: 175, column: 39, scope: !3256)
!3262 = !DILocation(line: 175, column: 51, scope: !3256)
!3263 = !DILocation(line: 174, column: 19, scope: !639)
!3264 = !DILocation(line: 179, column: 13, scope: !640)
!3265 = !DILocation(line: 183, column: 23, scope: !644)
!3266 = !DILocation(line: 184, column: 17, scope: !643)
!3267 = !DILocation(line: 184, column: 38, scope: !643)
!3268 = !DILocation(line: 184, column: 25, scope: !643)
!3269 = !DILocation(line: 188, column: 15, scope: !642)
!3270 = !DILocation(line: 188, column: 20, scope: !642)
!3271 = !DILocation(line: 189, column: 27, scope: !642)
!3272 = !DILocation(line: 190, column: 21, scope: !642)
!3273 = !DILocation(line: 112, column: 17, scope: !589)
!3274 = !DILocation(line: 191, column: 32, scope: !642)
!3275 = !DILocation(line: 191, column: 43, scope: !642)
!3276 = !DILocation(line: 191, column: 64, scope: !642)
!3277 = !DILocation(line: 191, column: 53, scope: !642)
!3278 = !DILocation(line: 191, column: 23, scope: !642)
!3279 = !DILocation(line: 192, column: 15, scope: !642)
!3280 = !DILocation(line: 193, column: 13, scope: !643)
!3281 = !DILocation(line: 193, column: 13, scope: !642)
!3282 = !DILocation(line: 195, column: 7, scope: !636)
!3283 = !DILocation(line: 196, column: 5, scope: !636)
!3284 = !DILocation(line: 198, column: 9, scope: !649)
!3285 = !DILocation(line: 198, column: 30, scope: !649)
!3286 = !DILocation(line: 198, column: 17, scope: !649)
!3287 = !DILocation(line: 202, column: 14, scope: !648)
!3288 = !DILocation(line: 202, column: 17, scope: !648)
!3289 = !DILocation(line: 202, column: 33, scope: !648)
!3290 = !DILocation(line: 203, column: 15, scope: !647)
!3291 = !DILocation(line: 203, column: 11, scope: !648)
!3292 = !DILocation(line: 205, column: 11, scope: !646)
!3293 = !DILocation(line: 205, column: 29, scope: !646)
!3294 = !DILocation(line: 206, column: 15, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !646, file: !590, line: 206, column: 15)
!3296 = !DILocation(line: 206, column: 48, scope: !3295)
!3297 = !DILocation(line: 207, column: 18, scope: !3295)
!3298 = !DILocation(line: 207, column: 22, scope: !3295)
!3299 = !DILocation(line: 207, column: 15, scope: !3295)
!3300 = !DILocation(line: 207, column: 35, scope: !3295)
!3301 = !DILocation(line: 207, column: 47, scope: !3295)
!3302 = !DILocation(line: 206, column: 15, scope: !646)
!3303 = !DILocation(line: 211, column: 9, scope: !647)
!3304 = !DILocation(line: 211, column: 9, scope: !646)
!3305 = !DILocation(line: 213, column: 21, scope: !647)
!3306 = !{!1075, !852, i64 16}
!3307 = !DILocation(line: 214, column: 7, scope: !648)
!3308 = !DILocation(line: 215, column: 15, scope: !648)
!3309 = !DILocation(line: 216, column: 5, scope: !648)
!3310 = !DILocation(line: 218, column: 17, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !589, file: !590, line: 218, column: 7)
!3312 = !DILocation(line: 218, column: 7, scope: !589)
!3313 = !DILocation(line: 220, column: 12, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3311, file: !590, line: 219, column: 5)
!3315 = !DILocation(line: 221, column: 11, scope: !3314)
!3316 = !DILocation(line: 222, column: 14, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3314, file: !590, line: 221, column: 11)
!3318 = !DILocation(line: 222, column: 9, scope: !3317)
!3319 = !DILocation(line: 223, column: 11, scope: !3314)
!3320 = !DILocation(line: 225, column: 21, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !590, line: 224, column: 9)
!3322 = distinct !DILexicalBlock(scope: !3314, file: !590, line: 223, column: 11)
!3323 = !DILocation(line: 227, column: 9, scope: !3321)
!3324 = !DILocation(line: 228, column: 11, scope: !3314)
!3325 = !DILocation(line: 230, column: 22, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !590, line: 229, column: 9)
!3327 = distinct !DILexicalBlock(scope: !3314, file: !590, line: 228, column: 11)
!3328 = !DILocation(line: 232, column: 9, scope: !3326)
!3329 = !DILocation(line: 235, column: 3, scope: !589)
!3330 = !DILocation(line: 236, column: 3, scope: !589)
!3331 = !DILocation(line: 237, column: 10, scope: !589)
!3332 = !DILocation(line: 237, column: 22, scope: !589)
!3333 = !DILocation(line: 237, column: 3, scope: !589)
!3334 = distinct !DISubprogram(name: "version_etc_arn", scope: !658, file: !658, line: 62, type: !3335, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !3392)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3337, !32, !32, !32, !3391, !169}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3339, line: 7, baseType: !3340)
!3339 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3341, line: 241, size: 1728, elements: !3342)
!3341 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3363, !3364, !3365, !3366, !3369, !3370, !3372, !3376, !3379, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3340, file: !3341, line: 242, baseType: !85, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3340, file: !3341, line: 247, baseType: !6, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3340, file: !3341, line: 248, baseType: !6, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3340, file: !3341, line: 249, baseType: !6, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3340, file: !3341, line: 250, baseType: !6, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3340, file: !3341, line: 251, baseType: !6, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3340, file: !3341, line: 252, baseType: !6, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3340, file: !3341, line: 253, baseType: !6, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3340, file: !3341, line: 254, baseType: !6, size: 64, offset: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3340, file: !3341, line: 256, baseType: !6, size: 64, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3340, file: !3341, line: 257, baseType: !6, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3340, file: !3341, line: 258, baseType: !6, size: 64, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3340, file: !3341, line: 260, baseType: !3356, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3341, line: 156, size: 192, elements: !3358)
!3358 = !{!3359, !3360, !3362}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3357, file: !3341, line: 157, baseType: !3356, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3357, file: !3341, line: 158, baseType: !3361, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3357, file: !3341, line: 162, baseType: !85, size: 32, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3340, file: !3341, line: 262, baseType: !3361, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3340, file: !3341, line: 264, baseType: !85, size: 32, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3340, file: !3341, line: 268, baseType: !85, size: 32, offset: 928)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3340, file: !3341, line: 270, baseType: !3367, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !3368)
!3368 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3340, file: !3341, line: 274, baseType: !168, size: 16, offset: 1024)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3340, file: !3341, line: 275, baseType: !3371, size: 8, offset: 1040)
!3371 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3340, file: !3341, line: 276, baseType: !3373, size: 8, offset: 1048)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !3374)
!3374 = !{!3375}
!3375 = !DISubrange(count: 1)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3340, file: !3341, line: 280, baseType: !3377, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3341, line: 150, baseType: null)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3340, file: !3341, line: 289, baseType: !3380, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !3368)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3340, file: !3341, line: 297, baseType: !8, size: 64, offset: 1216)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3340, file: !3341, line: 298, baseType: !8, size: 64, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3340, file: !3341, line: 299, baseType: !8, size: 64, offset: 1344)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3340, file: !3341, line: 300, baseType: !8, size: 64, offset: 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3340, file: !3341, line: 302, baseType: !169, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3340, file: !3341, line: 303, baseType: !85, size: 32, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3340, file: !3341, line: 305, baseType: !3388, size: 160, offset: 1568)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3389)
!3389 = !{!3390}
!3390 = !DISubrange(count: 20)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398}
!3393 = !DILocalVariable(name: "stream", arg: 1, scope: !3334, file: !658, line: 62, type: !3337)
!3394 = !DILocalVariable(name: "command_name", arg: 2, scope: !3334, file: !658, line: 63, type: !32)
!3395 = !DILocalVariable(name: "package", arg: 3, scope: !3334, file: !658, line: 63, type: !32)
!3396 = !DILocalVariable(name: "version", arg: 4, scope: !3334, file: !658, line: 64, type: !32)
!3397 = !DILocalVariable(name: "authors", arg: 5, scope: !3334, file: !658, line: 65, type: !3391)
!3398 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3334, file: !658, line: 65, type: !169)
!3399 = !DILocation(line: 62, column: 24, scope: !3334)
!3400 = !DILocation(line: 63, column: 30, scope: !3334)
!3401 = !DILocation(line: 63, column: 56, scope: !3334)
!3402 = !DILocation(line: 64, column: 30, scope: !3334)
!3403 = !DILocation(line: 65, column: 39, scope: !3334)
!3404 = !DILocation(line: 65, column: 55, scope: !3334)
!3405 = !DILocation(line: 67, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3334, file: !658, line: 67, column: 7)
!3407 = !DILocation(line: 67, column: 7, scope: !3334)
!3408 = !DILocation(line: 68, column: 5, scope: !3406)
!3409 = !DILocation(line: 70, column: 5, scope: !3406)
!3410 = !DILocation(line: 84, column: 3, scope: !3334)
!3411 = !DILocation(line: 86, column: 3, scope: !3334)
!3412 = !DILocation(line: 95, column: 3, scope: !3334)
!3413 = !DILocation(line: 99, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3334, file: !658, line: 96, column: 5)
!3415 = !DILocation(line: 102, column: 7, scope: !3414)
!3416 = !DILocation(line: 103, column: 7, scope: !3414)
!3417 = !DILocation(line: 106, column: 7, scope: !3414)
!3418 = !DILocation(line: 107, column: 7, scope: !3414)
!3419 = !DILocation(line: 110, column: 7, scope: !3414)
!3420 = !DILocation(line: 112, column: 7, scope: !3414)
!3421 = !DILocation(line: 117, column: 7, scope: !3414)
!3422 = !DILocation(line: 119, column: 7, scope: !3414)
!3423 = !DILocation(line: 124, column: 7, scope: !3414)
!3424 = !DILocation(line: 126, column: 7, scope: !3414)
!3425 = !DILocation(line: 131, column: 7, scope: !3414)
!3426 = !DILocation(line: 134, column: 7, scope: !3414)
!3427 = !DILocation(line: 139, column: 7, scope: !3414)
!3428 = !DILocation(line: 142, column: 7, scope: !3414)
!3429 = !DILocation(line: 147, column: 7, scope: !3414)
!3430 = !DILocation(line: 151, column: 7, scope: !3414)
!3431 = !DILocation(line: 156, column: 7, scope: !3414)
!3432 = !DILocation(line: 160, column: 7, scope: !3414)
!3433 = !DILocation(line: 167, column: 7, scope: !3414)
!3434 = !DILocation(line: 171, column: 7, scope: !3414)
!3435 = !DILocation(line: 173, column: 1, scope: !3334)
!3436 = distinct !DISubprogram(name: "version_etc_ar", scope: !658, file: !658, line: 180, type: !3437, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !3337, !32, !32, !32, !3391}
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445}
!3440 = !DILocalVariable(name: "stream", arg: 1, scope: !3436, file: !658, line: 180, type: !3337)
!3441 = !DILocalVariable(name: "command_name", arg: 2, scope: !3436, file: !658, line: 181, type: !32)
!3442 = !DILocalVariable(name: "package", arg: 3, scope: !3436, file: !658, line: 181, type: !32)
!3443 = !DILocalVariable(name: "version", arg: 4, scope: !3436, file: !658, line: 182, type: !32)
!3444 = !DILocalVariable(name: "authors", arg: 5, scope: !3436, file: !658, line: 182, type: !3391)
!3445 = !DILocalVariable(name: "n_authors", scope: !3436, file: !658, line: 184, type: !169)
!3446 = !DILocation(line: 180, column: 23, scope: !3436)
!3447 = !DILocation(line: 181, column: 29, scope: !3436)
!3448 = !DILocation(line: 181, column: 55, scope: !3436)
!3449 = !DILocation(line: 182, column: 29, scope: !3436)
!3450 = !DILocation(line: 182, column: 59, scope: !3436)
!3451 = !DILocation(line: 184, column: 10, scope: !3436)
!3452 = !DILocation(line: 186, column: 8, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3436, file: !658, line: 186, column: 3)
!3454 = !DILocation(line: 186, column: 23, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3453, file: !658, line: 186, column: 3)
!3456 = !DILocation(line: 186, column: 3, scope: !3453)
!3457 = !DILocation(line: 186, column: 52, scope: !3455)
!3458 = distinct !{!3458, !3456, !3459}
!3459 = !DILocation(line: 187, column: 5, scope: !3453)
!3460 = !DILocation(line: 188, column: 3, scope: !3436)
!3461 = !DILocation(line: 189, column: 1, scope: !3436)
!3462 = distinct !DISubprogram(name: "version_etc_va", scope: !658, file: !658, line: 196, type: !3463, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !3472)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{null, !3337, !32, !32, !32, !3465}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !655, line: 189, size: 192, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3466, file: !655, line: 189, baseType: !17, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3466, file: !655, line: 189, baseType: !17, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3466, file: !655, line: 189, baseType: !8, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3466, file: !655, line: 189, baseType: !8, size: 64, offset: 128)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479}
!3473 = !DILocalVariable(name: "stream", arg: 1, scope: !3462, file: !658, line: 196, type: !3337)
!3474 = !DILocalVariable(name: "command_name", arg: 2, scope: !3462, file: !658, line: 197, type: !32)
!3475 = !DILocalVariable(name: "package", arg: 3, scope: !3462, file: !658, line: 197, type: !32)
!3476 = !DILocalVariable(name: "version", arg: 4, scope: !3462, file: !658, line: 198, type: !32)
!3477 = !DILocalVariable(name: "authors", arg: 5, scope: !3462, file: !658, line: 198, type: !3465)
!3478 = !DILocalVariable(name: "n_authors", scope: !3462, file: !658, line: 200, type: !169)
!3479 = !DILocalVariable(name: "authtab", scope: !3462, file: !658, line: 201, type: !3480)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 640, elements: !89)
!3481 = !DILocation(line: 196, column: 23, scope: !3462)
!3482 = !DILocation(line: 197, column: 29, scope: !3462)
!3483 = !DILocation(line: 197, column: 55, scope: !3462)
!3484 = !DILocation(line: 198, column: 29, scope: !3462)
!3485 = !DILocation(line: 198, column: 46, scope: !3462)
!3486 = !DILocation(line: 201, column: 3, scope: !3462)
!3487 = !DILocation(line: 201, column: 15, scope: !3462)
!3488 = !DILocation(line: 200, column: 10, scope: !3462)
!3489 = !DILocation(line: 205, column: 35, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !658, line: 203, column: 3)
!3491 = distinct !DILexicalBlock(scope: !3462, file: !658, line: 203, column: 3)
!3492 = !DILocation(line: 205, column: 14, scope: !3490)
!3493 = !DILocation(line: 205, column: 33, scope: !3490)
!3494 = !DILocation(line: 205, column: 67, scope: !3490)
!3495 = !DILocation(line: 203, column: 3, scope: !3491)
!3496 = !DILocation(line: 208, column: 3, scope: !3462)
!3497 = !DILocation(line: 210, column: 1, scope: !3462)
!3498 = distinct !DISubprogram(name: "version_etc", scope: !658, file: !658, line: 227, type: !3499, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{null, !3337, !32, !32, !32, null}
!3501 = !{!3502, !3503, !3504, !3505, !3506}
!3502 = !DILocalVariable(name: "stream", arg: 1, scope: !3498, file: !658, line: 227, type: !3337)
!3503 = !DILocalVariable(name: "command_name", arg: 2, scope: !3498, file: !658, line: 228, type: !32)
!3504 = !DILocalVariable(name: "package", arg: 3, scope: !3498, file: !658, line: 228, type: !32)
!3505 = !DILocalVariable(name: "version", arg: 4, scope: !3498, file: !658, line: 229, type: !32)
!3506 = !DILocalVariable(name: "authors", scope: !3498, file: !658, line: 231, type: !3507)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3508, line: 46, baseType: !3509)
!3508 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3510, line: 48, baseType: !3511)
!3510 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !655, line: 231, baseType: !3512)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3466, size: 192, elements: !3374)
!3513 = !DILocation(line: 227, column: 20, scope: !3498)
!3514 = !DILocation(line: 228, column: 26, scope: !3498)
!3515 = !DILocation(line: 228, column: 52, scope: !3498)
!3516 = !DILocation(line: 229, column: 26, scope: !3498)
!3517 = !DILocation(line: 231, column: 3, scope: !3498)
!3518 = !DILocation(line: 231, column: 11, scope: !3498)
!3519 = !DILocation(line: 233, column: 3, scope: !3498)
!3520 = !DILocation(line: 234, column: 3, scope: !3498)
!3521 = !DILocation(line: 235, column: 3, scope: !3498)
!3522 = !DILocation(line: 236, column: 1, scope: !3498)
!3523 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !658, file: !658, line: 239, type: !1398, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4)
!3524 = !DILocation(line: 245, column: 3, scope: !3523)
!3525 = !DILocation(line: 251, column: 3, scope: !3523)
!3526 = !DILocation(line: 256, column: 3, scope: !3523)
!3527 = !DILocation(line: 258, column: 1, scope: !3523)
!3528 = distinct !DISubprogram(name: "xnmalloc", scope: !666, file: !666, line: 105, type: !3529, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!8, !169, !169}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !666, line: 105, type: !169)
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3528, file: !666, line: 105, type: !169)
!3534 = !DILocation(line: 105, column: 18, scope: !3528)
!3535 = !DILocation(line: 105, column: 28, scope: !3528)
!3536 = !DILocation(line: 107, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3528, file: !666, line: 107, column: 7)
!3538 = !DILocation(line: 107, column: 7, scope: !3528)
!3539 = !DILocation(line: 108, column: 5, scope: !3537)
!3540 = !DILocation(line: 109, column: 21, scope: !3528)
!3541 = !DILocalVariable(name: "n", arg: 1, scope: !3542, file: !3543, line: 39, type: !169)
!3542 = distinct !DISubprogram(name: "xmalloc", scope: !3543, file: !3543, line: 39, type: !3544, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3546)
!3543 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!8, !169}
!3546 = !{!3541, !3547}
!3547 = !DILocalVariable(name: "p", scope: !3542, file: !3543, line: 41, type: !8)
!3548 = !DILocation(line: 39, column: 17, scope: !3542, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 109, column: 10, scope: !3528)
!3550 = !DILocation(line: 41, column: 13, scope: !3542, inlinedAt: !3549)
!3551 = !DILocation(line: 41, column: 9, scope: !3542, inlinedAt: !3549)
!3552 = !DILocation(line: 42, column: 8, scope: !3553, inlinedAt: !3549)
!3553 = distinct !DILexicalBlock(scope: !3542, file: !3543, line: 42, column: 7)
!3554 = !DILocation(line: 42, column: 15, scope: !3553, inlinedAt: !3549)
!3555 = !DILocation(line: 42, column: 10, scope: !3553, inlinedAt: !3549)
!3556 = !DILocation(line: 43, column: 5, scope: !3553, inlinedAt: !3549)
!3557 = !DILocation(line: 109, column: 3, scope: !3528)
!3558 = !DILocation(line: 39, column: 17, scope: !3542)
!3559 = !DILocation(line: 41, column: 13, scope: !3542)
!3560 = !DILocation(line: 41, column: 9, scope: !3542)
!3561 = !DILocation(line: 42, column: 8, scope: !3553)
!3562 = !DILocation(line: 42, column: 15, scope: !3553)
!3563 = !DILocation(line: 42, column: 10, scope: !3553)
!3564 = !DILocation(line: 43, column: 5, scope: !3553)
!3565 = !DILocation(line: 44, column: 3, scope: !3542)
!3566 = distinct !DISubprogram(name: "xnrealloc", scope: !666, file: !666, line: 118, type: !3567, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!8, !8, !169, !169}
!3569 = !{!3570, !3571, !3572}
!3570 = !DILocalVariable(name: "p", arg: 1, scope: !3566, file: !666, line: 118, type: !8)
!3571 = !DILocalVariable(name: "n", arg: 2, scope: !3566, file: !666, line: 118, type: !169)
!3572 = !DILocalVariable(name: "s", arg: 3, scope: !3566, file: !666, line: 118, type: !169)
!3573 = !DILocation(line: 118, column: 18, scope: !3566)
!3574 = !DILocation(line: 118, column: 28, scope: !3566)
!3575 = !DILocation(line: 118, column: 38, scope: !3566)
!3576 = !DILocation(line: 120, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3566, file: !666, line: 120, column: 7)
!3578 = !DILocation(line: 120, column: 7, scope: !3566)
!3579 = !DILocation(line: 121, column: 5, scope: !3577)
!3580 = !DILocation(line: 122, column: 25, scope: !3566)
!3581 = !DILocalVariable(name: "p", arg: 1, scope: !3582, file: !3543, line: 51, type: !8)
!3582 = distinct !DISubprogram(name: "xrealloc", scope: !3543, file: !3543, line: 51, type: !3583, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!8, !8, !169}
!3585 = !{!3581, !3586}
!3586 = !DILocalVariable(name: "n", arg: 2, scope: !3582, file: !3543, line: 51, type: !169)
!3587 = !DILocation(line: 51, column: 17, scope: !3582, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 122, column: 10, scope: !3566)
!3589 = !DILocation(line: 51, column: 27, scope: !3582, inlinedAt: !3588)
!3590 = !DILocation(line: 53, column: 8, scope: !3591, inlinedAt: !3588)
!3591 = distinct !DILexicalBlock(scope: !3582, file: !3543, line: 53, column: 7)
!3592 = !DILocation(line: 53, column: 13, scope: !3591, inlinedAt: !3588)
!3593 = !DILocation(line: 53, column: 10, scope: !3591, inlinedAt: !3588)
!3594 = !DILocation(line: 57, column: 7, scope: !3595, inlinedAt: !3588)
!3595 = distinct !DILexicalBlock(scope: !3591, file: !3543, line: 54, column: 5)
!3596 = !DILocation(line: 58, column: 7, scope: !3595, inlinedAt: !3588)
!3597 = !DILocation(line: 61, column: 7, scope: !3582, inlinedAt: !3588)
!3598 = !DILocation(line: 62, column: 8, scope: !3599, inlinedAt: !3588)
!3599 = distinct !DILexicalBlock(scope: !3582, file: !3543, line: 62, column: 7)
!3600 = !DILocation(line: 62, column: 13, scope: !3599, inlinedAt: !3588)
!3601 = !DILocation(line: 62, column: 10, scope: !3599, inlinedAt: !3588)
!3602 = !DILocation(line: 63, column: 5, scope: !3599, inlinedAt: !3588)
!3603 = !DILocation(line: 122, column: 3, scope: !3566)
!3604 = !DILocation(line: 51, column: 17, scope: !3582)
!3605 = !DILocation(line: 51, column: 27, scope: !3582)
!3606 = !DILocation(line: 53, column: 8, scope: !3591)
!3607 = !DILocation(line: 53, column: 13, scope: !3591)
!3608 = !DILocation(line: 53, column: 10, scope: !3591)
!3609 = !DILocation(line: 57, column: 7, scope: !3595)
!3610 = !DILocation(line: 58, column: 7, scope: !3595)
!3611 = !DILocation(line: 61, column: 7, scope: !3582)
!3612 = !DILocation(line: 62, column: 8, scope: !3599)
!3613 = !DILocation(line: 62, column: 13, scope: !3599)
!3614 = !DILocation(line: 62, column: 10, scope: !3599)
!3615 = !DILocation(line: 63, column: 5, scope: !3599)
!3616 = !DILocation(line: 65, column: 1, scope: !3582)
!3617 = !DILocation(line: 180, column: 19, scope: !667)
!3618 = !DILocation(line: 180, column: 30, scope: !667)
!3619 = !DILocation(line: 180, column: 41, scope: !667)
!3620 = !DILocation(line: 182, column: 14, scope: !667)
!3621 = !DILocation(line: 182, column: 10, scope: !667)
!3622 = !DILocation(line: 184, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !667, file: !666, line: 184, column: 7)
!3624 = !DILocation(line: 184, column: 7, scope: !667)
!3625 = !DILocation(line: 186, column: 13, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !666, line: 186, column: 11)
!3627 = distinct !DILexicalBlock(scope: !3623, file: !666, line: 185, column: 5)
!3628 = !DILocation(line: 186, column: 11, scope: !3627)
!3629 = !DILocation(line: 194, column: 30, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3626, file: !666, line: 187, column: 9)
!3631 = !DILocation(line: 195, column: 16, scope: !3630)
!3632 = !DILocation(line: 195, column: 13, scope: !3630)
!3633 = !DILocation(line: 196, column: 9, scope: !3630)
!3634 = !DILocation(line: 204, column: 69, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !666, line: 204, column: 11)
!3636 = distinct !DILexicalBlock(scope: !3623, file: !666, line: 199, column: 5)
!3637 = !DILocation(line: 205, column: 11, scope: !3635)
!3638 = !DILocation(line: 204, column: 11, scope: !3636)
!3639 = !DILocation(line: 206, column: 9, scope: !3635)
!3640 = !DILocation(line: 210, column: 7, scope: !667)
!3641 = !DILocation(line: 211, column: 25, scope: !667)
!3642 = !DILocation(line: 51, column: 17, scope: !3582, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 211, column: 10, scope: !667)
!3644 = !DILocation(line: 51, column: 27, scope: !3582, inlinedAt: !3643)
!3645 = !DILocation(line: 53, column: 10, scope: !3591, inlinedAt: !3643)
!3646 = !DILocation(line: 207, column: 14, scope: !3636)
!3647 = !DILocation(line: 207, column: 18, scope: !3636)
!3648 = !DILocation(line: 207, column: 9, scope: !3636)
!3649 = !DILocation(line: 53, column: 8, scope: !3591, inlinedAt: !3643)
!3650 = !DILocation(line: 57, column: 7, scope: !3595, inlinedAt: !3643)
!3651 = !DILocation(line: 58, column: 7, scope: !3595, inlinedAt: !3643)
!3652 = !DILocation(line: 61, column: 7, scope: !3582, inlinedAt: !3643)
!3653 = !DILocation(line: 62, column: 8, scope: !3599, inlinedAt: !3643)
!3654 = !DILocation(line: 62, column: 13, scope: !3599, inlinedAt: !3643)
!3655 = !DILocation(line: 62, column: 10, scope: !3599, inlinedAt: !3643)
!3656 = !DILocation(line: 63, column: 5, scope: !3599, inlinedAt: !3643)
!3657 = !DILocation(line: 211, column: 3, scope: !667)
!3658 = distinct !DISubprogram(name: "xcharalloc", scope: !666, file: !666, line: 220, type: !2435, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3659)
!3659 = !{!3660}
!3660 = !DILocalVariable(name: "n", arg: 1, scope: !3658, file: !666, line: 220, type: !169)
!3661 = !DILocation(line: 220, column: 20, scope: !3658)
!3662 = !DILocation(line: 39, column: 17, scope: !3542, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 222, column: 10, scope: !3658)
!3664 = !DILocation(line: 41, column: 13, scope: !3542, inlinedAt: !3663)
!3665 = !DILocation(line: 41, column: 9, scope: !3542, inlinedAt: !3663)
!3666 = !DILocation(line: 42, column: 8, scope: !3553, inlinedAt: !3663)
!3667 = !DILocation(line: 42, column: 15, scope: !3553, inlinedAt: !3663)
!3668 = !DILocation(line: 42, column: 10, scope: !3553, inlinedAt: !3663)
!3669 = !DILocation(line: 43, column: 5, scope: !3553, inlinedAt: !3663)
!3670 = !DILocation(line: 222, column: 3, scope: !3658)
!3671 = distinct !DISubprogram(name: "x2realloc", scope: !3543, file: !3543, line: 74, type: !3672, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3674)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!8, !8, !670}
!3674 = !{!3675, !3676}
!3675 = !DILocalVariable(name: "p", arg: 1, scope: !3671, file: !3543, line: 74, type: !8)
!3676 = !DILocalVariable(name: "pn", arg: 2, scope: !3671, file: !3543, line: 74, type: !670)
!3677 = !DILocation(line: 74, column: 18, scope: !3671)
!3678 = !DILocation(line: 74, column: 29, scope: !3671)
!3679 = !DILocation(line: 180, column: 19, scope: !667, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 76, column: 10, scope: !3671)
!3681 = !DILocation(line: 180, column: 30, scope: !667, inlinedAt: !3680)
!3682 = !DILocation(line: 180, column: 41, scope: !667, inlinedAt: !3680)
!3683 = !DILocation(line: 182, column: 14, scope: !667, inlinedAt: !3680)
!3684 = !DILocation(line: 182, column: 10, scope: !667, inlinedAt: !3680)
!3685 = !DILocation(line: 184, column: 9, scope: !3623, inlinedAt: !3680)
!3686 = !DILocation(line: 184, column: 7, scope: !667, inlinedAt: !3680)
!3687 = !DILocation(line: 186, column: 13, scope: !3626, inlinedAt: !3680)
!3688 = !DILocation(line: 186, column: 11, scope: !3627, inlinedAt: !3680)
!3689 = !DILocation(line: 210, column: 7, scope: !667, inlinedAt: !3680)
!3690 = !DILocation(line: 51, column: 17, scope: !3582, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 211, column: 10, scope: !667, inlinedAt: !3680)
!3692 = !DILocation(line: 51, column: 27, scope: !3582, inlinedAt: !3691)
!3693 = !DILocation(line: 53, column: 10, scope: !3591, inlinedAt: !3691)
!3694 = !DILocation(line: 205, column: 11, scope: !3635, inlinedAt: !3680)
!3695 = !DILocation(line: 204, column: 11, scope: !3636, inlinedAt: !3680)
!3696 = !DILocation(line: 206, column: 9, scope: !3635, inlinedAt: !3680)
!3697 = !DILocation(line: 207, column: 14, scope: !3636, inlinedAt: !3680)
!3698 = !DILocation(line: 207, column: 18, scope: !3636, inlinedAt: !3680)
!3699 = !DILocation(line: 207, column: 9, scope: !3636, inlinedAt: !3680)
!3700 = !DILocation(line: 53, column: 8, scope: !3591, inlinedAt: !3691)
!3701 = !DILocation(line: 57, column: 7, scope: !3595, inlinedAt: !3691)
!3702 = !DILocation(line: 58, column: 7, scope: !3595, inlinedAt: !3691)
!3703 = !DILocation(line: 61, column: 7, scope: !3582, inlinedAt: !3691)
!3704 = !DILocation(line: 62, column: 8, scope: !3599, inlinedAt: !3691)
!3705 = !DILocation(line: 62, column: 13, scope: !3599, inlinedAt: !3691)
!3706 = !DILocation(line: 62, column: 10, scope: !3599, inlinedAt: !3691)
!3707 = !DILocation(line: 63, column: 5, scope: !3599, inlinedAt: !3691)
!3708 = !DILocation(line: 76, column: 3, scope: !3671)
!3709 = distinct !DISubprogram(name: "xzalloc", scope: !3543, file: !3543, line: 84, type: !3544, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3710)
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "s", arg: 1, scope: !3709, file: !3543, line: 84, type: !169)
!3712 = !DILocation(line: 84, column: 17, scope: !3709)
!3713 = !DILocation(line: 39, column: 17, scope: !3542, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 86, column: 18, scope: !3709)
!3715 = !DILocation(line: 41, column: 13, scope: !3542, inlinedAt: !3714)
!3716 = !DILocation(line: 41, column: 9, scope: !3542, inlinedAt: !3714)
!3717 = !DILocation(line: 42, column: 8, scope: !3553, inlinedAt: !3714)
!3718 = !DILocation(line: 42, column: 15, scope: !3553, inlinedAt: !3714)
!3719 = !DILocation(line: 42, column: 10, scope: !3553, inlinedAt: !3714)
!3720 = !DILocation(line: 43, column: 5, scope: !3553, inlinedAt: !3714)
!3721 = !DILocation(line: 86, column: 10, scope: !3709)
!3722 = !DILocation(line: 86, column: 3, scope: !3709)
!3723 = distinct !DISubprogram(name: "xcalloc", scope: !3543, file: !3543, line: 93, type: !3529, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DILocalVariable(name: "n", arg: 1, scope: !3723, file: !3543, line: 93, type: !169)
!3726 = !DILocalVariable(name: "s", arg: 2, scope: !3723, file: !3543, line: 93, type: !169)
!3727 = !DILocalVariable(name: "p", scope: !3723, file: !3543, line: 95, type: !8)
!3728 = !DILocation(line: 93, column: 17, scope: !3723)
!3729 = !DILocation(line: 93, column: 27, scope: !3723)
!3730 = !DILocation(line: 100, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !3543, line: 100, column: 7)
!3732 = !DILocation(line: 101, column: 7, scope: !3731)
!3733 = !DILocation(line: 101, column: 18, scope: !3731)
!3734 = !DILocation(line: 95, column: 9, scope: !3723)
!3735 = !DILocation(line: 101, column: 16, scope: !3731)
!3736 = !DILocation(line: 100, column: 7, scope: !3723)
!3737 = !DILocation(line: 102, column: 5, scope: !3731)
!3738 = !DILocation(line: 103, column: 3, scope: !3723)
!3739 = distinct !DISubprogram(name: "xmemdup", scope: !3543, file: !3543, line: 111, type: !3740, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3744)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!8, !3742, !169}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3744 = !{!3745, !3746}
!3745 = !DILocalVariable(name: "p", arg: 1, scope: !3739, file: !3543, line: 111, type: !3742)
!3746 = !DILocalVariable(name: "s", arg: 2, scope: !3739, file: !3543, line: 111, type: !169)
!3747 = !DILocation(line: 111, column: 22, scope: !3739)
!3748 = !DILocation(line: 111, column: 32, scope: !3739)
!3749 = !DILocation(line: 39, column: 17, scope: !3542, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 113, column: 18, scope: !3739)
!3751 = !DILocation(line: 41, column: 13, scope: !3542, inlinedAt: !3750)
!3752 = !DILocation(line: 41, column: 9, scope: !3542, inlinedAt: !3750)
!3753 = !DILocation(line: 42, column: 8, scope: !3553, inlinedAt: !3750)
!3754 = !DILocation(line: 42, column: 15, scope: !3553, inlinedAt: !3750)
!3755 = !DILocation(line: 42, column: 10, scope: !3553, inlinedAt: !3750)
!3756 = !DILocation(line: 43, column: 5, scope: !3553, inlinedAt: !3750)
!3757 = !DILocation(line: 113, column: 10, scope: !3739)
!3758 = !DILocation(line: 113, column: 3, scope: !3739)
!3759 = distinct !DISubprogram(name: "xstrdup", scope: !3543, file: !3543, line: 119, type: !2636, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3760)
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "string", arg: 1, scope: !3759, file: !3543, line: 119, type: !32)
!3762 = !DILocation(line: 119, column: 22, scope: !3759)
!3763 = !DILocation(line: 121, column: 27, scope: !3759)
!3764 = !DILocation(line: 121, column: 43, scope: !3759)
!3765 = !DILocation(line: 111, column: 22, scope: !3739, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 121, column: 10, scope: !3759)
!3767 = !DILocation(line: 111, column: 32, scope: !3739, inlinedAt: !3766)
!3768 = !DILocation(line: 39, column: 17, scope: !3542, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 113, column: 18, scope: !3739, inlinedAt: !3766)
!3770 = !DILocation(line: 41, column: 13, scope: !3542, inlinedAt: !3769)
!3771 = !DILocation(line: 41, column: 9, scope: !3542, inlinedAt: !3769)
!3772 = !DILocation(line: 42, column: 8, scope: !3553, inlinedAt: !3769)
!3773 = !DILocation(line: 42, column: 15, scope: !3553, inlinedAt: !3769)
!3774 = !DILocation(line: 42, column: 10, scope: !3553, inlinedAt: !3769)
!3775 = !DILocation(line: 43, column: 5, scope: !3553, inlinedAt: !3769)
!3776 = !DILocation(line: 113, column: 10, scope: !3739, inlinedAt: !3766)
!3777 = !DILocation(line: 121, column: 3, scope: !3759)
!3778 = distinct !DISubprogram(name: "xalloc_die", scope: !3779, file: !3779, line: 32, type: !1398, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !679, variables: !4)
!3779 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3780 = !DILocation(line: 34, column: 10, scope: !3778)
!3781 = !DILocation(line: 34, column: 33, scope: !3778)
!3782 = !DILocation(line: 34, column: 3, scope: !3778)
!3783 = !DILocation(line: 40, column: 3, scope: !3778)
!3784 = distinct !DISubprogram(name: "xgetgroups", scope: !3785, file: !3785, line: 31, type: !702, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !3786)
!3785 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DILocalVariable(name: "username", arg: 1, scope: !3784, file: !3785, line: 31, type: !32)
!3788 = !DILocalVariable(name: "gid", arg: 2, scope: !3784, file: !3785, line: 31, type: !22)
!3789 = !DILocalVariable(name: "groups", arg: 3, scope: !3784, file: !3785, line: 31, type: !704)
!3790 = !DILocalVariable(name: "result", scope: !3784, file: !3785, line: 33, type: !85)
!3791 = !DILocation(line: 31, column: 25, scope: !3784)
!3792 = !DILocation(line: 31, column: 41, scope: !3784)
!3793 = !DILocation(line: 31, column: 54, scope: !3784)
!3794 = !DILocation(line: 33, column: 16, scope: !3784)
!3795 = !DILocation(line: 33, column: 7, scope: !3784)
!3796 = !DILocation(line: 34, column: 14, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3784, file: !3785, line: 34, column: 7)
!3798 = !DILocation(line: 34, column: 20, scope: !3797)
!3799 = !DILocation(line: 34, column: 23, scope: !3797)
!3800 = !DILocation(line: 34, column: 29, scope: !3797)
!3801 = !DILocation(line: 34, column: 7, scope: !3784)
!3802 = !DILocation(line: 35, column: 5, scope: !3797)
!3803 = !DILocation(line: 36, column: 3, scope: !3784)
!3804 = distinct !DISubprogram(name: "xstrtoul", scope: !3805, file: !3805, line: 88, type: !3806, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !683, variables: !3810)
!3805 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!3808, !32, !595, !85, !3809, !32}
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !578, line: 39, baseType: !577)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3823, !3824, !3827, !3828}
!3811 = !DILocalVariable(name: "s", arg: 1, scope: !3804, file: !3805, line: 88, type: !32)
!3812 = !DILocalVariable(name: "ptr", arg: 2, scope: !3804, file: !3805, line: 88, type: !595)
!3813 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3804, file: !3805, line: 88, type: !85)
!3814 = !DILocalVariable(name: "val", arg: 4, scope: !3804, file: !3805, line: 89, type: !3809)
!3815 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3804, file: !3805, line: 89, type: !32)
!3816 = !DILocalVariable(name: "t_ptr", scope: !3804, file: !3805, line: 91, type: !6)
!3817 = !DILocalVariable(name: "p", scope: !3804, file: !3805, line: 92, type: !595)
!3818 = !DILocalVariable(name: "tmp", scope: !3804, file: !3805, line: 93, type: !97)
!3819 = !DILocalVariable(name: "err", scope: !3804, file: !3805, line: 94, type: !3808)
!3820 = !DILocalVariable(name: "q", scope: !3821, file: !3805, line: 104, type: !32)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3805, line: 103, column: 5)
!3822 = distinct !DILexicalBlock(scope: !3804, file: !3805, line: 102, column: 7)
!3823 = !DILocalVariable(name: "ch", scope: !3821, file: !3805, line: 105, type: !9)
!3824 = !DILocalVariable(name: "base", scope: !3825, file: !3805, line: 141, type: !85)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3805, line: 140, column: 5)
!3826 = distinct !DILexicalBlock(scope: !3804, file: !3805, line: 139, column: 7)
!3827 = !DILocalVariable(name: "suffixes", scope: !3825, file: !3805, line: 142, type: !85)
!3828 = !DILocalVariable(name: "overflow", scope: !3825, file: !3805, line: 143, type: !3808)
!3829 = !DILocation(line: 88, column: 24, scope: !3804)
!3830 = !DILocation(line: 88, column: 34, scope: !3804)
!3831 = !DILocation(line: 88, column: 43, scope: !3804)
!3832 = !DILocation(line: 89, column: 24, scope: !3804)
!3833 = !DILocation(line: 89, column: 41, scope: !3804)
!3834 = !DILocation(line: 91, column: 3, scope: !3804)
!3835 = !DILocation(line: 94, column: 16, scope: !3804)
!3836 = !DILocation(line: 96, column: 3, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !3805, line: 96, column: 3)
!3838 = distinct !DILexicalBlock(scope: !3804, file: !3805, line: 96, column: 3)
!3839 = !DILocation(line: 98, column: 8, scope: !3804)
!3840 = !DILocation(line: 92, column: 10, scope: !3804)
!3841 = !DILocation(line: 100, column: 3, scope: !3804)
!3842 = !DILocation(line: 100, column: 9, scope: !3804)
!3843 = !DILocation(line: 104, column: 19, scope: !3821)
!3844 = !DILocation(line: 105, column: 21, scope: !3821)
!3845 = !DILocation(line: 106, column: 14, scope: !3821)
!3846 = !DILocation(line: 106, column: 7, scope: !3821)
!3847 = !DILocation(line: 107, column: 15, scope: !3821)
!3848 = distinct !{!3848, !3846, !3849}
!3849 = !DILocation(line: 107, column: 17, scope: !3821)
!3850 = !DILocation(line: 108, column: 14, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3821, file: !3805, line: 108, column: 11)
!3852 = !DILocation(line: 112, column: 9, scope: !3804)
!3853 = !DILocation(line: 93, column: 14, scope: !3804)
!3854 = !DILocation(line: 114, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3804, file: !3805, line: 114, column: 7)
!3856 = !DILocation(line: 114, column: 10, scope: !3855)
!3857 = !DILocation(line: 114, column: 7, scope: !3804)
!3858 = !DILocation(line: 118, column: 11, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3805, line: 118, column: 11)
!3860 = distinct !DILexicalBlock(scope: !3855, file: !3805, line: 115, column: 5)
!3861 = !DILocation(line: 118, column: 26, scope: !3859)
!3862 = !DILocation(line: 118, column: 29, scope: !3859)
!3863 = !DILocation(line: 118, column: 33, scope: !3859)
!3864 = !DILocation(line: 118, column: 36, scope: !3859)
!3865 = !DILocation(line: 118, column: 11, scope: !3860)
!3866 = !DILocation(line: 123, column: 12, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3855, file: !3805, line: 123, column: 12)
!3868 = !DILocation(line: 123, column: 12, scope: !3855)
!3869 = !DILocation(line: 128, column: 5, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !3805, line: 124, column: 5)
!3871 = !DILocation(line: 133, column: 8, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3804, file: !3805, line: 133, column: 7)
!3873 = !DILocation(line: 133, column: 7, scope: !3804)
!3874 = !DILocation(line: 135, column: 12, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3872, file: !3805, line: 134, column: 5)
!3876 = !DILocation(line: 136, column: 7, scope: !3875)
!3877 = !DILocation(line: 139, column: 7, scope: !3826)
!3878 = !DILocation(line: 139, column: 11, scope: !3826)
!3879 = !DILocation(line: 139, column: 7, scope: !3804)
!3880 = !DILocation(line: 141, column: 11, scope: !3825)
!3881 = !DILocation(line: 142, column: 11, scope: !3825)
!3882 = !DILocation(line: 145, column: 12, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3825, file: !3805, line: 145, column: 11)
!3884 = !DILocation(line: 145, column: 11, scope: !3825)
!3885 = !DILocation(line: 147, column: 16, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3883, file: !3805, line: 146, column: 9)
!3887 = !DILocation(line: 148, column: 22, scope: !3886)
!3888 = !DILocation(line: 148, column: 11, scope: !3886)
!3889 = !DILocation(line: 151, column: 7, scope: !3825)
!3890 = !DILocation(line: 163, column: 15, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3805, line: 163, column: 15)
!3892 = distinct !DILexicalBlock(scope: !3825, file: !3805, line: 152, column: 9)
!3893 = !DILocation(line: 163, column: 15, scope: !3892)
!3894 = !DILocation(line: 164, column: 21, scope: !3891)
!3895 = !DILocation(line: 164, column: 13, scope: !3891)
!3896 = !DILocation(line: 167, column: 21, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !3805, line: 167, column: 21)
!3898 = distinct !DILexicalBlock(scope: !3891, file: !3805, line: 165, column: 15)
!3899 = !DILocation(line: 167, column: 29, scope: !3897)
!3900 = !DILocation(line: 167, column: 21, scope: !3898)
!3901 = !DILocation(line: 175, column: 17, scope: !3898)
!3902 = !DILocation(line: 179, column: 7, scope: !3825)
!3903 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3904, file: !3805, line: 60, type: !85)
!3904 = distinct !DISubprogram(name: "bkm_scale", scope: !3805, file: !3805, line: 60, type: !3905, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !683, variables: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!3808, !3809, !85}
!3907 = !{!3908, !3903}
!3908 = !DILocalVariable(name: "x", arg: 1, scope: !3904, file: !3805, line: 60, type: !3809)
!3909 = !DILocation(line: 60, column: 31, scope: !3904, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 182, column: 22, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3825, file: !3805, line: 180, column: 9)
!3912 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3910)
!3913 = distinct !DILexicalBlock(scope: !3904, file: !3805, line: 67, column: 7)
!3914 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3910)
!3915 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3910)
!3916 = !DILocation(line: 143, column: 20, scope: !3825)
!3917 = !DILocation(line: 183, column: 11, scope: !3911)
!3918 = !DILocation(line: 60, column: 31, scope: !3904, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 189, column: 22, scope: !3911)
!3920 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3919)
!3921 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3919)
!3922 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3919)
!3923 = !DILocation(line: 190, column: 11, scope: !3911)
!3924 = !DILocalVariable(name: "power", arg: 3, scope: !3925, file: !3805, line: 77, type: !85)
!3925 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3805, file: !3805, line: 77, type: !3926, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !683, variables: !3928)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!3808, !3809, !85, !85}
!3928 = !{!3929, !3930, !3924, !3931}
!3929 = !DILocalVariable(name: "x", arg: 1, scope: !3925, file: !3805, line: 77, type: !3809)
!3930 = !DILocalVariable(name: "base", arg: 2, scope: !3925, file: !3805, line: 77, type: !85)
!3931 = !DILocalVariable(name: "err", scope: !3925, file: !3805, line: 79, type: !3808)
!3932 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 197, column: 22, scope: !3911)
!3934 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3933)
!3935 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3933)
!3937 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3936)
!3938 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3936)
!3939 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3933)
!3940 = !DILocation(line: 241, column: 11, scope: !3825)
!3941 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 202, column: 22, scope: !3911)
!3943 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3942)
!3944 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3942)
!3946 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3945)
!3947 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3945)
!3948 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3942)
!3949 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 207, column: 22, scope: !3911)
!3951 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3950)
!3952 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3950)
!3954 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3953)
!3955 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3953)
!3956 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 212, column: 22, scope: !3911)
!3958 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3957)
!3959 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3957)
!3961 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3960)
!3962 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3960)
!3963 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3957)
!3964 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 216, column: 22, scope: !3911)
!3966 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3965)
!3967 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3965)
!3969 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3968)
!3970 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3968)
!3971 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3965)
!3972 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 221, column: 22, scope: !3911)
!3974 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3973)
!3975 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3973)
!3977 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3976)
!3978 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3976)
!3979 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3973)
!3980 = !DILocation(line: 60, column: 31, scope: !3904, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 225, column: 22, scope: !3911)
!3982 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3981)
!3983 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3981)
!3984 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3981)
!3985 = !DILocation(line: 226, column: 11, scope: !3911)
!3986 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 229, column: 22, scope: !3911)
!3988 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3987)
!3989 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3987)
!3991 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3990)
!3992 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3990)
!3993 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3987)
!3994 = !DILocation(line: 77, column: 50, scope: !3925, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 233, column: 22, scope: !3911)
!3996 = !DILocation(line: 79, column: 16, scope: !3925, inlinedAt: !3995)
!3997 = !DILocation(line: 67, column: 39, scope: !3913, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 81, column: 12, scope: !3925, inlinedAt: !3995)
!3999 = !DILocation(line: 72, column: 6, scope: !3904, inlinedAt: !3998)
!4000 = !DILocation(line: 67, column: 7, scope: !3904, inlinedAt: !3998)
!4001 = !DILocation(line: 81, column: 9, scope: !3925, inlinedAt: !3995)
!4002 = !DILocation(line: 237, column: 16, scope: !3911)
!4003 = !DILocation(line: 238, column: 22, scope: !3911)
!4004 = !DILocation(line: 238, column: 11, scope: !3911)
!4005 = !DILocation(line: 242, column: 10, scope: !3825)
!4006 = !DILocation(line: 243, column: 11, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3825, file: !3805, line: 243, column: 11)
!4008 = !DILocation(line: 244, column: 13, scope: !4007)
!4009 = !DILocation(line: 243, column: 11, scope: !3825)
!4010 = !DILocation(line: 247, column: 8, scope: !3804)
!4011 = !DILocation(line: 248, column: 3, scope: !3804)
!4012 = !DILocation(line: 249, column: 1, scope: !3804)
!4013 = distinct !DISubprogram(name: "rpl_calloc", scope: !4014, file: !4014, line: 42, type: !3529, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !4015)
!4014 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4015 = !{!4016, !4017, !4018, !4019}
!4016 = !DILocalVariable(name: "n", arg: 1, scope: !4013, file: !4014, line: 42, type: !169)
!4017 = !DILocalVariable(name: "s", arg: 2, scope: !4013, file: !4014, line: 42, type: !169)
!4018 = !DILocalVariable(name: "result", scope: !4013, file: !4014, line: 44, type: !8)
!4019 = !DILocalVariable(name: "bytes", scope: !4020, file: !4014, line: 56, type: !169)
!4020 = distinct !DILexicalBlock(scope: !4021, file: !4014, line: 53, column: 5)
!4021 = distinct !DILexicalBlock(scope: !4013, file: !4014, line: 47, column: 7)
!4022 = !DILocation(line: 42, column: 20, scope: !4013)
!4023 = !DILocation(line: 42, column: 30, scope: !4013)
!4024 = !DILocation(line: 47, column: 9, scope: !4021)
!4025 = !DILocation(line: 47, column: 19, scope: !4021)
!4026 = !DILocation(line: 47, column: 14, scope: !4021)
!4027 = !DILocation(line: 56, column: 24, scope: !4020)
!4028 = !DILocation(line: 56, column: 14, scope: !4020)
!4029 = !DILocation(line: 57, column: 17, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4020, file: !4014, line: 57, column: 11)
!4031 = !DILocation(line: 57, column: 21, scope: !4030)
!4032 = !DILocation(line: 57, column: 11, scope: !4020)
!4033 = !DILocation(line: 59, column: 11, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !4014, line: 58, column: 9)
!4035 = !DILocation(line: 59, column: 17, scope: !4034)
!4036 = !DILocation(line: 65, column: 12, scope: !4013)
!4037 = !DILocation(line: 44, column: 9, scope: !4013)
!4038 = !DILocation(line: 72, column: 3, scope: !4013)
!4039 = !DILocation(line: 73, column: 1, scope: !4013)
!4040 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4041, file: !4041, line: 334, type: !4042, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !689, variables: !4056)
!4041 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!169, !4044, !32, !169, !4045}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1687, line: 6, baseType: !4047)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1689, line: 21, baseType: !4048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 13, size: 64, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4048, file: !1689, line: 15, baseType: !85, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4048, file: !1689, line: 20, baseType: !4052, size: 32, offset: 32)
!4052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4048, file: !1689, line: 16, size: 32, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4052, file: !1689, line: 18, baseType: !17, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4052, file: !1689, line: 19, baseType: !1698, size: 32)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4057 = !DILocalVariable(name: "pwc", arg: 1, scope: !4040, file: !4041, line: 334, type: !4044)
!4058 = !DILocalVariable(name: "s", arg: 2, scope: !4040, file: !4041, line: 334, type: !32)
!4059 = !DILocalVariable(name: "n", arg: 3, scope: !4040, file: !4041, line: 334, type: !169)
!4060 = !DILocalVariable(name: "ps", arg: 4, scope: !4040, file: !4041, line: 334, type: !4045)
!4061 = !DILocalVariable(name: "ret", scope: !4040, file: !4041, line: 336, type: !169)
!4062 = !DILocalVariable(name: "wc", scope: !4040, file: !4041, line: 337, type: !1703)
!4063 = !DILocalVariable(name: "uc", scope: !4064, file: !4041, line: 398, type: !9)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !4041, line: 397, column: 5)
!4065 = distinct !DILexicalBlock(scope: !4040, file: !4041, line: 396, column: 7)
!4066 = !DILocation(line: 334, column: 23, scope: !4040)
!4067 = !DILocation(line: 334, column: 40, scope: !4040)
!4068 = !DILocation(line: 334, column: 50, scope: !4040)
!4069 = !DILocation(line: 334, column: 64, scope: !4040)
!4070 = !DILocation(line: 337, column: 3, scope: !4040)
!4071 = !DILocation(line: 353, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4040, file: !4041, line: 353, column: 7)
!4073 = !DILocation(line: 353, column: 7, scope: !4040)
!4074 = !DILocation(line: 388, column: 9, scope: !4040)
!4075 = !DILocation(line: 336, column: 10, scope: !4040)
!4076 = !DILocation(line: 396, column: 19, scope: !4065)
!4077 = !DILocation(line: 396, column: 31, scope: !4065)
!4078 = !DILocation(line: 396, column: 26, scope: !4065)
!4079 = !DILocation(line: 396, column: 41, scope: !4065)
!4080 = !DILocation(line: 396, column: 7, scope: !4040)
!4081 = !DILocation(line: 398, column: 26, scope: !4064)
!4082 = !DILocation(line: 398, column: 21, scope: !4064)
!4083 = !DILocation(line: 399, column: 14, scope: !4064)
!4084 = !DILocation(line: 399, column: 12, scope: !4064)
!4085 = !DILocation(line: 405, column: 1, scope: !4040)
!4086 = distinct !DISubprogram(name: "close_stream", scope: !4087, file: !4087, line: 56, type: !4088, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !4130)
!4087 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!85, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3339, line: 7, baseType: !4092)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3341, line: 241, size: 1728, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4092, file: !3341, line: 242, baseType: !85, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4092, file: !3341, line: 247, baseType: !6, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4092, file: !3341, line: 248, baseType: !6, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4092, file: !3341, line: 249, baseType: !6, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4092, file: !3341, line: 250, baseType: !6, size: 64, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4092, file: !3341, line: 251, baseType: !6, size: 64, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4092, file: !3341, line: 252, baseType: !6, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4092, file: !3341, line: 253, baseType: !6, size: 64, offset: 448)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4092, file: !3341, line: 254, baseType: !6, size: 64, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4092, file: !3341, line: 256, baseType: !6, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4092, file: !3341, line: 257, baseType: !6, size: 64, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4092, file: !3341, line: 258, baseType: !6, size: 64, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4092, file: !3341, line: 260, baseType: !4107, size: 64, offset: 768)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3341, line: 156, size: 192, elements: !4109)
!4109 = !{!4110, !4111, !4113}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4108, file: !3341, line: 157, baseType: !4107, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4108, file: !3341, line: 158, baseType: !4112, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4108, file: !3341, line: 162, baseType: !85, size: 32, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4092, file: !3341, line: 262, baseType: !4112, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4092, file: !3341, line: 264, baseType: !85, size: 32, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4092, file: !3341, line: 268, baseType: !85, size: 32, offset: 928)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4092, file: !3341, line: 270, baseType: !3367, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4092, file: !3341, line: 274, baseType: !168, size: 16, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4092, file: !3341, line: 275, baseType: !3371, size: 8, offset: 1040)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4092, file: !3341, line: 276, baseType: !3373, size: 8, offset: 1048)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4092, file: !3341, line: 280, baseType: !3377, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4092, file: !3341, line: 289, baseType: !3380, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4092, file: !3341, line: 297, baseType: !8, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4092, file: !3341, line: 298, baseType: !8, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4092, file: !3341, line: 299, baseType: !8, size: 64, offset: 1344)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4092, file: !3341, line: 300, baseType: !8, size: 64, offset: 1408)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4092, file: !3341, line: 302, baseType: !169, size: 64, offset: 1472)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4092, file: !3341, line: 303, baseType: !85, size: 32, offset: 1536)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4092, file: !3341, line: 305, baseType: !3388, size: 160, offset: 1568)
!4130 = !{!4131, !4132, !4134, !4135}
!4131 = !DILocalVariable(name: "stream", arg: 1, scope: !4086, file: !4087, line: 56, type: !4090)
!4132 = !DILocalVariable(name: "some_pending", scope: !4086, file: !4087, line: 58, type: !4133)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!4134 = !DILocalVariable(name: "prev_fail", scope: !4086, file: !4087, line: 59, type: !4133)
!4135 = !DILocalVariable(name: "fclose_fail", scope: !4086, file: !4087, line: 60, type: !4133)
!4136 = !DILocation(line: 56, column: 21, scope: !4086)
!4137 = !DILocation(line: 58, column: 30, scope: !4086)
!4138 = !DILocalVariable(name: "__stream", arg: 1, scope: !4139, file: !1147, line: 132, type: !4090)
!4139 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1147, file: !1147, line: 132, type: !4088, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !4140)
!4140 = !{!4138}
!4141 = !DILocation(line: 132, column: 1, scope: !4139, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 59, column: 27, scope: !4086)
!4143 = !DILocation(line: 134, column: 10, scope: !4139, inlinedAt: !4142)
!4144 = !{!1155, !852, i64 0}
!4145 = !DILocation(line: 59, column: 43, scope: !4086)
!4146 = !DILocation(line: 60, column: 29, scope: !4086)
!4147 = !DILocation(line: 60, column: 45, scope: !4086)
!4148 = !DILocation(line: 70, column: 17, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 70, column: 7)
!4150 = !DILocation(line: 58, column: 50, scope: !4086)
!4151 = !DILocation(line: 70, column: 33, scope: !4149)
!4152 = !DILocation(line: 70, column: 53, scope: !4149)
!4153 = !DILocation(line: 70, column: 59, scope: !4149)
!4154 = !DILocation(line: 70, column: 7, scope: !4086)
!4155 = !DILocation(line: 72, column: 11, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4149, file: !4087, line: 71, column: 5)
!4157 = !DILocation(line: 73, column: 9, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4156, file: !4087, line: 72, column: 11)
!4159 = !DILocation(line: 73, column: 15, scope: !4158)
!4160 = !DILocation(line: 78, column: 1, scope: !4086)
!4161 = distinct !DISubprogram(name: "hard_locale", scope: !4162, file: !4162, line: 38, type: !4163, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4165)
!4162 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!50, !85}
!4165 = !{!4166, !4167, !4168}
!4166 = !DILocalVariable(name: "category", arg: 1, scope: !4161, file: !4162, line: 38, type: !85)
!4167 = !DILocalVariable(name: "hard", scope: !4161, file: !4162, line: 40, type: !50)
!4168 = !DILocalVariable(name: "p", scope: !4161, file: !4162, line: 41, type: !32)
!4169 = !DILocation(line: 38, column: 18, scope: !4161)
!4170 = !DILocation(line: 40, column: 8, scope: !4161)
!4171 = !DILocation(line: 41, column: 19, scope: !4161)
!4172 = !DILocation(line: 41, column: 15, scope: !4161)
!4173 = !DILocation(line: 43, column: 7, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4161, file: !4162, line: 43, column: 7)
!4175 = !DILocation(line: 43, column: 7, scope: !4161)
!4176 = !DILocation(line: 47, column: 15, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !4162, line: 47, column: 15)
!4178 = distinct !DILexicalBlock(scope: !4179, file: !4162, line: 46, column: 9)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !4162, line: 45, column: 11)
!4180 = distinct !DILexicalBlock(scope: !4174, file: !4162, line: 44, column: 5)
!4181 = !DILocation(line: 47, column: 31, scope: !4177)
!4182 = !DILocation(line: 47, column: 36, scope: !4177)
!4183 = !DILocation(line: 47, column: 39, scope: !4177)
!4184 = !DILocation(line: 47, column: 59, scope: !4177)
!4185 = !DILocation(line: 47, column: 15, scope: !4178)
!4186 = !DILocation(line: 48, column: 13, scope: !4177)
!4187 = !DILocation(line: 71, column: 3, scope: !4161)
!4188 = distinct !DISubprogram(name: "locale_charset", scope: !566, file: !566, line: 393, type: !4189, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!32}
!4191 = !{!4192, !4193}
!4192 = !DILocalVariable(name: "codeset", scope: !4188, file: !566, line: 395, type: !32)
!4193 = !DILocalVariable(name: "aliases", scope: !4188, file: !566, line: 396, type: !32)
!4194 = !DILocalVariable(name: "buf1", scope: !4195, file: !566, line: 196, type: !4262)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !566, line: 194, column: 21)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !566, line: 193, column: 19)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !566, line: 193, column: 19)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !566, line: 188, column: 17)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !566, line: 181, column: 19)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !566, line: 177, column: 13)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !566, line: 173, column: 15)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !566, line: 161, column: 9)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !566, line: 157, column: 11)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !566, line: 130, column: 5)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !566, line: 129, column: 7)
!4206 = distinct !DISubprogram(name: "get_charset_aliases", scope: !566, file: !566, line: 124, type: !4189, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4214, !4215, !4216, !4217, !4258, !4259, !4260, !4194, !4261, !4265, !4266, !4267}
!4208 = !DILocalVariable(name: "cp", scope: !4206, file: !566, line: 126, type: !32)
!4209 = !DILocalVariable(name: "dir", scope: !4204, file: !566, line: 132, type: !32)
!4210 = !DILocalVariable(name: "base", scope: !4204, file: !566, line: 133, type: !32)
!4211 = !DILocalVariable(name: "file_name", scope: !4204, file: !566, line: 134, type: !6)
!4212 = !DILocalVariable(name: "dir_len", scope: !4213, file: !566, line: 144, type: !169)
!4213 = distinct !DILexicalBlock(scope: !4204, file: !566, line: 143, column: 7)
!4214 = !DILocalVariable(name: "base_len", scope: !4213, file: !566, line: 145, type: !169)
!4215 = !DILocalVariable(name: "add_slash", scope: !4213, file: !566, line: 146, type: !85)
!4216 = !DILocalVariable(name: "fd", scope: !4202, file: !566, line: 162, type: !85)
!4217 = !DILocalVariable(name: "fp", scope: !4200, file: !566, line: 178, type: !4218)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3339, line: 7, baseType: !4220)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3341, line: 241, size: 1728, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4220, file: !3341, line: 242, baseType: !85, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4220, file: !3341, line: 247, baseType: !6, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4220, file: !3341, line: 248, baseType: !6, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4220, file: !3341, line: 249, baseType: !6, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4220, file: !3341, line: 250, baseType: !6, size: 64, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4220, file: !3341, line: 251, baseType: !6, size: 64, offset: 320)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4220, file: !3341, line: 252, baseType: !6, size: 64, offset: 384)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4220, file: !3341, line: 253, baseType: !6, size: 64, offset: 448)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4220, file: !3341, line: 254, baseType: !6, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4220, file: !3341, line: 256, baseType: !6, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4220, file: !3341, line: 257, baseType: !6, size: 64, offset: 640)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4220, file: !3341, line: 258, baseType: !6, size: 64, offset: 704)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4220, file: !3341, line: 260, baseType: !4235, size: 64, offset: 768)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3341, line: 156, size: 192, elements: !4237)
!4237 = !{!4238, !4239, !4241}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4236, file: !3341, line: 157, baseType: !4235, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4236, file: !3341, line: 158, baseType: !4240, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4236, file: !3341, line: 162, baseType: !85, size: 32, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4220, file: !3341, line: 262, baseType: !4240, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4220, file: !3341, line: 264, baseType: !85, size: 32, offset: 896)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4220, file: !3341, line: 268, baseType: !85, size: 32, offset: 928)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4220, file: !3341, line: 270, baseType: !3367, size: 64, offset: 960)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4220, file: !3341, line: 274, baseType: !168, size: 16, offset: 1024)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4220, file: !3341, line: 275, baseType: !3371, size: 8, offset: 1040)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4220, file: !3341, line: 276, baseType: !3373, size: 8, offset: 1048)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4220, file: !3341, line: 280, baseType: !3377, size: 64, offset: 1088)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4220, file: !3341, line: 289, baseType: !3380, size: 64, offset: 1152)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4220, file: !3341, line: 297, baseType: !8, size: 64, offset: 1216)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4220, file: !3341, line: 298, baseType: !8, size: 64, offset: 1280)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4220, file: !3341, line: 299, baseType: !8, size: 64, offset: 1344)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4220, file: !3341, line: 300, baseType: !8, size: 64, offset: 1408)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4220, file: !3341, line: 302, baseType: !169, size: 64, offset: 1472)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4220, file: !3341, line: 303, baseType: !85, size: 32, offset: 1536)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4220, file: !3341, line: 305, baseType: !3388, size: 160, offset: 1568)
!4258 = !DILocalVariable(name: "res_ptr", scope: !4198, file: !566, line: 190, type: !6)
!4259 = !DILocalVariable(name: "res_size", scope: !4198, file: !566, line: 191, type: !169)
!4260 = !DILocalVariable(name: "c", scope: !4195, file: !566, line: 195, type: !85)
!4261 = !DILocalVariable(name: "buf2", scope: !4195, file: !566, line: 197, type: !4262)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !4263)
!4263 = !{!4264}
!4264 = !DISubrange(count: 51)
!4265 = !DILocalVariable(name: "l1", scope: !4195, file: !566, line: 198, type: !169)
!4266 = !DILocalVariable(name: "l2", scope: !4195, file: !566, line: 198, type: !169)
!4267 = !DILocalVariable(name: "old_res_ptr", scope: !4195, file: !566, line: 199, type: !6)
!4268 = !DILocation(line: 196, column: 28, scope: !4195, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 589, column: 18, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4188, file: !566, line: 589, column: 3)
!4271 = !DILocation(line: 197, column: 28, scope: !4195, inlinedAt: !4269)
!4272 = !DILocation(line: 403, column: 13, scope: !4188)
!4273 = !DILocation(line: 395, column: 15, scope: !4188)
!4274 = !DILocation(line: 584, column: 15, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4188, file: !566, line: 584, column: 7)
!4276 = !DILocation(line: 584, column: 7, scope: !4188)
!4277 = !DILocation(line: 128, column: 8, scope: !4206, inlinedAt: !4269)
!4278 = !DILocation(line: 126, column: 15, scope: !4206, inlinedAt: !4269)
!4279 = !DILocation(line: 129, column: 10, scope: !4205, inlinedAt: !4269)
!4280 = !DILocation(line: 129, column: 7, scope: !4206, inlinedAt: !4269)
!4281 = !DILocation(line: 138, column: 13, scope: !4204, inlinedAt: !4269)
!4282 = !DILocation(line: 132, column: 19, scope: !4204, inlinedAt: !4269)
!4283 = !DILocation(line: 139, column: 15, scope: !4284, inlinedAt: !4269)
!4284 = distinct !DILexicalBlock(scope: !4204, file: !566, line: 139, column: 11)
!4285 = !DILocation(line: 139, column: 23, scope: !4284, inlinedAt: !4269)
!4286 = !DILocation(line: 139, column: 26, scope: !4284, inlinedAt: !4269)
!4287 = !DILocation(line: 139, column: 33, scope: !4284, inlinedAt: !4269)
!4288 = !DILocation(line: 139, column: 11, scope: !4204, inlinedAt: !4269)
!4289 = !DILocation(line: 140, column: 9, scope: !4284, inlinedAt: !4269)
!4290 = !DILocation(line: 144, column: 26, scope: !4213, inlinedAt: !4269)
!4291 = !DILocation(line: 144, column: 16, scope: !4213, inlinedAt: !4269)
!4292 = !DILocation(line: 145, column: 16, scope: !4213, inlinedAt: !4269)
!4293 = !DILocation(line: 146, column: 34, scope: !4213, inlinedAt: !4269)
!4294 = !DILocation(line: 146, column: 38, scope: !4213, inlinedAt: !4269)
!4295 = !DILocation(line: 146, column: 42, scope: !4213, inlinedAt: !4269)
!4296 = !DILocation(line: 147, column: 48, scope: !4213, inlinedAt: !4269)
!4297 = !DILocation(line: 147, column: 46, scope: !4213, inlinedAt: !4269)
!4298 = !DILocation(line: 147, column: 69, scope: !4213, inlinedAt: !4269)
!4299 = !DILocation(line: 147, column: 30, scope: !4213, inlinedAt: !4269)
!4300 = !DILocation(line: 134, column: 13, scope: !4204, inlinedAt: !4269)
!4301 = !DILocation(line: 148, column: 13, scope: !4213, inlinedAt: !4269)
!4302 = !DILocation(line: 150, column: 13, scope: !4303, inlinedAt: !4269)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !566, line: 149, column: 11)
!4304 = distinct !DILexicalBlock(scope: !4213, file: !566, line: 148, column: 13)
!4305 = !DILocation(line: 151, column: 17, scope: !4303, inlinedAt: !4269)
!4306 = !DILocation(line: 152, column: 34, scope: !4307, inlinedAt: !4269)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !566, line: 151, column: 17)
!4308 = !DILocation(line: 153, column: 41, scope: !4303, inlinedAt: !4269)
!4309 = !DILocation(line: 153, column: 13, scope: !4303, inlinedAt: !4269)
!4310 = !DILocation(line: 157, column: 11, scope: !4204, inlinedAt: !4269)
!4311 = !DILocation(line: 171, column: 16, scope: !4202, inlinedAt: !4269)
!4312 = !DILocation(line: 162, column: 15, scope: !4202, inlinedAt: !4269)
!4313 = !DILocation(line: 173, column: 18, scope: !4201, inlinedAt: !4269)
!4314 = !DILocation(line: 173, column: 15, scope: !4202, inlinedAt: !4269)
!4315 = !DILocation(line: 180, column: 20, scope: !4200, inlinedAt: !4269)
!4316 = !DILocation(line: 178, column: 21, scope: !4200, inlinedAt: !4269)
!4317 = !DILocation(line: 181, column: 22, scope: !4199, inlinedAt: !4269)
!4318 = !DILocation(line: 181, column: 19, scope: !4200, inlinedAt: !4269)
!4319 = !DILocation(line: 184, column: 19, scope: !4320, inlinedAt: !4269)
!4320 = distinct !DILexicalBlock(scope: !4199, file: !566, line: 182, column: 17)
!4321 = !DILocation(line: 186, column: 17, scope: !4320, inlinedAt: !4269)
!4322 = !DILocation(line: 190, column: 25, scope: !4198, inlinedAt: !4269)
!4323 = !DILocation(line: 191, column: 26, scope: !4198, inlinedAt: !4269)
!4324 = !DILocation(line: 193, column: 19, scope: !4198, inlinedAt: !4269)
!4325 = !DILocation(line: 196, column: 23, scope: !4195, inlinedAt: !4269)
!4326 = !DILocation(line: 197, column: 23, scope: !4195, inlinedAt: !4269)
!4327 = !DILocalVariable(name: "__fp", arg: 1, scope: !4328, file: !1147, line: 63, type: !4218)
!4328 = distinct !DISubprogram(name: "getc_unlocked", scope: !1147, file: !1147, line: 63, type: !4329, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!85, !4218}
!4331 = !{!4327}
!4332 = !DILocation(line: 63, column: 22, scope: !4328, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 201, column: 27, scope: !4195, inlinedAt: !4269)
!4334 = !DILocation(line: 65, column: 10, scope: !4328, inlinedAt: !4333)
!4335 = !{!1155, !756, i64 8}
!4336 = !{!1155, !756, i64 16}
!4337 = !DILocation(line: 195, column: 27, scope: !4195, inlinedAt: !4269)
!4338 = !DILocation(line: 202, column: 27, scope: !4195, inlinedAt: !4269)
!4339 = distinct !{!4339, !4340, !4343}
!4340 = !DILocation(line: 209, column: 27, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !566, line: 207, column: 25)
!4342 = distinct !DILexicalBlock(scope: !4195, file: !566, line: 206, column: 27)
!4343 = !DILocation(line: 211, column: 58, scope: !4341)
!4344 = !DILocation(line: 65, column: 10, scope: !4328, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 210, column: 33, scope: !4341, inlinedAt: !4269)
!4346 = !DILocation(line: 63, column: 22, scope: !4328, inlinedAt: !4345)
!4347 = !DILocation(line: 210, column: 29, scope: !4341, inlinedAt: !4269)
!4348 = distinct !{!4348, !4349, !4350}
!4349 = !DILocation(line: 193, column: 19, scope: !4197)
!4350 = !DILocation(line: 241, column: 21, scope: !4197)
!4351 = !DILocation(line: 216, column: 23, scope: !4195, inlinedAt: !4269)
!4352 = !DILocation(line: 217, column: 27, scope: !4353, inlinedAt: !4269)
!4353 = distinct !DILexicalBlock(scope: !4195, file: !566, line: 217, column: 27)
!4354 = !DILocation(line: 217, column: 64, scope: !4353, inlinedAt: !4269)
!4355 = !DILocation(line: 217, column: 27, scope: !4195, inlinedAt: !4269)
!4356 = !DILocation(line: 219, column: 28, scope: !4195, inlinedAt: !4269)
!4357 = !DILocation(line: 198, column: 30, scope: !4195, inlinedAt: !4269)
!4358 = !DILocation(line: 220, column: 28, scope: !4195, inlinedAt: !4269)
!4359 = !DILocation(line: 198, column: 34, scope: !4195, inlinedAt: !4269)
!4360 = !DILocation(line: 199, column: 29, scope: !4195, inlinedAt: !4269)
!4361 = !DILocation(line: 222, column: 36, scope: !4362, inlinedAt: !4269)
!4362 = distinct !DILexicalBlock(scope: !4195, file: !566, line: 222, column: 27)
!4363 = !DILocation(line: 222, column: 27, scope: !4195, inlinedAt: !4269)
!4364 = !DILocation(line: 225, column: 63, scope: !4365, inlinedAt: !4269)
!4365 = distinct !DILexicalBlock(scope: !4362, file: !566, line: 223, column: 25)
!4366 = !DILocation(line: 225, column: 46, scope: !4365, inlinedAt: !4269)
!4367 = !DILocation(line: 226, column: 25, scope: !4365, inlinedAt: !4269)
!4368 = !DILocation(line: 229, column: 36, scope: !4369, inlinedAt: !4269)
!4369 = distinct !DILexicalBlock(scope: !4362, file: !566, line: 228, column: 25)
!4370 = !DILocation(line: 230, column: 73, scope: !4369, inlinedAt: !4269)
!4371 = !DILocation(line: 230, column: 46, scope: !4369, inlinedAt: !4269)
!4372 = !DILocation(line: 232, column: 35, scope: !4373, inlinedAt: !4269)
!4373 = distinct !DILexicalBlock(scope: !4195, file: !566, line: 232, column: 27)
!4374 = !DILocation(line: 232, column: 27, scope: !4195, inlinedAt: !4269)
!4375 = !DILocation(line: 236, column: 27, scope: !4376, inlinedAt: !4269)
!4376 = distinct !DILexicalBlock(scope: !4373, file: !566, line: 233, column: 25)
!4377 = !DILocation(line: 237, column: 27, scope: !4376, inlinedAt: !4269)
!4378 = !DILocation(line: 241, column: 21, scope: !4196, inlinedAt: !4269)
!4379 = !DILocation(line: 239, column: 39, scope: !4195, inlinedAt: !4269)
!4380 = !DILocation(line: 239, column: 50, scope: !4195, inlinedAt: !4269)
!4381 = !DILocation(line: 239, column: 61, scope: !4195, inlinedAt: !4269)
!4382 = !DILocalVariable(name: "__dest", arg: 1, scope: !4383, file: !4384, line: 88, type: !4387)
!4383 = distinct !DISubprogram(name: "strcpy", scope: !4384, file: !4384, line: 88, type: !4385, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !222, variables: !4389)
!4384 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!6, !4387, !4388}
!4387 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4388 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!4389 = !{!4382, !4390}
!4390 = !DILocalVariable(name: "__src", arg: 2, scope: !4383, file: !4384, line: 88, type: !4388)
!4391 = !DILocation(line: 88, column: 1, scope: !4383, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 239, column: 23, scope: !4195, inlinedAt: !4269)
!4393 = !DILocation(line: 90, column: 49, scope: !4383, inlinedAt: !4392)
!4394 = !DILocation(line: 90, column: 10, scope: !4383, inlinedAt: !4392)
!4395 = !DILocation(line: 88, column: 1, scope: !4383, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 240, column: 23, scope: !4195, inlinedAt: !4269)
!4397 = !DILocation(line: 90, column: 49, scope: !4383, inlinedAt: !4396)
!4398 = !DILocation(line: 90, column: 10, scope: !4383, inlinedAt: !4396)
!4399 = !DILocation(line: 193, column: 19, scope: !4196, inlinedAt: !4269)
!4400 = !DILocation(line: 242, column: 19, scope: !4198, inlinedAt: !4269)
!4401 = !DILocation(line: 243, column: 32, scope: !4402, inlinedAt: !4269)
!4402 = distinct !DILexicalBlock(scope: !4198, file: !566, line: 243, column: 23)
!4403 = !DILocation(line: 243, column: 23, scope: !4198, inlinedAt: !4269)
!4404 = !DILocation(line: 247, column: 33, scope: !4405, inlinedAt: !4269)
!4405 = distinct !DILexicalBlock(scope: !4402, file: !566, line: 246, column: 21)
!4406 = !DILocation(line: 247, column: 45, scope: !4405, inlinedAt: !4269)
!4407 = !DILocation(line: 253, column: 11, scope: !4202, inlinedAt: !4269)
!4408 = !DILocation(line: 377, column: 23, scope: !4204, inlinedAt: !4269)
!4409 = !DILocation(line: 378, column: 5, scope: !4204, inlinedAt: !4269)
!4410 = !DILocation(line: 396, column: 15, scope: !4188)
!4411 = !DILocation(line: 590, column: 8, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4270, file: !566, line: 589, column: 3)
!4413 = !DILocation(line: 590, column: 17, scope: !4412)
!4414 = !DILocation(line: 589, column: 3, scope: !4270)
!4415 = !DILocation(line: 592, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4412, file: !566, line: 592, column: 9)
!4417 = !DILocation(line: 592, column: 35, scope: !4416)
!4418 = !DILocation(line: 593, column: 9, scope: !4416)
!4419 = !DILocation(line: 593, column: 24, scope: !4416)
!4420 = !DILocation(line: 593, column: 31, scope: !4416)
!4421 = !DILocation(line: 593, column: 34, scope: !4416)
!4422 = !DILocation(line: 593, column: 45, scope: !4416)
!4423 = !DILocation(line: 592, column: 9, scope: !4412)
!4424 = !DILocation(line: 595, column: 29, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4416, file: !566, line: 594, column: 7)
!4426 = !DILocation(line: 595, column: 27, scope: !4425)
!4427 = !DILocation(line: 595, column: 46, scope: !4425)
!4428 = !DILocation(line: 596, column: 9, scope: !4425)
!4429 = !DILocation(line: 591, column: 19, scope: !4412)
!4430 = !DILocation(line: 591, column: 36, scope: !4412)
!4431 = !DILocation(line: 591, column: 16, scope: !4412)
!4432 = !DILocation(line: 591, column: 52, scope: !4412)
!4433 = !DILocation(line: 591, column: 69, scope: !4412)
!4434 = !DILocation(line: 591, column: 49, scope: !4412)
!4435 = distinct !{!4435, !4414, !4436}
!4436 = !DILocation(line: 597, column: 7, scope: !4270)
!4437 = !DILocation(line: 602, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4188, file: !566, line: 602, column: 7)
!4439 = !DILocation(line: 602, column: 18, scope: !4438)
!4440 = !DILocation(line: 602, column: 7, scope: !4188)
!4441 = !DILocation(line: 612, column: 3, scope: !4188)
!4442 = !DILocation(line: 66, column: 25, scope: !701)
!4443 = !DILocation(line: 66, column: 41, scope: !701)
!4444 = !DILocation(line: 66, column: 54, scope: !701)
!4445 = !DILocation(line: 68, column: 3, scope: !701)
!4446 = !DILocation(line: 81, column: 7, scope: !715)
!4447 = !DILocation(line: 81, column: 7, scope: !701)
!4448 = !DILocation(line: 68, column: 7, scope: !701)
!4449 = !DILocation(line: 84, column: 20, scope: !714)
!4450 = !DILocalVariable(name: "g", arg: 1, scope: !4451, file: !700, line: 43, type: !594)
!4451 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !700, file: !700, line: 43, type: !4452, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !696, variables: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!594, !594, !169}
!4454 = !{!4450, !4455}
!4455 = !DILocalVariable(name: "num", arg: 2, scope: !4451, file: !700, line: 43, type: !169)
!4456 = !DILocation(line: 43, column: 26, scope: !4451, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 86, column: 11, scope: !714)
!4458 = !DILocation(line: 43, column: 36, scope: !4451, inlinedAt: !4457)
!4459 = !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4457)
!4460 = !DILocation(line: 70, column: 10, scope: !701)
!4461 = !DILocation(line: 87, column: 13, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !714, file: !700, line: 87, column: 11)
!4463 = !DILocation(line: 87, column: 11, scope: !714)
!4464 = !DILocation(line: 93, column: 31, scope: !713)
!4465 = !DILocation(line: 93, column: 15, scope: !713)
!4466 = !DILocation(line: 96, column: 16, scope: !713)
!4467 = !DILocation(line: 69, column: 7, scope: !701)
!4468 = !DILocation(line: 100, column: 18, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !713, file: !700, line: 100, column: 15)
!4470 = !DILocation(line: 100, column: 39, scope: !4469)
!4471 = !DILocation(line: 100, column: 22, scope: !4469)
!4472 = !DILocation(line: 101, column: 26, scope: !4469)
!4473 = !DILocation(line: 101, column: 13, scope: !4469)
!4474 = !DILocation(line: 103, column: 41, scope: !719)
!4475 = !DILocation(line: 43, column: 26, scope: !4451, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 103, column: 20, scope: !719)
!4477 = !DILocation(line: 43, column: 36, scope: !4451, inlinedAt: !4476)
!4478 = !DILocation(line: 45, column: 7, scope: !4479, inlinedAt: !4476)
!4479 = distinct !DILexicalBlock(scope: !4451, file: !700, line: 45, column: 7)
!4480 = !DILocation(line: 45, column: 7, scope: !4451, inlinedAt: !4476)
!4481 = !DILocation(line: 47, column: 7, scope: !4482, inlinedAt: !4476)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !700, line: 46, column: 5)
!4483 = !DILocation(line: 47, column: 13, scope: !4482, inlinedAt: !4476)
!4484 = !DILocation(line: 92, column: 18, scope: !713)
!4485 = !DILocation(line: 103, column: 15, scope: !713)
!4486 = !DILocation(line: 51, column: 26, scope: !4451, inlinedAt: !4476)
!4487 = !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4476)
!4488 = !DILocation(line: 103, column: 56, scope: !719)
!4489 = !DILocation(line: 105, column: 33, scope: !718)
!4490 = !DILocation(line: 105, column: 19, scope: !718)
!4491 = !DILocation(line: 106, column: 15, scope: !718)
!4492 = !DILocation(line: 107, column: 21, scope: !718)
!4493 = !DILocation(line: 112, column: 17, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !713, file: !700, line: 112, column: 15)
!4495 = !DILocation(line: 112, column: 15, scope: !713)
!4496 = distinct !{!4496, !4497, !4498}
!4497 = !DILocation(line: 90, column: 7, scope: !714)
!4498 = !DILocation(line: 119, column: 9, scope: !714)
!4499 = !DILocation(line: 114, column: 23, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4494, file: !700, line: 113, column: 13)
!4501 = !DILocation(line: 117, column: 22, scope: !4500)
!4502 = !DILocation(line: 117, column: 15, scope: !4500)
!4503 = !DILocation(line: 126, column: 21, scope: !701)
!4504 = !DILocation(line: 124, column: 16, scope: !701)
!4505 = !DILocation(line: 131, column: 20, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !701, file: !700, line: 131, column: 7)
!4507 = !DILocation(line: 131, column: 7, scope: !701)
!4508 = !DILocation(line: 133, column: 11, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !700, line: 133, column: 11)
!4510 = distinct !DILexicalBlock(scope: !4506, file: !700, line: 132, column: 5)
!4511 = !DILocation(line: 133, column: 17, scope: !4509)
!4512 = !DILocation(line: 133, column: 27, scope: !4509)
!4513 = !DILocation(line: 43, column: 26, scope: !4451, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 133, column: 35, scope: !4509)
!4515 = !DILocation(line: 43, column: 36, scope: !4451, inlinedAt: !4514)
!4516 = !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4514)
!4517 = !DILocation(line: 133, column: 33, scope: !4509)
!4518 = !DILocation(line: 133, column: 11, scope: !4510)
!4519 = !DILocation(line: 135, column: 19, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4509, file: !700, line: 134, column: 9)
!4521 = !DILocation(line: 136, column: 14, scope: !4520)
!4522 = !DILocation(line: 137, column: 22, scope: !4520)
!4523 = !DILocation(line: 137, column: 11, scope: !4520)
!4524 = !DILocation(line: 142, column: 20, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !701, file: !700, line: 142, column: 7)
!4526 = !DILocation(line: 142, column: 46, scope: !4525)
!4527 = !DILocation(line: 142, column: 25, scope: !4525)
!4528 = !DILocation(line: 143, column: 17, scope: !4525)
!4529 = !DILocation(line: 43, column: 26, scope: !4451, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 144, column: 7, scope: !701)
!4531 = !DILocation(line: 43, column: 36, scope: !4451, inlinedAt: !4530)
!4532 = !DILocation(line: 45, column: 7, scope: !4479, inlinedAt: !4530)
!4533 = !DILocation(line: 45, column: 7, scope: !4451, inlinedAt: !4530)
!4534 = !DILocation(line: 47, column: 7, scope: !4482, inlinedAt: !4530)
!4535 = !DILocation(line: 47, column: 13, scope: !4482, inlinedAt: !4530)
!4536 = !DILocation(line: 145, column: 7, scope: !701)
!4537 = !DILocation(line: 144, column: 31, scope: !701)
!4538 = !DILocation(line: 51, column: 26, scope: !4451, inlinedAt: !4530)
!4539 = !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4530)
!4540 = !DILocation(line: 145, column: 9, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !701, file: !700, line: 145, column: 7)
!4542 = !DILocation(line: 150, column: 42, scope: !701)
!4543 = !DILocation(line: 150, column: 35, scope: !701)
!4544 = !DILocation(line: 151, column: 35, scope: !701)
!4545 = !DILocation(line: 150, column: 11, scope: !701)
!4546 = !DILocation(line: 153, column: 10, scope: !722)
!4547 = !DILocation(line: 153, column: 7, scope: !701)
!4548 = !DILocation(line: 156, column: 25, scope: !721)
!4549 = !DILocation(line: 156, column: 11, scope: !721)
!4550 = !DILocation(line: 157, column: 7, scope: !721)
!4551 = !DILocation(line: 158, column: 13, scope: !721)
!4552 = !DILocation(line: 162, column: 17, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !701, file: !700, line: 162, column: 7)
!4554 = !DILocation(line: 164, column: 10, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4553, file: !700, line: 163, column: 5)
!4556 = !DILocation(line: 165, column: 9, scope: !4555)
!4557 = !DILocation(line: 166, column: 5, scope: !4555)
!4558 = !DILocation(line: 167, column: 11, scope: !701)
!4559 = !DILocation(line: 185, column: 9, scope: !725)
!4560 = !DILocation(line: 185, column: 7, scope: !701)
!4561 = !DILocation(line: 187, column: 21, scope: !724)
!4562 = !DILocation(line: 187, column: 13, scope: !724)
!4563 = !DILocation(line: 189, column: 29, scope: !724)
!4564 = !DILocation(line: 189, column: 14, scope: !724)
!4565 = !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)
!4566 = !DILocation(line: 188, column: 14, scope: !724)
!4567 = !DILocation(line: 191, column: 31, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !700, line: 191, column: 7)
!4569 = distinct !DILexicalBlock(scope: !724, file: !700, line: 191, column: 7)
!4570 = !DILocation(line: 191, column: 7, scope: !4569)
!4571 = !DILocation(line: 193, column: 15, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !700, line: 193, column: 15)
!4573 = distinct !DILexicalBlock(scope: !4568, file: !700, line: 192, column: 9)
!4574 = !DILocation(line: 193, column: 39, scope: !4572)
!4575 = !DILocation(line: 193, column: 30, scope: !4572)
!4576 = !DILocation(line: 196, column: 14, scope: !4572)
!4577 = !DILocation(line: 196, column: 18, scope: !4572)
!4578 = !DILocation(line: 194, column: 15, scope: !4572)
!4579 = !DILocation(line: 194, column: 13, scope: !4572)
!4580 = !DILocation(line: 193, column: 21, scope: !4572)
!4581 = !DILocation(line: 201, column: 1, scope: !701)
!4582 = distinct !{!4582, !4570, !4583}
!4583 = !DILocation(line: 197, column: 9, scope: !4569)
!4584 = distinct !DISubprogram(name: "rpl_fclose", scope: !4585, file: !4585, line: 56, type: !4586, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !731, variables: !4628)
!4585 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!85, !4588}
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3339, line: 7, baseType: !4590)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3341, line: 241, size: 1728, elements: !4591)
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4590, file: !3341, line: 242, baseType: !85, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4590, file: !3341, line: 247, baseType: !6, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4590, file: !3341, line: 248, baseType: !6, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4590, file: !3341, line: 249, baseType: !6, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4590, file: !3341, line: 250, baseType: !6, size: 64, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4590, file: !3341, line: 251, baseType: !6, size: 64, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4590, file: !3341, line: 252, baseType: !6, size: 64, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4590, file: !3341, line: 253, baseType: !6, size: 64, offset: 448)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4590, file: !3341, line: 254, baseType: !6, size: 64, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4590, file: !3341, line: 256, baseType: !6, size: 64, offset: 576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4590, file: !3341, line: 257, baseType: !6, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4590, file: !3341, line: 258, baseType: !6, size: 64, offset: 704)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4590, file: !3341, line: 260, baseType: !4605, size: 64, offset: 768)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3341, line: 156, size: 192, elements: !4607)
!4607 = !{!4608, !4609, !4611}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4606, file: !3341, line: 157, baseType: !4605, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4606, file: !3341, line: 158, baseType: !4610, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4606, file: !3341, line: 162, baseType: !85, size: 32, offset: 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4590, file: !3341, line: 262, baseType: !4610, size: 64, offset: 832)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4590, file: !3341, line: 264, baseType: !85, size: 32, offset: 896)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4590, file: !3341, line: 268, baseType: !85, size: 32, offset: 928)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4590, file: !3341, line: 270, baseType: !3367, size: 64, offset: 960)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4590, file: !3341, line: 274, baseType: !168, size: 16, offset: 1024)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4590, file: !3341, line: 275, baseType: !3371, size: 8, offset: 1040)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4590, file: !3341, line: 276, baseType: !3373, size: 8, offset: 1048)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4590, file: !3341, line: 280, baseType: !3377, size: 64, offset: 1088)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4590, file: !3341, line: 289, baseType: !3380, size: 64, offset: 1152)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4590, file: !3341, line: 297, baseType: !8, size: 64, offset: 1216)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4590, file: !3341, line: 298, baseType: !8, size: 64, offset: 1280)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4590, file: !3341, line: 299, baseType: !8, size: 64, offset: 1344)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4590, file: !3341, line: 300, baseType: !8, size: 64, offset: 1408)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4590, file: !3341, line: 302, baseType: !169, size: 64, offset: 1472)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4590, file: !3341, line: 303, baseType: !85, size: 32, offset: 1536)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4590, file: !3341, line: 305, baseType: !3388, size: 160, offset: 1568)
!4628 = !{!4629, !4630, !4631, !4632}
!4629 = !DILocalVariable(name: "fp", arg: 1, scope: !4584, file: !4585, line: 56, type: !4588)
!4630 = !DILocalVariable(name: "saved_errno", scope: !4584, file: !4585, line: 58, type: !85)
!4631 = !DILocalVariable(name: "fd", scope: !4584, file: !4585, line: 59, type: !85)
!4632 = !DILocalVariable(name: "result", scope: !4584, file: !4585, line: 60, type: !85)
!4633 = !DILocation(line: 56, column: 19, scope: !4584)
!4634 = !DILocation(line: 58, column: 7, scope: !4584)
!4635 = !DILocation(line: 60, column: 7, scope: !4584)
!4636 = !DILocation(line: 63, column: 8, scope: !4584)
!4637 = !DILocation(line: 59, column: 7, scope: !4584)
!4638 = !DILocation(line: 64, column: 10, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4584, file: !4585, line: 64, column: 7)
!4640 = !DILocation(line: 64, column: 7, scope: !4584)
!4641 = !DILocation(line: 65, column: 12, scope: !4639)
!4642 = !DILocation(line: 65, column: 5, scope: !4639)
!4643 = !DILocation(line: 70, column: 9, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4584, file: !4585, line: 70, column: 7)
!4645 = !DILocation(line: 70, column: 23, scope: !4644)
!4646 = !DILocation(line: 70, column: 33, scope: !4644)
!4647 = !DILocation(line: 70, column: 26, scope: !4644)
!4648 = !DILocation(line: 70, column: 59, scope: !4644)
!4649 = !DILocation(line: 71, column: 7, scope: !4644)
!4650 = !DILocation(line: 71, column: 10, scope: !4644)
!4651 = !DILocation(line: 70, column: 7, scope: !4584)
!4652 = !DILocation(line: 98, column: 12, scope: !4584)
!4653 = !DILocation(line: 103, column: 7, scope: !4584)
!4654 = !DILocation(line: 72, column: 19, scope: !4644)
!4655 = !DILocation(line: 103, column: 19, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4584, file: !4585, line: 103, column: 7)
!4657 = !DILocation(line: 105, column: 13, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4656, file: !4585, line: 104, column: 5)
!4659 = !DILocation(line: 107, column: 5, scope: !4658)
!4660 = !DILocation(line: 110, column: 1, scope: !4584)
!4661 = distinct !DISubprogram(name: "rpl_fflush", scope: !4662, file: !4662, line: 127, type: !4663, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !733, variables: !4705)
!4662 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!85, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3339, line: 7, baseType: !4667)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3341, line: 241, size: 1728, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4667, file: !3341, line: 242, baseType: !85, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4667, file: !3341, line: 247, baseType: !6, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4667, file: !3341, line: 248, baseType: !6, size: 64, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4667, file: !3341, line: 249, baseType: !6, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4667, file: !3341, line: 250, baseType: !6, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4667, file: !3341, line: 251, baseType: !6, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4667, file: !3341, line: 252, baseType: !6, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4667, file: !3341, line: 253, baseType: !6, size: 64, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4667, file: !3341, line: 254, baseType: !6, size: 64, offset: 512)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4667, file: !3341, line: 256, baseType: !6, size: 64, offset: 576)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4667, file: !3341, line: 257, baseType: !6, size: 64, offset: 640)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4667, file: !3341, line: 258, baseType: !6, size: 64, offset: 704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4667, file: !3341, line: 260, baseType: !4682, size: 64, offset: 768)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3341, line: 156, size: 192, elements: !4684)
!4684 = !{!4685, !4686, !4688}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4683, file: !3341, line: 157, baseType: !4682, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4683, file: !3341, line: 158, baseType: !4687, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4683, file: !3341, line: 162, baseType: !85, size: 32, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4667, file: !3341, line: 262, baseType: !4687, size: 64, offset: 832)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4667, file: !3341, line: 264, baseType: !85, size: 32, offset: 896)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4667, file: !3341, line: 268, baseType: !85, size: 32, offset: 928)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4667, file: !3341, line: 270, baseType: !3367, size: 64, offset: 960)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4667, file: !3341, line: 274, baseType: !168, size: 16, offset: 1024)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4667, file: !3341, line: 275, baseType: !3371, size: 8, offset: 1040)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4667, file: !3341, line: 276, baseType: !3373, size: 8, offset: 1048)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4667, file: !3341, line: 280, baseType: !3377, size: 64, offset: 1088)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4667, file: !3341, line: 289, baseType: !3380, size: 64, offset: 1152)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4667, file: !3341, line: 297, baseType: !8, size: 64, offset: 1216)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4667, file: !3341, line: 298, baseType: !8, size: 64, offset: 1280)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4667, file: !3341, line: 299, baseType: !8, size: 64, offset: 1344)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4667, file: !3341, line: 300, baseType: !8, size: 64, offset: 1408)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4667, file: !3341, line: 302, baseType: !169, size: 64, offset: 1472)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4667, file: !3341, line: 303, baseType: !85, size: 32, offset: 1536)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4667, file: !3341, line: 305, baseType: !3388, size: 160, offset: 1568)
!4705 = !{!4706}
!4706 = !DILocalVariable(name: "stream", arg: 1, scope: !4661, file: !4662, line: 127, type: !4665)
!4707 = !DILocation(line: 127, column: 19, scope: !4661)
!4708 = !DILocation(line: 148, column: 14, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4661, file: !4662, line: 148, column: 7)
!4710 = !DILocation(line: 148, column: 22, scope: !4709)
!4711 = !DILocation(line: 148, column: 27, scope: !4709)
!4712 = !DILocation(line: 148, column: 7, scope: !4661)
!4713 = !DILocation(line: 149, column: 12, scope: !4709)
!4714 = !DILocation(line: 149, column: 5, scope: !4709)
!4715 = !DILocalVariable(name: "fp", arg: 1, scope: !4716, file: !4662, line: 40, type: !4665)
!4716 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4662, file: !4662, line: 40, type: !4717, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !733, variables: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !4665}
!4719 = !{!4715}
!4720 = !DILocation(line: 40, column: 48, scope: !4716, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 153, column: 3, scope: !4661)
!4722 = !DILocation(line: 42, column: 11, scope: !4723, inlinedAt: !4721)
!4723 = distinct !DILexicalBlock(scope: !4716, file: !4662, line: 42, column: 7)
!4724 = !DILocation(line: 42, column: 18, scope: !4723, inlinedAt: !4721)
!4725 = !DILocation(line: 42, column: 7, scope: !4716, inlinedAt: !4721)
!4726 = !DILocation(line: 44, column: 5, scope: !4723, inlinedAt: !4721)
!4727 = !DILocation(line: 155, column: 10, scope: !4661)
!4728 = !DILocation(line: 155, column: 3, scope: !4661)
!4729 = !DILocation(line: 229, column: 1, scope: !4661)
!4730 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4731, file: !4731, line: 28, type: !4732, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4775)
!4731 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!85, !4734, !4774, !85}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3339, line: 7, baseType: !4736)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3341, line: 241, size: 1728, elements: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4736, file: !3341, line: 242, baseType: !85, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4736, file: !3341, line: 247, baseType: !6, size: 64, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4736, file: !3341, line: 248, baseType: !6, size: 64, offset: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4736, file: !3341, line: 249, baseType: !6, size: 64, offset: 192)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4736, file: !3341, line: 250, baseType: !6, size: 64, offset: 256)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4736, file: !3341, line: 251, baseType: !6, size: 64, offset: 320)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4736, file: !3341, line: 252, baseType: !6, size: 64, offset: 384)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4736, file: !3341, line: 253, baseType: !6, size: 64, offset: 448)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4736, file: !3341, line: 254, baseType: !6, size: 64, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4736, file: !3341, line: 256, baseType: !6, size: 64, offset: 576)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4736, file: !3341, line: 257, baseType: !6, size: 64, offset: 640)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4736, file: !3341, line: 258, baseType: !6, size: 64, offset: 704)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4736, file: !3341, line: 260, baseType: !4751, size: 64, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3341, line: 156, size: 192, elements: !4753)
!4753 = !{!4754, !4755, !4757}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4752, file: !3341, line: 157, baseType: !4751, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4752, file: !3341, line: 158, baseType: !4756, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4752, file: !3341, line: 162, baseType: !85, size: 32, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4736, file: !3341, line: 262, baseType: !4756, size: 64, offset: 832)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4736, file: !3341, line: 264, baseType: !85, size: 32, offset: 896)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4736, file: !3341, line: 268, baseType: !85, size: 32, offset: 928)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4736, file: !3341, line: 270, baseType: !3367, size: 64, offset: 960)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4736, file: !3341, line: 274, baseType: !168, size: 16, offset: 1024)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4736, file: !3341, line: 275, baseType: !3371, size: 8, offset: 1040)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4736, file: !3341, line: 276, baseType: !3373, size: 8, offset: 1048)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4736, file: !3341, line: 280, baseType: !3377, size: 64, offset: 1088)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4736, file: !3341, line: 289, baseType: !3380, size: 64, offset: 1152)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4736, file: !3341, line: 297, baseType: !8, size: 64, offset: 1216)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4736, file: !3341, line: 298, baseType: !8, size: 64, offset: 1280)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4736, file: !3341, line: 299, baseType: !8, size: 64, offset: 1344)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4736, file: !3341, line: 300, baseType: !8, size: 64, offset: 1408)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4736, file: !3341, line: 302, baseType: !169, size: 64, offset: 1472)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4736, file: !3341, line: 303, baseType: !85, size: 32, offset: 1536)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4736, file: !3341, line: 305, baseType: !3388, size: 160, offset: 1568)
!4774 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3508, line: 57, baseType: !3367)
!4775 = !{!4776, !4777, !4778, !4779}
!4776 = !DILocalVariable(name: "fp", arg: 1, scope: !4730, file: !4731, line: 28, type: !4734)
!4777 = !DILocalVariable(name: "offset", arg: 2, scope: !4730, file: !4731, line: 28, type: !4774)
!4778 = !DILocalVariable(name: "whence", arg: 3, scope: !4730, file: !4731, line: 28, type: !85)
!4779 = !DILocalVariable(name: "pos", scope: !4780, file: !4731, line: 116, type: !4774)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !4731, line: 112, column: 5)
!4781 = distinct !DILexicalBlock(scope: !4730, file: !4731, line: 51, column: 7)
!4782 = !DILocation(line: 28, column: 15, scope: !4730)
!4783 = !DILocation(line: 28, column: 25, scope: !4730)
!4784 = !DILocation(line: 28, column: 37, scope: !4730)
!4785 = !DILocation(line: 51, column: 11, scope: !4781)
!4786 = !DILocation(line: 51, column: 31, scope: !4781)
!4787 = !DILocation(line: 51, column: 24, scope: !4781)
!4788 = !DILocation(line: 52, column: 7, scope: !4781)
!4789 = !DILocation(line: 52, column: 14, scope: !4781)
!4790 = !DILocation(line: 52, column: 35, scope: !4781)
!4791 = !{!1155, !756, i64 32}
!4792 = !DILocation(line: 52, column: 28, scope: !4781)
!4793 = !DILocation(line: 53, column: 7, scope: !4781)
!4794 = !DILocation(line: 53, column: 14, scope: !4781)
!4795 = !{!1155, !756, i64 72}
!4796 = !DILocation(line: 53, column: 28, scope: !4781)
!4797 = !DILocation(line: 51, column: 7, scope: !4730)
!4798 = !DILocation(line: 116, column: 26, scope: !4780)
!4799 = !DILocation(line: 116, column: 19, scope: !4780)
!4800 = !DILocation(line: 116, column: 13, scope: !4780)
!4801 = !DILocation(line: 117, column: 15, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4780, file: !4731, line: 117, column: 11)
!4803 = !DILocation(line: 117, column: 11, scope: !4780)
!4804 = !DILocation(line: 127, column: 11, scope: !4780)
!4805 = !DILocation(line: 127, column: 18, scope: !4780)
!4806 = !DILocation(line: 128, column: 11, scope: !4780)
!4807 = !DILocation(line: 128, column: 19, scope: !4780)
!4808 = !{!1155, !1156, i64 144}
!4809 = !DILocation(line: 159, column: 7, scope: !4780)
!4810 = !DILocation(line: 161, column: 10, scope: !4730)
!4811 = !DILocation(line: 161, column: 3, scope: !4730)
!4812 = !DILocation(line: 162, column: 1, scope: !4730)
