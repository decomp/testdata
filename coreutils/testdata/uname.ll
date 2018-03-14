; ModuleID = 'coreutils-8.27/src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [362 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown:\0A  -s, --kernel-name        print the kernel name\0A  -n, --nodename           print the network node hostname\0A  -r, --kernel-release     print the kernel release\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [303 x i8] c"  -v, --kernel-version     print the kernel version\0A  -m, --machine            print the machine hardware name\0A  -p, --processor          print the processor type (non-portable)\0A  -i, --hardware-platform  print the hardware platform (non-portable)\0A  -o, --operating-system   print the operating system\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@emit_ancillary_info.infomap = internal unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16, !dbg !0
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !53
@.str.30 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !67
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@print_element.printed = internal unnamed_addr global i1 false, align 1
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !17
@.str.13 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@uname_mode = local_unnamed_addr global i32 1, align 4, !dbg !92
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !97
@.str.47 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !102
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !107
@.str.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !110
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !117
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !124
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !169
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !176
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !186
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !193
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !200
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !188
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !202
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.86 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.99 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.103 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.104 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !208
@.str.1.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !217
@.str.3.130 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.131 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.132 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.133 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.134 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !613 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !617, metadata !618), !dbg !619
  %2 = icmp eq i32 %0, 0, !dbg !620
  br i1 %2, label %8, label %3, !dbg !622

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !623, !tbaa !625
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !623
  %6 = load i8*, i8** @program_name, align 8, !dbg !623, !tbaa !625
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !623
  br label %76, !dbg !623

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !629
  %10 = load i8*, i8** @program_name, align 8, !dbg !629, !tbaa !625
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !629
  %12 = load i32, i32* @uname_mode, align 4, !dbg !631, !tbaa !633
  %13 = icmp eq i32 %12, 1, !dbg !635
  br i1 %13, label %14, label %21, !dbg !636

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !637
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !625
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !637
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !639
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !625
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !639
  br label %25, !dbg !640

; <label>:21:                                     ; preds = %8
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !641
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !625
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23) #10, !dbg !641
  br label %25

; <label>:25:                                     ; preds = %21, %14
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !643
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !625
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !643
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !644
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !625
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !644
  %32 = load i32, i32* @uname_mode, align 4, !dbg !645, !tbaa !633
  %33 = icmp eq i32 %32, 1, !dbg !645
  %34 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !645
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !79, metadata !618) #10, !dbg !646
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !80, metadata !618) #10, !dbg !648
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %35 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !650
  %36 = icmp eq i32 %35, 0, !dbg !650
  br i1 %36, label %40, label %37, !dbg !651

; <label>:37:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %38 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !650
  %39 = icmp eq i32 %38, 0, !dbg !650
  br i1 %39, label %40, label %56, !dbg !651

; <label>:40:                                     ; preds = %65, %62, %59, %56, %37, %25
  %41 = phi %struct.infomap* [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), %25 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), %37 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 2), %56 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 3), %59 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 4), %62 ], [ %68, %65 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !652
  %43 = load i8*, i8** %42, align 8, !dbg !652, !tbaa !654
  %44 = icmp eq i8* %43, null, !dbg !656
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !80, metadata !618) #10, !dbg !648
  %45 = select i1 %44, i8* %34, i8* %43, !dbg !657
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !80, metadata !618) #10, !dbg !648
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !658
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !658
  %48 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !88, metadata !618) #10, !dbg !660
  %49 = icmp eq i8* %48, null, !dbg !661
  br i1 %49, label %69, label %50, !dbg !663

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !664
  %52 = icmp eq i32 %51, 0, !dbg !664
  br i1 %52, label %69, label %53, !dbg !665

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !666
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %34) #10, !dbg !666
  br label %69, !dbg !668

; <label>:56:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %57 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !650
  %58 = icmp eq i32 %57, 0, !dbg !650
  br i1 %58, label %40, label %59, !dbg !651

; <label>:59:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %60 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #14, !dbg !650
  %61 = icmp eq i32 %60, 0, !dbg !650
  br i1 %61, label %40, label %62, !dbg !651

; <label>:62:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %63 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #14, !dbg !650
  %64 = icmp eq i32 %63, 0, !dbg !650
  br i1 %64, label %40, label %65, !dbg !651

; <label>:65:                                     ; preds = %62
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %66 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #14, !dbg !650
  %67 = icmp eq i32 %66, 0, !dbg !650
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !81, metadata !618) #10, !dbg !649
  %68 = select i1 %67, %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 5), %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 6), !dbg !651
  br label %40, !dbg !651

; <label>:69:                                     ; preds = %40, %50, %53
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !669
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %34) #10, !dbg !669
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !670
  %73 = icmp eq i8* %45, %34, !dbg !670
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !670
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %45, i8* %74) #10, !dbg !670
  br label %76

; <label>:76:                                     ; preds = %69, %3
  tail call void @exit(i32 %0) #15, !dbg !671
  unreachable, !dbg !671
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !19 {
  %3 = alloca %struct.utsname, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !25, metadata !618), !dbg !672
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !26, metadata !618), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !618), !dbg !674
  %4 = load i8*, i8** %1, align 8, !dbg !675, !tbaa !625
  tail call void @set_program_name(i8* %4) #10, !dbg !676
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !677
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !678
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !679
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !681, metadata !618) #10, !dbg !687
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !684, metadata !618) #10, !dbg !689
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !686, metadata !618) #10, !dbg !690
  %9 = load i32, i32* @uname_mode, align 4, !dbg !691, !tbaa !633
  %10 = icmp eq i32 %9, 2, !dbg !693
  br i1 %10, label %12, label %11, !dbg !694

; <label>:11:                                     ; preds = %2
  br label %22, !dbg !695

; <label>:12:                                     ; preds = %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* null) #10, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !685, metadata !618) #10, !dbg !699
  switch i32 %13, label %21 [
    i32 -1, label %51
    i32 -130, label %14
    i32 -131, label %15
  ], !dbg !700

; <label>:14:                                     ; preds = %12
  tail call void @usage(i32 0) #15, !dbg !701
  unreachable, !dbg !701

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !625
  %17 = load i32, i32* @uname_mode, align 4, !dbg !704, !tbaa !633
  %18 = icmp eq i32 %17, 1, !dbg !704
  %19 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !704
  %20 = load i8*, i8** @Version, align 8, !dbg !704, !tbaa !625
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* null) #10, !dbg !704
  tail call void @exit(i32 0) #15, !dbg !704
  unreachable, !dbg !704

; <label>:21:                                     ; preds = %12
  tail call void @usage(i32 1) #15, !dbg !705
  unreachable, !dbg !705

; <label>:22:                                     ; preds = %41, %11
  %23 = phi i32 [ 0, %11 ], [ %42, %41 ]
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !686, metadata !618) #10, !dbg !690
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* null) #10, !dbg !695
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !685, metadata !618) #10, !dbg !699
  switch i32 %24, label %50 [
    i32 -1, label %51
    i32 97, label %41
    i32 115, label %25
    i32 110, label %27
    i32 114, label %29
    i32 118, label %31
    i32 109, label %33
    i32 112, label %35
    i32 105, label %37
    i32 111, label %39
    i32 -130, label %43
    i32 -131, label %44
  ], !dbg !706

; <label>:25:                                     ; preds = %22
  %26 = or i32 %23, 1, !dbg !707
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !710

; <label>:27:                                     ; preds = %22
  %28 = or i32 %23, 2, !dbg !711
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !712

; <label>:29:                                     ; preds = %22
  %30 = or i32 %23, 4, !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !714

; <label>:31:                                     ; preds = %22
  %32 = or i32 %23, 8, !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !716

; <label>:33:                                     ; preds = %22
  %34 = or i32 %23, 16, !dbg !717
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !718

; <label>:35:                                     ; preds = %22
  %36 = or i32 %23, 32, !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !720

; <label>:37:                                     ; preds = %22
  %38 = or i32 %23, 64, !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !722

; <label>:39:                                     ; preds = %22
  %40 = or i32 %23, 128, !dbg !723
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !686, metadata !618) #10, !dbg !690
  br label %41, !dbg !724

; <label>:41:                                     ; preds = %39, %37, %35, %33, %31, %29, %27, %25, %22
  %42 = phi i32 [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ -1, %22 ]
  br label %22, !dbg !690, !llvm.loop !725

; <label>:43:                                     ; preds = %22
  tail call void @usage(i32 0) #15, !dbg !728
  unreachable, !dbg !728

; <label>:44:                                     ; preds = %22
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !625
  %46 = load i32, i32* @uname_mode, align 4, !dbg !729, !tbaa !633
  %47 = icmp eq i32 %46, 1, !dbg !729
  %48 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !729
  %49 = load i8*, i8** @Version, align 8, !dbg !729, !tbaa !625
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %45, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* null) #10, !dbg !729
  tail call void @exit(i32 0) #15, !dbg !729
  unreachable, !dbg !729

; <label>:50:                                     ; preds = %22
  tail call void @usage(i32 1) #15, !dbg !730
  unreachable, !dbg !730

; <label>:51:                                     ; preds = %22, %12
  %52 = phi i32 [ 16, %12 ], [ %23, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !686, metadata !618) #10, !dbg !690
  %53 = load i32, i32* @optind, align 4, !dbg !731, !tbaa !633
  %54 = icmp eq i32 %53, %0, !dbg !733
  br i1 %54, label %62, label %55, !dbg !734

; <label>:55:                                     ; preds = %51
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !735
  %57 = load i32, i32* @optind, align 4, !dbg !737, !tbaa !633
  %58 = sext i32 %57 to i64, !dbg !738
  %59 = getelementptr inbounds i8*, i8** %1, i64 %58, !dbg !738
  %60 = load i8*, i8** %59, align 8, !dbg !738, !tbaa !625
  %61 = tail call i8* @quote(i8* %60) #10, !dbg !739
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %56, i8* %61) #10, !dbg !740
  tail call void @usage(i32 1) #15, !dbg !741
  unreachable, !dbg !741

; <label>:62:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !27, metadata !618), !dbg !674
  %63 = icmp eq i32 %52, 0, !dbg !742
  %64 = select i1 %63, i32 1, i32 %52, !dbg !744
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !27, metadata !618), !dbg !674
  %65 = and i32 %64, 31, !dbg !745
  %66 = icmp eq i32 %65, 0, !dbg !745
  br i1 %66, label %175, label %67, !dbg !746

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 0, i64 0, !dbg !747
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %68) #10, !dbg !747
  tail call void @llvm.dbg.value(metadata %struct.utsname* %3, i64 0, metadata !29, metadata !618), !dbg !748
  %69 = call i32 @uname(%struct.utsname* nonnull %3) #10, !dbg !749
  %70 = icmp eq i32 %69, -1, !dbg !751
  br i1 %70, label %71, label %75, !dbg !752

; <label>:71:                                     ; preds = %67
  %72 = tail call i32* @__errno_location() #16, !dbg !753
  %73 = load i32, i32* %72, align 4, !dbg !753, !tbaa !633
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !753
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %73, i8* %74) #10, !dbg !753
  unreachable, !dbg !753

; <label>:75:                                     ; preds = %67
  %76 = and i32 %64, 1, !dbg !754
  %77 = icmp eq i32 %76, 0, !dbg !754
  br i1 %77, label %94, label %78, !dbg !756

; <label>:78:                                     ; preds = %75
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !76, metadata !618) #10, !dbg !757
  %79 = load i1, i1* @print_element.printed, align 1
  br i1 %79, label %80, label %91, !dbg !759

; <label>:80:                                     ; preds = %78
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !766
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !769, !tbaa !625
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %81, i64 0, i32 5, !dbg !769
  %83 = load i8*, i8** %82, align 8, !dbg !769, !tbaa !770
  %84 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %81, i64 0, i32 6, !dbg !769
  %85 = load i8*, i8** %84, align 8, !dbg !769, !tbaa !774
  %86 = icmp ult i8* %83, %85, !dbg !769
  br i1 %86, label %89, label %87, !dbg !769, !prof !775

; <label>:87:                                     ; preds = %80
  %88 = tail call i32 @__overflow(%struct._IO_FILE* %81, i32 32) #10, !dbg !769
  br label %91, !dbg !769

; <label>:89:                                     ; preds = %80
  %90 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !769
  store i8* %90, i8** %82, align 8, !dbg !769, !tbaa !770
  store i8 32, i8* %83, align 1, !dbg !769, !tbaa !776
  br label %91, !dbg !769

; <label>:91:                                     ; preds = %78, %87, %89
  store i1 true, i1* @print_element.printed, align 1
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !777, !tbaa !625
  %93 = call i32 @fputs_unlocked(i8* nonnull %68, %struct._IO_FILE* %92) #10, !dbg !777
  br label %94, !dbg !778

; <label>:94:                                     ; preds = %75, %91
  %95 = and i32 %64, 2, !dbg !779
  %96 = icmp eq i32 %95, 0, !dbg !779
  br i1 %96, label %114, label %97, !dbg !781

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 1, i64 0, !dbg !782
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !76, metadata !618) #10, !dbg !783
  %99 = load i1, i1* @print_element.printed, align 1
  br i1 %99, label %100, label %111, !dbg !785

; <label>:100:                                    ; preds = %97
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !786
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !625
  %102 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 5, !dbg !788
  %103 = load i8*, i8** %102, align 8, !dbg !788, !tbaa !770
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 6, !dbg !788
  %105 = load i8*, i8** %104, align 8, !dbg !788, !tbaa !774
  %106 = icmp ult i8* %103, %105, !dbg !788
  br i1 %106, label %109, label %107, !dbg !788, !prof !775

; <label>:107:                                    ; preds = %100
  %108 = call i32 @__overflow(%struct._IO_FILE* %101, i32 32) #10, !dbg !788
  br label %111, !dbg !788

; <label>:109:                                    ; preds = %100
  %110 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !788
  store i8* %110, i8** %102, align 8, !dbg !788, !tbaa !770
  store i8 32, i8* %103, align 1, !dbg !788, !tbaa !776
  br label %111, !dbg !788

; <label>:111:                                    ; preds = %97, %107, %109
  store i1 true, i1* @print_element.printed, align 1
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !625
  %113 = call i32 @fputs_unlocked(i8* %98, %struct._IO_FILE* %112) #10, !dbg !789
  br label %114, !dbg !790

; <label>:114:                                    ; preds = %94, %111
  %115 = and i32 %64, 4, !dbg !791
  %116 = icmp eq i32 %115, 0, !dbg !791
  br i1 %116, label %134, label %117, !dbg !793

; <label>:117:                                    ; preds = %114
  %118 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 2, i64 0, !dbg !794
  call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !76, metadata !618) #10, !dbg !795
  %119 = load i1, i1* @print_element.printed, align 1
  br i1 %119, label %120, label %131, !dbg !797

; <label>:120:                                    ; preds = %117
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !798
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !800, !tbaa !625
  %122 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 5, !dbg !800
  %123 = load i8*, i8** %122, align 8, !dbg !800, !tbaa !770
  %124 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 6, !dbg !800
  %125 = load i8*, i8** %124, align 8, !dbg !800, !tbaa !774
  %126 = icmp ult i8* %123, %125, !dbg !800
  br i1 %126, label %129, label %127, !dbg !800, !prof !775

; <label>:127:                                    ; preds = %120
  %128 = call i32 @__overflow(%struct._IO_FILE* %121, i32 32) #10, !dbg !800
  br label %131, !dbg !800

; <label>:129:                                    ; preds = %120
  %130 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !800
  store i8* %130, i8** %122, align 8, !dbg !800, !tbaa !770
  store i8 32, i8* %123, align 1, !dbg !800, !tbaa !776
  br label %131, !dbg !800

; <label>:131:                                    ; preds = %117, %127, %129
  store i1 true, i1* @print_element.printed, align 1
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !801, !tbaa !625
  %133 = call i32 @fputs_unlocked(i8* %118, %struct._IO_FILE* %132) #10, !dbg !801
  br label %134, !dbg !802

; <label>:134:                                    ; preds = %114, %131
  %135 = and i32 %64, 8, !dbg !803
  %136 = icmp eq i32 %135, 0, !dbg !803
  br i1 %136, label %154, label %137, !dbg !805

; <label>:137:                                    ; preds = %134
  %138 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 3, i64 0, !dbg !806
  call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !76, metadata !618) #10, !dbg !807
  %139 = load i1, i1* @print_element.printed, align 1
  br i1 %139, label %140, label %151, !dbg !809

; <label>:140:                                    ; preds = %137
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !810
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !812, !tbaa !625
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %141, i64 0, i32 5, !dbg !812
  %143 = load i8*, i8** %142, align 8, !dbg !812, !tbaa !770
  %144 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %141, i64 0, i32 6, !dbg !812
  %145 = load i8*, i8** %144, align 8, !dbg !812, !tbaa !774
  %146 = icmp ult i8* %143, %145, !dbg !812
  br i1 %146, label %149, label %147, !dbg !812, !prof !775

; <label>:147:                                    ; preds = %140
  %148 = call i32 @__overflow(%struct._IO_FILE* %141, i32 32) #10, !dbg !812
  br label %151, !dbg !812

; <label>:149:                                    ; preds = %140
  %150 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !812
  store i8* %150, i8** %142, align 8, !dbg !812, !tbaa !770
  store i8 32, i8* %143, align 1, !dbg !812, !tbaa !776
  br label %151, !dbg !812

; <label>:151:                                    ; preds = %137, %147, %149
  store i1 true, i1* @print_element.printed, align 1
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !625
  %153 = call i32 @fputs_unlocked(i8* %138, %struct._IO_FILE* %152) #10, !dbg !813
  br label %154, !dbg !814

; <label>:154:                                    ; preds = %134, %151
  %155 = and i32 %64, 16, !dbg !815
  %156 = icmp eq i32 %155, 0, !dbg !815
  br i1 %156, label %174, label %157, !dbg !817

; <label>:157:                                    ; preds = %154
  %158 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 4, i64 0, !dbg !818
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !76, metadata !618) #10, !dbg !819
  %159 = load i1, i1* @print_element.printed, align 1
  br i1 %159, label %160, label %171, !dbg !821

; <label>:160:                                    ; preds = %157
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !822
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !824, !tbaa !625
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 5, !dbg !824
  %163 = load i8*, i8** %162, align 8, !dbg !824, !tbaa !770
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 6, !dbg !824
  %165 = load i8*, i8** %164, align 8, !dbg !824, !tbaa !774
  %166 = icmp ult i8* %163, %165, !dbg !824
  br i1 %166, label %169, label %167, !dbg !824, !prof !775

; <label>:167:                                    ; preds = %160
  %168 = call i32 @__overflow(%struct._IO_FILE* %161, i32 32) #10, !dbg !824
  br label %171, !dbg !824

; <label>:169:                                    ; preds = %160
  %170 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !824
  store i8* %170, i8** %162, align 8, !dbg !824, !tbaa !770
  store i8 32, i8* %163, align 1, !dbg !824, !tbaa !776
  br label %171, !dbg !824

; <label>:171:                                    ; preds = %157, %167, %169
  store i1 true, i1* @print_element.printed, align 1
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !825, !tbaa !625
  %173 = call i32 @fputs_unlocked(i8* %158, %struct._IO_FILE* %172) #10, !dbg !825
  br label %174, !dbg !826

; <label>:174:                                    ; preds = %154, %171
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %68) #10, !dbg !827
  br label %175, !dbg !828

; <label>:175:                                    ; preds = %62, %174
  %176 = and i32 %64, 32, !dbg !829
  %177 = icmp eq i32 %176, 0, !dbg !829
  %178 = icmp eq i32 %64, -1, !dbg !830
  %179 = or i1 %178, %177, !dbg !832
  br i1 %179, label %196, label %180, !dbg !832

; <label>:180:                                    ; preds = %175
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), i64 0, metadata !76, metadata !618) #10, !dbg !833
  %181 = load i1, i1* @print_element.printed, align 1
  br i1 %181, label %182, label %193, !dbg !835

; <label>:182:                                    ; preds = %180
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !836
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !838, !tbaa !625
  %184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 5, !dbg !838
  %185 = load i8*, i8** %184, align 8, !dbg !838, !tbaa !770
  %186 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 6, !dbg !838
  %187 = load i8*, i8** %186, align 8, !dbg !838, !tbaa !774
  %188 = icmp ult i8* %185, %187, !dbg !838
  br i1 %188, label %191, label %189, !dbg !838, !prof !775

; <label>:189:                                    ; preds = %182
  %190 = call i32 @__overflow(%struct._IO_FILE* %183, i32 32) #10, !dbg !838
  br label %193, !dbg !838

; <label>:191:                                    ; preds = %182
  %192 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !838
  store i8* %192, i8** %184, align 8, !dbg !838, !tbaa !770
  store i8 32, i8* %185, align 1, !dbg !838, !tbaa !776
  br label %193, !dbg !838

; <label>:193:                                    ; preds = %180, %189, %191
  store i1 true, i1* @print_element.printed, align 1
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839, !tbaa !625
  %195 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %194) #10, !dbg !839
  br label %196, !dbg !840

; <label>:196:                                    ; preds = %193, %175
  %197 = and i32 %64, 64, !dbg !841
  %198 = icmp eq i32 %197, 0, !dbg !841
  %199 = or i1 %178, %198, !dbg !842
  br i1 %199, label %216, label %200, !dbg !842

; <label>:200:                                    ; preds = %196
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), i64 0, metadata !76, metadata !618) #10, !dbg !843
  %201 = load i1, i1* @print_element.printed, align 1
  br i1 %201, label %202, label %213, !dbg !846

; <label>:202:                                    ; preds = %200
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !847
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !849, !tbaa !625
  %204 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 5, !dbg !849
  %205 = load i8*, i8** %204, align 8, !dbg !849, !tbaa !770
  %206 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 6, !dbg !849
  %207 = load i8*, i8** %206, align 8, !dbg !849, !tbaa !774
  %208 = icmp ult i8* %205, %207, !dbg !849
  br i1 %208, label %211, label %209, !dbg !849, !prof !775

; <label>:209:                                    ; preds = %202
  %210 = call i32 @__overflow(%struct._IO_FILE* %203, i32 32) #10, !dbg !849
  br label %213, !dbg !849

; <label>:211:                                    ; preds = %202
  %212 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !849
  store i8* %212, i8** %204, align 8, !dbg !849, !tbaa !770
  store i8 32, i8* %205, align 1, !dbg !849, !tbaa !776
  br label %213, !dbg !849

; <label>:213:                                    ; preds = %200, %209, %211
  store i1 true, i1* @print_element.printed, align 1
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !850, !tbaa !625
  %215 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %214) #10, !dbg !850
  br label %216, !dbg !851

; <label>:216:                                    ; preds = %213, %196
  %217 = trunc i32 %64 to i8, !dbg !852
  %218 = icmp slt i8 %217, 0, !dbg !852
  br i1 %218, label %219, label %235, !dbg !854

; <label>:219:                                    ; preds = %216
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !76, metadata !618) #10, !dbg !855
  %220 = load i1, i1* @print_element.printed, align 1
  br i1 %220, label %221, label %232, !dbg !857

; <label>:221:                                    ; preds = %219
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !760, metadata !618) #10, !dbg !858
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !860, !tbaa !625
  %223 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %222, i64 0, i32 5, !dbg !860
  %224 = load i8*, i8** %223, align 8, !dbg !860, !tbaa !770
  %225 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %222, i64 0, i32 6, !dbg !860
  %226 = load i8*, i8** %225, align 8, !dbg !860, !tbaa !774
  %227 = icmp ult i8* %224, %226, !dbg !860
  br i1 %227, label %230, label %228, !dbg !860, !prof !775

; <label>:228:                                    ; preds = %221
  %229 = call i32 @__overflow(%struct._IO_FILE* %222, i32 32) #10, !dbg !860
  br label %232, !dbg !860

; <label>:230:                                    ; preds = %221
  %231 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !860
  store i8* %231, i8** %223, align 8, !dbg !860, !tbaa !770
  store i8 32, i8* %224, align 1, !dbg !860, !tbaa !776
  br label %232, !dbg !860

; <label>:232:                                    ; preds = %219, %228, %230
  store i1 true, i1* @print_element.printed, align 1
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !861, !tbaa !625
  %234 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %233) #10, !dbg !861
  br label %235, !dbg !862

; <label>:235:                                    ; preds = %232, %216
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !760, metadata !618) #10, !dbg !863
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !865, !tbaa !625
  %237 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %236, i64 0, i32 5, !dbg !865
  %238 = load i8*, i8** %237, align 8, !dbg !865, !tbaa !770
  %239 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %236, i64 0, i32 6, !dbg !865
  %240 = load i8*, i8** %239, align 8, !dbg !865, !tbaa !774
  %241 = icmp ult i8* %238, %240, !dbg !865
  br i1 %241, label %244, label %242, !dbg !865, !prof !775

; <label>:242:                                    ; preds = %235
  %243 = call i32 @__overflow(%struct._IO_FILE* %236, i32 10) #10, !dbg !865
  br label %246, !dbg !865

; <label>:244:                                    ; preds = %235
  %245 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !865
  store i8* %245, i8** %237, align 8, !dbg !865, !tbaa !770
  store i8 10, i8* %238, align 1, !dbg !865, !tbaa !776
  br label %246, !dbg !865

; <label>:246:                                    ; preds = %242, %244
  ret i32 0, !dbg !866
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !867 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !869, metadata !618), !dbg !870
  store i8* %0, i8** @file_name, align 8, !dbg !871, !tbaa !625
  ret void, !dbg !872
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !873 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !877, metadata !618), !dbg !878
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !879, !tbaa !880
  ret void, !dbg !882
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !883 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !890, !tbaa !625
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !891
  %3 = icmp eq i32 %2, 0, !dbg !892
  br i1 %3, label %21, label %4, !dbg !893

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !894, !tbaa !880, !range !895
  %6 = icmp eq i8 %5, 0, !dbg !894
  %7 = tail call i32* @__errno_location() #16, !dbg !896
  br i1 %6, label %11, label %8, !dbg !898

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !899, !tbaa !633
  %10 = icmp eq i32 %9, 32, !dbg !900
  br i1 %10, label %21, label %11, !dbg !901

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !902
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !887, metadata !618), !dbg !903
  %13 = load i8*, i8** @file_name, align 8, !dbg !904, !tbaa !625
  %14 = icmp eq i8* %13, null, !dbg !904
  %15 = load i32, i32* %7, align 4, !tbaa !633
  br i1 %14, label %18, label %16, !dbg !905

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !906
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.51, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !907
  br label %19, !dbg !907

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.52, i64 0, i64 0), i8* %12) #10, !dbg !908
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !909, !tbaa !633
  tail call void @_exit(i32 %20) #15, !dbg !910
  unreachable, !dbg !910

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !911, !tbaa !625
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !913
  %24 = icmp eq i32 %23, 0, !dbg !914
  br i1 %24, label %27, label %25, !dbg !915

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !916, !tbaa !633
  tail call void @_exit(i32 %26) #15, !dbg !917
  unreachable, !dbg !917

; <label>:27:                                     ; preds = %21
  ret void, !dbg !918
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !919 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !921, metadata !618), !dbg !924
  %2 = icmp eq i8* %0, null, !dbg !925
  br i1 %2, label %3, label %6, !dbg !927

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !928, !tbaa !625
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !930
  tail call void @abort() #15, !dbg !931
  unreachable, !dbg !931

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !932
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !922, metadata !618), !dbg !933
  %8 = icmp eq i8* %7, null, !dbg !934
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !935
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !936
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !923, metadata !618), !dbg !937
  %11 = ptrtoint i8* %10 to i64, !dbg !938
  %12 = ptrtoint i8* %0 to i64, !dbg !938
  %13 = sub i64 %11, %12, !dbg !938
  %14 = icmp sgt i64 %13, 6, !dbg !940
  br i1 %14, label %15, label %24, !dbg !941

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !942
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #14, !dbg !943
  %18 = icmp eq i32 %17, 0, !dbg !944
  br i1 %18, label %19, label %24, !dbg !945

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !921, metadata !618), !dbg !924
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #14, !dbg !946
  %21 = icmp eq i32 %20, 0, !dbg !949
  br i1 %21, label %22, label %24, !dbg !950

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !951
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !921, metadata !618), !dbg !924
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !953, !tbaa !625
  br label %24, !dbg !954

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !921, metadata !618), !dbg !924
  store i8* %25, i8** @program_name, align 8, !dbg !955, !tbaa !625
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !956, !tbaa !625
  ret void, !dbg !957
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !958 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !963, metadata !618), !dbg !966
  %2 = tail call i32* @__errno_location() #16, !dbg !967
  %3 = load i32, i32* %2, align 4, !dbg !967, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !964, metadata !618), !dbg !968
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !969
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !969
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !969
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !970
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !965, metadata !618), !dbg !971
  store i32 %3, i32* %2, align 4, !dbg !972, !tbaa !633
  ret %struct.quoting_options* %8, !dbg !973
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !974 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !980, metadata !618), !dbg !981
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !982
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !982
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !983
  %5 = load i32, i32* %4, align 8, !dbg !983, !tbaa !984
  ret i32 %5, !dbg !986
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !987 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !991, metadata !618), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !992, metadata !618), !dbg !994
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !995
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !995
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !996
  store i32 %1, i32* %5, align 8, !dbg !997, !tbaa !984
  ret void, !dbg !998
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !999 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1003, metadata !618), !dbg !1011
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1004, metadata !618), !dbg !1012
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1005, metadata !618), !dbg !1013
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1006, metadata !618), !dbg !1014
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1015
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1015
  %6 = lshr i8 %1, 5, !dbg !1016
  %7 = zext i8 %6 to i64, !dbg !1016
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1007, metadata !618), !dbg !1018
  %9 = and i8 %1, 31, !dbg !1019
  %10 = zext i8 %9 to i32, !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1009, metadata !618), !dbg !1021
  %11 = load i32, i32* %8, align 4, !dbg !1022, !tbaa !633
  %12 = lshr i32 %11, %10, !dbg !1023
  %13 = and i32 %12, 1, !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1010, metadata !618), !dbg !1025
  %14 = and i32 %2, 1, !dbg !1026
  %15 = xor i32 %13, %14, !dbg !1027
  %16 = shl i32 %15, %10, !dbg !1028
  %17 = xor i32 %16, %11, !dbg !1029
  store i32 %17, i32* %8, align 4, !dbg !1029, !tbaa !633
  ret i32 %13, !dbg !1030
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1031 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1035, metadata !618), !dbg !1038
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1036, metadata !618), !dbg !1039
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1035, metadata !618), !dbg !1038
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1035, metadata !618), !dbg !1038
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1043
  %6 = load i32, i32* %5, align 4, !dbg !1043, !tbaa !1044
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1037, metadata !618), !dbg !1045
  store i32 %1, i32* %5, align 4, !dbg !1046, !tbaa !1044
  ret i32 %6, !dbg !1047
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1048 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1052, metadata !618), !dbg !1055
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1053, metadata !618), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1054, metadata !618), !dbg !1057
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1058
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1052, metadata !618), !dbg !1055
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1052, metadata !618), !dbg !1055
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1061
  store i32 10, i32* %6, align 8, !dbg !1062, !tbaa !984
  %7 = icmp ne i8* %1, null, !dbg !1063
  %8 = icmp ne i8* %2, null, !dbg !1065
  %9 = and i1 %7, %8, !dbg !1066
  br i1 %9, label %11, label %10, !dbg !1066

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1067
  unreachable, !dbg !1067

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1068
  store i8* %1, i8** %12, align 8, !dbg !1069, !tbaa !1070
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1071
  store i8* %2, i8** %13, align 8, !dbg !1072, !tbaa !1073
  ret void, !dbg !1074
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1075 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1079, metadata !618), !dbg !1087
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1080, metadata !618), !dbg !1088
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1081, metadata !618), !dbg !1089
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1082, metadata !618), !dbg !1090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1083, metadata !618), !dbg !1091
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1092
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1084, metadata !618), !dbg !1093
  %8 = tail call i32* @__errno_location() #16, !dbg !1094
  %9 = load i32, i32* %8, align 4, !dbg !1094, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1085, metadata !618), !dbg !1095
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1096
  %11 = load i32, i32* %10, align 8, !dbg !1096, !tbaa !984
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1097
  %13 = load i32, i32* %12, align 4, !dbg !1097, !tbaa !1044
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1098
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1099
  %16 = load i8*, i8** %15, align 8, !dbg !1099, !tbaa !1070
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1100
  %18 = load i8*, i8** %17, align 8, !dbg !1100, !tbaa !1073
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1101
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1086, metadata !618), !dbg !1102
  store i32 %9, i32* %8, align 4, !dbg !1103, !tbaa !633
  ret i64 %19, !dbg !1104
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1105 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1111, metadata !618), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1112, metadata !618), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1113, metadata !618), !dbg !1177
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1114, metadata !618), !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1115, metadata !618), !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1116, metadata !618), !dbg !1180
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1117, metadata !618), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1118, metadata !618), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1119, metadata !618), !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1121, metadata !618), !dbg !1184
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1122, metadata !618), !dbg !1185
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1123, metadata !618), !dbg !1186
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1124, metadata !618), !dbg !1187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1125, metadata !618), !dbg !1188
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1189
  %14 = icmp eq i64 %13, 1, !dbg !1190
  %15 = lshr i32 %5, 1, !dbg !1191
  %16 = trunc i32 %15 to i8, !dbg !1191
  %17 = and i8 %16, 1, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1127, metadata !618), !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1128, metadata !618), !dbg !1192
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1129, metadata !618), !dbg !1193
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !618), !dbg !1194
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1195

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1130, metadata !618), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1125, metadata !618), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1124, metadata !618), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1119, metadata !618), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1118, metadata !618), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1115, metadata !618), !dbg !1179
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
  ], !dbg !1196

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1115, metadata !618), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1115, metadata !618), !dbg !1179
  br label %94, !dbg !1197

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1115, metadata !618), !dbg !1179
  %43 = and i8 %36, 1, !dbg !1199
  %44 = icmp eq i8 %43, 0, !dbg !1199
  br i1 %44, label %45, label %94, !dbg !1197

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1201
  br i1 %46, label %94, label %47, !dbg !1204

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1201, !tbaa !776
  br label %94, !dbg !1201

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %28), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1118, metadata !618), !dbg !1182
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %28), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1119, metadata !618), !dbg !1183
  br label %51, !dbg !1210

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1119, metadata !618), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1118, metadata !618), !dbg !1182
  %54 = and i8 %36, 1, !dbg !1211
  %55 = icmp eq i8 %54, 0, !dbg !1211
  br i1 %55, label %56, label %72, !dbg !1213

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1121, metadata !618), !dbg !1184
  %57 = load i8, i8* %52, align 1, !dbg !1214, !tbaa !776
  %58 = icmp eq i8 %57, 0, !dbg !1217
  br i1 %58, label %72, label %59, !dbg !1217

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1218

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1123, metadata !618), !dbg !1186
  %64 = icmp ult i64 %63, %40, !dbg !1218
  br i1 %64, label %65, label %67, !dbg !1221

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1218
  store i8 %61, i8* %66, align 1, !dbg !1218, !tbaa !776
  br label %67, !dbg !1218

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1121, metadata !618), !dbg !1184
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1121, metadata !618), !dbg !1184
  %70 = load i8, i8* %69, align 1, !dbg !1214, !tbaa !776
  %71 = icmp eq i8 %70, 0, !dbg !1217
  br i1 %71, label %72, label %60, !dbg !1217, !llvm.loop !1223

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !618), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1123, metadata !618), !dbg !1186
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1124, metadata !618), !dbg !1187
  br label %94, !dbg !1226

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !618), !dbg !1188
  br label %76, !dbg !1227

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1125, metadata !618), !dbg !1188
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1127, metadata !618), !dbg !1191
  br label %78, !dbg !1228

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1125, metadata !618), !dbg !1188
  %81 = and i8 %80, 1, !dbg !1229
  %82 = icmp eq i8 %81, 0, !dbg !1229
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !618), !dbg !1188
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1231
  br label %84, !dbg !1231

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1125, metadata !618), !dbg !1188
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1115, metadata !618), !dbg !1179
  %87 = and i8 %86, 1, !dbg !1232
  %88 = icmp eq i8 %87, 0, !dbg !1232
  br i1 %88, label %89, label %94, !dbg !1234

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1235
  br i1 %90, label %94, label %91, !dbg !1238

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1235, !tbaa !776
  br label %94, !dbg !1235

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1127, metadata !618), !dbg !1191
  br label %94, !dbg !1239

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1240
  unreachable, !dbg !1240

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1127, metadata !618), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1125, metadata !618), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1124, metadata !618), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1119, metadata !618), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1118, metadata !618), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1115, metadata !618), !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1120, metadata !618), !dbg !1241
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
  br label %122, !dbg !1242

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1130, metadata !618), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1120, metadata !618), !dbg !1241
  %131 = icmp eq i64 %126, -1, !dbg !1243
  br i1 %131, label %134, label %132, !dbg !1244

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1245
  br i1 %133, label %590, label %138, !dbg !1246

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1247
  %136 = load i8, i8* %135, align 1, !dbg !1247, !tbaa !776
  %137 = icmp eq i8 %136, 0, !dbg !1248
  br i1 %137, label %590, label %138, !dbg !1246

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1136, metadata !618), !dbg !1249
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1137, metadata !618), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1138, metadata !618), !dbg !1251
  br i1 %108, label %139, label %154, !dbg !1252

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1254
  %141 = and i1 %109, %131, !dbg !1255
  br i1 %141, label %142, label %144, !dbg !1255

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1114, metadata !618), !dbg !1178
  br label %144, !dbg !1257

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1114, metadata !618), !dbg !1178
  %146 = icmp ugt i64 %140, %145, !dbg !1258
  br i1 %146, label %154, label %147, !dbg !1259

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1260
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1261
  %150 = icmp ne i32 %149, 0, !dbg !1262
  %151 = or i1 %150, %111, !dbg !1263
  %152 = xor i1 %150, true, !dbg !1263
  %153 = zext i1 %152 to i8, !dbg !1263
  br i1 %151, label %154, label %635, !dbg !1263

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1136, metadata !618), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1114, metadata !618), !dbg !1178
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1264
  %158 = load i8, i8* %157, align 1, !dbg !1264, !tbaa !776
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1131, metadata !618), !dbg !1265
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
  ], !dbg !1266

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1267

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1268

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !618), !dbg !1250
  %162 = and i8 %127, 1, !dbg !1272
  %163 = icmp eq i8 %162, 0, !dbg !1272
  %164 = and i1 %113, %163, !dbg !1272
  br i1 %164, label %165, label %181, !dbg !1272

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1274
  br i1 %166, label %167, label %169, !dbg !1278

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1274
  store i8 39, i8* %168, align 1, !dbg !1274, !tbaa !776
  br label %169, !dbg !1274

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1121, metadata !618), !dbg !1184
  %171 = icmp ult i64 %170, %130, !dbg !1279
  br i1 %171, label %172, label %174, !dbg !1282

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1279
  store i8 36, i8* %173, align 1, !dbg !1279, !tbaa !776
  br label %174, !dbg !1279

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1121, metadata !618), !dbg !1184
  %176 = icmp ult i64 %175, %130, !dbg !1283
  br i1 %176, label %177, label %179, !dbg !1286

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1283
  store i8 39, i8* %178, align 1, !dbg !1283, !tbaa !776
  br label %179, !dbg !1283

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !618), !dbg !1192
  br label %181, !dbg !1287

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1121, metadata !618), !dbg !1184
  %184 = icmp ult i64 %182, %130, !dbg !1288
  br i1 %184, label %185, label %187, !dbg !1291

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1288
  store i8 92, i8* %186, align 1, !dbg !1288, !tbaa !776
  br label %187, !dbg !1288

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1121, metadata !618), !dbg !1184
  br i1 %105, label %189, label %470, !dbg !1292

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1294
  %191 = icmp ult i64 %190, %155, !dbg !1295
  br i1 %191, label %192, label %470, !dbg !1296

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1297
  %194 = load i8, i8* %193, align 1, !dbg !1297, !tbaa !776
  %195 = add i8 %194, -48, !dbg !1298
  %196 = icmp ult i8 %195, 10, !dbg !1298
  br i1 %196, label %197, label %470, !dbg !1298

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1299
  br i1 %198, label %199, label %201, !dbg !1303

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1299
  store i8 48, i8* %200, align 1, !dbg !1299, !tbaa !776
  br label %201, !dbg !1299

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1121, metadata !618), !dbg !1184
  %203 = icmp ult i64 %202, %130, !dbg !1304
  br i1 %203, label %204, label %206, !dbg !1307

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1304
  store i8 48, i8* %205, align 1, !dbg !1304, !tbaa !776
  br label %206, !dbg !1304

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1121, metadata !618), !dbg !1184
  br label %470, !dbg !1308

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1309

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1310

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1311

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1313

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1315
  %214 = icmp ult i64 %213, %155, !dbg !1316
  br i1 %214, label %215, label %470, !dbg !1317

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1318
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1319
  %218 = load i8, i8* %217, align 1, !dbg !1319, !tbaa !776
  %219 = icmp eq i8 %218, 63, !dbg !1320
  br i1 %219, label %220, label %470, !dbg !1321

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1322
  %222 = load i8, i8* %221, align 1, !dbg !1322, !tbaa !776
  %223 = sext i8 %222 to i32, !dbg !1322
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
  ], !dbg !1323

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1324

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1120, metadata !618), !dbg !1241
  %226 = icmp ult i64 %124, %130, !dbg !1326
  br i1 %226, label %227, label %229, !dbg !1329

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1326
  store i8 63, i8* %228, align 1, !dbg !1326, !tbaa !776
  br label %229, !dbg !1326

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1121, metadata !618), !dbg !1184
  %231 = icmp ult i64 %230, %130, !dbg !1330
  br i1 %231, label %232, label %234, !dbg !1333

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1330
  store i8 34, i8* %233, align 1, !dbg !1330, !tbaa !776
  br label %234, !dbg !1330

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1121, metadata !618), !dbg !1184
  %236 = icmp ult i64 %235, %130, !dbg !1334
  br i1 %236, label %237, label %239, !dbg !1337

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1334
  store i8 34, i8* %238, align 1, !dbg !1334, !tbaa !776
  br label %239, !dbg !1334

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1121, metadata !618), !dbg !1184
  %241 = icmp ult i64 %240, %130, !dbg !1338
  br i1 %241, label %242, label %244, !dbg !1341

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1338
  store i8 63, i8* %243, align 1, !dbg !1338, !tbaa !776
  br label %244, !dbg !1338

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1121, metadata !618), !dbg !1184
  br label %470, !dbg !1342

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1135, metadata !618), !dbg !1343
  br label %256, !dbg !1344

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1135, metadata !618), !dbg !1343
  br label %256, !dbg !1345

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1135, metadata !618), !dbg !1343
  br label %254, !dbg !1346

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1135, metadata !618), !dbg !1343
  br label %254, !dbg !1347

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1135, metadata !618), !dbg !1343
  br label %256, !dbg !1348

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1135, metadata !618), !dbg !1343
  br i1 %113, label %252, label %253, !dbg !1349

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1350

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1353

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1135, metadata !618), !dbg !1343
  br i1 %117, label %256, label %635, !dbg !1355

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1135, metadata !618), !dbg !1343
  br i1 %104, label %497, label %470, !dbg !1357

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1358
  br i1 %259, label %260, label %265, !dbg !1360

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1361, !tbaa !776
  %262 = icmp ne i8 %261, 0, !dbg !1362
  %263 = icmp ne i64 %123, 0, !dbg !1363
  %264 = or i1 %263, %262, !dbg !1365
  br i1 %264, label %470, label %271, !dbg !1365

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1366
  %267 = icmp ne i64 %123, 0, !dbg !1363
  %268 = or i1 %267, %266, !dbg !1360
  br i1 %268, label %470, label %271, !dbg !1360

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1363
  br i1 %270, label %271, label %470, !dbg !1367

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1138, metadata !618), !dbg !1251
  br label %272, !dbg !1368

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1138, metadata !618), !dbg !1251
  br i1 %117, label %470, label %635, !dbg !1369

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1138, metadata !618), !dbg !1251
  br i1 %113, label %275, label %470, !dbg !1371

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1372

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1375
  %278 = icmp ne i64 %125, 0, !dbg !1377
  %279 = or i1 %278, %277, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1112, metadata !618), !dbg !1176
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1378
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1122, metadata !618), !dbg !1185
  %282 = icmp ult i64 %124, %281, !dbg !1379
  br i1 %282, label %283, label %285, !dbg !1382

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1379
  store i8 39, i8* %284, align 1, !dbg !1379, !tbaa !776
  br label %285, !dbg !1379

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1121, metadata !618), !dbg !1184
  %287 = icmp ult i64 %286, %281, !dbg !1383
  br i1 %287, label %288, label %290, !dbg !1386

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1383
  store i8 92, i8* %289, align 1, !dbg !1383, !tbaa !776
  br label %290, !dbg !1383

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1121, metadata !618), !dbg !1184
  %292 = icmp ult i64 %291, %281, !dbg !1387
  br i1 %292, label %293, label %295, !dbg !1390

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1387
  store i8 39, i8* %294, align 1, !dbg !1387, !tbaa !776
  br label %295, !dbg !1387

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1128, metadata !618), !dbg !1192
  br label %470, !dbg !1391

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1392

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1139, metadata !618), !dbg !1393
  %299 = tail call i16** @__ctype_b_loc() #16, !dbg !1394
  %300 = load i16*, i16** %299, align 8, !dbg !1394, !tbaa !625
  %301 = zext i8 %158 to i64, !dbg !1394
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1394
  %303 = load i16, i16* %302, align 2, !dbg !1394, !tbaa !1396
  %304 = lshr i16 %303, 14, !dbg !1397
  %305 = trunc i16 %304 to i8, !dbg !1397
  %306 = and i8 %305, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1142, metadata !618), !dbg !1398
  br label %362, !dbg !1399

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1400
  store i64 0, i64* %10, align 8, !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1142, metadata !618), !dbg !1398
  %308 = icmp eq i64 %155, -1, !dbg !1402
  br i1 %308, label %309, label %311, !dbg !1404

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1114, metadata !618), !dbg !1178
  br label %311, !dbg !1406

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1114, metadata !618), !dbg !1178
  br label %313, !dbg !1407, !llvm.loop !1408

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1142, metadata !618), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1410
  %316 = add i64 %314, %123, !dbg !1411
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1412
  %318 = sub i64 %312, %316, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1143, metadata !618), !dbg !1414
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1161, metadata !618), !dbg !1415
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1164, metadata !618), !dbg !1417
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1418

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1142, metadata !618), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1139, metadata !618), !dbg !1393
  %321 = icmp ugt i64 %312, %316, !dbg !1419
  br i1 %321, label %322, label %347, !dbg !1421

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1422

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1139, metadata !618), !dbg !1393
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1422
  %327 = load i8, i8* %326, align 1, !dbg !1422, !tbaa !776
  %328 = icmp eq i8 %327, 0, !dbg !1421
  br i1 %328, label %347, label %329, !dbg !1423

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1139, metadata !618), !dbg !1393
  %331 = add i64 %330, %123, !dbg !1425
  %332 = icmp ult i64 %331, %312, !dbg !1419
  br i1 %332, label %323, label %347, !dbg !1421, !llvm.loop !1426

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1427
  %335 = and i1 %115, %334, !dbg !1430
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1165, metadata !618), !dbg !1431
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1165, metadata !618), !dbg !1431
  br i1 %335, label %336, label %350, !dbg !1430

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1432

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1165, metadata !618), !dbg !1431
  %339 = add i64 %338, %316, !dbg !1432
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1433
  %341 = load i8, i8* %340, align 1, !dbg !1433, !tbaa !776
  %342 = sext i8 %341 to i32, !dbg !1433
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1434

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1165, metadata !618), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1165, metadata !618), !dbg !1431
  %345 = icmp ult i64 %344, %319, !dbg !1427
  br i1 %345, label %337, label %350, !dbg !1436, !llvm.loop !1437

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1439

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1142, metadata !618), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1439
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1440, !tbaa !633
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1161, metadata !618), !dbg !1415
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1442
  %353 = icmp eq i32 %352, 0, !dbg !1442
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1142, metadata !618), !dbg !1398
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1142, metadata !618), !dbg !1398
  %355 = add i64 %319, %314, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1142, metadata !618), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1143, metadata !618), !dbg !1414
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1445
  %357 = icmp eq i32 %356, 0, !dbg !1446
  br i1 %357, label %313, label %358, !dbg !1447, !llvm.loop !1408

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1448
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1142, metadata !618), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1439
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1448
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1142, metadata !618), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1139, metadata !618), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1114, metadata !618), !dbg !1178
  %366 = and i8 %365, 1, !dbg !1449
  %367 = icmp ne i8 %366, 0, !dbg !1449
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1138, metadata !618), !dbg !1251
  %368 = icmp ult i64 %364, 2, !dbg !1450
  %369 = or i1 %367, %112, !dbg !1451
  %370 = and i1 %368, %369, !dbg !1452
  br i1 %370, label %470, label %371, !dbg !1452

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1172, metadata !618), !dbg !1454
  br label %373, !dbg !1455

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1137, metadata !618), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1136, metadata !618), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1120, metadata !618), !dbg !1241
  br i1 %369, label %426, label %380, !dbg !1456

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1461

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !618), !dbg !1250
  %382 = and i8 %376, 1, !dbg !1464
  %383 = icmp eq i8 %382, 0, !dbg !1464
  %384 = and i1 %113, %383, !dbg !1464
  br i1 %384, label %385, label %401, !dbg !1464

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1466
  br i1 %386, label %387, label %389, !dbg !1470

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1466
  store i8 39, i8* %388, align 1, !dbg !1466, !tbaa !776
  br label %389, !dbg !1466

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1121, metadata !618), !dbg !1184
  %391 = icmp ult i64 %390, %130, !dbg !1471
  br i1 %391, label %392, label %394, !dbg !1474

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1471
  store i8 36, i8* %393, align 1, !dbg !1471, !tbaa !776
  br label %394, !dbg !1471

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1121, metadata !618), !dbg !1184
  %396 = icmp ult i64 %395, %130, !dbg !1475
  br i1 %396, label %397, label %399, !dbg !1478

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1475
  store i8 39, i8* %398, align 1, !dbg !1475, !tbaa !776
  br label %399, !dbg !1475

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !618), !dbg !1192
  br label %401, !dbg !1479

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1121, metadata !618), !dbg !1184
  %404 = icmp ult i64 %402, %130, !dbg !1480
  br i1 %404, label %405, label %407, !dbg !1483

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1480
  store i8 92, i8* %406, align 1, !dbg !1480, !tbaa !776
  br label %407, !dbg !1480

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1121, metadata !618), !dbg !1184
  %409 = icmp ult i64 %408, %130, !dbg !1484
  br i1 %409, label %410, label %414, !dbg !1487

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1484
  %412 = or i8 %411, 48, !dbg !1484
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1484
  store i8 %412, i8* %413, align 1, !dbg !1484, !tbaa !776
  br label %414, !dbg !1484

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1121, metadata !618), !dbg !1184
  %416 = icmp ult i64 %415, %130, !dbg !1488
  br i1 %416, label %417, label %422, !dbg !1491

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1488
  %419 = and i8 %418, 7, !dbg !1488
  %420 = or i8 %419, 48, !dbg !1488
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1488
  store i8 %420, i8* %421, align 1, !dbg !1488, !tbaa !776
  br label %422, !dbg !1488

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1121, metadata !618), !dbg !1184
  %424 = and i8 %377, 7, !dbg !1492
  %425 = or i8 %424, 48, !dbg !1493
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1131, metadata !618), !dbg !1265
  br label %435, !dbg !1494

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1495
  %428 = icmp eq i8 %427, 0, !dbg !1495
  br i1 %428, label %435, label %429, !dbg !1497

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1498
  br i1 %430, label %431, label %433, !dbg !1502

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1498
  store i8 92, i8* %432, align 1, !dbg !1498, !tbaa !776
  br label %433, !dbg !1498

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1136, metadata !618), !dbg !1249
  br label %435, !dbg !1503

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1137, metadata !618), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1136, metadata !618), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1121, metadata !618), !dbg !1184
  %441 = add i64 %374, 1, !dbg !1504
  %442 = icmp ugt i64 %372, %441, !dbg !1506
  br i1 %442, label %443, label %535, !dbg !1507

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1508
  %445 = icmp ne i8 %444, 0, !dbg !1508
  %446 = and i8 %440, 1, !dbg !1508
  %447 = icmp eq i8 %446, 0, !dbg !1508
  %448 = and i1 %445, %447, !dbg !1508
  br i1 %448, label %449, label %460, !dbg !1508

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1511
  br i1 %450, label %451, label %453, !dbg !1515

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1511
  store i8 39, i8* %452, align 1, !dbg !1511, !tbaa !776
  br label %453, !dbg !1511

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1121, metadata !618), !dbg !1184
  %455 = icmp ult i64 %454, %130, !dbg !1516
  br i1 %455, label %456, label %458, !dbg !1519

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1516
  store i8 39, i8* %457, align 1, !dbg !1516, !tbaa !776
  br label %458, !dbg !1516

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1128, metadata !618), !dbg !1192
  br label %460, !dbg !1520

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1121, metadata !618), !dbg !1184
  %463 = icmp ult i64 %461, %130, !dbg !1521
  br i1 %463, label %464, label %466, !dbg !1524

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1521
  store i8 %438, i8* %465, align 1, !dbg !1521, !tbaa !776
  br label %466, !dbg !1521

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1120, metadata !618), !dbg !1241
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1525
  %469 = load i8, i8* %468, align 1, !dbg !1525, !tbaa !776
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1131, metadata !618), !dbg !1265
  br label %373, !dbg !1526, !llvm.loop !1527

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1138, metadata !618), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1137, metadata !618), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1136, metadata !618), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1120, metadata !618), !dbg !1241
  br i1 %106, label %482, label %481, !dbg !1530

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1532

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1533

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1534
  %485 = zext i8 %484 to i64, !dbg !1534
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1535
  %487 = load i32, i32* %486, align 4, !dbg !1535, !tbaa !633
  %488 = and i8 %477, 31, !dbg !1536
  %489 = zext i8 %488 to i32, !dbg !1537
  %490 = shl i32 1, %489, !dbg !1538
  %491 = and i32 %487, %490, !dbg !1538
  %492 = icmp eq i32 %491, 0, !dbg !1538
  %493 = icmp eq i8 %156, 0, !dbg !1539
  %494 = and i1 %493, %492, !dbg !1540
  br i1 %494, label %535, label %497, !dbg !1540

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1539
  br i1 %496, label %535, label %497, !dbg !1541

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1138, metadata !618), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1120, metadata !618), !dbg !1241
  br i1 %111, label %507, label %635, !dbg !1542

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !618), !dbg !1250
  %508 = and i8 %502, 1, !dbg !1544
  %509 = icmp eq i8 %508, 0, !dbg !1544
  %510 = and i1 %113, %509, !dbg !1544
  br i1 %510, label %511, label %527, !dbg !1544

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1546
  br i1 %512, label %513, label %515, !dbg !1550

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1546
  store i8 39, i8* %514, align 1, !dbg !1546, !tbaa !776
  br label %515, !dbg !1546

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1121, metadata !618), !dbg !1184
  %517 = icmp ult i64 %516, %506, !dbg !1551
  br i1 %517, label %518, label %520, !dbg !1554

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1551
  store i8 36, i8* %519, align 1, !dbg !1551, !tbaa !776
  br label %520, !dbg !1551

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1121, metadata !618), !dbg !1184
  %522 = icmp ult i64 %521, %506, !dbg !1555
  br i1 %522, label %523, label %525, !dbg !1558

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1555
  store i8 39, i8* %524, align 1, !dbg !1555, !tbaa !776
  br label %525, !dbg !1555

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !618), !dbg !1192
  br label %527, !dbg !1559

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1121, metadata !618), !dbg !1184
  %530 = icmp ult i64 %528, %506, !dbg !1560
  br i1 %530, label %531, label %533, !dbg !1563

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1560
  store i8 92, i8* %532, align 1, !dbg !1560, !tbaa !776
  br label %533, !dbg !1560

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1138, metadata !618), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1137, metadata !618), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1120, metadata !618), !dbg !1241
  br label %562, !dbg !1564

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1138, metadata !618), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1137, metadata !618), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1131, metadata !618), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1120, metadata !618), !dbg !1241
  %546 = and i8 %540, 1, !dbg !1564
  %547 = icmp ne i8 %546, 0, !dbg !1564
  %548 = and i8 %543, 1, !dbg !1564
  %549 = icmp eq i8 %548, 0, !dbg !1564
  %550 = and i1 %547, %549, !dbg !1564
  br i1 %550, label %551, label %562, !dbg !1564

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1567
  br i1 %552, label %553, label %555, !dbg !1571

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1567
  store i8 39, i8* %554, align 1, !dbg !1567, !tbaa !776
  br label %555, !dbg !1567

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1121, metadata !618), !dbg !1184
  %557 = icmp ult i64 %556, %545, !dbg !1572
  br i1 %557, label %558, label %560, !dbg !1575

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1572
  store i8 39, i8* %559, align 1, !dbg !1572, !tbaa !776
  br label %560, !dbg !1572

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1128, metadata !618), !dbg !1192
  br label %562, !dbg !1576

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1121, metadata !618), !dbg !1184
  %572 = icmp ult i64 %570, %563, !dbg !1577
  br i1 %572, label %573, label %575, !dbg !1580

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1577
  store i8 %565, i8* %574, align 1, !dbg !1577, !tbaa !776
  br label %575, !dbg !1577

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1121, metadata !618), !dbg !1184
  %577 = and i8 %564, 1, !dbg !1581
  %578 = icmp eq i8 %577, 0, !dbg !1581
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1130, metadata !618), !dbg !1194
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1583
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1130, metadata !618), !dbg !1194
  br label %580, !dbg !1584

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1130, metadata !618), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1129, metadata !618), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1128, metadata !618), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1114, metadata !618), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1122, metadata !618), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1120, metadata !618), !dbg !1241
  %589 = add i64 %581, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1120, metadata !618), !dbg !1241
  br label %122, !dbg !1586, !llvm.loop !1587

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1589
  %593 = and i1 %113, %592, !dbg !1591
  %594 = xor i1 %593, true, !dbg !1591
  %595 = or i1 %111, %594, !dbg !1591
  br i1 %595, label %596, label %635, !dbg !1591

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1592
  %598 = xor i1 %597, true, !dbg !1592
  %599 = and i8 %128, 1, !dbg !1594
  %600 = icmp eq i8 %599, 0, !dbg !1594
  %601 = or i1 %600, %598, !dbg !1592
  br i1 %601, label %611, label %602, !dbg !1592

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1595
  %604 = icmp eq i8 %603, 0, !dbg !1595
  br i1 %604, label %607, label %605, !dbg !1598

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1599
  br label %645, !dbg !1600

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1601
  %609 = icmp ne i64 %125, 0, !dbg !1603
  %610 = and i1 %609, %608, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1121, metadata !618), !dbg !1184
  br i1 %610, label %27, label %611, !dbg !1604

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1605
  %613 = and i1 %612, %111, !dbg !1607
  br i1 %613, label %614, label %630, !dbg !1607

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1121, metadata !618), !dbg !1184
  %615 = load i8, i8* %99, align 1, !dbg !1608, !tbaa !776
  %616 = icmp eq i8 %615, 0, !dbg !1611
  br i1 %616, label %630, label %617, !dbg !1611

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1612

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1121, metadata !618), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1123, metadata !618), !dbg !1186
  %622 = icmp ult i64 %621, %130, !dbg !1612
  br i1 %622, label %623, label %625, !dbg !1615

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1612
  store i8 %619, i8* %624, align 1, !dbg !1612, !tbaa !776
  br label %625, !dbg !1612

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1121, metadata !618), !dbg !1184
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1123, metadata !618), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1121, metadata !618), !dbg !1184
  %628 = load i8, i8* %627, align 1, !dbg !1608, !tbaa !776
  %629 = icmp eq i8 %628, 0, !dbg !1611
  br i1 %629, label %630, label %618, !dbg !1611, !llvm.loop !1617

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1121, metadata !618), !dbg !1184
  %632 = icmp ult i64 %631, %130, !dbg !1619
  br i1 %632, label %633, label %645, !dbg !1621

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1622
  store i8 0, i8* %634, align 1, !dbg !1623, !tbaa !776
  br label %645, !dbg !1622

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1112, metadata !618), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1114, metadata !618), !dbg !1178
  %639 = icmp ne i32 %636, 2, !dbg !1624
  %640 = icmp eq i8 %103, 0, !dbg !1626
  %641 = or i1 %639, %640, !dbg !1627
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1115, metadata !618), !dbg !1179
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1115, metadata !618), !dbg !1179
  %643 = and i32 %5, -3, !dbg !1628
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1629
  br label %645, !dbg !1630

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1631
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1632 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1636, metadata !618), !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1637, metadata !618), !dbg !1641
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1642
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1638, metadata !618), !dbg !1643
  %4 = icmp eq i8* %3, %0, !dbg !1644
  br i1 %4, label %5, label %75, !dbg !1646

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1647
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1639, metadata !618), !dbg !1648
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1649, metadata !618), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1663, metadata !618), !dbg !1668
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1664, metadata !618), !dbg !1669
  %7 = load i8, i8* %6, align 1, !dbg !1670, !tbaa !776
  %8 = sext i8 %7 to i32, !dbg !1670
  %9 = and i32 %8, -33, !dbg !1670
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1670

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1672, metadata !618), !dbg !1686
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1684, metadata !618), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1685, metadata !618), !dbg !1691
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1692
  %12 = load i8, i8* %11, align 1, !dbg !1692, !tbaa !776
  %13 = sext i8 %12 to i32, !dbg !1692
  %14 = and i32 %13, -33, !dbg !1692
  %15 = icmp eq i32 %14, 84, !dbg !1692
  br i1 %15, label %16, label %72, !dbg !1692

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1694, metadata !618), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !618), !dbg !1711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1706, metadata !618), !dbg !1712
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1713
  %18 = load i8, i8* %17, align 1, !dbg !1713, !tbaa !776
  %19 = sext i8 %18 to i32, !dbg !1713
  %20 = and i32 %19, -33, !dbg !1713
  %21 = icmp eq i32 %20, 70, !dbg !1713
  br i1 %21, label %22, label %72, !dbg !1713

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1715, metadata !618), !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1725, metadata !618), !dbg !1731
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1726, metadata !618), !dbg !1732
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1733
  %24 = load i8, i8* %23, align 1, !dbg !1733, !tbaa !776
  %25 = icmp eq i8 %24, 45, !dbg !1733
  br i1 %25, label %26, label %72, !dbg !1735

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1736, metadata !618), !dbg !1747
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !618), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !618), !dbg !1752
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1753
  %28 = load i8, i8* %27, align 1, !dbg !1753, !tbaa !776
  %29 = icmp eq i8 %28, 56, !dbg !1753
  br i1 %29, label %30, label %72, !dbg !1755

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1756, metadata !618), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1764, metadata !618), !dbg !1770
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1765, metadata !618), !dbg !1771
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1772
  %32 = load i8, i8* %31, align 1, !dbg !1772, !tbaa !776
  %33 = icmp eq i8 %32, 0, !dbg !1772
  br i1 %33, label %34, label %72, !dbg !1774

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1775, !tbaa !776
  %36 = icmp eq i8 %35, 96, !dbg !1776
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !1775
  br label %75, !dbg !1777

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1672, metadata !618), !dbg !1778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1684, metadata !618), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1685, metadata !618), !dbg !1783
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1784
  %40 = load i8, i8* %39, align 1, !dbg !1784, !tbaa !776
  %41 = sext i8 %40 to i32, !dbg !1784
  %42 = and i32 %41, -33, !dbg !1784
  %43 = icmp eq i32 %42, 66, !dbg !1784
  br i1 %43, label %44, label %72, !dbg !1784

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1694, metadata !618), !dbg !1785
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !618), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1706, metadata !618), !dbg !1788
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1789
  %46 = load i8, i8* %45, align 1, !dbg !1789, !tbaa !776
  %47 = icmp eq i8 %46, 49, !dbg !1789
  br i1 %47, label %48, label %72, !dbg !1790

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1715, metadata !618), !dbg !1791
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1725, metadata !618), !dbg !1793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1726, metadata !618), !dbg !1794
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1795
  %50 = load i8, i8* %49, align 1, !dbg !1795, !tbaa !776
  %51 = icmp eq i8 %50, 56, !dbg !1795
  br i1 %51, label %52, label %72, !dbg !1796

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1736, metadata !618), !dbg !1797
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !618), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !618), !dbg !1800
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1801
  %54 = load i8, i8* %53, align 1, !dbg !1801, !tbaa !776
  %55 = icmp eq i8 %54, 48, !dbg !1801
  br i1 %55, label %56, label %72, !dbg !1802

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1756, metadata !618), !dbg !1803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1764, metadata !618), !dbg !1805
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1765, metadata !618), !dbg !1806
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1807
  %58 = load i8, i8* %57, align 1, !dbg !1807, !tbaa !776
  %59 = icmp eq i8 %58, 51, !dbg !1807
  br i1 %59, label %60, label %72, !dbg !1808

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1809, metadata !618), !dbg !1818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1816, metadata !618), !dbg !1822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1817, metadata !618), !dbg !1823
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1824
  %62 = load i8, i8* %61, align 1, !dbg !1824, !tbaa !776
  %63 = icmp eq i8 %62, 48, !dbg !1824
  br i1 %63, label %64, label %72, !dbg !1826

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1827, metadata !618), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1833, metadata !618), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1834, metadata !618), !dbg !1840
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1841
  %66 = load i8, i8* %65, align 1, !dbg !1841, !tbaa !776
  %67 = icmp eq i8 %66, 0, !dbg !1841
  br i1 %67, label %68, label %72, !dbg !1843

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1844, !tbaa !776
  %70 = icmp eq i8 %69, 96, !dbg !1845
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !1844
  br label %75, !dbg !1846

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1847
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !1848
  br label %75, !dbg !1849

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1850
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1851 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1855, metadata !618), !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1856, metadata !618), !dbg !1859
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1857, metadata !618), !dbg !1860
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1861, metadata !618) #10, !dbg !1874
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1866, metadata !618) #10, !dbg !1876
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1867, metadata !618) #10, !dbg !1877
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1868, metadata !618) #10, !dbg !1878
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1879
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1879
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1869, metadata !618) #10, !dbg !1880
  %6 = tail call i32* @__errno_location() #16, !dbg !1881
  %7 = load i32, i32* %6, align 4, !dbg !1881, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1870, metadata !618) #10, !dbg !1882
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1883
  %9 = load i32, i32* %8, align 4, !dbg !1883, !tbaa !1044
  %10 = or i32 %9, 1, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1871, metadata !618) #10, !dbg !1885
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1886
  %12 = load i32, i32* %11, align 8, !dbg !1886, !tbaa !984
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1887
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1888
  %15 = load i8*, i8** %14, align 8, !dbg !1888, !tbaa !1070
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1889
  %17 = load i8*, i8** %16, align 8, !dbg !1889, !tbaa !1073
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1890
  %19 = add i64 %18, 1, !dbg !1891
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1872, metadata !618) #10, !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1893, metadata !618) #10, !dbg !1898
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1900
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1873, metadata !618) #10, !dbg !1901
  %21 = load i32, i32* %11, align 8, !dbg !1902, !tbaa !984
  %22 = load i8*, i8** %14, align 8, !dbg !1903, !tbaa !1070
  %23 = load i8*, i8** %16, align 8, !dbg !1904, !tbaa !1073
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1905
  store i32 %7, i32* %6, align 4, !dbg !1906, !tbaa !633
  ret i8* %20, !dbg !1907
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1862 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1861, metadata !618), !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1866, metadata !618), !dbg !1909
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1867, metadata !618), !dbg !1910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1868, metadata !618), !dbg !1911
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1912
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1869, metadata !618), !dbg !1913
  %7 = tail call i32* @__errno_location() #16, !dbg !1914
  %8 = load i32, i32* %7, align 4, !dbg !1914, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1870, metadata !618), !dbg !1915
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1916
  %10 = load i32, i32* %9, align 4, !dbg !1916, !tbaa !1044
  %11 = icmp ne i64* %2, null, !dbg !1917
  %12 = xor i1 %11, true, !dbg !1917
  %13 = zext i1 %12 to i32, !dbg !1917
  %14 = or i32 %10, %13, !dbg !1918
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1871, metadata !618), !dbg !1919
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1920
  %16 = load i32, i32* %15, align 8, !dbg !1920, !tbaa !984
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1921
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1922
  %19 = load i8*, i8** %18, align 8, !dbg !1922, !tbaa !1070
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1923
  %21 = load i8*, i8** %20, align 8, !dbg !1923, !tbaa !1073
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1924
  %23 = add i64 %22, 1, !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1872, metadata !618), !dbg !1926
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1893, metadata !618) #10, !dbg !1927
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1929
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1873, metadata !618), !dbg !1930
  %25 = load i32, i32* %15, align 8, !dbg !1931, !tbaa !984
  %26 = load i8*, i8** %18, align 8, !dbg !1932, !tbaa !1070
  %27 = load i8*, i8** %20, align 8, !dbg !1933, !tbaa !1073
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1934
  store i32 %8, i32* %7, align 4, !dbg !1935, !tbaa !633
  br i1 %11, label %29, label %30, !dbg !1936

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1937, !tbaa !1939
  br label %30, !dbg !1940

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1941
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1942 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1946, !tbaa !625
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1944, metadata !618), !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1945, metadata !618), !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1945, metadata !618), !dbg !1948
  %2 = load i32, i32* @nslots, align 4, !dbg !1949, !tbaa !633
  %3 = icmp sgt i32 %2, 1, !dbg !1952
  br i1 %3, label %4, label %13, !dbg !1953

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1954

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1945, metadata !618), !dbg !1948
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1954
  %8 = load i8*, i8** %7, align 8, !dbg !1954, !tbaa !1955
  tail call void @free(i8* %8) #10, !dbg !1957
  %9 = add nuw i64 %6, 1, !dbg !1958
  %10 = load i32, i32* @nslots, align 4, !dbg !1949, !tbaa !633
  %11 = sext i32 %10 to i64, !dbg !1952
  %12 = icmp slt i64 %9, %11, !dbg !1952
  br i1 %12, label %5, label %13, !dbg !1953, !llvm.loop !1959

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1961
  %15 = load i8*, i8** %14, align 8, !dbg !1961, !tbaa !1955
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1963
  br i1 %16, label %18, label %17, !dbg !1964

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1965
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1967, !tbaa !1968
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1969, !tbaa !1955
  br label %18, !dbg !1970

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1971
  br i1 %19, label %22, label %20, !dbg !1973

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1974
  tail call void @free(i8* %21) #10, !dbg !1976
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1977, !tbaa !625
  br label %22, !dbg !1978

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1979, !tbaa !633
  ret void, !dbg !1980
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1981 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1985, metadata !618), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1986, metadata !618), !dbg !1988
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1989
  ret i8* %3, !dbg !1990
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1991 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1995, metadata !618), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1996, metadata !618), !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1997, metadata !618), !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1998, metadata !618), !dbg !2012
  %5 = tail call i32* @__errno_location() #16, !dbg !2013
  %6 = load i32, i32* %5, align 4, !dbg !2013, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1999, metadata !618), !dbg !2014
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2015, !tbaa !625
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2000, metadata !618), !dbg !2016
  %8 = icmp slt i32 %0, 0, !dbg !2017
  br i1 %8, label %9, label %10, !dbg !2019

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2020
  unreachable, !dbg !2020

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2021, !tbaa !633
  %12 = icmp sgt i32 %11, %0, !dbg !2022
  br i1 %12, label %34, label %13, !dbg !2023

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2024
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2025
  br i1 %15, label %16, label %17, !dbg !2027

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2028
  unreachable, !dbg !2028

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2029
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2029
  %20 = add nsw i32 %0, 1, !dbg !2030
  %21 = sext i32 %20 to i64, !dbg !2031
  %22 = shl nsw i64 %21, 4, !dbg !2032
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2033
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2033
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2000, metadata !618), !dbg !2016
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2034, !tbaa !625
  br i1 %14, label %25, label %26, !dbg !2035

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2036, !tbaa.struct !2038
  br label %26, !dbg !2039

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2040, !tbaa !633
  %28 = sext i32 %27 to i64, !dbg !2041
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2041
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2042
  %31 = sub nsw i32 %20, %27, !dbg !2043
  %32 = sext i32 %31 to i64, !dbg !2044
  %33 = shl nsw i64 %32, 4, !dbg !2045
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2042
  store i32 %20, i32* @nslots, align 4, !dbg !2046, !tbaa !633
  br label %34, !dbg !2047

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2000, metadata !618), !dbg !2016
  %36 = sext i32 %0 to i64, !dbg !2048
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2049
  %38 = load i64, i64* %37, align 8, !dbg !2049, !tbaa !1968
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2004, metadata !618), !dbg !2050
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2051
  %40 = load i8*, i8** %39, align 8, !dbg !2051, !tbaa !1955
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2006, metadata !618), !dbg !2052
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2053
  %42 = load i32, i32* %41, align 4, !dbg !2053, !tbaa !1044
  %43 = or i32 %42, 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2007, metadata !618), !dbg !2055
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2056
  %45 = load i32, i32* %44, align 8, !dbg !2056, !tbaa !984
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2057
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2058
  %48 = load i8*, i8** %47, align 8, !dbg !2058, !tbaa !1070
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2059
  %50 = load i8*, i8** %49, align 8, !dbg !2059, !tbaa !1073
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2008, metadata !618), !dbg !2061
  %52 = icmp ugt i64 %38, %51, !dbg !2062
  br i1 %52, label %63, label %53, !dbg !2064

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2065
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2004, metadata !618), !dbg !2050
  store i64 %54, i64* %37, align 8, !dbg !2067, !tbaa !1968
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2068
  br i1 %55, label %57, label %56, !dbg !2070

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2071
  br label %57, !dbg !2071

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1893, metadata !618) #10, !dbg !2072
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2074
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2006, metadata !618), !dbg !2052
  store i8* %58, i8** %39, align 8, !dbg !2075, !tbaa !1955
  %59 = load i32, i32* %44, align 8, !dbg !2076, !tbaa !984
  %60 = load i8*, i8** %47, align 8, !dbg !2077, !tbaa !1070
  %61 = load i8*, i8** %49, align 8, !dbg !2078, !tbaa !1073
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2079
  br label %63, !dbg !2080

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2006, metadata !618), !dbg !2052
  store i32 %6, i32* %5, align 4, !dbg !2081, !tbaa !633
  ret i8* %64, !dbg !2082
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2083 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2087, metadata !618), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2088, metadata !618), !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2089, metadata !618), !dbg !2092
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2093
  ret i8* %4, !dbg !2094
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2095 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2099, metadata !618), !dbg !2100
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1985, metadata !618) #10, !dbg !2101
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1986, metadata !618) #10, !dbg !2103
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2104
  ret i8* %2, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2106 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2110, metadata !618), !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2111, metadata !618), !dbg !2113
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2087, metadata !618) #10, !dbg !2114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2088, metadata !618) #10, !dbg !2116
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2089, metadata !618) #10, !dbg !2117
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2118
  ret i8* %3, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2120 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2128, metadata !2134), !dbg !2135
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2124, metadata !618), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !618), !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2126, metadata !618), !dbg !2139
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2140
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2127, metadata !618), !dbg !2141
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2133, metadata !618) #10, !dbg !2142
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2143
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2143
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2128, metadata !618) #10, !dbg !2135
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2135
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2135
  %8 = icmp eq i32 %1, 10, !dbg !2145
  br i1 %8, label %9, label %10, !dbg !2147

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2148, !noalias !2149
  unreachable, !dbg !2148

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2128, metadata !2144) #10, !dbg !2135
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2152
  store i32 %1, i32* %11, align 8, !dbg !2152, !alias.scope !2149
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2152
  %13 = bitcast i32* %12 to i8*, !dbg !2152
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2152
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2127, metadata !618), !dbg !2141
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2155
  ret i8* %14, !dbg !2156
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2157 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2128, metadata !2134), !dbg !2166
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2161, metadata !618), !dbg !2168
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2162, metadata !618), !dbg !2169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2163, metadata !618), !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2164, metadata !618), !dbg !2171
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2165, metadata !618), !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2133, metadata !618) #10, !dbg !2174
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2175
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2128, metadata !618) #10, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2166
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2166
  %9 = icmp eq i32 %1, 10, !dbg !2176
  br i1 %9, label %10, label %11, !dbg !2177

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2178, !noalias !2179
  unreachable, !dbg !2178

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2128, metadata !2144) #10, !dbg !2166
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2182
  store i32 %1, i32* %12, align 8, !dbg !2182, !alias.scope !2179
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2182
  %14 = bitcast i32* %13 to i8*, !dbg !2182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2183
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2165, metadata !618), !dbg !2173
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2184
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2185
  ret i8* %15, !dbg !2186
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2187 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2128, metadata !2134), !dbg !2193
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2191, metadata !618), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2192, metadata !618), !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2124, metadata !618) #10, !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2125, metadata !618) #10, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2126, metadata !618) #10, !dbg !2200
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2127, metadata !618) #10, !dbg !2202
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2133, metadata !618) #10, !dbg !2203
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2204
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2204
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2128, metadata !618) #10, !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2193
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2193
  %7 = icmp eq i32 %0, 10, !dbg !2205
  br i1 %7, label %8, label %9, !dbg !2206

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2207, !noalias !2208
  unreachable, !dbg !2207

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2193
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2211
  store i32 %0, i32* %10, align 8, !dbg !2211, !alias.scope !2208
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2211
  %12 = bitcast i32* %11 to i8*, !dbg !2211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2211
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2212
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2127, metadata !618) #10, !dbg !2202
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2213
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2214
  ret i8* %13, !dbg !2215
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2216 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2128, metadata !2134), !dbg !2223
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2220, metadata !618), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2221, metadata !618), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2222, metadata !618), !dbg !2228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2161, metadata !618) #10, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2162, metadata !618) #10, !dbg !2230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2163, metadata !618) #10, !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2164, metadata !618) #10, !dbg !2232
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2233
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2165, metadata !618) #10, !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2133, metadata !618) #10, !dbg !2235
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2236
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2128, metadata !618) #10, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2223
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2223
  %8 = icmp eq i32 %0, 10, !dbg !2237
  br i1 %8, label %9, label %10, !dbg !2238

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2239, !noalias !2240
  unreachable, !dbg !2239

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2223
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2243
  store i32 %0, i32* %11, align 8, !dbg !2243, !alias.scope !2240
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2243
  %13 = bitcast i32* %12 to i8*, !dbg !2243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2165, metadata !618) #10, !dbg !2234
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2246
  ret i8* %14, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2248 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2252, metadata !618), !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2253, metadata !618), !dbg !2257
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2254, metadata !618), !dbg !2258
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2260, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2255, metadata !618), !dbg !2262
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1003, metadata !618), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1004, metadata !618), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1005, metadata !618), !dbg !2266
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1006, metadata !618), !dbg !2267
  %6 = lshr i8 %2, 5, !dbg !2268
  %7 = zext i8 %6 to i64, !dbg !2268
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1007, metadata !618), !dbg !2270
  %9 = and i8 %2, 31, !dbg !2271
  %10 = zext i8 %9 to i32, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1009, metadata !618), !dbg !2273
  %11 = load i32, i32* %8, align 4, !dbg !2274, !tbaa !633
  %12 = lshr i32 %11, %10, !dbg !2275
  %13 = and i32 %12, 1, !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1010, metadata !618), !dbg !2277
  %14 = xor i32 %13, 1, !dbg !2278
  %15 = shl i32 %14, %10, !dbg !2279
  %16 = xor i32 %15, %11, !dbg !2280
  store i32 %16, i32* %8, align 4, !dbg !2280, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2255, metadata !618), !dbg !2262
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2282
  ret i8* %17, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2284 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2288, metadata !618), !dbg !2290
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2289, metadata !618), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2252, metadata !618) #10, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2253, metadata !618) #10, !dbg !2294
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2254, metadata !618) #10, !dbg !2295
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2296
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2297, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2255, metadata !618) #10, !dbg !2298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1003, metadata !618) #10, !dbg !2299
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1004, metadata !618) #10, !dbg !2301
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1005, metadata !618) #10, !dbg !2302
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1006, metadata !618) #10, !dbg !2303
  %5 = lshr i8 %1, 5, !dbg !2304
  %6 = zext i8 %5 to i64, !dbg !2304
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1007, metadata !618) #10, !dbg !2306
  %8 = and i8 %1, 31, !dbg !2307
  %9 = zext i8 %8 to i32, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1009, metadata !618) #10, !dbg !2309
  %10 = load i32, i32* %7, align 4, !dbg !2310, !tbaa !633
  %11 = lshr i32 %10, %9, !dbg !2311
  %12 = and i32 %11, 1, !dbg !2312
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1010, metadata !618) #10, !dbg !2313
  %13 = xor i32 %12, 1, !dbg !2314
  %14 = shl i32 %13, %9, !dbg !2315
  %15 = xor i32 %14, %10, !dbg !2316
  store i32 %15, i32* %7, align 4, !dbg !2316, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2255, metadata !618) #10, !dbg !2298
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2317
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2318
  ret i8* %16, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2320 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2322, metadata !618), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2288, metadata !618) #10, !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2289, metadata !618) #10, !dbg !2326
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2252, metadata !618) #10, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2253, metadata !618) #10, !dbg !2329
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2254, metadata !618) #10, !dbg !2330
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2331
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2332, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2255, metadata !618) #10, !dbg !2333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1003, metadata !618) #10, !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1004, metadata !618) #10, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1005, metadata !618) #10, !dbg !2337
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1006, metadata !618) #10, !dbg !2338
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2339
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1007, metadata !618) #10, !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1009, metadata !618) #10, !dbg !2341
  %5 = load i32, i32* %4, align 4, !dbg !2342, !tbaa !633
  %6 = or i32 %5, 67108864, !dbg !2343
  store i32 %6, i32* %4, align 4, !dbg !2343, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2255, metadata !618) #10, !dbg !2333
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2345
  ret i8* %7, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2347 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2349, metadata !618), !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2350, metadata !618), !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2252, metadata !618) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2253, metadata !618) #10, !dbg !2355
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2254, metadata !618) #10, !dbg !2356
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2357
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2357
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2358, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2255, metadata !618) #10, !dbg !2359
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1003, metadata !618) #10, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1004, metadata !618) #10, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1005, metadata !618) #10, !dbg !2363
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1006, metadata !618) #10, !dbg !2364
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1007, metadata !618) #10, !dbg !2366
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1009, metadata !618) #10, !dbg !2367
  %6 = load i32, i32* %5, align 4, !dbg !2368, !tbaa !633
  %7 = or i32 %6, 67108864, !dbg !2369
  store i32 %7, i32* %5, align 4, !dbg !2369, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2255, metadata !618) #10, !dbg !2359
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2370
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2371
  ret i8* %8, !dbg !2372
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2373 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2128, metadata !2134), !dbg !2379
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2375, metadata !618), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2376, metadata !618), !dbg !2382
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2377, metadata !618), !dbg !2383
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2133, metadata !618) #10, !dbg !2385
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2386
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2128, metadata !618) #10, !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2128, metadata !2144) #10, !dbg !2379
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2379
  %9 = icmp eq i32 %1, 10, !dbg !2387
  br i1 %9, label %10, label %11, !dbg !2388

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2389, !noalias !2390
  unreachable, !dbg !2389

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2128, metadata !2144) #10, !dbg !2379
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2394
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2395
  store i32 %1, i32* %13, align 8, !dbg !2395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2395
  %15 = bitcast i32* %14 to i8*, !dbg !2395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2395
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2378, metadata !618), !dbg !2396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1003, metadata !618), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1004, metadata !618), !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1005, metadata !618), !dbg !2400
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1006, metadata !618), !dbg !2401
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2402
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1007, metadata !618), !dbg !2403
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1009, metadata !618), !dbg !2404
  %17 = load i32, i32* %16, align 4, !dbg !2405, !tbaa !633
  %18 = or i32 %17, 67108864, !dbg !2406
  store i32 %18, i32* %16, align 4, !dbg !2406, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2378, metadata !618), !dbg !2396
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2408
  ret i8* %19, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2410 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2414, metadata !618), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2415, metadata !618), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2416, metadata !618), !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2417, metadata !618), !dbg !2421
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2422, metadata !618) #10, !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2427, metadata !618) #10, !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2428, metadata !618) #10, !dbg !2435
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2429, metadata !618) #10, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2430, metadata !618) #10, !dbg !2437
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2439, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2431, metadata !618) #10, !dbg !2440
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1052, metadata !618) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1053, metadata !618) #10, !dbg !2443
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1054, metadata !618) #10, !dbg !2444
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1052, metadata !618) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1052, metadata !618) #10, !dbg !2441
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2445
  store i32 10, i32* %7, align 8, !dbg !2446, !tbaa !984
  %8 = icmp ne i8* %1, null, !dbg !2447
  %9 = icmp ne i8* %2, null, !dbg !2448
  %10 = and i1 %8, %9, !dbg !2449
  br i1 %10, label %12, label %11, !dbg !2449

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2450
  unreachable, !dbg !2450

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2451
  store i8* %1, i8** %13, align 8, !dbg !2452, !tbaa !1070
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2453
  store i8* %2, i8** %14, align 8, !dbg !2454, !tbaa !1073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2431, metadata !618) #10, !dbg !2440
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2455
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2456
  ret i8* %15, !dbg !2457
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2423 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2422, metadata !618), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2427, metadata !618), !dbg !2459
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2428, metadata !618), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2429, metadata !618), !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2430, metadata !618), !dbg !2462
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2464, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2431, metadata !618), !dbg !2465
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1052, metadata !618) #10, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1053, metadata !618) #10, !dbg !2468
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1054, metadata !618) #10, !dbg !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1052, metadata !618) #10, !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1052, metadata !618) #10, !dbg !2466
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2470
  store i32 10, i32* %8, align 8, !dbg !2471, !tbaa !984
  %9 = icmp ne i8* %1, null, !dbg !2472
  %10 = icmp ne i8* %2, null, !dbg !2473
  %11 = and i1 %9, %10, !dbg !2474
  br i1 %11, label %13, label %12, !dbg !2474

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2475
  unreachable, !dbg !2475

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2476
  store i8* %1, i8** %14, align 8, !dbg !2477, !tbaa !1070
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2478
  store i8* %2, i8** %15, align 8, !dbg !2479, !tbaa !1073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2431, metadata !618), !dbg !2465
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2481
  ret i8* %16, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2483 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2487, metadata !618), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2488, metadata !618), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2489, metadata !618), !dbg !2492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2414, metadata !618) #10, !dbg !2493
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2415, metadata !618) #10, !dbg !2495
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2416, metadata !618) #10, !dbg !2496
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2417, metadata !618) #10, !dbg !2497
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2422, metadata !618) #10, !dbg !2498
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2427, metadata !618) #10, !dbg !2500
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2428, metadata !618) #10, !dbg !2501
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2429, metadata !618) #10, !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2430, metadata !618) #10, !dbg !2503
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2504
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2505, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2431, metadata !618) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1052, metadata !618) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1053, metadata !618) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1054, metadata !618) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1052, metadata !618) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1052, metadata !618) #10, !dbg !2507
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2511
  store i32 10, i32* %6, align 8, !dbg !2512, !tbaa !984
  %7 = icmp ne i8* %0, null, !dbg !2513
  %8 = icmp ne i8* %1, null, !dbg !2514
  %9 = and i1 %7, %8, !dbg !2515
  br i1 %9, label %11, label %10, !dbg !2515

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2516
  unreachable, !dbg !2516

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2517
  store i8* %0, i8** %12, align 8, !dbg !2518, !tbaa !1070
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2519
  store i8* %1, i8** %13, align 8, !dbg !2520, !tbaa !1073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2431, metadata !618) #10, !dbg !2506
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2522
  ret i8* %14, !dbg !2523
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2524 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !618), !dbg !2532
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2529, metadata !618), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2530, metadata !618), !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2531, metadata !618), !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2422, metadata !618) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2427, metadata !618) #10, !dbg !2538
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2428, metadata !618) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2429, metadata !618) #10, !dbg !2540
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2430, metadata !618) #10, !dbg !2541
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2542
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2543, !tbaa.struct !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2431, metadata !618) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1052, metadata !618) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1053, metadata !618) #10, !dbg !2547
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1054, metadata !618) #10, !dbg !2548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1052, metadata !618) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1052, metadata !618) #10, !dbg !2545
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2549
  store i32 10, i32* %7, align 8, !dbg !2550, !tbaa !984
  %8 = icmp ne i8* %0, null, !dbg !2551
  %9 = icmp ne i8* %1, null, !dbg !2552
  %10 = and i1 %8, %9, !dbg !2553
  br i1 %10, label %12, label %11, !dbg !2553

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2554
  unreachable, !dbg !2554

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2555
  store i8* %0, i8** %13, align 8, !dbg !2556, !tbaa !1070
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2557
  store i8* %1, i8** %14, align 8, !dbg !2558, !tbaa !1073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2431, metadata !618) #10, !dbg !2544
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2560
  ret i8* %15, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2562 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2566, metadata !618), !dbg !2569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2567, metadata !618), !dbg !2570
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2568, metadata !618), !dbg !2571
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2572
  ret i8* %4, !dbg !2573
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2574 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2578, metadata !618), !dbg !2580
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2579, metadata !618), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2566, metadata !618) #10, !dbg !2582
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2567, metadata !618) #10, !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2568, metadata !618) #10, !dbg !2585
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2586
  ret i8* %3, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2588 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2592, metadata !618), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2593, metadata !618), !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2566, metadata !618) #10, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2567, metadata !618) #10, !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2568, metadata !618) #10, !dbg !2599
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2600
  ret i8* %3, !dbg !2601
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2606, metadata !618), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2592, metadata !618) #10, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2593, metadata !618) #10, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2566, metadata !618) #10, !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2567, metadata !618) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2568, metadata !618) #10, !dbg !2614
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2615
  ret i8* %2, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2617 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2677, metadata !618), !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2678, metadata !618), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2679, metadata !618), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2680, metadata !618), !dbg !2686
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2681, metadata !618), !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2682, metadata !618), !dbg !2688
  %7 = icmp eq i8* %1, null, !dbg !2689
  br i1 %7, label %10, label %8, !dbg !2691

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2692
  br label %12, !dbg !2692

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2693
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #10, !dbg !2694
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2694
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.86, i64 0, i64 0), i32 5) #10, !dbg !2695
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2695
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
  ], !dbg !2696

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2697
  unreachable, !dbg !2697

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #10, !dbg !2699
  %20 = load i8*, i8** %4, align 8, !dbg !2699, !tbaa !625
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2699
  br label %146, !dbg !2700

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.88, i64 0, i64 0), i32 5) #10, !dbg !2701
  %24 = load i8*, i8** %4, align 8, !dbg !2701, !tbaa !625
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2701
  %26 = load i8*, i8** %25, align 8, !dbg !2701, !tbaa !625
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2701
  br label %146, !dbg !2702

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #10, !dbg !2703
  %30 = load i8*, i8** %4, align 8, !dbg !2703, !tbaa !625
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2703
  %32 = load i8*, i8** %31, align 8, !dbg !2703, !tbaa !625
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2703
  %34 = load i8*, i8** %33, align 8, !dbg !2703, !tbaa !625
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2703
  br label %146, !dbg !2704

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #10, !dbg !2705
  %38 = load i8*, i8** %4, align 8, !dbg !2705, !tbaa !625
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2705
  %40 = load i8*, i8** %39, align 8, !dbg !2705, !tbaa !625
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2705
  %42 = load i8*, i8** %41, align 8, !dbg !2705, !tbaa !625
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2705
  %44 = load i8*, i8** %43, align 8, !dbg !2705, !tbaa !625
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2705
  br label %146, !dbg !2706

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #10, !dbg !2707
  %48 = load i8*, i8** %4, align 8, !dbg !2707, !tbaa !625
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2707
  %50 = load i8*, i8** %49, align 8, !dbg !2707, !tbaa !625
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2707
  %52 = load i8*, i8** %51, align 8, !dbg !2707, !tbaa !625
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2707
  %54 = load i8*, i8** %53, align 8, !dbg !2707, !tbaa !625
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2707
  %56 = load i8*, i8** %55, align 8, !dbg !2707, !tbaa !625
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2707
  br label %146, !dbg !2708

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #10, !dbg !2709
  %60 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !625
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2709
  %62 = load i8*, i8** %61, align 8, !dbg !2709, !tbaa !625
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2709
  %64 = load i8*, i8** %63, align 8, !dbg !2709, !tbaa !625
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2709
  %66 = load i8*, i8** %65, align 8, !dbg !2709, !tbaa !625
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2709
  %68 = load i8*, i8** %67, align 8, !dbg !2709, !tbaa !625
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2709
  %70 = load i8*, i8** %69, align 8, !dbg !2709, !tbaa !625
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2709
  br label %146, !dbg !2710

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #10, !dbg !2711
  %74 = load i8*, i8** %4, align 8, !dbg !2711, !tbaa !625
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2711
  %76 = load i8*, i8** %75, align 8, !dbg !2711, !tbaa !625
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2711
  %78 = load i8*, i8** %77, align 8, !dbg !2711, !tbaa !625
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2711
  %80 = load i8*, i8** %79, align 8, !dbg !2711, !tbaa !625
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2711
  %82 = load i8*, i8** %81, align 8, !dbg !2711, !tbaa !625
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2711
  %84 = load i8*, i8** %83, align 8, !dbg !2711, !tbaa !625
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2711
  %86 = load i8*, i8** %85, align 8, !dbg !2711, !tbaa !625
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2711
  br label %146, !dbg !2712

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #10, !dbg !2713
  %90 = load i8*, i8** %4, align 8, !dbg !2713, !tbaa !625
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2713
  %92 = load i8*, i8** %91, align 8, !dbg !2713, !tbaa !625
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2713
  %94 = load i8*, i8** %93, align 8, !dbg !2713, !tbaa !625
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2713
  %96 = load i8*, i8** %95, align 8, !dbg !2713, !tbaa !625
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2713
  %98 = load i8*, i8** %97, align 8, !dbg !2713, !tbaa !625
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2713
  %100 = load i8*, i8** %99, align 8, !dbg !2713, !tbaa !625
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2713
  %102 = load i8*, i8** %101, align 8, !dbg !2713, !tbaa !625
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2713
  %104 = load i8*, i8** %103, align 8, !dbg !2713, !tbaa !625
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2713
  br label %146, !dbg !2714

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #10, !dbg !2715
  %108 = load i8*, i8** %4, align 8, !dbg !2715, !tbaa !625
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2715
  %110 = load i8*, i8** %109, align 8, !dbg !2715, !tbaa !625
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2715
  %112 = load i8*, i8** %111, align 8, !dbg !2715, !tbaa !625
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2715
  %114 = load i8*, i8** %113, align 8, !dbg !2715, !tbaa !625
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2715
  %116 = load i8*, i8** %115, align 8, !dbg !2715, !tbaa !625
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2715
  %118 = load i8*, i8** %117, align 8, !dbg !2715, !tbaa !625
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2715
  %120 = load i8*, i8** %119, align 8, !dbg !2715, !tbaa !625
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2715
  %122 = load i8*, i8** %121, align 8, !dbg !2715, !tbaa !625
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2715
  %124 = load i8*, i8** %123, align 8, !dbg !2715, !tbaa !625
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2715
  br label %146, !dbg !2716

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #10, !dbg !2717
  %128 = load i8*, i8** %4, align 8, !dbg !2717, !tbaa !625
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2717
  %130 = load i8*, i8** %129, align 8, !dbg !2717, !tbaa !625
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2717
  %132 = load i8*, i8** %131, align 8, !dbg !2717, !tbaa !625
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2717
  %134 = load i8*, i8** %133, align 8, !dbg !2717, !tbaa !625
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2717
  %136 = load i8*, i8** %135, align 8, !dbg !2717, !tbaa !625
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2717
  %138 = load i8*, i8** %137, align 8, !dbg !2717, !tbaa !625
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2717
  %140 = load i8*, i8** %139, align 8, !dbg !2717, !tbaa !625
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2717
  %142 = load i8*, i8** %141, align 8, !dbg !2717, !tbaa !625
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2717
  %144 = load i8*, i8** %143, align 8, !dbg !2717, !tbaa !625
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2717
  br label %146, !dbg !2718

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2719
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2720 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2724, metadata !618), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2725, metadata !618), !dbg !2731
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2726, metadata !618), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2727, metadata !618), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2728, metadata !618), !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2729, metadata !618), !dbg !2735
  br label %6, !dbg !2736

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2729, metadata !618), !dbg !2735
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2738
  %9 = load i8*, i8** %8, align 8, !dbg !2738, !tbaa !625
  %10 = icmp eq i8* %9, null, !dbg !2740
  %11 = add i64 %7, 1, !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2729, metadata !618), !dbg !2735
  br i1 %10, label %12, label %6, !dbg !2740, !llvm.loop !2742

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2744
  ret void, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2746 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2757, metadata !618), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2758, metadata !618), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2759, metadata !618), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2760, metadata !618), !dbg !2768
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2761, metadata !618), !dbg !2769
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2770
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2763, metadata !618), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %11 = load i32, i32* %8, align 8, !dbg !2773
  %12 = icmp ult i32 %11, 41, !dbg !2773
  br i1 %12, label %13, label %18, !dbg !2773

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2773
  %15 = sext i32 %11 to i64, !dbg !2773
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2773
  %17 = add i32 %11, 8, !dbg !2773
  store i32 %17, i32* %8, align 8, !dbg !2773
  br label %21, !dbg !2773

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2773
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2773
  store i8* %20, i8** %10, align 8, !dbg !2773
  br label %21, !dbg !2773

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2773
  %25 = load i8*, i8** %24, align 8, !dbg !2773
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2776
  store i8* %25, i8** %26, align 16, !dbg !2777, !tbaa !625
  %27 = icmp eq i8* %25, null, !dbg !2778
  br i1 %27, label %30, label %28, !dbg !2779

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %29 = icmp ult i32 %22, 41, !dbg !2773
  br i1 %29, label %35, label %32, !dbg !2773

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2780
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2781
  ret void, !dbg !2781

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2773
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2773
  store i8* %34, i8** %10, align 8, !dbg !2773
  br label %40, !dbg !2773

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2773
  %37 = sext i32 %22 to i64, !dbg !2773
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2773
  %39 = add i32 %22, 8, !dbg !2773
  store i32 %39, i32* %8, align 8, !dbg !2773
  br label %40, !dbg !2773

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2773
  %44 = load i8*, i8** %43, align 8, !dbg !2773
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2776
  store i8* %44, i8** %45, align 8, !dbg !2777, !tbaa !625
  %46 = icmp eq i8* %44, null, !dbg !2778
  br i1 %46, label %30, label %47, !dbg !2779

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %48 = icmp ult i32 %41, 41, !dbg !2773
  br i1 %48, label %52, label %49, !dbg !2773

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2773
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2773
  store i8* %51, i8** %10, align 8, !dbg !2773
  br label %57, !dbg !2773

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2773
  %54 = sext i32 %41 to i64, !dbg !2773
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2773
  %56 = add i32 %41, 8, !dbg !2773
  store i32 %56, i32* %8, align 8, !dbg !2773
  br label %57, !dbg !2773

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2773
  %61 = load i8*, i8** %60, align 8, !dbg !2773
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2776
  store i8* %61, i8** %62, align 16, !dbg !2777, !tbaa !625
  %63 = icmp eq i8* %61, null, !dbg !2778
  br i1 %63, label %30, label %64, !dbg !2779

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %65 = icmp ult i32 %58, 41, !dbg !2773
  br i1 %65, label %69, label %66, !dbg !2773

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2773
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2773
  store i8* %68, i8** %10, align 8, !dbg !2773
  br label %74, !dbg !2773

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2773
  %71 = sext i32 %58 to i64, !dbg !2773
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2773
  %73 = add i32 %58, 8, !dbg !2773
  store i32 %73, i32* %8, align 8, !dbg !2773
  br label %74, !dbg !2773

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2773
  %78 = load i8*, i8** %77, align 8, !dbg !2773
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2776
  store i8* %78, i8** %79, align 8, !dbg !2777, !tbaa !625
  %80 = icmp eq i8* %78, null, !dbg !2778
  br i1 %80, label %30, label %81, !dbg !2779

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %82 = icmp ult i32 %75, 41, !dbg !2773
  br i1 %82, label %86, label %83, !dbg !2773

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2773
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2773
  store i8* %85, i8** %10, align 8, !dbg !2773
  br label %91, !dbg !2773

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2773
  %88 = sext i32 %75 to i64, !dbg !2773
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2773
  %90 = add i32 %75, 8, !dbg !2773
  store i32 %90, i32* %8, align 8, !dbg !2773
  br label %91, !dbg !2773

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2773
  %95 = load i8*, i8** %94, align 8, !dbg !2773
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2776
  store i8* %95, i8** %96, align 16, !dbg !2777, !tbaa !625
  %97 = icmp eq i8* %95, null, !dbg !2778
  br i1 %97, label %30, label %98, !dbg !2779

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %99 = icmp ult i32 %92, 41, !dbg !2773
  br i1 %99, label %103, label %100, !dbg !2773

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2773
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2773
  store i8* %102, i8** %10, align 8, !dbg !2773
  br label %108, !dbg !2773

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2773
  %105 = sext i32 %92 to i64, !dbg !2773
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2773
  %107 = add i32 %92, 8, !dbg !2773
  store i32 %107, i32* %8, align 8, !dbg !2773
  br label %108, !dbg !2773

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2773
  %111 = load i8*, i8** %110, align 8, !dbg !2773
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2776
  store i8* %111, i8** %112, align 8, !dbg !2777, !tbaa !625
  %113 = icmp eq i8* %111, null, !dbg !2778
  br i1 %113, label %30, label %114, !dbg !2779

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %115 = load i8*, i8** %10, align 8, !dbg !2773
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2773
  store i8* %116, i8** %10, align 8, !dbg !2773
  %117 = bitcast i8* %115 to i8**, !dbg !2773
  %118 = load i8*, i8** %117, align 8, !dbg !2773
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2776
  store i8* %118, i8** %119, align 16, !dbg !2777, !tbaa !625
  %120 = icmp eq i8* %118, null, !dbg !2778
  br i1 %120, label %30, label %121, !dbg !2779

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %122 = load i8*, i8** %10, align 8, !dbg !2773
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2773
  store i8* %123, i8** %10, align 8, !dbg !2773
  %124 = bitcast i8* %122 to i8**, !dbg !2773
  %125 = load i8*, i8** %124, align 8, !dbg !2773
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2776
  store i8* %125, i8** %126, align 8, !dbg !2777, !tbaa !625
  %127 = icmp eq i8* %125, null, !dbg !2778
  br i1 %127, label %30, label %128, !dbg !2779

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %129 = load i8*, i8** %10, align 8, !dbg !2773
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2773
  store i8* %130, i8** %10, align 8, !dbg !2773
  %131 = bitcast i8* %129 to i8**, !dbg !2773
  %132 = load i8*, i8** %131, align 8, !dbg !2773
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2776
  store i8* %132, i8** %133, align 16, !dbg !2777, !tbaa !625
  %134 = icmp eq i8* %132, null, !dbg !2778
  br i1 %134, label %30, label %135, !dbg !2779

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2762, metadata !618), !dbg !2772
  %136 = load i8*, i8** %10, align 8, !dbg !2773
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2773
  store i8* %137, i8** %10, align 8, !dbg !2773
  %138 = bitcast i8* %136 to i8**, !dbg !2773
  %139 = load i8*, i8** %138, align 8, !dbg !2773
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2776
  store i8* %139, i8** %140, align 8, !dbg !2777, !tbaa !625
  %141 = icmp eq i8* %139, null, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2762, metadata !618), !dbg !2772
  %142 = select i1 %141, i64 9, i64 10, !dbg !2779
  br label %30, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2782 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2786, metadata !618), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2787, metadata !618), !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2788, metadata !618), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2789, metadata !618), !dbg !2800
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2801
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2801
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2790, metadata !618), !dbg !2802
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2803
  call void @llvm.va_start(i8* nonnull %6), !dbg !2803
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2804
  call void @llvm.va_end(i8* nonnull %6), !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2806
  ret void, !dbg !2806
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2807 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.99, i64 0, i64 0), i32 5) #10, !dbg !2808
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.100, i64 0, i64 0)) #10, !dbg !2808
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #10, !dbg !2809
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.102, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.103, i64 0, i64 0)) #10, !dbg !2809
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.104, i64 0, i64 0), i32 5) #10, !dbg !2810
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2810, !tbaa !625
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2810
  ret void, !dbg !2811
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2812 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2816, metadata !618), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2817, metadata !618), !dbg !2819
  %3 = udiv i64 9223372036854775807, %1, !dbg !2820
  %4 = icmp ult i64 %3, %0, !dbg !2820
  br i1 %4, label %5, label %6, !dbg !2822

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2823
  unreachable, !dbg !2823

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2825, metadata !618) #10, !dbg !2832
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2831, metadata !618) #10, !dbg !2835
  %9 = icmp eq i8* %8, null, !dbg !2836
  %10 = icmp ne i64 %7, 0, !dbg !2838
  %11 = and i1 %10, %9, !dbg !2839
  br i1 %11, label %12, label %13, !dbg !2839

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2840
  unreachable, !dbg !2840

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2841
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2826 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2825, metadata !618), !dbg !2842
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2831, metadata !618), !dbg !2844
  %3 = icmp eq i8* %2, null, !dbg !2845
  %4 = icmp ne i64 %0, 0, !dbg !2846
  %5 = and i1 %4, %3, !dbg !2847
  br i1 %5, label %6, label %7, !dbg !2847

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2848
  unreachable, !dbg !2848

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2849
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2850 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2854, metadata !618), !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2855, metadata !618), !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2856, metadata !618), !dbg !2859
  %4 = udiv i64 9223372036854775807, %2, !dbg !2860
  %5 = icmp ult i64 %4, %1, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2862

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2863
  unreachable, !dbg !2863

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !618) #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2870, metadata !618) #10, !dbg !2873
  %9 = icmp eq i64 %8, 0, !dbg !2874
  %10 = icmp ne i8* %0, null, !dbg !2876
  %11 = and i1 %10, %9, !dbg !2877
  br i1 %11, label %12, label %13, !dbg !2877

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2878
  br label %19, !dbg !2880

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2865, metadata !618) #10, !dbg !2871
  %15 = icmp eq i8* %14, null, !dbg !2882
  %16 = icmp ne i64 %8, 0, !dbg !2884
  %17 = and i1 %16, %15, !dbg !2885
  br i1 %17, label %18, label %19, !dbg !2885

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2886
  unreachable, !dbg !2886

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2887
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2866 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !618), !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2870, metadata !618), !dbg !2889
  %3 = icmp eq i64 %1, 0, !dbg !2890
  %4 = icmp ne i8* %0, null, !dbg !2891
  %5 = and i1 %4, %3, !dbg !2892
  br i1 %5, label %6, label %7, !dbg !2892

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2893
  br label %13, !dbg !2894

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2865, metadata !618), !dbg !2888
  %9 = icmp eq i8* %8, null, !dbg !2896
  %10 = icmp ne i64 %1, 0, !dbg !2897
  %11 = and i1 %10, %9, !dbg !2898
  br i1 %11, label %12, label %13, !dbg !2898

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2899
  unreachable, !dbg !2899

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2900
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !578 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !583, metadata !618), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !584, metadata !618), !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !585, metadata !618), !dbg !2903
  %4 = load i64, i64* %1, align 8, !dbg !2904, !tbaa !1939
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !586, metadata !618), !dbg !2905
  %5 = icmp eq i8* %0, null, !dbg !2906
  br i1 %5, label %6, label %13, !dbg !2908

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2909
  br i1 %7, label %8, label %17, !dbg !2912

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !586, metadata !618), !dbg !2905
  %10 = icmp ugt i64 %2, 128, !dbg !2915
  %11 = zext i1 %10 to i64, !dbg !2915
  %12 = add nuw nsw i64 %9, %11, !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !586, metadata !618), !dbg !2905
  br label %17, !dbg !2917

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2918
  %15 = icmp ugt i64 %14, %4, !dbg !2921
  br i1 %15, label %20, label %16, !dbg !2922

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2923
  unreachable, !dbg !2923

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !586, metadata !618), !dbg !2905
  store i64 %18, i64* %1, align 8, !dbg !2924, !tbaa !1939
  %19 = mul i64 %18, %2, !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !618) #10, !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2870, metadata !618) #10, !dbg !2928
  br label %27, !dbg !2929

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2930
  %22 = add i64 %4, 1, !dbg !2931
  %23 = add i64 %22, %21, !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !586, metadata !618), !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !586, metadata !618), !dbg !2905
  store i64 %23, i64* %1, align 8, !dbg !2924, !tbaa !1939
  %24 = mul i64 %23, %2, !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !618) #10, !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2870, metadata !618) #10, !dbg !2928
  %25 = icmp eq i64 %24, 0, !dbg !2933
  br i1 %25, label %26, label %27, !dbg !2929

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2934
  br label %34, !dbg !2935

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2865, metadata !618) #10, !dbg !2926
  %30 = icmp eq i8* %29, null, !dbg !2937
  %31 = icmp ne i64 %28, 0, !dbg !2938
  %32 = and i1 %31, %30, !dbg !2939
  br i1 %32, label %33, label %34, !dbg !2939

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2940
  unreachable, !dbg !2940

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2941
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2942 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2944, metadata !618), !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2825, metadata !618) #10, !dbg !2946
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2831, metadata !618) #10, !dbg !2949
  %3 = icmp eq i8* %2, null, !dbg !2950
  %4 = icmp ne i64 %0, 0, !dbg !2951
  %5 = and i1 %4, %3, !dbg !2952
  br i1 %5, label %6, label %7, !dbg !2952

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2953
  unreachable, !dbg !2953

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2955 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2959, metadata !618), !dbg !2961
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2960, metadata !618), !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !583, metadata !618) #10, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !584, metadata !618) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !585, metadata !618) #10, !dbg !2966
  %3 = load i64, i64* %1, align 8, !dbg !2967, !tbaa !1939
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !586, metadata !618) #10, !dbg !2968
  %4 = icmp eq i8* %0, null, !dbg !2969
  br i1 %4, label %5, label %8, !dbg !2970

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !586, metadata !618) #10, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !586, metadata !618) #10, !dbg !2968
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !586, metadata !618) #10, !dbg !2968
  store i64 %7, i64* %1, align 8, !dbg !2973, !tbaa !1939
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !618) #10, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2870, metadata !618) #10, !dbg !2976
  br label %17, !dbg !2977

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2978
  br i1 %9, label %11, label %10, !dbg !2979

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2980
  unreachable, !dbg !2980

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2981
  %13 = add i64 %3, 1, !dbg !2982
  %14 = add i64 %13, %12, !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !586, metadata !618) #10, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !586, metadata !618) #10, !dbg !2968
  store i64 %14, i64* %1, align 8, !dbg !2973, !tbaa !1939
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2865, metadata !618) #10, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2870, metadata !618) #10, !dbg !2976
  %15 = icmp eq i64 %14, 0, !dbg !2984
  br i1 %15, label %16, label %17, !dbg !2977

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2985
  br label %24, !dbg !2986

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2987
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2865, metadata !618) #10, !dbg !2974
  %20 = icmp eq i8* %19, null, !dbg !2988
  %21 = icmp ne i64 %18, 0, !dbg !2989
  %22 = and i1 %21, %20, !dbg !2990
  br i1 %22, label %23, label %24, !dbg !2990

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2991
  unreachable, !dbg !2991

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2993 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2995, metadata !618), !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2825, metadata !618) #10, !dbg !2997
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2831, metadata !618) #10, !dbg !3000
  %3 = icmp eq i8* %2, null, !dbg !3001
  %4 = icmp ne i64 %0, 0, !dbg !3002
  %5 = and i1 %4, %3, !dbg !3003
  br i1 %5, label %6, label %7, !dbg !3003

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3004
  unreachable, !dbg !3004

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3005
  ret i8* %2, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3007 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3009, metadata !618), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3010, metadata !618), !dbg !3013
  %3 = udiv i64 9223372036854775807, %1, !dbg !3014
  %4 = icmp ult i64 %3, %0, !dbg !3014
  br i1 %4, label %8, label %5, !dbg !3016

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3017
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3011, metadata !618), !dbg !3018
  %7 = icmp eq i8* %6, null, !dbg !3019
  br i1 %7, label %8, label %9, !dbg !3020

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3021
  unreachable, !dbg !3021

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3022
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3023 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3029, metadata !618), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3030, metadata !618), !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2825, metadata !618) #10, !dbg !3033
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2831, metadata !618) #10, !dbg !3036
  %4 = icmp eq i8* %3, null, !dbg !3037
  %5 = icmp ne i64 %1, 0, !dbg !3038
  %6 = and i1 %5, %4, !dbg !3039
  br i1 %6, label %7, label %8, !dbg !3039

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3040
  unreachable, !dbg !3040

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3041
  ret i8* %3, !dbg !3042
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3043 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3045, metadata !618), !dbg !3046
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3047
  %3 = add i64 %2, 1, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3029, metadata !618) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3030, metadata !618) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2825, metadata !618) #10, !dbg !3052
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2831, metadata !618) #10, !dbg !3055
  %5 = icmp eq i8* %4, null, !dbg !3056
  %6 = icmp ne i64 %3, 0, !dbg !3057
  %7 = and i1 %6, %5, !dbg !3058
  br i1 %7, label %8, label %9, !dbg !3058

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3059
  unreachable, !dbg !3059

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3060
  ret i8* %4, !dbg !3061
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3062 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3064, !tbaa !633
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.115, i64 0, i64 0), i32 5) #10, !dbg !3065
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* %2) #10, !dbg !3066
  tail call void @abort() #15, !dbg !3067
  unreachable, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3068 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3071, metadata !618), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3072, metadata !618), !dbg !3078
  %3 = icmp eq i64 %0, 0, !dbg !3079
  %4 = icmp eq i64 %1, 0, !dbg !3080
  %5 = or i1 %3, %4, !dbg !3081
  br i1 %5, label %12, label %6, !dbg !3081

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3074, metadata !618), !dbg !3083
  %8 = udiv i64 %7, %1, !dbg !3084
  %9 = icmp eq i64 %8, %0, !dbg !3086
  br i1 %9, label %12, label %10, !dbg !3087

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3088
  store i32 12, i32* %11, align 4, !dbg !3090, !tbaa !633
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3071, metadata !618), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3072, metadata !618), !dbg !3078
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3073, metadata !618), !dbg !3092
  br label %16, !dbg !3093

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3094
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3095 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3112, metadata !618), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3113, metadata !618), !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3114, metadata !618), !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3115, metadata !618), !dbg !3124
  %6 = bitcast i32* %5 to i8*, !dbg !3125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3125
  %7 = icmp eq i32* %0, null, !dbg !3126
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3112, metadata !618), !dbg !3121
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3128
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3112, metadata !618), !dbg !3121
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3116, metadata !618), !dbg !3130
  %10 = icmp ugt i64 %9, -3, !dbg !3131
  %11 = icmp ne i64 %2, 0, !dbg !3132
  %12 = and i1 %11, %10, !dbg !3133
  br i1 %12, label %13, label %18, !dbg !3133

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3134
  br i1 %14, label %18, label %15, !dbg !3135

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3136, !tbaa !776
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3118, metadata !618), !dbg !3137
  %17 = zext i8 %16 to i32, !dbg !3138
  store i32 %17, i32* %8, align 4, !dbg !3139, !tbaa !633
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3140
  ret i64 %19, !dbg !3140
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3141 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3186, metadata !618), !dbg !3191
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3192
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3193, metadata !618), !dbg !3196
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3198
  %4 = load i32, i32* %3, align 8, !dbg !3198, !tbaa !3199
  %5 = and i32 %4, 32, !dbg !3198
  %6 = icmp eq i32 %5, 0, !dbg !3200
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3201
  %8 = icmp ne i32 %7, 0, !dbg !3202
  br i1 %6, label %9, label %19, !dbg !3203

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3205
  %11 = xor i1 %8, true, !dbg !3206
  %12 = or i1 %10, %11, !dbg !3206
  %13 = sext i1 %8 to i32, !dbg !3206
  br i1 %12, label %22, label %14, !dbg !3206

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !3207
  %16 = load i32, i32* %15, align 4, !dbg !3207, !tbaa !633
  %17 = icmp ne i32 %16, 9, !dbg !3208
  %18 = sext i1 %17 to i32, !dbg !3209
  br label %22, !dbg !3209

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3210

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !3212
  store i32 0, i32* %21, align 4, !dbg !3214, !tbaa !633
  br label %22, !dbg !3212

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3215
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3221, metadata !618), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3222, metadata !618), !dbg !3225
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3223, metadata !618), !dbg !3227
  %3 = icmp eq i8* %2, null, !dbg !3228
  br i1 %3, label %11, label %4, !dbg !3230

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i64 0, i64 0)) #14, !dbg !3231
  %6 = icmp eq i32 %5, 0, !dbg !3236
  br i1 %6, label %10, label %7, !dbg !3237

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0)) #14, !dbg !3238
  %9 = icmp eq i32 %8, 0, !dbg !3239
  br i1 %9, label %10, label %11, !dbg !3240

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3222, metadata !618), !dbg !3225
  br label %11, !dbg !3241

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3243 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3249, metadata !618), !dbg !3323
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3316, metadata !618), !dbg !3326
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3247, metadata !618), !dbg !3328
  %4 = icmp eq i8* %3, null, !dbg !3329
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %3, !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3247, metadata !618), !dbg !3328
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3332, !tbaa !625
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3263, metadata !618) #10, !dbg !3333
  %7 = icmp eq i8* %6, null, !dbg !3334
  br i1 %7, label %8, label %123, !dbg !3335

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.130, i64 0, i64 0)) #10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3264, metadata !618) #10, !dbg !3337
  %10 = icmp eq i8* %9, null, !dbg !3338
  br i1 %10, label %14, label %11, !dbg !3340

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3341, !tbaa !776
  %13 = icmp eq i8 %12, 0, !dbg !3342
  br i1 %13, label %14, label %15, !dbg !3343

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3344

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.131, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3264, metadata !618) #10, !dbg !3337
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3267, metadata !618) #10, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3269, metadata !618) #10, !dbg !3347
  %18 = icmp eq i64 %17, 0, !dbg !3348
  br i1 %18, label %24, label %19, !dbg !3349

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3350
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3350
  %22 = load i8, i8* %21, align 1, !dbg !3350, !tbaa !776
  %23 = icmp ne i8 %22, 47, !dbg !3350
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3351
  %27 = add i64 %17, 14, !dbg !3352
  %28 = add i64 %27, %26, !dbg !3353
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3266, metadata !618) #10, !dbg !3355
  %30 = icmp eq i8* %29, null, !dbg !3356
  br i1 %30, label %121, label %31, !dbg !3356

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3357
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3360

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3361, !tbaa !776
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3363
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.132, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3364
  br label %37, !dbg !3365

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3363
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.132, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3364
  br label %37, !dbg !3365

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3366
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3271, metadata !618) #10, !dbg !3367
  %39 = icmp slt i32 %38, 0, !dbg !3368
  br i1 %39, label %119, label %40, !dbg !3369

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.133, i64 0, i64 0)) #10, !dbg !3370
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3272, metadata !618) #10, !dbg !3371
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3372
  br i1 %42, label %43, label %45, !dbg !3373

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3374
  br label %119, !dbg !3376

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3313, metadata !618) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3379

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3380

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3313, metadata !618) #10, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3380
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3381
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3382, metadata !618) #10, !dbg !3387
  %54 = load i8*, i8** %48, align 8, !dbg !3389, !tbaa !3390
  %55 = load i8*, i8** %49, align 8, !dbg !3389, !tbaa !3391
  %56 = icmp ult i8* %54, %55, !dbg !3389
  br i1 %56, label %59, label %57, !dbg !3389, !prof !775

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3389
  br label %63, !dbg !3389

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3389
  store i8* %60, i8** %48, align 8, !dbg !3389, !tbaa !3390
  %61 = load i8, i8* %54, align 1, !dbg !3389, !tbaa !776
  %62 = zext i8 %61 to i32, !dbg !3389
  br label %63, !dbg !3389

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3389
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3315, metadata !618) #10, !dbg !3392
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3393, !llvm.loop !3394

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3399

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3382, metadata !618) #10, !dbg !3401
  %67 = load i8*, i8** %48, align 8, !dbg !3399, !tbaa !3390
  %68 = load i8*, i8** %49, align 8, !dbg !3399, !tbaa !3391
  %69 = icmp ult i8* %67, %68, !dbg !3399
  br i1 %69, label %72, label %70, !dbg !3399, !prof !775

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3399
  br label %76, !dbg !3399

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3399
  store i8* %73, i8** %48, align 8, !dbg !3399, !tbaa !3390
  %74 = load i8, i8* %67, align 1, !dbg !3399, !tbaa !776
  %75 = zext i8 %74 to i32, !dbg !3399
  br label %76, !dbg !3399

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3399
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3315, metadata !618) #10, !dbg !3392
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3402, !llvm.loop !3403

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3406
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.134, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3407
  %81 = icmp slt i32 %80, 2, !dbg !3409
  br i1 %81, label %112, label %82, !dbg !3410

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3320, metadata !618) #10, !dbg !3412
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3321, metadata !618) #10, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3322, metadata !618) #10, !dbg !3415
  %85 = icmp eq i64 %51, 0, !dbg !3416
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3418

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  %90 = add i64 %87, 2, !dbg !3419
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3313, metadata !618) #10, !dbg !3377
  br label %96, !dbg !3422

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  %94 = add i64 %93, 1, !dbg !3425
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3313, metadata !618) #10, !dbg !3377
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3313, metadata !618) #10, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  %99 = icmp eq i8* %98, null, !dbg !3427
  br i1 %99, label %100, label %102, !dbg !3429

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  call void @free(i8* %52) #10, !dbg !3430
  br label %112, !dbg !3432

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3433
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3434
  %104 = xor i64 %84, -1, !dbg !3435
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3435
  %106 = xor i64 %83, -1, !dbg !3436
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3437, metadata !618) #10, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3445, metadata !618) #10, !dbg !3446
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3448
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3437, metadata !618) #10, !dbg !3450
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3445, metadata !618) #10, !dbg !3450
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3452
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3313, metadata !618) #10, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3314, metadata !618) #10, !dbg !3378
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3433
  br label %50, !dbg !3454, !llvm.loop !3403

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3433
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3455
  %116 = icmp eq i64 %113, 0, !dbg !3456
  br i1 %116, label %119, label %117, !dbg !3458

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3459
  store i8 0, i8* %118, align 1, !dbg !3461, !tbaa !776
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3263, metadata !618) #10, !dbg !3333
  call void @free(i8* %29) #10, !dbg !3462
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3263, metadata !618) #10, !dbg !3333
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3463, !tbaa !625
  br label %123, !dbg !3464

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3263, metadata !618) #10, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3248, metadata !618), !dbg !3465
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3248, metadata !618), !dbg !3465
  %125 = load i8, i8* %124, align 1, !dbg !3466, !tbaa !776
  %126 = icmp eq i8 %125, 0, !dbg !3468
  br i1 %126, label %152, label %127, !dbg !3469

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3470

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3248, metadata !618), !dbg !3465
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3470
  %132 = icmp eq i32 %131, 0, !dbg !3472
  br i1 %132, label %139, label %133, !dbg !3473

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3474
  br i1 %134, label %135, label %143, !dbg !3475

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3476
  %137 = load i8, i8* %136, align 1, !dbg !3476, !tbaa !776
  %138 = icmp eq i8 %137, 0, !dbg !3477
  br i1 %138, label %139, label %143, !dbg !3478

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3479
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3481
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3247, metadata !618), !dbg !3328
  br label %152, !dbg !3483

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3484
  %145 = add i64 %144, 1, !dbg !3485
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3248, metadata !618), !dbg !3465
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3487
  %148 = add i64 %147, 1, !dbg !3488
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3248, metadata !618), !dbg !3465
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3248, metadata !618), !dbg !3465
  %150 = load i8, i8* %149, align 1, !dbg !3466, !tbaa !776
  %151 = icmp eq i8 %150, 0, !dbg !3468
  br i1 %151, label %152, label %128, !dbg !3469, !llvm.loop !3490

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3247, metadata !618), !dbg !3328
  %154 = load i8, i8* %153, align 1, !dbg !3492, !tbaa !776
  %155 = icmp eq i8 %154, 0, !dbg !3494
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %153, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3247, metadata !618), !dbg !3328
  ret i8* %156, !dbg !3496
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3497 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3542, metadata !618), !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3543, metadata !618), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3545, metadata !618), !dbg !3548
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3544, metadata !618), !dbg !3550
  %3 = icmp slt i32 %2, 0, !dbg !3551
  br i1 %3, label %4, label %6, !dbg !3553

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3554
  br label %24, !dbg !3555

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3556
  %8 = icmp eq i32 %7, 0, !dbg !3556
  br i1 %8, label %13, label %9, !dbg !3558

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3559
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3560
  %12 = icmp eq i64 %11, -1, !dbg !3561
  br i1 %12, label %16, label %13, !dbg !3562

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3563
  %15 = icmp eq i32 %14, 0, !dbg !3563
  br i1 %15, label %16, label %18, !dbg !3564

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3543, metadata !618), !dbg !3547
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3545, metadata !618), !dbg !3548
  br label %24, !dbg !3566

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !3567
  %20 = load i32, i32* %19, align 4, !dbg !3567, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3543, metadata !618), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3543, metadata !618), !dbg !3547
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3545, metadata !618), !dbg !3548
  %22 = icmp eq i32 %20, 0, !dbg !3568
  br i1 %22, label %24, label %23, !dbg !3566

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3570, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3545, metadata !618), !dbg !3548
  br label %24, !dbg !3572

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3573
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3574 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3619, metadata !618), !dbg !3620
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3621
  br i1 %2, label %6, label %3, !dbg !3623

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3624
  %5 = icmp eq i32 %4, 0, !dbg !3624
  br i1 %5, label %6, label %8, !dbg !3625

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3626
  br label %17, !dbg !3627

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3628, metadata !618) #10, !dbg !3633
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3635
  %10 = load i32, i32* %9, align 8, !dbg !3635, !tbaa !3199
  %11 = and i32 %10, 256, !dbg !3637
  %12 = icmp eq i32 %11, 0, !dbg !3637
  br i1 %12, label %15, label %13, !dbg !3638

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3639
  br label %15, !dbg !3639

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3640
  br label %17, !dbg !3641

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3642
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3643 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3689, metadata !618), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3690, metadata !618), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3691, metadata !618), !dbg !3697
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3698
  %5 = load i8*, i8** %4, align 8, !dbg !3698, !tbaa !3391
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3699
  %7 = load i8*, i8** %6, align 8, !dbg !3699, !tbaa !3390
  %8 = icmp eq i8* %5, %7, !dbg !3700
  br i1 %8, label %9, label %28, !dbg !3701

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3702
  %11 = load i8*, i8** %10, align 8, !dbg !3702, !tbaa !770
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3703
  %13 = load i8*, i8** %12, align 8, !dbg !3703, !tbaa !3704
  %14 = icmp eq i8* %11, %13, !dbg !3705
  br i1 %14, label %15, label %28, !dbg !3706

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3707
  %17 = load i8*, i8** %16, align 8, !dbg !3707, !tbaa !3708
  %18 = icmp eq i8* %17, null, !dbg !3709
  br i1 %18, label %19, label %28, !dbg !3710

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3711
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3692, metadata !618), !dbg !3713
  %22 = icmp eq i64 %21, -1, !dbg !3714
  br i1 %22, label %30, label %23, !dbg !3716

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3717
  %25 = load i32, i32* %24, align 8, !dbg !3718, !tbaa !3199
  %26 = and i32 %25, -17, !dbg !3718
  store i32 %26, i32* %24, align 8, !dbg !3718, !tbaa !3199
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3719
  store i64 %21, i64* %27, align 8, !dbg !3720, !tbaa !3721
  br label %30, !dbg !3722

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3723
  br label %30, !dbg !3724

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3725
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
attributes #16 = { nounwind readnone }
attributes #17 = { cold }

!llvm.dbg.cu = !{!9, !94, !99, !104, !112, !119, !126, !565, !210, !573, !590, !592, !594, !597, !599, !219, !601, !603, !605}
!llvm.ident = !{!607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607}
!llvm.module.flags = !{!608, !609, !610, !611, !612}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "infomap", scope: !2, file: !3, line: 632, type: !89, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 630, type: !4, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !78)
!3 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !16)
!10 = !DIFile(filename: "src/uname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!11 = !{}
!12 = !{!13, !14, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!17, !0, !53, !67, !72}
!17 = !DIGlobalVariableExpression(var: !18)
!18 = distinct !DIGlobalVariable(name: "unknown", scope: !19, file: !10, line: 262, type: !50, isLocal: true, isDefinition: true)
!19 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 260, type: !20, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!24 = !{!25, !26, !27, !29, !44, !47}
!25 = !DILocalVariable(name: "argc", arg: 1, scope: !19, file: !10, line: 260, type: !22)
!26 = !DILocalVariable(name: "argv", arg: 2, scope: !19, file: !10, line: 260, type: !23)
!27 = !DILocalVariable(name: "toprint", scope: !19, file: !10, line: 265, type: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "name", scope: !30, file: !10, line: 284, type: !32)
!30 = distinct !DILexicalBlock(scope: !31, file: !10, line: 283, column: 5)
!31 = distinct !DILexicalBlock(scope: !19, file: !10, line: 280, column: 7)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !33, line: 48, size: 3120, elements: !34)
!33 = !DIFile(filename: "/usr/include/sys/utsname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !{!35, !39, !40, !41, !42, !43}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !32, file: !33, line: 51, baseType: !36, size: 520)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 520, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 65)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !32, file: !33, line: 54, baseType: !36, size: 520, offset: 520)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !32, file: !33, line: 57, baseType: !36, size: 520, offset: 1040)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !32, file: !33, line: 59, baseType: !36, size: 520, offset: 1560)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !32, file: !33, line: 62, baseType: !36, size: 520, offset: 2080)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !32, file: !33, line: 67, baseType: !36, size: 520, offset: 2600)
!44 = !DILocalVariable(name: "element", scope: !45, file: !10, line: 303, type: !6)
!45 = distinct !DILexicalBlock(scope: !46, file: !10, line: 302, column: 5)
!46 = distinct !DILexicalBlock(scope: !19, file: !10, line: 301, column: 7)
!47 = !DILocalVariable(name: "element", scope: !48, file: !10, line: 347, type: !6)
!48 = distinct !DILexicalBlock(scope: !49, file: !10, line: 346, column: 5)
!49 = distinct !DILexicalBlock(scope: !19, file: !10, line: 345, column: 7)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 8)
!53 = !DIGlobalVariableExpression(var: !54)
!54 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !9, file: !10, line: 107, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 768, elements: !65)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !58, line: 50, size: 256, elements: !59)
!58 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !{!60, !61, !62, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 52, baseType: !6, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !57, file: !58, line: 55, baseType: !22, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !57, file: !58, line: 56, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !57, file: !58, line: 57, baseType: !22, size: 32, offset: 192)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !9, file: !10, line: 89, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 3584, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 14)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "printed", scope: !74, file: !10, line: 163, type: !77, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "print_element", scope: !10, file: !10, line: 161, type: !4, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !75)
!75 = !{!76}
!76 = !DILocalVariable(name: "element", arg: 1, scope: !74, file: !10, line: 161, type: !6)
!77 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!78 = !{!79, !80, !81, !88}
!79 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 630, type: !6)
!80 = !DILocalVariable(name: "node", scope: !2, file: !3, line: 642, type: !6)
!81 = !DILocalVariable(name: "map_prog", scope: !2, file: !3, line: 643, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !2, file: !3, line: 632, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !84, file: !3, line: 632, baseType: !6, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !3, line: 632, baseType: !6, size: 64, offset: 64)
!88 = !DILocalVariable(name: "lc_messages", scope: !2, file: !3, line: 655, type: !6)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 896, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 7)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "uname_mode", scope: !94, file: !95, line: 2, type: !22, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !96)
!95 = !DIFile(filename: "src/uname-uname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !{!92}
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "Version", scope: !99, file: !100, line: 2, type: !6, isLocal: false, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !101)
!100 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !{!97}
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "file_name", scope: !104, file: !109, line: 36, type: !6, isLocal: true, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !106)
!105 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!102, !107}
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !104, file: !109, line: 46, type: !77, isLocal: true, isDefinition: true)
!109 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "exit_failure", scope: !112, file: !115, line: 24, type: !116, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !114)
!113 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!110}
!115 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "program_name", scope: !119, file: !123, line: 33, type: !6, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !121, globals: !122)
!120 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!14, !13}
!122 = !{!117}
!123 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !126, file: !171, line: 77, type: !204, isLocal: false, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !128, retainedTypes: !163, globals: !168)
!127 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !{!129, !143, !148}
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !130, line: 32, size: 32, elements: !131)
!130 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!132 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!133 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!134 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!135 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!136 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!137 = !DIEnumerator(name: "c_quoting_style", value: 5)
!138 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!139 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!140 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!141 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!142 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !130, line: 242, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!146 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!147 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 46, size: 32, elements: !150)
!149 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!151 = !DIEnumerator(name: "_ISupper", value: 256)
!152 = !DIEnumerator(name: "_ISlower", value: 512)
!153 = !DIEnumerator(name: "_ISalpha", value: 1024)
!154 = !DIEnumerator(name: "_ISdigit", value: 2048)
!155 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!156 = !DIEnumerator(name: "_ISspace", value: 8192)
!157 = !DIEnumerator(name: "_ISprint", value: 16384)
!158 = !DIEnumerator(name: "_ISgraph", value: 32768)
!159 = !DIEnumerator(name: "_ISblank", value: 1)
!160 = !DIEnumerator(name: "_IScntrl", value: 2)
!161 = !DIEnumerator(name: "_ISpunct", value: 4)
!162 = !DIEnumerator(name: "_ISalnum", value: 8)
!163 = !{!22, !164, !165, !13}
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 62, baseType: !167)
!166 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !{!124, !169, !176, !186, !188, !193, !200, !202}
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !126, file: !171, line: 93, type: !172, isLocal: false, isDefinition: true)
!171 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!174 = !{!175}
!175 = !DISubrange(count: 10)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !126, file: !171, line: 1043, type: !178, isLocal: false, isDefinition: true)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !171, line: 57, size: 448, elements: !179)
!179 = !{!180, !181, !182, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !178, file: !171, line: 60, baseType: !129, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !171, line: 63, baseType: !22, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !178, file: !171, line: 67, baseType: !183, size: 256, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !51)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !178, file: !171, line: 70, baseType: !6, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !178, file: !171, line: 73, baseType: !6, size: 64, offset: 384)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !126, file: !171, line: 108, type: !178, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "slot0", scope: !126, file: !171, line: 834, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 256)
!193 = !DIGlobalVariableExpression(var: !194)
!194 = distinct !DIGlobalVariable(name: "slotvec", scope: !126, file: !171, line: 837, type: !195, isLocal: true, isDefinition: true)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !171, line: 826, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !171, line: 828, baseType: !165, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !196, file: !171, line: 829, baseType: !13, size: 64, offset: 64)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "nslots", scope: !126, file: !171, line: 835, type: !22, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "slotvec0", scope: !126, file: !171, line: 836, type: !196, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 704, elements: !206)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!206 = !{!207}
!207 = !DISubrange(count: 11)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !210, file: !213, line: 26, type: !214, isLocal: false, isDefinition: true)
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !212)
!211 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !{!208}
!213 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 47)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !219, file: !563, line: 120, type: !564, isLocal: true, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !560, globals: !562)
!220 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !223, line: 41, size: 32, elements: !224)
!223 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!225 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!226 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!227 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!228 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!229 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!230 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!231 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!232 = !DIEnumerator(name: "DAY_1", value: 131079)
!233 = !DIEnumerator(name: "DAY_2", value: 131080)
!234 = !DIEnumerator(name: "DAY_3", value: 131081)
!235 = !DIEnumerator(name: "DAY_4", value: 131082)
!236 = !DIEnumerator(name: "DAY_5", value: 131083)
!237 = !DIEnumerator(name: "DAY_6", value: 131084)
!238 = !DIEnumerator(name: "DAY_7", value: 131085)
!239 = !DIEnumerator(name: "ABMON_1", value: 131086)
!240 = !DIEnumerator(name: "ABMON_2", value: 131087)
!241 = !DIEnumerator(name: "ABMON_3", value: 131088)
!242 = !DIEnumerator(name: "ABMON_4", value: 131089)
!243 = !DIEnumerator(name: "ABMON_5", value: 131090)
!244 = !DIEnumerator(name: "ABMON_6", value: 131091)
!245 = !DIEnumerator(name: "ABMON_7", value: 131092)
!246 = !DIEnumerator(name: "ABMON_8", value: 131093)
!247 = !DIEnumerator(name: "ABMON_9", value: 131094)
!248 = !DIEnumerator(name: "ABMON_10", value: 131095)
!249 = !DIEnumerator(name: "ABMON_11", value: 131096)
!250 = !DIEnumerator(name: "ABMON_12", value: 131097)
!251 = !DIEnumerator(name: "MON_1", value: 131098)
!252 = !DIEnumerator(name: "MON_2", value: 131099)
!253 = !DIEnumerator(name: "MON_3", value: 131100)
!254 = !DIEnumerator(name: "MON_4", value: 131101)
!255 = !DIEnumerator(name: "MON_5", value: 131102)
!256 = !DIEnumerator(name: "MON_6", value: 131103)
!257 = !DIEnumerator(name: "MON_7", value: 131104)
!258 = !DIEnumerator(name: "MON_8", value: 131105)
!259 = !DIEnumerator(name: "MON_9", value: 131106)
!260 = !DIEnumerator(name: "MON_10", value: 131107)
!261 = !DIEnumerator(name: "MON_11", value: 131108)
!262 = !DIEnumerator(name: "MON_12", value: 131109)
!263 = !DIEnumerator(name: "AM_STR", value: 131110)
!264 = !DIEnumerator(name: "PM_STR", value: 131111)
!265 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!266 = !DIEnumerator(name: "D_FMT", value: 131113)
!267 = !DIEnumerator(name: "T_FMT", value: 131114)
!268 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!269 = !DIEnumerator(name: "ERA", value: 131116)
!270 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!271 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!272 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!273 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!274 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!275 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!276 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!277 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!278 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!279 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!280 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!281 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!282 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!283 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!284 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!285 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!286 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!287 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!288 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!289 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!290 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!291 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!292 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!293 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!294 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!295 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!296 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!297 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!298 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!299 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!300 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!301 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!302 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!303 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!304 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!305 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!306 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!307 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!308 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!309 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!310 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!311 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!312 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!313 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!314 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!315 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!316 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!317 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!318 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!319 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!320 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!321 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!322 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!323 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!324 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!325 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!326 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!327 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!328 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!329 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!330 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!331 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!332 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!333 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!334 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!335 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!336 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!337 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!338 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!339 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!340 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!341 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!342 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!343 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!344 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!345 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!346 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!347 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!348 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!349 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!350 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!351 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!352 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!353 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!354 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!355 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!356 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!357 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!358 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!359 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!360 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!362 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!365 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!366 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!367 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!368 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!369 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!370 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!371 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!372 = !DIEnumerator(name: "CODESET", value: 14)
!373 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!374 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!375 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!376 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!428 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!429 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!444 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!445 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!446 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!447 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!448 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!449 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!450 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!451 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!452 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!453 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!454 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!455 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!456 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!457 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!458 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!459 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!460 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!461 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!462 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!463 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!464 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!465 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!466 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!483 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!484 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!487 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!488 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!489 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!490 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!491 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!492 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!493 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!494 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!495 = !DIEnumerator(name: "THOUSEP", value: 65537)
!496 = !DIEnumerator(name: "__GROUPING", value: 65538)
!497 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!498 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!499 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!500 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!501 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!502 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!503 = !DIEnumerator(name: "__YESSTR", value: 327682)
!504 = !DIEnumerator(name: "__NOSTR", value: 327683)
!505 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!506 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!507 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!508 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!509 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!510 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!516 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!517 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!518 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!519 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!526 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!528 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!529 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!530 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!531 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!532 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!535 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!536 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!537 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!538 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!539 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!540 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!541 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!558 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!559 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!560 = !{!14, !13, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!562 = !{!217}
!563 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !567, retainedTypes: !572)
!566 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!568}
!568 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !569, line: 41, size: 32, elements: !570)
!569 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!571}
!571 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!572 = !{!14}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !575, retainedTypes: !589)
!574 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = !{!576}
!576 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !578, file: !577, line: 192, size: 32, elements: !587)
!577 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DISubprogram(name: "x2nrealloc", scope: !577, file: !577, line: 180, type: !579, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !582)
!579 = !DISubroutineType(types: !580)
!580 = !{!14, !14, !581, !165}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!582 = !{!583, !584, !585, !586}
!583 = !DILocalVariable(name: "p", arg: 1, scope: !578, file: !577, line: 180, type: !14)
!584 = !DILocalVariable(name: "pn", arg: 2, scope: !578, file: !577, line: 180, type: !581)
!585 = !DILocalVariable(name: "s", arg: 3, scope: !578, file: !577, line: 180, type: !165)
!586 = !DILocalVariable(name: "n", scope: !578, file: !577, line: 182, type: !165)
!587 = !{!588}
!588 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!589 = !{!165, !13, !14}
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!591 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !572)
!593 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !596)
!595 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!165}
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!598 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!600 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!602 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !572)
!604 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !572)
!606 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!608 = !{i32 2, !"Dwarf Version", i32 4}
!609 = !{i32 2, !"Debug Info Version", i32 3}
!610 = !{i32 1, !"wchar_size", i32 4}
!611 = !{i32 7, !"PIC Level", i32 2}
!612 = !{i32 7, !"PIE Level", i32 2}
!613 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 115, type: !614, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !9, variables: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !22}
!616 = !{!617}
!617 = !DILocalVariable(name: "status", arg: 1, scope: !613, file: !10, line: 115, type: !22)
!618 = !DIExpression()
!619 = !DILocation(line: 115, column: 12, scope: !613)
!620 = !DILocation(line: 117, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !613, file: !10, line: 117, column: 7)
!622 = !DILocation(line: 117, column: 7, scope: !613)
!623 = !DILocation(line: 118, column: 5, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !10, line: 118, column: 5)
!625 = !{!626, !626, i64 0}
!626 = !{!"any pointer", !627, i64 0}
!627 = !{!"omnipotent char", !628, i64 0}
!628 = !{!"Simple C/C++ TBAA"}
!629 = !DILocation(line: 121, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !621, file: !10, line: 120, column: 5)
!631 = !DILocation(line: 123, column: 11, scope: !632)
!632 = distinct !DILexicalBlock(scope: !630, file: !10, line: 123, column: 11)
!633 = !{!634, !634, i64 0}
!634 = !{!"int", !627, i64 0}
!635 = !DILocation(line: 123, column: 22, scope: !632)
!636 = !DILocation(line: 123, column: 11, scope: !630)
!637 = !DILocation(line: 125, column: 11, scope: !638)
!638 = distinct !DILexicalBlock(scope: !632, file: !10, line: 124, column: 9)
!639 = !DILocation(line: 134, column: 11, scope: !638)
!640 = !DILocation(line: 141, column: 9, scope: !638)
!641 = !DILocation(line: 144, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !632, file: !10, line: 143, column: 9)
!643 = !DILocation(line: 150, column: 7, scope: !630)
!644 = !DILocation(line: 151, column: 7, scope: !630)
!645 = !DILocation(line: 152, column: 28, scope: !630)
!646 = !DILocation(line: 630, column: 34, scope: !2, inlinedAt: !647)
!647 = distinct !DILocation(line: 152, column: 7, scope: !630)
!648 = !DILocation(line: 642, column: 15, scope: !2, inlinedAt: !647)
!649 = !DILocation(line: 643, column: 25, scope: !2, inlinedAt: !647)
!650 = !DILocation(line: 645, column: 33, scope: !2, inlinedAt: !647)
!651 = !DILocation(line: 645, column: 3, scope: !2, inlinedAt: !647)
!652 = !DILocation(line: 648, column: 17, scope: !653, inlinedAt: !647)
!653 = distinct !DILexicalBlock(scope: !2, file: !3, line: 648, column: 7)
!654 = !{!655, !626, i64 8}
!655 = !{!"infomap", !626, i64 0, !626, i64 8}
!656 = !DILocation(line: 648, column: 7, scope: !653, inlinedAt: !647)
!657 = !DILocation(line: 648, column: 7, scope: !2, inlinedAt: !647)
!658 = !DILocation(line: 651, column: 3, scope: !2, inlinedAt: !647)
!659 = !DILocation(line: 655, column: 29, scope: !2, inlinedAt: !647)
!660 = !DILocation(line: 655, column: 15, scope: !2, inlinedAt: !647)
!661 = !DILocation(line: 656, column: 7, scope: !662, inlinedAt: !647)
!662 = distinct !DILexicalBlock(scope: !2, file: !3, line: 656, column: 7)
!663 = !DILocation(line: 656, column: 19, scope: !662, inlinedAt: !647)
!664 = !DILocation(line: 656, column: 22, scope: !662, inlinedAt: !647)
!665 = !DILocation(line: 656, column: 7, scope: !2, inlinedAt: !647)
!666 = !DILocation(line: 662, column: 7, scope: !667, inlinedAt: !647)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 657, column: 5)
!668 = !DILocation(line: 664, column: 5, scope: !667, inlinedAt: !647)
!669 = !DILocation(line: 665, column: 3, scope: !2, inlinedAt: !647)
!670 = !DILocation(line: 667, column: 3, scope: !2, inlinedAt: !647)
!671 = !DILocation(line: 154, column: 3, scope: !613)
!672 = !DILocation(line: 260, column: 11, scope: !19)
!673 = !DILocation(line: 260, column: 24, scope: !19)
!674 = !DILocation(line: 265, column: 16, scope: !19)
!675 = !DILocation(line: 268, column: 21, scope: !19)
!676 = !DILocation(line: 268, column: 3, scope: !19)
!677 = !DILocation(line: 269, column: 3, scope: !19)
!678 = !DILocation(line: 270, column: 3, scope: !19)
!679 = !DILocation(line: 271, column: 3, scope: !19)
!680 = !DILocation(line: 273, column: 3, scope: !19)
!681 = !DILocalVariable(name: "argc", arg: 1, scope: !682, file: !10, line: 175, type: !22)
!682 = distinct !DISubprogram(name: "decode_switches", scope: !10, file: !10, line: 175, type: !20, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !683)
!683 = !{!681, !684, !685, !686}
!684 = !DILocalVariable(name: "argv", arg: 2, scope: !682, file: !10, line: 175, type: !23)
!685 = !DILocalVariable(name: "c", scope: !682, file: !10, line: 177, type: !22)
!686 = !DILocalVariable(name: "toprint", scope: !682, file: !10, line: 178, type: !28)
!687 = !DILocation(line: 175, column: 22, scope: !682, inlinedAt: !688)
!688 = distinct !DILocation(line: 275, column: 13, scope: !19)
!689 = !DILocation(line: 175, column: 35, scope: !682, inlinedAt: !688)
!690 = !DILocation(line: 178, column: 16, scope: !682, inlinedAt: !688)
!691 = !DILocation(line: 180, column: 7, scope: !692, inlinedAt: !688)
!692 = distinct !DILexicalBlock(scope: !682, file: !10, line: 180, column: 7)
!693 = !DILocation(line: 180, column: 18, scope: !692, inlinedAt: !688)
!694 = !DILocation(line: 180, column: 7, scope: !682, inlinedAt: !688)
!695 = !DILocation(line: 199, column: 19, scope: !696, inlinedAt: !688)
!696 = distinct !DILexicalBlock(scope: !692, file: !10, line: 198, column: 5)
!697 = !DILocation(line: 182, column: 19, scope: !698, inlinedAt: !688)
!698 = distinct !DILexicalBlock(scope: !692, file: !10, line: 181, column: 5)
!699 = !DILocation(line: 177, column: 7, scope: !682, inlinedAt: !688)
!700 = !DILocation(line: 182, column: 7, scope: !698, inlinedAt: !688)
!701 = !DILocation(line: 187, column: 13, scope: !702, inlinedAt: !688)
!702 = distinct !DILexicalBlock(scope: !703, file: !10, line: 186, column: 13)
!703 = distinct !DILexicalBlock(scope: !698, file: !10, line: 184, column: 9)
!704 = !DILocation(line: 189, column: 13, scope: !702, inlinedAt: !688)
!705 = !DILocation(line: 192, column: 15, scope: !702, inlinedAt: !688)
!706 = !DILocation(line: 199, column: 7, scope: !696, inlinedAt: !688)
!707 = !DILocation(line: 209, column: 23, scope: !708, inlinedAt: !688)
!708 = distinct !DILexicalBlock(scope: !709, file: !10, line: 203, column: 13)
!709 = distinct !DILexicalBlock(scope: !696, file: !10, line: 201, column: 9)
!710 = !DILocation(line: 210, column: 15, scope: !708, inlinedAt: !688)
!711 = !DILocation(line: 213, column: 23, scope: !708, inlinedAt: !688)
!712 = !DILocation(line: 214, column: 15, scope: !708, inlinedAt: !688)
!713 = !DILocation(line: 217, column: 23, scope: !708, inlinedAt: !688)
!714 = !DILocation(line: 218, column: 15, scope: !708, inlinedAt: !688)
!715 = !DILocation(line: 221, column: 23, scope: !708, inlinedAt: !688)
!716 = !DILocation(line: 222, column: 15, scope: !708, inlinedAt: !688)
!717 = !DILocation(line: 225, column: 23, scope: !708, inlinedAt: !688)
!718 = !DILocation(line: 226, column: 15, scope: !708, inlinedAt: !688)
!719 = !DILocation(line: 229, column: 23, scope: !708, inlinedAt: !688)
!720 = !DILocation(line: 230, column: 15, scope: !708, inlinedAt: !688)
!721 = !DILocation(line: 233, column: 23, scope: !708, inlinedAt: !688)
!722 = !DILocation(line: 234, column: 15, scope: !708, inlinedAt: !688)
!723 = !DILocation(line: 237, column: 23, scope: !708, inlinedAt: !688)
!724 = !DILocation(line: 238, column: 15, scope: !708, inlinedAt: !688)
!725 = distinct !{!725, !726, !727}
!726 = !DILocation(line: 199, column: 7, scope: !696)
!727 = !DILocation(line: 247, column: 9, scope: !696)
!728 = !DILocation(line: 240, column: 13, scope: !708, inlinedAt: !688)
!729 = !DILocation(line: 242, column: 13, scope: !708, inlinedAt: !688)
!730 = !DILocation(line: 245, column: 15, scope: !708, inlinedAt: !688)
!731 = !DILocation(line: 250, column: 15, scope: !732, inlinedAt: !688)
!732 = distinct !DILexicalBlock(scope: !682, file: !10, line: 250, column: 7)
!733 = !DILocation(line: 250, column: 12, scope: !732, inlinedAt: !688)
!734 = !DILocation(line: 250, column: 7, scope: !682, inlinedAt: !688)
!735 = !DILocation(line: 252, column: 20, scope: !736, inlinedAt: !688)
!736 = distinct !DILexicalBlock(scope: !732, file: !10, line: 251, column: 5)
!737 = !DILocation(line: 252, column: 55, scope: !736, inlinedAt: !688)
!738 = !DILocation(line: 252, column: 50, scope: !736, inlinedAt: !688)
!739 = !DILocation(line: 252, column: 43, scope: !736, inlinedAt: !688)
!740 = !DILocation(line: 252, column: 7, scope: !736, inlinedAt: !688)
!741 = !DILocation(line: 253, column: 7, scope: !736, inlinedAt: !688)
!742 = !DILocation(line: 277, column: 15, scope: !743)
!743 = distinct !DILexicalBlock(scope: !19, file: !10, line: 277, column: 7)
!744 = !DILocation(line: 277, column: 7, scope: !19)
!745 = !DILocation(line: 281, column: 8, scope: !31)
!746 = !DILocation(line: 280, column: 7, scope: !19)
!747 = !DILocation(line: 284, column: 7, scope: !30)
!748 = !DILocation(line: 284, column: 22, scope: !30)
!749 = !DILocation(line: 286, column: 11, scope: !750)
!750 = distinct !DILexicalBlock(scope: !30, file: !10, line: 286, column: 11)
!751 = !DILocation(line: 286, column: 25, scope: !750)
!752 = !DILocation(line: 286, column: 11, scope: !30)
!753 = !DILocation(line: 287, column: 9, scope: !750)
!754 = !DILocation(line: 289, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !30, file: !10, line: 289, column: 11)
!756 = !DILocation(line: 289, column: 11, scope: !30)
!757 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !758)
!758 = distinct !DILocation(line: 290, column: 9, scope: !755)
!759 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !758)
!760 = !DILocalVariable(name: "__c", arg: 1, scope: !761, file: !762, line: 105, type: !22)
!761 = distinct !DISubprogram(name: "putchar_unlocked", scope: !762, file: !762, line: 105, type: !763, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !765)
!762 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!763 = !DISubroutineType(types: !764)
!764 = !{!22, !22}
!765 = !{!760}
!766 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !767)
!767 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !758)
!768 = distinct !DILexicalBlock(scope: !74, file: !10, line: 164, column: 7)
!769 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !767)
!770 = !{!771, !626, i64 40}
!771 = !{!"_IO_FILE", !634, i64 0, !626, i64 8, !626, i64 16, !626, i64 24, !626, i64 32, !626, i64 40, !626, i64 48, !626, i64 56, !626, i64 64, !626, i64 72, !626, i64 80, !626, i64 88, !626, i64 96, !626, i64 104, !634, i64 112, !634, i64 116, !772, i64 120, !773, i64 128, !627, i64 130, !627, i64 131, !626, i64 136, !772, i64 144, !626, i64 152, !626, i64 160, !626, i64 168, !626, i64 176, !772, i64 184, !634, i64 192, !627, i64 196}
!772 = !{!"long", !627, i64 0}
!773 = !{!"short", !627, i64 0}
!774 = !{!771, !626, i64 48}
!775 = !{!"branch_weights", i32 2000, i32 1}
!776 = !{!627, !627, i64 0}
!777 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !758)
!778 = !DILocation(line: 290, column: 9, scope: !755)
!779 = !DILocation(line: 291, column: 19, scope: !780)
!780 = distinct !DILexicalBlock(scope: !30, file: !10, line: 291, column: 11)
!781 = !DILocation(line: 291, column: 11, scope: !30)
!782 = !DILocation(line: 292, column: 24, scope: !780)
!783 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !784)
!784 = distinct !DILocation(line: 292, column: 9, scope: !780)
!785 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !784)
!786 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !787)
!787 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !784)
!788 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !787)
!789 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !784)
!790 = !DILocation(line: 292, column: 9, scope: !780)
!791 = !DILocation(line: 293, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !30, file: !10, line: 293, column: 11)
!793 = !DILocation(line: 293, column: 11, scope: !30)
!794 = !DILocation(line: 294, column: 24, scope: !792)
!795 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !796)
!796 = distinct !DILocation(line: 294, column: 9, scope: !792)
!797 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !796)
!798 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !799)
!799 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !796)
!800 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !799)
!801 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !796)
!802 = !DILocation(line: 294, column: 9, scope: !792)
!803 = !DILocation(line: 295, column: 19, scope: !804)
!804 = distinct !DILexicalBlock(scope: !30, file: !10, line: 295, column: 11)
!805 = !DILocation(line: 295, column: 11, scope: !30)
!806 = !DILocation(line: 296, column: 24, scope: !804)
!807 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !808)
!808 = distinct !DILocation(line: 296, column: 9, scope: !804)
!809 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !808)
!810 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !811)
!811 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !808)
!812 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !811)
!813 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !808)
!814 = !DILocation(line: 296, column: 9, scope: !804)
!815 = !DILocation(line: 297, column: 19, scope: !816)
!816 = distinct !DILexicalBlock(scope: !30, file: !10, line: 297, column: 11)
!817 = !DILocation(line: 297, column: 11, scope: !30)
!818 = !DILocation(line: 298, column: 24, scope: !816)
!819 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !820)
!820 = distinct !DILocation(line: 298, column: 9, scope: !816)
!821 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !820)
!822 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !823)
!823 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !820)
!824 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !823)
!825 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !820)
!826 = !DILocation(line: 298, column: 9, scope: !816)
!827 = !DILocation(line: 299, column: 5, scope: !31)
!828 = !DILocation(line: 299, column: 5, scope: !30)
!829 = !DILocation(line: 301, column: 15, scope: !46)
!830 = !DILocation(line: 341, column: 22, scope: !831)
!831 = distinct !DILexicalBlock(scope: !45, file: !10, line: 341, column: 11)
!832 = !DILocation(line: 301, column: 7, scope: !19)
!833 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !834)
!834 = distinct !DILocation(line: 342, column: 9, scope: !831)
!835 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !834)
!836 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !837)
!837 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !834)
!838 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !837)
!839 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !834)
!840 = !DILocation(line: 342, column: 9, scope: !831)
!841 = !DILocation(line: 345, column: 15, scope: !49)
!842 = !DILocation(line: 345, column: 7, scope: !19)
!843 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !844)
!844 = distinct !DILocation(line: 367, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !48, file: !10, line: 366, column: 11)
!846 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !844)
!847 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !848)
!848 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !844)
!849 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !848)
!850 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !844)
!851 = !DILocation(line: 367, column: 9, scope: !845)
!852 = !DILocation(line: 370, column: 15, scope: !853)
!853 = distinct !DILexicalBlock(scope: !19, file: !10, line: 370, column: 7)
!854 = !DILocation(line: 370, column: 7, scope: !19)
!855 = !DILocation(line: 161, column: 28, scope: !74, inlinedAt: !856)
!856 = distinct !DILocation(line: 371, column: 5, scope: !853)
!857 = !DILocation(line: 164, column: 7, scope: !74, inlinedAt: !856)
!858 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !859)
!859 = distinct !DILocation(line: 165, column: 5, scope: !768, inlinedAt: !856)
!860 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !859)
!861 = !DILocation(line: 167, column: 3, scope: !74, inlinedAt: !856)
!862 = !DILocation(line: 371, column: 5, scope: !853)
!863 = !DILocation(line: 105, column: 23, scope: !761, inlinedAt: !864)
!864 = distinct !DILocation(line: 373, column: 3, scope: !19)
!865 = !DILocation(line: 107, column: 10, scope: !761, inlinedAt: !864)
!866 = !DILocation(line: 375, column: 3, scope: !19)
!867 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !109, file: !109, line: 41, type: !4, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !868)
!868 = !{!869}
!869 = !DILocalVariable(name: "file", arg: 1, scope: !867, file: !109, line: 41, type: !6)
!870 = !DILocation(line: 41, column: 41, scope: !867)
!871 = !DILocation(line: 43, column: 13, scope: !867)
!872 = !DILocation(line: 44, column: 1, scope: !867)
!873 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !109, file: !109, line: 78, type: !874, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !77}
!876 = !{!877}
!877 = !DILocalVariable(name: "ignore", arg: 1, scope: !873, file: !109, line: 78, type: !77)
!878 = !DILocation(line: 78, column: 37, scope: !873)
!879 = !DILocation(line: 80, column: 16, scope: !873)
!880 = !{!881, !881, i64 0}
!881 = !{!"_Bool", !627, i64 0}
!882 = !DILocation(line: 81, column: 1, scope: !873)
!883 = distinct !DISubprogram(name: "close_stdout", scope: !109, file: !109, line: 107, type: !884, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{null}
!886 = !{!887}
!887 = !DILocalVariable(name: "write_error", scope: !888, file: !109, line: 112, type: !6)
!888 = distinct !DILexicalBlock(scope: !889, file: !109, line: 111, column: 5)
!889 = distinct !DILexicalBlock(scope: !883, file: !109, line: 109, column: 7)
!890 = !DILocation(line: 109, column: 21, scope: !889)
!891 = !DILocation(line: 109, column: 7, scope: !889)
!892 = !DILocation(line: 109, column: 29, scope: !889)
!893 = !DILocation(line: 110, column: 7, scope: !889)
!894 = !DILocation(line: 110, column: 12, scope: !889)
!895 = !{i8 0, i8 2}
!896 = !DILocation(line: 114, column: 19, scope: !897)
!897 = distinct !DILexicalBlock(scope: !888, file: !109, line: 113, column: 11)
!898 = !DILocation(line: 110, column: 25, scope: !889)
!899 = !DILocation(line: 110, column: 28, scope: !889)
!900 = !DILocation(line: 110, column: 34, scope: !889)
!901 = !DILocation(line: 109, column: 7, scope: !883)
!902 = !DILocation(line: 112, column: 33, scope: !888)
!903 = !DILocation(line: 112, column: 19, scope: !888)
!904 = !DILocation(line: 113, column: 11, scope: !897)
!905 = !DILocation(line: 113, column: 11, scope: !888)
!906 = !DILocation(line: 114, column: 36, scope: !897)
!907 = !DILocation(line: 114, column: 9, scope: !897)
!908 = !DILocation(line: 117, column: 9, scope: !897)
!909 = !DILocation(line: 119, column: 14, scope: !888)
!910 = !DILocation(line: 119, column: 7, scope: !888)
!911 = !DILocation(line: 122, column: 22, scope: !912)
!912 = distinct !DILexicalBlock(scope: !883, file: !109, line: 122, column: 8)
!913 = !DILocation(line: 122, column: 8, scope: !912)
!914 = !DILocation(line: 122, column: 30, scope: !912)
!915 = !DILocation(line: 122, column: 8, scope: !883)
!916 = !DILocation(line: 123, column: 13, scope: !912)
!917 = !DILocation(line: 123, column: 6, scope: !912)
!918 = !DILocation(line: 124, column: 1, scope: !883)
!919 = distinct !DISubprogram(name: "set_program_name", scope: !123, file: !123, line: 39, type: !4, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !119, variables: !920)
!920 = !{!921, !922, !923}
!921 = !DILocalVariable(name: "argv0", arg: 1, scope: !919, file: !123, line: 39, type: !6)
!922 = !DILocalVariable(name: "slash", scope: !919, file: !123, line: 46, type: !6)
!923 = !DILocalVariable(name: "base", scope: !919, file: !123, line: 47, type: !6)
!924 = !DILocation(line: 39, column: 31, scope: !919)
!925 = !DILocation(line: 51, column: 13, scope: !926)
!926 = distinct !DILexicalBlock(scope: !919, file: !123, line: 51, column: 7)
!927 = !DILocation(line: 51, column: 7, scope: !919)
!928 = !DILocation(line: 55, column: 14, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !123, line: 52, column: 5)
!930 = !DILocation(line: 54, column: 7, scope: !929)
!931 = !DILocation(line: 56, column: 7, scope: !929)
!932 = !DILocation(line: 59, column: 11, scope: !919)
!933 = !DILocation(line: 46, column: 15, scope: !919)
!934 = !DILocation(line: 60, column: 17, scope: !919)
!935 = !DILocation(line: 60, column: 33, scope: !919)
!936 = !DILocation(line: 60, column: 11, scope: !919)
!937 = !DILocation(line: 47, column: 15, scope: !919)
!938 = !DILocation(line: 61, column: 12, scope: !939)
!939 = distinct !DILexicalBlock(scope: !919, file: !123, line: 61, column: 7)
!940 = !DILocation(line: 61, column: 20, scope: !939)
!941 = !DILocation(line: 61, column: 25, scope: !939)
!942 = !DILocation(line: 61, column: 42, scope: !939)
!943 = !DILocation(line: 61, column: 28, scope: !939)
!944 = !DILocation(line: 61, column: 61, scope: !939)
!945 = !DILocation(line: 61, column: 7, scope: !919)
!946 = !DILocation(line: 64, column: 11, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !123, line: 64, column: 11)
!948 = distinct !DILexicalBlock(scope: !939, file: !123, line: 62, column: 5)
!949 = !DILocation(line: 64, column: 36, scope: !947)
!950 = !DILocation(line: 64, column: 11, scope: !948)
!951 = !DILocation(line: 66, column: 24, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !123, line: 65, column: 9)
!953 = !DILocation(line: 70, column: 41, scope: !952)
!954 = !DILocation(line: 72, column: 9, scope: !952)
!955 = !DILocation(line: 84, column: 16, scope: !919)
!956 = !DILocation(line: 90, column: 27, scope: !919)
!957 = !DILocation(line: 92, column: 1, scope: !919)
!958 = distinct !DISubprogram(name: "clone_quoting_options", scope: !171, file: !171, line: 114, type: !959, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !962)
!959 = !DISubroutineType(types: !960)
!960 = !{!961, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!962 = !{!963, !964, !965}
!963 = !DILocalVariable(name: "o", arg: 1, scope: !958, file: !171, line: 114, type: !961)
!964 = !DILocalVariable(name: "e", scope: !958, file: !171, line: 116, type: !22)
!965 = !DILocalVariable(name: "p", scope: !958, file: !171, line: 117, type: !961)
!966 = !DILocation(line: 114, column: 48, scope: !958)
!967 = !DILocation(line: 116, column: 11, scope: !958)
!968 = !DILocation(line: 116, column: 7, scope: !958)
!969 = !DILocation(line: 117, column: 40, scope: !958)
!970 = !DILocation(line: 117, column: 31, scope: !958)
!971 = !DILocation(line: 117, column: 27, scope: !958)
!972 = !DILocation(line: 119, column: 9, scope: !958)
!973 = !DILocation(line: 120, column: 3, scope: !958)
!974 = distinct !DISubprogram(name: "get_quoting_style", scope: !171, file: !171, line: 125, type: !975, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !979)
!975 = !DISubroutineType(types: !976)
!976 = !{!129, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!979 = !{!980}
!980 = !DILocalVariable(name: "o", arg: 1, scope: !974, file: !171, line: 125, type: !977)
!981 = !DILocation(line: 125, column: 50, scope: !974)
!982 = !DILocation(line: 127, column: 11, scope: !974)
!983 = !DILocation(line: 127, column: 46, scope: !974)
!984 = !{!985, !627, i64 0}
!985 = !{!"quoting_options", !627, i64 0, !634, i64 4, !627, i64 8, !626, i64 40, !626, i64 48}
!986 = !DILocation(line: 127, column: 3, scope: !974)
!987 = distinct !DISubprogram(name: "set_quoting_style", scope: !171, file: !171, line: 133, type: !988, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !961, !129}
!990 = !{!991, !992}
!991 = !DILocalVariable(name: "o", arg: 1, scope: !987, file: !171, line: 133, type: !961)
!992 = !DILocalVariable(name: "s", arg: 2, scope: !987, file: !171, line: 133, type: !129)
!993 = !DILocation(line: 133, column: 44, scope: !987)
!994 = !DILocation(line: 133, column: 66, scope: !987)
!995 = !DILocation(line: 135, column: 4, scope: !987)
!996 = !DILocation(line: 135, column: 39, scope: !987)
!997 = !DILocation(line: 135, column: 45, scope: !987)
!998 = !DILocation(line: 136, column: 1, scope: !987)
!999 = distinct !DISubprogram(name: "set_char_quoting", scope: !171, file: !171, line: 144, type: !1000, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!22, !961, !8, !22}
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1009, !1010}
!1003 = !DILocalVariable(name: "o", arg: 1, scope: !999, file: !171, line: 144, type: !961)
!1004 = !DILocalVariable(name: "c", arg: 2, scope: !999, file: !171, line: 144, type: !8)
!1005 = !DILocalVariable(name: "i", arg: 3, scope: !999, file: !171, line: 144, type: !22)
!1006 = !DILocalVariable(name: "uc", scope: !999, file: !171, line: 146, type: !15)
!1007 = !DILocalVariable(name: "p", scope: !999, file: !171, line: 147, type: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1009 = !DILocalVariable(name: "shift", scope: !999, file: !171, line: 149, type: !22)
!1010 = !DILocalVariable(name: "r", scope: !999, file: !171, line: 150, type: !22)
!1011 = !DILocation(line: 144, column: 43, scope: !999)
!1012 = !DILocation(line: 144, column: 51, scope: !999)
!1013 = !DILocation(line: 144, column: 58, scope: !999)
!1014 = !DILocation(line: 146, column: 17, scope: !999)
!1015 = !DILocation(line: 148, column: 6, scope: !999)
!1016 = !DILocation(line: 148, column: 62, scope: !999)
!1017 = !DILocation(line: 148, column: 57, scope: !999)
!1018 = !DILocation(line: 147, column: 17, scope: !999)
!1019 = !DILocation(line: 149, column: 18, scope: !999)
!1020 = !DILocation(line: 149, column: 15, scope: !999)
!1021 = !DILocation(line: 149, column: 7, scope: !999)
!1022 = !DILocation(line: 150, column: 12, scope: !999)
!1023 = !DILocation(line: 150, column: 15, scope: !999)
!1024 = !DILocation(line: 150, column: 25, scope: !999)
!1025 = !DILocation(line: 150, column: 7, scope: !999)
!1026 = !DILocation(line: 151, column: 13, scope: !999)
!1027 = !DILocation(line: 151, column: 18, scope: !999)
!1028 = !DILocation(line: 151, column: 23, scope: !999)
!1029 = !DILocation(line: 151, column: 6, scope: !999)
!1030 = !DILocation(line: 152, column: 3, scope: !999)
!1031 = distinct !DISubprogram(name: "set_quoting_flags", scope: !171, file: !171, line: 160, type: !1032, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!22, !961, !22}
!1034 = !{!1035, !1036, !1037}
!1035 = !DILocalVariable(name: "o", arg: 1, scope: !1031, file: !171, line: 160, type: !961)
!1036 = !DILocalVariable(name: "i", arg: 2, scope: !1031, file: !171, line: 160, type: !22)
!1037 = !DILocalVariable(name: "r", scope: !1031, file: !171, line: 162, type: !22)
!1038 = !DILocation(line: 160, column: 44, scope: !1031)
!1039 = !DILocation(line: 160, column: 51, scope: !1031)
!1040 = !DILocation(line: 163, column: 8, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1031, file: !171, line: 163, column: 7)
!1042 = !DILocation(line: 163, column: 7, scope: !1031)
!1043 = !DILocation(line: 165, column: 10, scope: !1031)
!1044 = !{!985, !634, i64 4}
!1045 = !DILocation(line: 162, column: 7, scope: !1031)
!1046 = !DILocation(line: 166, column: 12, scope: !1031)
!1047 = !DILocation(line: 167, column: 3, scope: !1031)
!1048 = distinct !DISubprogram(name: "set_custom_quoting", scope: !171, file: !171, line: 171, type: !1049, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !961, !6, !6}
!1051 = !{!1052, !1053, !1054}
!1052 = !DILocalVariable(name: "o", arg: 1, scope: !1048, file: !171, line: 171, type: !961)
!1053 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1048, file: !171, line: 172, type: !6)
!1054 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1048, file: !171, line: 172, type: !6)
!1055 = !DILocation(line: 171, column: 45, scope: !1048)
!1056 = !DILocation(line: 172, column: 33, scope: !1048)
!1057 = !DILocation(line: 172, column: 57, scope: !1048)
!1058 = !DILocation(line: 174, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !171, line: 174, column: 7)
!1060 = !DILocation(line: 174, column: 7, scope: !1048)
!1061 = !DILocation(line: 176, column: 6, scope: !1048)
!1062 = !DILocation(line: 176, column: 12, scope: !1048)
!1063 = !DILocation(line: 177, column: 8, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1048, file: !171, line: 177, column: 7)
!1065 = !DILocation(line: 177, column: 23, scope: !1064)
!1066 = !DILocation(line: 177, column: 19, scope: !1064)
!1067 = !DILocation(line: 178, column: 5, scope: !1064)
!1068 = !DILocation(line: 179, column: 6, scope: !1048)
!1069 = !DILocation(line: 179, column: 17, scope: !1048)
!1070 = !{!985, !626, i64 40}
!1071 = !DILocation(line: 180, column: 6, scope: !1048)
!1072 = !DILocation(line: 180, column: 18, scope: !1048)
!1073 = !{!985, !626, i64 48}
!1074 = !DILocation(line: 181, column: 1, scope: !1048)
!1075 = distinct !DISubprogram(name: "quotearg_buffer", scope: !171, file: !171, line: 776, type: !1076, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!165, !13, !165, !6, !165, !977}
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1079 = !DILocalVariable(name: "buffer", arg: 1, scope: !1075, file: !171, line: 776, type: !13)
!1080 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1075, file: !171, line: 776, type: !165)
!1081 = !DILocalVariable(name: "arg", arg: 3, scope: !1075, file: !171, line: 777, type: !6)
!1082 = !DILocalVariable(name: "argsize", arg: 4, scope: !1075, file: !171, line: 777, type: !165)
!1083 = !DILocalVariable(name: "o", arg: 5, scope: !1075, file: !171, line: 778, type: !977)
!1084 = !DILocalVariable(name: "p", scope: !1075, file: !171, line: 780, type: !977)
!1085 = !DILocalVariable(name: "e", scope: !1075, file: !171, line: 781, type: !22)
!1086 = !DILocalVariable(name: "r", scope: !1075, file: !171, line: 782, type: !165)
!1087 = !DILocation(line: 776, column: 24, scope: !1075)
!1088 = !DILocation(line: 776, column: 39, scope: !1075)
!1089 = !DILocation(line: 777, column: 30, scope: !1075)
!1090 = !DILocation(line: 777, column: 42, scope: !1075)
!1091 = !DILocation(line: 778, column: 48, scope: !1075)
!1092 = !DILocation(line: 780, column: 37, scope: !1075)
!1093 = !DILocation(line: 780, column: 33, scope: !1075)
!1094 = !DILocation(line: 781, column: 11, scope: !1075)
!1095 = !DILocation(line: 781, column: 7, scope: !1075)
!1096 = !DILocation(line: 783, column: 43, scope: !1075)
!1097 = !DILocation(line: 783, column: 53, scope: !1075)
!1098 = !DILocation(line: 783, column: 60, scope: !1075)
!1099 = !DILocation(line: 784, column: 43, scope: !1075)
!1100 = !DILocation(line: 784, column: 58, scope: !1075)
!1101 = !DILocation(line: 782, column: 14, scope: !1075)
!1102 = !DILocation(line: 782, column: 10, scope: !1075)
!1103 = !DILocation(line: 785, column: 9, scope: !1075)
!1104 = !DILocation(line: 786, column: 3, scope: !1075)
!1105 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !171, file: !171, line: 248, type: !1106, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1110)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!165, !13, !165, !6, !165, !129, !22, !1108, !6, !6}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1135, !1136, !1137, !1138, !1139, !1142, !1143, !1161, !1164, !1165, !1172}
!1111 = !DILocalVariable(name: "buffer", arg: 1, scope: !1105, file: !171, line: 248, type: !13)
!1112 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1105, file: !171, line: 248, type: !165)
!1113 = !DILocalVariable(name: "arg", arg: 3, scope: !1105, file: !171, line: 249, type: !6)
!1114 = !DILocalVariable(name: "argsize", arg: 4, scope: !1105, file: !171, line: 249, type: !165)
!1115 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1105, file: !171, line: 250, type: !129)
!1116 = !DILocalVariable(name: "flags", arg: 6, scope: !1105, file: !171, line: 250, type: !22)
!1117 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1105, file: !171, line: 251, type: !1108)
!1118 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1105, file: !171, line: 252, type: !6)
!1119 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1105, file: !171, line: 253, type: !6)
!1120 = !DILocalVariable(name: "i", scope: !1105, file: !171, line: 255, type: !165)
!1121 = !DILocalVariable(name: "len", scope: !1105, file: !171, line: 256, type: !165)
!1122 = !DILocalVariable(name: "orig_buffersize", scope: !1105, file: !171, line: 257, type: !165)
!1123 = !DILocalVariable(name: "quote_string", scope: !1105, file: !171, line: 258, type: !6)
!1124 = !DILocalVariable(name: "quote_string_len", scope: !1105, file: !171, line: 259, type: !165)
!1125 = !DILocalVariable(name: "backslash_escapes", scope: !1105, file: !171, line: 260, type: !77)
!1126 = !DILocalVariable(name: "unibyte_locale", scope: !1105, file: !171, line: 261, type: !77)
!1127 = !DILocalVariable(name: "elide_outer_quotes", scope: !1105, file: !171, line: 262, type: !77)
!1128 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1105, file: !171, line: 263, type: !77)
!1129 = !DILocalVariable(name: "encountered_single_quote", scope: !1105, file: !171, line: 264, type: !77)
!1130 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1105, file: !171, line: 265, type: !77)
!1131 = !DILocalVariable(name: "c", scope: !1132, file: !171, line: 394, type: !15)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !171, line: 393, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !171, line: 392, column: 3)
!1134 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 392, column: 3)
!1135 = !DILocalVariable(name: "esc", scope: !1132, file: !171, line: 395, type: !15)
!1136 = !DILocalVariable(name: "is_right_quote", scope: !1132, file: !171, line: 396, type: !77)
!1137 = !DILocalVariable(name: "escaping", scope: !1132, file: !171, line: 397, type: !77)
!1138 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1132, file: !171, line: 398, type: !77)
!1139 = !DILocalVariable(name: "m", scope: !1140, file: !171, line: 602, type: !165)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 600, column: 11)
!1141 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 418, column: 9)
!1142 = !DILocalVariable(name: "printable", scope: !1140, file: !171, line: 604, type: !77)
!1143 = !DILocalVariable(name: "mbstate", scope: !1144, file: !171, line: 613, type: !1146)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !171, line: 612, column: 15)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !171, line: 606, column: 17)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1147, line: 6, baseType: !1148)
!1147 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1149, line: 21, baseType: !1150)
!1149 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1149, line: 13, size: 64, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1150, file: !1149, line: 15, baseType: !22, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1150, file: !1149, line: 20, baseType: !1154, size: 32, offset: 32)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1149, line: 16, size: 32, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1154, file: !1149, line: 18, baseType: !28, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1154, file: !1149, line: 19, baseType: !1158, size: 32)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 4)
!1161 = !DILocalVariable(name: "w", scope: !1162, file: !171, line: 623, type: !1163)
!1162 = distinct !DILexicalBlock(scope: !1144, file: !171, line: 622, column: 19)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !166, line: 90, baseType: !22)
!1164 = !DILocalVariable(name: "bytes", scope: !1162, file: !171, line: 624, type: !165)
!1165 = !DILocalVariable(name: "j", scope: !1166, file: !171, line: 649, type: !165)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !171, line: 648, column: 27)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !171, line: 646, column: 29)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !171, line: 641, column: 23)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !171, line: 633, column: 30)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !171, line: 628, column: 30)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !171, line: 626, column: 25)
!1172 = !DILocalVariable(name: "ilim", scope: !1173, file: !171, line: 676, type: !165)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !171, line: 673, column: 15)
!1174 = distinct !DILexicalBlock(scope: !1140, file: !171, line: 672, column: 17)
!1175 = !DILocation(line: 248, column: 33, scope: !1105)
!1176 = !DILocation(line: 248, column: 48, scope: !1105)
!1177 = !DILocation(line: 249, column: 39, scope: !1105)
!1178 = !DILocation(line: 249, column: 51, scope: !1105)
!1179 = !DILocation(line: 250, column: 46, scope: !1105)
!1180 = !DILocation(line: 250, column: 65, scope: !1105)
!1181 = !DILocation(line: 251, column: 47, scope: !1105)
!1182 = !DILocation(line: 252, column: 39, scope: !1105)
!1183 = !DILocation(line: 253, column: 39, scope: !1105)
!1184 = !DILocation(line: 256, column: 10, scope: !1105)
!1185 = !DILocation(line: 257, column: 10, scope: !1105)
!1186 = !DILocation(line: 258, column: 15, scope: !1105)
!1187 = !DILocation(line: 259, column: 10, scope: !1105)
!1188 = !DILocation(line: 260, column: 8, scope: !1105)
!1189 = !DILocation(line: 261, column: 25, scope: !1105)
!1190 = !DILocation(line: 261, column: 36, scope: !1105)
!1191 = !DILocation(line: 262, column: 8, scope: !1105)
!1192 = !DILocation(line: 263, column: 8, scope: !1105)
!1193 = !DILocation(line: 264, column: 8, scope: !1105)
!1194 = !DILocation(line: 265, column: 8, scope: !1105)
!1195 = !DILocation(line: 265, column: 3, scope: !1105)
!1196 = !DILocation(line: 308, column: 3, scope: !1105)
!1197 = !DILocation(line: 315, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 309, column: 5)
!1199 = !DILocation(line: 315, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !171, line: 315, column: 11)
!1201 = !DILocation(line: 316, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !171, line: 316, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !171, line: 316, column: 9)
!1204 = !DILocation(line: 316, column: 9, scope: !1203)
!1205 = !DILocation(line: 354, column: 26, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !171, line: 332, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !171, line: 331, column: 13)
!1208 = distinct !DILexicalBlock(scope: !1198, file: !171, line: 330, column: 7)
!1209 = !DILocation(line: 355, column: 27, scope: !1206)
!1210 = !DILocation(line: 356, column: 11, scope: !1206)
!1211 = !DILocation(line: 357, column: 14, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !171, line: 357, column: 13)
!1213 = !DILocation(line: 357, column: 13, scope: !1208)
!1214 = !DILocation(line: 358, column: 43, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !171, line: 358, column: 11)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !171, line: 358, column: 11)
!1217 = !DILocation(line: 358, column: 11, scope: !1216)
!1218 = !DILocation(line: 359, column: 13, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !171, line: 359, column: 13)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !171, line: 359, column: 13)
!1221 = !DILocation(line: 359, column: 13, scope: !1220)
!1222 = !DILocation(line: 358, column: 70, scope: !1215)
!1223 = distinct !{!1223, !1217, !1224}
!1224 = !DILocation(line: 359, column: 13, scope: !1216)
!1225 = !DILocation(line: 362, column: 28, scope: !1208)
!1226 = !DILocation(line: 364, column: 7, scope: !1198)
!1227 = !DILocation(line: 367, column: 7, scope: !1198)
!1228 = !DILocation(line: 370, column: 7, scope: !1198)
!1229 = !DILocation(line: 373, column: 12, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1198, file: !171, line: 373, column: 11)
!1231 = !DILocation(line: 373, column: 11, scope: !1198)
!1232 = !DILocation(line: 378, column: 12, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1198, file: !171, line: 378, column: 11)
!1234 = !DILocation(line: 378, column: 11, scope: !1198)
!1235 = !DILocation(line: 379, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !171, line: 379, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !171, line: 379, column: 9)
!1238 = !DILocation(line: 379, column: 9, scope: !1237)
!1239 = !DILocation(line: 386, column: 7, scope: !1198)
!1240 = !DILocation(line: 389, column: 7, scope: !1198)
!1241 = !DILocation(line: 255, column: 10, scope: !1105)
!1242 = !DILocation(line: 392, column: 8, scope: !1134)
!1243 = !DILocation(line: 392, column: 27, scope: !1133)
!1244 = !DILocation(line: 392, column: 19, scope: !1133)
!1245 = !DILocation(line: 392, column: 60, scope: !1133)
!1246 = !DILocation(line: 392, column: 3, scope: !1134)
!1247 = !DILocation(line: 392, column: 41, scope: !1133)
!1248 = !DILocation(line: 392, column: 48, scope: !1133)
!1249 = !DILocation(line: 396, column: 12, scope: !1132)
!1250 = !DILocation(line: 397, column: 12, scope: !1132)
!1251 = !DILocation(line: 398, column: 12, scope: !1132)
!1252 = !DILocation(line: 401, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 400, column: 11)
!1254 = !DILocation(line: 403, column: 17, scope: !1253)
!1255 = !DILocation(line: 404, column: 39, scope: !1253)
!1256 = !DILocation(line: 408, column: 32, scope: !1253)
!1257 = !DILocation(line: 404, column: 19, scope: !1253)
!1258 = !DILocation(line: 404, column: 15, scope: !1253)
!1259 = !DILocation(line: 409, column: 11, scope: !1253)
!1260 = !DILocation(line: 409, column: 26, scope: !1253)
!1261 = !DILocation(line: 409, column: 14, scope: !1253)
!1262 = !DILocation(line: 409, column: 63, scope: !1253)
!1263 = !DILocation(line: 400, column: 11, scope: !1132)
!1264 = !DILocation(line: 416, column: 11, scope: !1132)
!1265 = !DILocation(line: 394, column: 21, scope: !1132)
!1266 = !DILocation(line: 417, column: 7, scope: !1132)
!1267 = !DILocation(line: 420, column: 15, scope: !1141)
!1268 = !DILocation(line: 422, column: 15, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !171, line: 422, column: 15)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !171, line: 421, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 420, column: 15)
!1272 = !DILocation(line: 422, column: 15, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !171, line: 422, column: 15)
!1274 = !DILocation(line: 422, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !171, line: 422, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !171, line: 422, column: 15)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !171, line: 422, column: 15)
!1278 = !DILocation(line: 422, column: 15, scope: !1276)
!1279 = !DILocation(line: 422, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !171, line: 422, column: 15)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !171, line: 422, column: 15)
!1282 = !DILocation(line: 422, column: 15, scope: !1281)
!1283 = !DILocation(line: 422, column: 15, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !171, line: 422, column: 15)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !171, line: 422, column: 15)
!1286 = !DILocation(line: 422, column: 15, scope: !1285)
!1287 = !DILocation(line: 422, column: 15, scope: !1277)
!1288 = !DILocation(line: 422, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !171, line: 422, column: 15)
!1290 = distinct !DILexicalBlock(scope: !1269, file: !171, line: 422, column: 15)
!1291 = !DILocation(line: 422, column: 15, scope: !1290)
!1292 = !DILocation(line: 430, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1270, file: !171, line: 429, column: 19)
!1294 = !DILocation(line: 430, column: 24, scope: !1293)
!1295 = !DILocation(line: 430, column: 28, scope: !1293)
!1296 = !DILocation(line: 430, column: 38, scope: !1293)
!1297 = !DILocation(line: 430, column: 48, scope: !1293)
!1298 = !DILocation(line: 430, column: 59, scope: !1293)
!1299 = !DILocation(line: 432, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !171, line: 432, column: 19)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !171, line: 432, column: 19)
!1302 = distinct !DILexicalBlock(scope: !1293, file: !171, line: 431, column: 17)
!1303 = !DILocation(line: 432, column: 19, scope: !1301)
!1304 = !DILocation(line: 433, column: 19, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !171, line: 433, column: 19)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !171, line: 433, column: 19)
!1307 = !DILocation(line: 433, column: 19, scope: !1306)
!1308 = !DILocation(line: 434, column: 17, scope: !1302)
!1309 = !DILocation(line: 441, column: 20, scope: !1271)
!1310 = !DILocation(line: 446, column: 11, scope: !1141)
!1311 = !DILocation(line: 449, column: 19, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 447, column: 13)
!1313 = !DILocation(line: 455, column: 19, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1312, file: !171, line: 454, column: 19)
!1315 = !DILocation(line: 455, column: 24, scope: !1314)
!1316 = !DILocation(line: 455, column: 28, scope: !1314)
!1317 = !DILocation(line: 455, column: 38, scope: !1314)
!1318 = !DILocation(line: 455, column: 47, scope: !1314)
!1319 = !DILocation(line: 455, column: 41, scope: !1314)
!1320 = !DILocation(line: 455, column: 52, scope: !1314)
!1321 = !DILocation(line: 454, column: 19, scope: !1312)
!1322 = !DILocation(line: 456, column: 25, scope: !1314)
!1323 = !DILocation(line: 456, column: 17, scope: !1314)
!1324 = !DILocation(line: 463, column: 25, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1314, file: !171, line: 457, column: 19)
!1326 = !DILocation(line: 467, column: 21, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !171, line: 467, column: 21)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !171, line: 467, column: 21)
!1329 = !DILocation(line: 467, column: 21, scope: !1328)
!1330 = !DILocation(line: 468, column: 21, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !171, line: 468, column: 21)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !171, line: 468, column: 21)
!1333 = !DILocation(line: 468, column: 21, scope: !1332)
!1334 = !DILocation(line: 469, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !171, line: 469, column: 21)
!1336 = distinct !DILexicalBlock(scope: !1325, file: !171, line: 469, column: 21)
!1337 = !DILocation(line: 469, column: 21, scope: !1336)
!1338 = !DILocation(line: 470, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !171, line: 470, column: 21)
!1340 = distinct !DILexicalBlock(scope: !1325, file: !171, line: 470, column: 21)
!1341 = !DILocation(line: 470, column: 21, scope: !1340)
!1342 = !DILocation(line: 471, column: 21, scope: !1325)
!1343 = !DILocation(line: 395, column: 21, scope: !1132)
!1344 = !DILocation(line: 484, column: 31, scope: !1141)
!1345 = !DILocation(line: 485, column: 31, scope: !1141)
!1346 = !DILocation(line: 487, column: 31, scope: !1141)
!1347 = !DILocation(line: 488, column: 31, scope: !1141)
!1348 = !DILocation(line: 489, column: 31, scope: !1141)
!1349 = !DILocation(line: 492, column: 15, scope: !1141)
!1350 = !DILocation(line: 494, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !171, line: 493, column: 13)
!1352 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 492, column: 15)
!1353 = !DILocation(line: 501, column: 33, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 501, column: 15)
!1355 = !DILocation(line: 506, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 505, column: 15)
!1357 = !DILocation(line: 510, column: 15, scope: !1141)
!1358 = !DILocation(line: 518, column: 26, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 518, column: 15)
!1360 = !DILocation(line: 518, column: 15, scope: !1141)
!1361 = !DILocation(line: 518, column: 40, scope: !1359)
!1362 = !DILocation(line: 518, column: 47, scope: !1359)
!1363 = !DILocation(line: 522, column: 17, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 522, column: 15)
!1365 = !DILocation(line: 518, column: 18, scope: !1359)
!1366 = !DILocation(line: 518, column: 65, scope: !1359)
!1367 = !DILocation(line: 522, column: 15, scope: !1141)
!1368 = !DILocation(line: 526, column: 11, scope: !1141)
!1369 = !DILocation(line: 541, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 540, column: 15)
!1371 = !DILocation(line: 548, column: 15, scope: !1141)
!1372 = !DILocation(line: 550, column: 19, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !171, line: 549, column: 13)
!1374 = distinct !DILexicalBlock(scope: !1141, file: !171, line: 548, column: 15)
!1375 = !DILocation(line: 553, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !171, line: 553, column: 19)
!1377 = !DILocation(line: 553, column: 35, scope: !1376)
!1378 = !DILocation(line: 553, column: 30, scope: !1376)
!1379 = !DILocation(line: 562, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !171, line: 562, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1373, file: !171, line: 562, column: 15)
!1382 = !DILocation(line: 562, column: 15, scope: !1381)
!1383 = !DILocation(line: 563, column: 15, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !171, line: 563, column: 15)
!1385 = distinct !DILexicalBlock(scope: !1373, file: !171, line: 563, column: 15)
!1386 = !DILocation(line: 563, column: 15, scope: !1385)
!1387 = !DILocation(line: 564, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !171, line: 564, column: 15)
!1389 = distinct !DILexicalBlock(scope: !1373, file: !171, line: 564, column: 15)
!1390 = !DILocation(line: 564, column: 15, scope: !1389)
!1391 = !DILocation(line: 566, column: 13, scope: !1373)
!1392 = !DILocation(line: 606, column: 17, scope: !1140)
!1393 = !DILocation(line: 602, column: 20, scope: !1140)
!1394 = !DILocation(line: 609, column: 29, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1145, file: !171, line: 607, column: 15)
!1396 = !{!773, !773, i64 0}
!1397 = !DILocation(line: 609, column: 27, scope: !1395)
!1398 = !DILocation(line: 604, column: 18, scope: !1140)
!1399 = !DILocation(line: 610, column: 15, scope: !1395)
!1400 = !DILocation(line: 613, column: 17, scope: !1144)
!1401 = !DILocation(line: 614, column: 17, scope: !1144)
!1402 = !DILocation(line: 618, column: 29, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1144, file: !171, line: 618, column: 21)
!1404 = !DILocation(line: 618, column: 21, scope: !1144)
!1405 = !DILocation(line: 619, column: 29, scope: !1403)
!1406 = !DILocation(line: 619, column: 19, scope: !1403)
!1407 = !DILocation(line: 621, column: 17, scope: !1144)
!1408 = distinct !{!1408, !1407, !1409}
!1409 = !DILocation(line: 667, column: 44, scope: !1144)
!1410 = !DILocation(line: 623, column: 21, scope: !1162)
!1411 = !DILocation(line: 624, column: 56, scope: !1162)
!1412 = !DILocation(line: 624, column: 50, scope: !1162)
!1413 = !DILocation(line: 625, column: 53, scope: !1162)
!1414 = !DILocation(line: 613, column: 27, scope: !1144)
!1415 = !DILocation(line: 623, column: 29, scope: !1162)
!1416 = !DILocation(line: 624, column: 36, scope: !1162)
!1417 = !DILocation(line: 624, column: 28, scope: !1162)
!1418 = !DILocation(line: 626, column: 25, scope: !1162)
!1419 = !DILocation(line: 636, column: 38, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1169, file: !171, line: 634, column: 23)
!1421 = !DILocation(line: 636, column: 48, scope: !1420)
!1422 = !DILocation(line: 636, column: 51, scope: !1420)
!1423 = !DILocation(line: 636, column: 25, scope: !1420)
!1424 = !DILocation(line: 637, column: 28, scope: !1420)
!1425 = !DILocation(line: 636, column: 34, scope: !1420)
!1426 = distinct !{!1426, !1423, !1424}
!1427 = !DILocation(line: 650, column: 43, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !171, line: 650, column: 29)
!1429 = distinct !DILexicalBlock(scope: !1166, file: !171, line: 650, column: 29)
!1430 = !DILocation(line: 647, column: 29, scope: !1167)
!1431 = !DILocation(line: 649, column: 36, scope: !1166)
!1432 = !DILocation(line: 651, column: 49, scope: !1428)
!1433 = !DILocation(line: 651, column: 39, scope: !1428)
!1434 = !DILocation(line: 651, column: 31, scope: !1428)
!1435 = !DILocation(line: 650, column: 53, scope: !1428)
!1436 = !DILocation(line: 650, column: 29, scope: !1429)
!1437 = distinct !{!1437, !1436, !1438}
!1438 = !DILocation(line: 659, column: 33, scope: !1429)
!1439 = !DILocation(line: 666, column: 19, scope: !1144)
!1440 = !DILocation(line: 662, column: 41, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1168, file: !171, line: 662, column: 29)
!1442 = !DILocation(line: 662, column: 31, scope: !1441)
!1443 = !DILocation(line: 662, column: 29, scope: !1168)
!1444 = !DILocation(line: 664, column: 27, scope: !1168)
!1445 = !DILocation(line: 667, column: 26, scope: !1144)
!1446 = !DILocation(line: 667, column: 24, scope: !1144)
!1447 = !DILocation(line: 666, column: 19, scope: !1162)
!1448 = !DILocation(line: 668, column: 15, scope: !1145)
!1449 = !DILocation(line: 670, column: 40, scope: !1140)
!1450 = !DILocation(line: 672, column: 19, scope: !1174)
!1451 = !DILocation(line: 672, column: 45, scope: !1174)
!1452 = !DILocation(line: 672, column: 23, scope: !1174)
!1453 = !DILocation(line: 676, column: 33, scope: !1173)
!1454 = !DILocation(line: 676, column: 24, scope: !1173)
!1455 = !DILocation(line: 678, column: 17, scope: !1173)
!1456 = !DILocation(line: 680, column: 43, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !171, line: 680, column: 25)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !171, line: 679, column: 19)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !171, line: 678, column: 17)
!1460 = distinct !DILexicalBlock(scope: !1173, file: !171, line: 678, column: 17)
!1461 = !DILocation(line: 682, column: 25, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !171, line: 682, column: 25)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !171, line: 681, column: 23)
!1464 = !DILocation(line: 682, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !171, line: 682, column: 25)
!1466 = !DILocation(line: 682, column: 25, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !171, line: 682, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !171, line: 682, column: 25)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !171, line: 682, column: 25)
!1470 = !DILocation(line: 682, column: 25, scope: !1468)
!1471 = !DILocation(line: 682, column: 25, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !171, line: 682, column: 25)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !171, line: 682, column: 25)
!1474 = !DILocation(line: 682, column: 25, scope: !1473)
!1475 = !DILocation(line: 682, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !171, line: 682, column: 25)
!1477 = distinct !DILexicalBlock(scope: !1469, file: !171, line: 682, column: 25)
!1478 = !DILocation(line: 682, column: 25, scope: !1477)
!1479 = !DILocation(line: 682, column: 25, scope: !1469)
!1480 = !DILocation(line: 682, column: 25, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !171, line: 682, column: 25)
!1482 = distinct !DILexicalBlock(scope: !1462, file: !171, line: 682, column: 25)
!1483 = !DILocation(line: 682, column: 25, scope: !1482)
!1484 = !DILocation(line: 683, column: 25, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !171, line: 683, column: 25)
!1486 = distinct !DILexicalBlock(scope: !1463, file: !171, line: 683, column: 25)
!1487 = !DILocation(line: 683, column: 25, scope: !1486)
!1488 = !DILocation(line: 684, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !171, line: 684, column: 25)
!1490 = distinct !DILexicalBlock(scope: !1463, file: !171, line: 684, column: 25)
!1491 = !DILocation(line: 684, column: 25, scope: !1490)
!1492 = !DILocation(line: 685, column: 38, scope: !1463)
!1493 = !DILocation(line: 685, column: 33, scope: !1463)
!1494 = !DILocation(line: 686, column: 23, scope: !1463)
!1495 = !DILocation(line: 687, column: 30, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1457, file: !171, line: 687, column: 30)
!1497 = !DILocation(line: 687, column: 30, scope: !1457)
!1498 = !DILocation(line: 689, column: 25, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !171, line: 689, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !171, line: 689, column: 25)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !171, line: 688, column: 23)
!1502 = !DILocation(line: 689, column: 25, scope: !1500)
!1503 = !DILocation(line: 691, column: 23, scope: !1501)
!1504 = !DILocation(line: 692, column: 35, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1458, file: !171, line: 692, column: 25)
!1506 = !DILocation(line: 692, column: 30, scope: !1505)
!1507 = !DILocation(line: 692, column: 25, scope: !1458)
!1508 = !DILocation(line: 694, column: 21, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !171, line: 694, column: 21)
!1510 = distinct !DILexicalBlock(scope: !1458, file: !171, line: 694, column: 21)
!1511 = !DILocation(line: 694, column: 21, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !171, line: 694, column: 21)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !171, line: 694, column: 21)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !171, line: 694, column: 21)
!1515 = !DILocation(line: 694, column: 21, scope: !1513)
!1516 = !DILocation(line: 694, column: 21, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !171, line: 694, column: 21)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !171, line: 694, column: 21)
!1519 = !DILocation(line: 694, column: 21, scope: !1518)
!1520 = !DILocation(line: 694, column: 21, scope: !1514)
!1521 = !DILocation(line: 695, column: 21, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !171, line: 695, column: 21)
!1523 = distinct !DILexicalBlock(scope: !1458, file: !171, line: 695, column: 21)
!1524 = !DILocation(line: 695, column: 21, scope: !1523)
!1525 = !DILocation(line: 696, column: 25, scope: !1458)
!1526 = !DILocation(line: 678, column: 17, scope: !1459)
!1527 = distinct !{!1527, !1528, !1529}
!1528 = !DILocation(line: 678, column: 17, scope: !1460)
!1529 = !DILocation(line: 697, column: 19, scope: !1460)
!1530 = !DILocation(line: 704, column: 34, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 704, column: 11)
!1532 = !DILocation(line: 706, column: 14, scope: !1531)
!1533 = !DILocation(line: 707, column: 14, scope: !1531)
!1534 = !DILocation(line: 707, column: 35, scope: !1531)
!1535 = !DILocation(line: 707, column: 17, scope: !1531)
!1536 = !DILocation(line: 707, column: 53, scope: !1531)
!1537 = !DILocation(line: 707, column: 47, scope: !1531)
!1538 = !DILocation(line: 707, column: 65, scope: !1531)
!1539 = !DILocation(line: 708, column: 15, scope: !1531)
!1540 = !DILocation(line: 708, column: 11, scope: !1531)
!1541 = !DILocation(line: 704, column: 11, scope: !1132)
!1542 = !DILocation(line: 712, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 712, column: 7)
!1544 = !DILocation(line: 712, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1543, file: !171, line: 712, column: 7)
!1546 = !DILocation(line: 712, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !171, line: 712, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !171, line: 712, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !171, line: 712, column: 7)
!1550 = !DILocation(line: 712, column: 7, scope: !1548)
!1551 = !DILocation(line: 712, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !171, line: 712, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !171, line: 712, column: 7)
!1554 = !DILocation(line: 712, column: 7, scope: !1553)
!1555 = !DILocation(line: 712, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !171, line: 712, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1549, file: !171, line: 712, column: 7)
!1558 = !DILocation(line: 712, column: 7, scope: !1557)
!1559 = !DILocation(line: 712, column: 7, scope: !1549)
!1560 = !DILocation(line: 712, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !171, line: 712, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1543, file: !171, line: 712, column: 7)
!1563 = !DILocation(line: 712, column: 7, scope: !1562)
!1564 = !DILocation(line: 715, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !171, line: 715, column: 7)
!1566 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 715, column: 7)
!1567 = !DILocation(line: 715, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !171, line: 715, column: 7)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !171, line: 715, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !171, line: 715, column: 7)
!1571 = !DILocation(line: 715, column: 7, scope: !1569)
!1572 = !DILocation(line: 715, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !171, line: 715, column: 7)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !171, line: 715, column: 7)
!1575 = !DILocation(line: 715, column: 7, scope: !1574)
!1576 = !DILocation(line: 715, column: 7, scope: !1570)
!1577 = !DILocation(line: 716, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !171, line: 716, column: 7)
!1579 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 716, column: 7)
!1580 = !DILocation(line: 716, column: 7, scope: !1579)
!1581 = !DILocation(line: 718, column: 13, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1132, file: !171, line: 718, column: 11)
!1583 = !DILocation(line: 718, column: 11, scope: !1132)
!1584 = !DILocation(line: 720, column: 5, scope: !1133)
!1585 = !DILocation(line: 392, column: 75, scope: !1133)
!1586 = !DILocation(line: 392, column: 3, scope: !1133)
!1587 = distinct !{!1587, !1246, !1588}
!1588 = !DILocation(line: 720, column: 5, scope: !1134)
!1589 = !DILocation(line: 722, column: 11, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 722, column: 7)
!1591 = !DILocation(line: 722, column: 16, scope: !1590)
!1592 = !DILocation(line: 730, column: 51, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 730, column: 7)
!1594 = !DILocation(line: 731, column: 10, scope: !1593)
!1595 = !DILocation(line: 733, column: 11, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !171, line: 733, column: 11)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !171, line: 732, column: 5)
!1598 = !DILocation(line: 733, column: 11, scope: !1597)
!1599 = !DILocation(line: 734, column: 16, scope: !1596)
!1600 = !DILocation(line: 734, column: 9, scope: !1596)
!1601 = !DILocation(line: 738, column: 18, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1596, file: !171, line: 738, column: 16)
!1603 = !DILocation(line: 738, column: 32, scope: !1602)
!1604 = !DILocation(line: 738, column: 29, scope: !1602)
!1605 = !DILocation(line: 747, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 747, column: 7)
!1607 = !DILocation(line: 747, column: 20, scope: !1606)
!1608 = !DILocation(line: 748, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !171, line: 748, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !171, line: 748, column: 5)
!1611 = !DILocation(line: 748, column: 5, scope: !1610)
!1612 = !DILocation(line: 749, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !171, line: 749, column: 7)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !171, line: 749, column: 7)
!1615 = !DILocation(line: 749, column: 7, scope: !1614)
!1616 = !DILocation(line: 748, column: 39, scope: !1609)
!1617 = distinct !{!1617, !1611, !1618}
!1618 = !DILocation(line: 749, column: 7, scope: !1610)
!1619 = !DILocation(line: 751, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 751, column: 7)
!1621 = !DILocation(line: 751, column: 7, scope: !1105)
!1622 = !DILocation(line: 752, column: 5, scope: !1620)
!1623 = !DILocation(line: 752, column: 17, scope: !1620)
!1624 = !DILocation(line: 758, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1105, file: !171, line: 758, column: 7)
!1626 = !DILocation(line: 758, column: 54, scope: !1625)
!1627 = !DILocation(line: 758, column: 51, scope: !1625)
!1628 = !DILocation(line: 762, column: 42, scope: !1105)
!1629 = !DILocation(line: 760, column: 10, scope: !1105)
!1630 = !DILocation(line: 760, column: 3, scope: !1105)
!1631 = !DILocation(line: 764, column: 1, scope: !1105)
!1632 = distinct !DISubprogram(name: "gettext_quote", scope: !171, file: !171, line: 199, type: !1633, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!6, !6, !129}
!1635 = !{!1636, !1637, !1638, !1639}
!1636 = !DILocalVariable(name: "msgid", arg: 1, scope: !1632, file: !171, line: 199, type: !6)
!1637 = !DILocalVariable(name: "s", arg: 2, scope: !1632, file: !171, line: 199, type: !129)
!1638 = !DILocalVariable(name: "translation", scope: !1632, file: !171, line: 201, type: !6)
!1639 = !DILocalVariable(name: "locale_code", scope: !1632, file: !171, line: 202, type: !6)
!1640 = !DILocation(line: 199, column: 28, scope: !1632)
!1641 = !DILocation(line: 199, column: 54, scope: !1632)
!1642 = !DILocation(line: 201, column: 29, scope: !1632)
!1643 = !DILocation(line: 201, column: 15, scope: !1632)
!1644 = !DILocation(line: 204, column: 19, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1632, file: !171, line: 204, column: 7)
!1646 = !DILocation(line: 204, column: 7, scope: !1632)
!1647 = !DILocation(line: 225, column: 17, scope: !1632)
!1648 = !DILocation(line: 202, column: 15, scope: !1632)
!1649 = !DILocalVariable(name: "s2", arg: 2, scope: !1650, file: !1651, line: 160, type: !6)
!1650 = distinct !DISubprogram(name: "strcaseeq0", scope: !1651, file: !1651, line: 160, type: !1652, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1654)
!1651 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!22, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1654 = !{!1655, !1649, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1655 = !DILocalVariable(name: "s1", arg: 1, scope: !1650, file: !1651, line: 160, type: !6)
!1656 = !DILocalVariable(name: "s20", arg: 3, scope: !1650, file: !1651, line: 160, type: !8)
!1657 = !DILocalVariable(name: "s21", arg: 4, scope: !1650, file: !1651, line: 160, type: !8)
!1658 = !DILocalVariable(name: "s22", arg: 5, scope: !1650, file: !1651, line: 160, type: !8)
!1659 = !DILocalVariable(name: "s23", arg: 6, scope: !1650, file: !1651, line: 160, type: !8)
!1660 = !DILocalVariable(name: "s24", arg: 7, scope: !1650, file: !1651, line: 160, type: !8)
!1661 = !DILocalVariable(name: "s25", arg: 8, scope: !1650, file: !1651, line: 160, type: !8)
!1662 = !DILocalVariable(name: "s26", arg: 9, scope: !1650, file: !1651, line: 160, type: !8)
!1663 = !DILocalVariable(name: "s27", arg: 10, scope: !1650, file: !1651, line: 160, type: !8)
!1664 = !DILocalVariable(name: "s28", arg: 11, scope: !1650, file: !1651, line: 160, type: !8)
!1665 = !DILocation(line: 160, column: 41, scope: !1650, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 226, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1632, file: !171, line: 226, column: 7)
!1668 = !DILocation(line: 160, column: 120, scope: !1650, inlinedAt: !1666)
!1669 = !DILocation(line: 160, column: 130, scope: !1650, inlinedAt: !1666)
!1670 = !DILocation(line: 162, column: 7, scope: !1671, inlinedAt: !1666)
!1671 = distinct !DILexicalBlock(scope: !1650, file: !1651, line: 162, column: 7)
!1672 = !DILocalVariable(name: "s2", arg: 2, scope: !1673, file: !1651, line: 146, type: !6)
!1673 = distinct !DISubprogram(name: "strcaseeq1", scope: !1651, file: !1651, line: 146, type: !1674, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!22, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1676 = !{!1677, !1672, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1677 = !DILocalVariable(name: "s1", arg: 1, scope: !1673, file: !1651, line: 146, type: !6)
!1678 = !DILocalVariable(name: "s21", arg: 3, scope: !1673, file: !1651, line: 146, type: !8)
!1679 = !DILocalVariable(name: "s22", arg: 4, scope: !1673, file: !1651, line: 146, type: !8)
!1680 = !DILocalVariable(name: "s23", arg: 5, scope: !1673, file: !1651, line: 146, type: !8)
!1681 = !DILocalVariable(name: "s24", arg: 6, scope: !1673, file: !1651, line: 146, type: !8)
!1682 = !DILocalVariable(name: "s25", arg: 7, scope: !1673, file: !1651, line: 146, type: !8)
!1683 = !DILocalVariable(name: "s26", arg: 8, scope: !1673, file: !1651, line: 146, type: !8)
!1684 = !DILocalVariable(name: "s27", arg: 9, scope: !1673, file: !1651, line: 146, type: !8)
!1685 = !DILocalVariable(name: "s28", arg: 10, scope: !1673, file: !1651, line: 146, type: !8)
!1686 = !DILocation(line: 146, column: 41, scope: !1673, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 167, column: 16, scope: !1688, inlinedAt: !1666)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !1651, line: 164, column: 11)
!1689 = distinct !DILexicalBlock(scope: !1671, file: !1651, line: 163, column: 5)
!1690 = !DILocation(line: 146, column: 110, scope: !1673, inlinedAt: !1687)
!1691 = !DILocation(line: 146, column: 120, scope: !1673, inlinedAt: !1687)
!1692 = !DILocation(line: 148, column: 7, scope: !1693, inlinedAt: !1687)
!1693 = distinct !DILexicalBlock(scope: !1673, file: !1651, line: 148, column: 7)
!1694 = !DILocalVariable(name: "s2", arg: 2, scope: !1695, file: !1651, line: 132, type: !6)
!1695 = distinct !DISubprogram(name: "strcaseeq2", scope: !1651, file: !1651, line: 132, type: !1696, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!22, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1698 = !{!1699, !1694, !1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1699 = !DILocalVariable(name: "s1", arg: 1, scope: !1695, file: !1651, line: 132, type: !6)
!1700 = !DILocalVariable(name: "s22", arg: 3, scope: !1695, file: !1651, line: 132, type: !8)
!1701 = !DILocalVariable(name: "s23", arg: 4, scope: !1695, file: !1651, line: 132, type: !8)
!1702 = !DILocalVariable(name: "s24", arg: 5, scope: !1695, file: !1651, line: 132, type: !8)
!1703 = !DILocalVariable(name: "s25", arg: 6, scope: !1695, file: !1651, line: 132, type: !8)
!1704 = !DILocalVariable(name: "s26", arg: 7, scope: !1695, file: !1651, line: 132, type: !8)
!1705 = !DILocalVariable(name: "s27", arg: 8, scope: !1695, file: !1651, line: 132, type: !8)
!1706 = !DILocalVariable(name: "s28", arg: 9, scope: !1695, file: !1651, line: 132, type: !8)
!1707 = !DILocation(line: 132, column: 41, scope: !1695, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 153, column: 16, scope: !1709, inlinedAt: !1687)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !1651, line: 150, column: 11)
!1710 = distinct !DILexicalBlock(scope: !1693, file: !1651, line: 149, column: 5)
!1711 = !DILocation(line: 132, column: 100, scope: !1695, inlinedAt: !1708)
!1712 = !DILocation(line: 132, column: 110, scope: !1695, inlinedAt: !1708)
!1713 = !DILocation(line: 134, column: 7, scope: !1714, inlinedAt: !1708)
!1714 = distinct !DILexicalBlock(scope: !1695, file: !1651, line: 134, column: 7)
!1715 = !DILocalVariable(name: "s2", arg: 2, scope: !1716, file: !1651, line: 118, type: !6)
!1716 = distinct !DISubprogram(name: "strcaseeq3", scope: !1651, file: !1651, line: 118, type: !1717, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!22, !6, !6, !8, !8, !8, !8, !8, !8}
!1719 = !{!1720, !1715, !1721, !1722, !1723, !1724, !1725, !1726}
!1720 = !DILocalVariable(name: "s1", arg: 1, scope: !1716, file: !1651, line: 118, type: !6)
!1721 = !DILocalVariable(name: "s23", arg: 3, scope: !1716, file: !1651, line: 118, type: !8)
!1722 = !DILocalVariable(name: "s24", arg: 4, scope: !1716, file: !1651, line: 118, type: !8)
!1723 = !DILocalVariable(name: "s25", arg: 5, scope: !1716, file: !1651, line: 118, type: !8)
!1724 = !DILocalVariable(name: "s26", arg: 6, scope: !1716, file: !1651, line: 118, type: !8)
!1725 = !DILocalVariable(name: "s27", arg: 7, scope: !1716, file: !1651, line: 118, type: !8)
!1726 = !DILocalVariable(name: "s28", arg: 8, scope: !1716, file: !1651, line: 118, type: !8)
!1727 = !DILocation(line: 118, column: 41, scope: !1716, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 139, column: 16, scope: !1729, inlinedAt: !1708)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1651, line: 136, column: 11)
!1730 = distinct !DILexicalBlock(scope: !1714, file: !1651, line: 135, column: 5)
!1731 = !DILocation(line: 118, column: 90, scope: !1716, inlinedAt: !1728)
!1732 = !DILocation(line: 118, column: 100, scope: !1716, inlinedAt: !1728)
!1733 = !DILocation(line: 120, column: 7, scope: !1734, inlinedAt: !1728)
!1734 = distinct !DILexicalBlock(scope: !1716, file: !1651, line: 120, column: 7)
!1735 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1728)
!1736 = !DILocalVariable(name: "s2", arg: 2, scope: !1737, file: !1651, line: 104, type: !6)
!1737 = distinct !DISubprogram(name: "strcaseeq4", scope: !1651, file: !1651, line: 104, type: !1738, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!22, !6, !6, !8, !8, !8, !8, !8}
!1740 = !{!1741, !1736, !1742, !1743, !1744, !1745, !1746}
!1741 = !DILocalVariable(name: "s1", arg: 1, scope: !1737, file: !1651, line: 104, type: !6)
!1742 = !DILocalVariable(name: "s24", arg: 3, scope: !1737, file: !1651, line: 104, type: !8)
!1743 = !DILocalVariable(name: "s25", arg: 4, scope: !1737, file: !1651, line: 104, type: !8)
!1744 = !DILocalVariable(name: "s26", arg: 5, scope: !1737, file: !1651, line: 104, type: !8)
!1745 = !DILocalVariable(name: "s27", arg: 6, scope: !1737, file: !1651, line: 104, type: !8)
!1746 = !DILocalVariable(name: "s28", arg: 7, scope: !1737, file: !1651, line: 104, type: !8)
!1747 = !DILocation(line: 104, column: 41, scope: !1737, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 125, column: 16, scope: !1749, inlinedAt: !1728)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !1651, line: 122, column: 11)
!1750 = distinct !DILexicalBlock(scope: !1734, file: !1651, line: 121, column: 5)
!1751 = !DILocation(line: 104, column: 80, scope: !1737, inlinedAt: !1748)
!1752 = !DILocation(line: 104, column: 90, scope: !1737, inlinedAt: !1748)
!1753 = !DILocation(line: 106, column: 7, scope: !1754, inlinedAt: !1748)
!1754 = distinct !DILexicalBlock(scope: !1737, file: !1651, line: 106, column: 7)
!1755 = !DILocation(line: 106, column: 7, scope: !1737, inlinedAt: !1748)
!1756 = !DILocalVariable(name: "s2", arg: 2, scope: !1757, file: !1651, line: 90, type: !6)
!1757 = distinct !DISubprogram(name: "strcaseeq5", scope: !1651, file: !1651, line: 90, type: !1758, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!22, !6, !6, !8, !8, !8, !8}
!1760 = !{!1761, !1756, !1762, !1763, !1764, !1765}
!1761 = !DILocalVariable(name: "s1", arg: 1, scope: !1757, file: !1651, line: 90, type: !6)
!1762 = !DILocalVariable(name: "s25", arg: 3, scope: !1757, file: !1651, line: 90, type: !8)
!1763 = !DILocalVariable(name: "s26", arg: 4, scope: !1757, file: !1651, line: 90, type: !8)
!1764 = !DILocalVariable(name: "s27", arg: 5, scope: !1757, file: !1651, line: 90, type: !8)
!1765 = !DILocalVariable(name: "s28", arg: 6, scope: !1757, file: !1651, line: 90, type: !8)
!1766 = !DILocation(line: 90, column: 41, scope: !1757, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 111, column: 16, scope: !1768, inlinedAt: !1748)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !1651, line: 108, column: 11)
!1769 = distinct !DILexicalBlock(scope: !1754, file: !1651, line: 107, column: 5)
!1770 = !DILocation(line: 90, column: 70, scope: !1757, inlinedAt: !1767)
!1771 = !DILocation(line: 90, column: 80, scope: !1757, inlinedAt: !1767)
!1772 = !DILocation(line: 92, column: 7, scope: !1773, inlinedAt: !1767)
!1773 = distinct !DILexicalBlock(scope: !1757, file: !1651, line: 92, column: 7)
!1774 = !DILocation(line: 92, column: 7, scope: !1757, inlinedAt: !1767)
!1775 = !DILocation(line: 227, column: 12, scope: !1667)
!1776 = !DILocation(line: 227, column: 21, scope: !1667)
!1777 = !DILocation(line: 227, column: 5, scope: !1667)
!1778 = !DILocation(line: 146, column: 41, scope: !1673, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 167, column: 16, scope: !1688, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 228, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1632, file: !171, line: 228, column: 7)
!1782 = !DILocation(line: 146, column: 110, scope: !1673, inlinedAt: !1779)
!1783 = !DILocation(line: 146, column: 120, scope: !1673, inlinedAt: !1779)
!1784 = !DILocation(line: 148, column: 7, scope: !1693, inlinedAt: !1779)
!1785 = !DILocation(line: 132, column: 41, scope: !1695, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 153, column: 16, scope: !1709, inlinedAt: !1779)
!1787 = !DILocation(line: 132, column: 100, scope: !1695, inlinedAt: !1786)
!1788 = !DILocation(line: 132, column: 110, scope: !1695, inlinedAt: !1786)
!1789 = !DILocation(line: 134, column: 7, scope: !1714, inlinedAt: !1786)
!1790 = !DILocation(line: 134, column: 7, scope: !1695, inlinedAt: !1786)
!1791 = !DILocation(line: 118, column: 41, scope: !1716, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 139, column: 16, scope: !1729, inlinedAt: !1786)
!1793 = !DILocation(line: 118, column: 90, scope: !1716, inlinedAt: !1792)
!1794 = !DILocation(line: 118, column: 100, scope: !1716, inlinedAt: !1792)
!1795 = !DILocation(line: 120, column: 7, scope: !1734, inlinedAt: !1792)
!1796 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1792)
!1797 = !DILocation(line: 104, column: 41, scope: !1737, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 125, column: 16, scope: !1749, inlinedAt: !1792)
!1799 = !DILocation(line: 104, column: 80, scope: !1737, inlinedAt: !1798)
!1800 = !DILocation(line: 104, column: 90, scope: !1737, inlinedAt: !1798)
!1801 = !DILocation(line: 106, column: 7, scope: !1754, inlinedAt: !1798)
!1802 = !DILocation(line: 106, column: 7, scope: !1737, inlinedAt: !1798)
!1803 = !DILocation(line: 90, column: 41, scope: !1757, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 111, column: 16, scope: !1768, inlinedAt: !1798)
!1805 = !DILocation(line: 90, column: 70, scope: !1757, inlinedAt: !1804)
!1806 = !DILocation(line: 90, column: 80, scope: !1757, inlinedAt: !1804)
!1807 = !DILocation(line: 92, column: 7, scope: !1773, inlinedAt: !1804)
!1808 = !DILocation(line: 92, column: 7, scope: !1757, inlinedAt: !1804)
!1809 = !DILocalVariable(name: "s2", arg: 2, scope: !1810, file: !1651, line: 76, type: !6)
!1810 = distinct !DISubprogram(name: "strcaseeq6", scope: !1651, file: !1651, line: 76, type: !1811, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!22, !6, !6, !8, !8, !8}
!1813 = !{!1814, !1809, !1815, !1816, !1817}
!1814 = !DILocalVariable(name: "s1", arg: 1, scope: !1810, file: !1651, line: 76, type: !6)
!1815 = !DILocalVariable(name: "s26", arg: 3, scope: !1810, file: !1651, line: 76, type: !8)
!1816 = !DILocalVariable(name: "s27", arg: 4, scope: !1810, file: !1651, line: 76, type: !8)
!1817 = !DILocalVariable(name: "s28", arg: 5, scope: !1810, file: !1651, line: 76, type: !8)
!1818 = !DILocation(line: 76, column: 41, scope: !1810, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 97, column: 16, scope: !1820, inlinedAt: !1804)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1651, line: 94, column: 11)
!1821 = distinct !DILexicalBlock(scope: !1773, file: !1651, line: 93, column: 5)
!1822 = !DILocation(line: 76, column: 60, scope: !1810, inlinedAt: !1819)
!1823 = !DILocation(line: 76, column: 70, scope: !1810, inlinedAt: !1819)
!1824 = !DILocation(line: 78, column: 7, scope: !1825, inlinedAt: !1819)
!1825 = distinct !DILexicalBlock(scope: !1810, file: !1651, line: 78, column: 7)
!1826 = !DILocation(line: 78, column: 7, scope: !1810, inlinedAt: !1819)
!1827 = !DILocalVariable(name: "s2", arg: 2, scope: !1828, file: !1651, line: 62, type: !6)
!1828 = distinct !DISubprogram(name: "strcaseeq7", scope: !1651, file: !1651, line: 62, type: !1829, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!22, !6, !6, !8, !8}
!1831 = !{!1832, !1827, !1833, !1834}
!1832 = !DILocalVariable(name: "s1", arg: 1, scope: !1828, file: !1651, line: 62, type: !6)
!1833 = !DILocalVariable(name: "s27", arg: 3, scope: !1828, file: !1651, line: 62, type: !8)
!1834 = !DILocalVariable(name: "s28", arg: 4, scope: !1828, file: !1651, line: 62, type: !8)
!1835 = !DILocation(line: 62, column: 41, scope: !1828, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 83, column: 16, scope: !1837, inlinedAt: !1819)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !1651, line: 80, column: 11)
!1838 = distinct !DILexicalBlock(scope: !1825, file: !1651, line: 79, column: 5)
!1839 = !DILocation(line: 62, column: 50, scope: !1828, inlinedAt: !1836)
!1840 = !DILocation(line: 62, column: 60, scope: !1828, inlinedAt: !1836)
!1841 = !DILocation(line: 64, column: 7, scope: !1842, inlinedAt: !1836)
!1842 = distinct !DILexicalBlock(scope: !1828, file: !1651, line: 64, column: 7)
!1843 = !DILocation(line: 228, column: 7, scope: !1632)
!1844 = !DILocation(line: 229, column: 12, scope: !1781)
!1845 = !DILocation(line: 229, column: 21, scope: !1781)
!1846 = !DILocation(line: 229, column: 5, scope: !1781)
!1847 = !DILocation(line: 231, column: 13, scope: !1632)
!1848 = !DILocation(line: 231, column: 11, scope: !1632)
!1849 = !DILocation(line: 231, column: 3, scope: !1632)
!1850 = !DILocation(line: 232, column: 1, scope: !1632)
!1851 = distinct !DISubprogram(name: "quotearg_alloc", scope: !171, file: !171, line: 791, type: !1852, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!13, !6, !165, !977}
!1854 = !{!1855, !1856, !1857}
!1855 = !DILocalVariable(name: "arg", arg: 1, scope: !1851, file: !171, line: 791, type: !6)
!1856 = !DILocalVariable(name: "argsize", arg: 2, scope: !1851, file: !171, line: 791, type: !165)
!1857 = !DILocalVariable(name: "o", arg: 3, scope: !1851, file: !171, line: 792, type: !977)
!1858 = !DILocation(line: 791, column: 29, scope: !1851)
!1859 = !DILocation(line: 791, column: 41, scope: !1851)
!1860 = !DILocation(line: 792, column: 47, scope: !1851)
!1861 = !DILocalVariable(name: "arg", arg: 1, scope: !1862, file: !171, line: 804, type: !6)
!1862 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !171, file: !171, line: 804, type: !1863, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!13, !6, !165, !581, !977}
!1865 = !{!1861, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1866 = !DILocalVariable(name: "argsize", arg: 2, scope: !1862, file: !171, line: 804, type: !165)
!1867 = !DILocalVariable(name: "size", arg: 3, scope: !1862, file: !171, line: 804, type: !581)
!1868 = !DILocalVariable(name: "o", arg: 4, scope: !1862, file: !171, line: 805, type: !977)
!1869 = !DILocalVariable(name: "p", scope: !1862, file: !171, line: 807, type: !977)
!1870 = !DILocalVariable(name: "e", scope: !1862, file: !171, line: 808, type: !22)
!1871 = !DILocalVariable(name: "flags", scope: !1862, file: !171, line: 810, type: !22)
!1872 = !DILocalVariable(name: "bufsize", scope: !1862, file: !171, line: 811, type: !165)
!1873 = !DILocalVariable(name: "buf", scope: !1862, file: !171, line: 815, type: !13)
!1874 = !DILocation(line: 804, column: 33, scope: !1862, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 794, column: 10, scope: !1851)
!1876 = !DILocation(line: 804, column: 45, scope: !1862, inlinedAt: !1875)
!1877 = !DILocation(line: 804, column: 62, scope: !1862, inlinedAt: !1875)
!1878 = !DILocation(line: 805, column: 51, scope: !1862, inlinedAt: !1875)
!1879 = !DILocation(line: 807, column: 37, scope: !1862, inlinedAt: !1875)
!1880 = !DILocation(line: 807, column: 33, scope: !1862, inlinedAt: !1875)
!1881 = !DILocation(line: 808, column: 11, scope: !1862, inlinedAt: !1875)
!1882 = !DILocation(line: 808, column: 7, scope: !1862, inlinedAt: !1875)
!1883 = !DILocation(line: 810, column: 18, scope: !1862, inlinedAt: !1875)
!1884 = !DILocation(line: 810, column: 24, scope: !1862, inlinedAt: !1875)
!1885 = !DILocation(line: 810, column: 7, scope: !1862, inlinedAt: !1875)
!1886 = !DILocation(line: 811, column: 69, scope: !1862, inlinedAt: !1875)
!1887 = !DILocation(line: 812, column: 53, scope: !1862, inlinedAt: !1875)
!1888 = !DILocation(line: 813, column: 49, scope: !1862, inlinedAt: !1875)
!1889 = !DILocation(line: 814, column: 49, scope: !1862, inlinedAt: !1875)
!1890 = !DILocation(line: 811, column: 20, scope: !1862, inlinedAt: !1875)
!1891 = !DILocation(line: 814, column: 62, scope: !1862, inlinedAt: !1875)
!1892 = !DILocation(line: 811, column: 10, scope: !1862, inlinedAt: !1875)
!1893 = !DILocalVariable(name: "n", arg: 1, scope: !1894, file: !577, line: 220, type: !165)
!1894 = distinct !DISubprogram(name: "xcharalloc", scope: !577, file: !577, line: 220, type: !1895, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!13, !165}
!1897 = !{!1893}
!1898 = !DILocation(line: 220, column: 20, scope: !1894, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 815, column: 15, scope: !1862, inlinedAt: !1875)
!1900 = !DILocation(line: 222, column: 10, scope: !1894, inlinedAt: !1899)
!1901 = !DILocation(line: 815, column: 9, scope: !1862, inlinedAt: !1875)
!1902 = !DILocation(line: 816, column: 60, scope: !1862, inlinedAt: !1875)
!1903 = !DILocation(line: 818, column: 32, scope: !1862, inlinedAt: !1875)
!1904 = !DILocation(line: 818, column: 47, scope: !1862, inlinedAt: !1875)
!1905 = !DILocation(line: 816, column: 3, scope: !1862, inlinedAt: !1875)
!1906 = !DILocation(line: 819, column: 9, scope: !1862, inlinedAt: !1875)
!1907 = !DILocation(line: 794, column: 3, scope: !1851)
!1908 = !DILocation(line: 804, column: 33, scope: !1862)
!1909 = !DILocation(line: 804, column: 45, scope: !1862)
!1910 = !DILocation(line: 804, column: 62, scope: !1862)
!1911 = !DILocation(line: 805, column: 51, scope: !1862)
!1912 = !DILocation(line: 807, column: 37, scope: !1862)
!1913 = !DILocation(line: 807, column: 33, scope: !1862)
!1914 = !DILocation(line: 808, column: 11, scope: !1862)
!1915 = !DILocation(line: 808, column: 7, scope: !1862)
!1916 = !DILocation(line: 810, column: 18, scope: !1862)
!1917 = !DILocation(line: 810, column: 27, scope: !1862)
!1918 = !DILocation(line: 810, column: 24, scope: !1862)
!1919 = !DILocation(line: 810, column: 7, scope: !1862)
!1920 = !DILocation(line: 811, column: 69, scope: !1862)
!1921 = !DILocation(line: 812, column: 53, scope: !1862)
!1922 = !DILocation(line: 813, column: 49, scope: !1862)
!1923 = !DILocation(line: 814, column: 49, scope: !1862)
!1924 = !DILocation(line: 811, column: 20, scope: !1862)
!1925 = !DILocation(line: 814, column: 62, scope: !1862)
!1926 = !DILocation(line: 811, column: 10, scope: !1862)
!1927 = !DILocation(line: 220, column: 20, scope: !1894, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 815, column: 15, scope: !1862)
!1929 = !DILocation(line: 222, column: 10, scope: !1894, inlinedAt: !1928)
!1930 = !DILocation(line: 815, column: 9, scope: !1862)
!1931 = !DILocation(line: 816, column: 60, scope: !1862)
!1932 = !DILocation(line: 818, column: 32, scope: !1862)
!1933 = !DILocation(line: 818, column: 47, scope: !1862)
!1934 = !DILocation(line: 816, column: 3, scope: !1862)
!1935 = !DILocation(line: 819, column: 9, scope: !1862)
!1936 = !DILocation(line: 820, column: 7, scope: !1862)
!1937 = !DILocation(line: 821, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1862, file: !171, line: 820, column: 7)
!1939 = !{!772, !772, i64 0}
!1940 = !DILocation(line: 821, column: 5, scope: !1938)
!1941 = !DILocation(line: 822, column: 3, scope: !1862)
!1942 = distinct !DISubprogram(name: "quotearg_free", scope: !171, file: !171, line: 840, type: !884, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1943)
!1943 = !{!1944, !1945}
!1944 = !DILocalVariable(name: "sv", scope: !1942, file: !171, line: 842, type: !195)
!1945 = !DILocalVariable(name: "i", scope: !1942, file: !171, line: 843, type: !22)
!1946 = !DILocation(line: 842, column: 24, scope: !1942)
!1947 = !DILocation(line: 842, column: 19, scope: !1942)
!1948 = !DILocation(line: 843, column: 7, scope: !1942)
!1949 = !DILocation(line: 844, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !171, line: 844, column: 3)
!1951 = distinct !DILexicalBlock(scope: !1942, file: !171, line: 844, column: 3)
!1952 = !DILocation(line: 844, column: 17, scope: !1950)
!1953 = !DILocation(line: 844, column: 3, scope: !1951)
!1954 = !DILocation(line: 845, column: 17, scope: !1950)
!1955 = !{!1956, !626, i64 8}
!1956 = !{!"slotvec", !772, i64 0, !626, i64 8}
!1957 = !DILocation(line: 845, column: 5, scope: !1950)
!1958 = !DILocation(line: 844, column: 28, scope: !1950)
!1959 = distinct !{!1959, !1953, !1960}
!1960 = !DILocation(line: 845, column: 20, scope: !1951)
!1961 = !DILocation(line: 846, column: 13, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1942, file: !171, line: 846, column: 7)
!1963 = !DILocation(line: 846, column: 17, scope: !1962)
!1964 = !DILocation(line: 846, column: 7, scope: !1942)
!1965 = !DILocation(line: 848, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !171, line: 847, column: 5)
!1967 = !DILocation(line: 849, column: 21, scope: !1966)
!1968 = !{!1956, !772, i64 0}
!1969 = !DILocation(line: 850, column: 20, scope: !1966)
!1970 = !DILocation(line: 851, column: 5, scope: !1966)
!1971 = !DILocation(line: 852, column: 10, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1942, file: !171, line: 852, column: 7)
!1973 = !DILocation(line: 852, column: 7, scope: !1942)
!1974 = !DILocation(line: 854, column: 13, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !171, line: 853, column: 5)
!1976 = !DILocation(line: 854, column: 7, scope: !1975)
!1977 = !DILocation(line: 855, column: 15, scope: !1975)
!1978 = !DILocation(line: 856, column: 5, scope: !1975)
!1979 = !DILocation(line: 857, column: 10, scope: !1942)
!1980 = !DILocation(line: 858, column: 1, scope: !1942)
!1981 = distinct !DISubprogram(name: "quotearg_n", scope: !171, file: !171, line: 922, type: !1982, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!13, !22, !6}
!1984 = !{!1985, !1986}
!1985 = !DILocalVariable(name: "n", arg: 1, scope: !1981, file: !171, line: 922, type: !22)
!1986 = !DILocalVariable(name: "arg", arg: 2, scope: !1981, file: !171, line: 922, type: !6)
!1987 = !DILocation(line: 922, column: 17, scope: !1981)
!1988 = !DILocation(line: 922, column: 32, scope: !1981)
!1989 = !DILocation(line: 924, column: 10, scope: !1981)
!1990 = !DILocation(line: 924, column: 3, scope: !1981)
!1991 = distinct !DISubprogram(name: "quotearg_n_options", scope: !171, file: !171, line: 869, type: !1992, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!13, !22, !6, !165, !977}
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2004, !2006, !2007, !2008}
!1995 = !DILocalVariable(name: "n", arg: 1, scope: !1991, file: !171, line: 869, type: !22)
!1996 = !DILocalVariable(name: "arg", arg: 2, scope: !1991, file: !171, line: 869, type: !6)
!1997 = !DILocalVariable(name: "argsize", arg: 3, scope: !1991, file: !171, line: 869, type: !165)
!1998 = !DILocalVariable(name: "options", arg: 4, scope: !1991, file: !171, line: 870, type: !977)
!1999 = !DILocalVariable(name: "e", scope: !1991, file: !171, line: 872, type: !22)
!2000 = !DILocalVariable(name: "sv", scope: !1991, file: !171, line: 874, type: !195)
!2001 = !DILocalVariable(name: "preallocated", scope: !2002, file: !171, line: 881, type: !77)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !171, line: 880, column: 5)
!2003 = distinct !DILexicalBlock(scope: !1991, file: !171, line: 879, column: 7)
!2004 = !DILocalVariable(name: "size", scope: !2005, file: !171, line: 894, type: !165)
!2005 = distinct !DILexicalBlock(scope: !1991, file: !171, line: 893, column: 3)
!2006 = !DILocalVariable(name: "val", scope: !2005, file: !171, line: 895, type: !13)
!2007 = !DILocalVariable(name: "flags", scope: !2005, file: !171, line: 897, type: !22)
!2008 = !DILocalVariable(name: "qsize", scope: !2005, file: !171, line: 898, type: !165)
!2009 = !DILocation(line: 869, column: 25, scope: !1991)
!2010 = !DILocation(line: 869, column: 40, scope: !1991)
!2011 = !DILocation(line: 869, column: 52, scope: !1991)
!2012 = !DILocation(line: 870, column: 51, scope: !1991)
!2013 = !DILocation(line: 872, column: 11, scope: !1991)
!2014 = !DILocation(line: 872, column: 7, scope: !1991)
!2015 = !DILocation(line: 874, column: 24, scope: !1991)
!2016 = !DILocation(line: 874, column: 19, scope: !1991)
!2017 = !DILocation(line: 876, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1991, file: !171, line: 876, column: 7)
!2019 = !DILocation(line: 876, column: 7, scope: !1991)
!2020 = !DILocation(line: 877, column: 5, scope: !2018)
!2021 = !DILocation(line: 879, column: 7, scope: !2003)
!2022 = !DILocation(line: 879, column: 14, scope: !2003)
!2023 = !DILocation(line: 879, column: 7, scope: !1991)
!2024 = !DILocation(line: 881, column: 31, scope: !2002)
!2025 = !DILocation(line: 883, column: 67, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2002, file: !171, line: 883, column: 11)
!2027 = !DILocation(line: 883, column: 11, scope: !2002)
!2028 = !DILocation(line: 884, column: 9, scope: !2026)
!2029 = !DILocation(line: 886, column: 32, scope: !2002)
!2030 = !DILocation(line: 886, column: 61, scope: !2002)
!2031 = !DILocation(line: 886, column: 58, scope: !2002)
!2032 = !DILocation(line: 886, column: 66, scope: !2002)
!2033 = !DILocation(line: 886, column: 22, scope: !2002)
!2034 = !DILocation(line: 886, column: 15, scope: !2002)
!2035 = !DILocation(line: 887, column: 11, scope: !2002)
!2036 = !DILocation(line: 888, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2002, file: !171, line: 887, column: 11)
!2038 = !{i64 0, i64 8, !1939, i64 8, i64 8, !625}
!2039 = !DILocation(line: 888, column: 9, scope: !2037)
!2040 = !DILocation(line: 889, column: 20, scope: !2002)
!2041 = !DILocation(line: 889, column: 18, scope: !2002)
!2042 = !DILocation(line: 889, column: 7, scope: !2002)
!2043 = !DILocation(line: 889, column: 38, scope: !2002)
!2044 = !DILocation(line: 889, column: 31, scope: !2002)
!2045 = !DILocation(line: 889, column: 48, scope: !2002)
!2046 = !DILocation(line: 890, column: 14, scope: !2002)
!2047 = !DILocation(line: 891, column: 5, scope: !2002)
!2048 = !DILocation(line: 894, column: 19, scope: !2005)
!2049 = !DILocation(line: 894, column: 25, scope: !2005)
!2050 = !DILocation(line: 894, column: 12, scope: !2005)
!2051 = !DILocation(line: 895, column: 23, scope: !2005)
!2052 = !DILocation(line: 895, column: 11, scope: !2005)
!2053 = !DILocation(line: 897, column: 26, scope: !2005)
!2054 = !DILocation(line: 897, column: 32, scope: !2005)
!2055 = !DILocation(line: 897, column: 9, scope: !2005)
!2056 = !DILocation(line: 899, column: 55, scope: !2005)
!2057 = !DILocation(line: 900, column: 46, scope: !2005)
!2058 = !DILocation(line: 901, column: 55, scope: !2005)
!2059 = !DILocation(line: 902, column: 55, scope: !2005)
!2060 = !DILocation(line: 898, column: 20, scope: !2005)
!2061 = !DILocation(line: 898, column: 12, scope: !2005)
!2062 = !DILocation(line: 904, column: 14, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2005, file: !171, line: 904, column: 9)
!2064 = !DILocation(line: 904, column: 9, scope: !2005)
!2065 = !DILocation(line: 906, column: 35, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !171, line: 905, column: 7)
!2067 = !DILocation(line: 906, column: 20, scope: !2066)
!2068 = !DILocation(line: 907, column: 17, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !171, line: 907, column: 13)
!2070 = !DILocation(line: 907, column: 13, scope: !2066)
!2071 = !DILocation(line: 908, column: 11, scope: !2069)
!2072 = !DILocation(line: 220, column: 20, scope: !1894, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 909, column: 27, scope: !2066)
!2074 = !DILocation(line: 222, column: 10, scope: !1894, inlinedAt: !2073)
!2075 = !DILocation(line: 909, column: 19, scope: !2066)
!2076 = !DILocation(line: 910, column: 69, scope: !2066)
!2077 = !DILocation(line: 912, column: 44, scope: !2066)
!2078 = !DILocation(line: 913, column: 44, scope: !2066)
!2079 = !DILocation(line: 910, column: 9, scope: !2066)
!2080 = !DILocation(line: 914, column: 7, scope: !2066)
!2081 = !DILocation(line: 916, column: 11, scope: !2005)
!2082 = !DILocation(line: 917, column: 5, scope: !2005)
!2083 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !171, file: !171, line: 928, type: !2084, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!13, !22, !6, !165}
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "n", arg: 1, scope: !2083, file: !171, line: 928, type: !22)
!2088 = !DILocalVariable(name: "arg", arg: 2, scope: !2083, file: !171, line: 928, type: !6)
!2089 = !DILocalVariable(name: "argsize", arg: 3, scope: !2083, file: !171, line: 928, type: !165)
!2090 = !DILocation(line: 928, column: 21, scope: !2083)
!2091 = !DILocation(line: 928, column: 36, scope: !2083)
!2092 = !DILocation(line: 928, column: 48, scope: !2083)
!2093 = !DILocation(line: 930, column: 10, scope: !2083)
!2094 = !DILocation(line: 930, column: 3, scope: !2083)
!2095 = distinct !DISubprogram(name: "quotearg", scope: !171, file: !171, line: 934, type: !2096, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!13, !6}
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "arg", arg: 1, scope: !2095, file: !171, line: 934, type: !6)
!2100 = !DILocation(line: 934, column: 23, scope: !2095)
!2101 = !DILocation(line: 922, column: 17, scope: !1981, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 936, column: 10, scope: !2095)
!2103 = !DILocation(line: 922, column: 32, scope: !1981, inlinedAt: !2102)
!2104 = !DILocation(line: 924, column: 10, scope: !1981, inlinedAt: !2102)
!2105 = !DILocation(line: 936, column: 3, scope: !2095)
!2106 = distinct !DISubprogram(name: "quotearg_mem", scope: !171, file: !171, line: 940, type: !2107, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!13, !6, !165}
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "arg", arg: 1, scope: !2106, file: !171, line: 940, type: !6)
!2111 = !DILocalVariable(name: "argsize", arg: 2, scope: !2106, file: !171, line: 940, type: !165)
!2112 = !DILocation(line: 940, column: 27, scope: !2106)
!2113 = !DILocation(line: 940, column: 39, scope: !2106)
!2114 = !DILocation(line: 928, column: 21, scope: !2083, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 942, column: 10, scope: !2106)
!2116 = !DILocation(line: 928, column: 36, scope: !2083, inlinedAt: !2115)
!2117 = !DILocation(line: 928, column: 48, scope: !2083, inlinedAt: !2115)
!2118 = !DILocation(line: 930, column: 10, scope: !2083, inlinedAt: !2115)
!2119 = !DILocation(line: 942, column: 3, scope: !2106)
!2120 = distinct !DISubprogram(name: "quotearg_n_style", scope: !171, file: !171, line: 946, type: !2121, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!13, !22, !129, !6}
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DILocalVariable(name: "n", arg: 1, scope: !2120, file: !171, line: 946, type: !22)
!2125 = !DILocalVariable(name: "s", arg: 2, scope: !2120, file: !171, line: 946, type: !129)
!2126 = !DILocalVariable(name: "arg", arg: 3, scope: !2120, file: !171, line: 946, type: !6)
!2127 = !DILocalVariable(name: "o", scope: !2120, file: !171, line: 948, type: !978)
!2128 = !DILocalVariable(name: "o", scope: !2129, file: !171, line: 187, type: !178)
!2129 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !171, file: !171, line: 185, type: !2130, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!178, !129}
!2132 = !{!2133, !2128}
!2133 = !DILocalVariable(name: "style", arg: 1, scope: !2129, file: !171, line: 185, type: !129)
!2134 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2135 = !DILocation(line: 187, column: 26, scope: !2129, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 948, column: 36, scope: !2120)
!2137 = !DILocation(line: 946, column: 23, scope: !2120)
!2138 = !DILocation(line: 946, column: 45, scope: !2120)
!2139 = !DILocation(line: 946, column: 60, scope: !2120)
!2140 = !DILocation(line: 948, column: 3, scope: !2120)
!2141 = !DILocation(line: 948, column: 32, scope: !2120)
!2142 = !DILocation(line: 185, column: 48, scope: !2129, inlinedAt: !2136)
!2143 = !DILocation(line: 187, column: 3, scope: !2129, inlinedAt: !2136)
!2144 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2145 = !DILocation(line: 188, column: 13, scope: !2146, inlinedAt: !2136)
!2146 = distinct !DILexicalBlock(scope: !2129, file: !171, line: 188, column: 7)
!2147 = !DILocation(line: 188, column: 7, scope: !2129, inlinedAt: !2136)
!2148 = !DILocation(line: 189, column: 5, scope: !2146, inlinedAt: !2136)
!2149 = !{!2150}
!2150 = distinct !{!2150, !2151, !"quoting_options_from_style: argument 0"}
!2151 = distinct !{!2151, !"quoting_options_from_style"}
!2152 = !DILocation(line: 191, column: 10, scope: !2129, inlinedAt: !2136)
!2153 = !DILocation(line: 192, column: 1, scope: !2129, inlinedAt: !2136)
!2154 = !DILocation(line: 949, column: 10, scope: !2120)
!2155 = !DILocation(line: 950, column: 1, scope: !2120)
!2156 = !DILocation(line: 949, column: 3, scope: !2120)
!2157 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !171, file: !171, line: 953, type: !2158, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!13, !22, !129, !6, !165}
!2160 = !{!2161, !2162, !2163, !2164, !2165}
!2161 = !DILocalVariable(name: "n", arg: 1, scope: !2157, file: !171, line: 953, type: !22)
!2162 = !DILocalVariable(name: "s", arg: 2, scope: !2157, file: !171, line: 953, type: !129)
!2163 = !DILocalVariable(name: "arg", arg: 3, scope: !2157, file: !171, line: 954, type: !6)
!2164 = !DILocalVariable(name: "argsize", arg: 4, scope: !2157, file: !171, line: 954, type: !165)
!2165 = !DILocalVariable(name: "o", scope: !2157, file: !171, line: 956, type: !978)
!2166 = !DILocation(line: 187, column: 26, scope: !2129, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 956, column: 36, scope: !2157)
!2168 = !DILocation(line: 953, column: 27, scope: !2157)
!2169 = !DILocation(line: 953, column: 49, scope: !2157)
!2170 = !DILocation(line: 954, column: 35, scope: !2157)
!2171 = !DILocation(line: 954, column: 47, scope: !2157)
!2172 = !DILocation(line: 956, column: 3, scope: !2157)
!2173 = !DILocation(line: 956, column: 32, scope: !2157)
!2174 = !DILocation(line: 185, column: 48, scope: !2129, inlinedAt: !2167)
!2175 = !DILocation(line: 187, column: 3, scope: !2129, inlinedAt: !2167)
!2176 = !DILocation(line: 188, column: 13, scope: !2146, inlinedAt: !2167)
!2177 = !DILocation(line: 188, column: 7, scope: !2129, inlinedAt: !2167)
!2178 = !DILocation(line: 189, column: 5, scope: !2146, inlinedAt: !2167)
!2179 = !{!2180}
!2180 = distinct !{!2180, !2181, !"quoting_options_from_style: argument 0"}
!2181 = distinct !{!2181, !"quoting_options_from_style"}
!2182 = !DILocation(line: 191, column: 10, scope: !2129, inlinedAt: !2167)
!2183 = !DILocation(line: 192, column: 1, scope: !2129, inlinedAt: !2167)
!2184 = !DILocation(line: 957, column: 10, scope: !2157)
!2185 = !DILocation(line: 958, column: 1, scope: !2157)
!2186 = !DILocation(line: 957, column: 3, scope: !2157)
!2187 = distinct !DISubprogram(name: "quotearg_style", scope: !171, file: !171, line: 961, type: !2188, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!13, !129, !6}
!2190 = !{!2191, !2192}
!2191 = !DILocalVariable(name: "s", arg: 1, scope: !2187, file: !171, line: 961, type: !129)
!2192 = !DILocalVariable(name: "arg", arg: 2, scope: !2187, file: !171, line: 961, type: !6)
!2193 = !DILocation(line: 187, column: 26, scope: !2129, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 948, column: 36, scope: !2120, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 963, column: 10, scope: !2187)
!2196 = !DILocation(line: 961, column: 36, scope: !2187)
!2197 = !DILocation(line: 961, column: 51, scope: !2187)
!2198 = !DILocation(line: 946, column: 23, scope: !2120, inlinedAt: !2195)
!2199 = !DILocation(line: 946, column: 45, scope: !2120, inlinedAt: !2195)
!2200 = !DILocation(line: 946, column: 60, scope: !2120, inlinedAt: !2195)
!2201 = !DILocation(line: 948, column: 3, scope: !2120, inlinedAt: !2195)
!2202 = !DILocation(line: 948, column: 32, scope: !2120, inlinedAt: !2195)
!2203 = !DILocation(line: 185, column: 48, scope: !2129, inlinedAt: !2194)
!2204 = !DILocation(line: 187, column: 3, scope: !2129, inlinedAt: !2194)
!2205 = !DILocation(line: 188, column: 13, scope: !2146, inlinedAt: !2194)
!2206 = !DILocation(line: 188, column: 7, scope: !2129, inlinedAt: !2194)
!2207 = !DILocation(line: 189, column: 5, scope: !2146, inlinedAt: !2194)
!2208 = !{!2209}
!2209 = distinct !{!2209, !2210, !"quoting_options_from_style: argument 0"}
!2210 = distinct !{!2210, !"quoting_options_from_style"}
!2211 = !DILocation(line: 191, column: 10, scope: !2129, inlinedAt: !2194)
!2212 = !DILocation(line: 192, column: 1, scope: !2129, inlinedAt: !2194)
!2213 = !DILocation(line: 949, column: 10, scope: !2120, inlinedAt: !2195)
!2214 = !DILocation(line: 950, column: 1, scope: !2120, inlinedAt: !2195)
!2215 = !DILocation(line: 963, column: 3, scope: !2187)
!2216 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !171, file: !171, line: 967, type: !2217, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!13, !129, !6, !165}
!2219 = !{!2220, !2221, !2222}
!2220 = !DILocalVariable(name: "s", arg: 1, scope: !2216, file: !171, line: 967, type: !129)
!2221 = !DILocalVariable(name: "arg", arg: 2, scope: !2216, file: !171, line: 967, type: !6)
!2222 = !DILocalVariable(name: "argsize", arg: 3, scope: !2216, file: !171, line: 967, type: !165)
!2223 = !DILocation(line: 187, column: 26, scope: !2129, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 956, column: 36, scope: !2157, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 969, column: 10, scope: !2216)
!2226 = !DILocation(line: 967, column: 40, scope: !2216)
!2227 = !DILocation(line: 967, column: 55, scope: !2216)
!2228 = !DILocation(line: 967, column: 67, scope: !2216)
!2229 = !DILocation(line: 953, column: 27, scope: !2157, inlinedAt: !2225)
!2230 = !DILocation(line: 953, column: 49, scope: !2157, inlinedAt: !2225)
!2231 = !DILocation(line: 954, column: 35, scope: !2157, inlinedAt: !2225)
!2232 = !DILocation(line: 954, column: 47, scope: !2157, inlinedAt: !2225)
!2233 = !DILocation(line: 956, column: 3, scope: !2157, inlinedAt: !2225)
!2234 = !DILocation(line: 956, column: 32, scope: !2157, inlinedAt: !2225)
!2235 = !DILocation(line: 185, column: 48, scope: !2129, inlinedAt: !2224)
!2236 = !DILocation(line: 187, column: 3, scope: !2129, inlinedAt: !2224)
!2237 = !DILocation(line: 188, column: 13, scope: !2146, inlinedAt: !2224)
!2238 = !DILocation(line: 188, column: 7, scope: !2129, inlinedAt: !2224)
!2239 = !DILocation(line: 189, column: 5, scope: !2146, inlinedAt: !2224)
!2240 = !{!2241}
!2241 = distinct !{!2241, !2242, !"quoting_options_from_style: argument 0"}
!2242 = distinct !{!2242, !"quoting_options_from_style"}
!2243 = !DILocation(line: 191, column: 10, scope: !2129, inlinedAt: !2224)
!2244 = !DILocation(line: 192, column: 1, scope: !2129, inlinedAt: !2224)
!2245 = !DILocation(line: 957, column: 10, scope: !2157, inlinedAt: !2225)
!2246 = !DILocation(line: 958, column: 1, scope: !2157, inlinedAt: !2225)
!2247 = !DILocation(line: 969, column: 3, scope: !2216)
!2248 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !171, file: !171, line: 973, type: !2249, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!13, !6, !165, !8}
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "arg", arg: 1, scope: !2248, file: !171, line: 973, type: !6)
!2253 = !DILocalVariable(name: "argsize", arg: 2, scope: !2248, file: !171, line: 973, type: !165)
!2254 = !DILocalVariable(name: "ch", arg: 3, scope: !2248, file: !171, line: 973, type: !8)
!2255 = !DILocalVariable(name: "options", scope: !2248, file: !171, line: 975, type: !178)
!2256 = !DILocation(line: 973, column: 32, scope: !2248)
!2257 = !DILocation(line: 973, column: 44, scope: !2248)
!2258 = !DILocation(line: 973, column: 58, scope: !2248)
!2259 = !DILocation(line: 975, column: 3, scope: !2248)
!2260 = !DILocation(line: 976, column: 13, scope: !2248)
!2261 = !{i64 0, i64 4, !776, i64 4, i64 4, !633, i64 8, i64 32, !776, i64 40, i64 8, !625, i64 48, i64 8, !625}
!2262 = !DILocation(line: 975, column: 26, scope: !2248)
!2263 = !DILocation(line: 144, column: 43, scope: !999, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 977, column: 3, scope: !2248)
!2265 = !DILocation(line: 144, column: 51, scope: !999, inlinedAt: !2264)
!2266 = !DILocation(line: 144, column: 58, scope: !999, inlinedAt: !2264)
!2267 = !DILocation(line: 146, column: 17, scope: !999, inlinedAt: !2264)
!2268 = !DILocation(line: 148, column: 62, scope: !999, inlinedAt: !2264)
!2269 = !DILocation(line: 148, column: 57, scope: !999, inlinedAt: !2264)
!2270 = !DILocation(line: 147, column: 17, scope: !999, inlinedAt: !2264)
!2271 = !DILocation(line: 149, column: 18, scope: !999, inlinedAt: !2264)
!2272 = !DILocation(line: 149, column: 15, scope: !999, inlinedAt: !2264)
!2273 = !DILocation(line: 149, column: 7, scope: !999, inlinedAt: !2264)
!2274 = !DILocation(line: 150, column: 12, scope: !999, inlinedAt: !2264)
!2275 = !DILocation(line: 150, column: 15, scope: !999, inlinedAt: !2264)
!2276 = !DILocation(line: 150, column: 25, scope: !999, inlinedAt: !2264)
!2277 = !DILocation(line: 150, column: 7, scope: !999, inlinedAt: !2264)
!2278 = !DILocation(line: 151, column: 18, scope: !999, inlinedAt: !2264)
!2279 = !DILocation(line: 151, column: 23, scope: !999, inlinedAt: !2264)
!2280 = !DILocation(line: 151, column: 6, scope: !999, inlinedAt: !2264)
!2281 = !DILocation(line: 978, column: 10, scope: !2248)
!2282 = !DILocation(line: 979, column: 1, scope: !2248)
!2283 = !DILocation(line: 978, column: 3, scope: !2248)
!2284 = distinct !DISubprogram(name: "quotearg_char", scope: !171, file: !171, line: 982, type: !2285, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!13, !6, !8}
!2287 = !{!2288, !2289}
!2288 = !DILocalVariable(name: "arg", arg: 1, scope: !2284, file: !171, line: 982, type: !6)
!2289 = !DILocalVariable(name: "ch", arg: 2, scope: !2284, file: !171, line: 982, type: !8)
!2290 = !DILocation(line: 982, column: 28, scope: !2284)
!2291 = !DILocation(line: 982, column: 38, scope: !2284)
!2292 = !DILocation(line: 973, column: 32, scope: !2248, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 984, column: 10, scope: !2284)
!2294 = !DILocation(line: 973, column: 44, scope: !2248, inlinedAt: !2293)
!2295 = !DILocation(line: 973, column: 58, scope: !2248, inlinedAt: !2293)
!2296 = !DILocation(line: 975, column: 3, scope: !2248, inlinedAt: !2293)
!2297 = !DILocation(line: 976, column: 13, scope: !2248, inlinedAt: !2293)
!2298 = !DILocation(line: 975, column: 26, scope: !2248, inlinedAt: !2293)
!2299 = !DILocation(line: 144, column: 43, scope: !999, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 977, column: 3, scope: !2248, inlinedAt: !2293)
!2301 = !DILocation(line: 144, column: 51, scope: !999, inlinedAt: !2300)
!2302 = !DILocation(line: 144, column: 58, scope: !999, inlinedAt: !2300)
!2303 = !DILocation(line: 146, column: 17, scope: !999, inlinedAt: !2300)
!2304 = !DILocation(line: 148, column: 62, scope: !999, inlinedAt: !2300)
!2305 = !DILocation(line: 148, column: 57, scope: !999, inlinedAt: !2300)
!2306 = !DILocation(line: 147, column: 17, scope: !999, inlinedAt: !2300)
!2307 = !DILocation(line: 149, column: 18, scope: !999, inlinedAt: !2300)
!2308 = !DILocation(line: 149, column: 15, scope: !999, inlinedAt: !2300)
!2309 = !DILocation(line: 149, column: 7, scope: !999, inlinedAt: !2300)
!2310 = !DILocation(line: 150, column: 12, scope: !999, inlinedAt: !2300)
!2311 = !DILocation(line: 150, column: 15, scope: !999, inlinedAt: !2300)
!2312 = !DILocation(line: 150, column: 25, scope: !999, inlinedAt: !2300)
!2313 = !DILocation(line: 150, column: 7, scope: !999, inlinedAt: !2300)
!2314 = !DILocation(line: 151, column: 18, scope: !999, inlinedAt: !2300)
!2315 = !DILocation(line: 151, column: 23, scope: !999, inlinedAt: !2300)
!2316 = !DILocation(line: 151, column: 6, scope: !999, inlinedAt: !2300)
!2317 = !DILocation(line: 978, column: 10, scope: !2248, inlinedAt: !2293)
!2318 = !DILocation(line: 979, column: 1, scope: !2248, inlinedAt: !2293)
!2319 = !DILocation(line: 984, column: 3, scope: !2284)
!2320 = distinct !DISubprogram(name: "quotearg_colon", scope: !171, file: !171, line: 988, type: !2096, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2321)
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "arg", arg: 1, scope: !2320, file: !171, line: 988, type: !6)
!2323 = !DILocation(line: 988, column: 29, scope: !2320)
!2324 = !DILocation(line: 982, column: 28, scope: !2284, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 990, column: 10, scope: !2320)
!2326 = !DILocation(line: 982, column: 38, scope: !2284, inlinedAt: !2325)
!2327 = !DILocation(line: 973, column: 32, scope: !2248, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 984, column: 10, scope: !2284, inlinedAt: !2325)
!2329 = !DILocation(line: 973, column: 44, scope: !2248, inlinedAt: !2328)
!2330 = !DILocation(line: 973, column: 58, scope: !2248, inlinedAt: !2328)
!2331 = !DILocation(line: 975, column: 3, scope: !2248, inlinedAt: !2328)
!2332 = !DILocation(line: 976, column: 13, scope: !2248, inlinedAt: !2328)
!2333 = !DILocation(line: 975, column: 26, scope: !2248, inlinedAt: !2328)
!2334 = !DILocation(line: 144, column: 43, scope: !999, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 977, column: 3, scope: !2248, inlinedAt: !2328)
!2336 = !DILocation(line: 144, column: 51, scope: !999, inlinedAt: !2335)
!2337 = !DILocation(line: 144, column: 58, scope: !999, inlinedAt: !2335)
!2338 = !DILocation(line: 146, column: 17, scope: !999, inlinedAt: !2335)
!2339 = !DILocation(line: 148, column: 57, scope: !999, inlinedAt: !2335)
!2340 = !DILocation(line: 147, column: 17, scope: !999, inlinedAt: !2335)
!2341 = !DILocation(line: 149, column: 7, scope: !999, inlinedAt: !2335)
!2342 = !DILocation(line: 150, column: 12, scope: !999, inlinedAt: !2335)
!2343 = !DILocation(line: 151, column: 6, scope: !999, inlinedAt: !2335)
!2344 = !DILocation(line: 978, column: 10, scope: !2248, inlinedAt: !2328)
!2345 = !DILocation(line: 979, column: 1, scope: !2248, inlinedAt: !2328)
!2346 = !DILocation(line: 990, column: 3, scope: !2320)
!2347 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !171, file: !171, line: 994, type: !2107, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2348)
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "arg", arg: 1, scope: !2347, file: !171, line: 994, type: !6)
!2350 = !DILocalVariable(name: "argsize", arg: 2, scope: !2347, file: !171, line: 994, type: !165)
!2351 = !DILocation(line: 994, column: 33, scope: !2347)
!2352 = !DILocation(line: 994, column: 45, scope: !2347)
!2353 = !DILocation(line: 973, column: 32, scope: !2248, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 996, column: 10, scope: !2347)
!2355 = !DILocation(line: 973, column: 44, scope: !2248, inlinedAt: !2354)
!2356 = !DILocation(line: 973, column: 58, scope: !2248, inlinedAt: !2354)
!2357 = !DILocation(line: 975, column: 3, scope: !2248, inlinedAt: !2354)
!2358 = !DILocation(line: 976, column: 13, scope: !2248, inlinedAt: !2354)
!2359 = !DILocation(line: 975, column: 26, scope: !2248, inlinedAt: !2354)
!2360 = !DILocation(line: 144, column: 43, scope: !999, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 977, column: 3, scope: !2248, inlinedAt: !2354)
!2362 = !DILocation(line: 144, column: 51, scope: !999, inlinedAt: !2361)
!2363 = !DILocation(line: 144, column: 58, scope: !999, inlinedAt: !2361)
!2364 = !DILocation(line: 146, column: 17, scope: !999, inlinedAt: !2361)
!2365 = !DILocation(line: 148, column: 57, scope: !999, inlinedAt: !2361)
!2366 = !DILocation(line: 147, column: 17, scope: !999, inlinedAt: !2361)
!2367 = !DILocation(line: 149, column: 7, scope: !999, inlinedAt: !2361)
!2368 = !DILocation(line: 150, column: 12, scope: !999, inlinedAt: !2361)
!2369 = !DILocation(line: 151, column: 6, scope: !999, inlinedAt: !2361)
!2370 = !DILocation(line: 978, column: 10, scope: !2248, inlinedAt: !2354)
!2371 = !DILocation(line: 979, column: 1, scope: !2248, inlinedAt: !2354)
!2372 = !DILocation(line: 996, column: 3, scope: !2347)
!2373 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !171, file: !171, line: 1000, type: !2121, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2374)
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DILocalVariable(name: "n", arg: 1, scope: !2373, file: !171, line: 1000, type: !22)
!2376 = !DILocalVariable(name: "s", arg: 2, scope: !2373, file: !171, line: 1000, type: !129)
!2377 = !DILocalVariable(name: "arg", arg: 3, scope: !2373, file: !171, line: 1000, type: !6)
!2378 = !DILocalVariable(name: "options", scope: !2373, file: !171, line: 1002, type: !178)
!2379 = !DILocation(line: 187, column: 26, scope: !2129, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 1003, column: 13, scope: !2373)
!2381 = !DILocation(line: 1000, column: 29, scope: !2373)
!2382 = !DILocation(line: 1000, column: 51, scope: !2373)
!2383 = !DILocation(line: 1000, column: 66, scope: !2373)
!2384 = !DILocation(line: 1002, column: 3, scope: !2373)
!2385 = !DILocation(line: 185, column: 48, scope: !2129, inlinedAt: !2380)
!2386 = !DILocation(line: 187, column: 3, scope: !2129, inlinedAt: !2380)
!2387 = !DILocation(line: 188, column: 13, scope: !2146, inlinedAt: !2380)
!2388 = !DILocation(line: 188, column: 7, scope: !2129, inlinedAt: !2380)
!2389 = !DILocation(line: 189, column: 5, scope: !2146, inlinedAt: !2380)
!2390 = !{!2391}
!2391 = distinct !{!2391, !2392, !"quoting_options_from_style: argument 0"}
!2392 = distinct !{!2392, !"quoting_options_from_style"}
!2393 = !DILocation(line: 191, column: 10, scope: !2129, inlinedAt: !2380)
!2394 = !DILocation(line: 192, column: 1, scope: !2129, inlinedAt: !2380)
!2395 = !DILocation(line: 1003, column: 13, scope: !2373)
!2396 = !DILocation(line: 1002, column: 26, scope: !2373)
!2397 = !DILocation(line: 144, column: 43, scope: !999, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 1004, column: 3, scope: !2373)
!2399 = !DILocation(line: 144, column: 51, scope: !999, inlinedAt: !2398)
!2400 = !DILocation(line: 144, column: 58, scope: !999, inlinedAt: !2398)
!2401 = !DILocation(line: 146, column: 17, scope: !999, inlinedAt: !2398)
!2402 = !DILocation(line: 148, column: 57, scope: !999, inlinedAt: !2398)
!2403 = !DILocation(line: 147, column: 17, scope: !999, inlinedAt: !2398)
!2404 = !DILocation(line: 149, column: 7, scope: !999, inlinedAt: !2398)
!2405 = !DILocation(line: 150, column: 12, scope: !999, inlinedAt: !2398)
!2406 = !DILocation(line: 151, column: 6, scope: !999, inlinedAt: !2398)
!2407 = !DILocation(line: 1005, column: 10, scope: !2373)
!2408 = !DILocation(line: 1006, column: 1, scope: !2373)
!2409 = !DILocation(line: 1005, column: 3, scope: !2373)
!2410 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !171, file: !171, line: 1009, type: !2411, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!13, !22, !6, !6, !6}
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DILocalVariable(name: "n", arg: 1, scope: !2410, file: !171, line: 1009, type: !22)
!2415 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2410, file: !171, line: 1009, type: !6)
!2416 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2410, file: !171, line: 1010, type: !6)
!2417 = !DILocalVariable(name: "arg", arg: 4, scope: !2410, file: !171, line: 1010, type: !6)
!2418 = !DILocation(line: 1009, column: 24, scope: !2410)
!2419 = !DILocation(line: 1009, column: 39, scope: !2410)
!2420 = !DILocation(line: 1010, column: 32, scope: !2410)
!2421 = !DILocation(line: 1010, column: 57, scope: !2410)
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2423, file: !171, line: 1017, type: !22)
!2423 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !171, file: !171, line: 1017, type: !2424, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!13, !22, !6, !6, !6, !165}
!2426 = !{!2422, !2427, !2428, !2429, !2430, !2431}
!2427 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2423, file: !171, line: 1017, type: !6)
!2428 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2423, file: !171, line: 1018, type: !6)
!2429 = !DILocalVariable(name: "arg", arg: 4, scope: !2423, file: !171, line: 1019, type: !6)
!2430 = !DILocalVariable(name: "argsize", arg: 5, scope: !2423, file: !171, line: 1019, type: !165)
!2431 = !DILocalVariable(name: "o", scope: !2423, file: !171, line: 1021, type: !178)
!2432 = !DILocation(line: 1017, column: 28, scope: !2423, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 1012, column: 10, scope: !2410)
!2434 = !DILocation(line: 1017, column: 43, scope: !2423, inlinedAt: !2433)
!2435 = !DILocation(line: 1018, column: 36, scope: !2423, inlinedAt: !2433)
!2436 = !DILocation(line: 1019, column: 36, scope: !2423, inlinedAt: !2433)
!2437 = !DILocation(line: 1019, column: 48, scope: !2423, inlinedAt: !2433)
!2438 = !DILocation(line: 1021, column: 3, scope: !2423, inlinedAt: !2433)
!2439 = !DILocation(line: 1021, column: 30, scope: !2423, inlinedAt: !2433)
!2440 = !DILocation(line: 1021, column: 26, scope: !2423, inlinedAt: !2433)
!2441 = !DILocation(line: 171, column: 45, scope: !1048, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 1022, column: 3, scope: !2423, inlinedAt: !2433)
!2443 = !DILocation(line: 172, column: 33, scope: !1048, inlinedAt: !2442)
!2444 = !DILocation(line: 172, column: 57, scope: !1048, inlinedAt: !2442)
!2445 = !DILocation(line: 176, column: 6, scope: !1048, inlinedAt: !2442)
!2446 = !DILocation(line: 176, column: 12, scope: !1048, inlinedAt: !2442)
!2447 = !DILocation(line: 177, column: 8, scope: !1064, inlinedAt: !2442)
!2448 = !DILocation(line: 177, column: 23, scope: !1064, inlinedAt: !2442)
!2449 = !DILocation(line: 177, column: 19, scope: !1064, inlinedAt: !2442)
!2450 = !DILocation(line: 178, column: 5, scope: !1064, inlinedAt: !2442)
!2451 = !DILocation(line: 179, column: 6, scope: !1048, inlinedAt: !2442)
!2452 = !DILocation(line: 179, column: 17, scope: !1048, inlinedAt: !2442)
!2453 = !DILocation(line: 180, column: 6, scope: !1048, inlinedAt: !2442)
!2454 = !DILocation(line: 180, column: 18, scope: !1048, inlinedAt: !2442)
!2455 = !DILocation(line: 1023, column: 10, scope: !2423, inlinedAt: !2433)
!2456 = !DILocation(line: 1024, column: 1, scope: !2423, inlinedAt: !2433)
!2457 = !DILocation(line: 1012, column: 3, scope: !2410)
!2458 = !DILocation(line: 1017, column: 28, scope: !2423)
!2459 = !DILocation(line: 1017, column: 43, scope: !2423)
!2460 = !DILocation(line: 1018, column: 36, scope: !2423)
!2461 = !DILocation(line: 1019, column: 36, scope: !2423)
!2462 = !DILocation(line: 1019, column: 48, scope: !2423)
!2463 = !DILocation(line: 1021, column: 3, scope: !2423)
!2464 = !DILocation(line: 1021, column: 30, scope: !2423)
!2465 = !DILocation(line: 1021, column: 26, scope: !2423)
!2466 = !DILocation(line: 171, column: 45, scope: !1048, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 1022, column: 3, scope: !2423)
!2468 = !DILocation(line: 172, column: 33, scope: !1048, inlinedAt: !2467)
!2469 = !DILocation(line: 172, column: 57, scope: !1048, inlinedAt: !2467)
!2470 = !DILocation(line: 176, column: 6, scope: !1048, inlinedAt: !2467)
!2471 = !DILocation(line: 176, column: 12, scope: !1048, inlinedAt: !2467)
!2472 = !DILocation(line: 177, column: 8, scope: !1064, inlinedAt: !2467)
!2473 = !DILocation(line: 177, column: 23, scope: !1064, inlinedAt: !2467)
!2474 = !DILocation(line: 177, column: 19, scope: !1064, inlinedAt: !2467)
!2475 = !DILocation(line: 178, column: 5, scope: !1064, inlinedAt: !2467)
!2476 = !DILocation(line: 179, column: 6, scope: !1048, inlinedAt: !2467)
!2477 = !DILocation(line: 179, column: 17, scope: !1048, inlinedAt: !2467)
!2478 = !DILocation(line: 180, column: 6, scope: !1048, inlinedAt: !2467)
!2479 = !DILocation(line: 180, column: 18, scope: !1048, inlinedAt: !2467)
!2480 = !DILocation(line: 1023, column: 10, scope: !2423)
!2481 = !DILocation(line: 1024, column: 1, scope: !2423)
!2482 = !DILocation(line: 1023, column: 3, scope: !2423)
!2483 = distinct !DISubprogram(name: "quotearg_custom", scope: !171, file: !171, line: 1027, type: !2484, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!13, !6, !6, !6}
!2486 = !{!2487, !2488, !2489}
!2487 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2483, file: !171, line: 1027, type: !6)
!2488 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2483, file: !171, line: 1027, type: !6)
!2489 = !DILocalVariable(name: "arg", arg: 3, scope: !2483, file: !171, line: 1028, type: !6)
!2490 = !DILocation(line: 1027, column: 30, scope: !2483)
!2491 = !DILocation(line: 1027, column: 54, scope: !2483)
!2492 = !DILocation(line: 1028, column: 30, scope: !2483)
!2493 = !DILocation(line: 1009, column: 24, scope: !2410, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1030, column: 10, scope: !2483)
!2495 = !DILocation(line: 1009, column: 39, scope: !2410, inlinedAt: !2494)
!2496 = !DILocation(line: 1010, column: 32, scope: !2410, inlinedAt: !2494)
!2497 = !DILocation(line: 1010, column: 57, scope: !2410, inlinedAt: !2494)
!2498 = !DILocation(line: 1017, column: 28, scope: !2423, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1012, column: 10, scope: !2410, inlinedAt: !2494)
!2500 = !DILocation(line: 1017, column: 43, scope: !2423, inlinedAt: !2499)
!2501 = !DILocation(line: 1018, column: 36, scope: !2423, inlinedAt: !2499)
!2502 = !DILocation(line: 1019, column: 36, scope: !2423, inlinedAt: !2499)
!2503 = !DILocation(line: 1019, column: 48, scope: !2423, inlinedAt: !2499)
!2504 = !DILocation(line: 1021, column: 3, scope: !2423, inlinedAt: !2499)
!2505 = !DILocation(line: 1021, column: 30, scope: !2423, inlinedAt: !2499)
!2506 = !DILocation(line: 1021, column: 26, scope: !2423, inlinedAt: !2499)
!2507 = !DILocation(line: 171, column: 45, scope: !1048, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 1022, column: 3, scope: !2423, inlinedAt: !2499)
!2509 = !DILocation(line: 172, column: 33, scope: !1048, inlinedAt: !2508)
!2510 = !DILocation(line: 172, column: 57, scope: !1048, inlinedAt: !2508)
!2511 = !DILocation(line: 176, column: 6, scope: !1048, inlinedAt: !2508)
!2512 = !DILocation(line: 176, column: 12, scope: !1048, inlinedAt: !2508)
!2513 = !DILocation(line: 177, column: 8, scope: !1064, inlinedAt: !2508)
!2514 = !DILocation(line: 177, column: 23, scope: !1064, inlinedAt: !2508)
!2515 = !DILocation(line: 177, column: 19, scope: !1064, inlinedAt: !2508)
!2516 = !DILocation(line: 178, column: 5, scope: !1064, inlinedAt: !2508)
!2517 = !DILocation(line: 179, column: 6, scope: !1048, inlinedAt: !2508)
!2518 = !DILocation(line: 179, column: 17, scope: !1048, inlinedAt: !2508)
!2519 = !DILocation(line: 180, column: 6, scope: !1048, inlinedAt: !2508)
!2520 = !DILocation(line: 180, column: 18, scope: !1048, inlinedAt: !2508)
!2521 = !DILocation(line: 1023, column: 10, scope: !2423, inlinedAt: !2499)
!2522 = !DILocation(line: 1024, column: 1, scope: !2423, inlinedAt: !2499)
!2523 = !DILocation(line: 1030, column: 3, scope: !2483)
!2524 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !171, file: !171, line: 1034, type: !2525, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!13, !6, !6, !6, !165}
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2524, file: !171, line: 1034, type: !6)
!2529 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2524, file: !171, line: 1034, type: !6)
!2530 = !DILocalVariable(name: "arg", arg: 3, scope: !2524, file: !171, line: 1035, type: !6)
!2531 = !DILocalVariable(name: "argsize", arg: 4, scope: !2524, file: !171, line: 1035, type: !165)
!2532 = !DILocation(line: 1034, column: 34, scope: !2524)
!2533 = !DILocation(line: 1034, column: 58, scope: !2524)
!2534 = !DILocation(line: 1035, column: 34, scope: !2524)
!2535 = !DILocation(line: 1035, column: 46, scope: !2524)
!2536 = !DILocation(line: 1017, column: 28, scope: !2423, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 1037, column: 10, scope: !2524)
!2538 = !DILocation(line: 1017, column: 43, scope: !2423, inlinedAt: !2537)
!2539 = !DILocation(line: 1018, column: 36, scope: !2423, inlinedAt: !2537)
!2540 = !DILocation(line: 1019, column: 36, scope: !2423, inlinedAt: !2537)
!2541 = !DILocation(line: 1019, column: 48, scope: !2423, inlinedAt: !2537)
!2542 = !DILocation(line: 1021, column: 3, scope: !2423, inlinedAt: !2537)
!2543 = !DILocation(line: 1021, column: 30, scope: !2423, inlinedAt: !2537)
!2544 = !DILocation(line: 1021, column: 26, scope: !2423, inlinedAt: !2537)
!2545 = !DILocation(line: 171, column: 45, scope: !1048, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 1022, column: 3, scope: !2423, inlinedAt: !2537)
!2547 = !DILocation(line: 172, column: 33, scope: !1048, inlinedAt: !2546)
!2548 = !DILocation(line: 172, column: 57, scope: !1048, inlinedAt: !2546)
!2549 = !DILocation(line: 176, column: 6, scope: !1048, inlinedAt: !2546)
!2550 = !DILocation(line: 176, column: 12, scope: !1048, inlinedAt: !2546)
!2551 = !DILocation(line: 177, column: 8, scope: !1064, inlinedAt: !2546)
!2552 = !DILocation(line: 177, column: 23, scope: !1064, inlinedAt: !2546)
!2553 = !DILocation(line: 177, column: 19, scope: !1064, inlinedAt: !2546)
!2554 = !DILocation(line: 178, column: 5, scope: !1064, inlinedAt: !2546)
!2555 = !DILocation(line: 179, column: 6, scope: !1048, inlinedAt: !2546)
!2556 = !DILocation(line: 179, column: 17, scope: !1048, inlinedAt: !2546)
!2557 = !DILocation(line: 180, column: 6, scope: !1048, inlinedAt: !2546)
!2558 = !DILocation(line: 180, column: 18, scope: !1048, inlinedAt: !2546)
!2559 = !DILocation(line: 1023, column: 10, scope: !2423, inlinedAt: !2537)
!2560 = !DILocation(line: 1024, column: 1, scope: !2423, inlinedAt: !2537)
!2561 = !DILocation(line: 1037, column: 3, scope: !2524)
!2562 = distinct !DISubprogram(name: "quote_n_mem", scope: !171, file: !171, line: 1052, type: !2563, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!6, !22, !6, !165}
!2565 = !{!2566, !2567, !2568}
!2566 = !DILocalVariable(name: "n", arg: 1, scope: !2562, file: !171, line: 1052, type: !22)
!2567 = !DILocalVariable(name: "arg", arg: 2, scope: !2562, file: !171, line: 1052, type: !6)
!2568 = !DILocalVariable(name: "argsize", arg: 3, scope: !2562, file: !171, line: 1052, type: !165)
!2569 = !DILocation(line: 1052, column: 18, scope: !2562)
!2570 = !DILocation(line: 1052, column: 33, scope: !2562)
!2571 = !DILocation(line: 1052, column: 45, scope: !2562)
!2572 = !DILocation(line: 1054, column: 10, scope: !2562)
!2573 = !DILocation(line: 1054, column: 3, scope: !2562)
!2574 = distinct !DISubprogram(name: "quote_mem", scope: !171, file: !171, line: 1058, type: !2575, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!6, !6, !165}
!2577 = !{!2578, !2579}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !171, line: 1058, type: !6)
!2579 = !DILocalVariable(name: "argsize", arg: 2, scope: !2574, file: !171, line: 1058, type: !165)
!2580 = !DILocation(line: 1058, column: 24, scope: !2574)
!2581 = !DILocation(line: 1058, column: 36, scope: !2574)
!2582 = !DILocation(line: 1052, column: 18, scope: !2562, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 1060, column: 10, scope: !2574)
!2584 = !DILocation(line: 1052, column: 33, scope: !2562, inlinedAt: !2583)
!2585 = !DILocation(line: 1052, column: 45, scope: !2562, inlinedAt: !2583)
!2586 = !DILocation(line: 1054, column: 10, scope: !2562, inlinedAt: !2583)
!2587 = !DILocation(line: 1060, column: 3, scope: !2574)
!2588 = distinct !DISubprogram(name: "quote_n", scope: !171, file: !171, line: 1064, type: !2589, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!6, !22, !6}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !171, line: 1064, type: !22)
!2593 = !DILocalVariable(name: "arg", arg: 2, scope: !2588, file: !171, line: 1064, type: !6)
!2594 = !DILocation(line: 1064, column: 14, scope: !2588)
!2595 = !DILocation(line: 1064, column: 29, scope: !2588)
!2596 = !DILocation(line: 1052, column: 18, scope: !2562, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 1066, column: 10, scope: !2588)
!2598 = !DILocation(line: 1052, column: 33, scope: !2562, inlinedAt: !2597)
!2599 = !DILocation(line: 1052, column: 45, scope: !2562, inlinedAt: !2597)
!2600 = !DILocation(line: 1054, column: 10, scope: !2562, inlinedAt: !2597)
!2601 = !DILocation(line: 1066, column: 3, scope: !2588)
!2602 = distinct !DISubprogram(name: "quote", scope: !171, file: !171, line: 1070, type: !2603, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!6, !6}
!2605 = !{!2606}
!2606 = !DILocalVariable(name: "arg", arg: 1, scope: !2602, file: !171, line: 1070, type: !6)
!2607 = !DILocation(line: 1070, column: 20, scope: !2602)
!2608 = !DILocation(line: 1064, column: 14, scope: !2588, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1072, column: 10, scope: !2602)
!2610 = !DILocation(line: 1064, column: 29, scope: !2588, inlinedAt: !2609)
!2611 = !DILocation(line: 1052, column: 18, scope: !2562, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1066, column: 10, scope: !2588, inlinedAt: !2609)
!2613 = !DILocation(line: 1052, column: 33, scope: !2562, inlinedAt: !2612)
!2614 = !DILocation(line: 1052, column: 45, scope: !2562, inlinedAt: !2612)
!2615 = !DILocation(line: 1054, column: 10, scope: !2562, inlinedAt: !2612)
!2616 = !DILocation(line: 1072, column: 3, scope: !2602)
!2617 = distinct !DISubprogram(name: "version_etc_arn", scope: !569, file: !569, line: 62, type: !2618, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !2676)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2620, !6, !6, !6, !2675, !165}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2622, line: 7, baseType: !2623)
!2622 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2624, line: 241, size: 1728, elements: !2625)
!2624 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2646, !2647, !2648, !2649, !2653, !2654, !2656, !2660, !2663, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2623, file: !2624, line: 242, baseType: !22, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2623, file: !2624, line: 247, baseType: !13, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2623, file: !2624, line: 248, baseType: !13, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2623, file: !2624, line: 249, baseType: !13, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2623, file: !2624, line: 250, baseType: !13, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2623, file: !2624, line: 251, baseType: !13, size: 64, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2623, file: !2624, line: 252, baseType: !13, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2623, file: !2624, line: 253, baseType: !13, size: 64, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2623, file: !2624, line: 254, baseType: !13, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2623, file: !2624, line: 256, baseType: !13, size: 64, offset: 576)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2623, file: !2624, line: 257, baseType: !13, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2623, file: !2624, line: 258, baseType: !13, size: 64, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2623, file: !2624, line: 260, baseType: !2639, size: 64, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2624, line: 156, size: 192, elements: !2641)
!2641 = !{!2642, !2643, !2645}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2640, file: !2624, line: 157, baseType: !2639, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2640, file: !2624, line: 158, baseType: !2644, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2640, file: !2624, line: 162, baseType: !22, size: 32, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2623, file: !2624, line: 262, baseType: !2644, size: 64, offset: 832)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2623, file: !2624, line: 264, baseType: !22, size: 32, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2623, file: !2624, line: 268, baseType: !22, size: 32, offset: 928)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2623, file: !2624, line: 270, baseType: !2650, size: 64, offset: 960)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2651, line: 140, baseType: !2652)
!2651 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2652 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2623, file: !2624, line: 274, baseType: !164, size: 16, offset: 1024)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2623, file: !2624, line: 275, baseType: !2655, size: 8, offset: 1040)
!2655 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2623, file: !2624, line: 276, baseType: !2657, size: 8, offset: 1048)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2658)
!2658 = !{!2659}
!2659 = !DISubrange(count: 1)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2623, file: !2624, line: 280, baseType: !2661, size: 64, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2624, line: 150, baseType: null)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2623, file: !2624, line: 289, baseType: !2664, size: 64, offset: 1152)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2651, line: 141, baseType: !2652)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2623, file: !2624, line: 297, baseType: !14, size: 64, offset: 1216)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2623, file: !2624, line: 298, baseType: !14, size: 64, offset: 1280)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2623, file: !2624, line: 299, baseType: !14, size: 64, offset: 1344)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2623, file: !2624, line: 300, baseType: !14, size: 64, offset: 1408)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2623, file: !2624, line: 302, baseType: !165, size: 64, offset: 1472)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2623, file: !2624, line: 303, baseType: !22, size: 32, offset: 1536)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2623, file: !2624, line: 305, baseType: !2672, size: 160, offset: 1568)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2673)
!2673 = !{!2674}
!2674 = !DISubrange(count: 20)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2682}
!2677 = !DILocalVariable(name: "stream", arg: 1, scope: !2617, file: !569, line: 62, type: !2620)
!2678 = !DILocalVariable(name: "command_name", arg: 2, scope: !2617, file: !569, line: 63, type: !6)
!2679 = !DILocalVariable(name: "package", arg: 3, scope: !2617, file: !569, line: 63, type: !6)
!2680 = !DILocalVariable(name: "version", arg: 4, scope: !2617, file: !569, line: 64, type: !6)
!2681 = !DILocalVariable(name: "authors", arg: 5, scope: !2617, file: !569, line: 65, type: !2675)
!2682 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2617, file: !569, line: 65, type: !165)
!2683 = !DILocation(line: 62, column: 24, scope: !2617)
!2684 = !DILocation(line: 63, column: 30, scope: !2617)
!2685 = !DILocation(line: 63, column: 56, scope: !2617)
!2686 = !DILocation(line: 64, column: 30, scope: !2617)
!2687 = !DILocation(line: 65, column: 39, scope: !2617)
!2688 = !DILocation(line: 65, column: 55, scope: !2617)
!2689 = !DILocation(line: 67, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2617, file: !569, line: 67, column: 7)
!2691 = !DILocation(line: 67, column: 7, scope: !2617)
!2692 = !DILocation(line: 68, column: 5, scope: !2690)
!2693 = !DILocation(line: 70, column: 5, scope: !2690)
!2694 = !DILocation(line: 84, column: 3, scope: !2617)
!2695 = !DILocation(line: 86, column: 3, scope: !2617)
!2696 = !DILocation(line: 95, column: 3, scope: !2617)
!2697 = !DILocation(line: 99, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2617, file: !569, line: 96, column: 5)
!2699 = !DILocation(line: 102, column: 7, scope: !2698)
!2700 = !DILocation(line: 103, column: 7, scope: !2698)
!2701 = !DILocation(line: 106, column: 7, scope: !2698)
!2702 = !DILocation(line: 107, column: 7, scope: !2698)
!2703 = !DILocation(line: 110, column: 7, scope: !2698)
!2704 = !DILocation(line: 112, column: 7, scope: !2698)
!2705 = !DILocation(line: 117, column: 7, scope: !2698)
!2706 = !DILocation(line: 119, column: 7, scope: !2698)
!2707 = !DILocation(line: 124, column: 7, scope: !2698)
!2708 = !DILocation(line: 126, column: 7, scope: !2698)
!2709 = !DILocation(line: 131, column: 7, scope: !2698)
!2710 = !DILocation(line: 134, column: 7, scope: !2698)
!2711 = !DILocation(line: 139, column: 7, scope: !2698)
!2712 = !DILocation(line: 142, column: 7, scope: !2698)
!2713 = !DILocation(line: 147, column: 7, scope: !2698)
!2714 = !DILocation(line: 151, column: 7, scope: !2698)
!2715 = !DILocation(line: 156, column: 7, scope: !2698)
!2716 = !DILocation(line: 160, column: 7, scope: !2698)
!2717 = !DILocation(line: 167, column: 7, scope: !2698)
!2718 = !DILocation(line: 171, column: 7, scope: !2698)
!2719 = !DILocation(line: 173, column: 1, scope: !2617)
!2720 = distinct !DISubprogram(name: "version_etc_ar", scope: !569, file: !569, line: 180, type: !2721, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !2620, !6, !6, !6, !2675}
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729}
!2724 = !DILocalVariable(name: "stream", arg: 1, scope: !2720, file: !569, line: 180, type: !2620)
!2725 = !DILocalVariable(name: "command_name", arg: 2, scope: !2720, file: !569, line: 181, type: !6)
!2726 = !DILocalVariable(name: "package", arg: 3, scope: !2720, file: !569, line: 181, type: !6)
!2727 = !DILocalVariable(name: "version", arg: 4, scope: !2720, file: !569, line: 182, type: !6)
!2728 = !DILocalVariable(name: "authors", arg: 5, scope: !2720, file: !569, line: 182, type: !2675)
!2729 = !DILocalVariable(name: "n_authors", scope: !2720, file: !569, line: 184, type: !165)
!2730 = !DILocation(line: 180, column: 23, scope: !2720)
!2731 = !DILocation(line: 181, column: 29, scope: !2720)
!2732 = !DILocation(line: 181, column: 55, scope: !2720)
!2733 = !DILocation(line: 182, column: 29, scope: !2720)
!2734 = !DILocation(line: 182, column: 59, scope: !2720)
!2735 = !DILocation(line: 184, column: 10, scope: !2720)
!2736 = !DILocation(line: 186, column: 8, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2720, file: !569, line: 186, column: 3)
!2738 = !DILocation(line: 186, column: 23, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2737, file: !569, line: 186, column: 3)
!2740 = !DILocation(line: 186, column: 3, scope: !2737)
!2741 = !DILocation(line: 186, column: 52, scope: !2739)
!2742 = distinct !{!2742, !2740, !2743}
!2743 = !DILocation(line: 187, column: 5, scope: !2737)
!2744 = !DILocation(line: 188, column: 3, scope: !2720)
!2745 = !DILocation(line: 189, column: 1, scope: !2720)
!2746 = distinct !DISubprogram(name: "version_etc_va", scope: !569, file: !569, line: 196, type: !2747, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !2756)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !2620, !6, !6, !6, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !566, line: 189, size: 192, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2750, file: !566, line: 189, baseType: !28, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2750, file: !566, line: 189, baseType: !28, size: 32, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2750, file: !566, line: 189, baseType: !14, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2750, file: !566, line: 189, baseType: !14, size: 64, offset: 128)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763}
!2757 = !DILocalVariable(name: "stream", arg: 1, scope: !2746, file: !569, line: 196, type: !2620)
!2758 = !DILocalVariable(name: "command_name", arg: 2, scope: !2746, file: !569, line: 197, type: !6)
!2759 = !DILocalVariable(name: "package", arg: 3, scope: !2746, file: !569, line: 197, type: !6)
!2760 = !DILocalVariable(name: "version", arg: 4, scope: !2746, file: !569, line: 198, type: !6)
!2761 = !DILocalVariable(name: "authors", arg: 5, scope: !2746, file: !569, line: 198, type: !2749)
!2762 = !DILocalVariable(name: "n_authors", scope: !2746, file: !569, line: 200, type: !165)
!2763 = !DILocalVariable(name: "authtab", scope: !2746, file: !569, line: 201, type: !2764)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !174)
!2765 = !DILocation(line: 196, column: 23, scope: !2746)
!2766 = !DILocation(line: 197, column: 29, scope: !2746)
!2767 = !DILocation(line: 197, column: 55, scope: !2746)
!2768 = !DILocation(line: 198, column: 29, scope: !2746)
!2769 = !DILocation(line: 198, column: 46, scope: !2746)
!2770 = !DILocation(line: 201, column: 3, scope: !2746)
!2771 = !DILocation(line: 201, column: 15, scope: !2746)
!2772 = !DILocation(line: 200, column: 10, scope: !2746)
!2773 = !DILocation(line: 205, column: 35, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !569, line: 203, column: 3)
!2775 = distinct !DILexicalBlock(scope: !2746, file: !569, line: 203, column: 3)
!2776 = !DILocation(line: 205, column: 14, scope: !2774)
!2777 = !DILocation(line: 205, column: 33, scope: !2774)
!2778 = !DILocation(line: 205, column: 67, scope: !2774)
!2779 = !DILocation(line: 203, column: 3, scope: !2775)
!2780 = !DILocation(line: 208, column: 3, scope: !2746)
!2781 = !DILocation(line: 210, column: 1, scope: !2746)
!2782 = distinct !DISubprogram(name: "version_etc", scope: !569, file: !569, line: 227, type: !2783, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !2620, !6, !6, !6, null}
!2785 = !{!2786, !2787, !2788, !2789, !2790}
!2786 = !DILocalVariable(name: "stream", arg: 1, scope: !2782, file: !569, line: 227, type: !2620)
!2787 = !DILocalVariable(name: "command_name", arg: 2, scope: !2782, file: !569, line: 228, type: !6)
!2788 = !DILocalVariable(name: "package", arg: 3, scope: !2782, file: !569, line: 228, type: !6)
!2789 = !DILocalVariable(name: "version", arg: 4, scope: !2782, file: !569, line: 229, type: !6)
!2790 = !DILocalVariable(name: "authors", scope: !2782, file: !569, line: 231, type: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2792, line: 46, baseType: !2793)
!2792 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2794, line: 48, baseType: !2795)
!2794 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !566, line: 231, baseType: !2796)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2750, size: 192, elements: !2658)
!2797 = !DILocation(line: 227, column: 20, scope: !2782)
!2798 = !DILocation(line: 228, column: 26, scope: !2782)
!2799 = !DILocation(line: 228, column: 52, scope: !2782)
!2800 = !DILocation(line: 229, column: 26, scope: !2782)
!2801 = !DILocation(line: 231, column: 3, scope: !2782)
!2802 = !DILocation(line: 231, column: 11, scope: !2782)
!2803 = !DILocation(line: 233, column: 3, scope: !2782)
!2804 = !DILocation(line: 234, column: 3, scope: !2782)
!2805 = !DILocation(line: 235, column: 3, scope: !2782)
!2806 = !DILocation(line: 236, column: 1, scope: !2782)
!2807 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !569, file: !569, line: 239, type: !884, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !11)
!2808 = !DILocation(line: 245, column: 3, scope: !2807)
!2809 = !DILocation(line: 251, column: 3, scope: !2807)
!2810 = !DILocation(line: 256, column: 3, scope: !2807)
!2811 = !DILocation(line: 258, column: 1, scope: !2807)
!2812 = distinct !DISubprogram(name: "xnmalloc", scope: !577, file: !577, line: 105, type: !2813, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!14, !165, !165}
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2812, file: !577, line: 105, type: !165)
!2817 = !DILocalVariable(name: "s", arg: 2, scope: !2812, file: !577, line: 105, type: !165)
!2818 = !DILocation(line: 105, column: 18, scope: !2812)
!2819 = !DILocation(line: 105, column: 28, scope: !2812)
!2820 = !DILocation(line: 107, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2812, file: !577, line: 107, column: 7)
!2822 = !DILocation(line: 107, column: 7, scope: !2812)
!2823 = !DILocation(line: 108, column: 5, scope: !2821)
!2824 = !DILocation(line: 109, column: 21, scope: !2812)
!2825 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !2827, line: 39, type: !165)
!2826 = distinct !DISubprogram(name: "xmalloc", scope: !2827, file: !2827, line: 39, type: !2828, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2830)
!2827 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!14, !165}
!2830 = !{!2825, !2831}
!2831 = !DILocalVariable(name: "p", scope: !2826, file: !2827, line: 41, type: !14)
!2832 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 109, column: 10, scope: !2812)
!2834 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !2833)
!2835 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !2833)
!2836 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !2833)
!2837 = distinct !DILexicalBlock(scope: !2826, file: !2827, line: 42, column: 7)
!2838 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !2833)
!2839 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !2833)
!2840 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !2833)
!2841 = !DILocation(line: 109, column: 3, scope: !2812)
!2842 = !DILocation(line: 39, column: 17, scope: !2826)
!2843 = !DILocation(line: 41, column: 13, scope: !2826)
!2844 = !DILocation(line: 41, column: 9, scope: !2826)
!2845 = !DILocation(line: 42, column: 8, scope: !2837)
!2846 = !DILocation(line: 42, column: 15, scope: !2837)
!2847 = !DILocation(line: 42, column: 10, scope: !2837)
!2848 = !DILocation(line: 43, column: 5, scope: !2837)
!2849 = !DILocation(line: 44, column: 3, scope: !2826)
!2850 = distinct !DISubprogram(name: "xnrealloc", scope: !577, file: !577, line: 118, type: !2851, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!14, !14, !165, !165}
!2853 = !{!2854, !2855, !2856}
!2854 = !DILocalVariable(name: "p", arg: 1, scope: !2850, file: !577, line: 118, type: !14)
!2855 = !DILocalVariable(name: "n", arg: 2, scope: !2850, file: !577, line: 118, type: !165)
!2856 = !DILocalVariable(name: "s", arg: 3, scope: !2850, file: !577, line: 118, type: !165)
!2857 = !DILocation(line: 118, column: 18, scope: !2850)
!2858 = !DILocation(line: 118, column: 28, scope: !2850)
!2859 = !DILocation(line: 118, column: 38, scope: !2850)
!2860 = !DILocation(line: 120, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2850, file: !577, line: 120, column: 7)
!2862 = !DILocation(line: 120, column: 7, scope: !2850)
!2863 = !DILocation(line: 121, column: 5, scope: !2861)
!2864 = !DILocation(line: 122, column: 25, scope: !2850)
!2865 = !DILocalVariable(name: "p", arg: 1, scope: !2866, file: !2827, line: 51, type: !14)
!2866 = distinct !DISubprogram(name: "xrealloc", scope: !2827, file: !2827, line: 51, type: !2867, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!14, !14, !165}
!2869 = !{!2865, !2870}
!2870 = !DILocalVariable(name: "n", arg: 2, scope: !2866, file: !2827, line: 51, type: !165)
!2871 = !DILocation(line: 51, column: 17, scope: !2866, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 122, column: 10, scope: !2850)
!2873 = !DILocation(line: 51, column: 27, scope: !2866, inlinedAt: !2872)
!2874 = !DILocation(line: 53, column: 8, scope: !2875, inlinedAt: !2872)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !2827, line: 53, column: 7)
!2876 = !DILocation(line: 53, column: 13, scope: !2875, inlinedAt: !2872)
!2877 = !DILocation(line: 53, column: 10, scope: !2875, inlinedAt: !2872)
!2878 = !DILocation(line: 57, column: 7, scope: !2879, inlinedAt: !2872)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !2827, line: 54, column: 5)
!2880 = !DILocation(line: 58, column: 7, scope: !2879, inlinedAt: !2872)
!2881 = !DILocation(line: 61, column: 7, scope: !2866, inlinedAt: !2872)
!2882 = !DILocation(line: 62, column: 8, scope: !2883, inlinedAt: !2872)
!2883 = distinct !DILexicalBlock(scope: !2866, file: !2827, line: 62, column: 7)
!2884 = !DILocation(line: 62, column: 13, scope: !2883, inlinedAt: !2872)
!2885 = !DILocation(line: 62, column: 10, scope: !2883, inlinedAt: !2872)
!2886 = !DILocation(line: 63, column: 5, scope: !2883, inlinedAt: !2872)
!2887 = !DILocation(line: 122, column: 3, scope: !2850)
!2888 = !DILocation(line: 51, column: 17, scope: !2866)
!2889 = !DILocation(line: 51, column: 27, scope: !2866)
!2890 = !DILocation(line: 53, column: 8, scope: !2875)
!2891 = !DILocation(line: 53, column: 13, scope: !2875)
!2892 = !DILocation(line: 53, column: 10, scope: !2875)
!2893 = !DILocation(line: 57, column: 7, scope: !2879)
!2894 = !DILocation(line: 58, column: 7, scope: !2879)
!2895 = !DILocation(line: 61, column: 7, scope: !2866)
!2896 = !DILocation(line: 62, column: 8, scope: !2883)
!2897 = !DILocation(line: 62, column: 13, scope: !2883)
!2898 = !DILocation(line: 62, column: 10, scope: !2883)
!2899 = !DILocation(line: 63, column: 5, scope: !2883)
!2900 = !DILocation(line: 65, column: 1, scope: !2866)
!2901 = !DILocation(line: 180, column: 19, scope: !578)
!2902 = !DILocation(line: 180, column: 30, scope: !578)
!2903 = !DILocation(line: 180, column: 41, scope: !578)
!2904 = !DILocation(line: 182, column: 14, scope: !578)
!2905 = !DILocation(line: 182, column: 10, scope: !578)
!2906 = !DILocation(line: 184, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !578, file: !577, line: 184, column: 7)
!2908 = !DILocation(line: 184, column: 7, scope: !578)
!2909 = !DILocation(line: 186, column: 13, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !577, line: 186, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !577, line: 185, column: 5)
!2912 = !DILocation(line: 186, column: 11, scope: !2911)
!2913 = !DILocation(line: 194, column: 30, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !577, line: 187, column: 9)
!2915 = !DILocation(line: 195, column: 16, scope: !2914)
!2916 = !DILocation(line: 195, column: 13, scope: !2914)
!2917 = !DILocation(line: 196, column: 9, scope: !2914)
!2918 = !DILocation(line: 204, column: 69, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !577, line: 204, column: 11)
!2920 = distinct !DILexicalBlock(scope: !2907, file: !577, line: 199, column: 5)
!2921 = !DILocation(line: 205, column: 11, scope: !2919)
!2922 = !DILocation(line: 204, column: 11, scope: !2920)
!2923 = !DILocation(line: 206, column: 9, scope: !2919)
!2924 = !DILocation(line: 210, column: 7, scope: !578)
!2925 = !DILocation(line: 211, column: 25, scope: !578)
!2926 = !DILocation(line: 51, column: 17, scope: !2866, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 211, column: 10, scope: !578)
!2928 = !DILocation(line: 51, column: 27, scope: !2866, inlinedAt: !2927)
!2929 = !DILocation(line: 53, column: 10, scope: !2875, inlinedAt: !2927)
!2930 = !DILocation(line: 207, column: 14, scope: !2920)
!2931 = !DILocation(line: 207, column: 18, scope: !2920)
!2932 = !DILocation(line: 207, column: 9, scope: !2920)
!2933 = !DILocation(line: 53, column: 8, scope: !2875, inlinedAt: !2927)
!2934 = !DILocation(line: 57, column: 7, scope: !2879, inlinedAt: !2927)
!2935 = !DILocation(line: 58, column: 7, scope: !2879, inlinedAt: !2927)
!2936 = !DILocation(line: 61, column: 7, scope: !2866, inlinedAt: !2927)
!2937 = !DILocation(line: 62, column: 8, scope: !2883, inlinedAt: !2927)
!2938 = !DILocation(line: 62, column: 13, scope: !2883, inlinedAt: !2927)
!2939 = !DILocation(line: 62, column: 10, scope: !2883, inlinedAt: !2927)
!2940 = !DILocation(line: 63, column: 5, scope: !2883, inlinedAt: !2927)
!2941 = !DILocation(line: 211, column: 3, scope: !578)
!2942 = distinct !DISubprogram(name: "xcharalloc", scope: !577, file: !577, line: 220, type: !1895, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2942, file: !577, line: 220, type: !165)
!2945 = !DILocation(line: 220, column: 20, scope: !2942)
!2946 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 222, column: 10, scope: !2942)
!2948 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !2947)
!2949 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !2947)
!2950 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !2947)
!2951 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !2947)
!2952 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !2947)
!2953 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !2947)
!2954 = !DILocation(line: 222, column: 3, scope: !2942)
!2955 = distinct !DISubprogram(name: "x2realloc", scope: !2827, file: !2827, line: 74, type: !2956, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!14, !14, !581}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !2827, line: 74, type: !14)
!2960 = !DILocalVariable(name: "pn", arg: 2, scope: !2955, file: !2827, line: 74, type: !581)
!2961 = !DILocation(line: 74, column: 18, scope: !2955)
!2962 = !DILocation(line: 74, column: 29, scope: !2955)
!2963 = !DILocation(line: 180, column: 19, scope: !578, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 76, column: 10, scope: !2955)
!2965 = !DILocation(line: 180, column: 30, scope: !578, inlinedAt: !2964)
!2966 = !DILocation(line: 180, column: 41, scope: !578, inlinedAt: !2964)
!2967 = !DILocation(line: 182, column: 14, scope: !578, inlinedAt: !2964)
!2968 = !DILocation(line: 182, column: 10, scope: !578, inlinedAt: !2964)
!2969 = !DILocation(line: 184, column: 9, scope: !2907, inlinedAt: !2964)
!2970 = !DILocation(line: 184, column: 7, scope: !578, inlinedAt: !2964)
!2971 = !DILocation(line: 186, column: 13, scope: !2910, inlinedAt: !2964)
!2972 = !DILocation(line: 186, column: 11, scope: !2911, inlinedAt: !2964)
!2973 = !DILocation(line: 210, column: 7, scope: !578, inlinedAt: !2964)
!2974 = !DILocation(line: 51, column: 17, scope: !2866, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 211, column: 10, scope: !578, inlinedAt: !2964)
!2976 = !DILocation(line: 51, column: 27, scope: !2866, inlinedAt: !2975)
!2977 = !DILocation(line: 53, column: 10, scope: !2875, inlinedAt: !2975)
!2978 = !DILocation(line: 205, column: 11, scope: !2919, inlinedAt: !2964)
!2979 = !DILocation(line: 204, column: 11, scope: !2920, inlinedAt: !2964)
!2980 = !DILocation(line: 206, column: 9, scope: !2919, inlinedAt: !2964)
!2981 = !DILocation(line: 207, column: 14, scope: !2920, inlinedAt: !2964)
!2982 = !DILocation(line: 207, column: 18, scope: !2920, inlinedAt: !2964)
!2983 = !DILocation(line: 207, column: 9, scope: !2920, inlinedAt: !2964)
!2984 = !DILocation(line: 53, column: 8, scope: !2875, inlinedAt: !2975)
!2985 = !DILocation(line: 57, column: 7, scope: !2879, inlinedAt: !2975)
!2986 = !DILocation(line: 58, column: 7, scope: !2879, inlinedAt: !2975)
!2987 = !DILocation(line: 61, column: 7, scope: !2866, inlinedAt: !2975)
!2988 = !DILocation(line: 62, column: 8, scope: !2883, inlinedAt: !2975)
!2989 = !DILocation(line: 62, column: 13, scope: !2883, inlinedAt: !2975)
!2990 = !DILocation(line: 62, column: 10, scope: !2883, inlinedAt: !2975)
!2991 = !DILocation(line: 63, column: 5, scope: !2883, inlinedAt: !2975)
!2992 = !DILocation(line: 76, column: 3, scope: !2955)
!2993 = distinct !DISubprogram(name: "xzalloc", scope: !2827, file: !2827, line: 84, type: !2828, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !2994)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "s", arg: 1, scope: !2993, file: !2827, line: 84, type: !165)
!2996 = !DILocation(line: 84, column: 17, scope: !2993)
!2997 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 86, column: 18, scope: !2993)
!2999 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !2998)
!3000 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !2998)
!3001 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !2998)
!3002 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !2998)
!3003 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !2998)
!3004 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !2998)
!3005 = !DILocation(line: 86, column: 10, scope: !2993)
!3006 = !DILocation(line: 86, column: 3, scope: !2993)
!3007 = distinct !DISubprogram(name: "xcalloc", scope: !2827, file: !2827, line: 93, type: !2813, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "n", arg: 1, scope: !3007, file: !2827, line: 93, type: !165)
!3010 = !DILocalVariable(name: "s", arg: 2, scope: !3007, file: !2827, line: 93, type: !165)
!3011 = !DILocalVariable(name: "p", scope: !3007, file: !2827, line: 95, type: !14)
!3012 = !DILocation(line: 93, column: 17, scope: !3007)
!3013 = !DILocation(line: 93, column: 27, scope: !3007)
!3014 = !DILocation(line: 100, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3007, file: !2827, line: 100, column: 7)
!3016 = !DILocation(line: 101, column: 7, scope: !3015)
!3017 = !DILocation(line: 101, column: 18, scope: !3015)
!3018 = !DILocation(line: 95, column: 9, scope: !3007)
!3019 = !DILocation(line: 101, column: 16, scope: !3015)
!3020 = !DILocation(line: 100, column: 7, scope: !3007)
!3021 = !DILocation(line: 102, column: 5, scope: !3015)
!3022 = !DILocation(line: 103, column: 3, scope: !3007)
!3023 = distinct !DISubprogram(name: "xmemdup", scope: !2827, file: !2827, line: 111, type: !3024, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3028)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!14, !3026, !165}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "p", arg: 1, scope: !3023, file: !2827, line: 111, type: !3026)
!3030 = !DILocalVariable(name: "s", arg: 2, scope: !3023, file: !2827, line: 111, type: !165)
!3031 = !DILocation(line: 111, column: 22, scope: !3023)
!3032 = !DILocation(line: 111, column: 32, scope: !3023)
!3033 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 113, column: 18, scope: !3023)
!3035 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !3034)
!3036 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !3034)
!3037 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !3034)
!3038 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !3034)
!3039 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !3034)
!3040 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !3034)
!3041 = !DILocation(line: 113, column: 10, scope: !3023)
!3042 = !DILocation(line: 113, column: 3, scope: !3023)
!3043 = distinct !DISubprogram(name: "xstrdup", scope: !2827, file: !2827, line: 119, type: !2096, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3044)
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "string", arg: 1, scope: !3043, file: !2827, line: 119, type: !6)
!3046 = !DILocation(line: 119, column: 22, scope: !3043)
!3047 = !DILocation(line: 121, column: 27, scope: !3043)
!3048 = !DILocation(line: 121, column: 43, scope: !3043)
!3049 = !DILocation(line: 111, column: 22, scope: !3023, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 121, column: 10, scope: !3043)
!3051 = !DILocation(line: 111, column: 32, scope: !3023, inlinedAt: !3050)
!3052 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 113, column: 18, scope: !3023, inlinedAt: !3050)
!3054 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !3053)
!3055 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !3053)
!3056 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !3053)
!3057 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !3053)
!3058 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !3053)
!3059 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !3053)
!3060 = !DILocation(line: 113, column: 10, scope: !3023, inlinedAt: !3050)
!3061 = !DILocation(line: 121, column: 3, scope: !3043)
!3062 = distinct !DISubprogram(name: "xalloc_die", scope: !3063, file: !3063, line: 32, type: !884, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !590, variables: !11)
!3063 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3064 = !DILocation(line: 34, column: 10, scope: !3062)
!3065 = !DILocation(line: 34, column: 33, scope: !3062)
!3066 = !DILocation(line: 34, column: 3, scope: !3062)
!3067 = !DILocation(line: 40, column: 3, scope: !3062)
!3068 = distinct !DISubprogram(name: "rpl_calloc", scope: !3069, file: !3069, line: 42, type: !2813, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3070)
!3069 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3070 = !{!3071, !3072, !3073, !3074}
!3071 = !DILocalVariable(name: "n", arg: 1, scope: !3068, file: !3069, line: 42, type: !165)
!3072 = !DILocalVariable(name: "s", arg: 2, scope: !3068, file: !3069, line: 42, type: !165)
!3073 = !DILocalVariable(name: "result", scope: !3068, file: !3069, line: 44, type: !14)
!3074 = !DILocalVariable(name: "bytes", scope: !3075, file: !3069, line: 56, type: !165)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3069, line: 53, column: 5)
!3076 = distinct !DILexicalBlock(scope: !3068, file: !3069, line: 47, column: 7)
!3077 = !DILocation(line: 42, column: 20, scope: !3068)
!3078 = !DILocation(line: 42, column: 30, scope: !3068)
!3079 = !DILocation(line: 47, column: 9, scope: !3076)
!3080 = !DILocation(line: 47, column: 19, scope: !3076)
!3081 = !DILocation(line: 47, column: 14, scope: !3076)
!3082 = !DILocation(line: 56, column: 24, scope: !3075)
!3083 = !DILocation(line: 56, column: 14, scope: !3075)
!3084 = !DILocation(line: 57, column: 17, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3075, file: !3069, line: 57, column: 11)
!3086 = !DILocation(line: 57, column: 21, scope: !3085)
!3087 = !DILocation(line: 57, column: 11, scope: !3075)
!3088 = !DILocation(line: 59, column: 11, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !3069, line: 58, column: 9)
!3090 = !DILocation(line: 59, column: 17, scope: !3089)
!3091 = !DILocation(line: 65, column: 12, scope: !3068)
!3092 = !DILocation(line: 44, column: 9, scope: !3068)
!3093 = !DILocation(line: 72, column: 3, scope: !3068)
!3094 = !DILocation(line: 73, column: 1, scope: !3068)
!3095 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3096, file: !3096, line: 334, type: !3097, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3111)
!3096 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!165, !3099, !6, !165, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1147, line: 6, baseType: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1149, line: 21, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1149, line: 13, size: 64, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3103, file: !1149, line: 15, baseType: !22, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3103, file: !1149, line: 20, baseType: !3107, size: 32, offset: 32)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !1149, line: 16, size: 32, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3107, file: !1149, line: 18, baseType: !28, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3107, file: !1149, line: 19, baseType: !1158, size: 32)
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3112 = !DILocalVariable(name: "pwc", arg: 1, scope: !3095, file: !3096, line: 334, type: !3099)
!3113 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !3096, line: 334, type: !6)
!3114 = !DILocalVariable(name: "n", arg: 3, scope: !3095, file: !3096, line: 334, type: !165)
!3115 = !DILocalVariable(name: "ps", arg: 4, scope: !3095, file: !3096, line: 334, type: !3100)
!3116 = !DILocalVariable(name: "ret", scope: !3095, file: !3096, line: 336, type: !165)
!3117 = !DILocalVariable(name: "wc", scope: !3095, file: !3096, line: 337, type: !1163)
!3118 = !DILocalVariable(name: "uc", scope: !3119, file: !3096, line: 398, type: !15)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3096, line: 397, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3095, file: !3096, line: 396, column: 7)
!3121 = !DILocation(line: 334, column: 23, scope: !3095)
!3122 = !DILocation(line: 334, column: 40, scope: !3095)
!3123 = !DILocation(line: 334, column: 50, scope: !3095)
!3124 = !DILocation(line: 334, column: 64, scope: !3095)
!3125 = !DILocation(line: 337, column: 3, scope: !3095)
!3126 = !DILocation(line: 353, column: 9, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3095, file: !3096, line: 353, column: 7)
!3128 = !DILocation(line: 353, column: 7, scope: !3095)
!3129 = !DILocation(line: 388, column: 9, scope: !3095)
!3130 = !DILocation(line: 336, column: 10, scope: !3095)
!3131 = !DILocation(line: 396, column: 19, scope: !3120)
!3132 = !DILocation(line: 396, column: 31, scope: !3120)
!3133 = !DILocation(line: 396, column: 26, scope: !3120)
!3134 = !DILocation(line: 396, column: 41, scope: !3120)
!3135 = !DILocation(line: 396, column: 7, scope: !3095)
!3136 = !DILocation(line: 398, column: 26, scope: !3119)
!3137 = !DILocation(line: 398, column: 21, scope: !3119)
!3138 = !DILocation(line: 399, column: 14, scope: !3119)
!3139 = !DILocation(line: 399, column: 12, scope: !3119)
!3140 = !DILocation(line: 405, column: 1, scope: !3095)
!3141 = distinct !DISubprogram(name: "close_stream", scope: !3142, file: !3142, line: 56, type: !3143, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3185)
!3142 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!22, !3145}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2622, line: 7, baseType: !3147)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2624, line: 241, size: 1728, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3147, file: !2624, line: 242, baseType: !22, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3147, file: !2624, line: 247, baseType: !13, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3147, file: !2624, line: 248, baseType: !13, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3147, file: !2624, line: 249, baseType: !13, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3147, file: !2624, line: 250, baseType: !13, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3147, file: !2624, line: 251, baseType: !13, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3147, file: !2624, line: 252, baseType: !13, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3147, file: !2624, line: 253, baseType: !13, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3147, file: !2624, line: 254, baseType: !13, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3147, file: !2624, line: 256, baseType: !13, size: 64, offset: 576)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3147, file: !2624, line: 257, baseType: !13, size: 64, offset: 640)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3147, file: !2624, line: 258, baseType: !13, size: 64, offset: 704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3147, file: !2624, line: 260, baseType: !3162, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2624, line: 156, size: 192, elements: !3164)
!3164 = !{!3165, !3166, !3168}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3163, file: !2624, line: 157, baseType: !3162, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3163, file: !2624, line: 158, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3163, file: !2624, line: 162, baseType: !22, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3147, file: !2624, line: 262, baseType: !3167, size: 64, offset: 832)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3147, file: !2624, line: 264, baseType: !22, size: 32, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3147, file: !2624, line: 268, baseType: !22, size: 32, offset: 928)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3147, file: !2624, line: 270, baseType: !2650, size: 64, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3147, file: !2624, line: 274, baseType: !164, size: 16, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3147, file: !2624, line: 275, baseType: !2655, size: 8, offset: 1040)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3147, file: !2624, line: 276, baseType: !2657, size: 8, offset: 1048)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3147, file: !2624, line: 280, baseType: !2661, size: 64, offset: 1088)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3147, file: !2624, line: 289, baseType: !2664, size: 64, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3147, file: !2624, line: 297, baseType: !14, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3147, file: !2624, line: 298, baseType: !14, size: 64, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3147, file: !2624, line: 299, baseType: !14, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3147, file: !2624, line: 300, baseType: !14, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3147, file: !2624, line: 302, baseType: !165, size: 64, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3147, file: !2624, line: 303, baseType: !22, size: 32, offset: 1536)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3147, file: !2624, line: 305, baseType: !2672, size: 160, offset: 1568)
!3185 = !{!3186, !3187, !3189, !3190}
!3186 = !DILocalVariable(name: "stream", arg: 1, scope: !3141, file: !3142, line: 56, type: !3145)
!3187 = !DILocalVariable(name: "some_pending", scope: !3141, file: !3142, line: 58, type: !3188)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3189 = !DILocalVariable(name: "prev_fail", scope: !3141, file: !3142, line: 59, type: !3188)
!3190 = !DILocalVariable(name: "fclose_fail", scope: !3141, file: !3142, line: 60, type: !3188)
!3191 = !DILocation(line: 56, column: 21, scope: !3141)
!3192 = !DILocation(line: 58, column: 30, scope: !3141)
!3193 = !DILocalVariable(name: "__stream", arg: 1, scope: !3194, file: !762, line: 132, type: !3145)
!3194 = distinct !DISubprogram(name: "ferror_unlocked", scope: !762, file: !762, line: 132, type: !3143, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3195)
!3195 = !{!3193}
!3196 = !DILocation(line: 132, column: 1, scope: !3194, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 59, column: 27, scope: !3141)
!3198 = !DILocation(line: 134, column: 10, scope: !3194, inlinedAt: !3197)
!3199 = !{!771, !634, i64 0}
!3200 = !DILocation(line: 59, column: 43, scope: !3141)
!3201 = !DILocation(line: 60, column: 29, scope: !3141)
!3202 = !DILocation(line: 60, column: 45, scope: !3141)
!3203 = !DILocation(line: 70, column: 17, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3141, file: !3142, line: 70, column: 7)
!3205 = !DILocation(line: 58, column: 50, scope: !3141)
!3206 = !DILocation(line: 70, column: 33, scope: !3204)
!3207 = !DILocation(line: 70, column: 53, scope: !3204)
!3208 = !DILocation(line: 70, column: 59, scope: !3204)
!3209 = !DILocation(line: 70, column: 7, scope: !3141)
!3210 = !DILocation(line: 72, column: 11, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3204, file: !3142, line: 71, column: 5)
!3212 = !DILocation(line: 73, column: 9, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3211, file: !3142, line: 72, column: 11)
!3214 = !DILocation(line: 73, column: 15, scope: !3213)
!3215 = !DILocation(line: 78, column: 1, scope: !3141)
!3216 = distinct !DISubprogram(name: "hard_locale", scope: !3217, file: !3217, line: 38, type: !3218, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3220)
!3217 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!77, !22}
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "category", arg: 1, scope: !3216, file: !3217, line: 38, type: !22)
!3222 = !DILocalVariable(name: "hard", scope: !3216, file: !3217, line: 40, type: !77)
!3223 = !DILocalVariable(name: "p", scope: !3216, file: !3217, line: 41, type: !6)
!3224 = !DILocation(line: 38, column: 18, scope: !3216)
!3225 = !DILocation(line: 40, column: 8, scope: !3216)
!3226 = !DILocation(line: 41, column: 19, scope: !3216)
!3227 = !DILocation(line: 41, column: 15, scope: !3216)
!3228 = !DILocation(line: 43, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3216, file: !3217, line: 43, column: 7)
!3230 = !DILocation(line: 43, column: 7, scope: !3216)
!3231 = !DILocation(line: 47, column: 15, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3217, line: 47, column: 15)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3217, line: 46, column: 9)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !3217, line: 45, column: 11)
!3235 = distinct !DILexicalBlock(scope: !3229, file: !3217, line: 44, column: 5)
!3236 = !DILocation(line: 47, column: 31, scope: !3232)
!3237 = !DILocation(line: 47, column: 36, scope: !3232)
!3238 = !DILocation(line: 47, column: 39, scope: !3232)
!3239 = !DILocation(line: 47, column: 59, scope: !3232)
!3240 = !DILocation(line: 47, column: 15, scope: !3233)
!3241 = !DILocation(line: 48, column: 13, scope: !3232)
!3242 = !DILocation(line: 71, column: 3, scope: !3216)
!3243 = distinct !DISubprogram(name: "locale_charset", scope: !563, file: !563, line: 393, type: !3244, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!6}
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "codeset", scope: !3243, file: !563, line: 395, type: !6)
!3248 = !DILocalVariable(name: "aliases", scope: !3243, file: !563, line: 396, type: !6)
!3249 = !DILocalVariable(name: "buf1", scope: !3250, file: !563, line: 196, type: !3317)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !563, line: 194, column: 21)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !563, line: 193, column: 19)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !563, line: 193, column: 19)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !563, line: 188, column: 17)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !563, line: 181, column: 19)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !563, line: 177, column: 13)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !563, line: 173, column: 15)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !563, line: 161, column: 9)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !563, line: 157, column: 11)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !563, line: 130, column: 5)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !563, line: 129, column: 7)
!3261 = distinct !DISubprogram(name: "get_charset_aliases", scope: !563, file: !563, line: 124, type: !3244, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3269, !3270, !3271, !3272, !3313, !3314, !3315, !3249, !3316, !3320, !3321, !3322}
!3263 = !DILocalVariable(name: "cp", scope: !3261, file: !563, line: 126, type: !6)
!3264 = !DILocalVariable(name: "dir", scope: !3259, file: !563, line: 132, type: !6)
!3265 = !DILocalVariable(name: "base", scope: !3259, file: !563, line: 133, type: !6)
!3266 = !DILocalVariable(name: "file_name", scope: !3259, file: !563, line: 134, type: !13)
!3267 = !DILocalVariable(name: "dir_len", scope: !3268, file: !563, line: 144, type: !165)
!3268 = distinct !DILexicalBlock(scope: !3259, file: !563, line: 143, column: 7)
!3269 = !DILocalVariable(name: "base_len", scope: !3268, file: !563, line: 145, type: !165)
!3270 = !DILocalVariable(name: "add_slash", scope: !3268, file: !563, line: 146, type: !22)
!3271 = !DILocalVariable(name: "fd", scope: !3257, file: !563, line: 162, type: !22)
!3272 = !DILocalVariable(name: "fp", scope: !3255, file: !563, line: 178, type: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2622, line: 7, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2624, line: 241, size: 1728, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3275, file: !2624, line: 242, baseType: !22, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3275, file: !2624, line: 247, baseType: !13, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3275, file: !2624, line: 248, baseType: !13, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3275, file: !2624, line: 249, baseType: !13, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3275, file: !2624, line: 250, baseType: !13, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3275, file: !2624, line: 251, baseType: !13, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3275, file: !2624, line: 252, baseType: !13, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3275, file: !2624, line: 253, baseType: !13, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3275, file: !2624, line: 254, baseType: !13, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3275, file: !2624, line: 256, baseType: !13, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3275, file: !2624, line: 257, baseType: !13, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3275, file: !2624, line: 258, baseType: !13, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3275, file: !2624, line: 260, baseType: !3290, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2624, line: 156, size: 192, elements: !3292)
!3292 = !{!3293, !3294, !3296}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3291, file: !2624, line: 157, baseType: !3290, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3291, file: !2624, line: 158, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3291, file: !2624, line: 162, baseType: !22, size: 32, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3275, file: !2624, line: 262, baseType: !3295, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3275, file: !2624, line: 264, baseType: !22, size: 32, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3275, file: !2624, line: 268, baseType: !22, size: 32, offset: 928)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3275, file: !2624, line: 270, baseType: !2650, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3275, file: !2624, line: 274, baseType: !164, size: 16, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3275, file: !2624, line: 275, baseType: !2655, size: 8, offset: 1040)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3275, file: !2624, line: 276, baseType: !2657, size: 8, offset: 1048)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3275, file: !2624, line: 280, baseType: !2661, size: 64, offset: 1088)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3275, file: !2624, line: 289, baseType: !2664, size: 64, offset: 1152)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3275, file: !2624, line: 297, baseType: !14, size: 64, offset: 1216)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3275, file: !2624, line: 298, baseType: !14, size: 64, offset: 1280)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3275, file: !2624, line: 299, baseType: !14, size: 64, offset: 1344)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3275, file: !2624, line: 300, baseType: !14, size: 64, offset: 1408)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3275, file: !2624, line: 302, baseType: !165, size: 64, offset: 1472)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3275, file: !2624, line: 303, baseType: !22, size: 32, offset: 1536)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3275, file: !2624, line: 305, baseType: !2672, size: 160, offset: 1568)
!3313 = !DILocalVariable(name: "res_ptr", scope: !3253, file: !563, line: 190, type: !13)
!3314 = !DILocalVariable(name: "res_size", scope: !3253, file: !563, line: 191, type: !165)
!3315 = !DILocalVariable(name: "c", scope: !3250, file: !563, line: 195, type: !22)
!3316 = !DILocalVariable(name: "buf2", scope: !3250, file: !563, line: 197, type: !3317)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3318)
!3318 = !{!3319}
!3319 = !DISubrange(count: 51)
!3320 = !DILocalVariable(name: "l1", scope: !3250, file: !563, line: 198, type: !165)
!3321 = !DILocalVariable(name: "l2", scope: !3250, file: !563, line: 198, type: !165)
!3322 = !DILocalVariable(name: "old_res_ptr", scope: !3250, file: !563, line: 199, type: !13)
!3323 = !DILocation(line: 196, column: 28, scope: !3250, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 589, column: 18, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3243, file: !563, line: 589, column: 3)
!3326 = !DILocation(line: 197, column: 28, scope: !3250, inlinedAt: !3324)
!3327 = !DILocation(line: 403, column: 13, scope: !3243)
!3328 = !DILocation(line: 395, column: 15, scope: !3243)
!3329 = !DILocation(line: 584, column: 15, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3243, file: !563, line: 584, column: 7)
!3331 = !DILocation(line: 584, column: 7, scope: !3243)
!3332 = !DILocation(line: 128, column: 8, scope: !3261, inlinedAt: !3324)
!3333 = !DILocation(line: 126, column: 15, scope: !3261, inlinedAt: !3324)
!3334 = !DILocation(line: 129, column: 10, scope: !3260, inlinedAt: !3324)
!3335 = !DILocation(line: 129, column: 7, scope: !3261, inlinedAt: !3324)
!3336 = !DILocation(line: 138, column: 13, scope: !3259, inlinedAt: !3324)
!3337 = !DILocation(line: 132, column: 19, scope: !3259, inlinedAt: !3324)
!3338 = !DILocation(line: 139, column: 15, scope: !3339, inlinedAt: !3324)
!3339 = distinct !DILexicalBlock(scope: !3259, file: !563, line: 139, column: 11)
!3340 = !DILocation(line: 139, column: 23, scope: !3339, inlinedAt: !3324)
!3341 = !DILocation(line: 139, column: 26, scope: !3339, inlinedAt: !3324)
!3342 = !DILocation(line: 139, column: 33, scope: !3339, inlinedAt: !3324)
!3343 = !DILocation(line: 139, column: 11, scope: !3259, inlinedAt: !3324)
!3344 = !DILocation(line: 140, column: 9, scope: !3339, inlinedAt: !3324)
!3345 = !DILocation(line: 144, column: 26, scope: !3268, inlinedAt: !3324)
!3346 = !DILocation(line: 144, column: 16, scope: !3268, inlinedAt: !3324)
!3347 = !DILocation(line: 145, column: 16, scope: !3268, inlinedAt: !3324)
!3348 = !DILocation(line: 146, column: 34, scope: !3268, inlinedAt: !3324)
!3349 = !DILocation(line: 146, column: 38, scope: !3268, inlinedAt: !3324)
!3350 = !DILocation(line: 146, column: 42, scope: !3268, inlinedAt: !3324)
!3351 = !DILocation(line: 147, column: 48, scope: !3268, inlinedAt: !3324)
!3352 = !DILocation(line: 147, column: 46, scope: !3268, inlinedAt: !3324)
!3353 = !DILocation(line: 147, column: 69, scope: !3268, inlinedAt: !3324)
!3354 = !DILocation(line: 147, column: 30, scope: !3268, inlinedAt: !3324)
!3355 = !DILocation(line: 134, column: 13, scope: !3259, inlinedAt: !3324)
!3356 = !DILocation(line: 148, column: 13, scope: !3268, inlinedAt: !3324)
!3357 = !DILocation(line: 150, column: 13, scope: !3358, inlinedAt: !3324)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !563, line: 149, column: 11)
!3359 = distinct !DILexicalBlock(scope: !3268, file: !563, line: 148, column: 13)
!3360 = !DILocation(line: 151, column: 17, scope: !3358, inlinedAt: !3324)
!3361 = !DILocation(line: 152, column: 34, scope: !3362, inlinedAt: !3324)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !563, line: 151, column: 17)
!3363 = !DILocation(line: 153, column: 41, scope: !3358, inlinedAt: !3324)
!3364 = !DILocation(line: 153, column: 13, scope: !3358, inlinedAt: !3324)
!3365 = !DILocation(line: 157, column: 11, scope: !3259, inlinedAt: !3324)
!3366 = !DILocation(line: 171, column: 16, scope: !3257, inlinedAt: !3324)
!3367 = !DILocation(line: 162, column: 15, scope: !3257, inlinedAt: !3324)
!3368 = !DILocation(line: 173, column: 18, scope: !3256, inlinedAt: !3324)
!3369 = !DILocation(line: 173, column: 15, scope: !3257, inlinedAt: !3324)
!3370 = !DILocation(line: 180, column: 20, scope: !3255, inlinedAt: !3324)
!3371 = !DILocation(line: 178, column: 21, scope: !3255, inlinedAt: !3324)
!3372 = !DILocation(line: 181, column: 22, scope: !3254, inlinedAt: !3324)
!3373 = !DILocation(line: 181, column: 19, scope: !3255, inlinedAt: !3324)
!3374 = !DILocation(line: 184, column: 19, scope: !3375, inlinedAt: !3324)
!3375 = distinct !DILexicalBlock(scope: !3254, file: !563, line: 182, column: 17)
!3376 = !DILocation(line: 186, column: 17, scope: !3375, inlinedAt: !3324)
!3377 = !DILocation(line: 190, column: 25, scope: !3253, inlinedAt: !3324)
!3378 = !DILocation(line: 191, column: 26, scope: !3253, inlinedAt: !3324)
!3379 = !DILocation(line: 193, column: 19, scope: !3253, inlinedAt: !3324)
!3380 = !DILocation(line: 196, column: 23, scope: !3250, inlinedAt: !3324)
!3381 = !DILocation(line: 197, column: 23, scope: !3250, inlinedAt: !3324)
!3382 = !DILocalVariable(name: "__fp", arg: 1, scope: !3383, file: !762, line: 63, type: !3273)
!3383 = distinct !DISubprogram(name: "getc_unlocked", scope: !762, file: !762, line: 63, type: !3384, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!22, !3273}
!3386 = !{!3382}
!3387 = !DILocation(line: 63, column: 22, scope: !3383, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 201, column: 27, scope: !3250, inlinedAt: !3324)
!3389 = !DILocation(line: 65, column: 10, scope: !3383, inlinedAt: !3388)
!3390 = !{!771, !626, i64 8}
!3391 = !{!771, !626, i64 16}
!3392 = !DILocation(line: 195, column: 27, scope: !3250, inlinedAt: !3324)
!3393 = !DILocation(line: 202, column: 27, scope: !3250, inlinedAt: !3324)
!3394 = distinct !{!3394, !3395, !3398}
!3395 = !DILocation(line: 209, column: 27, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !563, line: 207, column: 25)
!3397 = distinct !DILexicalBlock(scope: !3250, file: !563, line: 206, column: 27)
!3398 = !DILocation(line: 211, column: 58, scope: !3396)
!3399 = !DILocation(line: 65, column: 10, scope: !3383, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 210, column: 33, scope: !3396, inlinedAt: !3324)
!3401 = !DILocation(line: 63, column: 22, scope: !3383, inlinedAt: !3400)
!3402 = !DILocation(line: 210, column: 29, scope: !3396, inlinedAt: !3324)
!3403 = distinct !{!3403, !3404, !3405}
!3404 = !DILocation(line: 193, column: 19, scope: !3252)
!3405 = !DILocation(line: 241, column: 21, scope: !3252)
!3406 = !DILocation(line: 216, column: 23, scope: !3250, inlinedAt: !3324)
!3407 = !DILocation(line: 217, column: 27, scope: !3408, inlinedAt: !3324)
!3408 = distinct !DILexicalBlock(scope: !3250, file: !563, line: 217, column: 27)
!3409 = !DILocation(line: 217, column: 64, scope: !3408, inlinedAt: !3324)
!3410 = !DILocation(line: 217, column: 27, scope: !3250, inlinedAt: !3324)
!3411 = !DILocation(line: 219, column: 28, scope: !3250, inlinedAt: !3324)
!3412 = !DILocation(line: 198, column: 30, scope: !3250, inlinedAt: !3324)
!3413 = !DILocation(line: 220, column: 28, scope: !3250, inlinedAt: !3324)
!3414 = !DILocation(line: 198, column: 34, scope: !3250, inlinedAt: !3324)
!3415 = !DILocation(line: 199, column: 29, scope: !3250, inlinedAt: !3324)
!3416 = !DILocation(line: 222, column: 36, scope: !3417, inlinedAt: !3324)
!3417 = distinct !DILexicalBlock(scope: !3250, file: !563, line: 222, column: 27)
!3418 = !DILocation(line: 222, column: 27, scope: !3250, inlinedAt: !3324)
!3419 = !DILocation(line: 225, column: 63, scope: !3420, inlinedAt: !3324)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !563, line: 223, column: 25)
!3421 = !DILocation(line: 225, column: 46, scope: !3420, inlinedAt: !3324)
!3422 = !DILocation(line: 226, column: 25, scope: !3420, inlinedAt: !3324)
!3423 = !DILocation(line: 229, column: 36, scope: !3424, inlinedAt: !3324)
!3424 = distinct !DILexicalBlock(scope: !3417, file: !563, line: 228, column: 25)
!3425 = !DILocation(line: 230, column: 73, scope: !3424, inlinedAt: !3324)
!3426 = !DILocation(line: 230, column: 46, scope: !3424, inlinedAt: !3324)
!3427 = !DILocation(line: 232, column: 35, scope: !3428, inlinedAt: !3324)
!3428 = distinct !DILexicalBlock(scope: !3250, file: !563, line: 232, column: 27)
!3429 = !DILocation(line: 232, column: 27, scope: !3250, inlinedAt: !3324)
!3430 = !DILocation(line: 236, column: 27, scope: !3431, inlinedAt: !3324)
!3431 = distinct !DILexicalBlock(scope: !3428, file: !563, line: 233, column: 25)
!3432 = !DILocation(line: 237, column: 27, scope: !3431, inlinedAt: !3324)
!3433 = !DILocation(line: 241, column: 21, scope: !3251, inlinedAt: !3324)
!3434 = !DILocation(line: 239, column: 39, scope: !3250, inlinedAt: !3324)
!3435 = !DILocation(line: 239, column: 50, scope: !3250, inlinedAt: !3324)
!3436 = !DILocation(line: 239, column: 61, scope: !3250, inlinedAt: !3324)
!3437 = !DILocalVariable(name: "__dest", arg: 1, scope: !3438, file: !3439, line: 88, type: !3442)
!3438 = distinct !DISubprogram(name: "strcpy", scope: !3439, file: !3439, line: 88, type: !3440, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3444)
!3439 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!13, !3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!3443 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3444 = !{!3437, !3445}
!3445 = !DILocalVariable(name: "__src", arg: 2, scope: !3438, file: !3439, line: 88, type: !3443)
!3446 = !DILocation(line: 88, column: 1, scope: !3438, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 239, column: 23, scope: !3250, inlinedAt: !3324)
!3448 = !DILocation(line: 90, column: 49, scope: !3438, inlinedAt: !3447)
!3449 = !DILocation(line: 90, column: 10, scope: !3438, inlinedAt: !3447)
!3450 = !DILocation(line: 88, column: 1, scope: !3438, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 240, column: 23, scope: !3250, inlinedAt: !3324)
!3452 = !DILocation(line: 90, column: 49, scope: !3438, inlinedAt: !3451)
!3453 = !DILocation(line: 90, column: 10, scope: !3438, inlinedAt: !3451)
!3454 = !DILocation(line: 193, column: 19, scope: !3251, inlinedAt: !3324)
!3455 = !DILocation(line: 242, column: 19, scope: !3253, inlinedAt: !3324)
!3456 = !DILocation(line: 243, column: 32, scope: !3457, inlinedAt: !3324)
!3457 = distinct !DILexicalBlock(scope: !3253, file: !563, line: 243, column: 23)
!3458 = !DILocation(line: 243, column: 23, scope: !3253, inlinedAt: !3324)
!3459 = !DILocation(line: 247, column: 33, scope: !3460, inlinedAt: !3324)
!3460 = distinct !DILexicalBlock(scope: !3457, file: !563, line: 246, column: 21)
!3461 = !DILocation(line: 247, column: 45, scope: !3460, inlinedAt: !3324)
!3462 = !DILocation(line: 253, column: 11, scope: !3257, inlinedAt: !3324)
!3463 = !DILocation(line: 377, column: 23, scope: !3259, inlinedAt: !3324)
!3464 = !DILocation(line: 378, column: 5, scope: !3259, inlinedAt: !3324)
!3465 = !DILocation(line: 396, column: 15, scope: !3243)
!3466 = !DILocation(line: 590, column: 8, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3325, file: !563, line: 589, column: 3)
!3468 = !DILocation(line: 590, column: 17, scope: !3467)
!3469 = !DILocation(line: 589, column: 3, scope: !3325)
!3470 = !DILocation(line: 592, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !563, line: 592, column: 9)
!3472 = !DILocation(line: 592, column: 35, scope: !3471)
!3473 = !DILocation(line: 593, column: 9, scope: !3471)
!3474 = !DILocation(line: 593, column: 24, scope: !3471)
!3475 = !DILocation(line: 593, column: 31, scope: !3471)
!3476 = !DILocation(line: 593, column: 34, scope: !3471)
!3477 = !DILocation(line: 593, column: 45, scope: !3471)
!3478 = !DILocation(line: 592, column: 9, scope: !3467)
!3479 = !DILocation(line: 595, column: 29, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3471, file: !563, line: 594, column: 7)
!3481 = !DILocation(line: 595, column: 27, scope: !3480)
!3482 = !DILocation(line: 595, column: 46, scope: !3480)
!3483 = !DILocation(line: 596, column: 9, scope: !3480)
!3484 = !DILocation(line: 591, column: 19, scope: !3467)
!3485 = !DILocation(line: 591, column: 36, scope: !3467)
!3486 = !DILocation(line: 591, column: 16, scope: !3467)
!3487 = !DILocation(line: 591, column: 52, scope: !3467)
!3488 = !DILocation(line: 591, column: 69, scope: !3467)
!3489 = !DILocation(line: 591, column: 49, scope: !3467)
!3490 = distinct !{!3490, !3469, !3491}
!3491 = !DILocation(line: 597, column: 7, scope: !3325)
!3492 = !DILocation(line: 602, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3243, file: !563, line: 602, column: 7)
!3494 = !DILocation(line: 602, column: 18, scope: !3493)
!3495 = !DILocation(line: 602, column: 7, scope: !3243)
!3496 = !DILocation(line: 612, column: 3, scope: !3243)
!3497 = distinct !DISubprogram(name: "rpl_fclose", scope: !3498, file: !3498, line: 56, type: !3499, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3541)
!3498 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!22, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2622, line: 7, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2624, line: 241, size: 1728, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3503, file: !2624, line: 242, baseType: !22, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3503, file: !2624, line: 247, baseType: !13, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3503, file: !2624, line: 248, baseType: !13, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3503, file: !2624, line: 249, baseType: !13, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3503, file: !2624, line: 250, baseType: !13, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3503, file: !2624, line: 251, baseType: !13, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3503, file: !2624, line: 252, baseType: !13, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3503, file: !2624, line: 253, baseType: !13, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3503, file: !2624, line: 254, baseType: !13, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3503, file: !2624, line: 256, baseType: !13, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3503, file: !2624, line: 257, baseType: !13, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3503, file: !2624, line: 258, baseType: !13, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3503, file: !2624, line: 260, baseType: !3518, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2624, line: 156, size: 192, elements: !3520)
!3520 = !{!3521, !3522, !3524}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3519, file: !2624, line: 157, baseType: !3518, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3519, file: !2624, line: 158, baseType: !3523, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3519, file: !2624, line: 162, baseType: !22, size: 32, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3503, file: !2624, line: 262, baseType: !3523, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3503, file: !2624, line: 264, baseType: !22, size: 32, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3503, file: !2624, line: 268, baseType: !22, size: 32, offset: 928)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3503, file: !2624, line: 270, baseType: !2650, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3503, file: !2624, line: 274, baseType: !164, size: 16, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3503, file: !2624, line: 275, baseType: !2655, size: 8, offset: 1040)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3503, file: !2624, line: 276, baseType: !2657, size: 8, offset: 1048)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3503, file: !2624, line: 280, baseType: !2661, size: 64, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3503, file: !2624, line: 289, baseType: !2664, size: 64, offset: 1152)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3503, file: !2624, line: 297, baseType: !14, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3503, file: !2624, line: 298, baseType: !14, size: 64, offset: 1280)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3503, file: !2624, line: 299, baseType: !14, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3503, file: !2624, line: 300, baseType: !14, size: 64, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3503, file: !2624, line: 302, baseType: !165, size: 64, offset: 1472)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3503, file: !2624, line: 303, baseType: !22, size: 32, offset: 1536)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3503, file: !2624, line: 305, baseType: !2672, size: 160, offset: 1568)
!3541 = !{!3542, !3543, !3544, !3545}
!3542 = !DILocalVariable(name: "fp", arg: 1, scope: !3497, file: !3498, line: 56, type: !3501)
!3543 = !DILocalVariable(name: "saved_errno", scope: !3497, file: !3498, line: 58, type: !22)
!3544 = !DILocalVariable(name: "fd", scope: !3497, file: !3498, line: 59, type: !22)
!3545 = !DILocalVariable(name: "result", scope: !3497, file: !3498, line: 60, type: !22)
!3546 = !DILocation(line: 56, column: 19, scope: !3497)
!3547 = !DILocation(line: 58, column: 7, scope: !3497)
!3548 = !DILocation(line: 60, column: 7, scope: !3497)
!3549 = !DILocation(line: 63, column: 8, scope: !3497)
!3550 = !DILocation(line: 59, column: 7, scope: !3497)
!3551 = !DILocation(line: 64, column: 10, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 64, column: 7)
!3553 = !DILocation(line: 64, column: 7, scope: !3497)
!3554 = !DILocation(line: 65, column: 12, scope: !3552)
!3555 = !DILocation(line: 65, column: 5, scope: !3552)
!3556 = !DILocation(line: 70, column: 9, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 70, column: 7)
!3558 = !DILocation(line: 70, column: 23, scope: !3557)
!3559 = !DILocation(line: 70, column: 33, scope: !3557)
!3560 = !DILocation(line: 70, column: 26, scope: !3557)
!3561 = !DILocation(line: 70, column: 59, scope: !3557)
!3562 = !DILocation(line: 71, column: 7, scope: !3557)
!3563 = !DILocation(line: 71, column: 10, scope: !3557)
!3564 = !DILocation(line: 70, column: 7, scope: !3497)
!3565 = !DILocation(line: 98, column: 12, scope: !3497)
!3566 = !DILocation(line: 103, column: 7, scope: !3497)
!3567 = !DILocation(line: 72, column: 19, scope: !3557)
!3568 = !DILocation(line: 103, column: 19, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 103, column: 7)
!3570 = !DILocation(line: 105, column: 13, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3569, file: !3498, line: 104, column: 5)
!3572 = !DILocation(line: 107, column: 5, scope: !3571)
!3573 = !DILocation(line: 110, column: 1, scope: !3497)
!3574 = distinct !DISubprogram(name: "rpl_fflush", scope: !3575, file: !3575, line: 127, type: !3576, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !3618)
!3575 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!22, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2622, line: 7, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2624, line: 241, size: 1728, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3580, file: !2624, line: 242, baseType: !22, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3580, file: !2624, line: 247, baseType: !13, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3580, file: !2624, line: 248, baseType: !13, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3580, file: !2624, line: 249, baseType: !13, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3580, file: !2624, line: 250, baseType: !13, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3580, file: !2624, line: 251, baseType: !13, size: 64, offset: 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3580, file: !2624, line: 252, baseType: !13, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3580, file: !2624, line: 253, baseType: !13, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3580, file: !2624, line: 254, baseType: !13, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3580, file: !2624, line: 256, baseType: !13, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3580, file: !2624, line: 257, baseType: !13, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3580, file: !2624, line: 258, baseType: !13, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3580, file: !2624, line: 260, baseType: !3595, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2624, line: 156, size: 192, elements: !3597)
!3597 = !{!3598, !3599, !3601}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3596, file: !2624, line: 157, baseType: !3595, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3596, file: !2624, line: 158, baseType: !3600, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3596, file: !2624, line: 162, baseType: !22, size: 32, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3580, file: !2624, line: 262, baseType: !3600, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3580, file: !2624, line: 264, baseType: !22, size: 32, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3580, file: !2624, line: 268, baseType: !22, size: 32, offset: 928)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3580, file: !2624, line: 270, baseType: !2650, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3580, file: !2624, line: 274, baseType: !164, size: 16, offset: 1024)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3580, file: !2624, line: 275, baseType: !2655, size: 8, offset: 1040)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3580, file: !2624, line: 276, baseType: !2657, size: 8, offset: 1048)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3580, file: !2624, line: 280, baseType: !2661, size: 64, offset: 1088)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3580, file: !2624, line: 289, baseType: !2664, size: 64, offset: 1152)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3580, file: !2624, line: 297, baseType: !14, size: 64, offset: 1216)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3580, file: !2624, line: 298, baseType: !14, size: 64, offset: 1280)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3580, file: !2624, line: 299, baseType: !14, size: 64, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3580, file: !2624, line: 300, baseType: !14, size: 64, offset: 1408)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3580, file: !2624, line: 302, baseType: !165, size: 64, offset: 1472)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3580, file: !2624, line: 303, baseType: !22, size: 32, offset: 1536)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3580, file: !2624, line: 305, baseType: !2672, size: 160, offset: 1568)
!3618 = !{!3619}
!3619 = !DILocalVariable(name: "stream", arg: 1, scope: !3574, file: !3575, line: 127, type: !3578)
!3620 = !DILocation(line: 127, column: 19, scope: !3574)
!3621 = !DILocation(line: 148, column: 14, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3574, file: !3575, line: 148, column: 7)
!3623 = !DILocation(line: 148, column: 22, scope: !3622)
!3624 = !DILocation(line: 148, column: 27, scope: !3622)
!3625 = !DILocation(line: 148, column: 7, scope: !3574)
!3626 = !DILocation(line: 149, column: 12, scope: !3622)
!3627 = !DILocation(line: 149, column: 5, scope: !3622)
!3628 = !DILocalVariable(name: "fp", arg: 1, scope: !3629, file: !3575, line: 40, type: !3578)
!3629 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3575, file: !3575, line: 40, type: !3630, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !3578}
!3632 = !{!3628}
!3633 = !DILocation(line: 40, column: 48, scope: !3629, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 153, column: 3, scope: !3574)
!3635 = !DILocation(line: 42, column: 11, scope: !3636, inlinedAt: !3634)
!3636 = distinct !DILexicalBlock(scope: !3629, file: !3575, line: 42, column: 7)
!3637 = !DILocation(line: 42, column: 18, scope: !3636, inlinedAt: !3634)
!3638 = !DILocation(line: 42, column: 7, scope: !3629, inlinedAt: !3634)
!3639 = !DILocation(line: 44, column: 5, scope: !3636, inlinedAt: !3634)
!3640 = !DILocation(line: 155, column: 10, scope: !3574)
!3641 = !DILocation(line: 155, column: 3, scope: !3574)
!3642 = !DILocation(line: 229, column: 1, scope: !3574)
!3643 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3644, file: !3644, line: 28, type: !3645, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3688)
!3644 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!22, !3647, !3687, !22}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2622, line: 7, baseType: !3649)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2624, line: 241, size: 1728, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3649, file: !2624, line: 242, baseType: !22, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3649, file: !2624, line: 247, baseType: !13, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3649, file: !2624, line: 248, baseType: !13, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3649, file: !2624, line: 249, baseType: !13, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3649, file: !2624, line: 250, baseType: !13, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3649, file: !2624, line: 251, baseType: !13, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3649, file: !2624, line: 252, baseType: !13, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3649, file: !2624, line: 253, baseType: !13, size: 64, offset: 448)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3649, file: !2624, line: 254, baseType: !13, size: 64, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3649, file: !2624, line: 256, baseType: !13, size: 64, offset: 576)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3649, file: !2624, line: 257, baseType: !13, size: 64, offset: 640)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3649, file: !2624, line: 258, baseType: !13, size: 64, offset: 704)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3649, file: !2624, line: 260, baseType: !3664, size: 64, offset: 768)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2624, line: 156, size: 192, elements: !3666)
!3666 = !{!3667, !3668, !3670}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3665, file: !2624, line: 157, baseType: !3664, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3665, file: !2624, line: 158, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3665, file: !2624, line: 162, baseType: !22, size: 32, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3649, file: !2624, line: 262, baseType: !3669, size: 64, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3649, file: !2624, line: 264, baseType: !22, size: 32, offset: 896)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3649, file: !2624, line: 268, baseType: !22, size: 32, offset: 928)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3649, file: !2624, line: 270, baseType: !2650, size: 64, offset: 960)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3649, file: !2624, line: 274, baseType: !164, size: 16, offset: 1024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3649, file: !2624, line: 275, baseType: !2655, size: 8, offset: 1040)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3649, file: !2624, line: 276, baseType: !2657, size: 8, offset: 1048)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3649, file: !2624, line: 280, baseType: !2661, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3649, file: !2624, line: 289, baseType: !2664, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3649, file: !2624, line: 297, baseType: !14, size: 64, offset: 1216)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3649, file: !2624, line: 298, baseType: !14, size: 64, offset: 1280)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3649, file: !2624, line: 299, baseType: !14, size: 64, offset: 1344)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3649, file: !2624, line: 300, baseType: !14, size: 64, offset: 1408)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3649, file: !2624, line: 302, baseType: !165, size: 64, offset: 1472)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3649, file: !2624, line: 303, baseType: !22, size: 32, offset: 1536)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3649, file: !2624, line: 305, baseType: !2672, size: 160, offset: 1568)
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2792, line: 57, baseType: !2650)
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "fp", arg: 1, scope: !3643, file: !3644, line: 28, type: !3647)
!3690 = !DILocalVariable(name: "offset", arg: 2, scope: !3643, file: !3644, line: 28, type: !3687)
!3691 = !DILocalVariable(name: "whence", arg: 3, scope: !3643, file: !3644, line: 28, type: !22)
!3692 = !DILocalVariable(name: "pos", scope: !3693, file: !3644, line: 116, type: !3687)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3644, line: 112, column: 5)
!3694 = distinct !DILexicalBlock(scope: !3643, file: !3644, line: 51, column: 7)
!3695 = !DILocation(line: 28, column: 15, scope: !3643)
!3696 = !DILocation(line: 28, column: 25, scope: !3643)
!3697 = !DILocation(line: 28, column: 37, scope: !3643)
!3698 = !DILocation(line: 51, column: 11, scope: !3694)
!3699 = !DILocation(line: 51, column: 31, scope: !3694)
!3700 = !DILocation(line: 51, column: 24, scope: !3694)
!3701 = !DILocation(line: 52, column: 7, scope: !3694)
!3702 = !DILocation(line: 52, column: 14, scope: !3694)
!3703 = !DILocation(line: 52, column: 35, scope: !3694)
!3704 = !{!771, !626, i64 32}
!3705 = !DILocation(line: 52, column: 28, scope: !3694)
!3706 = !DILocation(line: 53, column: 7, scope: !3694)
!3707 = !DILocation(line: 53, column: 14, scope: !3694)
!3708 = !{!771, !626, i64 72}
!3709 = !DILocation(line: 53, column: 28, scope: !3694)
!3710 = !DILocation(line: 51, column: 7, scope: !3643)
!3711 = !DILocation(line: 116, column: 26, scope: !3693)
!3712 = !DILocation(line: 116, column: 19, scope: !3693)
!3713 = !DILocation(line: 116, column: 13, scope: !3693)
!3714 = !DILocation(line: 117, column: 15, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3693, file: !3644, line: 117, column: 11)
!3716 = !DILocation(line: 117, column: 11, scope: !3693)
!3717 = !DILocation(line: 127, column: 11, scope: !3693)
!3718 = !DILocation(line: 127, column: 18, scope: !3693)
!3719 = !DILocation(line: 128, column: 11, scope: !3693)
!3720 = !DILocation(line: 128, column: 19, scope: !3693)
!3721 = !{!771, !772, i64 144}
!3722 = !DILocation(line: 159, column: 7, scope: !3693)
!3723 = !DILocation(line: 161, column: 10, scope: !3643)
!3724 = !DILocation(line: 161, column: 3, scope: !3643)
!3725 = !DILocation(line: 162, column: 1, scope: !3643)
