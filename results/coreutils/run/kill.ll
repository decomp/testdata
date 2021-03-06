; ModuleID = 'coreutils-8.30/src/kill.bc'
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
%struct.numname = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Usage: %s [-s SIGNAL | -SIGNAL] PID...\0A  or:  %s -l [SIGNAL]...\0A  or:  %s -t [SIGNAL]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Send signals to processes, or list signals.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [236 x i8] c"  -s, --signal=SIGNAL, -SIGNAL\0A                   specify the name or number of the signal to be sent\0A  -l, --list       list signal names, or convert signal names to/from numbers\0A  -t, --table      print a table of signal information\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [189 x i8] c"\0ASIGNAL may be a signal name like 'HUP', or a signal number like '1',\0Aor the exit status of a process terminated by a signal.\0APID is an integer; if negative it identifies a process group.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@short_options = internal constant [113 x i8] c"0::1::2::3::4::5::6::7::8::9::A::B::C::D::E::F::G::H::I::J::K::M::N::O::P::Q::R::S::T::U::V::W::X::Y::Z::Lln:s:t\00", align 16, !dbg !0
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !11
@optind = external local_unnamed_addr global i32, align 4
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"invalid option -- %c\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: multiple signals specified\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"cannot combine signal with -l or -t\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"no process ID specified\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"%*d %-*s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"%s: invalid process id\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"multiple -l or -t options specified\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.46 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !31
@.str.49 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !36
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !41
@.str.52 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.53 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !45
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !52
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !59
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !104
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !111
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !123
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !130
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !137
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !125
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !139
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.87 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.88 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.101 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.106 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !145
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !154
@.str.127 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.131 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !608 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !613, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 %0, metadata !612, metadata !DIExpression()), !dbg !636
  %3 = icmp eq i32 %0, 0, !dbg !637
  br i1 %3, label %9, label %4, !dbg !638

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !639, !tbaa !641
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !639
  %7 = load i8*, i8** @program_name, align 8, !dbg !639, !tbaa !641
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !639
  br label %68, !dbg !639

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !645
  %11 = load i8*, i8** @program_name, align 8, !dbg !645, !tbaa !641
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11, i8* %11) #12, !dbg !645
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !646
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !641
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !646
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !647
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !641
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !647
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !652
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !641
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !652
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !653
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !641
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !653
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !654
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !641
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !654
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !655
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !641
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !655
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !656
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !656
  %33 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !657
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #12, !dbg !657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %33, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !632
  %34 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !658
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !621, metadata !DIExpression()) #12, !dbg !659
  br label %35, !dbg !660

; <label>:35:                                     ; preds = %40, %9
  %36 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %37 = phi %struct.infomap* [ %41, %40 ], [ %34, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !621, metadata !DIExpression()) #12, !dbg !659
  %38 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %36) #10, !dbg !660
  %39 = icmp eq i32 %38, 0, !dbg !660
  br i1 %39, label %45, label %40, !dbg !661

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 1, !dbg !662
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !621, metadata !DIExpression()) #12, !dbg !659
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 0, !dbg !663
  %43 = load i8*, i8** %42, align 8, !dbg !663, !tbaa !664
  %44 = icmp eq i8* %43, null, !dbg !666
  br i1 %44, label %45, label %35, !dbg !667, !llvm.loop !668

; <label>:45:                                     ; preds = %40, %35
  %46 = phi %struct.infomap* [ %41, %40 ], [ %37, %35 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !621, metadata !DIExpression()) #12, !dbg !659
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !621, metadata !DIExpression()) #12, !dbg !659
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 1, !dbg !671
  %48 = load i8*, i8** %47, align 8, !dbg !671, !tbaa !673
  %49 = icmp eq i8* %48, null, !dbg !674
  %50 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %48, !dbg !675
  call void @llvm.dbg.value(metadata i8* %50, metadata !620, metadata !DIExpression()) #12, !dbg !676
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !677
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !677
  %53 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !678
  call void @llvm.dbg.value(metadata i8* %53, metadata !628, metadata !DIExpression()) #12, !dbg !679
  %54 = icmp eq i8* %53, null, !dbg !680
  br i1 %54, label %61, label %55, !dbg !682

; <label>:55:                                     ; preds = %45
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #10, !dbg !683
  %57 = icmp eq i32 %56, 0, !dbg !683
  br i1 %57, label %61, label %58, !dbg !684

; <label>:58:                                     ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !685
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !685
  br label %61, !dbg !687

; <label>:61:                                     ; preds = %45, %55, %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !688
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !688
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !689
  %65 = icmp eq i8* %50, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !689
  %66 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !689
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* %50, i8* %66) #12, !dbg !689
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #12, !dbg !690
  br label %68

; <label>:68:                                     ; preds = %61, %4
  tail call void @exit(i32 %0) #15, !dbg !691
  unreachable, !dbg !691
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !692 {
  %3 = alloca i8*, align 8
  %4 = alloca [19 x i8], align 16
  call void @llvm.dbg.declare(metadata [19 x i8]* %4, metadata !707, metadata !DIExpression()), !dbg !727
  %5 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !697, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8** %1, metadata !698, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i8 0, metadata !700, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8 0, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 -1, metadata !702, metadata !DIExpression()), !dbg !733
  %6 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %6) #12, !dbg !734
  call void @llvm.dbg.declare(metadata [19 x i8]* %5, metadata !703, metadata !DIExpression()), !dbg !735
  %7 = load i8*, i8** %1, align 8, !dbg !736, !tbaa !641
  tail call void @set_program_name(i8* %7) #12, !dbg !737
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !738
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !739
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !740
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !741
  br label %12, !dbg !742

; <label>:12:                                     ; preds = %2, %51
  %13 = phi i32 [ %53, %51 ], [ -1, %2 ], !dbg !733
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8 0, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i8 0, metadata !700, metadata !DIExpression()), !dbg !731
  %14 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !742
  call void @llvm.dbg.value(metadata i32 %14, metadata !699, metadata !DIExpression()), !dbg !743
  switch i32 %14, label %63 [
    i32 -1, label %64
    i32 48, label %15
    i32 49, label %15
    i32 50, label %15
    i32 51, label %15
    i32 52, label %15
    i32 53, label %15
    i32 54, label %15
    i32 55, label %15
    i32 56, label %15
    i32 57, label %15
    i32 65, label %24
    i32 66, label %24
    i32 67, label %24
    i32 68, label %24
    i32 69, label %24
    i32 70, label %24
    i32 71, label %24
    i32 72, label %24
    i32 73, label %24
    i32 74, label %24
    i32 75, label %24
    i32 77, label %24
    i32 78, label %24
    i32 79, label %24
    i32 80, label %24
    i32 81, label %24
    i32 82, label %24
    i32 83, label %24
    i32 84, label %24
    i32 85, label %24
    i32 86, label %24
    i32 87, label %24
    i32 88, label %24
    i32 89, label %24
    i32 90, label %24
    i32 110, label %45
    i32 115, label %45
    i32 76, label %57
    i32 116, label %57
    i32 108, label %56
    i32 -130, label %59
    i32 -131, label %60
  ], !dbg !744

; <label>:15:                                     ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %16 = load i32, i32* @optind, align 4, !dbg !745, !tbaa !748
  %17 = icmp eq i32 %16, 2, !dbg !750
  br i1 %17, label %24, label %18, !dbg !751

; <label>:18:                                     ; preds = %219, %15
  %19 = phi i8 [ 0, %15 ], [ 1, %219 ]
  %20 = phi i8 [ 0, %15 ], [ %58, %219 ]
  %21 = phi i32 [ %13, %15 ], [ %215, %219 ], !dbg !733
  %22 = phi i32 [ %16, %15 ], [ %220, %219 ], !dbg !745
  call void @llvm.dbg.value(metadata i32 %21, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8 0, metadata !700, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8 0, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8 0, metadata !700, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8 0, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8 0, metadata !700, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8 0, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8 0, metadata !700, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8 0, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  %23 = add nsw i32 %22, -1, !dbg !752
  store i32 %23, i32* @optind, align 4, !dbg !752, !tbaa !748
  br label %64, !dbg !754

; <label>:24:                                     ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %15
  %25 = load i8*, i8** @optarg, align 8, !dbg !755, !tbaa !641
  %26 = icmp eq i8* %25, null, !dbg !755
  %27 = load i32, i32* @optind, align 4, !dbg !757, !tbaa !748
  %28 = add nsw i32 %27, -1, !dbg !757
  %29 = sext i32 %28 to i64, !dbg !757
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !757
  br i1 %26, label %31, label %35, !dbg !759

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %30, align 8, !dbg !760, !tbaa !641
  %33 = call i64 @strlen(i8* %32) #10, !dbg !761
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !762
  store i8* %34, i8** @optarg, align 8, !dbg !763, !tbaa !641
  br label %35, !dbg !764

; <label>:35:                                     ; preds = %24, %31
  %36 = phi i8* [ %34, %31 ], [ %25, %24 ], !dbg !765
  %37 = load i8*, i8** %30, align 8, !dbg !766, !tbaa !641
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !767
  %39 = icmp eq i8* %36, %38, !dbg !768
  br i1 %39, label %43, label %40, !dbg !769

; <label>:40:                                     ; preds = %233, %35
  %41 = phi i32 [ %14, %35 ], [ %216, %233 ], !dbg !742
  %42 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !770
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42, i32 %41) #12, !dbg !772
  call void @usage(i32 1) #16, !dbg !773
  unreachable, !dbg !773

; <label>:43:                                     ; preds = %35
  %44 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !774
  store i8* %44, i8** @optarg, align 8, !dbg !774, !tbaa !641
  br label %45, !dbg !775

; <label>:45:                                     ; preds = %12, %12, %43
  %46 = icmp sgt i32 %13, -1, !dbg !776
  br i1 %46, label %47, label %51, !dbg !778

; <label>:47:                                     ; preds = %240, %45
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !779
  %49 = load i8*, i8** @optarg, align 8, !dbg !781, !tbaa !641
  %50 = call i8* @quote(i8* %49) #12, !dbg !782
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %48, i8* %50) #12, !dbg !783
  call void @usage(i32 1) #16, !dbg !784
  unreachable, !dbg !784

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** @optarg, align 8, !dbg !785, !tbaa !641
  %53 = call i32 @operand2sig(i8* %52, i8* nonnull %6) #12, !dbg !786
  call void @llvm.dbg.value(metadata i32 %53, metadata !702, metadata !DIExpression()), !dbg !733
  %54 = icmp slt i32 %53, 0, !dbg !787
  br i1 %54, label %55, label %12, !dbg !789, !llvm.loop !790

; <label>:55:                                     ; preds = %242, %51
  call void @usage(i32 1) #16, !dbg !792
  unreachable, !dbg !792

; <label>:56:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %13, metadata !702, metadata !DIExpression()), !dbg !733
  br label %57, !dbg !793

; <label>:57:                                     ; preds = %12, %12, %56
  %58 = phi i8 [ 0, %56 ], [ 1, %12 ], [ 1, %12 ], !dbg !795
  call void @llvm.dbg.value(metadata i8 %58, metadata !701, metadata !DIExpression()), !dbg !732
  br label %214, !dbg !742

; <label>:59:                                     ; preds = %214, %12
  call void @usage(i32 0) #16, !dbg !796
  unreachable, !dbg !796

; <label>:60:                                     ; preds = %214, %12
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !797, !tbaa !641
  %62 = load i8*, i8** @Version, align 8, !dbg !797, !tbaa !641
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #12, !dbg !797
  call void @exit(i32 0) #15, !dbg !797
  unreachable, !dbg !797

; <label>:63:                                     ; preds = %214, %12
  call void @usage(i32 1) #16, !dbg !798
  unreachable, !dbg !798

; <label>:64:                                     ; preds = %12, %214, %18
  %65 = phi i8 [ %19, %18 ], [ 0, %12 ], [ 1, %214 ]
  %66 = phi i8 [ %20, %18 ], [ 0, %12 ], [ %58, %214 ]
  %67 = phi i32 [ %21, %18 ], [ %13, %12 ], [ %215, %214 ]
  %68 = icmp slt i32 %67, 0, !dbg !799
  br i1 %68, label %73, label %69, !dbg !801

; <label>:69:                                     ; preds = %64
  %70 = icmp eq i8 %65, 0, !dbg !802
  br i1 %70, label %73, label %71, !dbg !804

; <label>:71:                                     ; preds = %69
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !805
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #12, !dbg !807
  call void @usage(i32 1) #16, !dbg !808
  unreachable, !dbg !808

; <label>:73:                                     ; preds = %64, %69
  %74 = phi i8 [ 0, %69 ], [ %65, %64 ], !dbg !809
  %75 = phi i32 [ %67, %69 ], [ 15, %64 ], !dbg !811
  call void @llvm.dbg.value(metadata i32 %75, metadata !702, metadata !DIExpression()), !dbg !733
  %76 = icmp ne i8 %74, 0, !dbg !809
  %77 = load i32, i32* @optind, align 4, !dbg !812
  %78 = icmp slt i32 %77, %0, !dbg !813
  %79 = or i1 %76, %78, !dbg !814
  br i1 %79, label %82, label %80, !dbg !814

; <label>:80:                                     ; preds = %73
  %81 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !815
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %81) #12, !dbg !817
  call void @usage(i32 1) #16, !dbg !818
  unreachable, !dbg !818

; <label>:82:                                     ; preds = %73
  br i1 %76, label %83, label %175, !dbg !819

; <label>:83:                                     ; preds = %82
  %84 = and i8 %66, 1, !dbg !820
  %85 = icmp eq i8 %84, 0, !dbg !820
  %86 = sext i32 %77 to i64, !dbg !821
  %87 = getelementptr inbounds i8*, i8** %1, i64 %86, !dbg !821
  %88 = select i1 %78, i8** %87, i8** null, !dbg !822
  call void @llvm.dbg.value(metadata i1 %85, metadata !714, metadata !DIExpression()) #12, !dbg !823
  call void @llvm.dbg.value(metadata i8** %88, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %89 = getelementptr inbounds [19 x i8], [19 x i8]* %4, i64 0, i64 0, !dbg !826
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %89) #12, !dbg !826
  br i1 %85, label %138, label %90, !dbg !827

; <label>:90:                                     ; preds = %83, %101
  %91 = phi i32 [ %102, %101 ], [ 0, %83 ]
  %92 = phi i32 [ %103, %101 ], [ 1, %83 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %92, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %93 = call i32 @sig2str(i32 %92, i8* nonnull %89) #12, !dbg !830
  %94 = icmp eq i32 %93, 0, !dbg !831
  br i1 %94, label %95, label %101, !dbg !832

; <label>:95:                                     ; preds = %90
  %96 = call i64 @strlen(i8* nonnull %89) #10, !dbg !833
  call void @llvm.dbg.value(metadata i64 %96, metadata !722, metadata !DIExpression()) #12, !dbg !834
  %97 = zext i32 %91 to i64, !dbg !835
  %98 = icmp ugt i64 %96, %97, !dbg !837
  %99 = trunc i64 %96 to i32, !dbg !838
  %100 = select i1 %98, i32 %99, i32 %91, !dbg !839
  call void @llvm.dbg.value(metadata i32 %100, metadata !718, metadata !DIExpression()) #12, !dbg !828
  br label %101, !dbg !840

; <label>:101:                                    ; preds = %95, %90
  %102 = phi i32 [ %100, %95 ], [ %91, %90 ], !dbg !841
  %103 = add nuw nsw i32 %92, 1, !dbg !842
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %103, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %104 = icmp eq i32 %103, 65, !dbg !843
  br i1 %104, label %105, label %90, !dbg !844, !llvm.loop !845

; <label>:105:                                    ; preds = %101
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %102, metadata !718, metadata !DIExpression()) #12, !dbg !828
  %106 = icmp eq i8** %88, null, !dbg !848
  br i1 %106, label %126, label %107, !dbg !850

; <label>:107:                                    ; preds = %105
  call void @llvm.dbg.value(metadata i8** %88, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %108 = load i8*, i8** %88, align 8, !dbg !851, !tbaa !641
  %109 = icmp eq i8* %108, null, !dbg !854
  br i1 %109, label %173, label %110, !dbg !854

; <label>:110:                                    ; preds = %107, %121
  %111 = phi i8* [ %124, %121 ], [ %108, %107 ]
  %112 = phi i8** [ %123, %121 ], [ %87, %107 ]
  %113 = phi i32 [ %122, %121 ], [ 0, %107 ]
  call void @llvm.dbg.value(metadata i8** %112, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 %113, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %114 = call i32 @operand2sig(i8* nonnull %111, i8* nonnull %89) #12, !dbg !855
  call void @llvm.dbg.value(metadata i32 %114, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %115 = icmp slt i32 %114, 0, !dbg !857
  br i1 %115, label %121, label %116, !dbg !859

; <label>:116:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i32 undef, metadata !860, metadata !DIExpression()) #12, !dbg !869
  call void @llvm.dbg.value(metadata i32 %114, metadata !865, metadata !DIExpression()) #12, !dbg !871
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression()) #12, !dbg !872
  call void @llvm.dbg.value(metadata i8* %89, metadata !867, metadata !DIExpression()) #12, !dbg !873
  %117 = call i8* @strsignal(i32 %114) #12, !dbg !874
  call void @llvm.dbg.value(metadata i8* %117, metadata !868, metadata !DIExpression()) #12, !dbg !875
  %118 = icmp eq i8* %117, null, !dbg !876
  %119 = select i1 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %117, !dbg !876
  %120 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %114, i32 %102, i8* nonnull %89, i8* %119) #12, !dbg !876
  br label %121

; <label>:121:                                    ; preds = %116, %110
  %122 = phi i32 [ %113, %116 ], [ 1, %110 ], !dbg !877
  %123 = getelementptr inbounds i8*, i8** %112, i64 1, !dbg !878
  call void @llvm.dbg.value(metadata i8** %123, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 %122, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %124 = load i8*, i8** %123, align 8, !dbg !851, !tbaa !641
  %125 = icmp eq i8* %124, null, !dbg !854
  br i1 %125, label %173, label %110, !dbg !854, !llvm.loop !879

; <label>:126:                                    ; preds = %105, %135
  %127 = phi i32 [ %136, %135 ], [ 1, %105 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %128 = call i32 @sig2str(i32 %127, i8* nonnull %89) #12, !dbg !882
  %129 = icmp eq i32 %128, 0, !dbg !886
  br i1 %129, label %130, label %135, !dbg !887

; <label>:130:                                    ; preds = %126
  call void @llvm.dbg.value(metadata i32 undef, metadata !860, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i32 %127, metadata !865, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression()) #12, !dbg !891
  call void @llvm.dbg.value(metadata i8* %89, metadata !867, metadata !DIExpression()) #12, !dbg !892
  %131 = call i8* @strsignal(i32 %127) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8* %131, metadata !868, metadata !DIExpression()) #12, !dbg !894
  %132 = icmp eq i8* %131, null, !dbg !895
  %133 = select i1 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %131, !dbg !895
  %134 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %127, i32 %102, i8* nonnull %89, i8* %133) #12, !dbg !895
  br label %135, !dbg !896

; <label>:135:                                    ; preds = %130, %126
  %136 = add nuw nsw i32 %127, 1, !dbg !897
  call void @llvm.dbg.value(metadata i32 %136, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %137 = icmp eq i32 %136, 65, !dbg !898
  br i1 %137, label %173, label %126, !dbg !899, !llvm.loop !900

; <label>:138:                                    ; preds = %83
  %139 = icmp eq i8** %88, null, !dbg !903
  br i1 %139, label %164, label %140, !dbg !906

; <label>:140:                                    ; preds = %138
  call void @llvm.dbg.value(metadata i8** %88, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %141 = load i8*, i8** %88, align 8, !dbg !907, !tbaa !641
  %142 = icmp eq i8* %141, null, !dbg !910
  br i1 %142, label %173, label %143, !dbg !910

; <label>:143:                                    ; preds = %140, %159
  %144 = phi i8* [ %162, %159 ], [ %141, %140 ]
  %145 = phi i8** [ %161, %159 ], [ %87, %140 ]
  %146 = phi i32 [ %160, %159 ], [ 0, %140 ]
  call void @llvm.dbg.value(metadata i8** %145, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 %146, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %147 = call i32 @operand2sig(i8* nonnull %144, i8* nonnull %89) #12, !dbg !911
  call void @llvm.dbg.value(metadata i32 %147, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %148 = icmp slt i32 %147, 0, !dbg !913
  br i1 %148, label %159, label %149, !dbg !915

; <label>:149:                                    ; preds = %143
  %150 = load i8*, i8** %145, align 8, !dbg !916, !tbaa !641
  %151 = load i8, i8* %150, align 1, !dbg !916, !tbaa !919
  %152 = sext i8 %151 to i32, !dbg !916
  %153 = add nsw i32 %152, -48, !dbg !916
  %154 = icmp ult i32 %153, 10, !dbg !916
  br i1 %154, label %155, label %157, !dbg !920

; <label>:155:                                    ; preds = %149
  %156 = call i32 @puts(i8* nonnull %89) #12, !dbg !921
  br label %159, !dbg !921

; <label>:157:                                    ; preds = %149
  %158 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 %147) #12, !dbg !922
  br label %159

; <label>:159:                                    ; preds = %157, %155, %143
  %160 = phi i32 [ %146, %155 ], [ %146, %157 ], [ 1, %143 ], !dbg !877
  %161 = getelementptr inbounds i8*, i8** %145, i64 1, !dbg !923
  call void @llvm.dbg.value(metadata i8** %161, metadata !715, metadata !DIExpression()) #12, !dbg !824
  call void @llvm.dbg.value(metadata i32 %160, metadata !717, metadata !DIExpression()) #12, !dbg !825
  %162 = load i8*, i8** %161, align 8, !dbg !907, !tbaa !641
  %163 = icmp eq i8* %162, null, !dbg !910
  br i1 %163, label %173, label %143, !dbg !910, !llvm.loop !924

; <label>:164:                                    ; preds = %138, %170
  %165 = phi i32 [ %171, %170 ], [ 1, %138 ]
  call void @llvm.dbg.value(metadata i32 %165, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %166 = call i32 @sig2str(i32 %165, i8* nonnull %89) #12, !dbg !927
  %167 = icmp eq i32 %166, 0, !dbg !931
  br i1 %167, label %168, label %170, !dbg !932

; <label>:168:                                    ; preds = %164
  %169 = call i32 @puts(i8* nonnull %89) #12, !dbg !933
  br label %170, !dbg !933

; <label>:170:                                    ; preds = %168, %164
  %171 = add nuw nsw i32 %165, 1, !dbg !934
  call void @llvm.dbg.value(metadata i32 %171, metadata !716, metadata !DIExpression()) #12, !dbg !829
  %172 = icmp eq i32 %171, 65, !dbg !935
  br i1 %172, label %173, label %164, !dbg !936, !llvm.loop !937

; <label>:173:                                    ; preds = %121, %135, %159, %170, %107, %140
  %174 = phi i32 [ 0, %107 ], [ 0, %140 ], [ 0, %170 ], [ %160, %159 ], [ 0, %135 ], [ %122, %121 ], !dbg !825
  call void @llvm.dbg.value(metadata i32 %174, metadata !717, metadata !DIExpression()) #12, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %89) #12, !dbg !940
  br label %212, !dbg !819

; <label>:175:                                    ; preds = %82
  %176 = sext i32 %77 to i64, !dbg !941
  %177 = getelementptr inbounds i8*, i8** %1, i64 %176, !dbg !941
  call void @llvm.dbg.value(metadata i32 %75, metadata !942, metadata !DIExpression()) #12, !dbg !962
  call void @llvm.dbg.value(metadata i8** %177, metadata !947, metadata !DIExpression()) #12, !dbg !964
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #12, !dbg !965
  %178 = load i8*, i8** %177, align 8, !dbg !966, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %178, metadata !949, metadata !DIExpression()) #12, !dbg !967
  %179 = bitcast i8** %3 to i8*
  %180 = tail call i32* @__errno_location() #17, !dbg !968
  br label %181, !dbg !969

; <label>:181:                                    ; preds = %207, %175
  %182 = phi i8* [ %178, %175 ], [ %210, %207 ], !dbg !970
  %183 = phi i32 [ 0, %175 ], [ %208, %207 ], !dbg !971
  %184 = phi i8** [ %177, %175 ], [ %209, %207 ]
  call void @llvm.dbg.value(metadata i8** %184, metadata !947, metadata !DIExpression()) #12, !dbg !964
  call void @llvm.dbg.value(metadata i32 %183, metadata !948, metadata !DIExpression()) #12, !dbg !965
  call void @llvm.dbg.value(metadata i8* %182, metadata !949, metadata !DIExpression()) #12, !dbg !967
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %179) #12, !dbg !974
  store i32 0, i32* %180, align 4, !dbg !975, !tbaa !748
  call void @llvm.dbg.value(metadata i8** %3, metadata !950, metadata !DIExpression(DW_OP_deref)) #12, !dbg !976
  call void @llvm.dbg.value(metadata i8* %182, metadata !977, metadata !DIExpression()) #12, !dbg !987
  call void @llvm.dbg.value(metadata i8** %3, metadata !985, metadata !DIExpression()) #12, !dbg !987
  call void @llvm.dbg.value(metadata i32 10, metadata !986, metadata !DIExpression()) #12, !dbg !987
  %185 = call i64 @__strtol_internal(i8* %182, i8** nonnull %3, i32 10, i32 0) #12, !dbg !989
  call void @llvm.dbg.value(metadata i64 %185, metadata !952, metadata !DIExpression()) #12, !dbg !990
  %186 = trunc i64 %185 to i32, !dbg !991
  call void @llvm.dbg.value(metadata i32 %186, metadata !958, metadata !DIExpression()) #12, !dbg !992
  %187 = load i32, i32* %180, align 4, !dbg !993, !tbaa !748
  %188 = icmp eq i32 %187, 34, !dbg !994
  %189 = add i64 %185, 2147483648, !dbg !995
  %190 = icmp ugt i64 %189, 4294967295, !dbg !995
  %191 = or i1 %188, %190, !dbg !996
  br i1 %191, label %198, label %192, !dbg !996

; <label>:192:                                    ; preds = %181
  %193 = load i8*, i8** %3, align 8, !dbg !997, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %193, metadata !950, metadata !DIExpression()) #12, !dbg !976
  %194 = icmp eq i8* %182, %193, !dbg !998
  br i1 %194, label %198, label %195, !dbg !999

; <label>:195:                                    ; preds = %192
  %196 = load i8, i8* %193, align 1, !dbg !1000, !tbaa !919
  %197 = icmp eq i8 %196, 0, !dbg !1000
  br i1 %197, label %201, label %198, !dbg !1001

; <label>:198:                                    ; preds = %195, %192, %181
  %199 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !1002
  %200 = call i8* @quote(i8* %182) #12, !dbg !1003
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %199, i8* %200) #12, !dbg !1004
  call void @llvm.dbg.value(metadata i32 1, metadata !948, metadata !DIExpression()) #12, !dbg !965
  br label %207, !dbg !1005

; <label>:201:                                    ; preds = %195
  %202 = call i32 @kill(i32 %186, i32 %75) #12, !dbg !1006
  %203 = icmp eq i32 %202, 0, !dbg !1008
  br i1 %203, label %207, label %204, !dbg !1009

; <label>:204:                                    ; preds = %201
  %205 = load i32, i32* %180, align 4, !dbg !1010, !tbaa !748
  %206 = call i8* @quote(i8* %182) #12, !dbg !1012
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* %206) #12, !dbg !1013
  call void @llvm.dbg.value(metadata i32 1, metadata !948, metadata !DIExpression()) #12, !dbg !965
  br label %207, !dbg !1014

; <label>:207:                                    ; preds = %204, %201, %198
  %208 = phi i32 [ 1, %198 ], [ 1, %204 ], [ %183, %201 ], !dbg !970
  call void @llvm.dbg.value(metadata i32 %208, metadata !948, metadata !DIExpression()) #12, !dbg !965
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %179) #12, !dbg !1015
  %209 = getelementptr inbounds i8*, i8** %184, i64 1, !dbg !1016
  call void @llvm.dbg.value(metadata i8** %209, metadata !947, metadata !DIExpression()) #12, !dbg !964
  %210 = load i8*, i8** %209, align 8, !dbg !1017, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %210, metadata !949, metadata !DIExpression()) #12, !dbg !967
  %211 = icmp eq i8* %210, null, !dbg !1018
  br i1 %211, label %212, label %181, !dbg !1018, !llvm.loop !1019

; <label>:212:                                    ; preds = %207, %173
  %213 = phi i32 [ %174, %173 ], [ %208, %207 ], !dbg !819
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %6) #12, !dbg !1022
  ret i32 %213, !dbg !1022

; <label>:214:                                    ; preds = %242, %57
  %215 = phi i32 [ %244, %242 ], [ %13, %57 ], !dbg !733
  call void @llvm.dbg.value(metadata i32 %215, metadata !702, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i8 %58, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i8 1, metadata !700, metadata !DIExpression()), !dbg !731
  %216 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !742
  call void @llvm.dbg.value(metadata i32 %216, metadata !699, metadata !DIExpression()), !dbg !743
  switch i32 %216, label %63 [
    i32 -1, label %64
    i32 48, label %219
    i32 49, label %219
    i32 50, label %219
    i32 51, label %219
    i32 52, label %219
    i32 53, label %219
    i32 54, label %219
    i32 55, label %219
    i32 56, label %219
    i32 57, label %219
    i32 65, label %222
    i32 66, label %222
    i32 67, label %222
    i32 68, label %222
    i32 69, label %222
    i32 70, label %222
    i32 71, label %222
    i32 72, label %222
    i32 73, label %222
    i32 74, label %222
    i32 75, label %222
    i32 77, label %222
    i32 78, label %222
    i32 79, label %222
    i32 80, label %222
    i32 81, label %222
    i32 82, label %222
    i32 83, label %222
    i32 84, label %222
    i32 85, label %222
    i32 86, label %222
    i32 87, label %222
    i32 88, label %222
    i32 89, label %222
    i32 90, label %222
    i32 110, label %240
    i32 115, label %240
    i32 76, label %217
    i32 116, label %217
    i32 108, label %217
    i32 -130, label %59
    i32 -131, label %60
  ], !dbg !744

; <label>:217:                                    ; preds = %214, %214, %214
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !1023
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %218) #12, !dbg !1025
  call void @usage(i32 1) #16, !dbg !1026
  unreachable, !dbg !1026

; <label>:219:                                    ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214, %214
  %220 = load i32, i32* @optind, align 4, !dbg !745, !tbaa !748
  %221 = icmp eq i32 %220, 2, !dbg !750
  br i1 %221, label %222, label %18, !dbg !751

; <label>:222:                                    ; preds = %219, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214, %214
  %223 = load i8*, i8** @optarg, align 8, !dbg !755, !tbaa !641
  %224 = icmp eq i8* %223, null, !dbg !755
  %225 = load i32, i32* @optind, align 4, !dbg !757, !tbaa !748
  %226 = add nsw i32 %225, -1, !dbg !757
  %227 = sext i32 %226 to i64, !dbg !757
  %228 = getelementptr inbounds i8*, i8** %1, i64 %227, !dbg !757
  br i1 %224, label %229, label %233, !dbg !759

; <label>:229:                                    ; preds = %222
  %230 = load i8*, i8** %228, align 8, !dbg !760, !tbaa !641
  %231 = call i64 @strlen(i8* %230) #10, !dbg !761
  %232 = getelementptr inbounds i8, i8* %230, i64 %231, !dbg !762
  store i8* %232, i8** @optarg, align 8, !dbg !763, !tbaa !641
  br label %233, !dbg !764

; <label>:233:                                    ; preds = %229, %222
  %234 = phi i8* [ %232, %229 ], [ %223, %222 ], !dbg !765
  %235 = load i8*, i8** %228, align 8, !dbg !766, !tbaa !641
  %236 = getelementptr inbounds i8, i8* %235, i64 2, !dbg !767
  %237 = icmp eq i8* %234, %236, !dbg !768
  br i1 %237, label %238, label %40, !dbg !769

; <label>:238:                                    ; preds = %233
  %239 = getelementptr inbounds i8, i8* %234, i64 -1, !dbg !774
  store i8* %239, i8** @optarg, align 8, !dbg !774, !tbaa !641
  br label %240, !dbg !775

; <label>:240:                                    ; preds = %238, %214, %214
  %241 = icmp sgt i32 %215, -1, !dbg !776
  br i1 %241, label %47, label %242, !dbg !778

; <label>:242:                                    ; preds = %240
  %243 = load i8*, i8** @optarg, align 8, !dbg !785, !tbaa !641
  %244 = call i32 @operand2sig(i8* %243, i8* nonnull %6) #12, !dbg !786
  call void @llvm.dbg.value(metadata i32 %244, metadata !702, metadata !DIExpression()), !dbg !733
  %245 = icmp slt i32 %244, 0, !dbg !787
  br i1 %245, label %55, label %214, !dbg !789, !llvm.loop !790
}

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
declare i8* @strsignal(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8*, i8*) local_unnamed_addr #7 !dbg !1027 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1031, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %1, metadata !1032, metadata !DIExpression()), !dbg !1043
  %5 = bitcast i32* %3 to i8*, !dbg !1044
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1044
  %6 = load i8, i8* %0, align 1, !dbg !1045, !tbaa !919
  %7 = sext i8 %6 to i32, !dbg !1045
  %8 = add nsw i32 %7, -48, !dbg !1045
  %9 = icmp ult i32 %8, 10, !dbg !1045
  br i1 %9, label %10, label %34, !dbg !1046

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1047
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1047
  %12 = tail call i32* @__errno_location() #17, !dbg !1048
  store i32 0, i32* %12, align 4, !dbg !1049, !tbaa !748
  call void @llvm.dbg.value(metadata i8** %4, metadata !1034, metadata !DIExpression(DW_OP_deref)), !dbg !1050
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #12, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %13, metadata !1037, metadata !DIExpression()), !dbg !1052
  %14 = trunc i64 %13 to i32, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %14, metadata !1038, metadata !DIExpression()), !dbg !1054
  %15 = load i8*, i8** %4, align 8, !dbg !1055, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %15, metadata !1034, metadata !DIExpression()), !dbg !1050
  %16 = icmp eq i8* %15, %0, !dbg !1056
  br i1 %16, label %32, label %17, !dbg !1057

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1058, !tbaa !919
  %19 = icmp eq i8 %18, 0, !dbg !1058
  br i1 %19, label %20, label %32, !dbg !1059

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1060, !tbaa !748
  %22 = icmp ne i32 %21, 0, !dbg !1060
  %23 = add i64 %13, 2147483648, !dbg !1061
  %24 = icmp ugt i64 %23, 4294967295, !dbg !1061
  %25 = or i1 %24, %22, !dbg !1062
  %26 = icmp eq i32 %14, -1, !dbg !1063
  %27 = or i1 %26, %25, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %14, metadata !1033, metadata !DIExpression()), !dbg !1065
  br i1 %27, label %32, label %28, !dbg !1062

; <label>:28:                                     ; preds = %20
  %29 = icmp sgt i32 %14, 254, !dbg !1066
  %30 = select i1 %29, i32 255, i32 127, !dbg !1068
  %31 = and i32 %30, %14, !dbg !1069
  call void @llvm.dbg.value(metadata i32 %31, metadata !1033, metadata !DIExpression()), !dbg !1065
  br label %32, !dbg !1070

; <label>:32:                                     ; preds = %20, %10, %17, %28
  %33 = phi i32 [ %31, %28 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  store i32 %33, i32* %3, align 4, !dbg !1071, !tbaa !748
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1072
  br label %71, !dbg !1073

; <label>:34:                                     ; preds = %2
  %35 = tail call noalias i8* @xstrdup(i8* nonnull %0) #12, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %35, metadata !1039, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %35, metadata !1041, metadata !DIExpression()), !dbg !1076
  %36 = load i8, i8* %35, align 1, !dbg !1077, !tbaa !919
  %37 = icmp eq i8 %36, 0, !dbg !1080
  br i1 %37, label %50, label %38, !dbg !1080

; <label>:38:                                     ; preds = %34, %46
  %39 = phi i8 [ %48, %46 ], [ %36, %34 ]
  %40 = phi i8* [ %47, %46 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i8* %40, metadata !1041, metadata !DIExpression()), !dbg !1076
  %41 = sext i8 %39 to i32, !dbg !1081
  %42 = tail call i8* @memchr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 %41, i64 27), !dbg !1083
  %43 = icmp eq i8* %42, null, !dbg !1083
  br i1 %43, label %46, label %44, !dbg !1084

; <label>:44:                                     ; preds = %38
  %45 = add i8 %39, -32, !dbg !1085
  store i8 %45, i8* %40, align 1, !dbg !1085, !tbaa !919
  br label %46, !dbg !1086

; <label>:46:                                     ; preds = %38, %44
  %47 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %47, metadata !1041, metadata !DIExpression()), !dbg !1076
  %48 = load i8, i8* %47, align 1, !dbg !1077, !tbaa !919
  %49 = icmp eq i8 %48, 0, !dbg !1080
  br i1 %49, label %50, label %38, !dbg !1080, !llvm.loop !1088

; <label>:50:                                     ; preds = %46, %34
  call void @llvm.dbg.value(metadata i32* %3, metadata !1033, metadata !DIExpression(DW_OP_deref)), !dbg !1065
  %51 = call i32 @str2sig(i8* %35, i32* nonnull %3) #12, !dbg !1090
  %52 = icmp eq i32 %51, 0, !dbg !1092
  br i1 %52, label %69, label %53, !dbg !1093

; <label>:53:                                     ; preds = %50
  %54 = load i8, i8* %35, align 1, !dbg !1094, !tbaa !919
  %55 = icmp eq i8 %54, 83, !dbg !1095
  br i1 %55, label %56, label %68, !dbg !1096

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1097
  %58 = load i8, i8* %57, align 1, !dbg !1097, !tbaa !919
  %59 = icmp eq i8 %58, 73, !dbg !1098
  br i1 %59, label %60, label %68, !dbg !1099

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1100
  %62 = load i8, i8* %61, align 1, !dbg !1100, !tbaa !919
  %63 = icmp eq i8 %62, 71, !dbg !1101
  br i1 %63, label %64, label %68, !dbg !1102

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1103
  call void @llvm.dbg.value(metadata i32* %3, metadata !1033, metadata !DIExpression(DW_OP_deref)), !dbg !1065
  %66 = call i32 @str2sig(i8* nonnull %65, i32* nonnull %3) #12, !dbg !1104
  %67 = icmp eq i32 %66, 0, !dbg !1105
  br i1 %67, label %69, label %68, !dbg !1106

; <label>:68:                                     ; preds = %64, %60, %56, %53
  call void @llvm.dbg.value(metadata i32 -1, metadata !1033, metadata !DIExpression()), !dbg !1065
  store i32 -1, i32* %3, align 4, !dbg !1107, !tbaa !748
  br label %69, !dbg !1108

; <label>:69:                                     ; preds = %68, %64, %50
  call void @free(i8* %35) #12, !dbg !1109
  %70 = load i32, i32* %3, align 4, !dbg !1110, !tbaa !748
  br label %71

; <label>:71:                                     ; preds = %69, %32
  %72 = phi i32 [ %70, %69 ], [ %33, %32 ], !dbg !1110
  call void @llvm.dbg.value(metadata i32 %72, metadata !1033, metadata !DIExpression()), !dbg !1065
  %73 = icmp slt i32 %72, 0, !dbg !1112
  br i1 %73, label %77, label %74, !dbg !1113

; <label>:74:                                     ; preds = %71
  %75 = call i32 @sig2str(i32 %72, i8* %1) #12, !dbg !1114
  %76 = icmp eq i32 %75, 0, !dbg !1115
  br i1 %76, label %80, label %77, !dbg !1116

; <label>:77:                                     ; preds = %74, %71
  %78 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.46, i64 0, i64 0), i32 5) #12, !dbg !1117
  %79 = call i8* @quote(i8* %0) #12, !dbg !1119
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %78, i8* %79) #12, !dbg !1120
  br label %82, !dbg !1121

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %3, align 4, !dbg !1122, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %81, metadata !1033, metadata !DIExpression()), !dbg !1065
  br label %82, !dbg !1123

; <label>:82:                                     ; preds = %80, %77
  %83 = phi i32 [ -1, %77 ], [ %81, %80 ], !dbg !1124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1125
  ret i32 %83, !dbg !1125
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i8* %0, i8** @file_name, align 8, !dbg !1130, !tbaa !641
  ret void, !dbg !1131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1132 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1136, metadata !DIExpression()), !dbg !1137
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1138, !tbaa !1139
  ret void, !dbg !1141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1142 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1147, !tbaa !641
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1148
  %3 = icmp eq i32 %2, 0, !dbg !1149
  br i1 %3, label %22, label %4, !dbg !1150

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1151, !tbaa !1139, !range !1152
  %6 = icmp eq i8 %5, 0, !dbg !1151
  br i1 %6, label %11, label %7, !dbg !1153

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1154
  %9 = load i32, i32* %8, align 4, !dbg !1154, !tbaa !748
  %10 = icmp eq i32 %9, 32, !dbg !1155
  br i1 %10, label %22, label %11, !dbg !1156

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i32 5) #12, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %12, metadata !1144, metadata !DIExpression()), !dbg !1158
  %13 = load i8*, i8** @file_name, align 8, !dbg !1159, !tbaa !641
  %14 = icmp eq i8* %13, null, !dbg !1159
  %15 = tail call i32* @__errno_location() #17, !dbg !1161
  %16 = load i32, i32* %15, align 4, !dbg !1161, !tbaa !748
  br i1 %14, label %19, label %17, !dbg !1162

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1163
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.53, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1164
  br label %20, !dbg !1164

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.54, i64 0, i64 0), i8* %12) #12, !dbg !1165
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1166, !tbaa !748
  tail call void @_exit(i32 %21) #15, !dbg !1167
  unreachable, !dbg !1167

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1168, !tbaa !641
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1170
  %25 = icmp eq i32 %24, 0, !dbg !1171
  br i1 %25, label %28, label %26, !dbg !1172

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1173, !tbaa !748
  tail call void @_exit(i32 %27) #15, !dbg !1174
  unreachable, !dbg !1174

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1175
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1176 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1178, metadata !DIExpression()), !dbg !1181
  %2 = icmp eq i8* %0, null, !dbg !1182
  br i1 %2, label %3, label %6, !dbg !1184

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1185, !tbaa !641
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1187
  tail call void @abort() #15, !dbg !1188
  unreachable, !dbg !1188

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #10, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %7, metadata !1179, metadata !DIExpression()), !dbg !1190
  %8 = icmp eq i8* %7, null, !dbg !1191
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1192
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %10, metadata !1180, metadata !DIExpression()), !dbg !1194
  %11 = ptrtoint i8* %10 to i64, !dbg !1195
  %12 = ptrtoint i8* %0 to i64, !dbg !1195
  %13 = sub i64 %11, %12, !dbg !1195
  %14 = icmp sgt i64 %13, 6, !dbg !1197
  br i1 %14, label %15, label %24, !dbg !1198

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1199
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #10, !dbg !1200
  %18 = icmp eq i32 %17, 0, !dbg !1201
  br i1 %18, label %19, label %24, !dbg !1202

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1178, metadata !DIExpression()), !dbg !1181
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #10, !dbg !1203
  %21 = icmp eq i32 %20, 0, !dbg !1206
  br i1 %21, label %22, label %24, !dbg !1207

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %23, metadata !1178, metadata !DIExpression()), !dbg !1181
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1210, !tbaa !641
  br label %24, !dbg !1211

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1178, metadata !DIExpression()), !dbg !1181
  store i8* %25, i8** @program_name, align 8, !dbg !1212, !tbaa !641
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1213, !tbaa !641
  ret void, !dbg !1214
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1215 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1220, metadata !DIExpression()), !dbg !1223
  %2 = tail call i32* @__errno_location() #17, !dbg !1224
  %3 = load i32, i32* %2, align 4, !dbg !1224, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %3, metadata !1221, metadata !DIExpression()), !dbg !1225
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1226
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1226
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1226
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1227
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1222, metadata !DIExpression()), !dbg !1228
  store i32 %3, i32* %2, align 4, !dbg !1229, !tbaa !748
  ret %struct.quoting_options* %8, !dbg !1230
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1231 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1237, metadata !DIExpression()), !dbg !1238
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1239
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1239
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1240
  %5 = load i32, i32* %4, align 8, !dbg !1240, !tbaa !1241
  ret i32 %5, !dbg !1243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1244 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1248, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %1, metadata !1249, metadata !DIExpression()), !dbg !1251
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1252
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1252
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1253
  store i32 %1, i32* %5, align 8, !dbg !1254, !tbaa !1241
  ret void, !dbg !1255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1256 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1260, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %1, metadata !1261, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1262, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %1, metadata !1263, metadata !DIExpression()), !dbg !1272
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1273
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1273
  %6 = lshr i8 %1, 5, !dbg !1274
  %7 = zext i8 %6 to i64, !dbg !1274
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1275
  call void @llvm.dbg.value(metadata i32* %8, metadata !1265, metadata !DIExpression()), !dbg !1276
  %9 = and i8 %1, 31, !dbg !1277
  %10 = zext i8 %9 to i32, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %10, metadata !1267, metadata !DIExpression()), !dbg !1278
  %11 = load i32, i32* %8, align 4, !dbg !1279, !tbaa !748
  %12 = lshr i32 %11, %10, !dbg !1280
  %13 = and i32 %12, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %13, metadata !1268, metadata !DIExpression()), !dbg !1282
  %14 = and i32 %2, 1, !dbg !1283
  %15 = xor i32 %13, %14, !dbg !1284
  %16 = shl i32 %15, %10, !dbg !1285
  %17 = xor i32 %16, %11, !dbg !1286
  store i32 %17, i32* %8, align 4, !dbg !1286, !tbaa !748
  ret i32 %13, !dbg !1287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1288 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1292, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %1, metadata !1293, metadata !DIExpression()), !dbg !1296
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1297
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1299
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1292, metadata !DIExpression()), !dbg !1295
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1300
  %6 = load i32, i32* %5, align 4, !dbg !1300, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %6, metadata !1294, metadata !DIExpression()), !dbg !1302
  store i32 %1, i32* %5, align 4, !dbg !1303, !tbaa !1301
  ret i32 %6, !dbg !1304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1305 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8* %1, metadata !1310, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8* %2, metadata !1311, metadata !DIExpression()), !dbg !1314
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1315
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1309, metadata !DIExpression()), !dbg !1312
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1318
  store i32 10, i32* %6, align 8, !dbg !1319, !tbaa !1241
  %7 = icmp ne i8* %1, null, !dbg !1320
  %8 = icmp ne i8* %2, null, !dbg !1322
  %9 = and i1 %7, %8, !dbg !1323
  br i1 %9, label %11, label %10, !dbg !1323

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1324
  unreachable, !dbg !1324

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1325
  store i8* %1, i8** %12, align 8, !dbg !1326, !tbaa !1327
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1328
  store i8* %2, i8** %13, align 8, !dbg !1329, !tbaa !1330
  ret void, !dbg !1331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1332 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1336, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %1, metadata !1337, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i8* %2, metadata !1338, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %3, metadata !1339, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1340, metadata !DIExpression()), !dbg !1348
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1349
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1341, metadata !DIExpression()), !dbg !1350
  %8 = tail call i32* @__errno_location() #17, !dbg !1351
  %9 = load i32, i32* %8, align 4, !dbg !1351, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %9, metadata !1342, metadata !DIExpression()), !dbg !1352
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1353
  %11 = load i32, i32* %10, align 8, !dbg !1353, !tbaa !1241
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1354
  %13 = load i32, i32* %12, align 4, !dbg !1354, !tbaa !1301
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1355
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1356
  %16 = load i8*, i8** %15, align 8, !dbg !1356, !tbaa !1327
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1357
  %18 = load i8*, i8** %17, align 8, !dbg !1357, !tbaa !1330
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %19, metadata !1343, metadata !DIExpression()), !dbg !1359
  store i32 %9, i32* %8, align 4, !dbg !1360, !tbaa !748
  ret i64 %19, !dbg !1361
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1362 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1368, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %1, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %2, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %3, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %4, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %5, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32* %6, metadata !1374, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %7, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %8, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8* null, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 0, metadata !1381, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !1382, metadata !DIExpression()), !dbg !1445
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1446
  %14 = icmp eq i64 %13, 1, !dbg !1447
  %15 = lshr i32 %5, 1, !dbg !1448
  %16 = trunc i32 %15 to i8, !dbg !1448
  %17 = and i8 %16, 1, !dbg !1448
  call void @llvm.dbg.value(metadata i8 %17, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 1, metadata !1387, metadata !DIExpression()), !dbg !1451
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1452

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1442
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1443
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1444
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1445
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1453
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1449
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1450
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1451
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %39, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %38, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %37, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %36, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %35, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 %34, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %33, metadata !1381, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %32, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %31, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8* %30, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %29, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %28, metadata !1372, metadata !DIExpression()), !dbg !1436
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
  ], !dbg !1455

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 1, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %36, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 5, metadata !1372, metadata !DIExpression()), !dbg !1436
  br label %93, !dbg !1456

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 5, metadata !1372, metadata !DIExpression()), !dbg !1436
  %43 = and i8 %36, 1, !dbg !1457
  %44 = icmp eq i8 %43, 0, !dbg !1457
  br i1 %44, label %45, label %93, !dbg !1456

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1459
  br i1 %46, label %93, label %47, !dbg !1462

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1459, !tbaa !919
  br label %93, !dbg !1459

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %49, metadata !1375, metadata !DIExpression()), !dbg !1439
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !1467
  call void @llvm.dbg.value(metadata i8* %50, metadata !1376, metadata !DIExpression()), !dbg !1440
  br label %51, !dbg !1468

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %52, metadata !1375, metadata !DIExpression()), !dbg !1439
  %54 = and i8 %36, 1, !dbg !1469
  %55 = icmp eq i8 %54, 0, !dbg !1469
  br i1 %55, label %56, label %71, !dbg !1471

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1441
  %57 = load i8, i8* %52, align 1, !dbg !1472, !tbaa !919
  %58 = icmp eq i8 %57, 0, !dbg !1475
  br i1 %58, label %71, label %59, !dbg !1475

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %62, metadata !1378, metadata !DIExpression()), !dbg !1441
  %63 = icmp ult i64 %62, %40, !dbg !1476
  br i1 %63, label %64, label %66, !dbg !1479

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1476
  store i8 %60, i8* %65, align 1, !dbg !1476, !tbaa !919
  br label %66, !dbg !1476

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1479
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %68, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %67, metadata !1378, metadata !DIExpression()), !dbg !1441
  %69 = load i8, i8* %68, align 1, !dbg !1472, !tbaa !919
  %70 = icmp eq i8 %69, 0, !dbg !1475
  br i1 %70, label %71, label %59, !dbg !1475, !llvm.loop !1481

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %72, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %53, metadata !1380, metadata !DIExpression()), !dbg !1443
  %73 = call i64 @strlen(i8* %53) #10, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %73, metadata !1381, metadata !DIExpression()), !dbg !1444
  br label %93, !dbg !1484

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1445
  br label %75, !dbg !1485

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %76, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1384, metadata !DIExpression()), !dbg !1448
  br label %77, !dbg !1486

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1445
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %79, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %78, metadata !1382, metadata !DIExpression()), !dbg !1445
  %80 = and i8 %79, 1, !dbg !1487
  %81 = icmp eq i8 %80, 0, !dbg !1487
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1489
  br label %83, !dbg !1489

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1490
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1448
  call void @llvm.dbg.value(metadata i8 %85, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %84, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1436
  %86 = and i8 %85, 1, !dbg !1491
  %87 = icmp eq i8 %86, 0, !dbg !1491
  br i1 %87, label %88, label %93, !dbg !1493

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1494
  br i1 %89, label %93, label %90, !dbg !1497

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1494, !tbaa !919
  br label %93, !dbg !1494

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1448
  br label %93, !dbg !1498

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1499
  unreachable, !dbg !1499

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1441
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ], !dbg !1453
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1453
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1453
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %101, metadata !1384, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %99, metadata !1381, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %97, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %94, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 0, metadata !1377, metadata !DIExpression()), !dbg !1501
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
  br label %121, !dbg !1502

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1503
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1441
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1442
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1449
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1450
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1451
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %125, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %122, metadata !1377, metadata !DIExpression()), !dbg !1501
  %130 = icmp eq i64 %125, -1, !dbg !1504
  br i1 %130, label %131, label %135, !dbg !1505

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1506
  %133 = load i8, i8* %132, align 1, !dbg !1506, !tbaa !919
  %134 = icmp eq i8 %133, 0, !dbg !1507
  br i1 %134, label %617, label %137, !dbg !1508

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1509
  br i1 %136, label %617, label %137, !dbg !1508

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 0, metadata !1395, metadata !DIExpression()), !dbg !1512
  br i1 %107, label %138, label %153, !dbg !1513

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1515
  %140 = and i1 %108, %130, !dbg !1516
  br i1 %140, label %141, label %143, !dbg !1516

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #10, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %142, metadata !1371, metadata !DIExpression()), !dbg !1435
  br label %143, !dbg !1518

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1371, metadata !DIExpression()), !dbg !1435
  %145 = icmp ugt i64 %139, %144, !dbg !1519
  br i1 %145, label %153, label %146, !dbg !1520

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1521
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #10, !dbg !1522
  %149 = icmp ne i32 %148, 0, !dbg !1523
  %150 = or i1 %149, %110, !dbg !1524
  %151 = xor i1 %149, true, !dbg !1524
  %152 = zext i1 %151 to i8, !dbg !1524
  br i1 %150, label %153, label %661, !dbg !1524

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1525
  call void @llvm.dbg.value(metadata i8 %155, metadata !1393, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %154, metadata !1371, metadata !DIExpression()), !dbg !1435
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1526
  %157 = load i8, i8* %156, align 1, !dbg !1526, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %157, metadata !1388, metadata !DIExpression()), !dbg !1527
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
  ], !dbg !1528

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1529

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1530

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1511
  %161 = and i8 %126, 1, !dbg !1534
  %162 = icmp eq i8 %161, 0, !dbg !1534
  %163 = and i1 %114, %162, !dbg !1534
  br i1 %163, label %164, label %180, !dbg !1534

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1536
  br i1 %165, label %166, label %168, !dbg !1540

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1536
  store i8 39, i8* %167, align 1, !dbg !1536, !tbaa !919
  br label %168, !dbg !1536

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %169, metadata !1378, metadata !DIExpression()), !dbg !1441
  %170 = icmp ult i64 %169, %129, !dbg !1541
  br i1 %170, label %171, label %173, !dbg !1544

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1541
  store i8 36, i8* %172, align 1, !dbg !1541, !tbaa !919
  br label %173, !dbg !1541

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %174, metadata !1378, metadata !DIExpression()), !dbg !1441
  %175 = icmp ult i64 %174, %129, !dbg !1545
  br i1 %175, label %176, label %178, !dbg !1548

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1545
  store i8 39, i8* %177, align 1, !dbg !1545, !tbaa !919
  br label %178, !dbg !1545

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %179, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1449
  br label %180, !dbg !1549

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1500
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %182, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %181, metadata !1378, metadata !DIExpression()), !dbg !1441
  %183 = icmp ult i64 %181, %129, !dbg !1550
  br i1 %183, label %184, label %186, !dbg !1553

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1550
  store i8 92, i8* %185, align 1, !dbg !1550, !tbaa !919
  br label %186, !dbg !1550

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %187, metadata !1378, metadata !DIExpression()), !dbg !1441
  br i1 %104, label %188, label %478, !dbg !1554

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1556
  %190 = icmp ult i64 %189, %154, !dbg !1557
  br i1 %190, label %191, label %467, !dbg !1558

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1559
  %193 = load i8, i8* %192, align 1, !dbg !1559, !tbaa !919
  %194 = add i8 %193, -48, !dbg !1560
  %195 = icmp ult i8 %194, 10, !dbg !1560
  br i1 %195, label %196, label %467, !dbg !1560

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1561
  br i1 %197, label %198, label %200, !dbg !1565

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1561
  store i8 48, i8* %199, align 1, !dbg !1561, !tbaa !919
  br label %200, !dbg !1561

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %201, metadata !1378, metadata !DIExpression()), !dbg !1441
  %202 = icmp ult i64 %201, %129, !dbg !1566
  br i1 %202, label %203, label %205, !dbg !1569

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1566
  store i8 48, i8* %204, align 1, !dbg !1566, !tbaa !919
  br label %205, !dbg !1566

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %206, metadata !1378, metadata !DIExpression()), !dbg !1441
  br label %467, !dbg !1570

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1571

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1572

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1573

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1575

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1577
  %213 = icmp ult i64 %212, %154, !dbg !1578
  br i1 %213, label %214, label %467, !dbg !1579

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1580
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1581
  %217 = load i8, i8* %216, align 1, !dbg !1581, !tbaa !919
  %218 = icmp eq i8 %217, 63, !dbg !1582
  br i1 %218, label %219, label %467, !dbg !1583

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1584
  %221 = load i8, i8* %220, align 1, !dbg !1584, !tbaa !919
  %222 = sext i8 %221 to i32, !dbg !1584
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
  ], !dbg !1585

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1586

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %212, metadata !1377, metadata !DIExpression()), !dbg !1501
  %225 = icmp ult i64 %123, %129, !dbg !1588
  br i1 %225, label %226, label %228, !dbg !1591

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1588
  store i8 63, i8* %227, align 1, !dbg !1588, !tbaa !919
  br label %228, !dbg !1588

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %229, metadata !1378, metadata !DIExpression()), !dbg !1441
  %230 = icmp ult i64 %229, %129, !dbg !1592
  br i1 %230, label %231, label %233, !dbg !1595

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1592
  store i8 34, i8* %232, align 1, !dbg !1592, !tbaa !919
  br label %233, !dbg !1592

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %234, metadata !1378, metadata !DIExpression()), !dbg !1441
  %235 = icmp ult i64 %234, %129, !dbg !1596
  br i1 %235, label %236, label %238, !dbg !1599

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1596
  store i8 34, i8* %237, align 1, !dbg !1596, !tbaa !919
  br label %238, !dbg !1596

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %239, metadata !1378, metadata !DIExpression()), !dbg !1441
  %240 = icmp ult i64 %239, %129, !dbg !1600
  br i1 %240, label %241, label %243, !dbg !1603

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1600
  store i8 63, i8* %242, align 1, !dbg !1600, !tbaa !919
  br label %243, !dbg !1600

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %244, metadata !1378, metadata !DIExpression()), !dbg !1441
  br label %467, !dbg !1604

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1392, metadata !DIExpression()), !dbg !1605
  br label %255, !dbg !1606

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1392, metadata !DIExpression()), !dbg !1605
  br label %255, !dbg !1607

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1392, metadata !DIExpression()), !dbg !1605
  br label %253, !dbg !1608

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1392, metadata !DIExpression()), !dbg !1605
  br label %253, !dbg !1609

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1392, metadata !DIExpression()), !dbg !1605
  br label %255, !dbg !1610

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1392, metadata !DIExpression()), !dbg !1605
  br i1 %114, label %251, label %252, !dbg !1611

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1612

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1615

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8 %254, metadata !1392, metadata !DIExpression()), !dbg !1605
  br i1 %113, label %255, label %661, !dbg !1618

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8 %256, metadata !1392, metadata !DIExpression()), !dbg !1605
  br i1 %103, label %524, label %478, !dbg !1620

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1621
  br i1 %258, label %259, label %264, !dbg !1623

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1624, !tbaa !919
  %261 = icmp ne i8 %260, 0, !dbg !1625
  %262 = icmp ne i64 %122, 0, !dbg !1626
  %263 = or i1 %262, %261, !dbg !1628
  br i1 %263, label %467, label %270, !dbg !1628

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1629
  %266 = icmp ne i64 %122, 0, !dbg !1626
  %267 = or i1 %266, %265, !dbg !1623
  br i1 %267, label %467, label %270, !dbg !1623

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1626
  br i1 %269, label %270, label %467, !dbg !1630

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1395, metadata !DIExpression()), !dbg !1512
  br label %271, !dbg !1631

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8 %272, metadata !1395, metadata !DIExpression()), !dbg !1512
  br i1 %113, label %467, label %661, !dbg !1632

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 1, metadata !1395, metadata !DIExpression()), !dbg !1512
  br i1 %114, label %274, label %467, !dbg !1634

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1635

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1638
  %277 = icmp ne i64 %124, 0, !dbg !1640
  %278 = or i1 %277, %276, !dbg !1641
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1641
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %280, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %279, metadata !1379, metadata !DIExpression()), !dbg !1442
  %281 = icmp ult i64 %123, %280, !dbg !1642
  br i1 %281, label %282, label %284, !dbg !1645

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1642
  store i8 39, i8* %283, align 1, !dbg !1642, !tbaa !919
  br label %284, !dbg !1642

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %285, metadata !1378, metadata !DIExpression()), !dbg !1441
  %286 = icmp ult i64 %285, %280, !dbg !1646
  br i1 %286, label %287, label %289, !dbg !1649

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1646
  store i8 92, i8* %288, align 1, !dbg !1646, !tbaa !919
  br label %289, !dbg !1646

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %290, metadata !1378, metadata !DIExpression()), !dbg !1441
  %291 = icmp ult i64 %290, %280, !dbg !1650
  br i1 %291, label %292, label %294, !dbg !1653

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1650
  store i8 39, i8* %293, align 1, !dbg !1650, !tbaa !919
  br label %294, !dbg !1650

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %295, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1449
  br label %467, !dbg !1654

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1655

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1396, metadata !DIExpression()), !dbg !1656
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1657
  %299 = load i16*, i16** %298, align 8, !dbg !1657, !tbaa !641
  %300 = zext i8 %157 to i64, !dbg !1657
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1657
  %302 = load i16, i16* %301, align 2, !dbg !1657, !tbaa !1659
  %303 = lshr i16 %302, 14, !dbg !1661
  %304 = trunc i16 %303 to i8, !dbg !1661
  %305 = and i8 %304, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i8 %305, metadata !1399, metadata !DIExpression()), !dbg !1662
  br label %359, !dbg !1663

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1664
  store i64 0, i64* %10, align 8, !dbg !1665
  call void @llvm.dbg.value(metadata i64 0, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 1, metadata !1399, metadata !DIExpression()), !dbg !1662
  %307 = icmp eq i64 %154, -1, !dbg !1666
  br i1 %307, label %308, label %310, !dbg !1668

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #10, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %309, metadata !1371, metadata !DIExpression()), !dbg !1435
  br label %310, !dbg !1670

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1671
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  br label %312, !dbg !1672

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1673
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1674
  call void @llvm.dbg.value(metadata i8 %314, metadata !1399, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1675
  %315 = add i64 %313, %122, !dbg !1676
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1677
  %317 = sub i64 %311, %315, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1400, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  call void @llvm.dbg.value(metadata i32* %12, metadata !1418, metadata !DIExpression(DW_OP_deref)), !dbg !1680
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %318, metadata !1421, metadata !DIExpression()), !dbg !1682
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1683

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  %320 = icmp ugt i64 %311, %315, !dbg !1684
  br i1 %320, label %321, label %344, !dbg !1686

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1396, metadata !DIExpression()), !dbg !1656
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1687
  %325 = load i8, i8* %324, align 1, !dbg !1687, !tbaa !919
  %326 = icmp eq i8 %325, 0, !dbg !1686
  br i1 %326, label %344, label %327, !dbg !1688

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %328, metadata !1396, metadata !DIExpression()), !dbg !1656
  %329 = add i64 %328, %122, !dbg !1690
  %330 = icmp ult i64 %329, %311, !dbg !1684
  br i1 %330, label %321, label %344, !dbg !1686, !llvm.loop !1691

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1692
  %333 = and i1 %116, %332, !dbg !1695
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression()), !dbg !1696
  br i1 %333, label %334, label %347, !dbg !1695

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1422, metadata !DIExpression()), !dbg !1696
  %336 = add i64 %335, %315, !dbg !1697
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1698
  %338 = load i8, i8* %337, align 1, !dbg !1698, !tbaa !919
  %339 = sext i8 %338 to i32, !dbg !1698
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1699

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %341, metadata !1422, metadata !DIExpression()), !dbg !1696
  %342 = icmp ult i64 %341, %318, !dbg !1692
  br i1 %342, label %334, label %347, !dbg !1701, !llvm.loop !1702

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %314, metadata !1399, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %313, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %314, metadata !1399, metadata !DIExpression()), !dbg !1662
  br label %344, !dbg !1704

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1399, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %352, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1704
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1705, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %348, metadata !1418, metadata !DIExpression()), !dbg !1680
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !1707
  %350 = icmp eq i32 %349, 0, !dbg !1707
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1708
  call void @llvm.dbg.value(metadata i8 %351, metadata !1399, metadata !DIExpression()), !dbg !1662
  %352 = add i64 %318, %313, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %352, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %351, metadata !1399, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %352, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1400, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #10, !dbg !1710
  %354 = icmp eq i32 %353, 0, !dbg !1711
  br i1 %354, label %312, label %355, !dbg !1712, !llvm.loop !1713

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1715
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %94, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %94, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %94, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %94, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %94, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %100, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %311, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 %351, metadata !1399, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %352, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1715
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1716
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1717
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1717
  call void @llvm.dbg.value(metadata i8 %362, metadata !1399, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %361, metadata !1396, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %360, metadata !1371, metadata !DIExpression()), !dbg !1435
  %363 = and i8 %362, 1, !dbg !1718
  %364 = icmp ne i8 %363, 0, !dbg !1718
  call void @llvm.dbg.value(metadata i8 %363, metadata !1395, metadata !DIExpression()), !dbg !1512
  %365 = icmp ult i64 %361, 2, !dbg !1719
  %366 = or i1 %364, %115, !dbg !1720
  %367 = and i1 %365, %366, !dbg !1721
  br i1 %367, label %467, label %368, !dbg !1721

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %369, metadata !1429, metadata !DIExpression()), !dbg !1723
  br label %370, !dbg !1724

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1725
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1729
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1449
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1725
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1731
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %376, metadata !1394, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %375, metadata !1393, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %374, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %373, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %372, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %371, metadata !1377, metadata !DIExpression()), !dbg !1501
  br i1 %366, label %423, label %377, !dbg !1735

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1736

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1511
  %379 = and i8 %373, 1, !dbg !1739
  %380 = icmp eq i8 %379, 0, !dbg !1739
  %381 = and i1 %114, %380, !dbg !1739
  br i1 %381, label %382, label %398, !dbg !1739

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1741
  br i1 %383, label %384, label %386, !dbg !1745

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1741
  store i8 39, i8* %385, align 1, !dbg !1741, !tbaa !919
  br label %386, !dbg !1741

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %387, metadata !1378, metadata !DIExpression()), !dbg !1441
  %388 = icmp ult i64 %387, %129, !dbg !1746
  br i1 %388, label %389, label %391, !dbg !1749

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1746
  store i8 36, i8* %390, align 1, !dbg !1746, !tbaa !919
  br label %391, !dbg !1746

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %392, metadata !1378, metadata !DIExpression()), !dbg !1441
  %393 = icmp ult i64 %392, %129, !dbg !1750
  br i1 %393, label %394, label %396, !dbg !1753

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1750
  store i8 39, i8* %395, align 1, !dbg !1750, !tbaa !919
  br label %396, !dbg !1750

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %397, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1449
  br label %398, !dbg !1754

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1500
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %400, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %399, metadata !1378, metadata !DIExpression()), !dbg !1441
  %401 = icmp ult i64 %399, %129, !dbg !1755
  br i1 %401, label %402, label %404, !dbg !1758

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1755
  store i8 92, i8* %403, align 1, !dbg !1755, !tbaa !919
  br label %404, !dbg !1755

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %405, metadata !1378, metadata !DIExpression()), !dbg !1441
  %406 = icmp ult i64 %405, %129, !dbg !1759
  br i1 %406, label %407, label %411, !dbg !1762

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1759
  %409 = or i8 %408, 48, !dbg !1759
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1759
  store i8 %409, i8* %410, align 1, !dbg !1759, !tbaa !919
  br label %411, !dbg !1759

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %412, metadata !1378, metadata !DIExpression()), !dbg !1441
  %413 = icmp ult i64 %412, %129, !dbg !1763
  br i1 %413, label %414, label %419, !dbg !1766

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1763
  %416 = and i8 %415, 7, !dbg !1763
  %417 = or i8 %416, 48, !dbg !1763
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1763
  store i8 %417, i8* %418, align 1, !dbg !1763, !tbaa !919
  br label %419, !dbg !1763

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %420, metadata !1378, metadata !DIExpression()), !dbg !1441
  %421 = and i8 %374, 7, !dbg !1767
  %422 = or i8 %421, 48, !dbg !1768
  call void @llvm.dbg.value(metadata i8 %422, metadata !1388, metadata !DIExpression()), !dbg !1527
  br label %432, !dbg !1769

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1770
  %425 = icmp eq i8 %424, 0, !dbg !1770
  br i1 %425, label %432, label %426, !dbg !1771

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1772
  br i1 %427, label %428, label %430, !dbg !1775

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1772
  store i8 92, i8* %429, align 1, !dbg !1772, !tbaa !919
  br label %430, !dbg !1772

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %431, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1510
  br label %432, !dbg !1776

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1777
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1449
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1778
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1779
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1781
  call void @llvm.dbg.value(metadata i8 %437, metadata !1394, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %436, metadata !1393, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %435, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %434, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %433, metadata !1378, metadata !DIExpression()), !dbg !1441
  %438 = add i64 %371, 1, !dbg !1782
  %439 = icmp ugt i64 %369, %438, !dbg !1784
  br i1 %439, label %440, label %562, !dbg !1785

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1786
  %442 = icmp ne i8 %441, 0, !dbg !1786
  %443 = and i8 %437, 1, !dbg !1786
  %444 = icmp eq i8 %443, 0, !dbg !1786
  %445 = and i1 %442, %444, !dbg !1786
  br i1 %445, label %446, label %457, !dbg !1786

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1789
  br i1 %447, label %448, label %450, !dbg !1793

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1789
  store i8 39, i8* %449, align 1, !dbg !1789, !tbaa !919
  br label %450, !dbg !1789

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %451, metadata !1378, metadata !DIExpression()), !dbg !1441
  %452 = icmp ult i64 %451, %129, !dbg !1794
  br i1 %452, label %453, label %455, !dbg !1797

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1794
  store i8 39, i8* %454, align 1, !dbg !1794, !tbaa !919
  br label %455, !dbg !1794

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %456, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1449
  br label %457, !dbg !1798

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1799
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %459, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %458, metadata !1378, metadata !DIExpression()), !dbg !1441
  %460 = icmp ult i64 %458, %129, !dbg !1800
  br i1 %460, label %461, label %463, !dbg !1802

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1800
  store i8 %435, i8* %462, align 1, !dbg !1800, !tbaa !919
  br label %463, !dbg !1800

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %464, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %438, metadata !1377, metadata !DIExpression()), !dbg !1501
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1803
  %466 = load i8, i8* %465, align 1, !dbg !1803, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %466, metadata !1388, metadata !DIExpression()), !dbg !1527
  br label %370, !dbg !1804, !llvm.loop !1805

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1808
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1500
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1442
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1809
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1500
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1500
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1525
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1525
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1525
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %476, metadata !1395, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8 %475, metadata !1394, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %155, metadata !1393, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %474, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %473, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %472, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %471, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %470, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %469, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %468, metadata !1377, metadata !DIExpression()), !dbg !1501
  br i1 %105, label %489, label %478, !dbg !1810

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
  br i1 %112, label %490, label %512, !dbg !1812

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1813

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
  %501 = lshr i8 %494, 5, !dbg !1814
  %502 = zext i8 %501 to i64, !dbg !1814
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1815
  %504 = load i32, i32* %503, align 4, !dbg !1815, !tbaa !748
  %505 = and i8 %494, 31, !dbg !1816
  %506 = zext i8 %505 to i32, !dbg !1816
  %507 = shl i32 1, %506, !dbg !1817
  %508 = and i32 %504, %507, !dbg !1817
  %509 = icmp eq i32 %508, 0, !dbg !1817
  %510 = icmp eq i8 %155, 0, !dbg !1818
  %511 = and i1 %510, %509, !dbg !1819
  br i1 %511, label %562, label %524, !dbg !1819

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
  %523 = icmp eq i8 %155, 0, !dbg !1818
  br i1 %523, label %562, label %524, !dbg !1820

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1821
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1500
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1442
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1809
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1449
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1450
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1822
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1525
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %532, metadata !1395, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8 %531, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %530, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %529, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %528, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %527, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %526, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %525, metadata !1377, metadata !DIExpression()), !dbg !1501
  br i1 %110, label %534, label %661, !dbg !1825

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1511
  %535 = and i8 %529, 1, !dbg !1827
  %536 = icmp eq i8 %535, 0, !dbg !1827
  %537 = and i1 %114, %536, !dbg !1827
  br i1 %537, label %538, label %554, !dbg !1827

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1829
  br i1 %539, label %540, label %542, !dbg !1833

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1829
  store i8 39, i8* %541, align 1, !dbg !1829, !tbaa !919
  br label %542, !dbg !1829

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %543, metadata !1378, metadata !DIExpression()), !dbg !1441
  %544 = icmp ult i64 %543, %533, !dbg !1834
  br i1 %544, label %545, label %547, !dbg !1837

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1834
  store i8 36, i8* %546, align 1, !dbg !1834, !tbaa !919
  br label %547, !dbg !1834

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %548, metadata !1378, metadata !DIExpression()), !dbg !1441
  %549 = icmp ult i64 %548, %533, !dbg !1838
  br i1 %549, label %550, label %552, !dbg !1841

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1838
  store i8 39, i8* %551, align 1, !dbg !1838, !tbaa !919
  br label %552, !dbg !1838

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %553, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1449
  br label %554, !dbg !1842

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1799
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %556, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %555, metadata !1378, metadata !DIExpression()), !dbg !1441
  %557 = icmp ult i64 %555, %533, !dbg !1843
  br i1 %557, label %558, label %560, !dbg !1846

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1843
  store i8 92, i8* %559, align 1, !dbg !1843, !tbaa !919
  br label %560, !dbg !1843

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %561, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %572, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %571, metadata !1395, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8 %570, metadata !1394, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %569, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %568, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %567, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %566, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %565, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %564, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %563, metadata !1377, metadata !DIExpression()), !dbg !1501
  br label %589, !dbg !1847

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1821
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1500
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1442
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1809
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1449
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1450
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1850
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1525
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1525
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %571, metadata !1395, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8 %570, metadata !1394, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %569, metadata !1388, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %568, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %567, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %566, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %565, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %564, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %563, metadata !1377, metadata !DIExpression()), !dbg !1501
  %573 = and i8 %567, 1, !dbg !1847
  %574 = icmp ne i8 %573, 0, !dbg !1847
  %575 = and i8 %570, 1, !dbg !1847
  %576 = icmp eq i8 %575, 0, !dbg !1847
  %577 = and i1 %574, %576, !dbg !1847
  br i1 %577, label %578, label %589, !dbg !1847

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1851
  br i1 %579, label %580, label %582, !dbg !1855

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1851
  store i8 39, i8* %581, align 1, !dbg !1851, !tbaa !919
  br label %582, !dbg !1851

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %583, metadata !1378, metadata !DIExpression()), !dbg !1441
  %584 = icmp ult i64 %583, %572, !dbg !1856
  br i1 %584, label %585, label %587, !dbg !1859

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1856
  store i8 39, i8* %586, align 1, !dbg !1856, !tbaa !919
  br label %587, !dbg !1856

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %588, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1449
  br label %589, !dbg !1860

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1799
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %598, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %597, metadata !1378, metadata !DIExpression()), !dbg !1441
  %599 = icmp ult i64 %597, %590, !dbg !1861
  br i1 %599, label %600, label %602, !dbg !1864

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1861
  store i8 %592, i8* %601, align 1, !dbg !1861, !tbaa !919
  br label %602, !dbg !1861

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %603, metadata !1378, metadata !DIExpression()), !dbg !1441
  %604 = and i8 %591, 1, !dbg !1865
  %605 = icmp eq i8 %604, 0, !dbg !1865
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1867
  call void @llvm.dbg.value(metadata i8 %606, metadata !1387, metadata !DIExpression()), !dbg !1451
  br label %607, !dbg !1868

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1821
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1500
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1442
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1809
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1449
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1500
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1451
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8 %614, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %613, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %612, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %611, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %610, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %609, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %608, metadata !1377, metadata !DIExpression()), !dbg !1501
  %616 = add i64 %608, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %616, metadata !1377, metadata !DIExpression()), !dbg !1501
  br label %121, !dbg !1870, !llvm.loop !1871

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %125, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %125, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  %619 = icmp eq i64 %123, 0, !dbg !1873
  %620 = and i1 %114, %619, !dbg !1875
  %621 = xor i1 %620, true, !dbg !1875
  %622 = or i1 %110, %621, !dbg !1875
  br i1 %622, label %623, label %661, !dbg !1875

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1876
  %625 = xor i1 %624, true, !dbg !1876
  %626 = and i8 %127, 1, !dbg !1878
  %627 = icmp eq i8 %626, 0, !dbg !1878
  %628 = or i1 %627, %625, !dbg !1876
  br i1 %628, label %638, label %629, !dbg !1876

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1879
  %631 = icmp eq i8 %630, 0, !dbg !1879
  br i1 %631, label %634, label %632, !dbg !1882

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %618, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %96, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %125, metadata !1371, metadata !DIExpression()), !dbg !1435
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1883
  br label %671, !dbg !1884

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1885
  %636 = icmp ne i64 %124, 0, !dbg !1887
  %637 = and i1 %636, %635, !dbg !1888
  br i1 %637, label %27, label %638, !dbg !1888

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1433
  %639 = icmp ne i8* %98, null, !dbg !1889
  %640 = and i1 %639, %110, !dbg !1891
  br i1 %640, label %641, label %656, !dbg !1891

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1441
  %642 = load i8, i8* %98, align 1, !dbg !1892, !tbaa !919
  %643 = icmp eq i8 %642, 0, !dbg !1895
  br i1 %643, label %656, label %644, !dbg !1895

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %647, metadata !1378, metadata !DIExpression()), !dbg !1441
  %648 = icmp ult i64 %647, %129, !dbg !1896
  br i1 %648, label %649, label %651, !dbg !1899

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1896
  store i8 %645, i8* %650, align 1, !dbg !1896, !tbaa !919
  br label %651, !dbg !1896

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1899
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %653, metadata !1380, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %652, metadata !1378, metadata !DIExpression()), !dbg !1441
  %654 = load i8, i8* %653, align 1, !dbg !1892, !tbaa !919
  %655 = icmp eq i8 %654, 0, !dbg !1895
  br i1 %655, label %656, label %644, !dbg !1895, !llvm.loop !1901

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %657, metadata !1378, metadata !DIExpression()), !dbg !1441
  %658 = icmp ult i64 %657, %129, !dbg !1903
  br i1 %658, label %659, label %671, !dbg !1905

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1906
  store i8 0, i8* %660, align 1, !dbg !1907, !tbaa !919
  br label %671, !dbg !1906

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %663, metadata !1371, metadata !DIExpression()), !dbg !1435
  %665 = icmp ne i32 %662, 2, !dbg !1908
  %666 = icmp eq i8 %102, 0, !dbg !1910
  %667 = or i1 %665, %666, !dbg !1911
  call void @llvm.dbg.value(metadata i32 4, metadata !1372, metadata !DIExpression()), !dbg !1436
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %668, metadata !1372, metadata !DIExpression()), !dbg !1436
  %669 = and i32 %5, -3, !dbg !1912
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1913
  br label %671, !dbg !1914

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1915
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1920, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 %1, metadata !1921, metadata !DIExpression()), !dbg !1925
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !1926
  call void @llvm.dbg.value(metadata i8* %3, metadata !1922, metadata !DIExpression()), !dbg !1927
  %4 = icmp eq i8* %3, %0, !dbg !1928
  br i1 %4, label %5, label %71, !dbg !1930

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !1931
  call void @llvm.dbg.value(metadata i8* %6, metadata !1923, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %6, metadata !1933, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* null, metadata !1939, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 85, metadata !1940, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 84, metadata !1941, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 70, metadata !1942, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 45, metadata !1943, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 56, metadata !1944, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 0, metadata !1945, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1961
  %7 = load i8, i8* %6, align 1, !dbg !1962, !tbaa !919
  %8 = and i8 %7, -33, !dbg !1962
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1962

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1964, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* null, metadata !1969, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 84, metadata !1970, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 70, metadata !1971, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 45, metadata !1972, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 56, metadata !1973, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !1990
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1991
  %11 = load i8, i8* %10, align 1, !dbg !1991, !tbaa !919
  %12 = and i8 %11, -33, !dbg !1991
  %13 = icmp eq i8 %12, 84, !dbg !1991
  br i1 %13, label %14, label %68, !dbg !1991

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1993, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* null, metadata !1998, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8 70, metadata !1999, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 45, metadata !2000, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 56, metadata !2001, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8 0, metadata !2003, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2017
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2018
  %16 = load i8, i8* %15, align 1, !dbg !2018, !tbaa !919
  %17 = and i8 %16, -33, !dbg !2018
  %18 = icmp eq i8 %17, 70, !dbg !2018
  br i1 %18, label %19, label %68, !dbg !2018

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2020, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* null, metadata !2025, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 45, metadata !2026, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 56, metadata !2027, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !2028, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !2029, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2042
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2043
  %21 = load i8, i8* %20, align 1, !dbg !2043, !tbaa !919
  %22 = icmp eq i8 %21, 45, !dbg !2043
  br i1 %22, label %23, label %68, !dbg !2045

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2046, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* null, metadata !2051, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 56, metadata !2052, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2066
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2067
  %25 = load i8, i8* %24, align 1, !dbg !2067, !tbaa !919
  %26 = icmp eq i8 %25, 56, !dbg !2067
  br i1 %26, label %27, label %68, !dbg !2069

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2070, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* null, metadata !2075, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2088
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2089
  %29 = load i8, i8* %28, align 1, !dbg !2089, !tbaa !919
  %30 = icmp eq i8 %29, 0, !dbg !2089
  br i1 %30, label %31, label %68, !dbg !2091

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2092, !tbaa !919
  %33 = icmp eq i8 %32, 96, !dbg !2093
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2092
  br label %71, !dbg !2094

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1964, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* null, metadata !1969, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 66, metadata !1970, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 49, metadata !1971, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 56, metadata !1972, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 48, metadata !1973, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 51, metadata !1974, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 48, metadata !1975, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2107
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2108
  %37 = load i8, i8* %36, align 1, !dbg !2108, !tbaa !919
  %38 = and i8 %37, -33, !dbg !2108
  %39 = icmp eq i8 %38, 66, !dbg !2108
  br i1 %39, label %40, label %68, !dbg !2108

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1993, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* null, metadata !1998, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 49, metadata !1999, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 56, metadata !2000, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 48, metadata !2001, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 51, metadata !2002, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 48, metadata !2003, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2118
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2119
  %42 = load i8, i8* %41, align 1, !dbg !2119, !tbaa !919
  %43 = icmp eq i8 %42, 49, !dbg !2119
  br i1 %43, label %44, label %68, !dbg !2120

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2020, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8* null, metadata !2025, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 56, metadata !2026, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 48, metadata !2027, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 51, metadata !2028, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 48, metadata !2029, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2129
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2130
  %46 = load i8, i8* %45, align 1, !dbg !2130, !tbaa !919
  %47 = icmp eq i8 %46, 56, !dbg !2130
  br i1 %47, label %48, label %68, !dbg !2131

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2046, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* null, metadata !2051, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 48, metadata !2052, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 51, metadata !2053, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 48, metadata !2054, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2139
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2140
  %50 = load i8, i8* %49, align 1, !dbg !2140, !tbaa !919
  %51 = icmp eq i8 %50, 48, !dbg !2140
  br i1 %51, label %52, label %68, !dbg !2141

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2070, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8* null, metadata !2075, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 51, metadata !2076, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 48, metadata !2077, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2148
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2149
  %54 = load i8, i8* %53, align 1, !dbg !2149, !tbaa !919
  %55 = icmp eq i8 %54, 51, !dbg !2149
  br i1 %55, label %56, label %68, !dbg !2150

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2151, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* null, metadata !2156, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 48, metadata !2157, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2167
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2168
  %58 = load i8, i8* %57, align 1, !dbg !2168, !tbaa !919
  %59 = icmp eq i8 %58, 48, !dbg !2168
  br i1 %59, label %60, label %68, !dbg !2170

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* null, metadata !2176, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2185
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2186
  %62 = load i8, i8* %61, align 1, !dbg !2186, !tbaa !919
  %63 = icmp eq i8 %62, 0, !dbg !2186
  br i1 %63, label %64, label %68, !dbg !2188

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2189, !tbaa !919
  %66 = icmp eq i8 %65, 96, !dbg !2190
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2189
  br label %71, !dbg !2191

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2192
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2193
  br label %71, !dbg !2194

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2195
  ret i8* %72, !dbg !2196
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i64 %1, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2203, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %0, metadata !2207, metadata !DIExpression()) #12, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2212, metadata !DIExpression()) #12, !dbg !2222
  call void @llvm.dbg.value(metadata i64* null, metadata !2213, metadata !DIExpression()) #12, !dbg !2223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2214, metadata !DIExpression()) #12, !dbg !2224
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2225
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2215, metadata !DIExpression()) #12, !dbg !2226
  %6 = tail call i32* @__errno_location() #17, !dbg !2227
  %7 = load i32, i32* %6, align 4, !dbg !2227, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %7, metadata !2216, metadata !DIExpression()) #12, !dbg !2228
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2229
  %9 = load i32, i32* %8, align 4, !dbg !2229, !tbaa !1301
  %10 = or i32 %9, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %10, metadata !2217, metadata !DIExpression()) #12, !dbg !2231
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2232
  %12 = load i32, i32* %11, align 8, !dbg !2232, !tbaa !1241
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2233
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2234
  %15 = load i8*, i8** %14, align 8, !dbg !2234, !tbaa !1327
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2235
  %17 = load i8*, i8** %16, align 8, !dbg !2235, !tbaa !1330
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2236
  %19 = add i64 %18, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %19, metadata !2218, metadata !DIExpression()) #12, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %19, metadata !2239, metadata !DIExpression()) #12, !dbg !2244
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %20, metadata !2219, metadata !DIExpression()) #12, !dbg !2247
  %21 = load i32, i32* %11, align 8, !dbg !2248, !tbaa !1241
  %22 = load i8*, i8** %14, align 8, !dbg !2249, !tbaa !1327
  %23 = load i8*, i8** %16, align 8, !dbg !2250, !tbaa !1330
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2251
  store i32 %7, i32* %6, align 4, !dbg !2252, !tbaa !748
  ret i8* %20, !dbg !2253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2207, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2212, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64* %2, metadata !2213, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2214, metadata !DIExpression()), !dbg !2257
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2258
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2215, metadata !DIExpression()), !dbg !2259
  %7 = tail call i32* @__errno_location() #17, !dbg !2260
  %8 = load i32, i32* %7, align 4, !dbg !2260, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %8, metadata !2216, metadata !DIExpression()), !dbg !2261
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2262
  %10 = load i32, i32* %9, align 4, !dbg !2262, !tbaa !1301
  %11 = icmp ne i64* %2, null, !dbg !2263
  %12 = xor i1 %11, true, !dbg !2263
  %13 = zext i1 %12 to i32, !dbg !2263
  %14 = or i32 %10, %13, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %14, metadata !2217, metadata !DIExpression()), !dbg !2265
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2266
  %16 = load i32, i32* %15, align 8, !dbg !2266, !tbaa !1241
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2267
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2268
  %19 = load i8*, i8** %18, align 8, !dbg !2268, !tbaa !1327
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2269
  %21 = load i8*, i8** %20, align 8, !dbg !2269, !tbaa !1330
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2270
  %23 = add i64 %22, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %23, metadata !2218, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %23, metadata !2239, metadata !DIExpression()) #12, !dbg !2273
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2275
  call void @llvm.dbg.value(metadata i8* %24, metadata !2219, metadata !DIExpression()), !dbg !2276
  %25 = load i32, i32* %15, align 8, !dbg !2277, !tbaa !1241
  %26 = load i8*, i8** %18, align 8, !dbg !2278, !tbaa !1327
  %27 = load i8*, i8** %20, align 8, !dbg !2279, !tbaa !1330
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2280
  store i32 %8, i32* %7, align 4, !dbg !2281, !tbaa !748
  br i1 %11, label %29, label %30, !dbg !2282

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2283, !tbaa !2285
  br label %30, !dbg !2287

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2289 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2293, !tbaa !641
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 1, metadata !2292, metadata !DIExpression()), !dbg !2295
  %2 = load i32, i32* @nslots, align 4, !dbg !2296, !tbaa !748
  %3 = icmp sgt i32 %2, 1, !dbg !2299
  br i1 %3, label %4, label %12, !dbg !2300

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2292, metadata !DIExpression()), !dbg !2295
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2301
  %7 = load i8*, i8** %6, align 8, !dbg !2301, !tbaa !2302
  tail call void @free(i8* %7) #12, !dbg !2304
  %8 = add nuw nsw i64 %5, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i32 undef, metadata !2292, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2295
  %9 = load i32, i32* @nslots, align 4, !dbg !2296, !tbaa !748
  %10 = sext i32 %9 to i64, !dbg !2299
  %11 = icmp slt i64 %8, %10, !dbg !2299
  br i1 %11, label %4, label %12, !dbg !2300, !llvm.loop !2306

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2308
  %14 = load i8*, i8** %13, align 8, !dbg !2308, !tbaa !2302
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2310
  br i1 %15, label %17, label %16, !dbg !2311

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2312
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2314, !tbaa !2315
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2316, !tbaa !2302
  br label %17, !dbg !2317

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2318
  br i1 %18, label %21, label %19, !dbg !2320

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2321
  tail call void @free(i8* %20) #12, !dbg !2323
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2324, !tbaa !641
  br label %21, !dbg !2325

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2326, !tbaa !748
  ret void, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !2333, metadata !DIExpression()), !dbg !2335
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2336
  ret i8* %3, !dbg !2337
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2342, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %1, metadata !2343, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %2, metadata !2344, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2345, metadata !DIExpression()), !dbg !2360
  %5 = tail call i32* @__errno_location() #17, !dbg !2361
  %6 = load i32, i32* %5, align 4, !dbg !2361, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %6, metadata !2346, metadata !DIExpression()), !dbg !2362
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2363, !tbaa !641
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2347, metadata !DIExpression()), !dbg !2364
  %8 = icmp slt i32 %0, 0, !dbg !2365
  br i1 %8, label %9, label %10, !dbg !2367

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2368
  unreachable, !dbg !2368

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2369, !tbaa !748
  %12 = icmp sgt i32 %11, %0, !dbg !2370
  br i1 %12, label %34, label %13, !dbg !2371

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2372
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2351, metadata !DIExpression()), !dbg !2373
  %15 = icmp eq i32 %0, 2147483647, !dbg !2374
  br i1 %15, label %16, label %17, !dbg !2376

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2377
  unreachable, !dbg !2377

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2378
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2378
  %20 = add nsw i32 %0, 1, !dbg !2379
  %21 = sext i32 %20 to i64, !dbg !2380
  %22 = shl nsw i64 %21, 4, !dbg !2381
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2382
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2382
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2347, metadata !DIExpression()), !dbg !2364
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2383, !tbaa !641
  br i1 %14, label %25, label %26, !dbg !2384

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2385, !tbaa.struct !2387
  br label %26, !dbg !2388

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2389, !tbaa !748
  %28 = sext i32 %27 to i64, !dbg !2390
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2390
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2391
  %31 = sub nsw i32 %20, %27, !dbg !2392
  %32 = sext i32 %31 to i64, !dbg !2393
  %33 = shl nsw i64 %32, 4, !dbg !2394
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2391
  store i32 %20, i32* @nslots, align 4, !dbg !2395, !tbaa !748
  br label %34, !dbg !2396

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2397
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2347, metadata !DIExpression()), !dbg !2364
  %36 = sext i32 %0 to i64, !dbg !2398
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2399
  %38 = load i64, i64* %37, align 8, !dbg !2399, !tbaa !2315
  call void @llvm.dbg.value(metadata i64 %38, metadata !2352, metadata !DIExpression()), !dbg !2400
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2401
  %40 = load i8*, i8** %39, align 8, !dbg !2401, !tbaa !2302
  call void @llvm.dbg.value(metadata i8* %40, metadata !2354, metadata !DIExpression()), !dbg !2402
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2403
  %42 = load i32, i32* %41, align 4, !dbg !2403, !tbaa !1301
  %43 = or i32 %42, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %43, metadata !2355, metadata !DIExpression()), !dbg !2405
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2406
  %45 = load i32, i32* %44, align 8, !dbg !2406, !tbaa !1241
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2407
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2408
  %48 = load i8*, i8** %47, align 8, !dbg !2408, !tbaa !1327
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2409
  %50 = load i8*, i8** %49, align 8, !dbg !2409, !tbaa !1330
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2410
  call void @llvm.dbg.value(metadata i64 %51, metadata !2356, metadata !DIExpression()), !dbg !2411
  %52 = icmp ugt i64 %38, %51, !dbg !2412
  br i1 %52, label %63, label %53, !dbg !2414

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %54, metadata !2352, metadata !DIExpression()), !dbg !2400
  store i64 %54, i64* %37, align 8, !dbg !2417, !tbaa !2315
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2418
  br i1 %55, label %57, label %56, !dbg !2420

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2421
  br label %57, !dbg !2421

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2239, metadata !DIExpression()) #12, !dbg !2422
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %58, metadata !2354, metadata !DIExpression()), !dbg !2402
  store i8* %58, i8** %39, align 8, !dbg !2425, !tbaa !2302
  %59 = load i32, i32* %44, align 8, !dbg !2426, !tbaa !1241
  %60 = load i8*, i8** %47, align 8, !dbg !2427, !tbaa !1327
  %61 = load i8*, i8** %49, align 8, !dbg !2428, !tbaa !1330
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2429
  br label %63, !dbg !2430

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2431
  call void @llvm.dbg.value(metadata i8* %64, metadata !2354, metadata !DIExpression()), !dbg !2402
  store i32 %6, i32* %5, align 4, !dbg !2432, !tbaa !748
  ret i8* %64, !dbg !2433
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2434 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %1, metadata !2439, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %2, metadata !2440, metadata !DIExpression()), !dbg !2443
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2444
  ret i8* %4, !dbg !2445
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2332, metadata !DIExpression()) #12, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %0, metadata !2333, metadata !DIExpression()) #12, !dbg !2454
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2455
  ret i8* %2, !dbg !2456
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2457 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %1, metadata !2462, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 0, metadata !2438, metadata !DIExpression()) #12, !dbg !2465
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #12, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %1, metadata !2440, metadata !DIExpression()) #12, !dbg !2468
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2469
  ret i8* %3, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2471 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2475, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()), !dbg !2481
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression()) #12, !dbg !2490
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2492, !alias.scope !2493
  %6 = icmp eq i32 %1, 10, !dbg !2496
  br i1 %6, label %7, label %8, !dbg !2498

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2499, !noalias !2493
  unreachable, !dbg !2499

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2500
  store i32 %1, i32* %9, align 8, !dbg !2501, !tbaa !1241, !alias.scope !2493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2489, metadata !DIExpression(DW_OP_deref)), !dbg !2492
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2502
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2503
  ret i8* %10, !dbg !2504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2505 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %1, metadata !2510, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %2, metadata !2511, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 %3, metadata !2512, metadata !DIExpression()), !dbg !2517
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2518
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2513, metadata !DIExpression(DW_OP_deref)), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression()) #12, !dbg !2520
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2522, !alias.scope !2523
  %7 = icmp eq i32 %1, 10, !dbg !2526
  br i1 %7, label %8, label %9, !dbg !2527

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2528, !noalias !2523
  unreachable, !dbg !2528

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2529
  store i32 %1, i32* %10, align 8, !dbg !2530, !tbaa !1241, !alias.scope !2523
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2513, metadata !DIExpression(DW_OP_deref)), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2489, metadata !DIExpression(DW_OP_deref)), !dbg !2522
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2532
  ret i8* %11, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2534 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 0, metadata !2475, metadata !DIExpression()) #12, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()) #12, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %1, metadata !2477, metadata !DIExpression()) #12, !dbg !2545
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2478, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()) #12, !dbg !2548
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2550, !alias.scope !2551
  %5 = icmp eq i32 %0, 10, !dbg !2554
  br i1 %5, label %6, label %7, !dbg !2555

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2556, !noalias !2551
  unreachable, !dbg !2556

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2557
  store i32 %0, i32* %8, align 8, !dbg !2558, !tbaa !1241, !alias.scope !2551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2478, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2489, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2550
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2560
  ret i8* %9, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2562 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %2, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 0, metadata !2509, metadata !DIExpression()) #12, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %0, metadata !2510, metadata !DIExpression()) #12, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %1, metadata !2511, metadata !DIExpression()) #12, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %2, metadata !2512, metadata !DIExpression()) #12, !dbg !2576
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2577
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2513, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()) #12, !dbg !2579
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2581, !alias.scope !2582
  %6 = icmp eq i32 %0, 10, !dbg !2585
  br i1 %6, label %7, label %8, !dbg !2586

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2587, !noalias !2582
  unreachable, !dbg !2587

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2588
  store i32 %0, i32* %9, align 8, !dbg !2589, !tbaa !1241, !alias.scope !2582
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2513, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2489, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2581
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2590
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2591
  ret i8* %10, !dbg !2592
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2593 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 %2, metadata !2599, metadata !DIExpression()), !dbg !2603
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2604
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2605, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2600, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1260, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 %2, metadata !1261, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %2, metadata !1263, metadata !DIExpression()), !dbg !2612
  %6 = lshr i8 %2, 5, !dbg !2613
  %7 = zext i8 %6 to i64, !dbg !2613
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2614
  call void @llvm.dbg.value(metadata i32* %8, metadata !1265, metadata !DIExpression()), !dbg !2615
  %9 = and i8 %2, 31, !dbg !2616
  %10 = zext i8 %9 to i32, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %10, metadata !1267, metadata !DIExpression()), !dbg !2617
  %11 = load i32, i32* %8, align 4, !dbg !2618, !tbaa !748
  %12 = lshr i32 %11, %10, !dbg !2619
  %13 = and i32 %12, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %13, metadata !1268, metadata !DIExpression()), !dbg !2621
  %14 = xor i32 %13, 1, !dbg !2622
  %15 = shl i32 %14, %10, !dbg !2623
  %16 = xor i32 %15, %11, !dbg !2624
  store i32 %16, i32* %8, align 4, !dbg !2624, !tbaa !748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2600, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2625
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2626
  ret i8* %17, !dbg !2627
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2628 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 %1, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()) #12, !dbg !2636
  call void @llvm.dbg.value(metadata i64 -1, metadata !2598, metadata !DIExpression()) #12, !dbg !2638
  call void @llvm.dbg.value(metadata i8 %1, metadata !2599, metadata !DIExpression()) #12, !dbg !2639
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2641, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2600, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1260, metadata !DIExpression()) #12, !dbg !2643
  call void @llvm.dbg.value(metadata i8 %1, metadata !1261, metadata !DIExpression()) #12, !dbg !2645
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()) #12, !dbg !2646
  call void @llvm.dbg.value(metadata i8 %1, metadata !1263, metadata !DIExpression()) #12, !dbg !2647
  %5 = lshr i8 %1, 5, !dbg !2648
  %6 = zext i8 %5 to i64, !dbg !2648
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2649
  call void @llvm.dbg.value(metadata i32* %7, metadata !1265, metadata !DIExpression()) #12, !dbg !2650
  %8 = and i8 %1, 31, !dbg !2651
  %9 = zext i8 %8 to i32, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %9, metadata !1267, metadata !DIExpression()) #12, !dbg !2652
  %10 = load i32, i32* %7, align 4, !dbg !2653, !tbaa !748
  %11 = lshr i32 %10, %9, !dbg !2654
  %12 = and i32 %11, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %12, metadata !1268, metadata !DIExpression()) #12, !dbg !2656
  %13 = xor i32 %12, 1, !dbg !2657
  %14 = shl i32 %13, %9, !dbg !2658
  %15 = xor i32 %14, %10, !dbg !2659
  store i32 %15, i32* %7, align 4, !dbg !2659, !tbaa !748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2600, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2642
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2660
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2661
  ret i8* %16, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2663 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2665, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()) #12, !dbg !2667
  call void @llvm.dbg.value(metadata i8 58, metadata !2633, metadata !DIExpression()) #12, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()) #12, !dbg !2670
  call void @llvm.dbg.value(metadata i64 -1, metadata !2598, metadata !DIExpression()) #12, !dbg !2672
  call void @llvm.dbg.value(metadata i8 58, metadata !2599, metadata !DIExpression()) #12, !dbg !2673
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2674
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2675, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2600, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2676
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1260, metadata !DIExpression()) #12, !dbg !2677
  call void @llvm.dbg.value(metadata i8 58, metadata !1261, metadata !DIExpression()) #12, !dbg !2679
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()) #12, !dbg !2680
  call void @llvm.dbg.value(metadata i8 58, metadata !1263, metadata !DIExpression()) #12, !dbg !2681
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2682
  call void @llvm.dbg.value(metadata i32* %4, metadata !1265, metadata !DIExpression()) #12, !dbg !2683
  call void @llvm.dbg.value(metadata i32 26, metadata !1267, metadata !DIExpression()) #12, !dbg !2684
  %5 = load i32, i32* %4, align 4, !dbg !2685, !tbaa !748
  %6 = or i32 %5, 67108864, !dbg !2686
  store i32 %6, i32* %4, align 4, !dbg !2686, !tbaa !748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2600, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2676
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2688
  ret i8* %7, !dbg !2689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2690 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %1, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()) #12, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()) #12, !dbg !2698
  call void @llvm.dbg.value(metadata i8 58, metadata !2599, metadata !DIExpression()) #12, !dbg !2699
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2700
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2701, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2600, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1260, metadata !DIExpression()) #12, !dbg !2703
  call void @llvm.dbg.value(metadata i8 58, metadata !1261, metadata !DIExpression()) #12, !dbg !2705
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()) #12, !dbg !2706
  call void @llvm.dbg.value(metadata i8 58, metadata !1263, metadata !DIExpression()) #12, !dbg !2707
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2708
  call void @llvm.dbg.value(metadata i32* %5, metadata !1265, metadata !DIExpression()) #12, !dbg !2709
  call void @llvm.dbg.value(metadata i32 26, metadata !1267, metadata !DIExpression()) #12, !dbg !2710
  %6 = load i32, i32* %5, align 4, !dbg !2711, !tbaa !748
  %7 = or i32 %6, 67108864, !dbg !2712
  store i32 %7, i32* %5, align 4, !dbg !2712, !tbaa !748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2600, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2702
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2713
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2714
  ret i8* %8, !dbg !2715
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2716 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2489, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2722
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %1, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %2, metadata !2720, metadata !DIExpression()), !dbg !2726
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2727
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression()) #12, !dbg !2729
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2722
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2722, !alias.scope !2730
  %8 = icmp eq i32 %1, 10, !dbg !2733
  br i1 %8, label %9, label %10, !dbg !2734

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2735, !noalias !2730
  unreachable, !dbg !2735

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2722
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2728
  store i32 %1, i32* %11, align 8, !dbg !2728
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2728
  %13 = bitcast i32* %12 to i8*, !dbg !2728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2728
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2728
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2721, metadata !DIExpression(DW_OP_deref)), !dbg !2736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1260, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 58, metadata !1261, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 58, metadata !1263, metadata !DIExpression()), !dbg !2741
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2742
  call void @llvm.dbg.value(metadata i32* %14, metadata !1265, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 26, metadata !1267, metadata !DIExpression()), !dbg !2744
  %15 = load i32, i32* %14, align 4, !dbg !2745, !tbaa !748
  %16 = or i32 %15, 67108864, !dbg !2746
  store i32 %16, i32* %14, align 4, !dbg !2746, !tbaa !748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2721, metadata !DIExpression(DW_OP_deref)), !dbg !2736
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2747
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2748
  ret i8* %17, !dbg !2749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2750 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2756, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %3, metadata !2757, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()) #12, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %1, metadata !2767, metadata !DIExpression()) #12, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %2, metadata !2768, metadata !DIExpression()) #12, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %3, metadata !2769, metadata !DIExpression()) #12, !dbg !2776
  call void @llvm.dbg.value(metadata i64 -1, metadata !2770, metadata !DIExpression()) #12, !dbg !2777
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2778
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2779, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1309, metadata !DIExpression()) #12, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !1310, metadata !DIExpression()) #12, !dbg !2783
  call void @llvm.dbg.value(metadata i8* %2, metadata !1311, metadata !DIExpression()) #12, !dbg !2784
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1309, metadata !DIExpression()) #12, !dbg !2781
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2785
  store i32 10, i32* %7, align 8, !dbg !2786, !tbaa !1241
  %8 = icmp ne i8* %1, null, !dbg !2787
  %9 = icmp ne i8* %2, null, !dbg !2788
  %10 = and i1 %8, %9, !dbg !2789
  br i1 %10, label %12, label %11, !dbg !2789

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2790
  unreachable, !dbg !2790

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2791
  store i8* %1, i8** %13, align 8, !dbg !2792, !tbaa !1327
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2793
  store i8* %2, i8** %14, align 8, !dbg !2794, !tbaa !1330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2780
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2796
  ret i8* %15, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2763 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %1, metadata !2767, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %2, metadata !2768, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %3, metadata !2769, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %4, metadata !2770, metadata !DIExpression()), !dbg !2802
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2803
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2804, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1309, metadata !DIExpression()) #12, !dbg !2806
  call void @llvm.dbg.value(metadata i8* %1, metadata !1310, metadata !DIExpression()) #12, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %2, metadata !1311, metadata !DIExpression()) #12, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1309, metadata !DIExpression()) #12, !dbg !2806
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2810
  store i32 10, i32* %8, align 8, !dbg !2811, !tbaa !1241
  %9 = icmp ne i8* %1, null, !dbg !2812
  %10 = icmp ne i8* %2, null, !dbg !2813
  %11 = and i1 %9, %10, !dbg !2814
  br i1 %11, label %13, label %12, !dbg !2814

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2815
  unreachable, !dbg !2815

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2816
  store i8* %1, i8** %14, align 8, !dbg !2817, !tbaa !1327
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2818
  store i8* %2, i8** %15, align 8, !dbg !2819, !tbaa !1330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2821
  ret i8* %16, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2823 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2827, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %1, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %2, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()) #12, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()) #12, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %1, metadata !2756, metadata !DIExpression()) #12, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %2, metadata !2757, metadata !DIExpression()) #12, !dbg !2837
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()) #12, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()) #12, !dbg !2840
  call void @llvm.dbg.value(metadata i8* %1, metadata !2768, metadata !DIExpression()) #12, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %2, metadata !2769, metadata !DIExpression()) #12, !dbg !2842
  call void @llvm.dbg.value(metadata i64 -1, metadata !2770, metadata !DIExpression()) #12, !dbg !2843
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2844
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2845, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1309, metadata !DIExpression()) #12, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %0, metadata !1310, metadata !DIExpression()) #12, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %1, metadata !1311, metadata !DIExpression()) #12, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1309, metadata !DIExpression()) #12, !dbg !2847
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2851
  store i32 10, i32* %6, align 8, !dbg !2852, !tbaa !1241
  %7 = icmp ne i8* %0, null, !dbg !2853
  %8 = icmp ne i8* %1, null, !dbg !2854
  %9 = and i1 %7, %8, !dbg !2855
  br i1 %9, label %11, label %10, !dbg !2855

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2856
  unreachable, !dbg !2856

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2857
  store i8* %0, i8** %12, align 8, !dbg !2858, !tbaa !1327
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2859
  store i8* %1, i8** %13, align 8, !dbg !2860, !tbaa !1330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2846
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2862
  ret i8* %14, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2864 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %1, metadata !2869, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %2, metadata !2870, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 %3, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()) #12, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()) #12, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2768, metadata !DIExpression()) #12, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2769, metadata !DIExpression()) #12, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %3, metadata !2770, metadata !DIExpression()) #12, !dbg !2881
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2883, !tbaa.struct !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1309, metadata !DIExpression()) #12, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %0, metadata !1310, metadata !DIExpression()) #12, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !1311, metadata !DIExpression()) #12, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1309, metadata !DIExpression()) #12, !dbg !2885
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2889
  store i32 10, i32* %7, align 8, !dbg !2890, !tbaa !1241
  %8 = icmp ne i8* %0, null, !dbg !2891
  %9 = icmp ne i8* %1, null, !dbg !2892
  %10 = and i1 %8, %9, !dbg !2893
  br i1 %10, label %12, label %11, !dbg !2893

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2894
  unreachable, !dbg !2894

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2895
  store i8* %0, i8** %13, align 8, !dbg !2896, !tbaa !1327
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2897
  store i8* %1, i8** %14, align 8, !dbg !2898, !tbaa !1330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2884
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2900
  ret i8* %15, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2902 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2906, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %2, metadata !2908, metadata !DIExpression()), !dbg !2911
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2912
  ret i8* %4, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()) #12, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2907, metadata !DIExpression()) #12, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2908, metadata !DIExpression()) #12, !dbg !2925
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2926
  ret i8* %3, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %1, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 %0, metadata !2906, metadata !DIExpression()) #12, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()) #12, !dbg !2938
  call void @llvm.dbg.value(metadata i64 -1, metadata !2908, metadata !DIExpression()) #12, !dbg !2939
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2940
  ret i8* %3, !dbg !2941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()) #12, !dbg !2950
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()) #12, !dbg !2951
  call void @llvm.dbg.value(metadata i8* %0, metadata !2907, metadata !DIExpression()) #12, !dbg !2953
  call void @llvm.dbg.value(metadata i64 -1, metadata !2908, metadata !DIExpression()) #12, !dbg !2954
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2955
  ret i8* %2, !dbg !2956
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2957 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3015, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %1, metadata !3016, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8* %2, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %3, metadata !3018, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8** %4, metadata !3019, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %5, metadata !3020, metadata !DIExpression()), !dbg !3026
  %7 = icmp eq i8* %1, null, !dbg !3027
  br i1 %7, label %10, label %8, !dbg !3029

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3030
  br label %12, !dbg !3030

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.86, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3031
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.87, i64 0, i64 0), i32 5) #12, !dbg !3032
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3032
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.88, i64 0, i64 0), i32 5) #12, !dbg !3033
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3033
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
  ], !dbg !3034

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3035
  unreachable, !dbg !3035

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.89, i64 0, i64 0), i32 5) #12, !dbg !3037
  %20 = load i8*, i8** %4, align 8, !dbg !3037, !tbaa !641
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3037
  br label %146, !dbg !3038

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.90, i64 0, i64 0), i32 5) #12, !dbg !3039
  %24 = load i8*, i8** %4, align 8, !dbg !3039, !tbaa !641
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3039
  %26 = load i8*, i8** %25, align 8, !dbg !3039, !tbaa !641
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3039
  br label %146, !dbg !3040

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.91, i64 0, i64 0), i32 5) #12, !dbg !3041
  %30 = load i8*, i8** %4, align 8, !dbg !3041, !tbaa !641
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3041
  %32 = load i8*, i8** %31, align 8, !dbg !3041, !tbaa !641
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3041
  %34 = load i8*, i8** %33, align 8, !dbg !3041, !tbaa !641
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3041
  br label %146, !dbg !3042

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.92, i64 0, i64 0), i32 5) #12, !dbg !3043
  %38 = load i8*, i8** %4, align 8, !dbg !3043, !tbaa !641
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3043
  %40 = load i8*, i8** %39, align 8, !dbg !3043, !tbaa !641
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3043
  %42 = load i8*, i8** %41, align 8, !dbg !3043, !tbaa !641
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3043
  %44 = load i8*, i8** %43, align 8, !dbg !3043, !tbaa !641
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3043
  br label %146, !dbg !3044

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.93, i64 0, i64 0), i32 5) #12, !dbg !3045
  %48 = load i8*, i8** %4, align 8, !dbg !3045, !tbaa !641
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3045
  %50 = load i8*, i8** %49, align 8, !dbg !3045, !tbaa !641
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3045
  %52 = load i8*, i8** %51, align 8, !dbg !3045, !tbaa !641
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3045
  %54 = load i8*, i8** %53, align 8, !dbg !3045, !tbaa !641
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3045
  %56 = load i8*, i8** %55, align 8, !dbg !3045, !tbaa !641
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3045
  br label %146, !dbg !3046

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.94, i64 0, i64 0), i32 5) #12, !dbg !3047
  %60 = load i8*, i8** %4, align 8, !dbg !3047, !tbaa !641
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3047
  %62 = load i8*, i8** %61, align 8, !dbg !3047, !tbaa !641
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3047
  %64 = load i8*, i8** %63, align 8, !dbg !3047, !tbaa !641
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3047
  %66 = load i8*, i8** %65, align 8, !dbg !3047, !tbaa !641
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3047
  %68 = load i8*, i8** %67, align 8, !dbg !3047, !tbaa !641
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3047
  %70 = load i8*, i8** %69, align 8, !dbg !3047, !tbaa !641
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3047
  br label %146, !dbg !3048

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.95, i64 0, i64 0), i32 5) #12, !dbg !3049
  %74 = load i8*, i8** %4, align 8, !dbg !3049, !tbaa !641
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3049
  %76 = load i8*, i8** %75, align 8, !dbg !3049, !tbaa !641
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3049
  %78 = load i8*, i8** %77, align 8, !dbg !3049, !tbaa !641
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3049
  %80 = load i8*, i8** %79, align 8, !dbg !3049, !tbaa !641
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3049
  %82 = load i8*, i8** %81, align 8, !dbg !3049, !tbaa !641
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3049
  %84 = load i8*, i8** %83, align 8, !dbg !3049, !tbaa !641
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3049
  %86 = load i8*, i8** %85, align 8, !dbg !3049, !tbaa !641
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3049
  br label %146, !dbg !3050

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.96, i64 0, i64 0), i32 5) #12, !dbg !3051
  %90 = load i8*, i8** %4, align 8, !dbg !3051, !tbaa !641
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3051
  %92 = load i8*, i8** %91, align 8, !dbg !3051, !tbaa !641
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3051
  %94 = load i8*, i8** %93, align 8, !dbg !3051, !tbaa !641
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3051
  %96 = load i8*, i8** %95, align 8, !dbg !3051, !tbaa !641
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3051
  %98 = load i8*, i8** %97, align 8, !dbg !3051, !tbaa !641
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3051
  %100 = load i8*, i8** %99, align 8, !dbg !3051, !tbaa !641
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3051
  %102 = load i8*, i8** %101, align 8, !dbg !3051, !tbaa !641
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3051
  %104 = load i8*, i8** %103, align 8, !dbg !3051, !tbaa !641
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3051
  br label %146, !dbg !3052

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.97, i64 0, i64 0), i32 5) #12, !dbg !3053
  %108 = load i8*, i8** %4, align 8, !dbg !3053, !tbaa !641
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3053
  %110 = load i8*, i8** %109, align 8, !dbg !3053, !tbaa !641
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3053
  %112 = load i8*, i8** %111, align 8, !dbg !3053, !tbaa !641
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3053
  %114 = load i8*, i8** %113, align 8, !dbg !3053, !tbaa !641
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3053
  %116 = load i8*, i8** %115, align 8, !dbg !3053, !tbaa !641
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3053
  %118 = load i8*, i8** %117, align 8, !dbg !3053, !tbaa !641
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3053
  %120 = load i8*, i8** %119, align 8, !dbg !3053, !tbaa !641
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3053
  %122 = load i8*, i8** %121, align 8, !dbg !3053, !tbaa !641
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3053
  %124 = load i8*, i8** %123, align 8, !dbg !3053, !tbaa !641
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3053
  br label %146, !dbg !3054

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.98, i64 0, i64 0), i32 5) #12, !dbg !3055
  %128 = load i8*, i8** %4, align 8, !dbg !3055, !tbaa !641
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3055
  %130 = load i8*, i8** %129, align 8, !dbg !3055, !tbaa !641
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3055
  %132 = load i8*, i8** %131, align 8, !dbg !3055, !tbaa !641
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3055
  %134 = load i8*, i8** %133, align 8, !dbg !3055, !tbaa !641
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3055
  %136 = load i8*, i8** %135, align 8, !dbg !3055, !tbaa !641
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3055
  %138 = load i8*, i8** %137, align 8, !dbg !3055, !tbaa !641
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3055
  %140 = load i8*, i8** %139, align 8, !dbg !3055, !tbaa !641
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3055
  %142 = load i8*, i8** %141, align 8, !dbg !3055, !tbaa !641
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3055
  %144 = load i8*, i8** %143, align 8, !dbg !3055, !tbaa !641
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3055
  br label %146, !dbg !3056

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3058 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3062, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %1, metadata !3063, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8* %2, metadata !3064, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %3, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8** %4, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3073
  br label %6, !dbg !3074

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3076
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3078
  %9 = load i8*, i8** %8, align 8, !dbg !3078, !tbaa !641
  %10 = icmp eq i8* %9, null, !dbg !3079
  %11 = add i64 %7, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %11, metadata !3067, metadata !DIExpression()), !dbg !3073
  br i1 %10, label %12, label %6, !dbg !3079, !llvm.loop !3081

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3083
  ret void, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3085 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3096, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %3, metadata !3099, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3100, metadata !DIExpression()), !dbg !3108
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3109
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3102, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3111
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3111
  %11 = load i32, i32* %8, align 8, !dbg !3112
  %12 = icmp ult i32 %11, 41, !dbg !3112
  br i1 %12, label %13, label %18, !dbg !3112

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3112
  %15 = sext i32 %11 to i64, !dbg !3112
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3112
  %17 = add i32 %11, 8, !dbg !3112
  store i32 %17, i32* %8, align 8, !dbg !3112
  br label %21, !dbg !3112

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3112
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3112
  store i8* %20, i8** %10, align 8, !dbg !3112
  br label %21, !dbg !3112

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3112
  %25 = load i8*, i8** %24, align 8, !dbg !3112
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3115
  store i8* %25, i8** %26, align 16, !dbg !3116, !tbaa !641
  %27 = icmp eq i8* %25, null, !dbg !3117
  br i1 %27, label %30, label %28, !dbg !3118

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 1, metadata !3101, metadata !DIExpression()), !dbg !3111
  %29 = icmp ult i32 %22, 41, !dbg !3112
  br i1 %29, label %35, label %32, !dbg !3112

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3119
  call void @llvm.dbg.value(metadata i64 %31, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %31, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3120
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3121
  ret void, !dbg !3121

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3112
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3112
  store i8* %34, i8** %10, align 8, !dbg !3112
  br label %40, !dbg !3112

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3112
  %37 = sext i32 %22 to i64, !dbg !3112
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3112
  %39 = add i32 %22, 8, !dbg !3112
  store i32 %39, i32* %8, align 8, !dbg !3112
  br label %40, !dbg !3112

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3112
  %44 = load i8*, i8** %43, align 8, !dbg !3112
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3115
  store i8* %44, i8** %45, align 8, !dbg !3116, !tbaa !641
  %46 = icmp eq i8* %44, null, !dbg !3117
  br i1 %46, label %30, label %47, !dbg !3118

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 2, metadata !3101, metadata !DIExpression()), !dbg !3111
  %48 = icmp ult i32 %41, 41, !dbg !3112
  br i1 %48, label %52, label %49, !dbg !3112

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3112
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3112
  store i8* %51, i8** %10, align 8, !dbg !3112
  br label %57, !dbg !3112

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3112
  %54 = sext i32 %41 to i64, !dbg !3112
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3112
  %56 = add i32 %41, 8, !dbg !3112
  store i32 %56, i32* %8, align 8, !dbg !3112
  br label %57, !dbg !3112

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3112
  %61 = load i8*, i8** %60, align 8, !dbg !3112
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3115
  store i8* %61, i8** %62, align 16, !dbg !3116, !tbaa !641
  %63 = icmp eq i8* %61, null, !dbg !3117
  br i1 %63, label %30, label %64, !dbg !3118

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 3, metadata !3101, metadata !DIExpression()), !dbg !3111
  %65 = icmp ult i32 %58, 41, !dbg !3112
  br i1 %65, label %69, label %66, !dbg !3112

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3112
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3112
  store i8* %68, i8** %10, align 8, !dbg !3112
  br label %74, !dbg !3112

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3112
  %71 = sext i32 %58 to i64, !dbg !3112
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3112
  %73 = add i32 %58, 8, !dbg !3112
  store i32 %73, i32* %8, align 8, !dbg !3112
  br label %74, !dbg !3112

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3112
  %78 = load i8*, i8** %77, align 8, !dbg !3112
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3115
  store i8* %78, i8** %79, align 8, !dbg !3116, !tbaa !641
  %80 = icmp eq i8* %78, null, !dbg !3117
  br i1 %80, label %30, label %81, !dbg !3118

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 4, metadata !3101, metadata !DIExpression()), !dbg !3111
  %82 = icmp ult i32 %75, 41, !dbg !3112
  br i1 %82, label %86, label %83, !dbg !3112

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3112
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3112
  store i8* %85, i8** %10, align 8, !dbg !3112
  br label %91, !dbg !3112

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3112
  %88 = sext i32 %75 to i64, !dbg !3112
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3112
  %90 = add i32 %75, 8, !dbg !3112
  store i32 %90, i32* %8, align 8, !dbg !3112
  br label %91, !dbg !3112

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3112
  %95 = load i8*, i8** %94, align 8, !dbg !3112
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3115
  store i8* %95, i8** %96, align 16, !dbg !3116, !tbaa !641
  %97 = icmp eq i8* %95, null, !dbg !3117
  br i1 %97, label %30, label %98, !dbg !3118

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 5, metadata !3101, metadata !DIExpression()), !dbg !3111
  %99 = icmp ult i32 %92, 41, !dbg !3112
  br i1 %99, label %103, label %100, !dbg !3112

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3112
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3112
  store i8* %102, i8** %10, align 8, !dbg !3112
  br label %108, !dbg !3112

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3112
  %105 = sext i32 %92 to i64, !dbg !3112
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3112
  %107 = add i32 %92, 8, !dbg !3112
  store i32 %107, i32* %8, align 8, !dbg !3112
  br label %108, !dbg !3112

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3112
  %111 = load i8*, i8** %110, align 8, !dbg !3112
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3115
  store i8* %111, i8** %112, align 8, !dbg !3116, !tbaa !641
  %113 = icmp eq i8* %111, null, !dbg !3117
  br i1 %113, label %30, label %114, !dbg !3118

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 6, metadata !3101, metadata !DIExpression()), !dbg !3111
  %115 = load i8*, i8** %10, align 8, !dbg !3112
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3112
  store i8* %116, i8** %10, align 8, !dbg !3112
  %117 = bitcast i8* %115 to i8**, !dbg !3112
  %118 = load i8*, i8** %117, align 8, !dbg !3112
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3115
  store i8* %118, i8** %119, align 16, !dbg !3116, !tbaa !641
  %120 = icmp eq i8* %118, null, !dbg !3117
  br i1 %120, label %30, label %121, !dbg !3118

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 7, metadata !3101, metadata !DIExpression()), !dbg !3111
  %122 = load i8*, i8** %10, align 8, !dbg !3112
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3112
  store i8* %123, i8** %10, align 8, !dbg !3112
  %124 = bitcast i8* %122 to i8**, !dbg !3112
  %125 = load i8*, i8** %124, align 8, !dbg !3112
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3115
  store i8* %125, i8** %126, align 8, !dbg !3116, !tbaa !641
  %127 = icmp eq i8* %125, null, !dbg !3117
  br i1 %127, label %30, label %128, !dbg !3118

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 8, metadata !3101, metadata !DIExpression()), !dbg !3111
  %129 = load i8*, i8** %10, align 8, !dbg !3112
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3112
  store i8* %130, i8** %10, align 8, !dbg !3112
  %131 = bitcast i8* %129 to i8**, !dbg !3112
  %132 = load i8*, i8** %131, align 8, !dbg !3112
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3115
  store i8* %132, i8** %133, align 16, !dbg !3116, !tbaa !641
  %134 = icmp eq i8* %132, null, !dbg !3117
  br i1 %134, label %30, label %135, !dbg !3118

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 9, metadata !3101, metadata !DIExpression()), !dbg !3111
  %136 = load i8*, i8** %10, align 8, !dbg !3112
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3112
  store i8* %137, i8** %10, align 8, !dbg !3112
  %138 = bitcast i8* %136 to i8**, !dbg !3112
  %139 = load i8*, i8** %138, align 8, !dbg !3112
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3115
  store i8* %139, i8** %140, align 8, !dbg !3116, !tbaa !641
  %141 = icmp eq i8* %139, null, !dbg !3117
  %142 = select i1 %141, i64 9, i64 10, !dbg !3118
  br label %30, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3122 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3126, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8* %1, metadata !3127, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %2, metadata !3128, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %3, metadata !3129, metadata !DIExpression()), !dbg !3140
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3141
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3141
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3130, metadata !DIExpression()), !dbg !3142
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3143
  call void @llvm.va_start(i8* nonnull %6), !dbg !3143
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3144
  call void @llvm.va_end(i8* nonnull %6), !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3146
  ret void, !dbg !3146
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3147 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.101, i64 0, i64 0), i32 5) #12, !dbg !3148
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.102, i64 0, i64 0)) #12, !dbg !3148
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.103, i64 0, i64 0), i32 5) #12, !dbg !3149
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.104, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.105, i64 0, i64 0)) #12, !dbg !3149
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.106, i64 0, i64 0), i32 5) #12, !dbg !3150
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3150, !tbaa !641
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3150
  ret void, !dbg !3151
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3157, metadata !DIExpression()), !dbg !3159
  %3 = udiv i64 9223372036854775807, %1, !dbg !3160
  %4 = icmp ult i64 %3, %0, !dbg !3160
  br i1 %4, label %5, label %6, !dbg !3162

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3163
  unreachable, !dbg !3163

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %7, metadata !3165, metadata !DIExpression()) #12, !dbg !3172
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %8, metadata !3171, metadata !DIExpression()) #12, !dbg !3175
  %9 = icmp eq i8* %8, null, !dbg !3176
  %10 = icmp ne i64 %7, 0, !dbg !3178
  %11 = and i1 %10, %9, !dbg !3179
  br i1 %11, label %12, label %13, !dbg !3179

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3180
  unreachable, !dbg !3180

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3181
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3166 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3165, metadata !DIExpression()), !dbg !3182
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()), !dbg !3184
  %3 = icmp eq i8* %2, null, !dbg !3185
  %4 = icmp ne i64 %0, 0, !dbg !3186
  %5 = and i1 %4, %3, !dbg !3187
  br i1 %5, label %6, label %7, !dbg !3187

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3188
  unreachable, !dbg !3188

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3189
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3194, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %2, metadata !3196, metadata !DIExpression()), !dbg !3199
  %4 = udiv i64 9223372036854775807, %2, !dbg !3200
  %5 = icmp ult i64 %4, %1, !dbg !3200
  br i1 %5, label %6, label %7, !dbg !3202

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3203
  unreachable, !dbg !3203

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #12, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %8, metadata !3210, metadata !DIExpression()) #12, !dbg !3213
  %9 = icmp eq i64 %8, 0, !dbg !3214
  %10 = icmp ne i8* %0, null, !dbg !3216
  %11 = and i1 %10, %9, !dbg !3217
  br i1 %11, label %12, label %13, !dbg !3217

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3218
  br label %19, !dbg !3220

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %14, metadata !3205, metadata !DIExpression()) #12, !dbg !3211
  %15 = icmp eq i8* %14, null, !dbg !3222
  %16 = icmp ne i64 %8, 0, !dbg !3224
  %17 = and i1 %16, %15, !dbg !3225
  br i1 %17, label %18, label %19, !dbg !3225

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3226
  unreachable, !dbg !3226

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3227
  ret i8* %20, !dbg !3228
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3230
  %3 = icmp eq i64 %1, 0, !dbg !3231
  %4 = icmp ne i8* %0, null, !dbg !3232
  %5 = and i1 %4, %3, !dbg !3233
  br i1 %5, label %6, label %7, !dbg !3233

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3234
  br label %13, !dbg !3235

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %8, metadata !3205, metadata !DIExpression()), !dbg !3229
  %9 = icmp eq i8* %8, null, !dbg !3237
  %10 = icmp ne i64 %1, 0, !dbg !3238
  %11 = and i1 %10, %9, !dbg !3239
  br i1 %11, label %12, label %13, !dbg !3239

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3240
  unreachable, !dbg !3240

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3241
  ret i8* %14, !dbg !3242
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !184 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !189, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64* %1, metadata !190, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %2, metadata !191, metadata !DIExpression()), !dbg !3245
  %4 = load i64, i64* %1, align 8, !dbg !3246, !tbaa !2285
  call void @llvm.dbg.value(metadata i64 %4, metadata !192, metadata !DIExpression()), !dbg !3247
  %5 = icmp eq i8* %0, null, !dbg !3248
  br i1 %5, label %6, label %20, !dbg !3250

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3251
  br i1 %7, label %8, label %13, !dbg !3254

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %9, metadata !192, metadata !DIExpression()), !dbg !3247
  %10 = icmp ugt i64 %2, 128, !dbg !3257
  %11 = zext i1 %10 to i64, !dbg !3257
  %12 = add nuw nsw i64 %9, %11, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %12, metadata !192, metadata !DIExpression()), !dbg !3247
  br label %13, !dbg !3259

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3260
  call void @llvm.dbg.value(metadata i64 %14, metadata !192, metadata !DIExpression()), !dbg !3247
  %15 = udiv i64 9223372036854775807, %2, !dbg !3261
  %16 = icmp ult i64 %15, %14, !dbg !3261
  br i1 %16, label %19, label %17, !dbg !3263

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !192, metadata !DIExpression()), !dbg !3247
  store i64 %14, i64* %1, align 8, !dbg !3264, !tbaa !2285
  %18 = mul i64 %14, %2, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #12, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %28, metadata !3210, metadata !DIExpression()) #12, !dbg !3268
  br label %31, !dbg !3269

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3270
  unreachable, !dbg !3270

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3271
  %22 = icmp ugt i64 %21, %4, !dbg !3274
  br i1 %22, label %24, label %23, !dbg !3275

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3276
  unreachable, !dbg !3276

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3277
  %26 = add i64 %4, 1, !dbg !3278
  %27 = add i64 %26, %25, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %27, metadata !192, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %27, metadata !192, metadata !DIExpression()), !dbg !3247
  store i64 %27, i64* %1, align 8, !dbg !3264, !tbaa !2285
  %28 = mul i64 %27, %2, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #12, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %28, metadata !3210, metadata !DIExpression()) #12, !dbg !3268
  %29 = icmp eq i64 %28, 0, !dbg !3280
  br i1 %29, label %30, label %31, !dbg !3269

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3281
  br label %38, !dbg !3282

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %33, metadata !3205, metadata !DIExpression()) #12, !dbg !3266
  %34 = icmp eq i8* %33, null, !dbg !3284
  %35 = icmp ne i64 %32, 0, !dbg !3285
  %36 = and i1 %35, %34, !dbg !3286
  br i1 %36, label %37, label %38, !dbg !3286

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3287
  unreachable, !dbg !3287

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3288
  ret i8* %39, !dbg !3289
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3290 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %0, metadata !3165, metadata !DIExpression()) #12, !dbg !3294
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()) #12, !dbg !3297
  %3 = icmp eq i8* %2, null, !dbg !3298
  %4 = icmp ne i64 %0, 0, !dbg !3299
  %5 = and i1 %4, %3, !dbg !3300
  br i1 %5, label %6, label %7, !dbg !3300

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3301
  unreachable, !dbg !3301

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64* %1, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %0, metadata !189, metadata !DIExpression()) #12, !dbg !3311
  call void @llvm.dbg.value(metadata i64* %1, metadata !190, metadata !DIExpression()) #12, !dbg !3313
  call void @llvm.dbg.value(metadata i64 1, metadata !191, metadata !DIExpression()) #12, !dbg !3314
  %3 = load i64, i64* %1, align 8, !dbg !3315, !tbaa !2285
  call void @llvm.dbg.value(metadata i64 %3, metadata !192, metadata !DIExpression()) #12, !dbg !3316
  %4 = icmp eq i8* %0, null, !dbg !3317
  br i1 %4, label %5, label %12, !dbg !3318

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3319
  br i1 %6, label %9, label %7, !dbg !3320

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !192, metadata !DIExpression()) #12, !dbg !3316
  %8 = icmp slt i64 %3, 0, !dbg !3321
  br i1 %8, label %11, label %9, !dbg !3322

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !192, metadata !DIExpression()) #12, !dbg !3316
  store i64 %10, i64* %1, align 8, !dbg !3323, !tbaa !2285
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #12, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %18, metadata !3210, metadata !DIExpression()) #12, !dbg !3326
  br label %21, !dbg !3327

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3328
  unreachable, !dbg !3328

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3329
  br i1 %13, label %15, label %14, !dbg !3330

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3331
  unreachable, !dbg !3331

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3332
  %17 = add i64 %3, 1, !dbg !3333
  %18 = add i64 %17, %16, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %18, metadata !192, metadata !DIExpression()) #12, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %18, metadata !192, metadata !DIExpression()) #12, !dbg !3316
  store i64 %18, i64* %1, align 8, !dbg !3323, !tbaa !2285
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #12, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %18, metadata !3210, metadata !DIExpression()) #12, !dbg !3326
  %19 = icmp eq i64 %18, 0, !dbg !3335
  br i1 %19, label %20, label %21, !dbg !3327

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3336
  br label %28, !dbg !3337

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %23, metadata !3205, metadata !DIExpression()) #12, !dbg !3324
  %24 = icmp eq i8* %23, null, !dbg !3339
  %25 = icmp ne i64 %22, 0, !dbg !3340
  %26 = and i1 %25, %24, !dbg !3341
  br i1 %26, label %27, label %28, !dbg !3341

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3342
  unreachable, !dbg !3342

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3343
  ret i8* %29, !dbg !3344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3345 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %0, metadata !3165, metadata !DIExpression()) #12, !dbg !3349
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()) #12, !dbg !3352
  %3 = icmp eq i8* %2, null, !dbg !3353
  %4 = icmp ne i64 %0, 0, !dbg !3354
  %5 = and i1 %4, %3, !dbg !3355
  br i1 %5, label %6, label %7, !dbg !3355

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3356
  unreachable, !dbg !3356

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3357
  ret i8* %2, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3359 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3362, metadata !DIExpression()), !dbg !3365
  %3 = udiv i64 9223372036854775807, %1, !dbg !3366
  %4 = icmp ult i64 %3, %0, !dbg !3366
  br i1 %4, label %8, label %5, !dbg !3368

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %6, metadata !3363, metadata !DIExpression()), !dbg !3370
  %7 = icmp eq i8* %6, null, !dbg !3371
  br i1 %7, label %8, label %9, !dbg !3372

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3373
  unreachable, !dbg !3373

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()) #12, !dbg !3385
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %3, metadata !3171, metadata !DIExpression()) #12, !dbg !3388
  %4 = icmp eq i8* %3, null, !dbg !3389
  %5 = icmp ne i64 %1, 0, !dbg !3390
  %6 = and i1 %5, %4, !dbg !3391
  br i1 %6, label %7, label %8, !dbg !3391

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3392
  unreachable, !dbg !3392

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3393
  ret i8* %3, !dbg !3394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()), !dbg !3398
  %2 = tail call i64 @strlen(i8* %0) #10, !dbg !3399
  %3 = add i64 %2, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()) #12, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %3, metadata !3382, metadata !DIExpression()) #12, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %3, metadata !3165, metadata !DIExpression()) #12, !dbg !3404
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %4, metadata !3171, metadata !DIExpression()) #12, !dbg !3407
  %5 = icmp eq i8* %4, null, !dbg !3408
  %6 = icmp ne i64 %3, 0, !dbg !3409
  %7 = and i1 %6, %5, !dbg !3410
  br i1 %7, label %8, label %9, !dbg !3410

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3411
  unreachable, !dbg !3411

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3412
  ret i8* %4, !dbg !3413
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3414 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3416, !tbaa !748
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #12, !dbg !3417
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #12, !dbg !3418
  tail call void @abort() #15, !dbg !3419
  unreachable, !dbg !3419
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3420 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3423, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3430
  %3 = icmp eq i64 %0, 0, !dbg !3431
  %4 = icmp eq i64 %1, 0, !dbg !3432
  %5 = or i1 %3, %4, !dbg !3433
  br i1 %5, label %12, label %6, !dbg !3433

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %7, metadata !3426, metadata !DIExpression()), !dbg !3435
  %8 = udiv i64 %7, %1, !dbg !3436
  %9 = icmp eq i64 %8, %0, !dbg !3438
  br i1 %9, label %12, label %10, !dbg !3439

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3440
  store i32 12, i32* %11, align 4, !dbg !3442, !tbaa !748
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3423, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %13, metadata !3424, metadata !DIExpression()), !dbg !3430
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %15, metadata !3425, metadata !DIExpression()), !dbg !3444
  br label %16, !dbg !3445

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3446
  ret i8* %17, !dbg !3447
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3448 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3465, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3466, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %2, metadata !3467, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3468, metadata !DIExpression()), !dbg !3477
  %6 = bitcast i32* %5 to i8*, !dbg !3478
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3478
  %7 = icmp eq i32* %0, null, !dbg !3479
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3481
  call void @llvm.dbg.value(metadata i32* %8, metadata !3465, metadata !DIExpression()), !dbg !3474
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %9, metadata !3469, metadata !DIExpression()), !dbg !3483
  %10 = icmp ugt i64 %9, -3, !dbg !3484
  %11 = icmp ne i64 %2, 0, !dbg !3485
  %12 = and i1 %11, %10, !dbg !3486
  br i1 %12, label %13, label %18, !dbg !3486

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3487
  br i1 %14, label %18, label %15, !dbg !3488

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3489, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %16, metadata !3471, metadata !DIExpression()), !dbg !3490
  %17 = zext i8 %16 to i32, !dbg !3491
  store i32 %17, i32* %8, align 4, !dbg !3492, !tbaa !748
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3494
  ret i64 %19, !dbg !3494
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #7 !dbg !3495 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32* %1, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()) #12, !dbg !3524
  %5 = load i8, i8* %0, align 1, !dbg !3526, !tbaa !919
  %6 = sext i8 %5 to i32, !dbg !3526
  %7 = add nsw i32 %6, -48, !dbg !3526
  %8 = icmp ult i32 %7, 10, !dbg !3526
  br i1 %8, label %9, label %20, !dbg !3527

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !3528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #12, !dbg !3528
  call void @llvm.dbg.value(metadata i8** %3, metadata !3508, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3529
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #12, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %11, metadata !3511, metadata !DIExpression()) #12, !dbg !3531
  %12 = load i8*, i8** %3, align 8, !dbg !3532, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %12, metadata !3508, metadata !DIExpression()) #12, !dbg !3529
  %13 = load i8, i8* %12, align 1, !dbg !3534, !tbaa !919
  %14 = icmp ne i8 %13, 0, !dbg !3534
  %15 = icmp sgt i64 %11, 64, !dbg !3535
  %16 = trunc i64 %11 to i32, !dbg !3536
  %17 = or i1 %15, %14, !dbg !3537
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12, !dbg !3538
  br i1 %17, label %73, label %74

; <label>:18:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i32 undef, metadata !3512, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !3539
  %19 = icmp ult i64 %25, 35, !dbg !3540
  br i1 %19, label %20, label %30, !dbg !3543, !llvm.loop !3544

; <label>:20:                                     ; preds = %2, %18
  %21 = phi i64 [ %25, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  %22 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %21, i32 1, i64 0, !dbg !3547
  %23 = tail call i32 @strcmp(i8* nonnull %22, i8* %0) #10, !dbg !3549
  %24 = icmp eq i32 %23, 0, !dbg !3550
  %25 = add nuw nsw i64 %21, 1, !dbg !3551
  call void @llvm.dbg.value(metadata i32 undef, metadata !3512, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !3539
  br i1 %24, label %26, label %18, !dbg !3552

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  %27 = and i64 %21, 4294967295, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %21, metadata !3512, metadata !DIExpression()) #12, !dbg !3539
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !3554
  %29 = load i32, i32* %28, align 4, !dbg !3554, !tbaa !3555
  br label %74

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !3557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3557
  %32 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %32, metadata !3516, metadata !DIExpression()) #12, !dbg !3559
  %33 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %33, metadata !3517, metadata !DIExpression()) #12, !dbg !3561
  %34 = icmp sgt i32 %32, 0, !dbg !3562
  br i1 %34, label %35, label %50, !dbg !3563

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i64 5) #10, !dbg !3564
  %37 = icmp eq i32 %36, 0, !dbg !3565
  br i1 %37, label %38, label %50, !dbg !3566

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3567
  call void @llvm.dbg.value(metadata i8** %4, metadata !3514, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3568
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #12, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %40, metadata !3518, metadata !DIExpression()) #12, !dbg !3570
  %41 = load i8*, i8** %4, align 8, !dbg !3571, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %41, metadata !3514, metadata !DIExpression()) #12, !dbg !3568
  %42 = load i8, i8* %41, align 1, !dbg !3573, !tbaa !919
  %43 = icmp eq i8 %42, 0, !dbg !3573
  %44 = icmp sgt i64 %40, -1, !dbg !3574
  %45 = and i1 %44, %43, !dbg !3575
  br i1 %45, label %46, label %67, !dbg !3575

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3576
  %48 = sext i32 %47 to i64, !dbg !3577
  %49 = icmp sgt i64 %40, %48, !dbg !3578
  br i1 %49, label %67, label %68, !dbg !3579

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3580
  br i1 %51, label %52, label %67, !dbg !3581

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 5) #10, !dbg !3582
  %54 = icmp eq i32 %53, 0, !dbg !3583
  br i1 %54, label %55, label %67, !dbg !3584

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3585
  call void @llvm.dbg.value(metadata i8** %4, metadata !3514, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3568
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #12, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %57, metadata !3521, metadata !DIExpression()) #12, !dbg !3587
  %58 = load i8*, i8** %4, align 8, !dbg !3588, !tbaa !641
  call void @llvm.dbg.value(metadata i8* %58, metadata !3514, metadata !DIExpression()) #12, !dbg !3568
  %59 = load i8, i8* %58, align 1, !dbg !3590, !tbaa !919
  %60 = icmp eq i8 %59, 0, !dbg !3590
  br i1 %60, label %61, label %67, !dbg !3591

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3592
  %63 = sext i32 %62 to i64, !dbg !3593
  %64 = icmp sge i64 %57, %63, !dbg !3594
  %65 = icmp slt i64 %57, 1, !dbg !3595
  %66 = and i1 %64, %65, !dbg !3596
  br i1 %66, label %68, label %67, !dbg !3596

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3597
  br label %73

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !3598
  %72 = add i32 %70, %71, !dbg !3598
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3597
  br label %74

; <label>:73:                                     ; preds = %67, %9
  br label %74, !dbg !3599

; <label>:74:                                     ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %16, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !3600
  store i32 %75, i32* %1, align 4, !dbg !3601, !tbaa !748
  %76 = ashr i32 %75, 31, !dbg !3602
  ret i32 %76, !dbg !3603
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32, i8*) local_unnamed_addr #7 !dbg !3604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3608, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3609, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 0, metadata !3610, metadata !DIExpression()), !dbg !3618
  br label %9, !dbg !3619

; <label>:3:                                      ; preds = %9
  call void @llvm.dbg.value(metadata i32 %15, metadata !3610, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %15, metadata !3610, metadata !DIExpression()), !dbg !3618
  %4 = zext i32 %15 to i64, !dbg !3621
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !3623
  %6 = load i32, i32* %5, align 4, !dbg !3623, !tbaa !3555
  %7 = icmp eq i32 %6, %0, !dbg !3625
  %8 = add nuw nsw i32 %10, 2, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %8, metadata !3610, metadata !DIExpression()), !dbg !3618
  br i1 %7, label %16, label %45, !dbg !3627

; <label>:9:                                      ; preds = %63, %2
  %10 = phi i32 [ 0, %2 ], [ %62, %63 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !3610, metadata !DIExpression()), !dbg !3618
  %11 = zext i32 %10 to i64, !dbg !3621
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0, !dbg !3623
  %13 = load i32, i32* %12, align 4, !dbg !3623, !tbaa !3555
  %14 = icmp eq i32 %13, %0, !dbg !3625
  %15 = add nuw nsw i32 %10, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %15, metadata !3610, metadata !DIExpression()), !dbg !3618
  br i1 %14, label %16, label %3, !dbg !3627

; <label>:16:                                     ; preds = %57, %51, %45, %3, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %3 ], [ %8, %45 ], [ %50, %51 ], [ %56, %57 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !3610, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %10, metadata !3610, metadata !DIExpression()), !dbg !3618
  %18 = zext i32 %17 to i64, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %10, metadata !3610, metadata !DIExpression()), !dbg !3618
  %19 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %18, i32 1, i64 0, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %1, metadata !3630, metadata !DIExpression()) #12, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %19, metadata !3637, metadata !DIExpression()) #12, !dbg !3638
  %20 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false, i1 true) #12, !dbg !3640
  %21 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %19, i64 %20) #12, !dbg !3641
  br label %43, !dbg !3642

; <label>:22:                                     ; preds = %63
  %23 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %23, metadata !3611, metadata !DIExpression()), !dbg !3644
  %24 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %24, metadata !3613, metadata !DIExpression()), !dbg !3646
  %25 = icmp sgt i32 %23, %0, !dbg !3647
  %26 = icmp slt i32 %24, %0, !dbg !3649
  %27 = or i1 %25, %26, !dbg !3650
  br i1 %27, label %43, label %28, !dbg !3650

; <label>:28:                                     ; preds = %22
  %29 = sub nsw i32 %24, %23, !dbg !3651
  %30 = sdiv i32 %29, 2, !dbg !3653
  %31 = add nsw i32 %30, %23, !dbg !3654
  %32 = icmp slt i32 %31, %0, !dbg !3655
  br i1 %32, label %34, label %33, !dbg !3656

; <label>:33:                                     ; preds = %28
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i64 6, i1 false), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %23, metadata !3614, metadata !DIExpression()), !dbg !3659
  br label %35, !dbg !3660

; <label>:34:                                     ; preds = %28
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6, i1 false), !dbg !3661
  call void @llvm.dbg.value(metadata i32 %24, metadata !3614, metadata !DIExpression()), !dbg !3659
  br label %35

; <label>:35:                                     ; preds = %34, %33
  %36 = phi i32 [ %23, %33 ], [ %24, %34 ], !dbg !3663
  call void @llvm.dbg.value(metadata i32 %36, metadata !3614, metadata !DIExpression()), !dbg !3659
  %37 = sub nsw i32 %0, %36, !dbg !3664
  call void @llvm.dbg.value(metadata i32 %37, metadata !3615, metadata !DIExpression()), !dbg !3665
  %38 = icmp eq i32 %37, 0, !dbg !3666
  br i1 %38, label %43, label %39, !dbg !3668

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3669
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %40, i1 false, i1 true), !dbg !3669
  %42 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %40, i32 1, i64 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.131, i64 0, i64 0), i32 %37) #12, !dbg !3669
  br label %43, !dbg !3669

; <label>:43:                                     ; preds = %22, %35, %39, %16
  %44 = phi i32 [ 0, %16 ], [ -1, %22 ], [ 0, %35 ], [ 0, %39 ], !dbg !3670
  ret i32 %44, !dbg !3671

; <label>:45:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %8, metadata !3610, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %8, metadata !3610, metadata !DIExpression()), !dbg !3618
  %46 = zext i32 %8 to i64, !dbg !3621
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !3623
  %48 = load i32, i32* %47, align 4, !dbg !3623, !tbaa !3555
  %49 = icmp eq i32 %48, %0, !dbg !3625
  %50 = add nuw nsw i32 %10, 3, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %50, metadata !3610, metadata !DIExpression()), !dbg !3618
  br i1 %49, label %16, label %51, !dbg !3627

; <label>:51:                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32 %50, metadata !3610, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %50, metadata !3610, metadata !DIExpression()), !dbg !3618
  %52 = zext i32 %50 to i64, !dbg !3621
  %53 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %52, i32 0, !dbg !3623
  %54 = load i32, i32* %53, align 4, !dbg !3623, !tbaa !3555
  %55 = icmp eq i32 %54, %0, !dbg !3625
  %56 = add nuw nsw i32 %10, 4, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %56, metadata !3610, metadata !DIExpression()), !dbg !3618
  br i1 %55, label %16, label %57, !dbg !3627

; <label>:57:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32 %56, metadata !3610, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %56, metadata !3610, metadata !DIExpression()), !dbg !3618
  %58 = zext i32 %56 to i64, !dbg !3621
  %59 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %58, i32 0, !dbg !3623
  %60 = load i32, i32* %59, align 4, !dbg !3623, !tbaa !3555
  %61 = icmp eq i32 %60, %0, !dbg !3625
  %62 = add nuw nsw i32 %10, 5, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %62, metadata !3610, metadata !DIExpression()), !dbg !3618
  br i1 %61, label %16, label %63, !dbg !3627

; <label>:63:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i32 %62, metadata !3610, metadata !DIExpression()), !dbg !3618
  %64 = icmp ult i32 %62, 35, !dbg !3672
  br i1 %64, label %9, label %22, !dbg !3619, !llvm.loop !3673
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3675 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3714, metadata !DIExpression()), !dbg !3719
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3720
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3721, metadata !DIExpression()), !dbg !3725
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3727
  %4 = load i32, i32* %3, align 8, !dbg !3727, !tbaa !3728
  %5 = and i32 %4, 32, !dbg !3727
  %6 = icmp eq i32 %5, 0, !dbg !3730
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3731
  %8 = icmp ne i32 %7, 0, !dbg !3732
  br i1 %6, label %9, label %19, !dbg !3733

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3735
  %11 = xor i1 %8, true, !dbg !3736
  %12 = or i1 %10, %11, !dbg !3736
  %13 = sext i1 %8 to i32, !dbg !3736
  br i1 %12, label %22, label %14, !dbg !3736

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3737
  %16 = load i32, i32* %15, align 4, !dbg !3737, !tbaa !748
  %17 = icmp ne i32 %16, 9, !dbg !3738
  %18 = sext i1 %17 to i32, !dbg !3739
  br label %22, !dbg !3739

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3740

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3742
  store i32 0, i32* %21, align 4, !dbg !3744, !tbaa !748
  br label %22, !dbg !3742

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3745
  ret i32 %23, !dbg !3746
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3747 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8 1, metadata !3753, metadata !DIExpression()), !dbg !3756
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %2, metadata !3754, metadata !DIExpression()), !dbg !3758
  %3 = icmp eq i8* %2, null, !dbg !3759
  br i1 %3, label %11, label %4, !dbg !3761

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0)) #10, !dbg !3762
  %6 = icmp eq i32 %5, 0, !dbg !3767
  br i1 %6, label %10, label %7, !dbg !3768

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0)) #10, !dbg !3769
  %9 = icmp eq i32 %8, 0, !dbg !3770
  br i1 %9, label %10, label %11, !dbg !3771

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3753, metadata !DIExpression()), !dbg !3756
  br label %11, !dbg !3772

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3773
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3774 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3779, metadata !DIExpression()), !dbg !3781
  %2 = icmp eq i8* %1, null, !dbg !3782
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), i8* %1, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %3, metadata !3779, metadata !DIExpression()), !dbg !3781
  %4 = load i8, i8* %3, align 1, !dbg !3785, !tbaa !919
  %5 = icmp eq i8 %4, 0, !dbg !3789
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %3, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %6, metadata !3779, metadata !DIExpression()), !dbg !3781
  ret i8* %6, !dbg !3791
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3792 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3831, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3832, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 0, metadata !3834, metadata !DIExpression()), !dbg !3837
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %2, metadata !3833, metadata !DIExpression()), !dbg !3839
  %3 = icmp slt i32 %2, 0, !dbg !3840
  br i1 %3, label %4, label %6, !dbg !3842

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3843
  br label %24, !dbg !3844

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3845
  %8 = icmp eq i32 %7, 0, !dbg !3845
  br i1 %8, label %13, label %9, !dbg !3847

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3848
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3849
  %12 = icmp eq i64 %11, -1, !dbg !3850
  br i1 %12, label %16, label %13, !dbg !3851

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3852
  %15 = icmp eq i32 %14, 0, !dbg !3852
  br i1 %15, label %16, label %18, !dbg !3853

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3832, metadata !DIExpression()), !dbg !3836
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %21, metadata !3834, metadata !DIExpression()), !dbg !3837
  br label %24, !dbg !3855

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3856
  %20 = load i32, i32* %19, align 4, !dbg !3856, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %20, metadata !3832, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 %20, metadata !3832, metadata !DIExpression()), !dbg !3836
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %21, metadata !3834, metadata !DIExpression()), !dbg !3837
  %22 = icmp eq i32 %20, 0, !dbg !3857
  br i1 %22, label %24, label %23, !dbg !3855

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3859, !tbaa !748
  call void @llvm.dbg.value(metadata i32 -1, metadata !3834, metadata !DIExpression()), !dbg !3837
  br label %24, !dbg !3861

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3862
  ret i32 %25, !dbg !3863
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3864 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3903, metadata !DIExpression()), !dbg !3904
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3905
  br i1 %2, label %6, label %3, !dbg !3907

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3908
  %5 = icmp eq i32 %4, 0, !dbg !3908
  br i1 %5, label %6, label %8, !dbg !3909

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3910
  br label %17, !dbg !3911

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3912, metadata !DIExpression()) #12, !dbg !3917
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3919
  %10 = load i32, i32* %9, align 8, !dbg !3919, !tbaa !3728
  %11 = and i32 %10, 256, !dbg !3921
  %12 = icmp eq i32 %11, 0, !dbg !3921
  br i1 %12, label %15, label %13, !dbg !3922

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3923
  br label %15, !dbg !3923

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3924
  br label %17, !dbg !3925

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3926
  ret i32 %18, !dbg !3927
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3928 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3968, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i64 %1, metadata !3969, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32 %2, metadata !3970, metadata !DIExpression()), !dbg !3976
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3977
  %5 = load i8*, i8** %4, align 8, !dbg !3977, !tbaa !3978
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3979
  %7 = load i8*, i8** %6, align 8, !dbg !3979, !tbaa !3980
  %8 = icmp eq i8* %5, %7, !dbg !3981
  br i1 %8, label %9, label %28, !dbg !3982

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3983
  %11 = load i8*, i8** %10, align 8, !dbg !3983, !tbaa !3984
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3985
  %13 = load i8*, i8** %12, align 8, !dbg !3985, !tbaa !3986
  %14 = icmp eq i8* %11, %13, !dbg !3987
  br i1 %14, label %15, label %28, !dbg !3988

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3989
  %17 = load i8*, i8** %16, align 8, !dbg !3989, !tbaa !3990
  %18 = icmp eq i8* %17, null, !dbg !3991
  br i1 %18, label %19, label %28, !dbg !3992

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3993
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %21, metadata !3971, metadata !DIExpression()), !dbg !3995
  %22 = icmp eq i64 %21, -1, !dbg !3996
  br i1 %22, label %30, label %23, !dbg !3998

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3999
  %25 = load i32, i32* %24, align 8, !dbg !4000, !tbaa !3728
  %26 = and i32 %25, -17, !dbg !4000
  store i32 %26, i32* %24, align 8, !dbg !4000, !tbaa !3728
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4001
  store i64 %21, i64* %27, align 8, !dbg !4002, !tbaa !4003
  br label %30, !dbg !4004

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4005
  br label %30, !dbg !4006

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4007
  ret i32 %31, !dbg !4008
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !169, !33, !38, !47, !54, !61, !171, !147, !179, !196, !198, !200, !156, !203, !205, !207, !596, !598, !600}
!llvm.ident = !{!602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602}
!llvm.module.flags = !{!603, !604, !605, !606, !607}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !3, line: 54, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/kill.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!0, !11}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 60, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1536, elements: !26)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !16, line: 50, size: 256, elements: !17)
!16 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!17 = !{!18, !21, !23, !25}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !16, line: 52, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !15, file: !16, line: 55, baseType: !22, size: 32, offset: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !15, file: !16, line: 56, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !15, file: !16, line: 57, baseType: !22, size: 32, offset: 192)
!26 = !{!27}
!27 = !DISubrange(count: 6)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 904, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 113)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "Version", scope: !33, file: !34, line: 2, type: !19, isLocal: false, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35)
!34 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!35 = !{!31}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "file_name", scope: !38, file: !43, line: 46, type: !19, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !40)
!39 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!40 = !{!36, !41}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !38, file: !43, line: 56, type: !44, isLocal: true, isDefinition: true)
!43 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "exit_failure", scope: !47, file: !50, line: 24, type: !51, isLocal: false, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !49)
!48 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!49 = !{!45}
!50 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "program_name", scope: !54, file: !58, line: 33, type: !19, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !57)
!55 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!56 = !{!8, !6}
!57 = !{!52}
!58 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !61, file: !106, line: 85, type: !141, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !98, globals: !103)
!62 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!63 = !{!64, !78, !83}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !65, line: 32, baseType: !9, size: 32, elements: !66)
!65 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!67 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!73 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!74 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!75 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!76 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!77 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !65, line: 242, baseType: !9, size: 32, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 46, baseType: !9, size: 32, elements: !85)
!84 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!98 = !{!22, !99, !100, !6}
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!103 = !{!59, !104, !111, !123, !125, !130, !137, !139}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !61, file: !106, line: 101, type: !107, isLocal: false, isDefinition: true)
!106 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 320, elements: !109)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!109 = !{!110}
!110 = !DISubrange(count: 10)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !61, file: !106, line: 1052, type: !113, isLocal: false, isDefinition: true)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !106, line: 65, size: 448, elements: !114)
!114 = !{!115, !116, !117, !121, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !113, file: !106, line: 68, baseType: !64, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !106, line: 71, baseType: !22, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !113, file: !106, line: 75, baseType: !118, size: 256, offset: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !113, file: !106, line: 78, baseType: !19, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !113, file: !106, line: 81, baseType: !19, size: 64, offset: 384)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !61, file: !106, line: 116, type: !113, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "slot0", scope: !61, file: !106, line: 842, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 256)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "slotvec", scope: !61, file: !106, line: 845, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !106, line: 834, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !133, file: !106, line: 836, baseType: !100, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !106, line: 837, baseType: !6, size: 64, offset: 64)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "nslots", scope: !61, file: !106, line: 843, type: !22, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "slotvec0", scope: !61, file: !106, line: 844, type: !133, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 704, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!143 = !{!144}
!144 = !DISubrange(count: 11)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !147, file: !150, line: 26, type: !151, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !149)
!148 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !{!145}
!150 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 376, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 47)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "numname_table", scope: !156, file: !160, line: 41, type: !161, isLocal: true, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !158, globals: !159)
!157 = !DIFile(filename: "./lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !{!9}
!159 = !{!154}
!160 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 3360, elements: !167)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !160, line: 41, size: 96, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !162, file: !160, line: 41, baseType: !22, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !160, line: 41, baseType: !166, size: 64, offset: 32)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !119)
!167 = !{!168}
!168 = !DISubrange(count: 35)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !158)
!170 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !178)
!172 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!173 = !{!174}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 41, baseType: !9, size: 32, elements: !176)
!175 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!176 = !{!177}
!177 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!178 = !{!8}
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !181, retainedTypes: !195)
!180 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!181 = !{!182}
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !184, file: !183, line: 186, baseType: !9, size: 32, elements: !193)
!183 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!184 = distinct !DISubprogram(name: "x2nrealloc", scope: !183, file: !183, line: 174, type: !185, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !188)
!185 = !DISubroutineType(types: !186)
!186 = !{!8, !8, !187, !100}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!188 = !{!189, !190, !191, !192}
!189 = !DILocalVariable(name: "p", arg: 1, scope: !184, file: !183, line: 174, type: !8)
!190 = !DILocalVariable(name: "pn", arg: 2, scope: !184, file: !183, line: 174, type: !187)
!191 = !DILocalVariable(name: "s", arg: 3, scope: !184, file: !183, line: 174, type: !100)
!192 = !DILocalVariable(name: "n", scope: !184, file: !183, line: 176, type: !100)
!193 = !{!194}
!194 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!195 = !{!100, !6, !8}
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!197 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178)
!199 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202)
!201 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = !{!100}
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!204 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!206 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, retainedTypes: !178)
!208 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!209 = !{!210}
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !211, line: 41, baseType: !9, size: 32, elements: !212)
!211 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!213 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!217 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!218 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!219 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!224 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!225 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!226 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!251 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!252 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!253 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!254 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!255 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!256 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!257 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!258 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!259 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!260 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!261 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!262 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!321 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!482 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!483 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!484 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!485 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!486 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!487 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!489 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!490 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!491 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!492 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!493 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!494 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!495 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!500 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!502 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!528 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!529 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!530 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!531 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!532 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!537 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!538 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!539 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!540 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!597 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178)
!599 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178)
!601 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!602 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!603 = !{i32 2, !"Dwarf Version", i32 4}
!604 = !{i32 2, !"Debug Info Version", i32 3}
!605 = !{i32 1, !"wchar_size", i32 4}
!606 = !{i32 7, !"PIC Level", i32 2}
!607 = !{i32 7, !"PIE Level", i32 2}
!608 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 71, type: !609, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !22}
!611 = !{!612}
!612 = !DILocalVariable(name: "status", arg: 1, scope: !608, file: !3, line: 71, type: !22)
!613 = !DILocalVariable(name: "infomap", scope: !614, file: !615, line: 632, type: !629)
!614 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !615, file: !615, line: 630, type: !616, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !618)
!615 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!616 = !DISubroutineType(types: !617)
!617 = !{null, !19}
!618 = !{!619, !613, !620, !621, !628}
!619 = !DILocalVariable(name: "program", arg: 1, scope: !614, file: !615, line: 630, type: !19)
!620 = !DILocalVariable(name: "node", scope: !614, file: !615, line: 642, type: !19)
!621 = !DILocalVariable(name: "map_prog", scope: !614, file: !615, line: 643, type: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !614, file: !615, line: 632, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !624, file: !615, line: 632, baseType: !19, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !624, file: !615, line: 632, baseType: !19, size: 64, offset: 64)
!628 = !DILocalVariable(name: "lc_messages", scope: !614, file: !615, line: 655, type: !19)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 896, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 7)
!632 = !DILocation(line: 632, column: 67, scope: !614, inlinedAt: !633)
!633 = distinct !DILocation(line: 103, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 76, column: 5)
!635 = distinct !DILexicalBlock(scope: !608, file: !3, line: 73, column: 7)
!636 = !DILocation(line: 71, column: 12, scope: !608)
!637 = !DILocation(line: 73, column: 14, scope: !635)
!638 = !DILocation(line: 73, column: 7, scope: !608)
!639 = !DILocation(line: 74, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 74, column: 5)
!641 = !{!642, !642, i64 0}
!642 = !{!"any pointer", !643, i64 0}
!643 = !{!"omnipotent char", !644, i64 0}
!644 = !{!"Simple C/C++ TBAA"}
!645 = !DILocation(line: 77, column: 7, scope: !634)
!646 = !DILocation(line: 83, column: 7, scope: !634)
!647 = !DILocation(line: 587, column: 3, scope: !648, inlinedAt: !651)
!648 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !615, file: !615, line: 585, type: !649, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!649 = !DISubroutineType(types: !650)
!650 = !{null}
!651 = distinct !DILocation(line: 87, column: 7, scope: !634)
!652 = !DILocation(line: 89, column: 7, scope: !634)
!653 = !DILocation(line: 95, column: 7, scope: !634)
!654 = !DILocation(line: 96, column: 7, scope: !634)
!655 = !DILocation(line: 97, column: 7, scope: !634)
!656 = !DILocation(line: 102, column: 7, scope: !634)
!657 = !DILocation(line: 632, column: 3, scope: !614, inlinedAt: !633)
!658 = !DILocation(line: 643, column: 36, scope: !614, inlinedAt: !633)
!659 = !DILocation(line: 643, column: 25, scope: !614, inlinedAt: !633)
!660 = !DILocation(line: 645, column: 33, scope: !614, inlinedAt: !633)
!661 = !DILocation(line: 645, column: 3, scope: !614, inlinedAt: !633)
!662 = !DILocation(line: 646, column: 13, scope: !614, inlinedAt: !633)
!663 = !DILocation(line: 645, column: 20, scope: !614, inlinedAt: !633)
!664 = !{!665, !642, i64 0}
!665 = !{!"infomap", !642, i64 0, !642, i64 8}
!666 = !DILocation(line: 645, column: 10, scope: !614, inlinedAt: !633)
!667 = !DILocation(line: 645, column: 28, scope: !614, inlinedAt: !633)
!668 = distinct !{!668, !669, !670}
!669 = !DILocation(line: 645, column: 3, scope: !614)
!670 = !DILocation(line: 646, column: 13, scope: !614)
!671 = !DILocation(line: 648, column: 17, scope: !672, inlinedAt: !633)
!672 = distinct !DILexicalBlock(scope: !614, file: !615, line: 648, column: 7)
!673 = !{!665, !642, i64 8}
!674 = !DILocation(line: 648, column: 7, scope: !672, inlinedAt: !633)
!675 = !DILocation(line: 648, column: 7, scope: !614, inlinedAt: !633)
!676 = !DILocation(line: 642, column: 15, scope: !614, inlinedAt: !633)
!677 = !DILocation(line: 651, column: 3, scope: !614, inlinedAt: !633)
!678 = !DILocation(line: 655, column: 29, scope: !614, inlinedAt: !633)
!679 = !DILocation(line: 655, column: 15, scope: !614, inlinedAt: !633)
!680 = !DILocation(line: 656, column: 7, scope: !681, inlinedAt: !633)
!681 = distinct !DILexicalBlock(scope: !614, file: !615, line: 656, column: 7)
!682 = !DILocation(line: 656, column: 19, scope: !681, inlinedAt: !633)
!683 = !DILocation(line: 656, column: 22, scope: !681, inlinedAt: !633)
!684 = !DILocation(line: 656, column: 7, scope: !614, inlinedAt: !633)
!685 = !DILocation(line: 662, column: 7, scope: !686, inlinedAt: !633)
!686 = distinct !DILexicalBlock(scope: !681, file: !615, line: 657, column: 5)
!687 = !DILocation(line: 664, column: 5, scope: !686, inlinedAt: !633)
!688 = !DILocation(line: 665, column: 3, scope: !614, inlinedAt: !633)
!689 = !DILocation(line: 667, column: 3, scope: !614, inlinedAt: !633)
!690 = !DILocation(line: 669, column: 1, scope: !614, inlinedAt: !633)
!691 = !DILocation(line: 105, column: 3, scope: !608)
!692 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !693, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{!22, !22, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!696 = !{!697, !698, !699, !700, !701, !702, !703}
!697 = !DILocalVariable(name: "argc", arg: 1, scope: !692, file: !3, line: 221, type: !22)
!698 = !DILocalVariable(name: "argv", arg: 2, scope: !692, file: !3, line: 221, type: !695)
!699 = !DILocalVariable(name: "optc", scope: !692, file: !3, line: 223, type: !22)
!700 = !DILocalVariable(name: "list", scope: !692, file: !3, line: 224, type: !44)
!701 = !DILocalVariable(name: "table", scope: !692, file: !3, line: 225, type: !44)
!702 = !DILocalVariable(name: "signum", scope: !692, file: !3, line: 226, type: !22)
!703 = !DILocalVariable(name: "signame", scope: !692, file: !3, line: 227, type: !704)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 152, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 19)
!707 = !DILocalVariable(name: "signame", scope: !708, file: !3, line: 130, type: !704)
!708 = distinct !DISubprogram(name: "list_signals", scope: !3, file: !3, line: 126, type: !709, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !713)
!709 = !DISubroutineType(types: !710)
!710 = !{!22, !44, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!713 = !{!714, !715, !716, !717, !707, !718, !721, !722}
!714 = !DILocalVariable(name: "table", arg: 1, scope: !708, file: !3, line: 126, type: !44)
!715 = !DILocalVariable(name: "argv", arg: 2, scope: !708, file: !3, line: 126, type: !711)
!716 = !DILocalVariable(name: "signum", scope: !708, file: !3, line: 128, type: !22)
!717 = !DILocalVariable(name: "status", scope: !708, file: !3, line: 129, type: !22)
!718 = !DILocalVariable(name: "name_width", scope: !719, file: !3, line: 134, type: !9)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 133, column: 5)
!720 = distinct !DILexicalBlock(scope: !708, file: !3, line: 132, column: 7)
!721 = !DILocalVariable(name: "num_width", scope: !719, file: !3, line: 137, type: !9)
!722 = !DILocalVariable(name: "len", scope: !723, file: !3, line: 145, type: !100)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 144, column: 11)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 143, column: 13)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 142, column: 7)
!726 = distinct !DILexicalBlock(scope: !719, file: !3, line: 142, column: 7)
!727 = !DILocation(line: 130, column: 8, scope: !708, inlinedAt: !728)
!728 = distinct !DILocation(line: 312, column: 13, scope: !692)
!729 = !DILocation(line: 221, column: 11, scope: !692)
!730 = !DILocation(line: 221, column: 24, scope: !692)
!731 = !DILocation(line: 224, column: 8, scope: !692)
!732 = !DILocation(line: 225, column: 8, scope: !692)
!733 = !DILocation(line: 226, column: 7, scope: !692)
!734 = !DILocation(line: 227, column: 3, scope: !692)
!735 = !DILocation(line: 227, column: 8, scope: !692)
!736 = !DILocation(line: 230, column: 21, scope: !692)
!737 = !DILocation(line: 230, column: 3, scope: !692)
!738 = !DILocation(line: 231, column: 3, scope: !692)
!739 = !DILocation(line: 232, column: 3, scope: !692)
!740 = !DILocation(line: 233, column: 3, scope: !692)
!741 = !DILocation(line: 235, column: 3, scope: !692)
!742 = !DILocation(line: 237, column: 18, scope: !692)
!743 = !DILocation(line: 223, column: 7, scope: !692)
!744 = !DILocation(line: 237, column: 3, scope: !692)
!745 = !DILocation(line: 243, column: 13, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 243, column: 13)
!747 = distinct !DILexicalBlock(scope: !692, file: !3, line: 240, column: 7)
!748 = !{!749, !749, i64 0}
!749 = !{!"int", !643, i64 0}
!750 = !DILocation(line: 243, column: 20, scope: !746)
!751 = !DILocation(line: 243, column: 13, scope: !747)
!752 = !DILocation(line: 246, column: 19, scope: !753)
!753 = distinct !DILexicalBlock(scope: !746, file: !3, line: 244, column: 11)
!754 = !DILocation(line: 247, column: 13, scope: !753)
!755 = !DILocation(line: 256, column: 15, scope: !756)
!756 = distinct !DILexicalBlock(scope: !747, file: !3, line: 256, column: 13)
!757 = !DILocation(line: 0, scope: !758)
!758 = distinct !DILexicalBlock(scope: !747, file: !3, line: 258, column: 13)
!759 = !DILocation(line: 256, column: 13, scope: !747)
!760 = !DILocation(line: 257, column: 20, scope: !756)
!761 = !DILocation(line: 257, column: 39, scope: !756)
!762 = !DILocation(line: 257, column: 37, scope: !756)
!763 = !DILocation(line: 257, column: 18, scope: !756)
!764 = !DILocation(line: 257, column: 11, scope: !756)
!765 = !DILocation(line: 258, column: 13, scope: !758)
!766 = !DILocation(line: 258, column: 23, scope: !758)
!767 = !DILocation(line: 258, column: 40, scope: !758)
!768 = !DILocation(line: 258, column: 20, scope: !758)
!769 = !DILocation(line: 258, column: 13, scope: !747)
!770 = !DILocation(line: 260, column: 26, scope: !771)
!771 = distinct !DILexicalBlock(scope: !758, file: !3, line: 259, column: 11)
!772 = !DILocation(line: 260, column: 13, scope: !771)
!773 = !DILocation(line: 261, column: 13, scope: !771)
!774 = !DILocation(line: 263, column: 15, scope: !747)
!775 = !DILocation(line: 264, column: 9, scope: !747)
!776 = !DILocation(line: 267, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !747, file: !3, line: 267, column: 13)
!778 = !DILocation(line: 267, column: 13, scope: !747)
!779 = !DILocation(line: 269, column: 26, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 268, column: 11)
!781 = !DILocation(line: 269, column: 70, scope: !780)
!782 = !DILocation(line: 269, column: 63, scope: !780)
!783 = !DILocation(line: 269, column: 13, scope: !780)
!784 = !DILocation(line: 270, column: 13, scope: !780)
!785 = !DILocation(line: 272, column: 31, scope: !747)
!786 = !DILocation(line: 272, column: 18, scope: !747)
!787 = !DILocation(line: 273, column: 20, scope: !788)
!788 = distinct !DILexicalBlock(scope: !747, file: !3, line: 273, column: 13)
!789 = !DILocation(line: 273, column: 13, scope: !747)
!790 = distinct !{!790, !744, !791}
!791 = !DILocation(line: 294, column: 7, scope: !692)
!792 = !DILocation(line: 274, column: 11, scope: !788)
!793 = !DILocation(line: 282, column: 13, scope: !794)
!794 = distinct !DILexicalBlock(scope: !747, file: !3, line: 282, column: 13)
!795 = !DILocation(line: 0, scope: !747)
!796 = !DILocation(line: 290, column: 7, scope: !747)
!797 = !DILocation(line: 291, column: 7, scope: !747)
!798 = !DILocation(line: 293, column: 9, scope: !747)
!799 = !DILocation(line: 297, column: 14, scope: !800)
!800 = distinct !DILexicalBlock(scope: !692, file: !3, line: 297, column: 7)
!801 = !DILocation(line: 297, column: 7, scope: !692)
!802 = !DILocation(line: 299, column: 12, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 299, column: 12)
!804 = !DILocation(line: 299, column: 12, scope: !800)
!805 = !DILocation(line: 301, column: 20, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !3, line: 300, column: 5)
!807 = !DILocation(line: 301, column: 7, scope: !806)
!808 = !DILocation(line: 302, column: 7, scope: !806)
!809 = !DILocation(line: 305, column: 10, scope: !810)
!810 = distinct !DILexicalBlock(scope: !692, file: !3, line: 305, column: 8)
!811 = !DILocation(line: 0, scope: !692)
!812 = !DILocation(line: 305, column: 26, scope: !810)
!813 = !DILocation(line: 305, column: 23, scope: !810)
!814 = !DILocation(line: 305, column: 15, scope: !810)
!815 = !DILocation(line: 307, column: 20, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !3, line: 306, column: 5)
!817 = !DILocation(line: 307, column: 7, scope: !816)
!818 = !DILocation(line: 308, column: 7, scope: !816)
!819 = !DILocation(line: 311, column: 11, scope: !692)
!820 = !DILocation(line: 312, column: 27, scope: !692)
!821 = !DILocation(line: 312, column: 55, scope: !692)
!822 = !DILocation(line: 312, column: 34, scope: !692)
!823 = !DILocation(line: 126, column: 20, scope: !708, inlinedAt: !728)
!824 = !DILocation(line: 126, column: 40, scope: !708, inlinedAt: !728)
!825 = !DILocation(line: 129, column: 7, scope: !708, inlinedAt: !728)
!826 = !DILocation(line: 130, column: 3, scope: !708, inlinedAt: !728)
!827 = !DILocation(line: 132, column: 7, scope: !708, inlinedAt: !728)
!828 = !DILocation(line: 134, column: 20, scope: !719, inlinedAt: !728)
!829 = !DILocation(line: 128, column: 7, scope: !708, inlinedAt: !728)
!830 = !DILocation(line: 143, column: 13, scope: !724, inlinedAt: !728)
!831 = !DILocation(line: 143, column: 39, scope: !724, inlinedAt: !728)
!832 = !DILocation(line: 143, column: 13, scope: !725, inlinedAt: !728)
!833 = !DILocation(line: 145, column: 26, scope: !723, inlinedAt: !728)
!834 = !DILocation(line: 145, column: 20, scope: !723, inlinedAt: !728)
!835 = !DILocation(line: 146, column: 17, scope: !836, inlinedAt: !728)
!836 = distinct !DILexicalBlock(scope: !723, file: !3, line: 146, column: 17)
!837 = !DILocation(line: 146, column: 28, scope: !836, inlinedAt: !728)
!838 = !DILocation(line: 147, column: 28, scope: !836, inlinedAt: !728)
!839 = !DILocation(line: 146, column: 17, scope: !723, inlinedAt: !728)
!840 = !DILocation(line: 148, column: 11, scope: !723, inlinedAt: !728)
!841 = !DILocation(line: 0, scope: !719, inlinedAt: !728)
!842 = !DILocation(line: 142, column: 54, scope: !725, inlinedAt: !728)
!843 = !DILocation(line: 142, column: 31, scope: !725, inlinedAt: !728)
!844 = !DILocation(line: 142, column: 7, scope: !726, inlinedAt: !728)
!845 = distinct !{!845, !846, !847}
!846 = !DILocation(line: 142, column: 7, scope: !726)
!847 = !DILocation(line: 148, column: 11, scope: !726)
!848 = !DILocation(line: 150, column: 11, scope: !849, inlinedAt: !728)
!849 = distinct !DILexicalBlock(scope: !719, file: !3, line: 150, column: 11)
!850 = !DILocation(line: 150, column: 11, scope: !719, inlinedAt: !728)
!851 = !DILocation(line: 151, column: 16, scope: !852, inlinedAt: !728)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 151, column: 9)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 151, column: 9)
!854 = !DILocation(line: 151, column: 9, scope: !853, inlinedAt: !728)
!855 = !DILocation(line: 153, column: 22, scope: !856, inlinedAt: !728)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 152, column: 11)
!857 = !DILocation(line: 154, column: 24, scope: !858, inlinedAt: !728)
!858 = distinct !DILexicalBlock(scope: !856, file: !3, line: 154, column: 17)
!859 = !DILocation(line: 154, column: 17, scope: !856, inlinedAt: !728)
!860 = !DILocalVariable(name: "num_width", arg: 1, scope: !861, file: !3, line: 113, type: !22)
!861 = distinct !DISubprogram(name: "print_table_row", scope: !3, file: !3, line: 113, type: !862, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !22, !22, !22, !19}
!864 = !{!860, !865, !866, !867, !868}
!865 = !DILocalVariable(name: "signum", arg: 2, scope: !861, file: !3, line: 113, type: !22)
!866 = !DILocalVariable(name: "name_width", arg: 3, scope: !861, file: !3, line: 114, type: !22)
!867 = !DILocalVariable(name: "signame", arg: 4, scope: !861, file: !3, line: 114, type: !19)
!868 = !DILocalVariable(name: "description", scope: !861, file: !3, line: 116, type: !19)
!869 = !DILocation(line: 113, column: 22, scope: !861, inlinedAt: !870)
!870 = distinct !DILocation(line: 157, column: 15, scope: !858, inlinedAt: !728)
!871 = !DILocation(line: 113, column: 37, scope: !861, inlinedAt: !870)
!872 = !DILocation(line: 114, column: 22, scope: !861, inlinedAt: !870)
!873 = !DILocation(line: 114, column: 46, scope: !861, inlinedAt: !870)
!874 = !DILocation(line: 116, column: 29, scope: !861, inlinedAt: !870)
!875 = !DILocation(line: 116, column: 15, scope: !861, inlinedAt: !870)
!876 = !DILocation(line: 117, column: 3, scope: !861, inlinedAt: !870)
!877 = !DILocation(line: 0, scope: !708, inlinedAt: !728)
!878 = !DILocation(line: 151, column: 27, scope: !852, inlinedAt: !728)
!879 = distinct !{!879, !880, !881}
!880 = !DILocation(line: 151, column: 9, scope: !853)
!881 = !DILocation(line: 158, column: 11, scope: !853)
!882 = !DILocation(line: 161, column: 15, scope: !883, inlinedAt: !728)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 161, column: 15)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 160, column: 9)
!885 = distinct !DILexicalBlock(scope: !849, file: !3, line: 160, column: 9)
!886 = !DILocation(line: 161, column: 41, scope: !883, inlinedAt: !728)
!887 = !DILocation(line: 161, column: 15, scope: !884, inlinedAt: !728)
!888 = !DILocation(line: 113, column: 22, scope: !861, inlinedAt: !889)
!889 = distinct !DILocation(line: 162, column: 13, scope: !883, inlinedAt: !728)
!890 = !DILocation(line: 113, column: 37, scope: !861, inlinedAt: !889)
!891 = !DILocation(line: 114, column: 22, scope: !861, inlinedAt: !889)
!892 = !DILocation(line: 114, column: 46, scope: !861, inlinedAt: !889)
!893 = !DILocation(line: 116, column: 29, scope: !861, inlinedAt: !889)
!894 = !DILocation(line: 116, column: 15, scope: !861, inlinedAt: !889)
!895 = !DILocation(line: 117, column: 3, scope: !861, inlinedAt: !889)
!896 = !DILocation(line: 162, column: 13, scope: !883, inlinedAt: !728)
!897 = !DILocation(line: 160, column: 56, scope: !884, inlinedAt: !728)
!898 = !DILocation(line: 160, column: 33, scope: !884, inlinedAt: !728)
!899 = !DILocation(line: 160, column: 9, scope: !885, inlinedAt: !728)
!900 = distinct !{!900, !901, !902}
!901 = !DILocation(line: 160, column: 9, scope: !885)
!902 = !DILocation(line: 162, column: 68, scope: !885)
!903 = !DILocation(line: 166, column: 11, scope: !904, inlinedAt: !728)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 166, column: 11)
!905 = distinct !DILexicalBlock(scope: !720, file: !3, line: 165, column: 5)
!906 = !DILocation(line: 166, column: 11, scope: !905, inlinedAt: !728)
!907 = !DILocation(line: 167, column: 16, scope: !908, inlinedAt: !728)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 167, column: 9)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 167, column: 9)
!910 = !DILocation(line: 167, column: 9, scope: !909, inlinedAt: !728)
!911 = !DILocation(line: 169, column: 22, scope: !912, inlinedAt: !728)
!912 = distinct !DILexicalBlock(scope: !908, file: !3, line: 168, column: 11)
!913 = !DILocation(line: 170, column: 24, scope: !914, inlinedAt: !728)
!914 = distinct !DILexicalBlock(scope: !912, file: !3, line: 170, column: 17)
!915 = !DILocation(line: 170, column: 17, scope: !912, inlinedAt: !728)
!916 = !DILocation(line: 174, column: 21, scope: !917, inlinedAt: !728)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 174, column: 21)
!918 = distinct !DILexicalBlock(scope: !914, file: !3, line: 173, column: 15)
!919 = !{!643, !643, i64 0}
!920 = !DILocation(line: 174, column: 21, scope: !918, inlinedAt: !728)
!921 = !DILocation(line: 175, column: 19, scope: !917, inlinedAt: !728)
!922 = !DILocation(line: 177, column: 19, scope: !917, inlinedAt: !728)
!923 = !DILocation(line: 167, column: 27, scope: !908, inlinedAt: !728)
!924 = distinct !{!924, !925, !926}
!925 = !DILocation(line: 167, column: 9, scope: !909)
!926 = !DILocation(line: 179, column: 11, scope: !909)
!927 = !DILocation(line: 182, column: 15, scope: !928, inlinedAt: !728)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 182, column: 15)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 181, column: 9)
!930 = distinct !DILexicalBlock(scope: !904, file: !3, line: 181, column: 9)
!931 = !DILocation(line: 182, column: 41, scope: !928, inlinedAt: !728)
!932 = !DILocation(line: 182, column: 15, scope: !929, inlinedAt: !728)
!933 = !DILocation(line: 183, column: 13, scope: !928, inlinedAt: !728)
!934 = !DILocation(line: 181, column: 56, scope: !929, inlinedAt: !728)
!935 = !DILocation(line: 181, column: 33, scope: !929, inlinedAt: !728)
!936 = !DILocation(line: 181, column: 9, scope: !930, inlinedAt: !728)
!937 = distinct !{!937, !938, !939}
!938 = !DILocation(line: 181, column: 9, scope: !930)
!939 = !DILocation(line: 183, column: 26, scope: !930)
!940 = !DILocation(line: 187, column: 1, scope: !708, inlinedAt: !728)
!941 = !DILocation(line: 313, column: 40, scope: !692)
!942 = !DILocalVariable(name: "signum", arg: 1, scope: !943, file: !3, line: 193, type: !22)
!943 = distinct !DISubprogram(name: "send_signals", scope: !3, file: !3, line: 193, type: !944, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!22, !22, !711}
!946 = !{!942, !947, !948, !949, !950, !952, !958}
!947 = !DILocalVariable(name: "argv", arg: 2, scope: !943, file: !3, line: 193, type: !711)
!948 = !DILocalVariable(name: "status", scope: !943, file: !3, line: 195, type: !22)
!949 = !DILocalVariable(name: "arg", scope: !943, file: !3, line: 196, type: !19)
!950 = !DILocalVariable(name: "endp", scope: !951, file: !3, line: 200, type: !6)
!951 = distinct !DILexicalBlock(scope: !943, file: !3, line: 199, column: 5)
!952 = !DILocalVariable(name: "n", scope: !951, file: !3, line: 201, type: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !954, line: 101, baseType: !955)
!954 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !956, line: 71, baseType: !957)
!956 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!957 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!958 = !DILocalVariable(name: "pid", scope: !951, file: !3, line: 202, type: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !960, line: 97, baseType: !961)
!960 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !956, line: 152, baseType: !22)
!962 = !DILocation(line: 193, column: 19, scope: !943, inlinedAt: !963)
!963 = distinct !DILocation(line: 313, column: 13, scope: !692)
!964 = !DILocation(line: 193, column: 40, scope: !943, inlinedAt: !963)
!965 = !DILocation(line: 195, column: 7, scope: !943, inlinedAt: !963)
!966 = !DILocation(line: 196, column: 21, scope: !943, inlinedAt: !963)
!967 = !DILocation(line: 196, column: 15, scope: !943, inlinedAt: !963)
!968 = !DILocation(line: 201, column: 21, scope: !951, inlinedAt: !963)
!969 = !DILocation(line: 198, column: 3, scope: !943, inlinedAt: !963)
!970 = !DILocation(line: 0, scope: !943, inlinedAt: !963)
!971 = !DILocation(line: 0, scope: !972, inlinedAt: !963)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 205, column: 9)
!973 = distinct !DILexicalBlock(scope: !951, file: !3, line: 204, column: 11)
!974 = !DILocation(line: 200, column: 7, scope: !951, inlinedAt: !963)
!975 = !DILocation(line: 201, column: 27, scope: !951, inlinedAt: !963)
!976 = !DILocation(line: 200, column: 13, scope: !951, inlinedAt: !963)
!977 = !DILocalVariable(name: "nptr", arg: 1, scope: !978, file: !979, line: 324, type: !982)
!978 = distinct !DISubprogram(name: "strtoimax", scope: !979, file: !979, line: 324, type: !980, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !984)
!979 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!980 = !DISubroutineType(types: !981)
!981 = !{!953, !982, !983, !22}
!982 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!983 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !695)
!984 = !{!977, !985, !986}
!985 = !DILocalVariable(name: "endptr", arg: 2, scope: !978, file: !979, line: 324, type: !983)
!986 = !DILocalVariable(name: "base", arg: 3, scope: !978, file: !979, line: 324, type: !22)
!987 = !DILocation(line: 324, column: 1, scope: !978, inlinedAt: !988)
!988 = distinct !DILocation(line: 201, column: 32, scope: !951, inlinedAt: !963)
!989 = !DILocation(line: 327, column: 10, scope: !978, inlinedAt: !988)
!990 = !DILocation(line: 201, column: 16, scope: !951, inlinedAt: !963)
!991 = !DILocation(line: 202, column: 19, scope: !951, inlinedAt: !963)
!992 = !DILocation(line: 202, column: 13, scope: !951, inlinedAt: !963)
!993 = !DILocation(line: 204, column: 11, scope: !973, inlinedAt: !963)
!994 = !DILocation(line: 204, column: 17, scope: !973, inlinedAt: !963)
!995 = !DILocation(line: 204, column: 34, scope: !973, inlinedAt: !963)
!996 = !DILocation(line: 204, column: 27, scope: !973, inlinedAt: !963)
!997 = !DILocation(line: 204, column: 49, scope: !973, inlinedAt: !963)
!998 = !DILocation(line: 204, column: 46, scope: !973, inlinedAt: !963)
!999 = !DILocation(line: 204, column: 54, scope: !973, inlinedAt: !963)
!1000 = !DILocation(line: 204, column: 57, scope: !973, inlinedAt: !963)
!1001 = !DILocation(line: 204, column: 11, scope: !951, inlinedAt: !963)
!1002 = !DILocation(line: 206, column: 24, scope: !972, inlinedAt: !963)
!1003 = !DILocation(line: 206, column: 53, scope: !972, inlinedAt: !963)
!1004 = !DILocation(line: 206, column: 11, scope: !972, inlinedAt: !963)
!1005 = !DILocation(line: 208, column: 9, scope: !972, inlinedAt: !963)
!1006 = !DILocation(line: 209, column: 16, scope: !1007, inlinedAt: !963)
!1007 = distinct !DILexicalBlock(scope: !973, file: !3, line: 209, column: 16)
!1008 = !DILocation(line: 209, column: 35, scope: !1007, inlinedAt: !963)
!1009 = !DILocation(line: 209, column: 16, scope: !973, inlinedAt: !963)
!1010 = !DILocation(line: 211, column: 21, scope: !1011, inlinedAt: !963)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 210, column: 9)
!1012 = !DILocation(line: 211, column: 34, scope: !1011, inlinedAt: !963)
!1013 = !DILocation(line: 211, column: 11, scope: !1011, inlinedAt: !963)
!1014 = !DILocation(line: 213, column: 9, scope: !1011, inlinedAt: !963)
!1015 = !DILocation(line: 214, column: 5, scope: !943, inlinedAt: !963)
!1016 = !DILocation(line: 215, column: 18, scope: !943, inlinedAt: !963)
!1017 = !DILocation(line: 215, column: 17, scope: !943, inlinedAt: !963)
!1018 = !DILocation(line: 214, column: 5, scope: !951, inlinedAt: !963)
!1019 = distinct !{!1019, !1020, !1021}
!1020 = !DILocation(line: 198, column: 3, scope: !943)
!1021 = !DILocation(line: 215, column: 25, scope: !943)
!1022 = !DILocation(line: 314, column: 1, scope: !692)
!1023 = !DILocation(line: 284, column: 26, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !794, file: !3, line: 283, column: 11)
!1025 = !DILocation(line: 284, column: 13, scope: !1024)
!1026 = !DILocation(line: 285, column: 13, scope: !1024)
!1027 = distinct !DISubprogram(name: "operand2sig", scope: !170, file: !170, line: 36, type: !1028, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!22, !19, !6}
!1030 = !{!1031, !1032, !1033, !1034, !1037, !1038, !1039, !1041}
!1031 = !DILocalVariable(name: "operand", arg: 1, scope: !1027, file: !170, line: 36, type: !19)
!1032 = !DILocalVariable(name: "signame", arg: 2, scope: !1027, file: !170, line: 36, type: !6)
!1033 = !DILocalVariable(name: "signum", scope: !1027, file: !170, line: 38, type: !22)
!1034 = !DILocalVariable(name: "endp", scope: !1035, file: !170, line: 53, type: !6)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !170, line: 41, column: 5)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !170, line: 40, column: 7)
!1037 = !DILocalVariable(name: "l", scope: !1035, file: !170, line: 54, type: !957)
!1038 = !DILocalVariable(name: "i", scope: !1035, file: !170, line: 55, type: !22)
!1039 = !DILocalVariable(name: "upcased", scope: !1040, file: !170, line: 70, type: !6)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !170, line: 67, column: 5)
!1041 = !DILocalVariable(name: "p", scope: !1040, file: !170, line: 71, type: !6)
!1042 = !DILocation(line: 36, column: 26, scope: !1027)
!1043 = !DILocation(line: 36, column: 41, scope: !1027)
!1044 = !DILocation(line: 38, column: 3, scope: !1027)
!1045 = !DILocation(line: 40, column: 7, scope: !1036)
!1046 = !DILocation(line: 40, column: 7, scope: !1027)
!1047 = !DILocation(line: 53, column: 7, scope: !1035)
!1048 = !DILocation(line: 54, column: 21, scope: !1035)
!1049 = !DILocation(line: 54, column: 27, scope: !1035)
!1050 = !DILocation(line: 53, column: 13, scope: !1035)
!1051 = !DILocation(line: 54, column: 32, scope: !1035)
!1052 = !DILocation(line: 54, column: 16, scope: !1035)
!1053 = !DILocation(line: 55, column: 15, scope: !1035)
!1054 = !DILocation(line: 55, column: 11, scope: !1035)
!1055 = !DILocation(line: 56, column: 28, scope: !1035)
!1056 = !DILocation(line: 56, column: 25, scope: !1035)
!1057 = !DILocation(line: 56, column: 33, scope: !1035)
!1058 = !DILocation(line: 56, column: 36, scope: !1035)
!1059 = !DILocation(line: 56, column: 42, scope: !1035)
!1060 = !DILocation(line: 56, column: 45, scope: !1035)
!1061 = !DILocation(line: 56, column: 56, scope: !1035)
!1062 = !DILocation(line: 56, column: 51, scope: !1035)
!1063 = !DILocation(line: 58, column: 18, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1035, file: !170, line: 58, column: 11)
!1065 = !DILocation(line: 38, column: 7, scope: !1027)
!1066 = !DILocation(line: 63, column: 28, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !170, line: 59, column: 9)
!1068 = !DILocation(line: 63, column: 21, scope: !1067)
!1069 = !DILocation(line: 63, column: 18, scope: !1067)
!1070 = !DILocation(line: 64, column: 9, scope: !1067)
!1071 = !DILocation(line: 0, scope: !1035)
!1072 = !DILocation(line: 65, column: 5, scope: !1036)
!1073 = !DILocation(line: 65, column: 5, scope: !1035)
!1074 = !DILocation(line: 70, column: 23, scope: !1040)
!1075 = !DILocation(line: 70, column: 13, scope: !1040)
!1076 = !DILocation(line: 71, column: 13, scope: !1040)
!1077 = !DILocation(line: 72, column: 25, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !170, line: 72, column: 7)
!1079 = distinct !DILexicalBlock(scope: !1040, file: !170, line: 72, column: 7)
!1080 = !DILocation(line: 72, column: 7, scope: !1079)
!1081 = !DILocation(line: 73, column: 51, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !170, line: 73, column: 13)
!1083 = !DILocation(line: 73, column: 13, scope: !1082)
!1084 = !DILocation(line: 73, column: 13, scope: !1078)
!1085 = !DILocation(line: 74, column: 14, scope: !1082)
!1086 = !DILocation(line: 74, column: 11, scope: !1082)
!1087 = !DILocation(line: 72, column: 30, scope: !1078)
!1088 = distinct !{!1088, !1080, !1089}
!1089 = !DILocation(line: 74, column: 23, scope: !1079)
!1090 = !DILocation(line: 78, column: 13, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1040, file: !170, line: 78, column: 11)
!1092 = !DILocation(line: 78, column: 40, scope: !1091)
!1093 = !DILocation(line: 79, column: 13, scope: !1091)
!1094 = !DILocation(line: 79, column: 17, scope: !1091)
!1095 = !DILocation(line: 79, column: 28, scope: !1091)
!1096 = !DILocation(line: 79, column: 35, scope: !1091)
!1097 = !DILocation(line: 79, column: 38, scope: !1091)
!1098 = !DILocation(line: 79, column: 49, scope: !1091)
!1099 = !DILocation(line: 79, column: 56, scope: !1091)
!1100 = !DILocation(line: 79, column: 59, scope: !1091)
!1101 = !DILocation(line: 79, column: 70, scope: !1091)
!1102 = !DILocation(line: 80, column: 17, scope: !1091)
!1103 = !DILocation(line: 80, column: 37, scope: !1091)
!1104 = !DILocation(line: 80, column: 20, scope: !1091)
!1105 = !DILocation(line: 80, column: 51, scope: !1091)
!1106 = !DILocation(line: 78, column: 11, scope: !1040)
!1107 = !DILocation(line: 81, column: 16, scope: !1091)
!1108 = !DILocation(line: 81, column: 9, scope: !1091)
!1109 = !DILocation(line: 83, column: 7, scope: !1040)
!1110 = !DILocation(line: 86, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1027, file: !170, line: 86, column: 7)
!1112 = !DILocation(line: 86, column: 14, scope: !1111)
!1113 = !DILocation(line: 86, column: 18, scope: !1111)
!1114 = !DILocation(line: 86, column: 21, scope: !1111)
!1115 = !DILocation(line: 86, column: 47, scope: !1111)
!1116 = !DILocation(line: 86, column: 7, scope: !1027)
!1117 = !DILocation(line: 88, column: 20, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !170, line: 87, column: 5)
!1119 = !DILocation(line: 88, column: 45, scope: !1118)
!1120 = !DILocation(line: 88, column: 7, scope: !1118)
!1121 = !DILocation(line: 89, column: 7, scope: !1118)
!1122 = !DILocation(line: 92, column: 10, scope: !1027)
!1123 = !DILocation(line: 92, column: 3, scope: !1027)
!1124 = !DILocation(line: 0, scope: !1027)
!1125 = !DILocation(line: 93, column: 1, scope: !1027)
!1126 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !43, file: !43, line: 51, type: !616, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !38, retainedNodes: !1127)
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "file", arg: 1, scope: !1126, file: !43, line: 51, type: !19)
!1129 = !DILocation(line: 51, column: 41, scope: !1126)
!1130 = !DILocation(line: 53, column: 13, scope: !1126)
!1131 = !DILocation(line: 54, column: 1, scope: !1126)
!1132 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !43, file: !43, line: 88, type: !1133, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !38, retainedNodes: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !44}
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "ignore", arg: 1, scope: !1132, file: !43, line: 88, type: !44)
!1137 = !DILocation(line: 88, column: 37, scope: !1132)
!1138 = !DILocation(line: 90, column: 16, scope: !1132)
!1139 = !{!1140, !1140, i64 0}
!1140 = !{!"_Bool", !643, i64 0}
!1141 = !DILocation(line: 91, column: 1, scope: !1132)
!1142 = distinct !DISubprogram(name: "close_stdout", scope: !43, file: !43, line: 117, type: !649, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !38, retainedNodes: !1143)
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "write_error", scope: !1145, file: !43, line: 122, type: !19)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !43, line: 121, column: 5)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !43, line: 119, column: 7)
!1147 = !DILocation(line: 119, column: 21, scope: !1146)
!1148 = !DILocation(line: 119, column: 7, scope: !1146)
!1149 = !DILocation(line: 119, column: 29, scope: !1146)
!1150 = !DILocation(line: 120, column: 7, scope: !1146)
!1151 = !DILocation(line: 120, column: 12, scope: !1146)
!1152 = !{i8 0, i8 2}
!1153 = !DILocation(line: 120, column: 25, scope: !1146)
!1154 = !DILocation(line: 120, column: 28, scope: !1146)
!1155 = !DILocation(line: 120, column: 34, scope: !1146)
!1156 = !DILocation(line: 119, column: 7, scope: !1142)
!1157 = !DILocation(line: 122, column: 33, scope: !1145)
!1158 = !DILocation(line: 122, column: 19, scope: !1145)
!1159 = !DILocation(line: 123, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1145, file: !43, line: 123, column: 11)
!1161 = !DILocation(line: 0, scope: !1160)
!1162 = !DILocation(line: 123, column: 11, scope: !1145)
!1163 = !DILocation(line: 124, column: 36, scope: !1160)
!1164 = !DILocation(line: 124, column: 9, scope: !1160)
!1165 = !DILocation(line: 127, column: 9, scope: !1160)
!1166 = !DILocation(line: 129, column: 14, scope: !1145)
!1167 = !DILocation(line: 129, column: 7, scope: !1145)
!1168 = !DILocation(line: 134, column: 42, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1142, file: !43, line: 134, column: 7)
!1170 = !DILocation(line: 134, column: 28, scope: !1169)
!1171 = !DILocation(line: 134, column: 50, scope: !1169)
!1172 = !DILocation(line: 134, column: 7, scope: !1142)
!1173 = !DILocation(line: 135, column: 12, scope: !1169)
!1174 = !DILocation(line: 135, column: 5, scope: !1169)
!1175 = !DILocation(line: 136, column: 1, scope: !1142)
!1176 = distinct !DISubprogram(name: "set_program_name", scope: !58, file: !58, line: 39, type: !616, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !54, retainedNodes: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DILocalVariable(name: "argv0", arg: 1, scope: !1176, file: !58, line: 39, type: !19)
!1179 = !DILocalVariable(name: "slash", scope: !1176, file: !58, line: 46, type: !19)
!1180 = !DILocalVariable(name: "base", scope: !1176, file: !58, line: 47, type: !19)
!1181 = !DILocation(line: 39, column: 31, scope: !1176)
!1182 = !DILocation(line: 51, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !58, line: 51, column: 7)
!1184 = !DILocation(line: 51, column: 7, scope: !1176)
!1185 = !DILocation(line: 55, column: 14, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !58, line: 52, column: 5)
!1187 = !DILocation(line: 54, column: 7, scope: !1186)
!1188 = !DILocation(line: 56, column: 7, scope: !1186)
!1189 = !DILocation(line: 59, column: 11, scope: !1176)
!1190 = !DILocation(line: 46, column: 15, scope: !1176)
!1191 = !DILocation(line: 60, column: 17, scope: !1176)
!1192 = !DILocation(line: 60, column: 33, scope: !1176)
!1193 = !DILocation(line: 60, column: 11, scope: !1176)
!1194 = !DILocation(line: 47, column: 15, scope: !1176)
!1195 = !DILocation(line: 61, column: 12, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1176, file: !58, line: 61, column: 7)
!1197 = !DILocation(line: 61, column: 20, scope: !1196)
!1198 = !DILocation(line: 61, column: 25, scope: !1196)
!1199 = !DILocation(line: 61, column: 42, scope: !1196)
!1200 = !DILocation(line: 61, column: 28, scope: !1196)
!1201 = !DILocation(line: 61, column: 61, scope: !1196)
!1202 = !DILocation(line: 61, column: 7, scope: !1176)
!1203 = !DILocation(line: 64, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !58, line: 64, column: 11)
!1205 = distinct !DILexicalBlock(scope: !1196, file: !58, line: 62, column: 5)
!1206 = !DILocation(line: 64, column: 36, scope: !1204)
!1207 = !DILocation(line: 64, column: 11, scope: !1205)
!1208 = !DILocation(line: 66, column: 24, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !58, line: 65, column: 9)
!1210 = !DILocation(line: 70, column: 41, scope: !1209)
!1211 = !DILocation(line: 72, column: 9, scope: !1209)
!1212 = !DILocation(line: 84, column: 16, scope: !1176)
!1213 = !DILocation(line: 90, column: 27, scope: !1176)
!1214 = !DILocation(line: 92, column: 1, scope: !1176)
!1215 = distinct !DISubprogram(name: "clone_quoting_options", scope: !106, file: !106, line: 122, type: !1216, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1219)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!1218, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1219 = !{!1220, !1221, !1222}
!1220 = !DILocalVariable(name: "o", arg: 1, scope: !1215, file: !106, line: 122, type: !1218)
!1221 = !DILocalVariable(name: "e", scope: !1215, file: !106, line: 124, type: !22)
!1222 = !DILocalVariable(name: "p", scope: !1215, file: !106, line: 125, type: !1218)
!1223 = !DILocation(line: 122, column: 48, scope: !1215)
!1224 = !DILocation(line: 124, column: 11, scope: !1215)
!1225 = !DILocation(line: 124, column: 7, scope: !1215)
!1226 = !DILocation(line: 125, column: 40, scope: !1215)
!1227 = !DILocation(line: 125, column: 31, scope: !1215)
!1228 = !DILocation(line: 125, column: 27, scope: !1215)
!1229 = !DILocation(line: 127, column: 9, scope: !1215)
!1230 = !DILocation(line: 128, column: 3, scope: !1215)
!1231 = distinct !DISubprogram(name: "get_quoting_style", scope: !106, file: !106, line: 133, type: !1232, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1236)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!64, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "o", arg: 1, scope: !1231, file: !106, line: 133, type: !1234)
!1238 = !DILocation(line: 133, column: 50, scope: !1231)
!1239 = !DILocation(line: 135, column: 11, scope: !1231)
!1240 = !DILocation(line: 135, column: 46, scope: !1231)
!1241 = !{!1242, !643, i64 0}
!1242 = !{!"quoting_options", !643, i64 0, !749, i64 4, !643, i64 8, !642, i64 40, !642, i64 48}
!1243 = !DILocation(line: 135, column: 3, scope: !1231)
!1244 = distinct !DISubprogram(name: "set_quoting_style", scope: !106, file: !106, line: 141, type: !1245, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !1218, !64}
!1247 = !{!1248, !1249}
!1248 = !DILocalVariable(name: "o", arg: 1, scope: !1244, file: !106, line: 141, type: !1218)
!1249 = !DILocalVariable(name: "s", arg: 2, scope: !1244, file: !106, line: 141, type: !64)
!1250 = !DILocation(line: 141, column: 44, scope: !1244)
!1251 = !DILocation(line: 141, column: 66, scope: !1244)
!1252 = !DILocation(line: 143, column: 4, scope: !1244)
!1253 = !DILocation(line: 143, column: 39, scope: !1244)
!1254 = !DILocation(line: 143, column: 45, scope: !1244)
!1255 = !DILocation(line: 144, column: 1, scope: !1244)
!1256 = distinct !DISubprogram(name: "set_char_quoting", scope: !106, file: !106, line: 152, type: !1257, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!22, !1218, !7, !22}
!1259 = !{!1260, !1261, !1262, !1263, !1265, !1267, !1268}
!1260 = !DILocalVariable(name: "o", arg: 1, scope: !1256, file: !106, line: 152, type: !1218)
!1261 = !DILocalVariable(name: "c", arg: 2, scope: !1256, file: !106, line: 152, type: !7)
!1262 = !DILocalVariable(name: "i", arg: 3, scope: !1256, file: !106, line: 152, type: !22)
!1263 = !DILocalVariable(name: "uc", scope: !1256, file: !106, line: 154, type: !1264)
!1264 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1265 = !DILocalVariable(name: "p", scope: !1256, file: !106, line: 155, type: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1267 = !DILocalVariable(name: "shift", scope: !1256, file: !106, line: 157, type: !22)
!1268 = !DILocalVariable(name: "r", scope: !1256, file: !106, line: 158, type: !22)
!1269 = !DILocation(line: 152, column: 43, scope: !1256)
!1270 = !DILocation(line: 152, column: 51, scope: !1256)
!1271 = !DILocation(line: 152, column: 58, scope: !1256)
!1272 = !DILocation(line: 154, column: 17, scope: !1256)
!1273 = !DILocation(line: 156, column: 6, scope: !1256)
!1274 = !DILocation(line: 156, column: 62, scope: !1256)
!1275 = !DILocation(line: 156, column: 57, scope: !1256)
!1276 = !DILocation(line: 155, column: 17, scope: !1256)
!1277 = !DILocation(line: 157, column: 15, scope: !1256)
!1278 = !DILocation(line: 157, column: 7, scope: !1256)
!1279 = !DILocation(line: 158, column: 12, scope: !1256)
!1280 = !DILocation(line: 158, column: 15, scope: !1256)
!1281 = !DILocation(line: 158, column: 25, scope: !1256)
!1282 = !DILocation(line: 158, column: 7, scope: !1256)
!1283 = !DILocation(line: 159, column: 13, scope: !1256)
!1284 = !DILocation(line: 159, column: 18, scope: !1256)
!1285 = !DILocation(line: 159, column: 23, scope: !1256)
!1286 = !DILocation(line: 159, column: 6, scope: !1256)
!1287 = !DILocation(line: 160, column: 3, scope: !1256)
!1288 = distinct !DISubprogram(name: "set_quoting_flags", scope: !106, file: !106, line: 168, type: !1289, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!22, !1218, !22}
!1291 = !{!1292, !1293, !1294}
!1292 = !DILocalVariable(name: "o", arg: 1, scope: !1288, file: !106, line: 168, type: !1218)
!1293 = !DILocalVariable(name: "i", arg: 2, scope: !1288, file: !106, line: 168, type: !22)
!1294 = !DILocalVariable(name: "r", scope: !1288, file: !106, line: 170, type: !22)
!1295 = !DILocation(line: 168, column: 44, scope: !1288)
!1296 = !DILocation(line: 168, column: 51, scope: !1288)
!1297 = !DILocation(line: 171, column: 8, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1288, file: !106, line: 171, column: 7)
!1299 = !DILocation(line: 171, column: 7, scope: !1288)
!1300 = !DILocation(line: 173, column: 10, scope: !1288)
!1301 = !{!1242, !749, i64 4}
!1302 = !DILocation(line: 170, column: 7, scope: !1288)
!1303 = !DILocation(line: 174, column: 12, scope: !1288)
!1304 = !DILocation(line: 175, column: 3, scope: !1288)
!1305 = distinct !DISubprogram(name: "set_custom_quoting", scope: !106, file: !106, line: 179, type: !1306, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1218, !19, !19}
!1308 = !{!1309, !1310, !1311}
!1309 = !DILocalVariable(name: "o", arg: 1, scope: !1305, file: !106, line: 179, type: !1218)
!1310 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1305, file: !106, line: 180, type: !19)
!1311 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1305, file: !106, line: 180, type: !19)
!1312 = !DILocation(line: 179, column: 45, scope: !1305)
!1313 = !DILocation(line: 180, column: 33, scope: !1305)
!1314 = !DILocation(line: 180, column: 57, scope: !1305)
!1315 = !DILocation(line: 182, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1305, file: !106, line: 182, column: 7)
!1317 = !DILocation(line: 182, column: 7, scope: !1305)
!1318 = !DILocation(line: 184, column: 6, scope: !1305)
!1319 = !DILocation(line: 184, column: 12, scope: !1305)
!1320 = !DILocation(line: 185, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1305, file: !106, line: 185, column: 7)
!1322 = !DILocation(line: 185, column: 23, scope: !1321)
!1323 = !DILocation(line: 185, column: 19, scope: !1321)
!1324 = !DILocation(line: 186, column: 5, scope: !1321)
!1325 = !DILocation(line: 187, column: 6, scope: !1305)
!1326 = !DILocation(line: 187, column: 17, scope: !1305)
!1327 = !{!1242, !642, i64 40}
!1328 = !DILocation(line: 188, column: 6, scope: !1305)
!1329 = !DILocation(line: 188, column: 18, scope: !1305)
!1330 = !{!1242, !642, i64 48}
!1331 = !DILocation(line: 189, column: 1, scope: !1305)
!1332 = distinct !DISubprogram(name: "quotearg_buffer", scope: !106, file: !106, line: 784, type: !1333, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!100, !6, !100, !19, !100, !1234}
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1336 = !DILocalVariable(name: "buffer", arg: 1, scope: !1332, file: !106, line: 784, type: !6)
!1337 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1332, file: !106, line: 784, type: !100)
!1338 = !DILocalVariable(name: "arg", arg: 3, scope: !1332, file: !106, line: 785, type: !19)
!1339 = !DILocalVariable(name: "argsize", arg: 4, scope: !1332, file: !106, line: 785, type: !100)
!1340 = !DILocalVariable(name: "o", arg: 5, scope: !1332, file: !106, line: 786, type: !1234)
!1341 = !DILocalVariable(name: "p", scope: !1332, file: !106, line: 788, type: !1234)
!1342 = !DILocalVariable(name: "e", scope: !1332, file: !106, line: 789, type: !22)
!1343 = !DILocalVariable(name: "r", scope: !1332, file: !106, line: 790, type: !100)
!1344 = !DILocation(line: 784, column: 24, scope: !1332)
!1345 = !DILocation(line: 784, column: 39, scope: !1332)
!1346 = !DILocation(line: 785, column: 30, scope: !1332)
!1347 = !DILocation(line: 785, column: 42, scope: !1332)
!1348 = !DILocation(line: 786, column: 48, scope: !1332)
!1349 = !DILocation(line: 788, column: 37, scope: !1332)
!1350 = !DILocation(line: 788, column: 33, scope: !1332)
!1351 = !DILocation(line: 789, column: 11, scope: !1332)
!1352 = !DILocation(line: 789, column: 7, scope: !1332)
!1353 = !DILocation(line: 791, column: 43, scope: !1332)
!1354 = !DILocation(line: 791, column: 53, scope: !1332)
!1355 = !DILocation(line: 791, column: 60, scope: !1332)
!1356 = !DILocation(line: 792, column: 43, scope: !1332)
!1357 = !DILocation(line: 792, column: 58, scope: !1332)
!1358 = !DILocation(line: 790, column: 14, scope: !1332)
!1359 = !DILocation(line: 790, column: 10, scope: !1332)
!1360 = !DILocation(line: 793, column: 9, scope: !1332)
!1361 = !DILocation(line: 794, column: 3, scope: !1332)
!1362 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !106, file: !106, line: 256, type: !1363, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1367)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!100, !6, !100, !19, !100, !64, !22, !1365, !19, !19}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1392, !1393, !1394, !1395, !1396, !1399, !1400, !1418, !1421, !1422, !1429}
!1368 = !DILocalVariable(name: "buffer", arg: 1, scope: !1362, file: !106, line: 256, type: !6)
!1369 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1362, file: !106, line: 256, type: !100)
!1370 = !DILocalVariable(name: "arg", arg: 3, scope: !1362, file: !106, line: 257, type: !19)
!1371 = !DILocalVariable(name: "argsize", arg: 4, scope: !1362, file: !106, line: 257, type: !100)
!1372 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1362, file: !106, line: 258, type: !64)
!1373 = !DILocalVariable(name: "flags", arg: 6, scope: !1362, file: !106, line: 258, type: !22)
!1374 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1362, file: !106, line: 259, type: !1365)
!1375 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1362, file: !106, line: 260, type: !19)
!1376 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1362, file: !106, line: 261, type: !19)
!1377 = !DILocalVariable(name: "i", scope: !1362, file: !106, line: 263, type: !100)
!1378 = !DILocalVariable(name: "len", scope: !1362, file: !106, line: 264, type: !100)
!1379 = !DILocalVariable(name: "orig_buffersize", scope: !1362, file: !106, line: 265, type: !100)
!1380 = !DILocalVariable(name: "quote_string", scope: !1362, file: !106, line: 266, type: !19)
!1381 = !DILocalVariable(name: "quote_string_len", scope: !1362, file: !106, line: 267, type: !100)
!1382 = !DILocalVariable(name: "backslash_escapes", scope: !1362, file: !106, line: 268, type: !44)
!1383 = !DILocalVariable(name: "unibyte_locale", scope: !1362, file: !106, line: 269, type: !44)
!1384 = !DILocalVariable(name: "elide_outer_quotes", scope: !1362, file: !106, line: 270, type: !44)
!1385 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1362, file: !106, line: 271, type: !44)
!1386 = !DILocalVariable(name: "encountered_single_quote", scope: !1362, file: !106, line: 272, type: !44)
!1387 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1362, file: !106, line: 273, type: !44)
!1388 = !DILocalVariable(name: "c", scope: !1389, file: !106, line: 402, type: !1264)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !106, line: 401, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !106, line: 400, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 400, column: 3)
!1392 = !DILocalVariable(name: "esc", scope: !1389, file: !106, line: 403, type: !1264)
!1393 = !DILocalVariable(name: "is_right_quote", scope: !1389, file: !106, line: 404, type: !44)
!1394 = !DILocalVariable(name: "escaping", scope: !1389, file: !106, line: 405, type: !44)
!1395 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1389, file: !106, line: 406, type: !44)
!1396 = !DILocalVariable(name: "m", scope: !1397, file: !106, line: 610, type: !100)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 608, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 426, column: 9)
!1399 = !DILocalVariable(name: "printable", scope: !1397, file: !106, line: 612, type: !44)
!1400 = !DILocalVariable(name: "mbstate", scope: !1401, file: !106, line: 621, type: !1403)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !106, line: 620, column: 15)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !106, line: 614, column: 17)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1404, line: 6, baseType: !1405)
!1404 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1406, line: 21, baseType: !1407)
!1406 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1406, line: 13, size: 64, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1407, file: !1406, line: 15, baseType: !22, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1407, file: !1406, line: 20, baseType: !1411, size: 32, offset: 32)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !1406, line: 16, size: 32, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1411, file: !1406, line: 18, baseType: !9, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1411, file: !1406, line: 19, baseType: !1415, size: 32)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 4)
!1418 = !DILocalVariable(name: "w", scope: !1419, file: !106, line: 631, type: !1420)
!1419 = distinct !DILexicalBlock(scope: !1401, file: !106, line: 630, column: 19)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 90, baseType: !22)
!1421 = !DILocalVariable(name: "bytes", scope: !1419, file: !106, line: 632, type: !100)
!1422 = !DILocalVariable(name: "j", scope: !1423, file: !106, line: 657, type: !100)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !106, line: 656, column: 27)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !106, line: 654, column: 29)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !106, line: 649, column: 23)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !106, line: 641, column: 30)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !106, line: 636, column: 30)
!1428 = distinct !DILexicalBlock(scope: !1419, file: !106, line: 634, column: 25)
!1429 = !DILocalVariable(name: "ilim", scope: !1430, file: !106, line: 684, type: !100)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !106, line: 681, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1397, file: !106, line: 680, column: 17)
!1432 = !DILocation(line: 256, column: 33, scope: !1362)
!1433 = !DILocation(line: 256, column: 48, scope: !1362)
!1434 = !DILocation(line: 257, column: 39, scope: !1362)
!1435 = !DILocation(line: 257, column: 51, scope: !1362)
!1436 = !DILocation(line: 258, column: 46, scope: !1362)
!1437 = !DILocation(line: 258, column: 65, scope: !1362)
!1438 = !DILocation(line: 259, column: 47, scope: !1362)
!1439 = !DILocation(line: 260, column: 39, scope: !1362)
!1440 = !DILocation(line: 261, column: 39, scope: !1362)
!1441 = !DILocation(line: 264, column: 10, scope: !1362)
!1442 = !DILocation(line: 265, column: 10, scope: !1362)
!1443 = !DILocation(line: 266, column: 15, scope: !1362)
!1444 = !DILocation(line: 267, column: 10, scope: !1362)
!1445 = !DILocation(line: 268, column: 8, scope: !1362)
!1446 = !DILocation(line: 269, column: 25, scope: !1362)
!1447 = !DILocation(line: 269, column: 36, scope: !1362)
!1448 = !DILocation(line: 270, column: 8, scope: !1362)
!1449 = !DILocation(line: 271, column: 8, scope: !1362)
!1450 = !DILocation(line: 272, column: 8, scope: !1362)
!1451 = !DILocation(line: 273, column: 8, scope: !1362)
!1452 = !DILocation(line: 273, column: 3, scope: !1362)
!1453 = !DILocation(line: 0, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 317, column: 5)
!1455 = !DILocation(line: 316, column: 3, scope: !1362)
!1456 = !DILocation(line: 323, column: 11, scope: !1454)
!1457 = !DILocation(line: 323, column: 12, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !106, line: 323, column: 11)
!1459 = !DILocation(line: 324, column: 9, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !106, line: 324, column: 9)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !106, line: 324, column: 9)
!1462 = !DILocation(line: 324, column: 9, scope: !1461)
!1463 = !DILocation(line: 362, column: 26, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 340, column: 11)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !106, line: 339, column: 13)
!1466 = distinct !DILexicalBlock(scope: !1454, file: !106, line: 338, column: 7)
!1467 = !DILocation(line: 363, column: 27, scope: !1464)
!1468 = !DILocation(line: 364, column: 11, scope: !1464)
!1469 = !DILocation(line: 365, column: 14, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !106, line: 365, column: 13)
!1471 = !DILocation(line: 365, column: 13, scope: !1466)
!1472 = !DILocation(line: 366, column: 43, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !106, line: 366, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !106, line: 366, column: 11)
!1475 = !DILocation(line: 366, column: 11, scope: !1474)
!1476 = !DILocation(line: 367, column: 13, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !106, line: 367, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !106, line: 367, column: 13)
!1479 = !DILocation(line: 367, column: 13, scope: !1478)
!1480 = !DILocation(line: 366, column: 70, scope: !1473)
!1481 = distinct !{!1481, !1475, !1482}
!1482 = !DILocation(line: 367, column: 13, scope: !1474)
!1483 = !DILocation(line: 370, column: 28, scope: !1466)
!1484 = !DILocation(line: 372, column: 7, scope: !1454)
!1485 = !DILocation(line: 376, column: 7, scope: !1454)
!1486 = !DILocation(line: 379, column: 7, scope: !1454)
!1487 = !DILocation(line: 381, column: 12, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1454, file: !106, line: 381, column: 11)
!1489 = !DILocation(line: 381, column: 11, scope: !1454)
!1490 = !DILocation(line: 0, scope: !1488)
!1491 = !DILocation(line: 386, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1454, file: !106, line: 386, column: 11)
!1493 = !DILocation(line: 386, column: 11, scope: !1454)
!1494 = !DILocation(line: 387, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !106, line: 387, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 387, column: 9)
!1497 = !DILocation(line: 387, column: 9, scope: !1496)
!1498 = !DILocation(line: 394, column: 7, scope: !1454)
!1499 = !DILocation(line: 397, column: 7, scope: !1454)
!1500 = !DILocation(line: 0, scope: !1362)
!1501 = !DILocation(line: 263, column: 10, scope: !1362)
!1502 = !DILocation(line: 400, column: 8, scope: !1391)
!1503 = !DILocation(line: 0, scope: !1390)
!1504 = !DILocation(line: 400, column: 27, scope: !1390)
!1505 = !DILocation(line: 400, column: 19, scope: !1390)
!1506 = !DILocation(line: 400, column: 41, scope: !1390)
!1507 = !DILocation(line: 400, column: 48, scope: !1390)
!1508 = !DILocation(line: 400, column: 3, scope: !1391)
!1509 = !DILocation(line: 400, column: 60, scope: !1390)
!1510 = !DILocation(line: 404, column: 12, scope: !1389)
!1511 = !DILocation(line: 405, column: 12, scope: !1389)
!1512 = !DILocation(line: 406, column: 12, scope: !1389)
!1513 = !DILocation(line: 409, column: 11, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 408, column: 11)
!1515 = !DILocation(line: 411, column: 17, scope: !1514)
!1516 = !DILocation(line: 412, column: 39, scope: !1514)
!1517 = !DILocation(line: 416, column: 32, scope: !1514)
!1518 = !DILocation(line: 412, column: 19, scope: !1514)
!1519 = !DILocation(line: 412, column: 15, scope: !1514)
!1520 = !DILocation(line: 417, column: 11, scope: !1514)
!1521 = !DILocation(line: 417, column: 26, scope: !1514)
!1522 = !DILocation(line: 417, column: 14, scope: !1514)
!1523 = !DILocation(line: 417, column: 63, scope: !1514)
!1524 = !DILocation(line: 408, column: 11, scope: !1389)
!1525 = !DILocation(line: 0, scope: !1389)
!1526 = !DILocation(line: 424, column: 11, scope: !1389)
!1527 = !DILocation(line: 402, column: 21, scope: !1389)
!1528 = !DILocation(line: 425, column: 7, scope: !1389)
!1529 = !DILocation(line: 428, column: 15, scope: !1398)
!1530 = !DILocation(line: 430, column: 15, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !106, line: 430, column: 15)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !106, line: 429, column: 13)
!1533 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 428, column: 15)
!1534 = !DILocation(line: 430, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !106, line: 430, column: 15)
!1536 = !DILocation(line: 430, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !106, line: 430, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !106, line: 430, column: 15)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !106, line: 430, column: 15)
!1540 = !DILocation(line: 430, column: 15, scope: !1538)
!1541 = !DILocation(line: 430, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !106, line: 430, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !106, line: 430, column: 15)
!1544 = !DILocation(line: 430, column: 15, scope: !1543)
!1545 = !DILocation(line: 430, column: 15, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !106, line: 430, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !106, line: 430, column: 15)
!1548 = !DILocation(line: 430, column: 15, scope: !1547)
!1549 = !DILocation(line: 430, column: 15, scope: !1539)
!1550 = !DILocation(line: 430, column: 15, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !106, line: 430, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1531, file: !106, line: 430, column: 15)
!1553 = !DILocation(line: 430, column: 15, scope: !1552)
!1554 = !DILocation(line: 438, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1532, file: !106, line: 437, column: 19)
!1556 = !DILocation(line: 438, column: 24, scope: !1555)
!1557 = !DILocation(line: 438, column: 28, scope: !1555)
!1558 = !DILocation(line: 438, column: 38, scope: !1555)
!1559 = !DILocation(line: 438, column: 48, scope: !1555)
!1560 = !DILocation(line: 438, column: 59, scope: !1555)
!1561 = !DILocation(line: 440, column: 19, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !106, line: 440, column: 19)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !106, line: 440, column: 19)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !106, line: 439, column: 17)
!1565 = !DILocation(line: 440, column: 19, scope: !1563)
!1566 = !DILocation(line: 441, column: 19, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !106, line: 441, column: 19)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !106, line: 441, column: 19)
!1569 = !DILocation(line: 441, column: 19, scope: !1568)
!1570 = !DILocation(line: 442, column: 17, scope: !1564)
!1571 = !DILocation(line: 449, column: 20, scope: !1533)
!1572 = !DILocation(line: 454, column: 11, scope: !1398)
!1573 = !DILocation(line: 457, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 455, column: 13)
!1575 = !DILocation(line: 463, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !106, line: 462, column: 19)
!1577 = !DILocation(line: 463, column: 24, scope: !1576)
!1578 = !DILocation(line: 463, column: 28, scope: !1576)
!1579 = !DILocation(line: 463, column: 38, scope: !1576)
!1580 = !DILocation(line: 463, column: 47, scope: !1576)
!1581 = !DILocation(line: 463, column: 41, scope: !1576)
!1582 = !DILocation(line: 463, column: 52, scope: !1576)
!1583 = !DILocation(line: 462, column: 19, scope: !1574)
!1584 = !DILocation(line: 464, column: 25, scope: !1576)
!1585 = !DILocation(line: 464, column: 17, scope: !1576)
!1586 = !DILocation(line: 471, column: 25, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !106, line: 465, column: 19)
!1588 = !DILocation(line: 475, column: 21, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !106, line: 475, column: 21)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !106, line: 475, column: 21)
!1591 = !DILocation(line: 475, column: 21, scope: !1590)
!1592 = !DILocation(line: 476, column: 21, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !106, line: 476, column: 21)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !106, line: 476, column: 21)
!1595 = !DILocation(line: 476, column: 21, scope: !1594)
!1596 = !DILocation(line: 477, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !106, line: 477, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !106, line: 477, column: 21)
!1599 = !DILocation(line: 477, column: 21, scope: !1598)
!1600 = !DILocation(line: 478, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !106, line: 478, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !106, line: 478, column: 21)
!1603 = !DILocation(line: 478, column: 21, scope: !1602)
!1604 = !DILocation(line: 479, column: 21, scope: !1587)
!1605 = !DILocation(line: 403, column: 21, scope: !1389)
!1606 = !DILocation(line: 492, column: 31, scope: !1398)
!1607 = !DILocation(line: 493, column: 31, scope: !1398)
!1608 = !DILocation(line: 495, column: 31, scope: !1398)
!1609 = !DILocation(line: 496, column: 31, scope: !1398)
!1610 = !DILocation(line: 497, column: 31, scope: !1398)
!1611 = !DILocation(line: 500, column: 15, scope: !1398)
!1612 = !DILocation(line: 502, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !106, line: 501, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 500, column: 15)
!1615 = !DILocation(line: 509, column: 33, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 509, column: 15)
!1617 = !DILocation(line: 0, scope: !1398)
!1618 = !DILocation(line: 514, column: 15, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 513, column: 15)
!1620 = !DILocation(line: 518, column: 15, scope: !1398)
!1621 = !DILocation(line: 526, column: 26, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 526, column: 15)
!1623 = !DILocation(line: 526, column: 15, scope: !1398)
!1624 = !DILocation(line: 526, column: 40, scope: !1622)
!1625 = !DILocation(line: 526, column: 47, scope: !1622)
!1626 = !DILocation(line: 530, column: 17, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 530, column: 15)
!1628 = !DILocation(line: 526, column: 18, scope: !1622)
!1629 = !DILocation(line: 526, column: 65, scope: !1622)
!1630 = !DILocation(line: 530, column: 15, scope: !1398)
!1631 = !DILocation(line: 535, column: 11, scope: !1398)
!1632 = !DILocation(line: 549, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 548, column: 15)
!1634 = !DILocation(line: 556, column: 15, scope: !1398)
!1635 = !DILocation(line: 558, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !106, line: 557, column: 13)
!1637 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 556, column: 15)
!1638 = !DILocation(line: 561, column: 19, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !106, line: 561, column: 19)
!1640 = !DILocation(line: 561, column: 35, scope: !1639)
!1641 = !DILocation(line: 561, column: 30, scope: !1639)
!1642 = !DILocation(line: 570, column: 15, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !106, line: 570, column: 15)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !106, line: 570, column: 15)
!1645 = !DILocation(line: 570, column: 15, scope: !1644)
!1646 = !DILocation(line: 571, column: 15, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !106, line: 571, column: 15)
!1648 = distinct !DILexicalBlock(scope: !1636, file: !106, line: 571, column: 15)
!1649 = !DILocation(line: 571, column: 15, scope: !1648)
!1650 = !DILocation(line: 572, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !106, line: 572, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1636, file: !106, line: 572, column: 15)
!1653 = !DILocation(line: 572, column: 15, scope: !1652)
!1654 = !DILocation(line: 574, column: 13, scope: !1636)
!1655 = !DILocation(line: 614, column: 17, scope: !1397)
!1656 = !DILocation(line: 610, column: 20, scope: !1397)
!1657 = !DILocation(line: 617, column: 29, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1402, file: !106, line: 615, column: 15)
!1659 = !{!1660, !1660, i64 0}
!1660 = !{!"short", !643, i64 0}
!1661 = !DILocation(line: 617, column: 27, scope: !1658)
!1662 = !DILocation(line: 612, column: 18, scope: !1397)
!1663 = !DILocation(line: 618, column: 15, scope: !1658)
!1664 = !DILocation(line: 621, column: 17, scope: !1401)
!1665 = !DILocation(line: 622, column: 17, scope: !1401)
!1666 = !DILocation(line: 626, column: 29, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1401, file: !106, line: 626, column: 21)
!1668 = !DILocation(line: 626, column: 21, scope: !1401)
!1669 = !DILocation(line: 627, column: 29, scope: !1667)
!1670 = !DILocation(line: 627, column: 19, scope: !1667)
!1671 = !DILocation(line: 0, scope: !1514)
!1672 = !DILocation(line: 629, column: 17, scope: !1401)
!1673 = !DILocation(line: 624, column: 19, scope: !1401)
!1674 = !DILocation(line: 625, column: 27, scope: !1401)
!1675 = !DILocation(line: 631, column: 21, scope: !1419)
!1676 = !DILocation(line: 632, column: 56, scope: !1419)
!1677 = !DILocation(line: 632, column: 50, scope: !1419)
!1678 = !DILocation(line: 633, column: 53, scope: !1419)
!1679 = !DILocation(line: 621, column: 27, scope: !1401)
!1680 = !DILocation(line: 631, column: 29, scope: !1419)
!1681 = !DILocation(line: 632, column: 36, scope: !1419)
!1682 = !DILocation(line: 632, column: 28, scope: !1419)
!1683 = !DILocation(line: 634, column: 25, scope: !1419)
!1684 = !DILocation(line: 644, column: 38, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1426, file: !106, line: 642, column: 23)
!1686 = !DILocation(line: 644, column: 48, scope: !1685)
!1687 = !DILocation(line: 644, column: 51, scope: !1685)
!1688 = !DILocation(line: 644, column: 25, scope: !1685)
!1689 = !DILocation(line: 645, column: 28, scope: !1685)
!1690 = !DILocation(line: 644, column: 34, scope: !1685)
!1691 = distinct !{!1691, !1688, !1689}
!1692 = !DILocation(line: 658, column: 43, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !106, line: 658, column: 29)
!1694 = distinct !DILexicalBlock(scope: !1423, file: !106, line: 658, column: 29)
!1695 = !DILocation(line: 655, column: 29, scope: !1424)
!1696 = !DILocation(line: 657, column: 36, scope: !1423)
!1697 = !DILocation(line: 659, column: 49, scope: !1693)
!1698 = !DILocation(line: 659, column: 39, scope: !1693)
!1699 = !DILocation(line: 659, column: 31, scope: !1693)
!1700 = !DILocation(line: 658, column: 53, scope: !1693)
!1701 = !DILocation(line: 658, column: 29, scope: !1694)
!1702 = distinct !{!1702, !1701, !1703}
!1703 = !DILocation(line: 667, column: 33, scope: !1694)
!1704 = !DILocation(line: 674, column: 19, scope: !1401)
!1705 = !DILocation(line: 670, column: 41, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1425, file: !106, line: 670, column: 29)
!1707 = !DILocation(line: 670, column: 31, scope: !1706)
!1708 = !DILocation(line: 670, column: 29, scope: !1425)
!1709 = !DILocation(line: 672, column: 27, scope: !1425)
!1710 = !DILocation(line: 675, column: 26, scope: !1401)
!1711 = !DILocation(line: 675, column: 24, scope: !1401)
!1712 = !DILocation(line: 674, column: 19, scope: !1419)
!1713 = distinct !{!1713, !1672, !1714}
!1714 = !DILocation(line: 675, column: 44, scope: !1401)
!1715 = !DILocation(line: 676, column: 15, scope: !1402)
!1716 = !DILocation(line: 0, scope: !1667)
!1717 = !DILocation(line: 0, scope: !1401)
!1718 = !DILocation(line: 678, column: 40, scope: !1397)
!1719 = !DILocation(line: 680, column: 19, scope: !1431)
!1720 = !DILocation(line: 680, column: 45, scope: !1431)
!1721 = !DILocation(line: 680, column: 23, scope: !1431)
!1722 = !DILocation(line: 684, column: 33, scope: !1430)
!1723 = !DILocation(line: 684, column: 24, scope: !1430)
!1724 = !DILocation(line: 686, column: 17, scope: !1430)
!1725 = !DILocation(line: 0, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !106, line: 687, column: 19)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !106, line: 686, column: 17)
!1728 = distinct !DILexicalBlock(scope: !1430, file: !106, line: 686, column: 17)
!1729 = !DILocation(line: 0, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !106, line: 703, column: 21)
!1731 = !DILocation(line: 0, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !106, line: 696, column: 23)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !106, line: 695, column: 30)
!1734 = distinct !DILexicalBlock(scope: !1726, file: !106, line: 688, column: 25)
!1735 = !DILocation(line: 688, column: 43, scope: !1734)
!1736 = !DILocation(line: 690, column: 25, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !106, line: 690, column: 25)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !106, line: 689, column: 23)
!1739 = !DILocation(line: 690, column: 25, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !106, line: 690, column: 25)
!1741 = !DILocation(line: 690, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !106, line: 690, column: 25)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !106, line: 690, column: 25)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !106, line: 690, column: 25)
!1745 = !DILocation(line: 690, column: 25, scope: !1743)
!1746 = !DILocation(line: 690, column: 25, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !106, line: 690, column: 25)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !106, line: 690, column: 25)
!1749 = !DILocation(line: 690, column: 25, scope: !1748)
!1750 = !DILocation(line: 690, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !106, line: 690, column: 25)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !106, line: 690, column: 25)
!1753 = !DILocation(line: 690, column: 25, scope: !1752)
!1754 = !DILocation(line: 690, column: 25, scope: !1744)
!1755 = !DILocation(line: 690, column: 25, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !106, line: 690, column: 25)
!1757 = distinct !DILexicalBlock(scope: !1737, file: !106, line: 690, column: 25)
!1758 = !DILocation(line: 690, column: 25, scope: !1757)
!1759 = !DILocation(line: 691, column: 25, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !106, line: 691, column: 25)
!1761 = distinct !DILexicalBlock(scope: !1738, file: !106, line: 691, column: 25)
!1762 = !DILocation(line: 691, column: 25, scope: !1761)
!1763 = !DILocation(line: 692, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !106, line: 692, column: 25)
!1765 = distinct !DILexicalBlock(scope: !1738, file: !106, line: 692, column: 25)
!1766 = !DILocation(line: 692, column: 25, scope: !1765)
!1767 = !DILocation(line: 693, column: 38, scope: !1738)
!1768 = !DILocation(line: 693, column: 33, scope: !1738)
!1769 = !DILocation(line: 694, column: 23, scope: !1738)
!1770 = !DILocation(line: 695, column: 30, scope: !1733)
!1771 = !DILocation(line: 695, column: 30, scope: !1734)
!1772 = !DILocation(line: 697, column: 25, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !106, line: 697, column: 25)
!1774 = distinct !DILexicalBlock(scope: !1732, file: !106, line: 697, column: 25)
!1775 = !DILocation(line: 697, column: 25, scope: !1774)
!1776 = !DILocation(line: 699, column: 23, scope: !1732)
!1777 = !DILocation(line: 0, scope: !1765)
!1778 = !DILocation(line: 0, scope: !1738)
!1779 = !DILocation(line: 0, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1514, file: !106, line: 418, column: 9)
!1781 = !DILocation(line: 0, scope: !1737)
!1782 = !DILocation(line: 700, column: 35, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1726, file: !106, line: 700, column: 25)
!1784 = !DILocation(line: 700, column: 30, scope: !1783)
!1785 = !DILocation(line: 700, column: 25, scope: !1726)
!1786 = !DILocation(line: 702, column: 21, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !106, line: 702, column: 21)
!1788 = distinct !DILexicalBlock(scope: !1726, file: !106, line: 702, column: 21)
!1789 = !DILocation(line: 702, column: 21, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !106, line: 702, column: 21)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !106, line: 702, column: 21)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !106, line: 702, column: 21)
!1793 = !DILocation(line: 702, column: 21, scope: !1791)
!1794 = !DILocation(line: 702, column: 21, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !106, line: 702, column: 21)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !106, line: 702, column: 21)
!1797 = !DILocation(line: 702, column: 21, scope: !1796)
!1798 = !DILocation(line: 702, column: 21, scope: !1792)
!1799 = !DILocation(line: 0, scope: !1774)
!1800 = !DILocation(line: 703, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1730, file: !106, line: 703, column: 21)
!1802 = !DILocation(line: 703, column: 21, scope: !1730)
!1803 = !DILocation(line: 704, column: 25, scope: !1726)
!1804 = !DILocation(line: 686, column: 17, scope: !1727)
!1805 = distinct !{!1805, !1806, !1807}
!1806 = !DILocation(line: 686, column: 17, scope: !1728)
!1807 = !DILocation(line: 705, column: 19, scope: !1728)
!1808 = !DILocation(line: 0, scope: !1391)
!1809 = !DILocation(line: 416, column: 30, scope: !1514)
!1810 = !DILocation(line: 712, column: 34, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 712, column: 11)
!1812 = !DILocation(line: 714, column: 14, scope: !1811)
!1813 = !DILocation(line: 715, column: 14, scope: !1811)
!1814 = !DILocation(line: 715, column: 35, scope: !1811)
!1815 = !DILocation(line: 715, column: 17, scope: !1811)
!1816 = !DILocation(line: 715, column: 47, scope: !1811)
!1817 = !DILocation(line: 715, column: 65, scope: !1811)
!1818 = !DILocation(line: 716, column: 15, scope: !1811)
!1819 = !DILocation(line: 716, column: 11, scope: !1811)
!1820 = !DILocation(line: 712, column: 11, scope: !1389)
!1821 = !DILocation(line: 400, column: 10, scope: !1391)
!1822 = !DILocation(line: 0, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !106, line: 519, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1398, file: !106, line: 518, column: 15)
!1825 = !DILocation(line: 720, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 720, column: 7)
!1827 = !DILocation(line: 720, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1826, file: !106, line: 720, column: 7)
!1829 = !DILocation(line: 720, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !106, line: 720, column: 7)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !106, line: 720, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !106, line: 720, column: 7)
!1833 = !DILocation(line: 720, column: 7, scope: !1831)
!1834 = !DILocation(line: 720, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !106, line: 720, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !106, line: 720, column: 7)
!1837 = !DILocation(line: 720, column: 7, scope: !1836)
!1838 = !DILocation(line: 720, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !106, line: 720, column: 7)
!1840 = distinct !DILexicalBlock(scope: !1832, file: !106, line: 720, column: 7)
!1841 = !DILocation(line: 720, column: 7, scope: !1840)
!1842 = !DILocation(line: 720, column: 7, scope: !1832)
!1843 = !DILocation(line: 720, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !106, line: 720, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1826, file: !106, line: 720, column: 7)
!1846 = !DILocation(line: 720, column: 7, scope: !1845)
!1847 = !DILocation(line: 723, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !106, line: 723, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 723, column: 7)
!1850 = !DILocation(line: 424, column: 9, scope: !1389)
!1851 = !DILocation(line: 723, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !106, line: 723, column: 7)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !106, line: 723, column: 7)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !106, line: 723, column: 7)
!1855 = !DILocation(line: 723, column: 7, scope: !1853)
!1856 = !DILocation(line: 723, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !106, line: 723, column: 7)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !106, line: 723, column: 7)
!1859 = !DILocation(line: 723, column: 7, scope: !1858)
!1860 = !DILocation(line: 723, column: 7, scope: !1854)
!1861 = !DILocation(line: 724, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !106, line: 724, column: 7)
!1863 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 724, column: 7)
!1864 = !DILocation(line: 724, column: 7, scope: !1863)
!1865 = !DILocation(line: 726, column: 13, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 726, column: 11)
!1867 = !DILocation(line: 726, column: 11, scope: !1389)
!1868 = !DILocation(line: 728, column: 5, scope: !1390)
!1869 = !DILocation(line: 400, column: 75, scope: !1390)
!1870 = !DILocation(line: 400, column: 3, scope: !1390)
!1871 = distinct !{!1871, !1508, !1872}
!1872 = !DILocation(line: 728, column: 5, scope: !1391)
!1873 = !DILocation(line: 730, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 730, column: 7)
!1875 = !DILocation(line: 730, column: 16, scope: !1874)
!1876 = !DILocation(line: 738, column: 51, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 738, column: 7)
!1878 = !DILocation(line: 739, column: 10, scope: !1877)
!1879 = !DILocation(line: 741, column: 11, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !106, line: 741, column: 11)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !106, line: 740, column: 5)
!1882 = !DILocation(line: 741, column: 11, scope: !1881)
!1883 = !DILocation(line: 742, column: 16, scope: !1880)
!1884 = !DILocation(line: 742, column: 9, scope: !1880)
!1885 = !DILocation(line: 746, column: 18, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !106, line: 746, column: 16)
!1887 = !DILocation(line: 746, column: 32, scope: !1886)
!1888 = !DILocation(line: 746, column: 29, scope: !1886)
!1889 = !DILocation(line: 755, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 755, column: 7)
!1891 = !DILocation(line: 755, column: 20, scope: !1890)
!1892 = !DILocation(line: 756, column: 12, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !106, line: 756, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !106, line: 756, column: 5)
!1895 = !DILocation(line: 756, column: 5, scope: !1894)
!1896 = !DILocation(line: 757, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !106, line: 757, column: 7)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !106, line: 757, column: 7)
!1899 = !DILocation(line: 757, column: 7, scope: !1898)
!1900 = !DILocation(line: 756, column: 39, scope: !1893)
!1901 = distinct !{!1901, !1895, !1902}
!1902 = !DILocation(line: 757, column: 7, scope: !1894)
!1903 = !DILocation(line: 759, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 759, column: 7)
!1905 = !DILocation(line: 759, column: 7, scope: !1362)
!1906 = !DILocation(line: 760, column: 5, scope: !1904)
!1907 = !DILocation(line: 760, column: 17, scope: !1904)
!1908 = !DILocation(line: 766, column: 21, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1362, file: !106, line: 766, column: 7)
!1910 = !DILocation(line: 766, column: 54, scope: !1909)
!1911 = !DILocation(line: 766, column: 51, scope: !1909)
!1912 = !DILocation(line: 770, column: 42, scope: !1362)
!1913 = !DILocation(line: 768, column: 10, scope: !1362)
!1914 = !DILocation(line: 768, column: 3, scope: !1362)
!1915 = !DILocation(line: 772, column: 1, scope: !1362)
!1916 = distinct !DISubprogram(name: "gettext_quote", scope: !106, file: !106, line: 207, type: !1917, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!19, !19, !64}
!1919 = !{!1920, !1921, !1922, !1923}
!1920 = !DILocalVariable(name: "msgid", arg: 1, scope: !1916, file: !106, line: 207, type: !19)
!1921 = !DILocalVariable(name: "s", arg: 2, scope: !1916, file: !106, line: 207, type: !64)
!1922 = !DILocalVariable(name: "translation", scope: !1916, file: !106, line: 209, type: !19)
!1923 = !DILocalVariable(name: "locale_code", scope: !1916, file: !106, line: 210, type: !19)
!1924 = !DILocation(line: 207, column: 28, scope: !1916)
!1925 = !DILocation(line: 207, column: 54, scope: !1916)
!1926 = !DILocation(line: 209, column: 29, scope: !1916)
!1927 = !DILocation(line: 209, column: 15, scope: !1916)
!1928 = !DILocation(line: 212, column: 19, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1916, file: !106, line: 212, column: 7)
!1930 = !DILocation(line: 212, column: 7, scope: !1916)
!1931 = !DILocation(line: 233, column: 17, scope: !1916)
!1932 = !DILocation(line: 210, column: 15, scope: !1916)
!1933 = !DILocalVariable(name: "s1", arg: 1, scope: !1934, file: !1935, line: 160, type: !19)
!1934 = distinct !DISubprogram(name: "strcaseeq0", scope: !1935, file: !1935, line: 160, type: !1936, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1938)
!1935 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1938 = !{!1933, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1939 = !DILocalVariable(name: "s2", arg: 2, scope: !1934, file: !1935, line: 160, type: !19)
!1940 = !DILocalVariable(name: "s20", arg: 3, scope: !1934, file: !1935, line: 160, type: !7)
!1941 = !DILocalVariable(name: "s21", arg: 4, scope: !1934, file: !1935, line: 160, type: !7)
!1942 = !DILocalVariable(name: "s22", arg: 5, scope: !1934, file: !1935, line: 160, type: !7)
!1943 = !DILocalVariable(name: "s23", arg: 6, scope: !1934, file: !1935, line: 160, type: !7)
!1944 = !DILocalVariable(name: "s24", arg: 7, scope: !1934, file: !1935, line: 160, type: !7)
!1945 = !DILocalVariable(name: "s25", arg: 8, scope: !1934, file: !1935, line: 160, type: !7)
!1946 = !DILocalVariable(name: "s26", arg: 9, scope: !1934, file: !1935, line: 160, type: !7)
!1947 = !DILocalVariable(name: "s27", arg: 10, scope: !1934, file: !1935, line: 160, type: !7)
!1948 = !DILocalVariable(name: "s28", arg: 11, scope: !1934, file: !1935, line: 160, type: !7)
!1949 = !DILocation(line: 160, column: 25, scope: !1934, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 234, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1916, file: !106, line: 234, column: 7)
!1952 = !DILocation(line: 160, column: 41, scope: !1934, inlinedAt: !1950)
!1953 = !DILocation(line: 160, column: 50, scope: !1934, inlinedAt: !1950)
!1954 = !DILocation(line: 160, column: 60, scope: !1934, inlinedAt: !1950)
!1955 = !DILocation(line: 160, column: 70, scope: !1934, inlinedAt: !1950)
!1956 = !DILocation(line: 160, column: 80, scope: !1934, inlinedAt: !1950)
!1957 = !DILocation(line: 160, column: 90, scope: !1934, inlinedAt: !1950)
!1958 = !DILocation(line: 160, column: 100, scope: !1934, inlinedAt: !1950)
!1959 = !DILocation(line: 160, column: 110, scope: !1934, inlinedAt: !1950)
!1960 = !DILocation(line: 160, column: 120, scope: !1934, inlinedAt: !1950)
!1961 = !DILocation(line: 160, column: 130, scope: !1934, inlinedAt: !1950)
!1962 = !DILocation(line: 162, column: 7, scope: !1963, inlinedAt: !1950)
!1963 = distinct !DILexicalBlock(scope: !1934, file: !1935, line: 162, column: 7)
!1964 = !DILocalVariable(name: "s1", arg: 1, scope: !1965, file: !1935, line: 146, type: !19)
!1965 = distinct !DISubprogram(name: "strcaseeq1", scope: !1935, file: !1935, line: 146, type: !1966, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7, !7, !7}
!1968 = !{!1964, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977}
!1969 = !DILocalVariable(name: "s2", arg: 2, scope: !1965, file: !1935, line: 146, type: !19)
!1970 = !DILocalVariable(name: "s21", arg: 3, scope: !1965, file: !1935, line: 146, type: !7)
!1971 = !DILocalVariable(name: "s22", arg: 4, scope: !1965, file: !1935, line: 146, type: !7)
!1972 = !DILocalVariable(name: "s23", arg: 5, scope: !1965, file: !1935, line: 146, type: !7)
!1973 = !DILocalVariable(name: "s24", arg: 6, scope: !1965, file: !1935, line: 146, type: !7)
!1974 = !DILocalVariable(name: "s25", arg: 7, scope: !1965, file: !1935, line: 146, type: !7)
!1975 = !DILocalVariable(name: "s26", arg: 8, scope: !1965, file: !1935, line: 146, type: !7)
!1976 = !DILocalVariable(name: "s27", arg: 9, scope: !1965, file: !1935, line: 146, type: !7)
!1977 = !DILocalVariable(name: "s28", arg: 10, scope: !1965, file: !1935, line: 146, type: !7)
!1978 = !DILocation(line: 146, column: 25, scope: !1965, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 167, column: 16, scope: !1980, inlinedAt: !1950)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !1935, line: 164, column: 11)
!1981 = distinct !DILexicalBlock(scope: !1963, file: !1935, line: 163, column: 5)
!1982 = !DILocation(line: 146, column: 41, scope: !1965, inlinedAt: !1979)
!1983 = !DILocation(line: 146, column: 50, scope: !1965, inlinedAt: !1979)
!1984 = !DILocation(line: 146, column: 60, scope: !1965, inlinedAt: !1979)
!1985 = !DILocation(line: 146, column: 70, scope: !1965, inlinedAt: !1979)
!1986 = !DILocation(line: 146, column: 80, scope: !1965, inlinedAt: !1979)
!1987 = !DILocation(line: 146, column: 90, scope: !1965, inlinedAt: !1979)
!1988 = !DILocation(line: 146, column: 100, scope: !1965, inlinedAt: !1979)
!1989 = !DILocation(line: 146, column: 110, scope: !1965, inlinedAt: !1979)
!1990 = !DILocation(line: 146, column: 120, scope: !1965, inlinedAt: !1979)
!1991 = !DILocation(line: 148, column: 7, scope: !1992, inlinedAt: !1979)
!1992 = distinct !DILexicalBlock(scope: !1965, file: !1935, line: 148, column: 7)
!1993 = !DILocalVariable(name: "s1", arg: 1, scope: !1994, file: !1935, line: 132, type: !19)
!1994 = distinct !DISubprogram(name: "strcaseeq2", scope: !1935, file: !1935, line: 132, type: !1995, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7, !7}
!1997 = !{!1993, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1998 = !DILocalVariable(name: "s2", arg: 2, scope: !1994, file: !1935, line: 132, type: !19)
!1999 = !DILocalVariable(name: "s22", arg: 3, scope: !1994, file: !1935, line: 132, type: !7)
!2000 = !DILocalVariable(name: "s23", arg: 4, scope: !1994, file: !1935, line: 132, type: !7)
!2001 = !DILocalVariable(name: "s24", arg: 5, scope: !1994, file: !1935, line: 132, type: !7)
!2002 = !DILocalVariable(name: "s25", arg: 6, scope: !1994, file: !1935, line: 132, type: !7)
!2003 = !DILocalVariable(name: "s26", arg: 7, scope: !1994, file: !1935, line: 132, type: !7)
!2004 = !DILocalVariable(name: "s27", arg: 8, scope: !1994, file: !1935, line: 132, type: !7)
!2005 = !DILocalVariable(name: "s28", arg: 9, scope: !1994, file: !1935, line: 132, type: !7)
!2006 = !DILocation(line: 132, column: 25, scope: !1994, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 153, column: 16, scope: !2008, inlinedAt: !1979)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !1935, line: 150, column: 11)
!2009 = distinct !DILexicalBlock(scope: !1992, file: !1935, line: 149, column: 5)
!2010 = !DILocation(line: 132, column: 41, scope: !1994, inlinedAt: !2007)
!2011 = !DILocation(line: 132, column: 50, scope: !1994, inlinedAt: !2007)
!2012 = !DILocation(line: 132, column: 60, scope: !1994, inlinedAt: !2007)
!2013 = !DILocation(line: 132, column: 70, scope: !1994, inlinedAt: !2007)
!2014 = !DILocation(line: 132, column: 80, scope: !1994, inlinedAt: !2007)
!2015 = !DILocation(line: 132, column: 90, scope: !1994, inlinedAt: !2007)
!2016 = !DILocation(line: 132, column: 100, scope: !1994, inlinedAt: !2007)
!2017 = !DILocation(line: 132, column: 110, scope: !1994, inlinedAt: !2007)
!2018 = !DILocation(line: 134, column: 7, scope: !2019, inlinedAt: !2007)
!2019 = distinct !DILexicalBlock(scope: !1994, file: !1935, line: 134, column: 7)
!2020 = !DILocalVariable(name: "s1", arg: 1, scope: !2021, file: !1935, line: 118, type: !19)
!2021 = distinct !DISubprogram(name: "strcaseeq3", scope: !1935, file: !1935, line: 118, type: !2022, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7}
!2024 = !{!2020, !2025, !2026, !2027, !2028, !2029, !2030, !2031}
!2025 = !DILocalVariable(name: "s2", arg: 2, scope: !2021, file: !1935, line: 118, type: !19)
!2026 = !DILocalVariable(name: "s23", arg: 3, scope: !2021, file: !1935, line: 118, type: !7)
!2027 = !DILocalVariable(name: "s24", arg: 4, scope: !2021, file: !1935, line: 118, type: !7)
!2028 = !DILocalVariable(name: "s25", arg: 5, scope: !2021, file: !1935, line: 118, type: !7)
!2029 = !DILocalVariable(name: "s26", arg: 6, scope: !2021, file: !1935, line: 118, type: !7)
!2030 = !DILocalVariable(name: "s27", arg: 7, scope: !2021, file: !1935, line: 118, type: !7)
!2031 = !DILocalVariable(name: "s28", arg: 8, scope: !2021, file: !1935, line: 118, type: !7)
!2032 = !DILocation(line: 118, column: 25, scope: !2021, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 139, column: 16, scope: !2034, inlinedAt: !2007)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !1935, line: 136, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2019, file: !1935, line: 135, column: 5)
!2036 = !DILocation(line: 118, column: 41, scope: !2021, inlinedAt: !2033)
!2037 = !DILocation(line: 118, column: 50, scope: !2021, inlinedAt: !2033)
!2038 = !DILocation(line: 118, column: 60, scope: !2021, inlinedAt: !2033)
!2039 = !DILocation(line: 118, column: 70, scope: !2021, inlinedAt: !2033)
!2040 = !DILocation(line: 118, column: 80, scope: !2021, inlinedAt: !2033)
!2041 = !DILocation(line: 118, column: 90, scope: !2021, inlinedAt: !2033)
!2042 = !DILocation(line: 118, column: 100, scope: !2021, inlinedAt: !2033)
!2043 = !DILocation(line: 120, column: 7, scope: !2044, inlinedAt: !2033)
!2044 = distinct !DILexicalBlock(scope: !2021, file: !1935, line: 120, column: 7)
!2045 = !DILocation(line: 120, column: 7, scope: !2021, inlinedAt: !2033)
!2046 = !DILocalVariable(name: "s1", arg: 1, scope: !2047, file: !1935, line: 104, type: !19)
!2047 = distinct !DISubprogram(name: "strcaseeq4", scope: !1935, file: !1935, line: 104, type: !2048, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!22, !19, !19, !7, !7, !7, !7, !7}
!2050 = !{!2046, !2051, !2052, !2053, !2054, !2055, !2056}
!2051 = !DILocalVariable(name: "s2", arg: 2, scope: !2047, file: !1935, line: 104, type: !19)
!2052 = !DILocalVariable(name: "s24", arg: 3, scope: !2047, file: !1935, line: 104, type: !7)
!2053 = !DILocalVariable(name: "s25", arg: 4, scope: !2047, file: !1935, line: 104, type: !7)
!2054 = !DILocalVariable(name: "s26", arg: 5, scope: !2047, file: !1935, line: 104, type: !7)
!2055 = !DILocalVariable(name: "s27", arg: 6, scope: !2047, file: !1935, line: 104, type: !7)
!2056 = !DILocalVariable(name: "s28", arg: 7, scope: !2047, file: !1935, line: 104, type: !7)
!2057 = !DILocation(line: 104, column: 25, scope: !2047, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 125, column: 16, scope: !2059, inlinedAt: !2033)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1935, line: 122, column: 11)
!2060 = distinct !DILexicalBlock(scope: !2044, file: !1935, line: 121, column: 5)
!2061 = !DILocation(line: 104, column: 41, scope: !2047, inlinedAt: !2058)
!2062 = !DILocation(line: 104, column: 50, scope: !2047, inlinedAt: !2058)
!2063 = !DILocation(line: 104, column: 60, scope: !2047, inlinedAt: !2058)
!2064 = !DILocation(line: 104, column: 70, scope: !2047, inlinedAt: !2058)
!2065 = !DILocation(line: 104, column: 80, scope: !2047, inlinedAt: !2058)
!2066 = !DILocation(line: 104, column: 90, scope: !2047, inlinedAt: !2058)
!2067 = !DILocation(line: 106, column: 7, scope: !2068, inlinedAt: !2058)
!2068 = distinct !DILexicalBlock(scope: !2047, file: !1935, line: 106, column: 7)
!2069 = !DILocation(line: 106, column: 7, scope: !2047, inlinedAt: !2058)
!2070 = !DILocalVariable(name: "s1", arg: 1, scope: !2071, file: !1935, line: 90, type: !19)
!2071 = distinct !DISubprogram(name: "strcaseeq5", scope: !1935, file: !1935, line: 90, type: !2072, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!22, !19, !19, !7, !7, !7, !7}
!2074 = !{!2070, !2075, !2076, !2077, !2078, !2079}
!2075 = !DILocalVariable(name: "s2", arg: 2, scope: !2071, file: !1935, line: 90, type: !19)
!2076 = !DILocalVariable(name: "s25", arg: 3, scope: !2071, file: !1935, line: 90, type: !7)
!2077 = !DILocalVariable(name: "s26", arg: 4, scope: !2071, file: !1935, line: 90, type: !7)
!2078 = !DILocalVariable(name: "s27", arg: 5, scope: !2071, file: !1935, line: 90, type: !7)
!2079 = !DILocalVariable(name: "s28", arg: 6, scope: !2071, file: !1935, line: 90, type: !7)
!2080 = !DILocation(line: 90, column: 25, scope: !2071, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 111, column: 16, scope: !2082, inlinedAt: !2058)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1935, line: 108, column: 11)
!2083 = distinct !DILexicalBlock(scope: !2068, file: !1935, line: 107, column: 5)
!2084 = !DILocation(line: 90, column: 41, scope: !2071, inlinedAt: !2081)
!2085 = !DILocation(line: 90, column: 50, scope: !2071, inlinedAt: !2081)
!2086 = !DILocation(line: 90, column: 60, scope: !2071, inlinedAt: !2081)
!2087 = !DILocation(line: 90, column: 70, scope: !2071, inlinedAt: !2081)
!2088 = !DILocation(line: 90, column: 80, scope: !2071, inlinedAt: !2081)
!2089 = !DILocation(line: 92, column: 7, scope: !2090, inlinedAt: !2081)
!2090 = distinct !DILexicalBlock(scope: !2071, file: !1935, line: 92, column: 7)
!2091 = !DILocation(line: 92, column: 7, scope: !2071, inlinedAt: !2081)
!2092 = !DILocation(line: 235, column: 12, scope: !1951)
!2093 = !DILocation(line: 235, column: 21, scope: !1951)
!2094 = !DILocation(line: 235, column: 5, scope: !1951)
!2095 = !DILocation(line: 146, column: 25, scope: !1965, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 167, column: 16, scope: !1980, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 236, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1916, file: !106, line: 236, column: 7)
!2099 = !DILocation(line: 146, column: 41, scope: !1965, inlinedAt: !2096)
!2100 = !DILocation(line: 146, column: 50, scope: !1965, inlinedAt: !2096)
!2101 = !DILocation(line: 146, column: 60, scope: !1965, inlinedAt: !2096)
!2102 = !DILocation(line: 146, column: 70, scope: !1965, inlinedAt: !2096)
!2103 = !DILocation(line: 146, column: 80, scope: !1965, inlinedAt: !2096)
!2104 = !DILocation(line: 146, column: 90, scope: !1965, inlinedAt: !2096)
!2105 = !DILocation(line: 146, column: 100, scope: !1965, inlinedAt: !2096)
!2106 = !DILocation(line: 146, column: 110, scope: !1965, inlinedAt: !2096)
!2107 = !DILocation(line: 146, column: 120, scope: !1965, inlinedAt: !2096)
!2108 = !DILocation(line: 148, column: 7, scope: !1992, inlinedAt: !2096)
!2109 = !DILocation(line: 132, column: 25, scope: !1994, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 153, column: 16, scope: !2008, inlinedAt: !2096)
!2111 = !DILocation(line: 132, column: 41, scope: !1994, inlinedAt: !2110)
!2112 = !DILocation(line: 132, column: 50, scope: !1994, inlinedAt: !2110)
!2113 = !DILocation(line: 132, column: 60, scope: !1994, inlinedAt: !2110)
!2114 = !DILocation(line: 132, column: 70, scope: !1994, inlinedAt: !2110)
!2115 = !DILocation(line: 132, column: 80, scope: !1994, inlinedAt: !2110)
!2116 = !DILocation(line: 132, column: 90, scope: !1994, inlinedAt: !2110)
!2117 = !DILocation(line: 132, column: 100, scope: !1994, inlinedAt: !2110)
!2118 = !DILocation(line: 132, column: 110, scope: !1994, inlinedAt: !2110)
!2119 = !DILocation(line: 134, column: 7, scope: !2019, inlinedAt: !2110)
!2120 = !DILocation(line: 134, column: 7, scope: !1994, inlinedAt: !2110)
!2121 = !DILocation(line: 118, column: 25, scope: !2021, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 139, column: 16, scope: !2034, inlinedAt: !2110)
!2123 = !DILocation(line: 118, column: 41, scope: !2021, inlinedAt: !2122)
!2124 = !DILocation(line: 118, column: 50, scope: !2021, inlinedAt: !2122)
!2125 = !DILocation(line: 118, column: 60, scope: !2021, inlinedAt: !2122)
!2126 = !DILocation(line: 118, column: 70, scope: !2021, inlinedAt: !2122)
!2127 = !DILocation(line: 118, column: 80, scope: !2021, inlinedAt: !2122)
!2128 = !DILocation(line: 118, column: 90, scope: !2021, inlinedAt: !2122)
!2129 = !DILocation(line: 118, column: 100, scope: !2021, inlinedAt: !2122)
!2130 = !DILocation(line: 120, column: 7, scope: !2044, inlinedAt: !2122)
!2131 = !DILocation(line: 120, column: 7, scope: !2021, inlinedAt: !2122)
!2132 = !DILocation(line: 104, column: 25, scope: !2047, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 125, column: 16, scope: !2059, inlinedAt: !2122)
!2134 = !DILocation(line: 104, column: 41, scope: !2047, inlinedAt: !2133)
!2135 = !DILocation(line: 104, column: 50, scope: !2047, inlinedAt: !2133)
!2136 = !DILocation(line: 104, column: 60, scope: !2047, inlinedAt: !2133)
!2137 = !DILocation(line: 104, column: 70, scope: !2047, inlinedAt: !2133)
!2138 = !DILocation(line: 104, column: 80, scope: !2047, inlinedAt: !2133)
!2139 = !DILocation(line: 104, column: 90, scope: !2047, inlinedAt: !2133)
!2140 = !DILocation(line: 106, column: 7, scope: !2068, inlinedAt: !2133)
!2141 = !DILocation(line: 106, column: 7, scope: !2047, inlinedAt: !2133)
!2142 = !DILocation(line: 90, column: 25, scope: !2071, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 111, column: 16, scope: !2082, inlinedAt: !2133)
!2144 = !DILocation(line: 90, column: 41, scope: !2071, inlinedAt: !2143)
!2145 = !DILocation(line: 90, column: 50, scope: !2071, inlinedAt: !2143)
!2146 = !DILocation(line: 90, column: 60, scope: !2071, inlinedAt: !2143)
!2147 = !DILocation(line: 90, column: 70, scope: !2071, inlinedAt: !2143)
!2148 = !DILocation(line: 90, column: 80, scope: !2071, inlinedAt: !2143)
!2149 = !DILocation(line: 92, column: 7, scope: !2090, inlinedAt: !2143)
!2150 = !DILocation(line: 92, column: 7, scope: !2071, inlinedAt: !2143)
!2151 = !DILocalVariable(name: "s1", arg: 1, scope: !2152, file: !1935, line: 76, type: !19)
!2152 = distinct !DISubprogram(name: "strcaseeq6", scope: !1935, file: !1935, line: 76, type: !2153, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!22, !19, !19, !7, !7, !7}
!2155 = !{!2151, !2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "s2", arg: 2, scope: !2152, file: !1935, line: 76, type: !19)
!2157 = !DILocalVariable(name: "s26", arg: 3, scope: !2152, file: !1935, line: 76, type: !7)
!2158 = !DILocalVariable(name: "s27", arg: 4, scope: !2152, file: !1935, line: 76, type: !7)
!2159 = !DILocalVariable(name: "s28", arg: 5, scope: !2152, file: !1935, line: 76, type: !7)
!2160 = !DILocation(line: 76, column: 25, scope: !2152, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 97, column: 16, scope: !2162, inlinedAt: !2143)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !1935, line: 94, column: 11)
!2163 = distinct !DILexicalBlock(scope: !2090, file: !1935, line: 93, column: 5)
!2164 = !DILocation(line: 76, column: 41, scope: !2152, inlinedAt: !2161)
!2165 = !DILocation(line: 76, column: 50, scope: !2152, inlinedAt: !2161)
!2166 = !DILocation(line: 76, column: 60, scope: !2152, inlinedAt: !2161)
!2167 = !DILocation(line: 76, column: 70, scope: !2152, inlinedAt: !2161)
!2168 = !DILocation(line: 78, column: 7, scope: !2169, inlinedAt: !2161)
!2169 = distinct !DILexicalBlock(scope: !2152, file: !1935, line: 78, column: 7)
!2170 = !DILocation(line: 78, column: 7, scope: !2152, inlinedAt: !2161)
!2171 = !DILocalVariable(name: "s1", arg: 1, scope: !2172, file: !1935, line: 62, type: !19)
!2172 = distinct !DISubprogram(name: "strcaseeq7", scope: !1935, file: !1935, line: 62, type: !2173, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!22, !19, !19, !7, !7}
!2175 = !{!2171, !2176, !2177, !2178}
!2176 = !DILocalVariable(name: "s2", arg: 2, scope: !2172, file: !1935, line: 62, type: !19)
!2177 = !DILocalVariable(name: "s27", arg: 3, scope: !2172, file: !1935, line: 62, type: !7)
!2178 = !DILocalVariable(name: "s28", arg: 4, scope: !2172, file: !1935, line: 62, type: !7)
!2179 = !DILocation(line: 62, column: 25, scope: !2172, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 83, column: 16, scope: !2181, inlinedAt: !2161)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !1935, line: 80, column: 11)
!2182 = distinct !DILexicalBlock(scope: !2169, file: !1935, line: 79, column: 5)
!2183 = !DILocation(line: 62, column: 41, scope: !2172, inlinedAt: !2180)
!2184 = !DILocation(line: 62, column: 50, scope: !2172, inlinedAt: !2180)
!2185 = !DILocation(line: 62, column: 60, scope: !2172, inlinedAt: !2180)
!2186 = !DILocation(line: 64, column: 7, scope: !2187, inlinedAt: !2180)
!2187 = distinct !DILexicalBlock(scope: !2172, file: !1935, line: 64, column: 7)
!2188 = !DILocation(line: 236, column: 7, scope: !1916)
!2189 = !DILocation(line: 237, column: 12, scope: !2098)
!2190 = !DILocation(line: 237, column: 21, scope: !2098)
!2191 = !DILocation(line: 237, column: 5, scope: !2098)
!2192 = !DILocation(line: 239, column: 13, scope: !1916)
!2193 = !DILocation(line: 239, column: 11, scope: !1916)
!2194 = !DILocation(line: 239, column: 3, scope: !1916)
!2195 = !DILocation(line: 0, scope: !1916)
!2196 = !DILocation(line: 240, column: 1, scope: !1916)
!2197 = distinct !DISubprogram(name: "quotearg_alloc", scope: !106, file: !106, line: 799, type: !2198, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!6, !19, !100, !1234}
!2200 = !{!2201, !2202, !2203}
!2201 = !DILocalVariable(name: "arg", arg: 1, scope: !2197, file: !106, line: 799, type: !19)
!2202 = !DILocalVariable(name: "argsize", arg: 2, scope: !2197, file: !106, line: 799, type: !100)
!2203 = !DILocalVariable(name: "o", arg: 3, scope: !2197, file: !106, line: 800, type: !1234)
!2204 = !DILocation(line: 799, column: 29, scope: !2197)
!2205 = !DILocation(line: 799, column: 41, scope: !2197)
!2206 = !DILocation(line: 800, column: 47, scope: !2197)
!2207 = !DILocalVariable(name: "arg", arg: 1, scope: !2208, file: !106, line: 812, type: !19)
!2208 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !106, file: !106, line: 812, type: !2209, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!6, !19, !100, !187, !1234}
!2211 = !{!2207, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2212 = !DILocalVariable(name: "argsize", arg: 2, scope: !2208, file: !106, line: 812, type: !100)
!2213 = !DILocalVariable(name: "size", arg: 3, scope: !2208, file: !106, line: 812, type: !187)
!2214 = !DILocalVariable(name: "o", arg: 4, scope: !2208, file: !106, line: 813, type: !1234)
!2215 = !DILocalVariable(name: "p", scope: !2208, file: !106, line: 815, type: !1234)
!2216 = !DILocalVariable(name: "e", scope: !2208, file: !106, line: 816, type: !22)
!2217 = !DILocalVariable(name: "flags", scope: !2208, file: !106, line: 818, type: !22)
!2218 = !DILocalVariable(name: "bufsize", scope: !2208, file: !106, line: 819, type: !100)
!2219 = !DILocalVariable(name: "buf", scope: !2208, file: !106, line: 823, type: !6)
!2220 = !DILocation(line: 812, column: 33, scope: !2208, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 802, column: 10, scope: !2197)
!2222 = !DILocation(line: 812, column: 45, scope: !2208, inlinedAt: !2221)
!2223 = !DILocation(line: 812, column: 62, scope: !2208, inlinedAt: !2221)
!2224 = !DILocation(line: 813, column: 51, scope: !2208, inlinedAt: !2221)
!2225 = !DILocation(line: 815, column: 37, scope: !2208, inlinedAt: !2221)
!2226 = !DILocation(line: 815, column: 33, scope: !2208, inlinedAt: !2221)
!2227 = !DILocation(line: 816, column: 11, scope: !2208, inlinedAt: !2221)
!2228 = !DILocation(line: 816, column: 7, scope: !2208, inlinedAt: !2221)
!2229 = !DILocation(line: 818, column: 18, scope: !2208, inlinedAt: !2221)
!2230 = !DILocation(line: 818, column: 24, scope: !2208, inlinedAt: !2221)
!2231 = !DILocation(line: 818, column: 7, scope: !2208, inlinedAt: !2221)
!2232 = !DILocation(line: 819, column: 69, scope: !2208, inlinedAt: !2221)
!2233 = !DILocation(line: 820, column: 53, scope: !2208, inlinedAt: !2221)
!2234 = !DILocation(line: 821, column: 49, scope: !2208, inlinedAt: !2221)
!2235 = !DILocation(line: 822, column: 49, scope: !2208, inlinedAt: !2221)
!2236 = !DILocation(line: 819, column: 20, scope: !2208, inlinedAt: !2221)
!2237 = !DILocation(line: 822, column: 62, scope: !2208, inlinedAt: !2221)
!2238 = !DILocation(line: 819, column: 10, scope: !2208, inlinedAt: !2221)
!2239 = !DILocalVariable(name: "n", arg: 1, scope: !2240, file: !183, line: 216, type: !100)
!2240 = distinct !DISubprogram(name: "xcharalloc", scope: !183, file: !183, line: 216, type: !2241, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!6, !100}
!2243 = !{!2239}
!2244 = !DILocation(line: 216, column: 20, scope: !2240, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 823, column: 15, scope: !2208, inlinedAt: !2221)
!2246 = !DILocation(line: 218, column: 10, scope: !2240, inlinedAt: !2245)
!2247 = !DILocation(line: 823, column: 9, scope: !2208, inlinedAt: !2221)
!2248 = !DILocation(line: 824, column: 60, scope: !2208, inlinedAt: !2221)
!2249 = !DILocation(line: 826, column: 32, scope: !2208, inlinedAt: !2221)
!2250 = !DILocation(line: 826, column: 47, scope: !2208, inlinedAt: !2221)
!2251 = !DILocation(line: 824, column: 3, scope: !2208, inlinedAt: !2221)
!2252 = !DILocation(line: 827, column: 9, scope: !2208, inlinedAt: !2221)
!2253 = !DILocation(line: 802, column: 3, scope: !2197)
!2254 = !DILocation(line: 812, column: 33, scope: !2208)
!2255 = !DILocation(line: 812, column: 45, scope: !2208)
!2256 = !DILocation(line: 812, column: 62, scope: !2208)
!2257 = !DILocation(line: 813, column: 51, scope: !2208)
!2258 = !DILocation(line: 815, column: 37, scope: !2208)
!2259 = !DILocation(line: 815, column: 33, scope: !2208)
!2260 = !DILocation(line: 816, column: 11, scope: !2208)
!2261 = !DILocation(line: 816, column: 7, scope: !2208)
!2262 = !DILocation(line: 818, column: 18, scope: !2208)
!2263 = !DILocation(line: 818, column: 27, scope: !2208)
!2264 = !DILocation(line: 818, column: 24, scope: !2208)
!2265 = !DILocation(line: 818, column: 7, scope: !2208)
!2266 = !DILocation(line: 819, column: 69, scope: !2208)
!2267 = !DILocation(line: 820, column: 53, scope: !2208)
!2268 = !DILocation(line: 821, column: 49, scope: !2208)
!2269 = !DILocation(line: 822, column: 49, scope: !2208)
!2270 = !DILocation(line: 819, column: 20, scope: !2208)
!2271 = !DILocation(line: 822, column: 62, scope: !2208)
!2272 = !DILocation(line: 819, column: 10, scope: !2208)
!2273 = !DILocation(line: 216, column: 20, scope: !2240, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 823, column: 15, scope: !2208)
!2275 = !DILocation(line: 218, column: 10, scope: !2240, inlinedAt: !2274)
!2276 = !DILocation(line: 823, column: 9, scope: !2208)
!2277 = !DILocation(line: 824, column: 60, scope: !2208)
!2278 = !DILocation(line: 826, column: 32, scope: !2208)
!2279 = !DILocation(line: 826, column: 47, scope: !2208)
!2280 = !DILocation(line: 824, column: 3, scope: !2208)
!2281 = !DILocation(line: 827, column: 9, scope: !2208)
!2282 = !DILocation(line: 828, column: 7, scope: !2208)
!2283 = !DILocation(line: 829, column: 11, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2208, file: !106, line: 828, column: 7)
!2285 = !{!2286, !2286, i64 0}
!2286 = !{!"long", !643, i64 0}
!2287 = !DILocation(line: 829, column: 5, scope: !2284)
!2288 = !DILocation(line: 830, column: 3, scope: !2208)
!2289 = distinct !DISubprogram(name: "quotearg_free", scope: !106, file: !106, line: 848, type: !649, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2290)
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "sv", scope: !2289, file: !106, line: 850, type: !132)
!2292 = !DILocalVariable(name: "i", scope: !2289, file: !106, line: 851, type: !22)
!2293 = !DILocation(line: 850, column: 24, scope: !2289)
!2294 = !DILocation(line: 850, column: 19, scope: !2289)
!2295 = !DILocation(line: 851, column: 7, scope: !2289)
!2296 = !DILocation(line: 852, column: 19, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !106, line: 852, column: 3)
!2298 = distinct !DILexicalBlock(scope: !2289, file: !106, line: 852, column: 3)
!2299 = !DILocation(line: 852, column: 17, scope: !2297)
!2300 = !DILocation(line: 852, column: 3, scope: !2298)
!2301 = !DILocation(line: 853, column: 17, scope: !2297)
!2302 = !{!2303, !642, i64 8}
!2303 = !{!"slotvec", !2286, i64 0, !642, i64 8}
!2304 = !DILocation(line: 853, column: 5, scope: !2297)
!2305 = !DILocation(line: 852, column: 28, scope: !2297)
!2306 = distinct !{!2306, !2300, !2307}
!2307 = !DILocation(line: 853, column: 20, scope: !2298)
!2308 = !DILocation(line: 854, column: 13, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2289, file: !106, line: 854, column: 7)
!2310 = !DILocation(line: 854, column: 17, scope: !2309)
!2311 = !DILocation(line: 854, column: 7, scope: !2289)
!2312 = !DILocation(line: 856, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !106, line: 855, column: 5)
!2314 = !DILocation(line: 857, column: 21, scope: !2313)
!2315 = !{!2303, !2286, i64 0}
!2316 = !DILocation(line: 858, column: 20, scope: !2313)
!2317 = !DILocation(line: 859, column: 5, scope: !2313)
!2318 = !DILocation(line: 860, column: 10, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2289, file: !106, line: 860, column: 7)
!2320 = !DILocation(line: 860, column: 7, scope: !2289)
!2321 = !DILocation(line: 862, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !106, line: 861, column: 5)
!2323 = !DILocation(line: 862, column: 7, scope: !2322)
!2324 = !DILocation(line: 863, column: 15, scope: !2322)
!2325 = !DILocation(line: 864, column: 5, scope: !2322)
!2326 = !DILocation(line: 865, column: 10, scope: !2289)
!2327 = !DILocation(line: 866, column: 1, scope: !2289)
!2328 = distinct !DISubprogram(name: "quotearg_n", scope: !106, file: !106, line: 931, type: !2329, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!6, !22, !19}
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "n", arg: 1, scope: !2328, file: !106, line: 931, type: !22)
!2333 = !DILocalVariable(name: "arg", arg: 2, scope: !2328, file: !106, line: 931, type: !19)
!2334 = !DILocation(line: 931, column: 17, scope: !2328)
!2335 = !DILocation(line: 931, column: 32, scope: !2328)
!2336 = !DILocation(line: 933, column: 10, scope: !2328)
!2337 = !DILocation(line: 933, column: 3, scope: !2328)
!2338 = distinct !DISubprogram(name: "quotearg_n_options", scope: !106, file: !106, line: 877, type: !2339, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!6, !22, !19, !100, !1234}
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2351, !2352, !2354, !2355, !2356}
!2342 = !DILocalVariable(name: "n", arg: 1, scope: !2338, file: !106, line: 877, type: !22)
!2343 = !DILocalVariable(name: "arg", arg: 2, scope: !2338, file: !106, line: 877, type: !19)
!2344 = !DILocalVariable(name: "argsize", arg: 3, scope: !2338, file: !106, line: 877, type: !100)
!2345 = !DILocalVariable(name: "options", arg: 4, scope: !2338, file: !106, line: 878, type: !1234)
!2346 = !DILocalVariable(name: "e", scope: !2338, file: !106, line: 880, type: !22)
!2347 = !DILocalVariable(name: "sv", scope: !2338, file: !106, line: 882, type: !132)
!2348 = !DILocalVariable(name: "preallocated", scope: !2349, file: !106, line: 889, type: !44)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !106, line: 888, column: 5)
!2350 = distinct !DILexicalBlock(scope: !2338, file: !106, line: 887, column: 7)
!2351 = !DILocalVariable(name: "nmax", scope: !2349, file: !106, line: 890, type: !22)
!2352 = !DILocalVariable(name: "size", scope: !2353, file: !106, line: 903, type: !100)
!2353 = distinct !DILexicalBlock(scope: !2338, file: !106, line: 902, column: 3)
!2354 = !DILocalVariable(name: "val", scope: !2353, file: !106, line: 904, type: !6)
!2355 = !DILocalVariable(name: "flags", scope: !2353, file: !106, line: 906, type: !22)
!2356 = !DILocalVariable(name: "qsize", scope: !2353, file: !106, line: 907, type: !100)
!2357 = !DILocation(line: 877, column: 25, scope: !2338)
!2358 = !DILocation(line: 877, column: 40, scope: !2338)
!2359 = !DILocation(line: 877, column: 52, scope: !2338)
!2360 = !DILocation(line: 878, column: 51, scope: !2338)
!2361 = !DILocation(line: 880, column: 11, scope: !2338)
!2362 = !DILocation(line: 880, column: 7, scope: !2338)
!2363 = !DILocation(line: 882, column: 24, scope: !2338)
!2364 = !DILocation(line: 882, column: 19, scope: !2338)
!2365 = !DILocation(line: 884, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2338, file: !106, line: 884, column: 7)
!2367 = !DILocation(line: 884, column: 7, scope: !2338)
!2368 = !DILocation(line: 885, column: 5, scope: !2366)
!2369 = !DILocation(line: 887, column: 7, scope: !2350)
!2370 = !DILocation(line: 887, column: 14, scope: !2350)
!2371 = !DILocation(line: 887, column: 7, scope: !2338)
!2372 = !DILocation(line: 889, column: 31, scope: !2349)
!2373 = !DILocation(line: 890, column: 11, scope: !2349)
!2374 = !DILocation(line: 892, column: 16, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2349, file: !106, line: 892, column: 11)
!2376 = !DILocation(line: 892, column: 11, scope: !2349)
!2377 = !DILocation(line: 893, column: 9, scope: !2375)
!2378 = !DILocation(line: 895, column: 32, scope: !2349)
!2379 = !DILocation(line: 895, column: 61, scope: !2349)
!2380 = !DILocation(line: 895, column: 58, scope: !2349)
!2381 = !DILocation(line: 895, column: 66, scope: !2349)
!2382 = !DILocation(line: 895, column: 22, scope: !2349)
!2383 = !DILocation(line: 895, column: 15, scope: !2349)
!2384 = !DILocation(line: 896, column: 11, scope: !2349)
!2385 = !DILocation(line: 897, column: 15, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2349, file: !106, line: 896, column: 11)
!2387 = !{i64 0, i64 8, !2285, i64 8, i64 8, !641}
!2388 = !DILocation(line: 897, column: 9, scope: !2386)
!2389 = !DILocation(line: 898, column: 20, scope: !2349)
!2390 = !DILocation(line: 898, column: 18, scope: !2349)
!2391 = !DILocation(line: 898, column: 7, scope: !2349)
!2392 = !DILocation(line: 898, column: 38, scope: !2349)
!2393 = !DILocation(line: 898, column: 31, scope: !2349)
!2394 = !DILocation(line: 898, column: 48, scope: !2349)
!2395 = !DILocation(line: 899, column: 14, scope: !2349)
!2396 = !DILocation(line: 900, column: 5, scope: !2349)
!2397 = !DILocation(line: 0, scope: !2338)
!2398 = !DILocation(line: 903, column: 19, scope: !2353)
!2399 = !DILocation(line: 903, column: 25, scope: !2353)
!2400 = !DILocation(line: 903, column: 12, scope: !2353)
!2401 = !DILocation(line: 904, column: 23, scope: !2353)
!2402 = !DILocation(line: 904, column: 11, scope: !2353)
!2403 = !DILocation(line: 906, column: 26, scope: !2353)
!2404 = !DILocation(line: 906, column: 32, scope: !2353)
!2405 = !DILocation(line: 906, column: 9, scope: !2353)
!2406 = !DILocation(line: 908, column: 55, scope: !2353)
!2407 = !DILocation(line: 909, column: 46, scope: !2353)
!2408 = !DILocation(line: 910, column: 55, scope: !2353)
!2409 = !DILocation(line: 911, column: 55, scope: !2353)
!2410 = !DILocation(line: 907, column: 20, scope: !2353)
!2411 = !DILocation(line: 907, column: 12, scope: !2353)
!2412 = !DILocation(line: 913, column: 14, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2353, file: !106, line: 913, column: 9)
!2414 = !DILocation(line: 913, column: 9, scope: !2353)
!2415 = !DILocation(line: 915, column: 35, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2413, file: !106, line: 914, column: 7)
!2417 = !DILocation(line: 915, column: 20, scope: !2416)
!2418 = !DILocation(line: 916, column: 17, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !106, line: 916, column: 13)
!2420 = !DILocation(line: 916, column: 13, scope: !2416)
!2421 = !DILocation(line: 917, column: 11, scope: !2419)
!2422 = !DILocation(line: 216, column: 20, scope: !2240, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 918, column: 27, scope: !2416)
!2424 = !DILocation(line: 218, column: 10, scope: !2240, inlinedAt: !2423)
!2425 = !DILocation(line: 918, column: 19, scope: !2416)
!2426 = !DILocation(line: 919, column: 69, scope: !2416)
!2427 = !DILocation(line: 921, column: 44, scope: !2416)
!2428 = !DILocation(line: 922, column: 44, scope: !2416)
!2429 = !DILocation(line: 919, column: 9, scope: !2416)
!2430 = !DILocation(line: 923, column: 7, scope: !2416)
!2431 = !DILocation(line: 0, scope: !2353)
!2432 = !DILocation(line: 925, column: 11, scope: !2353)
!2433 = !DILocation(line: 926, column: 5, scope: !2353)
!2434 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !106, file: !106, line: 937, type: !2435, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!6, !22, !19, !100}
!2437 = !{!2438, !2439, !2440}
!2438 = !DILocalVariable(name: "n", arg: 1, scope: !2434, file: !106, line: 937, type: !22)
!2439 = !DILocalVariable(name: "arg", arg: 2, scope: !2434, file: !106, line: 937, type: !19)
!2440 = !DILocalVariable(name: "argsize", arg: 3, scope: !2434, file: !106, line: 937, type: !100)
!2441 = !DILocation(line: 937, column: 21, scope: !2434)
!2442 = !DILocation(line: 937, column: 36, scope: !2434)
!2443 = !DILocation(line: 937, column: 48, scope: !2434)
!2444 = !DILocation(line: 939, column: 10, scope: !2434)
!2445 = !DILocation(line: 939, column: 3, scope: !2434)
!2446 = distinct !DISubprogram(name: "quotearg", scope: !106, file: !106, line: 943, type: !2447, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!6, !19}
!2449 = !{!2450}
!2450 = !DILocalVariable(name: "arg", arg: 1, scope: !2446, file: !106, line: 943, type: !19)
!2451 = !DILocation(line: 943, column: 23, scope: !2446)
!2452 = !DILocation(line: 931, column: 17, scope: !2328, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 945, column: 10, scope: !2446)
!2454 = !DILocation(line: 931, column: 32, scope: !2328, inlinedAt: !2453)
!2455 = !DILocation(line: 933, column: 10, scope: !2328, inlinedAt: !2453)
!2456 = !DILocation(line: 945, column: 3, scope: !2446)
!2457 = distinct !DISubprogram(name: "quotearg_mem", scope: !106, file: !106, line: 949, type: !2458, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!6, !19, !100}
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "arg", arg: 1, scope: !2457, file: !106, line: 949, type: !19)
!2462 = !DILocalVariable(name: "argsize", arg: 2, scope: !2457, file: !106, line: 949, type: !100)
!2463 = !DILocation(line: 949, column: 27, scope: !2457)
!2464 = !DILocation(line: 949, column: 39, scope: !2457)
!2465 = !DILocation(line: 937, column: 21, scope: !2434, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 951, column: 10, scope: !2457)
!2467 = !DILocation(line: 937, column: 36, scope: !2434, inlinedAt: !2466)
!2468 = !DILocation(line: 937, column: 48, scope: !2434, inlinedAt: !2466)
!2469 = !DILocation(line: 939, column: 10, scope: !2434, inlinedAt: !2466)
!2470 = !DILocation(line: 951, column: 3, scope: !2457)
!2471 = distinct !DISubprogram(name: "quotearg_n_style", scope: !106, file: !106, line: 955, type: !2472, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!6, !22, !64, !19}
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2471, file: !106, line: 955, type: !22)
!2476 = !DILocalVariable(name: "s", arg: 2, scope: !2471, file: !106, line: 955, type: !64)
!2477 = !DILocalVariable(name: "arg", arg: 3, scope: !2471, file: !106, line: 955, type: !19)
!2478 = !DILocalVariable(name: "o", scope: !2471, file: !106, line: 957, type: !1235)
!2479 = !DILocation(line: 955, column: 23, scope: !2471)
!2480 = !DILocation(line: 955, column: 45, scope: !2471)
!2481 = !DILocation(line: 955, column: 60, scope: !2471)
!2482 = !DILocation(line: 957, column: 3, scope: !2471)
!2483 = !DILocation(line: 957, column: 32, scope: !2471)
!2484 = !DILocalVariable(name: "style", arg: 1, scope: !2485, file: !106, line: 193, type: !64)
!2485 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !106, file: !106, line: 193, type: !2486, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!113, !64}
!2488 = !{!2484, !2489}
!2489 = !DILocalVariable(name: "o", scope: !2485, file: !106, line: 195, type: !113)
!2490 = !DILocation(line: 193, column: 48, scope: !2485, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 957, column: 36, scope: !2471)
!2492 = !DILocation(line: 195, column: 26, scope: !2485, inlinedAt: !2491)
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"quoting_options_from_style: argument 0"}
!2495 = distinct !{!2495, !"quoting_options_from_style"}
!2496 = !DILocation(line: 196, column: 13, scope: !2497, inlinedAt: !2491)
!2497 = distinct !DILexicalBlock(scope: !2485, file: !106, line: 196, column: 7)
!2498 = !DILocation(line: 196, column: 7, scope: !2485, inlinedAt: !2491)
!2499 = !DILocation(line: 197, column: 5, scope: !2497, inlinedAt: !2491)
!2500 = !DILocation(line: 198, column: 5, scope: !2485, inlinedAt: !2491)
!2501 = !DILocation(line: 198, column: 11, scope: !2485, inlinedAt: !2491)
!2502 = !DILocation(line: 958, column: 10, scope: !2471)
!2503 = !DILocation(line: 959, column: 1, scope: !2471)
!2504 = !DILocation(line: 958, column: 3, scope: !2471)
!2505 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !106, file: !106, line: 962, type: !2506, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!6, !22, !64, !19, !100}
!2508 = !{!2509, !2510, !2511, !2512, !2513}
!2509 = !DILocalVariable(name: "n", arg: 1, scope: !2505, file: !106, line: 962, type: !22)
!2510 = !DILocalVariable(name: "s", arg: 2, scope: !2505, file: !106, line: 962, type: !64)
!2511 = !DILocalVariable(name: "arg", arg: 3, scope: !2505, file: !106, line: 963, type: !19)
!2512 = !DILocalVariable(name: "argsize", arg: 4, scope: !2505, file: !106, line: 963, type: !100)
!2513 = !DILocalVariable(name: "o", scope: !2505, file: !106, line: 965, type: !1235)
!2514 = !DILocation(line: 962, column: 27, scope: !2505)
!2515 = !DILocation(line: 962, column: 49, scope: !2505)
!2516 = !DILocation(line: 963, column: 35, scope: !2505)
!2517 = !DILocation(line: 963, column: 47, scope: !2505)
!2518 = !DILocation(line: 965, column: 3, scope: !2505)
!2519 = !DILocation(line: 965, column: 32, scope: !2505)
!2520 = !DILocation(line: 193, column: 48, scope: !2485, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 965, column: 36, scope: !2505)
!2522 = !DILocation(line: 195, column: 26, scope: !2485, inlinedAt: !2521)
!2523 = !{!2524}
!2524 = distinct !{!2524, !2525, !"quoting_options_from_style: argument 0"}
!2525 = distinct !{!2525, !"quoting_options_from_style"}
!2526 = !DILocation(line: 196, column: 13, scope: !2497, inlinedAt: !2521)
!2527 = !DILocation(line: 196, column: 7, scope: !2485, inlinedAt: !2521)
!2528 = !DILocation(line: 197, column: 5, scope: !2497, inlinedAt: !2521)
!2529 = !DILocation(line: 198, column: 5, scope: !2485, inlinedAt: !2521)
!2530 = !DILocation(line: 198, column: 11, scope: !2485, inlinedAt: !2521)
!2531 = !DILocation(line: 966, column: 10, scope: !2505)
!2532 = !DILocation(line: 967, column: 1, scope: !2505)
!2533 = !DILocation(line: 966, column: 3, scope: !2505)
!2534 = distinct !DISubprogram(name: "quotearg_style", scope: !106, file: !106, line: 970, type: !2535, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!6, !64, !19}
!2537 = !{!2538, !2539}
!2538 = !DILocalVariable(name: "s", arg: 1, scope: !2534, file: !106, line: 970, type: !64)
!2539 = !DILocalVariable(name: "arg", arg: 2, scope: !2534, file: !106, line: 970, type: !19)
!2540 = !DILocation(line: 970, column: 36, scope: !2534)
!2541 = !DILocation(line: 970, column: 51, scope: !2534)
!2542 = !DILocation(line: 955, column: 23, scope: !2471, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 972, column: 10, scope: !2534)
!2544 = !DILocation(line: 955, column: 45, scope: !2471, inlinedAt: !2543)
!2545 = !DILocation(line: 955, column: 60, scope: !2471, inlinedAt: !2543)
!2546 = !DILocation(line: 957, column: 3, scope: !2471, inlinedAt: !2543)
!2547 = !DILocation(line: 957, column: 32, scope: !2471, inlinedAt: !2543)
!2548 = !DILocation(line: 193, column: 48, scope: !2485, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 957, column: 36, scope: !2471, inlinedAt: !2543)
!2550 = !DILocation(line: 195, column: 26, scope: !2485, inlinedAt: !2549)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 196, column: 13, scope: !2497, inlinedAt: !2549)
!2555 = !DILocation(line: 196, column: 7, scope: !2485, inlinedAt: !2549)
!2556 = !DILocation(line: 197, column: 5, scope: !2497, inlinedAt: !2549)
!2557 = !DILocation(line: 198, column: 5, scope: !2485, inlinedAt: !2549)
!2558 = !DILocation(line: 198, column: 11, scope: !2485, inlinedAt: !2549)
!2559 = !DILocation(line: 958, column: 10, scope: !2471, inlinedAt: !2543)
!2560 = !DILocation(line: 959, column: 1, scope: !2471, inlinedAt: !2543)
!2561 = !DILocation(line: 972, column: 3, scope: !2534)
!2562 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !106, file: !106, line: 976, type: !2563, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!6, !64, !19, !100}
!2565 = !{!2566, !2567, !2568}
!2566 = !DILocalVariable(name: "s", arg: 1, scope: !2562, file: !106, line: 976, type: !64)
!2567 = !DILocalVariable(name: "arg", arg: 2, scope: !2562, file: !106, line: 976, type: !19)
!2568 = !DILocalVariable(name: "argsize", arg: 3, scope: !2562, file: !106, line: 976, type: !100)
!2569 = !DILocation(line: 976, column: 40, scope: !2562)
!2570 = !DILocation(line: 976, column: 55, scope: !2562)
!2571 = !DILocation(line: 976, column: 67, scope: !2562)
!2572 = !DILocation(line: 962, column: 27, scope: !2505, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 978, column: 10, scope: !2562)
!2574 = !DILocation(line: 962, column: 49, scope: !2505, inlinedAt: !2573)
!2575 = !DILocation(line: 963, column: 35, scope: !2505, inlinedAt: !2573)
!2576 = !DILocation(line: 963, column: 47, scope: !2505, inlinedAt: !2573)
!2577 = !DILocation(line: 965, column: 3, scope: !2505, inlinedAt: !2573)
!2578 = !DILocation(line: 965, column: 32, scope: !2505, inlinedAt: !2573)
!2579 = !DILocation(line: 193, column: 48, scope: !2485, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 965, column: 36, scope: !2505, inlinedAt: !2573)
!2581 = !DILocation(line: 195, column: 26, scope: !2485, inlinedAt: !2580)
!2582 = !{!2583}
!2583 = distinct !{!2583, !2584, !"quoting_options_from_style: argument 0"}
!2584 = distinct !{!2584, !"quoting_options_from_style"}
!2585 = !DILocation(line: 196, column: 13, scope: !2497, inlinedAt: !2580)
!2586 = !DILocation(line: 196, column: 7, scope: !2485, inlinedAt: !2580)
!2587 = !DILocation(line: 197, column: 5, scope: !2497, inlinedAt: !2580)
!2588 = !DILocation(line: 198, column: 5, scope: !2485, inlinedAt: !2580)
!2589 = !DILocation(line: 198, column: 11, scope: !2485, inlinedAt: !2580)
!2590 = !DILocation(line: 966, column: 10, scope: !2505, inlinedAt: !2573)
!2591 = !DILocation(line: 967, column: 1, scope: !2505, inlinedAt: !2573)
!2592 = !DILocation(line: 978, column: 3, scope: !2562)
!2593 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !106, file: !106, line: 982, type: !2594, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!6, !19, !100, !7}
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DILocalVariable(name: "arg", arg: 1, scope: !2593, file: !106, line: 982, type: !19)
!2598 = !DILocalVariable(name: "argsize", arg: 2, scope: !2593, file: !106, line: 982, type: !100)
!2599 = !DILocalVariable(name: "ch", arg: 3, scope: !2593, file: !106, line: 982, type: !7)
!2600 = !DILocalVariable(name: "options", scope: !2593, file: !106, line: 984, type: !113)
!2601 = !DILocation(line: 982, column: 32, scope: !2593)
!2602 = !DILocation(line: 982, column: 44, scope: !2593)
!2603 = !DILocation(line: 982, column: 58, scope: !2593)
!2604 = !DILocation(line: 984, column: 3, scope: !2593)
!2605 = !DILocation(line: 985, column: 13, scope: !2593)
!2606 = !{i64 0, i64 4, !919, i64 4, i64 4, !748, i64 8, i64 32, !919, i64 40, i64 8, !641, i64 48, i64 8, !641}
!2607 = !DILocation(line: 984, column: 26, scope: !2593)
!2608 = !DILocation(line: 152, column: 43, scope: !1256, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 986, column: 3, scope: !2593)
!2610 = !DILocation(line: 152, column: 51, scope: !1256, inlinedAt: !2609)
!2611 = !DILocation(line: 152, column: 58, scope: !1256, inlinedAt: !2609)
!2612 = !DILocation(line: 154, column: 17, scope: !1256, inlinedAt: !2609)
!2613 = !DILocation(line: 156, column: 62, scope: !1256, inlinedAt: !2609)
!2614 = !DILocation(line: 156, column: 57, scope: !1256, inlinedAt: !2609)
!2615 = !DILocation(line: 155, column: 17, scope: !1256, inlinedAt: !2609)
!2616 = !DILocation(line: 157, column: 15, scope: !1256, inlinedAt: !2609)
!2617 = !DILocation(line: 157, column: 7, scope: !1256, inlinedAt: !2609)
!2618 = !DILocation(line: 158, column: 12, scope: !1256, inlinedAt: !2609)
!2619 = !DILocation(line: 158, column: 15, scope: !1256, inlinedAt: !2609)
!2620 = !DILocation(line: 158, column: 25, scope: !1256, inlinedAt: !2609)
!2621 = !DILocation(line: 158, column: 7, scope: !1256, inlinedAt: !2609)
!2622 = !DILocation(line: 159, column: 18, scope: !1256, inlinedAt: !2609)
!2623 = !DILocation(line: 159, column: 23, scope: !1256, inlinedAt: !2609)
!2624 = !DILocation(line: 159, column: 6, scope: !1256, inlinedAt: !2609)
!2625 = !DILocation(line: 987, column: 10, scope: !2593)
!2626 = !DILocation(line: 988, column: 1, scope: !2593)
!2627 = !DILocation(line: 987, column: 3, scope: !2593)
!2628 = distinct !DISubprogram(name: "quotearg_char", scope: !106, file: !106, line: 991, type: !2629, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!6, !19, !7}
!2631 = !{!2632, !2633}
!2632 = !DILocalVariable(name: "arg", arg: 1, scope: !2628, file: !106, line: 991, type: !19)
!2633 = !DILocalVariable(name: "ch", arg: 2, scope: !2628, file: !106, line: 991, type: !7)
!2634 = !DILocation(line: 991, column: 28, scope: !2628)
!2635 = !DILocation(line: 991, column: 38, scope: !2628)
!2636 = !DILocation(line: 982, column: 32, scope: !2593, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 993, column: 10, scope: !2628)
!2638 = !DILocation(line: 982, column: 44, scope: !2593, inlinedAt: !2637)
!2639 = !DILocation(line: 982, column: 58, scope: !2593, inlinedAt: !2637)
!2640 = !DILocation(line: 984, column: 3, scope: !2593, inlinedAt: !2637)
!2641 = !DILocation(line: 985, column: 13, scope: !2593, inlinedAt: !2637)
!2642 = !DILocation(line: 984, column: 26, scope: !2593, inlinedAt: !2637)
!2643 = !DILocation(line: 152, column: 43, scope: !1256, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 986, column: 3, scope: !2593, inlinedAt: !2637)
!2645 = !DILocation(line: 152, column: 51, scope: !1256, inlinedAt: !2644)
!2646 = !DILocation(line: 152, column: 58, scope: !1256, inlinedAt: !2644)
!2647 = !DILocation(line: 154, column: 17, scope: !1256, inlinedAt: !2644)
!2648 = !DILocation(line: 156, column: 62, scope: !1256, inlinedAt: !2644)
!2649 = !DILocation(line: 156, column: 57, scope: !1256, inlinedAt: !2644)
!2650 = !DILocation(line: 155, column: 17, scope: !1256, inlinedAt: !2644)
!2651 = !DILocation(line: 157, column: 15, scope: !1256, inlinedAt: !2644)
!2652 = !DILocation(line: 157, column: 7, scope: !1256, inlinedAt: !2644)
!2653 = !DILocation(line: 158, column: 12, scope: !1256, inlinedAt: !2644)
!2654 = !DILocation(line: 158, column: 15, scope: !1256, inlinedAt: !2644)
!2655 = !DILocation(line: 158, column: 25, scope: !1256, inlinedAt: !2644)
!2656 = !DILocation(line: 158, column: 7, scope: !1256, inlinedAt: !2644)
!2657 = !DILocation(line: 159, column: 18, scope: !1256, inlinedAt: !2644)
!2658 = !DILocation(line: 159, column: 23, scope: !1256, inlinedAt: !2644)
!2659 = !DILocation(line: 159, column: 6, scope: !1256, inlinedAt: !2644)
!2660 = !DILocation(line: 987, column: 10, scope: !2593, inlinedAt: !2637)
!2661 = !DILocation(line: 988, column: 1, scope: !2593, inlinedAt: !2637)
!2662 = !DILocation(line: 993, column: 3, scope: !2628)
!2663 = distinct !DISubprogram(name: "quotearg_colon", scope: !106, file: !106, line: 997, type: !2447, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2664)
!2664 = !{!2665}
!2665 = !DILocalVariable(name: "arg", arg: 1, scope: !2663, file: !106, line: 997, type: !19)
!2666 = !DILocation(line: 997, column: 29, scope: !2663)
!2667 = !DILocation(line: 991, column: 28, scope: !2628, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 999, column: 10, scope: !2663)
!2669 = !DILocation(line: 991, column: 38, scope: !2628, inlinedAt: !2668)
!2670 = !DILocation(line: 982, column: 32, scope: !2593, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 993, column: 10, scope: !2628, inlinedAt: !2668)
!2672 = !DILocation(line: 982, column: 44, scope: !2593, inlinedAt: !2671)
!2673 = !DILocation(line: 982, column: 58, scope: !2593, inlinedAt: !2671)
!2674 = !DILocation(line: 984, column: 3, scope: !2593, inlinedAt: !2671)
!2675 = !DILocation(line: 985, column: 13, scope: !2593, inlinedAt: !2671)
!2676 = !DILocation(line: 984, column: 26, scope: !2593, inlinedAt: !2671)
!2677 = !DILocation(line: 152, column: 43, scope: !1256, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 986, column: 3, scope: !2593, inlinedAt: !2671)
!2679 = !DILocation(line: 152, column: 51, scope: !1256, inlinedAt: !2678)
!2680 = !DILocation(line: 152, column: 58, scope: !1256, inlinedAt: !2678)
!2681 = !DILocation(line: 154, column: 17, scope: !1256, inlinedAt: !2678)
!2682 = !DILocation(line: 156, column: 57, scope: !1256, inlinedAt: !2678)
!2683 = !DILocation(line: 155, column: 17, scope: !1256, inlinedAt: !2678)
!2684 = !DILocation(line: 157, column: 7, scope: !1256, inlinedAt: !2678)
!2685 = !DILocation(line: 158, column: 12, scope: !1256, inlinedAt: !2678)
!2686 = !DILocation(line: 159, column: 6, scope: !1256, inlinedAt: !2678)
!2687 = !DILocation(line: 987, column: 10, scope: !2593, inlinedAt: !2671)
!2688 = !DILocation(line: 988, column: 1, scope: !2593, inlinedAt: !2671)
!2689 = !DILocation(line: 999, column: 3, scope: !2663)
!2690 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !106, file: !106, line: 1003, type: !2458, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2691)
!2691 = !{!2692, !2693}
!2692 = !DILocalVariable(name: "arg", arg: 1, scope: !2690, file: !106, line: 1003, type: !19)
!2693 = !DILocalVariable(name: "argsize", arg: 2, scope: !2690, file: !106, line: 1003, type: !100)
!2694 = !DILocation(line: 1003, column: 33, scope: !2690)
!2695 = !DILocation(line: 1003, column: 45, scope: !2690)
!2696 = !DILocation(line: 982, column: 32, scope: !2593, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1005, column: 10, scope: !2690)
!2698 = !DILocation(line: 982, column: 44, scope: !2593, inlinedAt: !2697)
!2699 = !DILocation(line: 982, column: 58, scope: !2593, inlinedAt: !2697)
!2700 = !DILocation(line: 984, column: 3, scope: !2593, inlinedAt: !2697)
!2701 = !DILocation(line: 985, column: 13, scope: !2593, inlinedAt: !2697)
!2702 = !DILocation(line: 984, column: 26, scope: !2593, inlinedAt: !2697)
!2703 = !DILocation(line: 152, column: 43, scope: !1256, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 986, column: 3, scope: !2593, inlinedAt: !2697)
!2705 = !DILocation(line: 152, column: 51, scope: !1256, inlinedAt: !2704)
!2706 = !DILocation(line: 152, column: 58, scope: !1256, inlinedAt: !2704)
!2707 = !DILocation(line: 154, column: 17, scope: !1256, inlinedAt: !2704)
!2708 = !DILocation(line: 156, column: 57, scope: !1256, inlinedAt: !2704)
!2709 = !DILocation(line: 155, column: 17, scope: !1256, inlinedAt: !2704)
!2710 = !DILocation(line: 157, column: 7, scope: !1256, inlinedAt: !2704)
!2711 = !DILocation(line: 158, column: 12, scope: !1256, inlinedAt: !2704)
!2712 = !DILocation(line: 159, column: 6, scope: !1256, inlinedAt: !2704)
!2713 = !DILocation(line: 987, column: 10, scope: !2593, inlinedAt: !2697)
!2714 = !DILocation(line: 988, column: 1, scope: !2593, inlinedAt: !2697)
!2715 = !DILocation(line: 1005, column: 3, scope: !2690)
!2716 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !106, file: !106, line: 1009, type: !2472, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2717)
!2717 = !{!2718, !2719, !2720, !2721}
!2718 = !DILocalVariable(name: "n", arg: 1, scope: !2716, file: !106, line: 1009, type: !22)
!2719 = !DILocalVariable(name: "s", arg: 2, scope: !2716, file: !106, line: 1009, type: !64)
!2720 = !DILocalVariable(name: "arg", arg: 3, scope: !2716, file: !106, line: 1009, type: !19)
!2721 = !DILocalVariable(name: "options", scope: !2716, file: !106, line: 1011, type: !113)
!2722 = !DILocation(line: 195, column: 26, scope: !2485, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1012, column: 13, scope: !2716)
!2724 = !DILocation(line: 1009, column: 29, scope: !2716)
!2725 = !DILocation(line: 1009, column: 51, scope: !2716)
!2726 = !DILocation(line: 1009, column: 66, scope: !2716)
!2727 = !DILocation(line: 1011, column: 3, scope: !2716)
!2728 = !DILocation(line: 1012, column: 13, scope: !2716)
!2729 = !DILocation(line: 193, column: 48, scope: !2485, inlinedAt: !2723)
!2730 = !{!2731}
!2731 = distinct !{!2731, !2732, !"quoting_options_from_style: argument 0"}
!2732 = distinct !{!2732, !"quoting_options_from_style"}
!2733 = !DILocation(line: 196, column: 13, scope: !2497, inlinedAt: !2723)
!2734 = !DILocation(line: 196, column: 7, scope: !2485, inlinedAt: !2723)
!2735 = !DILocation(line: 197, column: 5, scope: !2497, inlinedAt: !2723)
!2736 = !DILocation(line: 1011, column: 26, scope: !2716)
!2737 = !DILocation(line: 152, column: 43, scope: !1256, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1013, column: 3, scope: !2716)
!2739 = !DILocation(line: 152, column: 51, scope: !1256, inlinedAt: !2738)
!2740 = !DILocation(line: 152, column: 58, scope: !1256, inlinedAt: !2738)
!2741 = !DILocation(line: 154, column: 17, scope: !1256, inlinedAt: !2738)
!2742 = !DILocation(line: 156, column: 57, scope: !1256, inlinedAt: !2738)
!2743 = !DILocation(line: 155, column: 17, scope: !1256, inlinedAt: !2738)
!2744 = !DILocation(line: 157, column: 7, scope: !1256, inlinedAt: !2738)
!2745 = !DILocation(line: 158, column: 12, scope: !1256, inlinedAt: !2738)
!2746 = !DILocation(line: 159, column: 6, scope: !1256, inlinedAt: !2738)
!2747 = !DILocation(line: 1014, column: 10, scope: !2716)
!2748 = !DILocation(line: 1015, column: 1, scope: !2716)
!2749 = !DILocation(line: 1014, column: 3, scope: !2716)
!2750 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !106, file: !106, line: 1018, type: !2751, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!6, !22, !19, !19, !19}
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !106, line: 1018, type: !22)
!2755 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2750, file: !106, line: 1018, type: !19)
!2756 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2750, file: !106, line: 1019, type: !19)
!2757 = !DILocalVariable(name: "arg", arg: 4, scope: !2750, file: !106, line: 1019, type: !19)
!2758 = !DILocation(line: 1018, column: 24, scope: !2750)
!2759 = !DILocation(line: 1018, column: 39, scope: !2750)
!2760 = !DILocation(line: 1019, column: 32, scope: !2750)
!2761 = !DILocation(line: 1019, column: 57, scope: !2750)
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !106, line: 1026, type: !22)
!2763 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !106, file: !106, line: 1026, type: !2764, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!6, !22, !19, !19, !19, !100}
!2766 = !{!2762, !2767, !2768, !2769, !2770, !2771}
!2767 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2763, file: !106, line: 1026, type: !19)
!2768 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2763, file: !106, line: 1027, type: !19)
!2769 = !DILocalVariable(name: "arg", arg: 4, scope: !2763, file: !106, line: 1028, type: !19)
!2770 = !DILocalVariable(name: "argsize", arg: 5, scope: !2763, file: !106, line: 1028, type: !100)
!2771 = !DILocalVariable(name: "o", scope: !2763, file: !106, line: 1030, type: !113)
!2772 = !DILocation(line: 1026, column: 28, scope: !2763, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1021, column: 10, scope: !2750)
!2774 = !DILocation(line: 1026, column: 43, scope: !2763, inlinedAt: !2773)
!2775 = !DILocation(line: 1027, column: 36, scope: !2763, inlinedAt: !2773)
!2776 = !DILocation(line: 1028, column: 36, scope: !2763, inlinedAt: !2773)
!2777 = !DILocation(line: 1028, column: 48, scope: !2763, inlinedAt: !2773)
!2778 = !DILocation(line: 1030, column: 3, scope: !2763, inlinedAt: !2773)
!2779 = !DILocation(line: 1030, column: 30, scope: !2763, inlinedAt: !2773)
!2780 = !DILocation(line: 1030, column: 26, scope: !2763, inlinedAt: !2773)
!2781 = !DILocation(line: 179, column: 45, scope: !1305, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1031, column: 3, scope: !2763, inlinedAt: !2773)
!2783 = !DILocation(line: 180, column: 33, scope: !1305, inlinedAt: !2782)
!2784 = !DILocation(line: 180, column: 57, scope: !1305, inlinedAt: !2782)
!2785 = !DILocation(line: 184, column: 6, scope: !1305, inlinedAt: !2782)
!2786 = !DILocation(line: 184, column: 12, scope: !1305, inlinedAt: !2782)
!2787 = !DILocation(line: 185, column: 8, scope: !1321, inlinedAt: !2782)
!2788 = !DILocation(line: 185, column: 23, scope: !1321, inlinedAt: !2782)
!2789 = !DILocation(line: 185, column: 19, scope: !1321, inlinedAt: !2782)
!2790 = !DILocation(line: 186, column: 5, scope: !1321, inlinedAt: !2782)
!2791 = !DILocation(line: 187, column: 6, scope: !1305, inlinedAt: !2782)
!2792 = !DILocation(line: 187, column: 17, scope: !1305, inlinedAt: !2782)
!2793 = !DILocation(line: 188, column: 6, scope: !1305, inlinedAt: !2782)
!2794 = !DILocation(line: 188, column: 18, scope: !1305, inlinedAt: !2782)
!2795 = !DILocation(line: 1032, column: 10, scope: !2763, inlinedAt: !2773)
!2796 = !DILocation(line: 1033, column: 1, scope: !2763, inlinedAt: !2773)
!2797 = !DILocation(line: 1021, column: 3, scope: !2750)
!2798 = !DILocation(line: 1026, column: 28, scope: !2763)
!2799 = !DILocation(line: 1026, column: 43, scope: !2763)
!2800 = !DILocation(line: 1027, column: 36, scope: !2763)
!2801 = !DILocation(line: 1028, column: 36, scope: !2763)
!2802 = !DILocation(line: 1028, column: 48, scope: !2763)
!2803 = !DILocation(line: 1030, column: 3, scope: !2763)
!2804 = !DILocation(line: 1030, column: 30, scope: !2763)
!2805 = !DILocation(line: 1030, column: 26, scope: !2763)
!2806 = !DILocation(line: 179, column: 45, scope: !1305, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1031, column: 3, scope: !2763)
!2808 = !DILocation(line: 180, column: 33, scope: !1305, inlinedAt: !2807)
!2809 = !DILocation(line: 180, column: 57, scope: !1305, inlinedAt: !2807)
!2810 = !DILocation(line: 184, column: 6, scope: !1305, inlinedAt: !2807)
!2811 = !DILocation(line: 184, column: 12, scope: !1305, inlinedAt: !2807)
!2812 = !DILocation(line: 185, column: 8, scope: !1321, inlinedAt: !2807)
!2813 = !DILocation(line: 185, column: 23, scope: !1321, inlinedAt: !2807)
!2814 = !DILocation(line: 185, column: 19, scope: !1321, inlinedAt: !2807)
!2815 = !DILocation(line: 186, column: 5, scope: !1321, inlinedAt: !2807)
!2816 = !DILocation(line: 187, column: 6, scope: !1305, inlinedAt: !2807)
!2817 = !DILocation(line: 187, column: 17, scope: !1305, inlinedAt: !2807)
!2818 = !DILocation(line: 188, column: 6, scope: !1305, inlinedAt: !2807)
!2819 = !DILocation(line: 188, column: 18, scope: !1305, inlinedAt: !2807)
!2820 = !DILocation(line: 1032, column: 10, scope: !2763)
!2821 = !DILocation(line: 1033, column: 1, scope: !2763)
!2822 = !DILocation(line: 1032, column: 3, scope: !2763)
!2823 = distinct !DISubprogram(name: "quotearg_custom", scope: !106, file: !106, line: 1036, type: !2824, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!6, !19, !19, !19}
!2826 = !{!2827, !2828, !2829}
!2827 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2823, file: !106, line: 1036, type: !19)
!2828 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2823, file: !106, line: 1036, type: !19)
!2829 = !DILocalVariable(name: "arg", arg: 3, scope: !2823, file: !106, line: 1037, type: !19)
!2830 = !DILocation(line: 1036, column: 30, scope: !2823)
!2831 = !DILocation(line: 1036, column: 54, scope: !2823)
!2832 = !DILocation(line: 1037, column: 30, scope: !2823)
!2833 = !DILocation(line: 1018, column: 24, scope: !2750, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 1039, column: 10, scope: !2823)
!2835 = !DILocation(line: 1018, column: 39, scope: !2750, inlinedAt: !2834)
!2836 = !DILocation(line: 1019, column: 32, scope: !2750, inlinedAt: !2834)
!2837 = !DILocation(line: 1019, column: 57, scope: !2750, inlinedAt: !2834)
!2838 = !DILocation(line: 1026, column: 28, scope: !2763, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 1021, column: 10, scope: !2750, inlinedAt: !2834)
!2840 = !DILocation(line: 1026, column: 43, scope: !2763, inlinedAt: !2839)
!2841 = !DILocation(line: 1027, column: 36, scope: !2763, inlinedAt: !2839)
!2842 = !DILocation(line: 1028, column: 36, scope: !2763, inlinedAt: !2839)
!2843 = !DILocation(line: 1028, column: 48, scope: !2763, inlinedAt: !2839)
!2844 = !DILocation(line: 1030, column: 3, scope: !2763, inlinedAt: !2839)
!2845 = !DILocation(line: 1030, column: 30, scope: !2763, inlinedAt: !2839)
!2846 = !DILocation(line: 1030, column: 26, scope: !2763, inlinedAt: !2839)
!2847 = !DILocation(line: 179, column: 45, scope: !1305, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1031, column: 3, scope: !2763, inlinedAt: !2839)
!2849 = !DILocation(line: 180, column: 33, scope: !1305, inlinedAt: !2848)
!2850 = !DILocation(line: 180, column: 57, scope: !1305, inlinedAt: !2848)
!2851 = !DILocation(line: 184, column: 6, scope: !1305, inlinedAt: !2848)
!2852 = !DILocation(line: 184, column: 12, scope: !1305, inlinedAt: !2848)
!2853 = !DILocation(line: 185, column: 8, scope: !1321, inlinedAt: !2848)
!2854 = !DILocation(line: 185, column: 23, scope: !1321, inlinedAt: !2848)
!2855 = !DILocation(line: 185, column: 19, scope: !1321, inlinedAt: !2848)
!2856 = !DILocation(line: 186, column: 5, scope: !1321, inlinedAt: !2848)
!2857 = !DILocation(line: 187, column: 6, scope: !1305, inlinedAt: !2848)
!2858 = !DILocation(line: 187, column: 17, scope: !1305, inlinedAt: !2848)
!2859 = !DILocation(line: 188, column: 6, scope: !1305, inlinedAt: !2848)
!2860 = !DILocation(line: 188, column: 18, scope: !1305, inlinedAt: !2848)
!2861 = !DILocation(line: 1032, column: 10, scope: !2763, inlinedAt: !2839)
!2862 = !DILocation(line: 1033, column: 1, scope: !2763, inlinedAt: !2839)
!2863 = !DILocation(line: 1039, column: 3, scope: !2823)
!2864 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !106, file: !106, line: 1043, type: !2865, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!6, !19, !19, !19, !100}
!2867 = !{!2868, !2869, !2870, !2871}
!2868 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2864, file: !106, line: 1043, type: !19)
!2869 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2864, file: !106, line: 1043, type: !19)
!2870 = !DILocalVariable(name: "arg", arg: 3, scope: !2864, file: !106, line: 1044, type: !19)
!2871 = !DILocalVariable(name: "argsize", arg: 4, scope: !2864, file: !106, line: 1044, type: !100)
!2872 = !DILocation(line: 1043, column: 34, scope: !2864)
!2873 = !DILocation(line: 1043, column: 58, scope: !2864)
!2874 = !DILocation(line: 1044, column: 34, scope: !2864)
!2875 = !DILocation(line: 1044, column: 46, scope: !2864)
!2876 = !DILocation(line: 1026, column: 28, scope: !2763, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 1046, column: 10, scope: !2864)
!2878 = !DILocation(line: 1026, column: 43, scope: !2763, inlinedAt: !2877)
!2879 = !DILocation(line: 1027, column: 36, scope: !2763, inlinedAt: !2877)
!2880 = !DILocation(line: 1028, column: 36, scope: !2763, inlinedAt: !2877)
!2881 = !DILocation(line: 1028, column: 48, scope: !2763, inlinedAt: !2877)
!2882 = !DILocation(line: 1030, column: 3, scope: !2763, inlinedAt: !2877)
!2883 = !DILocation(line: 1030, column: 30, scope: !2763, inlinedAt: !2877)
!2884 = !DILocation(line: 1030, column: 26, scope: !2763, inlinedAt: !2877)
!2885 = !DILocation(line: 179, column: 45, scope: !1305, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1031, column: 3, scope: !2763, inlinedAt: !2877)
!2887 = !DILocation(line: 180, column: 33, scope: !1305, inlinedAt: !2886)
!2888 = !DILocation(line: 180, column: 57, scope: !1305, inlinedAt: !2886)
!2889 = !DILocation(line: 184, column: 6, scope: !1305, inlinedAt: !2886)
!2890 = !DILocation(line: 184, column: 12, scope: !1305, inlinedAt: !2886)
!2891 = !DILocation(line: 185, column: 8, scope: !1321, inlinedAt: !2886)
!2892 = !DILocation(line: 185, column: 23, scope: !1321, inlinedAt: !2886)
!2893 = !DILocation(line: 185, column: 19, scope: !1321, inlinedAt: !2886)
!2894 = !DILocation(line: 186, column: 5, scope: !1321, inlinedAt: !2886)
!2895 = !DILocation(line: 187, column: 6, scope: !1305, inlinedAt: !2886)
!2896 = !DILocation(line: 187, column: 17, scope: !1305, inlinedAt: !2886)
!2897 = !DILocation(line: 188, column: 6, scope: !1305, inlinedAt: !2886)
!2898 = !DILocation(line: 188, column: 18, scope: !1305, inlinedAt: !2886)
!2899 = !DILocation(line: 1032, column: 10, scope: !2763, inlinedAt: !2877)
!2900 = !DILocation(line: 1033, column: 1, scope: !2763, inlinedAt: !2877)
!2901 = !DILocation(line: 1046, column: 3, scope: !2864)
!2902 = distinct !DISubprogram(name: "quote_n_mem", scope: !106, file: !106, line: 1061, type: !2903, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!19, !22, !19, !100}
!2905 = !{!2906, !2907, !2908}
!2906 = !DILocalVariable(name: "n", arg: 1, scope: !2902, file: !106, line: 1061, type: !22)
!2907 = !DILocalVariable(name: "arg", arg: 2, scope: !2902, file: !106, line: 1061, type: !19)
!2908 = !DILocalVariable(name: "argsize", arg: 3, scope: !2902, file: !106, line: 1061, type: !100)
!2909 = !DILocation(line: 1061, column: 18, scope: !2902)
!2910 = !DILocation(line: 1061, column: 33, scope: !2902)
!2911 = !DILocation(line: 1061, column: 45, scope: !2902)
!2912 = !DILocation(line: 1063, column: 10, scope: !2902)
!2913 = !DILocation(line: 1063, column: 3, scope: !2902)
!2914 = distinct !DISubprogram(name: "quote_mem", scope: !106, file: !106, line: 1067, type: !2915, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!19, !19, !100}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !106, line: 1067, type: !19)
!2919 = !DILocalVariable(name: "argsize", arg: 2, scope: !2914, file: !106, line: 1067, type: !100)
!2920 = !DILocation(line: 1067, column: 24, scope: !2914)
!2921 = !DILocation(line: 1067, column: 36, scope: !2914)
!2922 = !DILocation(line: 1061, column: 18, scope: !2902, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1069, column: 10, scope: !2914)
!2924 = !DILocation(line: 1061, column: 33, scope: !2902, inlinedAt: !2923)
!2925 = !DILocation(line: 1061, column: 45, scope: !2902, inlinedAt: !2923)
!2926 = !DILocation(line: 1063, column: 10, scope: !2902, inlinedAt: !2923)
!2927 = !DILocation(line: 1069, column: 3, scope: !2914)
!2928 = distinct !DISubprogram(name: "quote_n", scope: !106, file: !106, line: 1073, type: !2929, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!19, !22, !19}
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !106, line: 1073, type: !22)
!2933 = !DILocalVariable(name: "arg", arg: 2, scope: !2928, file: !106, line: 1073, type: !19)
!2934 = !DILocation(line: 1073, column: 14, scope: !2928)
!2935 = !DILocation(line: 1073, column: 29, scope: !2928)
!2936 = !DILocation(line: 1061, column: 18, scope: !2902, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1075, column: 10, scope: !2928)
!2938 = !DILocation(line: 1061, column: 33, scope: !2902, inlinedAt: !2937)
!2939 = !DILocation(line: 1061, column: 45, scope: !2902, inlinedAt: !2937)
!2940 = !DILocation(line: 1063, column: 10, scope: !2902, inlinedAt: !2937)
!2941 = !DILocation(line: 1075, column: 3, scope: !2928)
!2942 = distinct !DISubprogram(name: "quote", scope: !106, file: !106, line: 1079, type: !2943, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!19, !19}
!2945 = !{!2946}
!2946 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !106, line: 1079, type: !19)
!2947 = !DILocation(line: 1079, column: 20, scope: !2942)
!2948 = !DILocation(line: 1073, column: 14, scope: !2928, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1081, column: 10, scope: !2942)
!2950 = !DILocation(line: 1073, column: 29, scope: !2928, inlinedAt: !2949)
!2951 = !DILocation(line: 1061, column: 18, scope: !2902, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 1075, column: 10, scope: !2928, inlinedAt: !2949)
!2953 = !DILocation(line: 1061, column: 33, scope: !2902, inlinedAt: !2952)
!2954 = !DILocation(line: 1061, column: 45, scope: !2902, inlinedAt: !2952)
!2955 = !DILocation(line: 1063, column: 10, scope: !2902, inlinedAt: !2952)
!2956 = !DILocation(line: 1081, column: 3, scope: !2942)
!2957 = distinct !DISubprogram(name: "version_etc_arn", scope: !175, file: !175, line: 62, type: !2958, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3014)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2960, !19, !19, !19, !3013, !100}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2962, line: 7, baseType: !2963)
!2962 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2964, line: 49, size: 1728, elements: !2965)
!2964 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2981, !2983, !2984, !2985, !2987, !2988, !2990, !2994, !2997, !2999, !3002, !3005, !3006, !3007, !3008, !3009}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2963, file: !2964, line: 51, baseType: !22, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2963, file: !2964, line: 54, baseType: !6, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2963, file: !2964, line: 55, baseType: !6, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2963, file: !2964, line: 56, baseType: !6, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2963, file: !2964, line: 57, baseType: !6, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2963, file: !2964, line: 58, baseType: !6, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2963, file: !2964, line: 59, baseType: !6, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2963, file: !2964, line: 60, baseType: !6, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2963, file: !2964, line: 61, baseType: !6, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2963, file: !2964, line: 64, baseType: !6, size: 64, offset: 576)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2963, file: !2964, line: 65, baseType: !6, size: 64, offset: 640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2963, file: !2964, line: 66, baseType: !6, size: 64, offset: 704)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2963, file: !2964, line: 68, baseType: !2979, size: 64, offset: 768)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2964, line: 36, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2963, file: !2964, line: 70, baseType: !2982, size: 64, offset: 832)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2963, file: !2964, line: 72, baseType: !22, size: 32, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2963, file: !2964, line: 73, baseType: !22, size: 32, offset: 928)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2963, file: !2964, line: 74, baseType: !2986, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !956, line: 150, baseType: !957)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2963, file: !2964, line: 77, baseType: !99, size: 16, offset: 1024)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2963, file: !2964, line: 78, baseType: !2989, size: 8, offset: 1040)
!2989 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2963, file: !2964, line: 79, baseType: !2991, size: 8, offset: 1048)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2992)
!2992 = !{!2993}
!2993 = !DISubrange(count: 1)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2963, file: !2964, line: 81, baseType: !2995, size: 64, offset: 1088)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2964, line: 43, baseType: null)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2963, file: !2964, line: 89, baseType: !2998, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !956, line: 151, baseType: !957)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2963, file: !2964, line: 91, baseType: !3000, size: 64, offset: 1216)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2964, line: 37, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2963, file: !2964, line: 92, baseType: !3003, size: 64, offset: 1280)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2964, line: 38, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2963, file: !2964, line: 93, baseType: !2982, size: 64, offset: 1344)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2963, file: !2964, line: 94, baseType: !8, size: 64, offset: 1408)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2963, file: !2964, line: 95, baseType: !100, size: 64, offset: 1472)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2963, file: !2964, line: 96, baseType: !22, size: 32, offset: 1536)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2963, file: !2964, line: 98, baseType: !3010, size: 160, offset: 1568)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3011)
!3011 = !{!3012}
!3012 = !DISubrange(count: 20)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020}
!3015 = !DILocalVariable(name: "stream", arg: 1, scope: !2957, file: !175, line: 62, type: !2960)
!3016 = !DILocalVariable(name: "command_name", arg: 2, scope: !2957, file: !175, line: 63, type: !19)
!3017 = !DILocalVariable(name: "package", arg: 3, scope: !2957, file: !175, line: 63, type: !19)
!3018 = !DILocalVariable(name: "version", arg: 4, scope: !2957, file: !175, line: 64, type: !19)
!3019 = !DILocalVariable(name: "authors", arg: 5, scope: !2957, file: !175, line: 65, type: !3013)
!3020 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2957, file: !175, line: 65, type: !100)
!3021 = !DILocation(line: 62, column: 24, scope: !2957)
!3022 = !DILocation(line: 63, column: 30, scope: !2957)
!3023 = !DILocation(line: 63, column: 56, scope: !2957)
!3024 = !DILocation(line: 64, column: 30, scope: !2957)
!3025 = !DILocation(line: 65, column: 39, scope: !2957)
!3026 = !DILocation(line: 65, column: 55, scope: !2957)
!3027 = !DILocation(line: 67, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2957, file: !175, line: 67, column: 7)
!3029 = !DILocation(line: 67, column: 7, scope: !2957)
!3030 = !DILocation(line: 68, column: 5, scope: !3028)
!3031 = !DILocation(line: 70, column: 5, scope: !3028)
!3032 = !DILocation(line: 84, column: 3, scope: !2957)
!3033 = !DILocation(line: 86, column: 3, scope: !2957)
!3034 = !DILocation(line: 95, column: 3, scope: !2957)
!3035 = !DILocation(line: 99, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2957, file: !175, line: 96, column: 5)
!3037 = !DILocation(line: 102, column: 7, scope: !3036)
!3038 = !DILocation(line: 103, column: 7, scope: !3036)
!3039 = !DILocation(line: 106, column: 7, scope: !3036)
!3040 = !DILocation(line: 107, column: 7, scope: !3036)
!3041 = !DILocation(line: 110, column: 7, scope: !3036)
!3042 = !DILocation(line: 112, column: 7, scope: !3036)
!3043 = !DILocation(line: 117, column: 7, scope: !3036)
!3044 = !DILocation(line: 119, column: 7, scope: !3036)
!3045 = !DILocation(line: 124, column: 7, scope: !3036)
!3046 = !DILocation(line: 126, column: 7, scope: !3036)
!3047 = !DILocation(line: 131, column: 7, scope: !3036)
!3048 = !DILocation(line: 134, column: 7, scope: !3036)
!3049 = !DILocation(line: 139, column: 7, scope: !3036)
!3050 = !DILocation(line: 142, column: 7, scope: !3036)
!3051 = !DILocation(line: 147, column: 7, scope: !3036)
!3052 = !DILocation(line: 151, column: 7, scope: !3036)
!3053 = !DILocation(line: 156, column: 7, scope: !3036)
!3054 = !DILocation(line: 160, column: 7, scope: !3036)
!3055 = !DILocation(line: 167, column: 7, scope: !3036)
!3056 = !DILocation(line: 171, column: 7, scope: !3036)
!3057 = !DILocation(line: 173, column: 1, scope: !2957)
!3058 = distinct !DISubprogram(name: "version_etc_ar", scope: !175, file: !175, line: 180, type: !3059, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !2960, !19, !19, !19, !3013}
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3067}
!3062 = !DILocalVariable(name: "stream", arg: 1, scope: !3058, file: !175, line: 180, type: !2960)
!3063 = !DILocalVariable(name: "command_name", arg: 2, scope: !3058, file: !175, line: 181, type: !19)
!3064 = !DILocalVariable(name: "package", arg: 3, scope: !3058, file: !175, line: 181, type: !19)
!3065 = !DILocalVariable(name: "version", arg: 4, scope: !3058, file: !175, line: 182, type: !19)
!3066 = !DILocalVariable(name: "authors", arg: 5, scope: !3058, file: !175, line: 182, type: !3013)
!3067 = !DILocalVariable(name: "n_authors", scope: !3058, file: !175, line: 184, type: !100)
!3068 = !DILocation(line: 180, column: 23, scope: !3058)
!3069 = !DILocation(line: 181, column: 29, scope: !3058)
!3070 = !DILocation(line: 181, column: 55, scope: !3058)
!3071 = !DILocation(line: 182, column: 29, scope: !3058)
!3072 = !DILocation(line: 182, column: 59, scope: !3058)
!3073 = !DILocation(line: 184, column: 10, scope: !3058)
!3074 = !DILocation(line: 186, column: 8, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3058, file: !175, line: 186, column: 3)
!3076 = !DILocation(line: 0, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3075, file: !175, line: 186, column: 3)
!3078 = !DILocation(line: 186, column: 23, scope: !3077)
!3079 = !DILocation(line: 186, column: 3, scope: !3075)
!3080 = !DILocation(line: 186, column: 52, scope: !3077)
!3081 = distinct !{!3081, !3079, !3082}
!3082 = !DILocation(line: 187, column: 5, scope: !3075)
!3083 = !DILocation(line: 188, column: 3, scope: !3058)
!3084 = !DILocation(line: 189, column: 1, scope: !3058)
!3085 = distinct !DISubprogram(name: "version_etc_va", scope: !175, file: !175, line: 196, type: !3086, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3095)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !2960, !19, !19, !19, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !172, line: 189, size: 192, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3089, file: !172, line: 189, baseType: !9, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3089, file: !172, line: 189, baseType: !9, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3089, file: !172, line: 189, baseType: !8, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3089, file: !172, line: 189, baseType: !8, size: 64, offset: 128)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102}
!3096 = !DILocalVariable(name: "stream", arg: 1, scope: !3085, file: !175, line: 196, type: !2960)
!3097 = !DILocalVariable(name: "command_name", arg: 2, scope: !3085, file: !175, line: 197, type: !19)
!3098 = !DILocalVariable(name: "package", arg: 3, scope: !3085, file: !175, line: 197, type: !19)
!3099 = !DILocalVariable(name: "version", arg: 4, scope: !3085, file: !175, line: 198, type: !19)
!3100 = !DILocalVariable(name: "authors", arg: 5, scope: !3085, file: !175, line: 198, type: !3088)
!3101 = !DILocalVariable(name: "n_authors", scope: !3085, file: !175, line: 200, type: !100)
!3102 = !DILocalVariable(name: "authtab", scope: !3085, file: !175, line: 201, type: !3103)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !109)
!3104 = !DILocation(line: 196, column: 23, scope: !3085)
!3105 = !DILocation(line: 197, column: 29, scope: !3085)
!3106 = !DILocation(line: 197, column: 55, scope: !3085)
!3107 = !DILocation(line: 198, column: 29, scope: !3085)
!3108 = !DILocation(line: 198, column: 46, scope: !3085)
!3109 = !DILocation(line: 201, column: 3, scope: !3085)
!3110 = !DILocation(line: 201, column: 15, scope: !3085)
!3111 = !DILocation(line: 200, column: 10, scope: !3085)
!3112 = !DILocation(line: 205, column: 35, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !175, line: 203, column: 3)
!3114 = distinct !DILexicalBlock(scope: !3085, file: !175, line: 203, column: 3)
!3115 = !DILocation(line: 205, column: 14, scope: !3113)
!3116 = !DILocation(line: 205, column: 33, scope: !3113)
!3117 = !DILocation(line: 205, column: 67, scope: !3113)
!3118 = !DILocation(line: 203, column: 3, scope: !3114)
!3119 = !DILocation(line: 0, scope: !3113)
!3120 = !DILocation(line: 208, column: 3, scope: !3085)
!3121 = !DILocation(line: 210, column: 1, scope: !3085)
!3122 = distinct !DISubprogram(name: "version_etc", scope: !175, file: !175, line: 227, type: !3123, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !2960, !19, !19, !19, null}
!3125 = !{!3126, !3127, !3128, !3129, !3130}
!3126 = !DILocalVariable(name: "stream", arg: 1, scope: !3122, file: !175, line: 227, type: !2960)
!3127 = !DILocalVariable(name: "command_name", arg: 2, scope: !3122, file: !175, line: 228, type: !19)
!3128 = !DILocalVariable(name: "package", arg: 3, scope: !3122, file: !175, line: 228, type: !19)
!3129 = !DILocalVariable(name: "version", arg: 4, scope: !3122, file: !175, line: 229, type: !19)
!3130 = !DILocalVariable(name: "authors", scope: !3122, file: !175, line: 231, type: !3131)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3132, line: 52, baseType: !3133)
!3132 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3134, line: 48, baseType: !3135)
!3134 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !172, line: 231, baseType: !3136)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3089, size: 192, elements: !2992)
!3137 = !DILocation(line: 227, column: 20, scope: !3122)
!3138 = !DILocation(line: 228, column: 26, scope: !3122)
!3139 = !DILocation(line: 228, column: 52, scope: !3122)
!3140 = !DILocation(line: 229, column: 26, scope: !3122)
!3141 = !DILocation(line: 231, column: 3, scope: !3122)
!3142 = !DILocation(line: 231, column: 11, scope: !3122)
!3143 = !DILocation(line: 233, column: 3, scope: !3122)
!3144 = !DILocation(line: 234, column: 3, scope: !3122)
!3145 = !DILocation(line: 235, column: 3, scope: !3122)
!3146 = !DILocation(line: 236, column: 1, scope: !3122)
!3147 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !175, file: !175, line: 239, type: !649, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !4)
!3148 = !DILocation(line: 245, column: 3, scope: !3147)
!3149 = !DILocation(line: 251, column: 3, scope: !3147)
!3150 = !DILocation(line: 256, column: 3, scope: !3147)
!3151 = !DILocation(line: 258, column: 1, scope: !3147)
!3152 = distinct !DISubprogram(name: "xnmalloc", scope: !183, file: !183, line: 99, type: !3153, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!8, !100, !100}
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !183, line: 99, type: !100)
!3157 = !DILocalVariable(name: "s", arg: 2, scope: !3152, file: !183, line: 99, type: !100)
!3158 = !DILocation(line: 99, column: 18, scope: !3152)
!3159 = !DILocation(line: 99, column: 28, scope: !3152)
!3160 = !DILocation(line: 101, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3152, file: !183, line: 101, column: 7)
!3162 = !DILocation(line: 101, column: 7, scope: !3152)
!3163 = !DILocation(line: 102, column: 5, scope: !3161)
!3164 = !DILocation(line: 103, column: 21, scope: !3152)
!3165 = !DILocalVariable(name: "n", arg: 1, scope: !3166, file: !3167, line: 39, type: !100)
!3166 = distinct !DISubprogram(name: "xmalloc", scope: !3167, file: !3167, line: 39, type: !3168, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3170)
!3167 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!8, !100}
!3170 = !{!3165, !3171}
!3171 = !DILocalVariable(name: "p", scope: !3166, file: !3167, line: 41, type: !8)
!3172 = !DILocation(line: 39, column: 17, scope: !3166, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 103, column: 10, scope: !3152)
!3174 = !DILocation(line: 41, column: 13, scope: !3166, inlinedAt: !3173)
!3175 = !DILocation(line: 41, column: 9, scope: !3166, inlinedAt: !3173)
!3176 = !DILocation(line: 42, column: 8, scope: !3177, inlinedAt: !3173)
!3177 = distinct !DILexicalBlock(scope: !3166, file: !3167, line: 42, column: 7)
!3178 = !DILocation(line: 42, column: 15, scope: !3177, inlinedAt: !3173)
!3179 = !DILocation(line: 42, column: 10, scope: !3177, inlinedAt: !3173)
!3180 = !DILocation(line: 43, column: 5, scope: !3177, inlinedAt: !3173)
!3181 = !DILocation(line: 103, column: 3, scope: !3152)
!3182 = !DILocation(line: 39, column: 17, scope: !3166)
!3183 = !DILocation(line: 41, column: 13, scope: !3166)
!3184 = !DILocation(line: 41, column: 9, scope: !3166)
!3185 = !DILocation(line: 42, column: 8, scope: !3177)
!3186 = !DILocation(line: 42, column: 15, scope: !3177)
!3187 = !DILocation(line: 42, column: 10, scope: !3177)
!3188 = !DILocation(line: 43, column: 5, scope: !3177)
!3189 = !DILocation(line: 44, column: 3, scope: !3166)
!3190 = distinct !DISubprogram(name: "xnrealloc", scope: !183, file: !183, line: 112, type: !3191, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!8, !8, !100, !100}
!3193 = !{!3194, !3195, !3196}
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3190, file: !183, line: 112, type: !8)
!3195 = !DILocalVariable(name: "n", arg: 2, scope: !3190, file: !183, line: 112, type: !100)
!3196 = !DILocalVariable(name: "s", arg: 3, scope: !3190, file: !183, line: 112, type: !100)
!3197 = !DILocation(line: 112, column: 18, scope: !3190)
!3198 = !DILocation(line: 112, column: 28, scope: !3190)
!3199 = !DILocation(line: 112, column: 38, scope: !3190)
!3200 = !DILocation(line: 114, column: 7, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3190, file: !183, line: 114, column: 7)
!3202 = !DILocation(line: 114, column: 7, scope: !3190)
!3203 = !DILocation(line: 115, column: 5, scope: !3201)
!3204 = !DILocation(line: 116, column: 25, scope: !3190)
!3205 = !DILocalVariable(name: "p", arg: 1, scope: !3206, file: !3167, line: 51, type: !8)
!3206 = distinct !DISubprogram(name: "xrealloc", scope: !3167, file: !3167, line: 51, type: !3207, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!8, !8, !100}
!3209 = !{!3205, !3210}
!3210 = !DILocalVariable(name: "n", arg: 2, scope: !3206, file: !3167, line: 51, type: !100)
!3211 = !DILocation(line: 51, column: 17, scope: !3206, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 116, column: 10, scope: !3190)
!3213 = !DILocation(line: 51, column: 27, scope: !3206, inlinedAt: !3212)
!3214 = !DILocation(line: 53, column: 8, scope: !3215, inlinedAt: !3212)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !3167, line: 53, column: 7)
!3216 = !DILocation(line: 53, column: 13, scope: !3215, inlinedAt: !3212)
!3217 = !DILocation(line: 53, column: 10, scope: !3215, inlinedAt: !3212)
!3218 = !DILocation(line: 57, column: 7, scope: !3219, inlinedAt: !3212)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !3167, line: 54, column: 5)
!3220 = !DILocation(line: 58, column: 7, scope: !3219, inlinedAt: !3212)
!3221 = !DILocation(line: 61, column: 7, scope: !3206, inlinedAt: !3212)
!3222 = !DILocation(line: 62, column: 8, scope: !3223, inlinedAt: !3212)
!3223 = distinct !DILexicalBlock(scope: !3206, file: !3167, line: 62, column: 7)
!3224 = !DILocation(line: 62, column: 13, scope: !3223, inlinedAt: !3212)
!3225 = !DILocation(line: 62, column: 10, scope: !3223, inlinedAt: !3212)
!3226 = !DILocation(line: 63, column: 5, scope: !3223, inlinedAt: !3212)
!3227 = !DILocation(line: 0, scope: !3206, inlinedAt: !3212)
!3228 = !DILocation(line: 116, column: 3, scope: !3190)
!3229 = !DILocation(line: 51, column: 17, scope: !3206)
!3230 = !DILocation(line: 51, column: 27, scope: !3206)
!3231 = !DILocation(line: 53, column: 8, scope: !3215)
!3232 = !DILocation(line: 53, column: 13, scope: !3215)
!3233 = !DILocation(line: 53, column: 10, scope: !3215)
!3234 = !DILocation(line: 57, column: 7, scope: !3219)
!3235 = !DILocation(line: 58, column: 7, scope: !3219)
!3236 = !DILocation(line: 61, column: 7, scope: !3206)
!3237 = !DILocation(line: 62, column: 8, scope: !3223)
!3238 = !DILocation(line: 62, column: 13, scope: !3223)
!3239 = !DILocation(line: 62, column: 10, scope: !3223)
!3240 = !DILocation(line: 63, column: 5, scope: !3223)
!3241 = !DILocation(line: 0, scope: !3206)
!3242 = !DILocation(line: 65, column: 1, scope: !3206)
!3243 = !DILocation(line: 174, column: 19, scope: !184)
!3244 = !DILocation(line: 174, column: 30, scope: !184)
!3245 = !DILocation(line: 174, column: 41, scope: !184)
!3246 = !DILocation(line: 176, column: 14, scope: !184)
!3247 = !DILocation(line: 176, column: 10, scope: !184)
!3248 = !DILocation(line: 178, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !184, file: !183, line: 178, column: 7)
!3250 = !DILocation(line: 178, column: 7, scope: !184)
!3251 = !DILocation(line: 180, column: 13, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !183, line: 180, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !183, line: 179, column: 5)
!3254 = !DILocation(line: 180, column: 11, scope: !3253)
!3255 = !DILocation(line: 188, column: 30, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !183, line: 181, column: 9)
!3257 = !DILocation(line: 189, column: 16, scope: !3256)
!3258 = !DILocation(line: 189, column: 13, scope: !3256)
!3259 = !DILocation(line: 190, column: 9, scope: !3256)
!3260 = !DILocation(line: 0, scope: !3256)
!3261 = !DILocation(line: 191, column: 11, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3253, file: !183, line: 191, column: 11)
!3263 = !DILocation(line: 191, column: 11, scope: !3253)
!3264 = !DILocation(line: 206, column: 7, scope: !184)
!3265 = !DILocation(line: 207, column: 25, scope: !184)
!3266 = !DILocation(line: 51, column: 17, scope: !3206, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 207, column: 10, scope: !184)
!3268 = !DILocation(line: 51, column: 27, scope: !3206, inlinedAt: !3267)
!3269 = !DILocation(line: 53, column: 10, scope: !3215, inlinedAt: !3267)
!3270 = !DILocation(line: 192, column: 9, scope: !3262)
!3271 = !DILocation(line: 200, column: 69, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !183, line: 200, column: 11)
!3273 = distinct !DILexicalBlock(scope: !3249, file: !183, line: 195, column: 5)
!3274 = !DILocation(line: 201, column: 11, scope: !3272)
!3275 = !DILocation(line: 200, column: 11, scope: !3273)
!3276 = !DILocation(line: 202, column: 9, scope: !3272)
!3277 = !DILocation(line: 203, column: 14, scope: !3273)
!3278 = !DILocation(line: 203, column: 18, scope: !3273)
!3279 = !DILocation(line: 203, column: 9, scope: !3273)
!3280 = !DILocation(line: 53, column: 8, scope: !3215, inlinedAt: !3267)
!3281 = !DILocation(line: 57, column: 7, scope: !3219, inlinedAt: !3267)
!3282 = !DILocation(line: 58, column: 7, scope: !3219, inlinedAt: !3267)
!3283 = !DILocation(line: 61, column: 7, scope: !3206, inlinedAt: !3267)
!3284 = !DILocation(line: 62, column: 8, scope: !3223, inlinedAt: !3267)
!3285 = !DILocation(line: 62, column: 13, scope: !3223, inlinedAt: !3267)
!3286 = !DILocation(line: 62, column: 10, scope: !3223, inlinedAt: !3267)
!3287 = !DILocation(line: 63, column: 5, scope: !3223, inlinedAt: !3267)
!3288 = !DILocation(line: 0, scope: !3206, inlinedAt: !3267)
!3289 = !DILocation(line: 207, column: 3, scope: !184)
!3290 = distinct !DISubprogram(name: "xcharalloc", scope: !183, file: !183, line: 216, type: !2241, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3291)
!3291 = !{!3292}
!3292 = !DILocalVariable(name: "n", arg: 1, scope: !3290, file: !183, line: 216, type: !100)
!3293 = !DILocation(line: 216, column: 20, scope: !3290)
!3294 = !DILocation(line: 39, column: 17, scope: !3166, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 218, column: 10, scope: !3290)
!3296 = !DILocation(line: 41, column: 13, scope: !3166, inlinedAt: !3295)
!3297 = !DILocation(line: 41, column: 9, scope: !3166, inlinedAt: !3295)
!3298 = !DILocation(line: 42, column: 8, scope: !3177, inlinedAt: !3295)
!3299 = !DILocation(line: 42, column: 15, scope: !3177, inlinedAt: !3295)
!3300 = !DILocation(line: 42, column: 10, scope: !3177, inlinedAt: !3295)
!3301 = !DILocation(line: 43, column: 5, scope: !3177, inlinedAt: !3295)
!3302 = !DILocation(line: 218, column: 3, scope: !3290)
!3303 = distinct !DISubprogram(name: "x2realloc", scope: !3167, file: !3167, line: 74, type: !3304, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!8, !8, !187}
!3306 = !{!3307, !3308}
!3307 = !DILocalVariable(name: "p", arg: 1, scope: !3303, file: !3167, line: 74, type: !8)
!3308 = !DILocalVariable(name: "pn", arg: 2, scope: !3303, file: !3167, line: 74, type: !187)
!3309 = !DILocation(line: 74, column: 18, scope: !3303)
!3310 = !DILocation(line: 74, column: 29, scope: !3303)
!3311 = !DILocation(line: 174, column: 19, scope: !184, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 76, column: 10, scope: !3303)
!3313 = !DILocation(line: 174, column: 30, scope: !184, inlinedAt: !3312)
!3314 = !DILocation(line: 174, column: 41, scope: !184, inlinedAt: !3312)
!3315 = !DILocation(line: 176, column: 14, scope: !184, inlinedAt: !3312)
!3316 = !DILocation(line: 176, column: 10, scope: !184, inlinedAt: !3312)
!3317 = !DILocation(line: 178, column: 9, scope: !3249, inlinedAt: !3312)
!3318 = !DILocation(line: 178, column: 7, scope: !184, inlinedAt: !3312)
!3319 = !DILocation(line: 180, column: 13, scope: !3252, inlinedAt: !3312)
!3320 = !DILocation(line: 180, column: 11, scope: !3253, inlinedAt: !3312)
!3321 = !DILocation(line: 191, column: 11, scope: !3262, inlinedAt: !3312)
!3322 = !DILocation(line: 191, column: 11, scope: !3253, inlinedAt: !3312)
!3323 = !DILocation(line: 206, column: 7, scope: !184, inlinedAt: !3312)
!3324 = !DILocation(line: 51, column: 17, scope: !3206, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 207, column: 10, scope: !184, inlinedAt: !3312)
!3326 = !DILocation(line: 51, column: 27, scope: !3206, inlinedAt: !3325)
!3327 = !DILocation(line: 53, column: 10, scope: !3215, inlinedAt: !3325)
!3328 = !DILocation(line: 192, column: 9, scope: !3262, inlinedAt: !3312)
!3329 = !DILocation(line: 201, column: 11, scope: !3272, inlinedAt: !3312)
!3330 = !DILocation(line: 200, column: 11, scope: !3273, inlinedAt: !3312)
!3331 = !DILocation(line: 202, column: 9, scope: !3272, inlinedAt: !3312)
!3332 = !DILocation(line: 203, column: 14, scope: !3273, inlinedAt: !3312)
!3333 = !DILocation(line: 203, column: 18, scope: !3273, inlinedAt: !3312)
!3334 = !DILocation(line: 203, column: 9, scope: !3273, inlinedAt: !3312)
!3335 = !DILocation(line: 53, column: 8, scope: !3215, inlinedAt: !3325)
!3336 = !DILocation(line: 57, column: 7, scope: !3219, inlinedAt: !3325)
!3337 = !DILocation(line: 58, column: 7, scope: !3219, inlinedAt: !3325)
!3338 = !DILocation(line: 61, column: 7, scope: !3206, inlinedAt: !3325)
!3339 = !DILocation(line: 62, column: 8, scope: !3223, inlinedAt: !3325)
!3340 = !DILocation(line: 62, column: 13, scope: !3223, inlinedAt: !3325)
!3341 = !DILocation(line: 62, column: 10, scope: !3223, inlinedAt: !3325)
!3342 = !DILocation(line: 63, column: 5, scope: !3223, inlinedAt: !3325)
!3343 = !DILocation(line: 0, scope: !3206, inlinedAt: !3325)
!3344 = !DILocation(line: 76, column: 3, scope: !3303)
!3345 = distinct !DISubprogram(name: "xzalloc", scope: !3167, file: !3167, line: 84, type: !3168, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3346)
!3346 = !{!3347}
!3347 = !DILocalVariable(name: "s", arg: 1, scope: !3345, file: !3167, line: 84, type: !100)
!3348 = !DILocation(line: 84, column: 17, scope: !3345)
!3349 = !DILocation(line: 39, column: 17, scope: !3166, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 86, column: 18, scope: !3345)
!3351 = !DILocation(line: 41, column: 13, scope: !3166, inlinedAt: !3350)
!3352 = !DILocation(line: 41, column: 9, scope: !3166, inlinedAt: !3350)
!3353 = !DILocation(line: 42, column: 8, scope: !3177, inlinedAt: !3350)
!3354 = !DILocation(line: 42, column: 15, scope: !3177, inlinedAt: !3350)
!3355 = !DILocation(line: 42, column: 10, scope: !3177, inlinedAt: !3350)
!3356 = !DILocation(line: 43, column: 5, scope: !3177, inlinedAt: !3350)
!3357 = !DILocation(line: 86, column: 10, scope: !3345)
!3358 = !DILocation(line: 86, column: 3, scope: !3345)
!3359 = distinct !DISubprogram(name: "xcalloc", scope: !3167, file: !3167, line: 93, type: !3153, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !3167, line: 93, type: !100)
!3362 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !3167, line: 93, type: !100)
!3363 = !DILocalVariable(name: "p", scope: !3359, file: !3167, line: 95, type: !8)
!3364 = !DILocation(line: 93, column: 17, scope: !3359)
!3365 = !DILocation(line: 93, column: 27, scope: !3359)
!3366 = !DILocation(line: 100, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3359, file: !3167, line: 100, column: 7)
!3368 = !DILocation(line: 101, column: 7, scope: !3367)
!3369 = !DILocation(line: 101, column: 18, scope: !3367)
!3370 = !DILocation(line: 95, column: 9, scope: !3359)
!3371 = !DILocation(line: 101, column: 16, scope: !3367)
!3372 = !DILocation(line: 100, column: 7, scope: !3359)
!3373 = !DILocation(line: 102, column: 5, scope: !3367)
!3374 = !DILocation(line: 103, column: 3, scope: !3359)
!3375 = distinct !DISubprogram(name: "xmemdup", scope: !3167, file: !3167, line: 111, type: !3376, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3380)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!8, !3378, !100}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "p", arg: 1, scope: !3375, file: !3167, line: 111, type: !3378)
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3375, file: !3167, line: 111, type: !100)
!3383 = !DILocation(line: 111, column: 22, scope: !3375)
!3384 = !DILocation(line: 111, column: 32, scope: !3375)
!3385 = !DILocation(line: 39, column: 17, scope: !3166, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 113, column: 18, scope: !3375)
!3387 = !DILocation(line: 41, column: 13, scope: !3166, inlinedAt: !3386)
!3388 = !DILocation(line: 41, column: 9, scope: !3166, inlinedAt: !3386)
!3389 = !DILocation(line: 42, column: 8, scope: !3177, inlinedAt: !3386)
!3390 = !DILocation(line: 42, column: 15, scope: !3177, inlinedAt: !3386)
!3391 = !DILocation(line: 42, column: 10, scope: !3177, inlinedAt: !3386)
!3392 = !DILocation(line: 43, column: 5, scope: !3177, inlinedAt: !3386)
!3393 = !DILocation(line: 113, column: 10, scope: !3375)
!3394 = !DILocation(line: 113, column: 3, scope: !3375)
!3395 = distinct !DISubprogram(name: "xstrdup", scope: !3167, file: !3167, line: 119, type: !2447, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !179, retainedNodes: !3396)
!3396 = !{!3397}
!3397 = !DILocalVariable(name: "string", arg: 1, scope: !3395, file: !3167, line: 119, type: !19)
!3398 = !DILocation(line: 119, column: 22, scope: !3395)
!3399 = !DILocation(line: 121, column: 27, scope: !3395)
!3400 = !DILocation(line: 121, column: 43, scope: !3395)
!3401 = !DILocation(line: 111, column: 22, scope: !3375, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 121, column: 10, scope: !3395)
!3403 = !DILocation(line: 111, column: 32, scope: !3375, inlinedAt: !3402)
!3404 = !DILocation(line: 39, column: 17, scope: !3166, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 113, column: 18, scope: !3375, inlinedAt: !3402)
!3406 = !DILocation(line: 41, column: 13, scope: !3166, inlinedAt: !3405)
!3407 = !DILocation(line: 41, column: 9, scope: !3166, inlinedAt: !3405)
!3408 = !DILocation(line: 42, column: 8, scope: !3177, inlinedAt: !3405)
!3409 = !DILocation(line: 42, column: 15, scope: !3177, inlinedAt: !3405)
!3410 = !DILocation(line: 42, column: 10, scope: !3177, inlinedAt: !3405)
!3411 = !DILocation(line: 43, column: 5, scope: !3177, inlinedAt: !3405)
!3412 = !DILocation(line: 113, column: 10, scope: !3375, inlinedAt: !3402)
!3413 = !DILocation(line: 121, column: 3, scope: !3395)
!3414 = distinct !DISubprogram(name: "xalloc_die", scope: !3415, file: !3415, line: 32, type: !649, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !196, retainedNodes: !4)
!3415 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3416 = !DILocation(line: 34, column: 10, scope: !3414)
!3417 = !DILocation(line: 34, column: 33, scope: !3414)
!3418 = !DILocation(line: 34, column: 3, scope: !3414)
!3419 = !DILocation(line: 40, column: 3, scope: !3414)
!3420 = distinct !DISubprogram(name: "rpl_calloc", scope: !3421, file: !3421, line: 42, type: !3153, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3422)
!3421 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3422 = !{!3423, !3424, !3425, !3426}
!3423 = !DILocalVariable(name: "n", arg: 1, scope: !3420, file: !3421, line: 42, type: !100)
!3424 = !DILocalVariable(name: "s", arg: 2, scope: !3420, file: !3421, line: 42, type: !100)
!3425 = !DILocalVariable(name: "result", scope: !3420, file: !3421, line: 44, type: !8)
!3426 = !DILocalVariable(name: "bytes", scope: !3427, file: !3421, line: 56, type: !100)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3421, line: 53, column: 5)
!3428 = distinct !DILexicalBlock(scope: !3420, file: !3421, line: 47, column: 7)
!3429 = !DILocation(line: 42, column: 20, scope: !3420)
!3430 = !DILocation(line: 42, column: 30, scope: !3420)
!3431 = !DILocation(line: 47, column: 9, scope: !3428)
!3432 = !DILocation(line: 47, column: 19, scope: !3428)
!3433 = !DILocation(line: 47, column: 14, scope: !3428)
!3434 = !DILocation(line: 56, column: 24, scope: !3427)
!3435 = !DILocation(line: 56, column: 14, scope: !3427)
!3436 = !DILocation(line: 57, column: 17, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3427, file: !3421, line: 57, column: 11)
!3438 = !DILocation(line: 57, column: 21, scope: !3437)
!3439 = !DILocation(line: 57, column: 11, scope: !3427)
!3440 = !DILocation(line: 59, column: 11, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3437, file: !3421, line: 58, column: 9)
!3442 = !DILocation(line: 59, column: 17, scope: !3441)
!3443 = !DILocation(line: 65, column: 12, scope: !3420)
!3444 = !DILocation(line: 44, column: 9, scope: !3420)
!3445 = !DILocation(line: 72, column: 3, scope: !3420)
!3446 = !DILocation(line: 0, scope: !3441)
!3447 = !DILocation(line: 73, column: 1, scope: !3420)
!3448 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3449, file: !3449, line: 385, type: !3450, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !3464)
!3449 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!100, !3452, !19, !100, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1404, line: 6, baseType: !3455)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1406, line: 21, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1406, line: 13, size: 64, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3456, file: !1406, line: 15, baseType: !22, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3456, file: !1406, line: 20, baseType: !3460, size: 32, offset: 32)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !1406, line: 16, size: 32, elements: !3461)
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3460, file: !1406, line: 18, baseType: !9, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3460, file: !1406, line: 19, baseType: !1415, size: 32)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3465 = !DILocalVariable(name: "pwc", arg: 1, scope: !3448, file: !3449, line: 385, type: !3452)
!3466 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !3449, line: 385, type: !19)
!3467 = !DILocalVariable(name: "n", arg: 3, scope: !3448, file: !3449, line: 385, type: !100)
!3468 = !DILocalVariable(name: "ps", arg: 4, scope: !3448, file: !3449, line: 385, type: !3453)
!3469 = !DILocalVariable(name: "ret", scope: !3448, file: !3449, line: 387, type: !100)
!3470 = !DILocalVariable(name: "wc", scope: !3448, file: !3449, line: 388, type: !1420)
!3471 = !DILocalVariable(name: "uc", scope: !3472, file: !3449, line: 449, type: !1264)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3449, line: 448, column: 5)
!3473 = distinct !DILexicalBlock(scope: !3448, file: !3449, line: 447, column: 7)
!3474 = !DILocation(line: 385, column: 23, scope: !3448)
!3475 = !DILocation(line: 385, column: 40, scope: !3448)
!3476 = !DILocation(line: 385, column: 50, scope: !3448)
!3477 = !DILocation(line: 385, column: 64, scope: !3448)
!3478 = !DILocation(line: 388, column: 3, scope: !3448)
!3479 = !DILocation(line: 404, column: 9, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3448, file: !3449, line: 404, column: 7)
!3481 = !DILocation(line: 404, column: 7, scope: !3448)
!3482 = !DILocation(line: 439, column: 9, scope: !3448)
!3483 = !DILocation(line: 387, column: 10, scope: !3448)
!3484 = !DILocation(line: 447, column: 19, scope: !3473)
!3485 = !DILocation(line: 447, column: 31, scope: !3473)
!3486 = !DILocation(line: 447, column: 26, scope: !3473)
!3487 = !DILocation(line: 447, column: 41, scope: !3473)
!3488 = !DILocation(line: 447, column: 7, scope: !3448)
!3489 = !DILocation(line: 449, column: 26, scope: !3472)
!3490 = !DILocation(line: 449, column: 21, scope: !3472)
!3491 = !DILocation(line: 450, column: 14, scope: !3472)
!3492 = !DILocation(line: 450, column: 12, scope: !3472)
!3493 = !DILocation(line: 0, scope: !3472)
!3494 = !DILocation(line: 456, column: 1, scope: !3448)
!3495 = distinct !DISubprogram(name: "str2sig", scope: !160, file: !160, line: 304, type: !3496, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!22, !19, !24}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "signame", arg: 1, scope: !3495, file: !160, line: 304, type: !19)
!3500 = !DILocalVariable(name: "signum", arg: 2, scope: !3495, file: !160, line: 304, type: !24)
!3501 = !DILocation(line: 304, column: 22, scope: !3495)
!3502 = !DILocation(line: 304, column: 36, scope: !3495)
!3503 = !DILocalVariable(name: "signame", arg: 1, scope: !3504, file: !160, line: 261, type: !19)
!3504 = distinct !DISubprogram(name: "str2signum", scope: !160, file: !160, line: 261, type: !3505, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!22, !19}
!3507 = !{!3503, !3508, !3511, !3512, !3514, !3516, !3517, !3518, !3521}
!3508 = !DILocalVariable(name: "endp", scope: !3509, file: !160, line: 265, type: !6)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !160, line: 264, column: 5)
!3510 = distinct !DILexicalBlock(scope: !3504, file: !160, line: 263, column: 7)
!3511 = !DILocalVariable(name: "n", scope: !3509, file: !160, line: 266, type: !957)
!3512 = !DILocalVariable(name: "i", scope: !3513, file: !160, line: 272, type: !9)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !160, line: 271, column: 5)
!3514 = !DILocalVariable(name: "endp", scope: !3515, file: !160, line: 278, type: !6)
!3515 = distinct !DILexicalBlock(scope: !3513, file: !160, line: 277, column: 7)
!3516 = !DILocalVariable(name: "rtmin", scope: !3515, file: !160, line: 279, type: !22)
!3517 = !DILocalVariable(name: "rtmax", scope: !3515, file: !160, line: 280, type: !22)
!3518 = !DILocalVariable(name: "n", scope: !3519, file: !160, line: 284, type: !957)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !160, line: 283, column: 11)
!3520 = distinct !DILexicalBlock(scope: !3515, file: !160, line: 282, column: 13)
!3521 = !DILocalVariable(name: "n", scope: !3522, file: !160, line: 290, type: !957)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !160, line: 289, column: 11)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !160, line: 288, column: 18)
!3524 = !DILocation(line: 261, column: 25, scope: !3504, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 306, column: 13, scope: !3495)
!3526 = !DILocation(line: 263, column: 7, scope: !3510, inlinedAt: !3525)
!3527 = !DILocation(line: 263, column: 7, scope: !3504, inlinedAt: !3525)
!3528 = !DILocation(line: 265, column: 7, scope: !3509, inlinedAt: !3525)
!3529 = !DILocation(line: 265, column: 13, scope: !3509, inlinedAt: !3525)
!3530 = !DILocation(line: 266, column: 20, scope: !3509, inlinedAt: !3525)
!3531 = !DILocation(line: 266, column: 16, scope: !3509, inlinedAt: !3525)
!3532 = !DILocation(line: 267, column: 14, scope: !3533, inlinedAt: !3525)
!3533 = distinct !DILexicalBlock(scope: !3509, file: !160, line: 267, column: 11)
!3534 = !DILocation(line: 267, column: 13, scope: !3533, inlinedAt: !3525)
!3535 = !DILocation(line: 267, column: 24, scope: !3533, inlinedAt: !3525)
!3536 = !DILocation(line: 268, column: 16, scope: !3533, inlinedAt: !3525)
!3537 = !DILocation(line: 267, column: 19, scope: !3533, inlinedAt: !3525)
!3538 = !DILocation(line: 269, column: 5, scope: !3510, inlinedAt: !3525)
!3539 = !DILocation(line: 272, column: 20, scope: !3513, inlinedAt: !3525)
!3540 = !DILocation(line: 273, column: 21, scope: !3541, inlinedAt: !3525)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !160, line: 273, column: 7)
!3542 = distinct !DILexicalBlock(scope: !3513, file: !160, line: 273, column: 7)
!3543 = !DILocation(line: 273, column: 7, scope: !3542, inlinedAt: !3525)
!3544 = distinct !{!3544, !3545, !3546}
!3545 = !DILocation(line: 273, column: 7, scope: !3542)
!3546 = !DILocation(line: 275, column: 35, scope: !3542)
!3547 = !DILocation(line: 274, column: 21, scope: !3548, inlinedAt: !3525)
!3548 = distinct !DILexicalBlock(scope: !3541, file: !160, line: 274, column: 13)
!3549 = !DILocation(line: 274, column: 13, scope: !3548, inlinedAt: !3525)
!3550 = !DILocation(line: 274, column: 53, scope: !3548, inlinedAt: !3525)
!3551 = !DILocation(line: 273, column: 41, scope: !3541, inlinedAt: !3525)
!3552 = !DILocation(line: 274, column: 13, scope: !3541, inlinedAt: !3525)
!3553 = !DILocation(line: 273, column: 19, scope: !3541, inlinedAt: !3525)
!3554 = !DILocation(line: 275, column: 35, scope: !3548, inlinedAt: !3525)
!3555 = !{!3556, !749, i64 0}
!3556 = !{!"numname", !749, i64 0, !643, i64 4}
!3557 = !DILocation(line: 278, column: 9, scope: !3515, inlinedAt: !3525)
!3558 = !DILocation(line: 279, column: 21, scope: !3515, inlinedAt: !3525)
!3559 = !DILocation(line: 279, column: 13, scope: !3515, inlinedAt: !3525)
!3560 = !DILocation(line: 280, column: 21, scope: !3515, inlinedAt: !3525)
!3561 = !DILocation(line: 280, column: 13, scope: !3515, inlinedAt: !3525)
!3562 = !DILocation(line: 282, column: 15, scope: !3520, inlinedAt: !3525)
!3563 = !DILocation(line: 282, column: 23, scope: !3520, inlinedAt: !3525)
!3564 = !DILocation(line: 282, column: 26, scope: !3520, inlinedAt: !3525)
!3565 = !DILocation(line: 282, column: 56, scope: !3520, inlinedAt: !3525)
!3566 = !DILocation(line: 282, column: 13, scope: !3515, inlinedAt: !3525)
!3567 = !DILocation(line: 284, column: 42, scope: !3519, inlinedAt: !3525)
!3568 = !DILocation(line: 278, column: 15, scope: !3515, inlinedAt: !3525)
!3569 = !DILocation(line: 284, column: 26, scope: !3519, inlinedAt: !3525)
!3570 = !DILocation(line: 284, column: 22, scope: !3519, inlinedAt: !3525)
!3571 = !DILocation(line: 285, column: 20, scope: !3572, inlinedAt: !3525)
!3572 = distinct !DILexicalBlock(scope: !3519, file: !160, line: 285, column: 17)
!3573 = !DILocation(line: 285, column: 19, scope: !3572, inlinedAt: !3525)
!3574 = !DILocation(line: 285, column: 30, scope: !3572, inlinedAt: !3525)
!3575 = !DILocation(line: 285, column: 25, scope: !3572, inlinedAt: !3525)
!3576 = !DILocation(line: 285, column: 49, scope: !3572, inlinedAt: !3525)
!3577 = !DILocation(line: 285, column: 43, scope: !3572, inlinedAt: !3525)
!3578 = !DILocation(line: 285, column: 40, scope: !3572, inlinedAt: !3525)
!3579 = !DILocation(line: 285, column: 17, scope: !3519, inlinedAt: !3525)
!3580 = !DILocation(line: 288, column: 20, scope: !3523, inlinedAt: !3525)
!3581 = !DILocation(line: 288, column: 28, scope: !3523, inlinedAt: !3525)
!3582 = !DILocation(line: 288, column: 31, scope: !3523, inlinedAt: !3525)
!3583 = !DILocation(line: 288, column: 61, scope: !3523, inlinedAt: !3525)
!3584 = !DILocation(line: 288, column: 18, scope: !3520, inlinedAt: !3525)
!3585 = !DILocation(line: 290, column: 42, scope: !3522, inlinedAt: !3525)
!3586 = !DILocation(line: 290, column: 26, scope: !3522, inlinedAt: !3525)
!3587 = !DILocation(line: 290, column: 22, scope: !3522, inlinedAt: !3525)
!3588 = !DILocation(line: 291, column: 20, scope: !3589, inlinedAt: !3525)
!3589 = distinct !DILexicalBlock(scope: !3522, file: !160, line: 291, column: 17)
!3590 = !DILocation(line: 291, column: 19, scope: !3589, inlinedAt: !3525)
!3591 = !DILocation(line: 291, column: 25, scope: !3589, inlinedAt: !3525)
!3592 = !DILocation(line: 291, column: 34, scope: !3589, inlinedAt: !3525)
!3593 = !DILocation(line: 291, column: 28, scope: !3589, inlinedAt: !3525)
!3594 = !DILocation(line: 291, column: 42, scope: !3589, inlinedAt: !3525)
!3595 = !DILocation(line: 291, column: 52, scope: !3589, inlinedAt: !3525)
!3596 = !DILocation(line: 291, column: 47, scope: !3589, inlinedAt: !3525)
!3597 = !DILocation(line: 294, column: 7, scope: !3513, inlinedAt: !3525)
!3598 = !DILocation(line: 0, scope: !3495)
!3599 = !DILocation(line: 297, column: 3, scope: !3504, inlinedAt: !3525)
!3600 = !DILocation(line: 0, scope: !3548, inlinedAt: !3525)
!3601 = !DILocation(line: 306, column: 11, scope: !3495)
!3602 = !DILocation(line: 307, column: 10, scope: !3495)
!3603 = !DILocation(line: 307, column: 3, scope: !3495)
!3604 = distinct !DISubprogram(name: "sig2str", scope: !160, file: !160, line: 315, type: !3605, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!22, !22, !6}
!3607 = !{!3608, !3609, !3610, !3611, !3613, !3614, !3615}
!3608 = !DILocalVariable(name: "signum", arg: 1, scope: !3604, file: !160, line: 315, type: !22)
!3609 = !DILocalVariable(name: "signame", arg: 2, scope: !3604, file: !160, line: 315, type: !6)
!3610 = !DILocalVariable(name: "i", scope: !3604, file: !160, line: 317, type: !9)
!3611 = !DILocalVariable(name: "rtmin", scope: !3612, file: !160, line: 326, type: !22)
!3612 = distinct !DILexicalBlock(scope: !3604, file: !160, line: 325, column: 3)
!3613 = !DILocalVariable(name: "rtmax", scope: !3612, file: !160, line: 327, type: !22)
!3614 = !DILocalVariable(name: "base", scope: !3612, file: !160, line: 328, type: !22)
!3615 = !DILocalVariable(name: "delta", scope: !3612, file: !160, line: 328, type: !22)
!3616 = !DILocation(line: 315, column: 14, scope: !3604)
!3617 = !DILocation(line: 315, column: 28, scope: !3604)
!3618 = !DILocation(line: 317, column: 16, scope: !3604)
!3619 = !DILocation(line: 318, column: 3, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3604, file: !160, line: 318, column: 3)
!3621 = !DILocation(line: 318, column: 15, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3620, file: !160, line: 318, column: 3)
!3623 = !DILocation(line: 319, column: 26, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3622, file: !160, line: 319, column: 9)
!3625 = !DILocation(line: 319, column: 30, scope: !3624)
!3626 = !DILocation(line: 318, column: 37, scope: !3622)
!3627 = !DILocation(line: 319, column: 9, scope: !3622)
!3628 = !DILocation(line: 321, column: 26, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !160, line: 320, column: 7)
!3630 = !DILocalVariable(name: "__dest", arg: 1, scope: !3631, file: !3632, line: 88, type: !3635)
!3631 = distinct !DISubprogram(name: "strcpy", scope: !3632, file: !3632, line: 88, type: !3633, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3636)
!3632 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!6, !3635, !982}
!3635 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3636 = !{!3630, !3637}
!3637 = !DILocalVariable(name: "__src", arg: 2, scope: !3631, file: !3632, line: 88, type: !982)
!3638 = !DILocation(line: 88, column: 1, scope: !3631, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 321, column: 9, scope: !3629)
!3640 = !DILocation(line: 90, column: 49, scope: !3631, inlinedAt: !3639)
!3641 = !DILocation(line: 90, column: 10, scope: !3631, inlinedAt: !3639)
!3642 = !DILocation(line: 322, column: 9, scope: !3629)
!3643 = !DILocation(line: 326, column: 17, scope: !3612)
!3644 = !DILocation(line: 326, column: 9, scope: !3612)
!3645 = !DILocation(line: 327, column: 17, scope: !3612)
!3646 = !DILocation(line: 327, column: 9, scope: !3612)
!3647 = !DILocation(line: 330, column: 18, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3612, file: !160, line: 330, column: 9)
!3649 = !DILocation(line: 330, column: 38, scope: !3648)
!3650 = !DILocation(line: 330, column: 28, scope: !3648)
!3651 = !DILocation(line: 333, column: 34, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3612, file: !160, line: 333, column: 9)
!3653 = !DILocation(line: 333, column: 43, scope: !3652)
!3654 = !DILocation(line: 333, column: 25, scope: !3652)
!3655 = !DILocation(line: 333, column: 16, scope: !3652)
!3656 = !DILocation(line: 333, column: 9, scope: !3612)
!3657 = !DILocation(line: 335, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3652, file: !160, line: 334, column: 7)
!3659 = !DILocation(line: 328, column: 9, scope: !3612)
!3660 = !DILocation(line: 337, column: 7, scope: !3658)
!3661 = !DILocation(line: 340, column: 9, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3652, file: !160, line: 339, column: 7)
!3663 = !DILocation(line: 0, scope: !3662)
!3664 = !DILocation(line: 344, column: 20, scope: !3612)
!3665 = !DILocation(line: 328, column: 15, scope: !3612)
!3666 = !DILocation(line: 345, column: 15, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3612, file: !160, line: 345, column: 9)
!3668 = !DILocation(line: 345, column: 9, scope: !3612)
!3669 = !DILocation(line: 346, column: 7, scope: !3667)
!3670 = !DILocation(line: 0, scope: !3612)
!3671 = !DILocation(line: 349, column: 1, scope: !3604)
!3672 = !DILocation(line: 318, column: 17, scope: !3622)
!3673 = distinct !{!3673, !3619, !3674}
!3674 = !DILocation(line: 323, column: 7, scope: !3620)
!3675 = distinct !DISubprogram(name: "close_stream", scope: !3676, file: !3676, line: 56, type: !3677, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3713)
!3676 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!22, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2962, line: 7, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2964, line: 49, size: 1728, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3681, file: !2964, line: 51, baseType: !22, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3681, file: !2964, line: 54, baseType: !6, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3681, file: !2964, line: 55, baseType: !6, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3681, file: !2964, line: 56, baseType: !6, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3681, file: !2964, line: 57, baseType: !6, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3681, file: !2964, line: 58, baseType: !6, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3681, file: !2964, line: 59, baseType: !6, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3681, file: !2964, line: 60, baseType: !6, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3681, file: !2964, line: 61, baseType: !6, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3681, file: !2964, line: 64, baseType: !6, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3681, file: !2964, line: 65, baseType: !6, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3681, file: !2964, line: 66, baseType: !6, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3681, file: !2964, line: 68, baseType: !2979, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3681, file: !2964, line: 70, baseType: !3697, size: 64, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3681, file: !2964, line: 72, baseType: !22, size: 32, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3681, file: !2964, line: 73, baseType: !22, size: 32, offset: 928)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3681, file: !2964, line: 74, baseType: !2986, size: 64, offset: 960)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3681, file: !2964, line: 77, baseType: !99, size: 16, offset: 1024)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3681, file: !2964, line: 78, baseType: !2989, size: 8, offset: 1040)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3681, file: !2964, line: 79, baseType: !2991, size: 8, offset: 1048)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3681, file: !2964, line: 81, baseType: !2995, size: 64, offset: 1088)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3681, file: !2964, line: 89, baseType: !2998, size: 64, offset: 1152)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3681, file: !2964, line: 91, baseType: !3000, size: 64, offset: 1216)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3681, file: !2964, line: 92, baseType: !3003, size: 64, offset: 1280)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3681, file: !2964, line: 93, baseType: !3697, size: 64, offset: 1344)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3681, file: !2964, line: 94, baseType: !8, size: 64, offset: 1408)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3681, file: !2964, line: 95, baseType: !100, size: 64, offset: 1472)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3681, file: !2964, line: 96, baseType: !22, size: 32, offset: 1536)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3681, file: !2964, line: 98, baseType: !3010, size: 160, offset: 1568)
!3713 = !{!3714, !3715, !3717, !3718}
!3714 = !DILocalVariable(name: "stream", arg: 1, scope: !3675, file: !3676, line: 56, type: !3679)
!3715 = !DILocalVariable(name: "some_pending", scope: !3675, file: !3676, line: 58, type: !3716)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3717 = !DILocalVariable(name: "prev_fail", scope: !3675, file: !3676, line: 59, type: !3716)
!3718 = !DILocalVariable(name: "fclose_fail", scope: !3675, file: !3676, line: 60, type: !3716)
!3719 = !DILocation(line: 56, column: 21, scope: !3675)
!3720 = !DILocation(line: 58, column: 30, scope: !3675)
!3721 = !DILocalVariable(name: "__stream", arg: 1, scope: !3722, file: !3723, line: 135, type: !3679)
!3722 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3723, file: !3723, line: 135, type: !3677, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3724)
!3723 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3724 = !{!3721}
!3725 = !DILocation(line: 135, column: 1, scope: !3722, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 59, column: 27, scope: !3675)
!3727 = !DILocation(line: 137, column: 10, scope: !3722, inlinedAt: !3726)
!3728 = !{!3729, !749, i64 0}
!3729 = !{!"_IO_FILE", !749, i64 0, !642, i64 8, !642, i64 16, !642, i64 24, !642, i64 32, !642, i64 40, !642, i64 48, !642, i64 56, !642, i64 64, !642, i64 72, !642, i64 80, !642, i64 88, !642, i64 96, !642, i64 104, !749, i64 112, !749, i64 116, !2286, i64 120, !1660, i64 128, !643, i64 130, !643, i64 131, !642, i64 136, !2286, i64 144, !642, i64 152, !642, i64 160, !642, i64 168, !642, i64 176, !2286, i64 184, !749, i64 192, !643, i64 196}
!3730 = !DILocation(line: 59, column: 43, scope: !3675)
!3731 = !DILocation(line: 60, column: 29, scope: !3675)
!3732 = !DILocation(line: 60, column: 45, scope: !3675)
!3733 = !DILocation(line: 70, column: 17, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3675, file: !3676, line: 70, column: 7)
!3735 = !DILocation(line: 58, column: 50, scope: !3675)
!3736 = !DILocation(line: 70, column: 33, scope: !3734)
!3737 = !DILocation(line: 70, column: 53, scope: !3734)
!3738 = !DILocation(line: 70, column: 59, scope: !3734)
!3739 = !DILocation(line: 70, column: 7, scope: !3675)
!3740 = !DILocation(line: 72, column: 11, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3734, file: !3676, line: 71, column: 5)
!3742 = !DILocation(line: 73, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3741, file: !3676, line: 72, column: 11)
!3744 = !DILocation(line: 73, column: 15, scope: !3743)
!3745 = !DILocation(line: 0, scope: !3675)
!3746 = !DILocation(line: 78, column: 1, scope: !3675)
!3747 = distinct !DISubprogram(name: "hard_locale", scope: !3748, file: !3748, line: 38, type: !3749, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3751)
!3748 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!44, !22}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "category", arg: 1, scope: !3747, file: !3748, line: 38, type: !22)
!3753 = !DILocalVariable(name: "hard", scope: !3747, file: !3748, line: 40, type: !44)
!3754 = !DILocalVariable(name: "p", scope: !3747, file: !3748, line: 41, type: !19)
!3755 = !DILocation(line: 38, column: 18, scope: !3747)
!3756 = !DILocation(line: 40, column: 8, scope: !3747)
!3757 = !DILocation(line: 41, column: 19, scope: !3747)
!3758 = !DILocation(line: 41, column: 15, scope: !3747)
!3759 = !DILocation(line: 43, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3747, file: !3748, line: 43, column: 7)
!3761 = !DILocation(line: 43, column: 7, scope: !3747)
!3762 = !DILocation(line: 47, column: 15, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3748, line: 47, column: 15)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3748, line: 46, column: 9)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3748, line: 45, column: 11)
!3766 = distinct !DILexicalBlock(scope: !3760, file: !3748, line: 44, column: 5)
!3767 = !DILocation(line: 47, column: 31, scope: !3763)
!3768 = !DILocation(line: 47, column: 36, scope: !3763)
!3769 = !DILocation(line: 47, column: 39, scope: !3763)
!3770 = !DILocation(line: 47, column: 59, scope: !3763)
!3771 = !DILocation(line: 47, column: 15, scope: !3764)
!3772 = !DILocation(line: 48, column: 13, scope: !3763)
!3773 = !DILocation(line: 71, column: 3, scope: !3747)
!3774 = distinct !DISubprogram(name: "locale_charset", scope: !3775, file: !3775, line: 687, type: !3776, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !207, retainedNodes: !3778)
!3775 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!19}
!3778 = !{!3779}
!3779 = !DILocalVariable(name: "codeset", scope: !3774, file: !3775, line: 689, type: !19)
!3780 = !DILocation(line: 696, column: 13, scope: !3774)
!3781 = !DILocation(line: 689, column: 15, scope: !3774)
!3782 = !DILocation(line: 754, column: 15, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3774, file: !3775, line: 754, column: 7)
!3784 = !DILocation(line: 754, column: 7, scope: !3774)
!3785 = !DILocation(line: 907, column: 13, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !3775, line: 907, column: 13)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !3775, line: 897, column: 7)
!3788 = distinct !DILexicalBlock(scope: !3774, file: !3775, line: 856, column: 3)
!3789 = !DILocation(line: 907, column: 24, scope: !3786)
!3790 = !DILocation(line: 907, column: 13, scope: !3787)
!3791 = !DILocation(line: 995, column: 3, scope: !3774)
!3792 = distinct !DISubprogram(name: "rpl_fclose", scope: !3793, file: !3793, line: 58, type: !3794, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !596, retainedNodes: !3830)
!3793 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!22, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2962, line: 7, baseType: !3798)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2964, line: 49, size: 1728, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3798, file: !2964, line: 51, baseType: !22, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3798, file: !2964, line: 54, baseType: !6, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3798, file: !2964, line: 55, baseType: !6, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3798, file: !2964, line: 56, baseType: !6, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3798, file: !2964, line: 57, baseType: !6, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3798, file: !2964, line: 58, baseType: !6, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3798, file: !2964, line: 59, baseType: !6, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3798, file: !2964, line: 60, baseType: !6, size: 64, offset: 448)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3798, file: !2964, line: 61, baseType: !6, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3798, file: !2964, line: 64, baseType: !6, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3798, file: !2964, line: 65, baseType: !6, size: 64, offset: 640)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3798, file: !2964, line: 66, baseType: !6, size: 64, offset: 704)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3798, file: !2964, line: 68, baseType: !2979, size: 64, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3798, file: !2964, line: 70, baseType: !3814, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3798, file: !2964, line: 72, baseType: !22, size: 32, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3798, file: !2964, line: 73, baseType: !22, size: 32, offset: 928)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3798, file: !2964, line: 74, baseType: !2986, size: 64, offset: 960)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3798, file: !2964, line: 77, baseType: !99, size: 16, offset: 1024)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3798, file: !2964, line: 78, baseType: !2989, size: 8, offset: 1040)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3798, file: !2964, line: 79, baseType: !2991, size: 8, offset: 1048)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3798, file: !2964, line: 81, baseType: !2995, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3798, file: !2964, line: 89, baseType: !2998, size: 64, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3798, file: !2964, line: 91, baseType: !3000, size: 64, offset: 1216)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3798, file: !2964, line: 92, baseType: !3003, size: 64, offset: 1280)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3798, file: !2964, line: 93, baseType: !3814, size: 64, offset: 1344)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3798, file: !2964, line: 94, baseType: !8, size: 64, offset: 1408)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3798, file: !2964, line: 95, baseType: !100, size: 64, offset: 1472)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3798, file: !2964, line: 96, baseType: !22, size: 32, offset: 1536)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3798, file: !2964, line: 98, baseType: !3010, size: 160, offset: 1568)
!3830 = !{!3831, !3832, !3833, !3834}
!3831 = !DILocalVariable(name: "fp", arg: 1, scope: !3792, file: !3793, line: 58, type: !3796)
!3832 = !DILocalVariable(name: "saved_errno", scope: !3792, file: !3793, line: 60, type: !22)
!3833 = !DILocalVariable(name: "fd", scope: !3792, file: !3793, line: 61, type: !22)
!3834 = !DILocalVariable(name: "result", scope: !3792, file: !3793, line: 62, type: !22)
!3835 = !DILocation(line: 58, column: 19, scope: !3792)
!3836 = !DILocation(line: 60, column: 7, scope: !3792)
!3837 = !DILocation(line: 62, column: 7, scope: !3792)
!3838 = !DILocation(line: 65, column: 8, scope: !3792)
!3839 = !DILocation(line: 61, column: 7, scope: !3792)
!3840 = !DILocation(line: 66, column: 10, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3792, file: !3793, line: 66, column: 7)
!3842 = !DILocation(line: 66, column: 7, scope: !3792)
!3843 = !DILocation(line: 67, column: 12, scope: !3841)
!3844 = !DILocation(line: 67, column: 5, scope: !3841)
!3845 = !DILocation(line: 72, column: 9, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3792, file: !3793, line: 72, column: 7)
!3847 = !DILocation(line: 72, column: 23, scope: !3846)
!3848 = !DILocation(line: 72, column: 33, scope: !3846)
!3849 = !DILocation(line: 72, column: 26, scope: !3846)
!3850 = !DILocation(line: 72, column: 59, scope: !3846)
!3851 = !DILocation(line: 73, column: 7, scope: !3846)
!3852 = !DILocation(line: 73, column: 10, scope: !3846)
!3853 = !DILocation(line: 72, column: 7, scope: !3792)
!3854 = !DILocation(line: 100, column: 12, scope: !3792)
!3855 = !DILocation(line: 105, column: 7, scope: !3792)
!3856 = !DILocation(line: 74, column: 19, scope: !3846)
!3857 = !DILocation(line: 105, column: 19, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3792, file: !3793, line: 105, column: 7)
!3859 = !DILocation(line: 107, column: 13, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3858, file: !3793, line: 106, column: 5)
!3861 = !DILocation(line: 109, column: 5, scope: !3860)
!3862 = !DILocation(line: 0, scope: !3792)
!3863 = !DILocation(line: 112, column: 1, scope: !3792)
!3864 = distinct !DISubprogram(name: "rpl_fflush", scope: !3865, file: !3865, line: 129, type: !3866, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !598, retainedNodes: !3902)
!3865 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!22, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2962, line: 7, baseType: !3870)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2964, line: 49, size: 1728, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3870, file: !2964, line: 51, baseType: !22, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3870, file: !2964, line: 54, baseType: !6, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3870, file: !2964, line: 55, baseType: !6, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3870, file: !2964, line: 56, baseType: !6, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3870, file: !2964, line: 57, baseType: !6, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3870, file: !2964, line: 58, baseType: !6, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3870, file: !2964, line: 59, baseType: !6, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3870, file: !2964, line: 60, baseType: !6, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3870, file: !2964, line: 61, baseType: !6, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3870, file: !2964, line: 64, baseType: !6, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3870, file: !2964, line: 65, baseType: !6, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3870, file: !2964, line: 66, baseType: !6, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3870, file: !2964, line: 68, baseType: !2979, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3870, file: !2964, line: 70, baseType: !3886, size: 64, offset: 832)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3870, file: !2964, line: 72, baseType: !22, size: 32, offset: 896)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3870, file: !2964, line: 73, baseType: !22, size: 32, offset: 928)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3870, file: !2964, line: 74, baseType: !2986, size: 64, offset: 960)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3870, file: !2964, line: 77, baseType: !99, size: 16, offset: 1024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3870, file: !2964, line: 78, baseType: !2989, size: 8, offset: 1040)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3870, file: !2964, line: 79, baseType: !2991, size: 8, offset: 1048)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3870, file: !2964, line: 81, baseType: !2995, size: 64, offset: 1088)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3870, file: !2964, line: 89, baseType: !2998, size: 64, offset: 1152)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3870, file: !2964, line: 91, baseType: !3000, size: 64, offset: 1216)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3870, file: !2964, line: 92, baseType: !3003, size: 64, offset: 1280)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3870, file: !2964, line: 93, baseType: !3886, size: 64, offset: 1344)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3870, file: !2964, line: 94, baseType: !8, size: 64, offset: 1408)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3870, file: !2964, line: 95, baseType: !100, size: 64, offset: 1472)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3870, file: !2964, line: 96, baseType: !22, size: 32, offset: 1536)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3870, file: !2964, line: 98, baseType: !3010, size: 160, offset: 1568)
!3902 = !{!3903}
!3903 = !DILocalVariable(name: "stream", arg: 1, scope: !3864, file: !3865, line: 129, type: !3868)
!3904 = !DILocation(line: 129, column: 19, scope: !3864)
!3905 = !DILocation(line: 150, column: 14, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3864, file: !3865, line: 150, column: 7)
!3907 = !DILocation(line: 150, column: 22, scope: !3906)
!3908 = !DILocation(line: 150, column: 27, scope: !3906)
!3909 = !DILocation(line: 150, column: 7, scope: !3864)
!3910 = !DILocation(line: 151, column: 12, scope: !3906)
!3911 = !DILocation(line: 151, column: 5, scope: !3906)
!3912 = !DILocalVariable(name: "fp", arg: 1, scope: !3913, file: !3865, line: 41, type: !3868)
!3913 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3865, file: !3865, line: 41, type: !3914, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !598, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3868}
!3916 = !{!3912}
!3917 = !DILocation(line: 41, column: 48, scope: !3913, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 156, column: 3, scope: !3864)
!3919 = !DILocation(line: 43, column: 11, scope: !3920, inlinedAt: !3918)
!3920 = distinct !DILexicalBlock(scope: !3913, file: !3865, line: 43, column: 7)
!3921 = !DILocation(line: 43, column: 18, scope: !3920, inlinedAt: !3918)
!3922 = !DILocation(line: 43, column: 7, scope: !3913, inlinedAt: !3918)
!3923 = !DILocation(line: 45, column: 5, scope: !3920, inlinedAt: !3918)
!3924 = !DILocation(line: 158, column: 10, scope: !3864)
!3925 = !DILocation(line: 158, column: 3, scope: !3864)
!3926 = !DILocation(line: 0, scope: !3864)
!3927 = !DILocation(line: 232, column: 1, scope: !3864)
!3928 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3929, file: !3929, line: 28, type: !3930, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !600, retainedNodes: !3967)
!3929 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!22, !3932, !3966, !22}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2962, line: 7, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2964, line: 49, size: 1728, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3934, file: !2964, line: 51, baseType: !22, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3934, file: !2964, line: 54, baseType: !6, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3934, file: !2964, line: 55, baseType: !6, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3934, file: !2964, line: 56, baseType: !6, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3934, file: !2964, line: 57, baseType: !6, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3934, file: !2964, line: 58, baseType: !6, size: 64, offset: 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3934, file: !2964, line: 59, baseType: !6, size: 64, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3934, file: !2964, line: 60, baseType: !6, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3934, file: !2964, line: 61, baseType: !6, size: 64, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3934, file: !2964, line: 64, baseType: !6, size: 64, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3934, file: !2964, line: 65, baseType: !6, size: 64, offset: 640)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3934, file: !2964, line: 66, baseType: !6, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3934, file: !2964, line: 68, baseType: !2979, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3934, file: !2964, line: 70, baseType: !3950, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3934, file: !2964, line: 72, baseType: !22, size: 32, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3934, file: !2964, line: 73, baseType: !22, size: 32, offset: 928)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3934, file: !2964, line: 74, baseType: !2986, size: 64, offset: 960)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3934, file: !2964, line: 77, baseType: !99, size: 16, offset: 1024)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3934, file: !2964, line: 78, baseType: !2989, size: 8, offset: 1040)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3934, file: !2964, line: 79, baseType: !2991, size: 8, offset: 1048)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3934, file: !2964, line: 81, baseType: !2995, size: 64, offset: 1088)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3934, file: !2964, line: 89, baseType: !2998, size: 64, offset: 1152)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3934, file: !2964, line: 91, baseType: !3000, size: 64, offset: 1216)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3934, file: !2964, line: 92, baseType: !3003, size: 64, offset: 1280)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3934, file: !2964, line: 93, baseType: !3950, size: 64, offset: 1344)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3934, file: !2964, line: 94, baseType: !8, size: 64, offset: 1408)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3934, file: !2964, line: 95, baseType: !100, size: 64, offset: 1472)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3934, file: !2964, line: 96, baseType: !22, size: 32, offset: 1536)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3934, file: !2964, line: 98, baseType: !3010, size: 160, offset: 1568)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3132, line: 63, baseType: !2986)
!3967 = !{!3968, !3969, !3970, !3971}
!3968 = !DILocalVariable(name: "fp", arg: 1, scope: !3928, file: !3929, line: 28, type: !3932)
!3969 = !DILocalVariable(name: "offset", arg: 2, scope: !3928, file: !3929, line: 28, type: !3966)
!3970 = !DILocalVariable(name: "whence", arg: 3, scope: !3928, file: !3929, line: 28, type: !22)
!3971 = !DILocalVariable(name: "pos", scope: !3972, file: !3929, line: 117, type: !3966)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !3929, line: 113, column: 5)
!3973 = distinct !DILexicalBlock(scope: !3928, file: !3929, line: 52, column: 7)
!3974 = !DILocation(line: 28, column: 15, scope: !3928)
!3975 = !DILocation(line: 28, column: 25, scope: !3928)
!3976 = !DILocation(line: 28, column: 37, scope: !3928)
!3977 = !DILocation(line: 52, column: 11, scope: !3973)
!3978 = !{!3729, !642, i64 16}
!3979 = !DILocation(line: 52, column: 31, scope: !3973)
!3980 = !{!3729, !642, i64 8}
!3981 = !DILocation(line: 52, column: 24, scope: !3973)
!3982 = !DILocation(line: 53, column: 7, scope: !3973)
!3983 = !DILocation(line: 53, column: 14, scope: !3973)
!3984 = !{!3729, !642, i64 40}
!3985 = !DILocation(line: 53, column: 35, scope: !3973)
!3986 = !{!3729, !642, i64 32}
!3987 = !DILocation(line: 53, column: 28, scope: !3973)
!3988 = !DILocation(line: 54, column: 7, scope: !3973)
!3989 = !DILocation(line: 54, column: 14, scope: !3973)
!3990 = !{!3729, !642, i64 72}
!3991 = !DILocation(line: 54, column: 28, scope: !3973)
!3992 = !DILocation(line: 52, column: 7, scope: !3928)
!3993 = !DILocation(line: 117, column: 26, scope: !3972)
!3994 = !DILocation(line: 117, column: 19, scope: !3972)
!3995 = !DILocation(line: 117, column: 13, scope: !3972)
!3996 = !DILocation(line: 118, column: 15, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3972, file: !3929, line: 118, column: 11)
!3998 = !DILocation(line: 118, column: 11, scope: !3972)
!3999 = !DILocation(line: 129, column: 11, scope: !3972)
!4000 = !DILocation(line: 129, column: 18, scope: !3972)
!4001 = !DILocation(line: 130, column: 11, scope: !3972)
!4002 = !DILocation(line: 130, column: 19, scope: !3972)
!4003 = !{!3729, !2286, i64 144}
!4004 = !DILocation(line: 161, column: 7, scope: !3972)
!4005 = !DILocation(line: 163, column: 10, scope: !3928)
!4006 = !DILocation(line: 163, column: 3, scope: !3928)
!4007 = !DILocation(line: 0, scope: !3928)
!4008 = !DILocation(line: 164, column: 1, scope: !3928)
