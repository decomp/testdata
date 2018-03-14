; ModuleID = 'coreutils-8.27/src/kill.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@short_options = internal constant [113 x i8] c"0::1::2::3::4::5::6::7::8::9::A::B::C::D::E::F::G::H::I::J::K::M::N::O::P::Q::R::S::T::U::V::W::X::Y::Z::Lln:s:t\00", align 16, !dbg !0
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !33
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
@.str.20 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.21 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !51
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !56
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !61
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !65
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !72
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !79
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !124
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !131
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !143
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !150
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !157
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !145
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !159
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.89 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.90 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !165
@.str.1.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !174
@.str.111 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.115 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !189
@.str.3.125 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.126 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.127 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.128 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.129 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !590 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !594, metadata !595), !dbg !596
  %2 = icmp eq i32 %0, 0, !dbg !597
  br i1 %2, label %8, label %3, !dbg !599

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !600, !tbaa !602
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !600
  %6 = load i8*, i8** @program_name, align 8, !dbg !600, !tbaa !602
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !600
  br label %47, !dbg !600

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !606
  %10 = load i8*, i8** @program_name, align 8, !dbg !606, !tbaa !602
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #12, !dbg !606
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !608
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !602
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !608
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !609
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !602
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !609
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !614
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !602
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !614
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !615
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !602
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !615
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !616
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !602
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !616
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !617
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !602
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !617
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !618
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !21, metadata !595) #12, !dbg !619
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !21, metadata !595) #12, !dbg !619
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !621
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !621
  %34 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !29, metadata !595) #12, !dbg !623
  %35 = icmp eq i8* %34, null, !dbg !624
  br i1 %35, label %42, label %36, !dbg !626

; <label>:36:                                     ; preds = %8
  %37 = tail call i32 @strncmp(i8* nonnull %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #10, !dbg !627
  %38 = icmp eq i32 %37, 0, !dbg !627
  br i1 %38, label %42, label %39, !dbg !628

; <label>:39:                                     ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !629
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !629
  br label %42, !dbg !631

; <label>:42:                                     ; preds = %8, %36, %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !632
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !632
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !633
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #12, !dbg !633
  br label %47

; <label>:47:                                     ; preds = %42, %3
  tail call void @exit(i32 %0) #15, !dbg !634
  unreachable, !dbg !634
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !635 {
  %3 = alloca i8*, align 8
  %4 = alloca [19 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %4, metadata !650, metadata !595), !dbg !670
  %5 = alloca [19 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !640, metadata !595), !dbg !672
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !641, metadata !595), !dbg !673
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !643, metadata !595), !dbg !674
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !644, metadata !595), !dbg !675
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !645, metadata !595), !dbg !676
  %6 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %6) #12, !dbg !677
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %5, metadata !646, metadata !595), !dbg !678
  %7 = load i8*, i8** %1, align 8, !dbg !679, !tbaa !602
  tail call void @set_program_name(i8* %7) #12, !dbg !680
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !681
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !682
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !683
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !684
  br label %12, !dbg !685

; <label>:12:                                     ; preds = %2, %54
  %13 = phi i32 [ %56, %54 ], [ -1, %2 ]
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !645, metadata !595), !dbg !676
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !644, metadata !595), !dbg !675
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !643, metadata !595), !dbg !674
  %14 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !685
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !642, metadata !595), !dbg !686
  switch i32 %14, label %66 [
    i32 -1, label %67
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
    i32 110, label %48
    i32 115, label %48
    i32 76, label %60
    i32 116, label %60
    i32 108, label %59
    i32 -130, label %62
    i32 -131, label %63
  ], !dbg !687

; <label>:15:                                     ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %16 = load i32, i32* @optind, align 4, !dbg !688, !tbaa !691
  %17 = icmp eq i32 %16, 2, !dbg !693
  br i1 %17, label %24, label %18, !dbg !694

; <label>:18:                                     ; preds = %228, %15
  %19 = phi i8 [ 0, %15 ], [ 1, %228 ]
  %20 = phi i8 [ 0, %15 ], [ %61, %228 ]
  %21 = phi i32 [ %13, %15 ], [ %224, %228 ]
  %22 = phi i32 [ %16, %15 ], [ %229, %228 ]
  %23 = add nsw i32 %22, -1, !dbg !695
  store i32 %23, i32* @optind, align 4, !dbg !695, !tbaa !691
  br label %67, !dbg !697

; <label>:24:                                     ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %15
  %25 = load i8*, i8** @optarg, align 8, !dbg !698, !tbaa !602
  %26 = icmp eq i8* %25, null, !dbg !698
  %27 = load i32, i32* @optind, align 4, !tbaa !691
  br i1 %26, label %28, label %35, !dbg !700

; <label>:28:                                     ; preds = %24
  %29 = add nsw i32 %27, -1, !dbg !701
  %30 = sext i32 %29 to i64, !dbg !702
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !702
  %32 = load i8*, i8** %31, align 8, !dbg !702, !tbaa !602
  %33 = call i64 @strlen(i8* %32) #10, !dbg !703
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !704
  store i8* %34, i8** @optarg, align 8, !dbg !705, !tbaa !602
  br label %35, !dbg !706

; <label>:35:                                     ; preds = %24, %28
  %36 = phi i8* [ %34, %28 ], [ %25, %24 ], !dbg !707
  %37 = add nsw i32 %27, -1, !dbg !709
  %38 = sext i32 %37 to i64, !dbg !710
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38, !dbg !710
  %40 = load i8*, i8** %39, align 8, !dbg !710, !tbaa !602
  %41 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !711
  %42 = icmp eq i8* %36, %41, !dbg !712
  br i1 %42, label %46, label %43, !dbg !713

; <label>:43:                                     ; preds = %242, %35
  %44 = phi i32 [ %14, %35 ], [ %225, %242 ]
  %45 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !714
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %45, i32 %44) #12, !dbg !716
  call void @usage(i32 1) #16, !dbg !717
  unreachable, !dbg !717

; <label>:46:                                     ; preds = %35
  %47 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !718
  store i8* %47, i8** @optarg, align 8, !dbg !718, !tbaa !602
  br label %48, !dbg !719

; <label>:48:                                     ; preds = %12, %12, %46
  %49 = icmp sgt i32 %13, -1, !dbg !720
  br i1 %49, label %50, label %54, !dbg !722

; <label>:50:                                     ; preds = %252, %48
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !723
  %52 = load i8*, i8** @optarg, align 8, !dbg !725, !tbaa !602
  %53 = call i8* @quote(i8* %52) #12, !dbg !726
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %53) #12, !dbg !727
  call void @usage(i32 1) #16, !dbg !728
  unreachable, !dbg !728

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** @optarg, align 8, !dbg !729, !tbaa !602
  %56 = call i32 @operand2sig(i8* %55, i8* nonnull %6) #12, !dbg !730
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !645, metadata !595), !dbg !676
  %57 = icmp slt i32 %56, 0, !dbg !731
  br i1 %57, label %58, label %12, !dbg !733, !llvm.loop !734

; <label>:58:                                     ; preds = %254, %54
  call void @usage(i32 1) #16, !dbg !736
  unreachable, !dbg !736

; <label>:59:                                     ; preds = %12
  br label %60, !dbg !737

; <label>:60:                                     ; preds = %12, %12, %59
  %61 = phi i8 [ 0, %59 ], [ 1, %12 ], [ 1, %12 ]
  call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !644, metadata !595), !dbg !675
  br label %223, !dbg !685

; <label>:62:                                     ; preds = %223, %12
  call void @usage(i32 0) #16, !dbg !739
  unreachable, !dbg !739

; <label>:63:                                     ; preds = %223, %12
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !602
  %65 = load i8*, i8** @Version, align 8, !dbg !740, !tbaa !602
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #12, !dbg !740
  call void @exit(i32 0) #15, !dbg !740
  unreachable, !dbg !740

; <label>:66:                                     ; preds = %223, %12
  call void @usage(i32 1) #16, !dbg !741
  unreachable, !dbg !741

; <label>:67:                                     ; preds = %12, %223, %18
  %68 = phi i8 [ %19, %18 ], [ 0, %12 ], [ 1, %223 ]
  %69 = phi i8 [ %20, %18 ], [ 0, %12 ], [ %61, %223 ]
  %70 = phi i32 [ %21, %18 ], [ %13, %12 ], [ %224, %223 ]
  %71 = icmp slt i32 %70, 0, !dbg !742
  br i1 %71, label %76, label %72, !dbg !744

; <label>:72:                                     ; preds = %67
  %73 = icmp eq i8 %68, 0, !dbg !745
  br i1 %73, label %76, label %74, !dbg !747

; <label>:74:                                     ; preds = %72
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !748
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #12, !dbg !750
  call void @usage(i32 1) #16, !dbg !751
  unreachable, !dbg !751

; <label>:76:                                     ; preds = %67, %72
  %77 = phi i8 [ 0, %72 ], [ %68, %67 ], !dbg !752
  %78 = phi i32 [ %70, %72 ], [ 15, %67 ]
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !645, metadata !595), !dbg !676
  %79 = icmp ne i8 %77, 0, !dbg !752
  %80 = load i32, i32* @optind, align 4, !dbg !754
  %81 = icmp slt i32 %80, %0, !dbg !755
  %82 = or i1 %79, %81, !dbg !756
  br i1 %82, label %85, label %83, !dbg !756

; <label>:83:                                     ; preds = %76
  %84 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !757
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %84) #12, !dbg !759
  call void @usage(i32 1) #16, !dbg !760
  unreachable, !dbg !760

; <label>:85:                                     ; preds = %76
  br i1 %79, label %86, label %183, !dbg !761

; <label>:86:                                     ; preds = %85
  %87 = and i8 %69, 1, !dbg !762
  %88 = icmp eq i8 %87, 0, !dbg !762
  %89 = sext i32 %80 to i64, !dbg !763
  %90 = getelementptr inbounds i8*, i8** %1, i64 %89, !dbg !763
  %91 = select i1 %81, i8** %90, i8** null, !dbg !764
  call void @llvm.dbg.value(metadata i1 %88, i64 0, metadata !657, metadata !595) #12, !dbg !765
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %92 = getelementptr inbounds [19 x i8], [19 x i8]* %4, i64 0, i64 0, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %92) #12, !dbg !768
  br i1 %88, label %144, label %93, !dbg !769

; <label>:93:                                     ; preds = %86
  br label %94, !dbg !770

; <label>:94:                                     ; preds = %93, %105
  %95 = phi i32 [ %106, %105 ], [ 0, %93 ]
  %96 = phi i32 [ %107, %105 ], [ 1, %93 ]
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !659, metadata !595) #12, !dbg !771
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !661, metadata !595) #12, !dbg !772
  %97 = call i32 @sig2str(i32 %96, i8* nonnull %92) #12, !dbg !770
  %98 = icmp eq i32 %97, 0, !dbg !773
  br i1 %98, label %99, label %105, !dbg !774

; <label>:99:                                     ; preds = %94
  %100 = call i64 @strlen(i8* nonnull %92) #10, !dbg !775
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !665, metadata !595) #12, !dbg !776
  %101 = zext i32 %95 to i64, !dbg !777
  %102 = icmp ugt i64 %100, %101, !dbg !779
  %103 = trunc i64 %100 to i32, !dbg !780
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !661, metadata !595) #12, !dbg !772
  %104 = select i1 %102, i32 %103, i32 %95, !dbg !781
  call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !661, metadata !595) #12, !dbg !772
  br label %105, !dbg !782

; <label>:105:                                    ; preds = %99, %94
  %106 = phi i32 [ %104, %99 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !661, metadata !595) #12, !dbg !772
  %107 = add nuw nsw i32 %96, 1, !dbg !783
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !659, metadata !595) #12, !dbg !771
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !661, metadata !595) #12, !dbg !772
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %108 = icmp eq i32 %107, 65, !dbg !784
  br i1 %108, label %109, label %94, !dbg !785, !llvm.loop !786

; <label>:109:                                    ; preds = %105
  %110 = icmp eq i8** %91, null, !dbg !789
  br i1 %110, label %111, label %112, !dbg !791

; <label>:111:                                    ; preds = %109
  br label %132, !dbg !792

; <label>:112:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %113 = load i8*, i8** %91, align 8, !dbg !796, !tbaa !602
  %114 = icmp eq i8* %113, null, !dbg !799
  br i1 %114, label %181, label %115, !dbg !799

; <label>:115:                                    ; preds = %112
  br label %116, !dbg !800

; <label>:116:                                    ; preds = %115, %127
  %117 = phi i8* [ %130, %127 ], [ %113, %115 ]
  %118 = phi i8** [ %129, %127 ], [ %90, %115 ]
  %119 = phi i32 [ %128, %127 ], [ 0, %115 ]
  call void @llvm.dbg.value(metadata i32 %119, i64 0, metadata !660, metadata !595) #12, !dbg !767
  call void @llvm.dbg.value(metadata i8** %118, i64 0, metadata !658, metadata !595) #12, !dbg !766
  %120 = call i32 @operand2sig(i8* nonnull %117, i8* nonnull %92) #12, !dbg !800
  call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %121 = icmp slt i32 %120, 0, !dbg !802
  br i1 %121, label %127, label %122, !dbg !804

; <label>:122:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !805, metadata !595) #12, !dbg !814
  call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !810, metadata !595) #12, !dbg !816
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !811, metadata !595) #12, !dbg !817
  call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !812, metadata !595) #12, !dbg !818
  %123 = call i8* @strsignal(i32 %120) #12, !dbg !819
  call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !813, metadata !595) #12, !dbg !820
  %124 = icmp eq i8* %123, null, !dbg !821
  %125 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %123, !dbg !821
  %126 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %120, i32 %106, i8* nonnull %92, i8* %125) #12, !dbg !821
  br label %127

; <label>:127:                                    ; preds = %122, %116
  %128 = phi i32 [ %119, %122 ], [ 1, %116 ]
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %129 = getelementptr inbounds i8*, i8** %118, i64 1, !dbg !822
  call void @llvm.dbg.value(metadata i8** %129, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i8** %129, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %130 = load i8*, i8** %129, align 8, !dbg !796, !tbaa !602
  %131 = icmp eq i8* %130, null, !dbg !799
  br i1 %131, label %181, label %116, !dbg !799, !llvm.loop !823

; <label>:132:                                    ; preds = %111, %141
  %133 = phi i32 [ %142, %141 ], [ 1, %111 ]
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %134 = call i32 @sig2str(i32 %133, i8* nonnull %92) #12, !dbg !792
  %135 = icmp eq i32 %134, 0, !dbg !826
  br i1 %135, label %136, label %141, !dbg !827

; <label>:136:                                    ; preds = %132
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !805, metadata !595) #12, !dbg !828
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !810, metadata !595) #12, !dbg !830
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !811, metadata !595) #12, !dbg !831
  call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !812, metadata !595) #12, !dbg !832
  %137 = call i8* @strsignal(i32 %133) #12, !dbg !833
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !813, metadata !595) #12, !dbg !834
  %138 = icmp eq i8* %137, null, !dbg !835
  %139 = select i1 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %137, !dbg !835
  %140 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %133, i32 %106, i8* nonnull %92, i8* %139) #12, !dbg !835
  br label %141, !dbg !836

; <label>:141:                                    ; preds = %136, %132
  %142 = add nuw nsw i32 %133, 1, !dbg !837
  call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !659, metadata !595) #12, !dbg !771
  call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %143 = icmp eq i32 %142, 65, !dbg !838
  br i1 %143, label %181, label %132, !dbg !839, !llvm.loop !840

; <label>:144:                                    ; preds = %86
  %145 = icmp eq i8** %91, null, !dbg !843
  br i1 %145, label %146, label %147, !dbg !846

; <label>:146:                                    ; preds = %144
  br label %172, !dbg !847

; <label>:147:                                    ; preds = %144
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %148 = load i8*, i8** %91, align 8, !dbg !851, !tbaa !602
  %149 = icmp eq i8* %148, null, !dbg !854
  br i1 %149, label %181, label %150, !dbg !854

; <label>:150:                                    ; preds = %147
  br label %151, !dbg !855

; <label>:151:                                    ; preds = %150, %167
  %152 = phi i8* [ %170, %167 ], [ %148, %150 ]
  %153 = phi i8** [ %169, %167 ], [ %90, %150 ]
  %154 = phi i32 [ %168, %167 ], [ 0, %150 ]
  call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !660, metadata !595) #12, !dbg !767
  call void @llvm.dbg.value(metadata i8** %153, i64 0, metadata !658, metadata !595) #12, !dbg !766
  %155 = call i32 @operand2sig(i8* nonnull %152, i8* nonnull %92) #12, !dbg !855
  call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %156 = icmp slt i32 %155, 0, !dbg !857
  br i1 %156, label %167, label %157, !dbg !859

; <label>:157:                                    ; preds = %151
  %158 = load i8*, i8** %153, align 8, !dbg !860, !tbaa !602
  %159 = load i8, i8* %158, align 1, !dbg !860, !tbaa !863
  %160 = sext i8 %159 to i32, !dbg !860
  %161 = add nsw i32 %160, -48, !dbg !860
  %162 = icmp ult i32 %161, 10, !dbg !860
  br i1 %162, label %163, label %165, !dbg !864

; <label>:163:                                    ; preds = %157
  %164 = call i32 @puts(i8* nonnull %92) #12, !dbg !865
  br label %167, !dbg !865

; <label>:165:                                    ; preds = %157
  %166 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 %155) #12, !dbg !866
  br label %167

; <label>:167:                                    ; preds = %165, %163, %151
  %168 = phi i32 [ %154, %163 ], [ %154, %165 ], [ 1, %151 ]
  call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %169 = getelementptr inbounds i8*, i8** %153, i64 1, !dbg !867
  call void @llvm.dbg.value(metadata i8** %169, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i8** %169, i64 0, metadata !658, metadata !595) #12, !dbg !766
  call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !660, metadata !595) #12, !dbg !767
  %170 = load i8*, i8** %169, align 8, !dbg !851, !tbaa !602
  %171 = icmp eq i8* %170, null, !dbg !854
  br i1 %171, label %181, label %151, !dbg !854, !llvm.loop !868

; <label>:172:                                    ; preds = %146, %178
  %173 = phi i32 [ %179, %178 ], [ 1, %146 ]
  call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %174 = call i32 @sig2str(i32 %173, i8* nonnull %92) #12, !dbg !847
  %175 = icmp eq i32 %174, 0, !dbg !871
  br i1 %175, label %176, label %178, !dbg !872

; <label>:176:                                    ; preds = %172
  %177 = call i32 @puts(i8* nonnull %92) #12, !dbg !873
  br label %178, !dbg !873

; <label>:178:                                    ; preds = %176, %172
  %179 = add nuw nsw i32 %173, 1, !dbg !874
  call void @llvm.dbg.value(metadata i32 %179, i64 0, metadata !659, metadata !595) #12, !dbg !771
  call void @llvm.dbg.value(metadata i32 %179, i64 0, metadata !659, metadata !595) #12, !dbg !771
  %180 = icmp eq i32 %179, 65, !dbg !875
  br i1 %180, label %181, label %172, !dbg !876, !llvm.loop !877

; <label>:181:                                    ; preds = %127, %141, %167, %178, %112, %147
  %182 = phi i32 [ 0, %112 ], [ 0, %147 ], [ 0, %178 ], [ %168, %167 ], [ 0, %141 ], [ %128, %127 ]
  call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !660, metadata !595) #12, !dbg !767
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %92) #12, !dbg !880
  br label %221, !dbg !761

; <label>:183:                                    ; preds = %85
  %184 = sext i32 %80 to i64, !dbg !881
  %185 = getelementptr inbounds i8*, i8** %1, i64 %184, !dbg !881
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !882, metadata !595) #12, !dbg !902
  call void @llvm.dbg.value(metadata i8** %185, i64 0, metadata !887, metadata !595) #12, !dbg !904
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !888, metadata !595) #12, !dbg !905
  %186 = load i8*, i8** %185, align 8, !dbg !906, !tbaa !602
  call void @llvm.dbg.value(metadata i8* %186, i64 0, metadata !889, metadata !595) #12, !dbg !907
  %187 = bitcast i8** %3 to i8*
  br label %188, !dbg !908, !llvm.loop !909

; <label>:188:                                    ; preds = %216, %183
  %189 = phi i8* [ %186, %183 ], [ %219, %216 ]
  %190 = phi i32 [ 0, %183 ], [ %217, %216 ]
  %191 = phi i8** [ %185, %183 ], [ %218, %216 ]
  call void @llvm.dbg.value(metadata i8** %191, i64 0, metadata !887, metadata !595) #12, !dbg !904
  call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !888, metadata !595) #12, !dbg !905
  call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !889, metadata !595) #12, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %187) #12, !dbg !912
  %192 = tail call i32* @__errno_location() #17, !dbg !913
  store i32 0, i32* %192, align 4, !dbg !914, !tbaa !691
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !890, metadata !595) #12, !dbg !915
  call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !916, metadata !595) #12, !dbg !926
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !924, metadata !595) #12, !dbg !926
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !925, metadata !595) #12, !dbg !926
  %193 = call i64 @__strtol_internal(i8* %189, i8** nonnull %3, i32 10, i32 0) #12, !dbg !928
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !892, metadata !595) #12, !dbg !929
  %194 = trunc i64 %193 to i32, !dbg !930
  call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !898, metadata !595) #12, !dbg !931
  %195 = load i32, i32* %192, align 4, !dbg !932, !tbaa !691
  %196 = icmp eq i32 %195, 34, !dbg !934
  br i1 %196, label %207, label %197, !dbg !935

; <label>:197:                                    ; preds = %188
  %198 = shl i64 %193, 32, !dbg !936
  %199 = ashr exact i64 %198, 32, !dbg !936
  %200 = icmp eq i64 %199, %193, !dbg !937
  br i1 %200, label %201, label %207, !dbg !938

; <label>:201:                                    ; preds = %197
  %202 = load i8*, i8** %3, align 8, !dbg !939, !tbaa !602
  call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !890, metadata !595) #12, !dbg !915
  %203 = icmp eq i8* %189, %202, !dbg !940
  br i1 %203, label %207, label %204, !dbg !941

; <label>:204:                                    ; preds = %201
  %205 = load i8, i8* %202, align 1, !dbg !942, !tbaa !863
  %206 = icmp eq i8 %205, 0, !dbg !942
  br i1 %206, label %210, label %207, !dbg !943

; <label>:207:                                    ; preds = %204, %201, %197, %188
  %208 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !944
  %209 = call i8* @quote(i8* %189) #12, !dbg !946
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %208, i8* %209) #12, !dbg !947
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !888, metadata !595) #12, !dbg !905
  br label %216, !dbg !948

; <label>:210:                                    ; preds = %204
  %211 = call i32 @kill(i32 %194, i32 %78) #12, !dbg !949
  %212 = icmp eq i32 %211, 0, !dbg !951
  br i1 %212, label %216, label %213, !dbg !952

; <label>:213:                                    ; preds = %210
  %214 = load i32, i32* %192, align 4, !dbg !953, !tbaa !691
  %215 = call i8* @quote(i8* %189) #12, !dbg !955
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* %215) #12, !dbg !956
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !888, metadata !595) #12, !dbg !905
  br label %216, !dbg !957

; <label>:216:                                    ; preds = %213, %210, %207
  %217 = phi i32 [ 1, %207 ], [ 1, %213 ], [ %190, %210 ]
  call void @llvm.dbg.value(metadata i32 %217, i64 0, metadata !888, metadata !595) #12, !dbg !905
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %187) #12, !dbg !958
  %218 = getelementptr inbounds i8*, i8** %191, i64 1, !dbg !959
  call void @llvm.dbg.value(metadata i8** %218, i64 0, metadata !887, metadata !595) #12, !dbg !904
  %219 = load i8*, i8** %218, align 8, !dbg !960, !tbaa !602
  call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !889, metadata !595) #12, !dbg !907
  %220 = icmp eq i8* %219, null, !dbg !961
  br i1 %220, label %221, label %188, !dbg !961, !llvm.loop !909

; <label>:221:                                    ; preds = %216, %181
  %222 = phi i32 [ %182, %181 ], [ %217, %216 ], !dbg !761
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %6) #12, !dbg !962
  ret i32 %222, !dbg !962

; <label>:223:                                    ; preds = %254, %60
  %224 = phi i32 [ %256, %254 ], [ %13, %60 ]
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !645, metadata !595), !dbg !676
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !644, metadata !595), !dbg !675
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !643, metadata !595), !dbg !674
  %225 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !685
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !642, metadata !595), !dbg !686
  switch i32 %225, label %66 [
    i32 -1, label %67
    i32 48, label %228
    i32 49, label %228
    i32 50, label %228
    i32 51, label %228
    i32 52, label %228
    i32 53, label %228
    i32 54, label %228
    i32 55, label %228
    i32 56, label %228
    i32 57, label %228
    i32 65, label %231
    i32 66, label %231
    i32 67, label %231
    i32 68, label %231
    i32 69, label %231
    i32 70, label %231
    i32 71, label %231
    i32 72, label %231
    i32 73, label %231
    i32 74, label %231
    i32 75, label %231
    i32 77, label %231
    i32 78, label %231
    i32 79, label %231
    i32 80, label %231
    i32 81, label %231
    i32 82, label %231
    i32 83, label %231
    i32 84, label %231
    i32 85, label %231
    i32 86, label %231
    i32 87, label %231
    i32 88, label %231
    i32 89, label %231
    i32 90, label %231
    i32 110, label %252
    i32 115, label %252
    i32 76, label %226
    i32 116, label %226
    i32 108, label %226
    i32 -130, label %62
    i32 -131, label %63
  ], !dbg !687

; <label>:226:                                    ; preds = %223, %223, %223
  call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !644, metadata !595), !dbg !675
  %227 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !963
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %227) #12, !dbg !965
  call void @usage(i32 1) #16, !dbg !966
  unreachable, !dbg !966

; <label>:228:                                    ; preds = %223, %223, %223, %223, %223, %223, %223, %223, %223, %223
  %229 = load i32, i32* @optind, align 4, !dbg !688, !tbaa !691
  %230 = icmp eq i32 %229, 2, !dbg !693
  br i1 %230, label %231, label %18, !dbg !694

; <label>:231:                                    ; preds = %228, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223, %223
  %232 = load i8*, i8** @optarg, align 8, !dbg !698, !tbaa !602
  %233 = icmp eq i8* %232, null, !dbg !698
  %234 = load i32, i32* @optind, align 4, !tbaa !691
  br i1 %233, label %235, label %242, !dbg !700

; <label>:235:                                    ; preds = %231
  %236 = add nsw i32 %234, -1, !dbg !701
  %237 = sext i32 %236 to i64, !dbg !702
  %238 = getelementptr inbounds i8*, i8** %1, i64 %237, !dbg !702
  %239 = load i8*, i8** %238, align 8, !dbg !702, !tbaa !602
  %240 = call i64 @strlen(i8* %239) #10, !dbg !703
  %241 = getelementptr inbounds i8, i8* %239, i64 %240, !dbg !704
  store i8* %241, i8** @optarg, align 8, !dbg !705, !tbaa !602
  br label %242, !dbg !706

; <label>:242:                                    ; preds = %235, %231
  %243 = phi i8* [ %241, %235 ], [ %232, %231 ], !dbg !707
  %244 = add nsw i32 %234, -1, !dbg !709
  %245 = sext i32 %244 to i64, !dbg !710
  %246 = getelementptr inbounds i8*, i8** %1, i64 %245, !dbg !710
  %247 = load i8*, i8** %246, align 8, !dbg !710, !tbaa !602
  %248 = getelementptr inbounds i8, i8* %247, i64 2, !dbg !711
  %249 = icmp eq i8* %243, %248, !dbg !712
  br i1 %249, label %250, label %43, !dbg !713

; <label>:250:                                    ; preds = %242
  %251 = getelementptr inbounds i8, i8* %243, i64 -1, !dbg !718
  store i8* %251, i8** @optarg, align 8, !dbg !718, !tbaa !602
  br label %252, !dbg !719

; <label>:252:                                    ; preds = %250, %223, %223
  %253 = icmp sgt i32 %224, -1, !dbg !720
  br i1 %253, label %50, label %254, !dbg !722

; <label>:254:                                    ; preds = %252
  %255 = load i8*, i8** @optarg, align 8, !dbg !729, !tbaa !602
  %256 = call i32 @operand2sig(i8* %255, i8* nonnull %6) #12, !dbg !730
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !645, metadata !595), !dbg !676
  %257 = icmp slt i32 %256, 0, !dbg !731
  br i1 %257, label %58, label %223, !dbg !733, !llvm.loop !734
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
declare i8* @strsignal(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @operand2sig(i8*, i8*) local_unnamed_addr #6 !dbg !967 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !595), !dbg !982
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !972, metadata !595), !dbg !983
  %5 = bitcast i32* %3 to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12, !dbg !984
  %6 = load i8, i8* %0, align 1, !dbg !985, !tbaa !863
  %7 = sext i8 %6 to i32, !dbg !985
  %8 = add nsw i32 %7, -48, !dbg !985
  %9 = icmp ult i32 %8, 10, !dbg !985
  br i1 %9, label %10, label %36, !dbg !986

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !987
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !987
  %12 = tail call i32* @__errno_location() #17, !dbg !988
  store i32 0, i32* %12, align 4, !dbg !989, !tbaa !691
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !974, metadata !595), !dbg !990
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #12, !dbg !991
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !977, metadata !595), !dbg !992
  %14 = trunc i64 %13 to i32, !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !978, metadata !595), !dbg !994
  %15 = load i8*, i8** %4, align 8, !dbg !995, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !974, metadata !595), !dbg !990
  %16 = icmp eq i8* %15, %0, !dbg !996
  br i1 %16, label %34, label %17, !dbg !997

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !998, !tbaa !863
  %19 = icmp eq i8 %18, 0, !dbg !998
  br i1 %19, label %20, label %34, !dbg !999

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1000, !tbaa !691
  %22 = icmp eq i32 %21, 0, !dbg !1000
  br i1 %22, label %23, label %34, !dbg !1001

; <label>:23:                                     ; preds = %20
  %24 = shl i64 %13, 32, !dbg !1002
  %25 = ashr exact i64 %24, 32, !dbg !1002
  %26 = icmp eq i64 %25, %13, !dbg !1003
  br i1 %26, label %27, label %34, !dbg !1004

; <label>:27:                                     ; preds = %23
  %28 = and i32 %14, 127, !dbg !1005
  %29 = shl nuw nsw i32 %28, 24, !dbg !1005
  %30 = add nuw i32 %29, 16777216, !dbg !1005
  %31 = ashr i32 %30, 25, !dbg !1005
  %32 = icmp sgt i32 %31, 0, !dbg !1005
  %33 = select i1 %32, i32 %28, i32 %14, !dbg !1005
  br label %34, !dbg !1005

; <label>:34:                                     ; preds = %23, %20, %17, %27, %10
  %35 = phi i32 [ -1, %23 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ], [ %33, %27 ], !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !973, metadata !595), !dbg !1006
  store i32 %35, i32* %3, align 4, !dbg !1007, !tbaa !691
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1008
  br label %74, !dbg !1009

; <label>:36:                                     ; preds = %2
  %37 = tail call noalias i8* @xstrdup(i8* nonnull %0) #12, !dbg !1010
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !979, metadata !595), !dbg !1011
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !981, metadata !595), !dbg !1012
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !981, metadata !595), !dbg !1012
  %38 = load i8, i8* %37, align 1, !dbg !1013, !tbaa !863
  %39 = icmp eq i8 %38, 0, !dbg !1016
  br i1 %39, label %53, label %40, !dbg !1016

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !1017

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i8 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i8* [ %50, %49 ], [ %37, %40 ]
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !981, metadata !595), !dbg !1012
  %44 = sext i8 %42 to i32, !dbg !1017
  %45 = tail call i8* @memchr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %44, i64 27), !dbg !1019
  %46 = icmp eq i8* %45, null, !dbg !1019
  br i1 %46, label %49, label %47, !dbg !1020

; <label>:47:                                     ; preds = %41
  %48 = add i8 %42, -32, !dbg !1021
  store i8 %48, i8* %43, align 1, !dbg !1021, !tbaa !863
  br label %49, !dbg !1022

; <label>:49:                                     ; preds = %41, %47
  %50 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1023
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !981, metadata !595), !dbg !1012
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !981, metadata !595), !dbg !1012
  %51 = load i8, i8* %50, align 1, !dbg !1013, !tbaa !863
  %52 = icmp eq i8 %51, 0, !dbg !1016
  br i1 %52, label %53, label %41, !dbg !1016, !llvm.loop !1024

; <label>:53:                                     ; preds = %49, %36
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !973, metadata !595), !dbg !1006
  %54 = call i32 @str2sig(i8* %37, i32* nonnull %3) #12, !dbg !1026
  %55 = icmp eq i32 %54, 0, !dbg !1028
  br i1 %55, label %72, label %56, !dbg !1029

; <label>:56:                                     ; preds = %53
  %57 = load i8, i8* %37, align 1, !dbg !1030, !tbaa !863
  %58 = icmp eq i8 %57, 83, !dbg !1031
  br i1 %58, label %59, label %71, !dbg !1032

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1033
  %61 = load i8, i8* %60, align 1, !dbg !1033, !tbaa !863
  %62 = icmp eq i8 %61, 73, !dbg !1034
  br i1 %62, label %63, label %71, !dbg !1035

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1036
  %65 = load i8, i8* %64, align 1, !dbg !1036, !tbaa !863
  %66 = icmp eq i8 %65, 71, !dbg !1037
  br i1 %66, label %67, label %71, !dbg !1038

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !1039
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !973, metadata !595), !dbg !1006
  %69 = call i32 @str2sig(i8* %68, i32* nonnull %3) #12, !dbg !1040
  %70 = icmp eq i32 %69, 0, !dbg !1041
  br i1 %70, label %72, label %71, !dbg !1042

; <label>:71:                                     ; preds = %67, %63, %59, %56
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !973, metadata !595), !dbg !1006
  store i32 -1, i32* %3, align 4, !dbg !1043, !tbaa !691
  br label %72, !dbg !1044

; <label>:72:                                     ; preds = %71, %67, %53
  call void @free(i8* %37) #12, !dbg !1045
  %73 = load i32, i32* %3, align 4, !dbg !1046, !tbaa !691
  br label %74

; <label>:74:                                     ; preds = %72, %34
  %75 = phi i32 [ %73, %72 ], [ %35, %34 ], !dbg !1046
  call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !973, metadata !595), !dbg !1006
  %76 = icmp slt i32 %75, 0, !dbg !1048
  br i1 %76, label %80, label %77, !dbg !1049

; <label>:77:                                     ; preds = %74
  %78 = call i32 @sig2str(i32 %75, i8* %1) #12, !dbg !1050
  %79 = icmp eq i32 %78, 0, !dbg !1051
  br i1 %79, label %83, label %80, !dbg !1052

; <label>:80:                                     ; preds = %77, %74
  %81 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.21, i64 0, i64 0), i32 5) #12, !dbg !1053
  %82 = call i8* @quote(i8* %0) #12, !dbg !1055
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %81, i8* %82) #12, !dbg !1056
  br label %85, !dbg !1057

; <label>:83:                                     ; preds = %77
  %84 = load i32, i32* %3, align 4, !dbg !1058, !tbaa !691
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !973, metadata !595), !dbg !1006
  br label %85, !dbg !1059

; <label>:85:                                     ; preds = %83, %80
  %86 = phi i32 [ -1, %80 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1060
  ret i32 %86, !dbg !1060
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #10

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1061 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1063, metadata !595), !dbg !1064
  store i8* %0, i8** @file_name, align 8, !dbg !1065, !tbaa !602
  ret void, !dbg !1066
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1067 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1071, metadata !595), !dbg !1072
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1073, !tbaa !1074
  ret void, !dbg !1076
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1077 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1082, !tbaa !602
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1083
  %3 = icmp eq i32 %2, 0, !dbg !1084
  br i1 %3, label %21, label %4, !dbg !1085

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1086, !tbaa !1074, !range !1087
  %6 = icmp eq i8 %5, 0, !dbg !1086
  %7 = tail call i32* @__errno_location() #17, !dbg !1088
  br i1 %6, label %11, label %8, !dbg !1090

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1091, !tbaa !691
  %10 = icmp eq i32 %9, 32, !dbg !1092
  br i1 %10, label %21, label %11, !dbg !1093

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1094
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1079, metadata !595), !dbg !1095
  %13 = load i8*, i8** @file_name, align 8, !dbg !1096, !tbaa !602
  %14 = icmp eq i8* %13, null, !dbg !1096
  %15 = load i32, i32* %7, align 4, !tbaa !691
  br i1 %14, label %18, label %16, !dbg !1097

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1098
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.28, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1099
  br label %19, !dbg !1099

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.29, i64 0, i64 0), i8* %12) #12, !dbg !1100
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1101, !tbaa !691
  tail call void @_exit(i32 %20) #15, !dbg !1102
  unreachable, !dbg !1102

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1103, !tbaa !602
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1105
  %24 = icmp eq i32 %23, 0, !dbg !1106
  br i1 %24, label %27, label %25, !dbg !1107

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1108, !tbaa !691
  tail call void @_exit(i32 %26) #15, !dbg !1109
  unreachable, !dbg !1109

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1110
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1111 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1113, metadata !595), !dbg !1116
  %2 = icmp eq i8* %0, null, !dbg !1117
  br i1 %2, label %3, label %6, !dbg !1119

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1120, !tbaa !602
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1122
  tail call void @abort() #15, !dbg !1123
  unreachable, !dbg !1123

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #10, !dbg !1124
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1114, metadata !595), !dbg !1125
  %8 = icmp eq i8* %7, null, !dbg !1126
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1127
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1128
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1115, metadata !595), !dbg !1129
  %11 = ptrtoint i8* %10 to i64, !dbg !1130
  %12 = ptrtoint i8* %0 to i64, !dbg !1130
  %13 = sub i64 %11, %12, !dbg !1130
  %14 = icmp sgt i64 %13, 6, !dbg !1132
  br i1 %14, label %15, label %24, !dbg !1133

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1134
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #10, !dbg !1135
  %18 = icmp eq i32 %17, 0, !dbg !1136
  br i1 %18, label %19, label %24, !dbg !1137

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1113, metadata !595), !dbg !1116
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #10, !dbg !1138
  %21 = icmp eq i32 %20, 0, !dbg !1141
  br i1 %21, label %22, label %24, !dbg !1142

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1113, metadata !595), !dbg !1116
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1145, !tbaa !602
  br label %24, !dbg !1146

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1113, metadata !595), !dbg !1116
  store i8* %25, i8** @program_name, align 8, !dbg !1147, !tbaa !602
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1148, !tbaa !602
  ret void, !dbg !1149
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1150 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1155, metadata !595), !dbg !1158
  %2 = tail call i32* @__errno_location() #17, !dbg !1159
  %3 = load i32, i32* %2, align 4, !dbg !1159, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1156, metadata !595), !dbg !1160
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1161
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1161
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1161
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1162
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1157, metadata !595), !dbg !1163
  store i32 %3, i32* %2, align 4, !dbg !1164, !tbaa !691
  ret %struct.quoting_options* %8, !dbg !1165
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1166 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1172, metadata !595), !dbg !1173
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1174
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1174
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1175
  %5 = load i32, i32* %4, align 8, !dbg !1175, !tbaa !1176
  ret i32 %5, !dbg !1178
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1179 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1183, metadata !595), !dbg !1185
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1184, metadata !595), !dbg !1186
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1187
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1187
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1188
  store i32 %1, i32* %5, align 8, !dbg !1189, !tbaa !1176
  ret void, !dbg !1190
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1191 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1195, metadata !595), !dbg !1203
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1196, metadata !595), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1197, metadata !595), !dbg !1205
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1198, metadata !595), !dbg !1206
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1207
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1207
  %6 = lshr i8 %1, 5, !dbg !1208
  %7 = zext i8 %6 to i64, !dbg !1208
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1209
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1199, metadata !595), !dbg !1210
  %9 = and i8 %1, 31, !dbg !1211
  %10 = zext i8 %9 to i32, !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1201, metadata !595), !dbg !1213
  %11 = load i32, i32* %8, align 4, !dbg !1214, !tbaa !691
  %12 = lshr i32 %11, %10, !dbg !1215
  %13 = and i32 %12, 1, !dbg !1216
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1202, metadata !595), !dbg !1217
  %14 = and i32 %2, 1, !dbg !1218
  %15 = xor i32 %13, %14, !dbg !1219
  %16 = shl i32 %15, %10, !dbg !1220
  %17 = xor i32 %16, %11, !dbg !1221
  store i32 %17, i32* %8, align 4, !dbg !1221, !tbaa !691
  ret i32 %13, !dbg !1222
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1223 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1227, metadata !595), !dbg !1230
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1228, metadata !595), !dbg !1231
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1232
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1227, metadata !595), !dbg !1230
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1227, metadata !595), !dbg !1230
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1235
  %6 = load i32, i32* %5, align 4, !dbg !1235, !tbaa !1236
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1229, metadata !595), !dbg !1237
  store i32 %1, i32* %5, align 4, !dbg !1238, !tbaa !1236
  ret i32 %6, !dbg !1239
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1240 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1244, metadata !595), !dbg !1247
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1245, metadata !595), !dbg !1248
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1246, metadata !595), !dbg !1249
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1244, metadata !595), !dbg !1247
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1244, metadata !595), !dbg !1247
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1253
  store i32 10, i32* %6, align 8, !dbg !1254, !tbaa !1176
  %7 = icmp ne i8* %1, null, !dbg !1255
  %8 = icmp ne i8* %2, null, !dbg !1257
  %9 = and i1 %7, %8, !dbg !1258
  br i1 %9, label %11, label %10, !dbg !1258

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1259
  unreachable, !dbg !1259

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1260
  store i8* %1, i8** %12, align 8, !dbg !1261, !tbaa !1262
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1263
  store i8* %2, i8** %13, align 8, !dbg !1264, !tbaa !1265
  ret void, !dbg !1266
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1267 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1271, metadata !595), !dbg !1279
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1272, metadata !595), !dbg !1280
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1273, metadata !595), !dbg !1281
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1274, metadata !595), !dbg !1282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1275, metadata !595), !dbg !1283
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1284
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1276, metadata !595), !dbg !1285
  %8 = tail call i32* @__errno_location() #17, !dbg !1286
  %9 = load i32, i32* %8, align 4, !dbg !1286, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1277, metadata !595), !dbg !1287
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1288
  %11 = load i32, i32* %10, align 8, !dbg !1288, !tbaa !1176
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1289
  %13 = load i32, i32* %12, align 4, !dbg !1289, !tbaa !1236
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1290
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1291
  %16 = load i8*, i8** %15, align 8, !dbg !1291, !tbaa !1262
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1292
  %18 = load i8*, i8** %17, align 8, !dbg !1292, !tbaa !1265
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1293
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1278, metadata !595), !dbg !1294
  store i32 %9, i32* %8, align 4, !dbg !1295, !tbaa !691
  ret i64 %19, !dbg !1296
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1297 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1303, metadata !595), !dbg !1367
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1304, metadata !595), !dbg !1368
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1305, metadata !595), !dbg !1369
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1306, metadata !595), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1307, metadata !595), !dbg !1371
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1308, metadata !595), !dbg !1372
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1309, metadata !595), !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1310, metadata !595), !dbg !1374
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1311, metadata !595), !dbg !1375
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1313, metadata !595), !dbg !1376
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1314, metadata !595), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1315, metadata !595), !dbg !1378
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1316, metadata !595), !dbg !1379
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1317, metadata !595), !dbg !1380
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1381
  %14 = icmp eq i64 %13, 1, !dbg !1382
  %15 = lshr i32 %5, 1, !dbg !1383
  %16 = trunc i32 %15 to i8, !dbg !1383
  %17 = and i8 %16, 1, !dbg !1383
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1319, metadata !595), !dbg !1383
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1320, metadata !595), !dbg !1384
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1321, metadata !595), !dbg !1385
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1322, metadata !595), !dbg !1386
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1387

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1322, metadata !595), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1317, metadata !595), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1316, metadata !595), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1311, metadata !595), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1310, metadata !595), !dbg !1374
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1307, metadata !595), !dbg !1371
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
  ], !dbg !1388

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1307, metadata !595), !dbg !1371
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1307, metadata !595), !dbg !1371
  br label %94, !dbg !1389

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1307, metadata !595), !dbg !1371
  %43 = and i8 %36, 1, !dbg !1391
  %44 = icmp eq i8 %43, 0, !dbg !1391
  br i1 %44, label %45, label %94, !dbg !1389

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1393
  br i1 %46, label %94, label %47, !dbg !1396

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1393, !tbaa !863
  br label %94, !dbg !1393

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1310, metadata !595), !dbg !1374
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1311, metadata !595), !dbg !1375
  br label %51, !dbg !1402

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1311, metadata !595), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1310, metadata !595), !dbg !1374
  %54 = and i8 %36, 1, !dbg !1403
  %55 = icmp eq i8 %54, 0, !dbg !1403
  br i1 %55, label %56, label %72, !dbg !1405

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1313, metadata !595), !dbg !1376
  %57 = load i8, i8* %52, align 1, !dbg !1406, !tbaa !863
  %58 = icmp eq i8 %57, 0, !dbg !1409
  br i1 %58, label %72, label %59, !dbg !1409

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1410

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1315, metadata !595), !dbg !1378
  %64 = icmp ult i64 %63, %40, !dbg !1410
  br i1 %64, label %65, label %67, !dbg !1413

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1410
  store i8 %61, i8* %66, align 1, !dbg !1410, !tbaa !863
  br label %67, !dbg !1410

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1313, metadata !595), !dbg !1376
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1313, metadata !595), !dbg !1376
  %70 = load i8, i8* %69, align 1, !dbg !1406, !tbaa !863
  %71 = icmp eq i8 %70, 0, !dbg !1409
  br i1 %71, label %72, label %60, !dbg !1409, !llvm.loop !1415

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1317, metadata !595), !dbg !1380
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1315, metadata !595), !dbg !1378
  %74 = call i64 @strlen(i8* %53) #10, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1316, metadata !595), !dbg !1379
  br label %94, !dbg !1418

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1317, metadata !595), !dbg !1380
  br label %76, !dbg !1419

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1317, metadata !595), !dbg !1380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1319, metadata !595), !dbg !1383
  br label %78, !dbg !1420

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1317, metadata !595), !dbg !1380
  %81 = and i8 %80, 1, !dbg !1421
  %82 = icmp eq i8 %81, 0, !dbg !1421
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1317, metadata !595), !dbg !1380
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1423
  br label %84, !dbg !1423

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1317, metadata !595), !dbg !1380
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1307, metadata !595), !dbg !1371
  %87 = and i8 %86, 1, !dbg !1424
  %88 = icmp eq i8 %87, 0, !dbg !1424
  br i1 %88, label %89, label %94, !dbg !1426

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1427
  br i1 %90, label %94, label %91, !dbg !1430

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1427, !tbaa !863
  br label %94, !dbg !1427

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1319, metadata !595), !dbg !1383
  br label %94, !dbg !1431

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1432
  unreachable, !dbg !1432

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1319, metadata !595), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1317, metadata !595), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1316, metadata !595), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1311, metadata !595), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1310, metadata !595), !dbg !1374
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1307, metadata !595), !dbg !1371
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1312, metadata !595), !dbg !1433
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
  br label %122, !dbg !1434

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1322, metadata !595), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1312, metadata !595), !dbg !1433
  %131 = icmp eq i64 %126, -1, !dbg !1435
  br i1 %131, label %134, label %132, !dbg !1436

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1437
  br i1 %133, label %590, label %138, !dbg !1438

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1439
  %136 = load i8, i8* %135, align 1, !dbg !1439, !tbaa !863
  %137 = icmp eq i8 %136, 0, !dbg !1440
  br i1 %137, label %590, label %138, !dbg !1438

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1328, metadata !595), !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1329, metadata !595), !dbg !1442
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1330, metadata !595), !dbg !1443
  br i1 %108, label %139, label %154, !dbg !1444

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1446
  %141 = and i1 %109, %131, !dbg !1447
  br i1 %141, label %142, label %144, !dbg !1447

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #10, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1306, metadata !595), !dbg !1370
  br label %144, !dbg !1449

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1306, metadata !595), !dbg !1370
  %146 = icmp ugt i64 %140, %145, !dbg !1450
  br i1 %146, label %154, label %147, !dbg !1451

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1452
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #10, !dbg !1453
  %150 = icmp ne i32 %149, 0, !dbg !1454
  %151 = or i1 %150, %111, !dbg !1455
  %152 = xor i1 %150, true, !dbg !1455
  %153 = zext i1 %152 to i8, !dbg !1455
  br i1 %151, label %154, label %635, !dbg !1455

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1328, metadata !595), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1306, metadata !595), !dbg !1370
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1456
  %158 = load i8, i8* %157, align 1, !dbg !1456, !tbaa !863
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1323, metadata !595), !dbg !1457
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
  ], !dbg !1458

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1459

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1460

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1329, metadata !595), !dbg !1442
  %162 = and i8 %127, 1, !dbg !1464
  %163 = icmp eq i8 %162, 0, !dbg !1464
  %164 = and i1 %113, %163, !dbg !1464
  br i1 %164, label %165, label %181, !dbg !1464

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1466
  br i1 %166, label %167, label %169, !dbg !1470

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1466
  store i8 39, i8* %168, align 1, !dbg !1466, !tbaa !863
  br label %169, !dbg !1466

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1313, metadata !595), !dbg !1376
  %171 = icmp ult i64 %170, %130, !dbg !1471
  br i1 %171, label %172, label %174, !dbg !1474

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1471
  store i8 36, i8* %173, align 1, !dbg !1471, !tbaa !863
  br label %174, !dbg !1471

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1313, metadata !595), !dbg !1376
  %176 = icmp ult i64 %175, %130, !dbg !1475
  br i1 %176, label %177, label %179, !dbg !1478

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1475
  store i8 39, i8* %178, align 1, !dbg !1475, !tbaa !863
  br label %179, !dbg !1475

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1320, metadata !595), !dbg !1384
  br label %181, !dbg !1479

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1313, metadata !595), !dbg !1376
  %184 = icmp ult i64 %182, %130, !dbg !1480
  br i1 %184, label %185, label %187, !dbg !1483

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1480
  store i8 92, i8* %186, align 1, !dbg !1480, !tbaa !863
  br label %187, !dbg !1480

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1313, metadata !595), !dbg !1376
  br i1 %105, label %189, label %470, !dbg !1484

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1486
  %191 = icmp ult i64 %190, %155, !dbg !1487
  br i1 %191, label %192, label %470, !dbg !1488

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1489
  %194 = load i8, i8* %193, align 1, !dbg !1489, !tbaa !863
  %195 = add i8 %194, -48, !dbg !1490
  %196 = icmp ult i8 %195, 10, !dbg !1490
  br i1 %196, label %197, label %470, !dbg !1490

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1491
  br i1 %198, label %199, label %201, !dbg !1495

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1491
  store i8 48, i8* %200, align 1, !dbg !1491, !tbaa !863
  br label %201, !dbg !1491

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1313, metadata !595), !dbg !1376
  %203 = icmp ult i64 %202, %130, !dbg !1496
  br i1 %203, label %204, label %206, !dbg !1499

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1496
  store i8 48, i8* %205, align 1, !dbg !1496, !tbaa !863
  br label %206, !dbg !1496

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1313, metadata !595), !dbg !1376
  br label %470, !dbg !1500

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1501

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1502

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1503

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1505

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1507
  %214 = icmp ult i64 %213, %155, !dbg !1508
  br i1 %214, label %215, label %470, !dbg !1509

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1510
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1511
  %218 = load i8, i8* %217, align 1, !dbg !1511, !tbaa !863
  %219 = icmp eq i8 %218, 63, !dbg !1512
  br i1 %219, label %220, label %470, !dbg !1513

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1514
  %222 = load i8, i8* %221, align 1, !dbg !1514, !tbaa !863
  %223 = sext i8 %222 to i32, !dbg !1514
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
  ], !dbg !1515

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1516

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1312, metadata !595), !dbg !1433
  %226 = icmp ult i64 %124, %130, !dbg !1518
  br i1 %226, label %227, label %229, !dbg !1521

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1518
  store i8 63, i8* %228, align 1, !dbg !1518, !tbaa !863
  br label %229, !dbg !1518

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1313, metadata !595), !dbg !1376
  %231 = icmp ult i64 %230, %130, !dbg !1522
  br i1 %231, label %232, label %234, !dbg !1525

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1522
  store i8 34, i8* %233, align 1, !dbg !1522, !tbaa !863
  br label %234, !dbg !1522

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1313, metadata !595), !dbg !1376
  %236 = icmp ult i64 %235, %130, !dbg !1526
  br i1 %236, label %237, label %239, !dbg !1529

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1526
  store i8 34, i8* %238, align 1, !dbg !1526, !tbaa !863
  br label %239, !dbg !1526

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1313, metadata !595), !dbg !1376
  %241 = icmp ult i64 %240, %130, !dbg !1530
  br i1 %241, label %242, label %244, !dbg !1533

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1530
  store i8 63, i8* %243, align 1, !dbg !1530, !tbaa !863
  br label %244, !dbg !1530

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1313, metadata !595), !dbg !1376
  br label %470, !dbg !1534

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1327, metadata !595), !dbg !1535
  br label %256, !dbg !1536

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1327, metadata !595), !dbg !1535
  br label %256, !dbg !1537

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1327, metadata !595), !dbg !1535
  br label %254, !dbg !1538

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1327, metadata !595), !dbg !1535
  br label %254, !dbg !1539

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1327, metadata !595), !dbg !1535
  br label %256, !dbg !1540

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1327, metadata !595), !dbg !1535
  br i1 %113, label %252, label %253, !dbg !1541

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1542

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1545

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1327, metadata !595), !dbg !1535
  br i1 %117, label %256, label %635, !dbg !1547

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1327, metadata !595), !dbg !1535
  br i1 %104, label %497, label %470, !dbg !1549

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1550
  br i1 %259, label %260, label %265, !dbg !1552

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1553, !tbaa !863
  %262 = icmp ne i8 %261, 0, !dbg !1554
  %263 = icmp ne i64 %123, 0, !dbg !1555
  %264 = or i1 %263, %262, !dbg !1557
  br i1 %264, label %470, label %271, !dbg !1557

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1558
  %267 = icmp ne i64 %123, 0, !dbg !1555
  %268 = or i1 %267, %266, !dbg !1552
  br i1 %268, label %470, label %271, !dbg !1552

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1555
  br i1 %270, label %271, label %470, !dbg !1559

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1330, metadata !595), !dbg !1443
  br label %272, !dbg !1560

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1330, metadata !595), !dbg !1443
  br i1 %117, label %470, label %635, !dbg !1561

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1330, metadata !595), !dbg !1443
  br i1 %113, label %275, label %470, !dbg !1563

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1564

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1567
  %278 = icmp ne i64 %125, 0, !dbg !1569
  %279 = or i1 %278, %277, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1304, metadata !595), !dbg !1368
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1570
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1314, metadata !595), !dbg !1377
  %282 = icmp ult i64 %124, %281, !dbg !1571
  br i1 %282, label %283, label %285, !dbg !1574

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1571
  store i8 39, i8* %284, align 1, !dbg !1571, !tbaa !863
  br label %285, !dbg !1571

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1313, metadata !595), !dbg !1376
  %287 = icmp ult i64 %286, %281, !dbg !1575
  br i1 %287, label %288, label %290, !dbg !1578

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1575
  store i8 92, i8* %289, align 1, !dbg !1575, !tbaa !863
  br label %290, !dbg !1575

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1313, metadata !595), !dbg !1376
  %292 = icmp ult i64 %291, %281, !dbg !1579
  br i1 %292, label %293, label %295, !dbg !1582

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1579
  store i8 39, i8* %294, align 1, !dbg !1579, !tbaa !863
  br label %295, !dbg !1579

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1320, metadata !595), !dbg !1384
  br label %470, !dbg !1583

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1584

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1331, metadata !595), !dbg !1585
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1586
  %300 = load i16*, i16** %299, align 8, !dbg !1586, !tbaa !602
  %301 = zext i8 %158 to i64, !dbg !1586
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1586
  %303 = load i16, i16* %302, align 2, !dbg !1586, !tbaa !1588
  %304 = lshr i16 %303, 14, !dbg !1590
  %305 = trunc i16 %304 to i8, !dbg !1590
  %306 = and i8 %305, 1, !dbg !1590
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1334, metadata !595), !dbg !1591
  br label %362, !dbg !1592

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1593
  store i64 0, i64* %10, align 8, !dbg !1594
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1334, metadata !595), !dbg !1591
  %308 = icmp eq i64 %155, -1, !dbg !1595
  br i1 %308, label %309, label %311, !dbg !1597

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #10, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1306, metadata !595), !dbg !1370
  br label %311, !dbg !1599

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1306, metadata !595), !dbg !1370
  br label %313, !dbg !1600, !llvm.loop !1601

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1334, metadata !595), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1603
  %316 = add i64 %314, %123, !dbg !1604
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1605
  %318 = sub i64 %312, %316, !dbg !1606
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1335, metadata !595), !dbg !1607
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1353, metadata !595), !dbg !1608
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1356, metadata !595), !dbg !1610
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1611

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1334, metadata !595), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1331, metadata !595), !dbg !1585
  %321 = icmp ugt i64 %312, %316, !dbg !1612
  br i1 %321, label %322, label %347, !dbg !1614

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1615

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1331, metadata !595), !dbg !1585
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1615
  %327 = load i8, i8* %326, align 1, !dbg !1615, !tbaa !863
  %328 = icmp eq i8 %327, 0, !dbg !1614
  br i1 %328, label %347, label %329, !dbg !1616

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1331, metadata !595), !dbg !1585
  %331 = add i64 %330, %123, !dbg !1618
  %332 = icmp ult i64 %331, %312, !dbg !1612
  br i1 %332, label %323, label %347, !dbg !1614, !llvm.loop !1619

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1620
  %335 = and i1 %115, %334, !dbg !1623
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1357, metadata !595), !dbg !1624
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1357, metadata !595), !dbg !1624
  br i1 %335, label %336, label %350, !dbg !1623

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1625

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1357, metadata !595), !dbg !1624
  %339 = add i64 %338, %316, !dbg !1625
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1626
  %341 = load i8, i8* %340, align 1, !dbg !1626, !tbaa !863
  %342 = sext i8 %341 to i32, !dbg !1626
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1627

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1357, metadata !595), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1357, metadata !595), !dbg !1624
  %345 = icmp ult i64 %344, %319, !dbg !1620
  br i1 %345, label %337, label %350, !dbg !1629, !llvm.loop !1630

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1632

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1334, metadata !595), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1632
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1633, !tbaa !691
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1353, metadata !595), !dbg !1608
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !1635
  %353 = icmp eq i32 %352, 0, !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1334, metadata !595), !dbg !1591
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1636
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1334, metadata !595), !dbg !1591
  %355 = add i64 %319, %314, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1334, metadata !595), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1335, metadata !595), !dbg !1607
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #10, !dbg !1638
  %357 = icmp eq i32 %356, 0, !dbg !1639
  br i1 %357, label %313, label %358, !dbg !1640, !llvm.loop !1601

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1641
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1334, metadata !595), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1632
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1641
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1334, metadata !595), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1331, metadata !595), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1306, metadata !595), !dbg !1370
  %366 = and i8 %365, 1, !dbg !1642
  %367 = icmp ne i8 %366, 0, !dbg !1642
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1330, metadata !595), !dbg !1443
  %368 = icmp ult i64 %364, 2, !dbg !1643
  %369 = or i1 %367, %112, !dbg !1644
  %370 = and i1 %368, %369, !dbg !1645
  br i1 %370, label %470, label %371, !dbg !1645

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1364, metadata !595), !dbg !1647
  br label %373, !dbg !1648

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1329, metadata !595), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1328, metadata !595), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1312, metadata !595), !dbg !1433
  br i1 %369, label %426, label %380, !dbg !1649

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1654

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1329, metadata !595), !dbg !1442
  %382 = and i8 %376, 1, !dbg !1657
  %383 = icmp eq i8 %382, 0, !dbg !1657
  %384 = and i1 %113, %383, !dbg !1657
  br i1 %384, label %385, label %401, !dbg !1657

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1659
  br i1 %386, label %387, label %389, !dbg !1663

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1659
  store i8 39, i8* %388, align 1, !dbg !1659, !tbaa !863
  br label %389, !dbg !1659

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1313, metadata !595), !dbg !1376
  %391 = icmp ult i64 %390, %130, !dbg !1664
  br i1 %391, label %392, label %394, !dbg !1667

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1664
  store i8 36, i8* %393, align 1, !dbg !1664, !tbaa !863
  br label %394, !dbg !1664

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1313, metadata !595), !dbg !1376
  %396 = icmp ult i64 %395, %130, !dbg !1668
  br i1 %396, label %397, label %399, !dbg !1671

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1668
  store i8 39, i8* %398, align 1, !dbg !1668, !tbaa !863
  br label %399, !dbg !1668

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1320, metadata !595), !dbg !1384
  br label %401, !dbg !1672

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1313, metadata !595), !dbg !1376
  %404 = icmp ult i64 %402, %130, !dbg !1673
  br i1 %404, label %405, label %407, !dbg !1676

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1673
  store i8 92, i8* %406, align 1, !dbg !1673, !tbaa !863
  br label %407, !dbg !1673

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1313, metadata !595), !dbg !1376
  %409 = icmp ult i64 %408, %130, !dbg !1677
  br i1 %409, label %410, label %414, !dbg !1680

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1677
  %412 = or i8 %411, 48, !dbg !1677
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1677
  store i8 %412, i8* %413, align 1, !dbg !1677, !tbaa !863
  br label %414, !dbg !1677

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1313, metadata !595), !dbg !1376
  %416 = icmp ult i64 %415, %130, !dbg !1681
  br i1 %416, label %417, label %422, !dbg !1684

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1681
  %419 = and i8 %418, 7, !dbg !1681
  %420 = or i8 %419, 48, !dbg !1681
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1681
  store i8 %420, i8* %421, align 1, !dbg !1681, !tbaa !863
  br label %422, !dbg !1681

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1313, metadata !595), !dbg !1376
  %424 = and i8 %377, 7, !dbg !1685
  %425 = or i8 %424, 48, !dbg !1686
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1323, metadata !595), !dbg !1457
  br label %435, !dbg !1687

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1688
  %428 = icmp eq i8 %427, 0, !dbg !1688
  br i1 %428, label %435, label %429, !dbg !1690

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1691
  br i1 %430, label %431, label %433, !dbg !1695

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1691
  store i8 92, i8* %432, align 1, !dbg !1691, !tbaa !863
  br label %433, !dbg !1691

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1328, metadata !595), !dbg !1441
  br label %435, !dbg !1696

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1329, metadata !595), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1328, metadata !595), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1313, metadata !595), !dbg !1376
  %441 = add i64 %374, 1, !dbg !1697
  %442 = icmp ugt i64 %372, %441, !dbg !1699
  br i1 %442, label %443, label %535, !dbg !1700

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1701
  %445 = icmp ne i8 %444, 0, !dbg !1701
  %446 = and i8 %440, 1, !dbg !1701
  %447 = icmp eq i8 %446, 0, !dbg !1701
  %448 = and i1 %445, %447, !dbg !1701
  br i1 %448, label %449, label %460, !dbg !1701

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1704
  br i1 %450, label %451, label %453, !dbg !1708

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1704
  store i8 39, i8* %452, align 1, !dbg !1704, !tbaa !863
  br label %453, !dbg !1704

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1313, metadata !595), !dbg !1376
  %455 = icmp ult i64 %454, %130, !dbg !1709
  br i1 %455, label %456, label %458, !dbg !1712

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1709
  store i8 39, i8* %457, align 1, !dbg !1709, !tbaa !863
  br label %458, !dbg !1709

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1320, metadata !595), !dbg !1384
  br label %460, !dbg !1713

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1313, metadata !595), !dbg !1376
  %463 = icmp ult i64 %461, %130, !dbg !1714
  br i1 %463, label %464, label %466, !dbg !1717

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1714
  store i8 %438, i8* %465, align 1, !dbg !1714, !tbaa !863
  br label %466, !dbg !1714

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1312, metadata !595), !dbg !1433
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1718
  %469 = load i8, i8* %468, align 1, !dbg !1718, !tbaa !863
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1323, metadata !595), !dbg !1457
  br label %373, !dbg !1719, !llvm.loop !1720

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1330, metadata !595), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1329, metadata !595), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1328, metadata !595), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1312, metadata !595), !dbg !1433
  br i1 %106, label %482, label %481, !dbg !1723

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1725

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1726

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1727
  %485 = zext i8 %484 to i64, !dbg !1727
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1728
  %487 = load i32, i32* %486, align 4, !dbg !1728, !tbaa !691
  %488 = and i8 %477, 31, !dbg !1729
  %489 = zext i8 %488 to i32, !dbg !1730
  %490 = shl i32 1, %489, !dbg !1731
  %491 = and i32 %487, %490, !dbg !1731
  %492 = icmp eq i32 %491, 0, !dbg !1731
  %493 = icmp eq i8 %156, 0, !dbg !1732
  %494 = and i1 %493, %492, !dbg !1733
  br i1 %494, label %535, label %497, !dbg !1733

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1732
  br i1 %496, label %535, label %497, !dbg !1734

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1330, metadata !595), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1312, metadata !595), !dbg !1433
  br i1 %111, label %507, label %635, !dbg !1735

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1329, metadata !595), !dbg !1442
  %508 = and i8 %502, 1, !dbg !1737
  %509 = icmp eq i8 %508, 0, !dbg !1737
  %510 = and i1 %113, %509, !dbg !1737
  br i1 %510, label %511, label %527, !dbg !1737

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1739
  br i1 %512, label %513, label %515, !dbg !1743

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1739
  store i8 39, i8* %514, align 1, !dbg !1739, !tbaa !863
  br label %515, !dbg !1739

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1313, metadata !595), !dbg !1376
  %517 = icmp ult i64 %516, %506, !dbg !1744
  br i1 %517, label %518, label %520, !dbg !1747

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1744
  store i8 36, i8* %519, align 1, !dbg !1744, !tbaa !863
  br label %520, !dbg !1744

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1313, metadata !595), !dbg !1376
  %522 = icmp ult i64 %521, %506, !dbg !1748
  br i1 %522, label %523, label %525, !dbg !1751

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1748
  store i8 39, i8* %524, align 1, !dbg !1748, !tbaa !863
  br label %525, !dbg !1748

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1320, metadata !595), !dbg !1384
  br label %527, !dbg !1752

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1313, metadata !595), !dbg !1376
  %530 = icmp ult i64 %528, %506, !dbg !1753
  br i1 %530, label %531, label %533, !dbg !1756

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1753
  store i8 92, i8* %532, align 1, !dbg !1753, !tbaa !863
  br label %533, !dbg !1753

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1330, metadata !595), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1329, metadata !595), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1312, metadata !595), !dbg !1433
  br label %562, !dbg !1757

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1330, metadata !595), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1329, metadata !595), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1323, metadata !595), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1312, metadata !595), !dbg !1433
  %546 = and i8 %540, 1, !dbg !1757
  %547 = icmp ne i8 %546, 0, !dbg !1757
  %548 = and i8 %543, 1, !dbg !1757
  %549 = icmp eq i8 %548, 0, !dbg !1757
  %550 = and i1 %547, %549, !dbg !1757
  br i1 %550, label %551, label %562, !dbg !1757

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1760
  br i1 %552, label %553, label %555, !dbg !1764

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1760
  store i8 39, i8* %554, align 1, !dbg !1760, !tbaa !863
  br label %555, !dbg !1760

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1313, metadata !595), !dbg !1376
  %557 = icmp ult i64 %556, %545, !dbg !1765
  br i1 %557, label %558, label %560, !dbg !1768

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1765
  store i8 39, i8* %559, align 1, !dbg !1765, !tbaa !863
  br label %560, !dbg !1765

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1320, metadata !595), !dbg !1384
  br label %562, !dbg !1769

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1313, metadata !595), !dbg !1376
  %572 = icmp ult i64 %570, %563, !dbg !1770
  br i1 %572, label %573, label %575, !dbg !1773

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1770
  store i8 %565, i8* %574, align 1, !dbg !1770, !tbaa !863
  br label %575, !dbg !1770

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1313, metadata !595), !dbg !1376
  %577 = and i8 %564, 1, !dbg !1774
  %578 = icmp eq i8 %577, 0, !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1322, metadata !595), !dbg !1386
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1776
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1322, metadata !595), !dbg !1386
  br label %580, !dbg !1777

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1322, metadata !595), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1321, metadata !595), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1320, metadata !595), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1306, metadata !595), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1314, metadata !595), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1312, metadata !595), !dbg !1433
  %589 = add i64 %581, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1312, metadata !595), !dbg !1433
  br label %122, !dbg !1779, !llvm.loop !1780

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1782
  %593 = and i1 %113, %592, !dbg !1784
  %594 = xor i1 %593, true, !dbg !1784
  %595 = or i1 %111, %594, !dbg !1784
  br i1 %595, label %596, label %635, !dbg !1784

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1785
  %598 = xor i1 %597, true, !dbg !1785
  %599 = and i8 %128, 1, !dbg !1787
  %600 = icmp eq i8 %599, 0, !dbg !1787
  %601 = or i1 %600, %598, !dbg !1785
  br i1 %601, label %611, label %602, !dbg !1785

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1788
  %604 = icmp eq i8 %603, 0, !dbg !1788
  br i1 %604, label %607, label %605, !dbg !1791

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1792
  br label %645, !dbg !1793

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1794
  %609 = icmp ne i64 %125, 0, !dbg !1796
  %610 = and i1 %609, %608, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1313, metadata !595), !dbg !1376
  br i1 %610, label %27, label %611, !dbg !1797

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1798
  %613 = and i1 %612, %111, !dbg !1800
  br i1 %613, label %614, label %630, !dbg !1800

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1313, metadata !595), !dbg !1376
  %615 = load i8, i8* %99, align 1, !dbg !1801, !tbaa !863
  %616 = icmp eq i8 %615, 0, !dbg !1804
  br i1 %616, label %630, label %617, !dbg !1804

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1805

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1313, metadata !595), !dbg !1376
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1315, metadata !595), !dbg !1378
  %622 = icmp ult i64 %621, %130, !dbg !1805
  br i1 %622, label %623, label %625, !dbg !1808

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1805
  store i8 %619, i8* %624, align 1, !dbg !1805, !tbaa !863
  br label %625, !dbg !1805

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1313, metadata !595), !dbg !1376
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1315, metadata !595), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1313, metadata !595), !dbg !1376
  %628 = load i8, i8* %627, align 1, !dbg !1801, !tbaa !863
  %629 = icmp eq i8 %628, 0, !dbg !1804
  br i1 %629, label %630, label %618, !dbg !1804, !llvm.loop !1810

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1313, metadata !595), !dbg !1376
  %632 = icmp ult i64 %631, %130, !dbg !1812
  br i1 %632, label %633, label %645, !dbg !1814

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1815
  store i8 0, i8* %634, align 1, !dbg !1816, !tbaa !863
  br label %645, !dbg !1815

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1304, metadata !595), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1306, metadata !595), !dbg !1370
  %639 = icmp ne i32 %636, 2, !dbg !1817
  %640 = icmp eq i8 %103, 0, !dbg !1819
  %641 = or i1 %639, %640, !dbg !1820
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1307, metadata !595), !dbg !1371
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1307, metadata !595), !dbg !1371
  %643 = and i32 %5, -3, !dbg !1821
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1822
  br label %645, !dbg !1823

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1824
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1825 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1829, metadata !595), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1830, metadata !595), !dbg !1834
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !1835
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1831, metadata !595), !dbg !1836
  %4 = icmp eq i8* %3, %0, !dbg !1837
  br i1 %4, label %5, label %75, !dbg !1839

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !1840
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1832, metadata !595), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1842, metadata !595), !dbg !1858
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1856, metadata !595), !dbg !1861
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1857, metadata !595), !dbg !1862
  %7 = load i8, i8* %6, align 1, !dbg !1863, !tbaa !863
  %8 = sext i8 %7 to i32, !dbg !1863
  %9 = and i32 %8, -33, !dbg !1863
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1863

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1865, metadata !595), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1877, metadata !595), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1878, metadata !595), !dbg !1884
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1885
  %12 = load i8, i8* %11, align 1, !dbg !1885, !tbaa !863
  %13 = sext i8 %12 to i32, !dbg !1885
  %14 = and i32 %13, -33, !dbg !1885
  %15 = icmp eq i32 %14, 84, !dbg !1885
  br i1 %15, label %16, label %72, !dbg !1885

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1887, metadata !595), !dbg !1900
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !595), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1899, metadata !595), !dbg !1905
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1906
  %18 = load i8, i8* %17, align 1, !dbg !1906, !tbaa !863
  %19 = sext i8 %18 to i32, !dbg !1906
  %20 = and i32 %19, -33, !dbg !1906
  %21 = icmp eq i32 %20, 70, !dbg !1906
  br i1 %21, label %22, label %72, !dbg !1906

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1908, metadata !595), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1918, metadata !595), !dbg !1924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1919, metadata !595), !dbg !1925
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1926
  %24 = load i8, i8* %23, align 1, !dbg !1926, !tbaa !863
  %25 = icmp eq i8 %24, 45, !dbg !1926
  br i1 %25, label %26, label %72, !dbg !1928

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1929, metadata !595), !dbg !1940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1938, metadata !595), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !595), !dbg !1945
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1946
  %28 = load i8, i8* %27, align 1, !dbg !1946, !tbaa !863
  %29 = icmp eq i8 %28, 56, !dbg !1946
  br i1 %29, label %30, label %72, !dbg !1948

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1949, metadata !595), !dbg !1959
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1957, metadata !595), !dbg !1963
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !595), !dbg !1964
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1965
  %32 = load i8, i8* %31, align 1, !dbg !1965, !tbaa !863
  %33 = icmp eq i8 %32, 0, !dbg !1965
  br i1 %33, label %34, label %72, !dbg !1967

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1968, !tbaa !863
  %36 = icmp eq i8 %35, 96, !dbg !1969
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1968
  br label %75, !dbg !1970

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1865, metadata !595), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1877, metadata !595), !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1878, metadata !595), !dbg !1976
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1977
  %40 = load i8, i8* %39, align 1, !dbg !1977, !tbaa !863
  %41 = sext i8 %40 to i32, !dbg !1977
  %42 = and i32 %41, -33, !dbg !1977
  %43 = icmp eq i32 %42, 66, !dbg !1977
  br i1 %43, label %44, label %72, !dbg !1977

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1887, metadata !595), !dbg !1978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !595), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1899, metadata !595), !dbg !1981
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1982
  %46 = load i8, i8* %45, align 1, !dbg !1982, !tbaa !863
  %47 = icmp eq i8 %46, 49, !dbg !1982
  br i1 %47, label %48, label %72, !dbg !1983

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1908, metadata !595), !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1918, metadata !595), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1919, metadata !595), !dbg !1987
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1988
  %50 = load i8, i8* %49, align 1, !dbg !1988, !tbaa !863
  %51 = icmp eq i8 %50, 56, !dbg !1988
  br i1 %51, label %52, label %72, !dbg !1989

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1929, metadata !595), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1938, metadata !595), !dbg !1992
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !595), !dbg !1993
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1994
  %54 = load i8, i8* %53, align 1, !dbg !1994, !tbaa !863
  %55 = icmp eq i8 %54, 48, !dbg !1994
  br i1 %55, label %56, label %72, !dbg !1995

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1949, metadata !595), !dbg !1996
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1957, metadata !595), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !595), !dbg !1999
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2000
  %58 = load i8, i8* %57, align 1, !dbg !2000, !tbaa !863
  %59 = icmp eq i8 %58, 51, !dbg !2000
  br i1 %59, label %60, label %72, !dbg !2001

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2002, metadata !595), !dbg !2011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2009, metadata !595), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2010, metadata !595), !dbg !2016
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2017
  %62 = load i8, i8* %61, align 1, !dbg !2017, !tbaa !863
  %63 = icmp eq i8 %62, 48, !dbg !2017
  br i1 %63, label %64, label %72, !dbg !2019

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2020, metadata !595), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !595), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !595), !dbg !2033
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2034
  %66 = load i8, i8* %65, align 1, !dbg !2034, !tbaa !863
  %67 = icmp eq i8 %66, 0, !dbg !2034
  br i1 %67, label %68, label %72, !dbg !2036

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2037, !tbaa !863
  %70 = icmp eq i8 %69, 96, !dbg !2038
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2037
  br label %75, !dbg !2039

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2040
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2041
  br label %75, !dbg !2042

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2043
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2044 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2048, metadata !595), !dbg !2051
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2049, metadata !595), !dbg !2052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2050, metadata !595), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2054, metadata !595) #12, !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2059, metadata !595) #12, !dbg !2069
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2060, metadata !595) #12, !dbg !2070
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2061, metadata !595) #12, !dbg !2071
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2072
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2062, metadata !595) #12, !dbg !2073
  %6 = tail call i32* @__errno_location() #17, !dbg !2074
  %7 = load i32, i32* %6, align 4, !dbg !2074, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2063, metadata !595) #12, !dbg !2075
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2076
  %9 = load i32, i32* %8, align 4, !dbg !2076, !tbaa !1236
  %10 = or i32 %9, 1, !dbg !2077
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2064, metadata !595) #12, !dbg !2078
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2079
  %12 = load i32, i32* %11, align 8, !dbg !2079, !tbaa !1176
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2080
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2081
  %15 = load i8*, i8** %14, align 8, !dbg !2081, !tbaa !1262
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2082
  %17 = load i8*, i8** %16, align 8, !dbg !2082, !tbaa !1265
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2083
  %19 = add i64 %18, 1, !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2065, metadata !595) #12, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2086, metadata !595) #12, !dbg !2091
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2093
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2066, metadata !595) #12, !dbg !2094
  %21 = load i32, i32* %11, align 8, !dbg !2095, !tbaa !1176
  %22 = load i8*, i8** %14, align 8, !dbg !2096, !tbaa !1262
  %23 = load i8*, i8** %16, align 8, !dbg !2097, !tbaa !1265
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2098
  store i32 %7, i32* %6, align 4, !dbg !2099, !tbaa !691
  ret i8* %20, !dbg !2100
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2055 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2054, metadata !595), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2059, metadata !595), !dbg !2102
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2060, metadata !595), !dbg !2103
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2061, metadata !595), !dbg !2104
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2105
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2062, metadata !595), !dbg !2106
  %7 = tail call i32* @__errno_location() #17, !dbg !2107
  %8 = load i32, i32* %7, align 4, !dbg !2107, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2063, metadata !595), !dbg !2108
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2109
  %10 = load i32, i32* %9, align 4, !dbg !2109, !tbaa !1236
  %11 = icmp ne i64* %2, null, !dbg !2110
  %12 = xor i1 %11, true, !dbg !2110
  %13 = zext i1 %12 to i32, !dbg !2110
  %14 = or i32 %10, %13, !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2064, metadata !595), !dbg !2112
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2113
  %16 = load i32, i32* %15, align 8, !dbg !2113, !tbaa !1176
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2114
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2115
  %19 = load i8*, i8** %18, align 8, !dbg !2115, !tbaa !1262
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2116
  %21 = load i8*, i8** %20, align 8, !dbg !2116, !tbaa !1265
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2117
  %23 = add i64 %22, 1, !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2065, metadata !595), !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2086, metadata !595) #12, !dbg !2120
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2122
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2066, metadata !595), !dbg !2123
  %25 = load i32, i32* %15, align 8, !dbg !2124, !tbaa !1176
  %26 = load i8*, i8** %18, align 8, !dbg !2125, !tbaa !1262
  %27 = load i8*, i8** %20, align 8, !dbg !2126, !tbaa !1265
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2127
  store i32 %8, i32* %7, align 4, !dbg !2128, !tbaa !691
  br i1 %11, label %29, label %30, !dbg !2129

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2130, !tbaa !2132
  br label %30, !dbg !2134

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2135
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2136 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2140, !tbaa !602
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2138, metadata !595), !dbg !2141
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2139, metadata !595), !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2139, metadata !595), !dbg !2142
  %2 = load i32, i32* @nslots, align 4, !dbg !2143, !tbaa !691
  %3 = icmp sgt i32 %2, 1, !dbg !2146
  br i1 %3, label %4, label %13, !dbg !2147

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2148

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2139, metadata !595), !dbg !2142
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2148
  %8 = load i8*, i8** %7, align 8, !dbg !2148, !tbaa !2149
  tail call void @free(i8* %8) #12, !dbg !2151
  %9 = add nuw i64 %6, 1, !dbg !2152
  %10 = load i32, i32* @nslots, align 4, !dbg !2143, !tbaa !691
  %11 = sext i32 %10 to i64, !dbg !2146
  %12 = icmp slt i64 %9, %11, !dbg !2146
  br i1 %12, label %5, label %13, !dbg !2147, !llvm.loop !2153

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2155
  %15 = load i8*, i8** %14, align 8, !dbg !2155, !tbaa !2149
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2157
  br i1 %16, label %18, label %17, !dbg !2158

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2159
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2161, !tbaa !2162
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2163, !tbaa !2149
  br label %18, !dbg !2164

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2165
  br i1 %19, label %22, label %20, !dbg !2167

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2168
  tail call void @free(i8* %21) #12, !dbg !2170
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2171, !tbaa !602
  br label %22, !dbg !2172

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2173, !tbaa !691
  ret void, !dbg !2174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2175 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2179, metadata !595), !dbg !2181
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2180, metadata !595), !dbg !2182
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2183
  ret i8* %3, !dbg !2184
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2185 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2189, metadata !595), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2190, metadata !595), !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2191, metadata !595), !dbg !2205
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2192, metadata !595), !dbg !2206
  %5 = tail call i32* @__errno_location() #17, !dbg !2207
  %6 = load i32, i32* %5, align 4, !dbg !2207, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2193, metadata !595), !dbg !2208
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2209, !tbaa !602
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2194, metadata !595), !dbg !2210
  %8 = icmp slt i32 %0, 0, !dbg !2211
  br i1 %8, label %9, label %10, !dbg !2213

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2214
  unreachable, !dbg !2214

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2215, !tbaa !691
  %12 = icmp sgt i32 %11, %0, !dbg !2216
  br i1 %12, label %34, label %13, !dbg !2217

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2218
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2219
  br i1 %15, label %16, label %17, !dbg !2221

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2222
  unreachable, !dbg !2222

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2223
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2223
  %20 = add nsw i32 %0, 1, !dbg !2224
  %21 = sext i32 %20 to i64, !dbg !2225
  %22 = shl nsw i64 %21, 4, !dbg !2226
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2227
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2227
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2194, metadata !595), !dbg !2210
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2228, !tbaa !602
  br i1 %14, label %25, label %26, !dbg !2229

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2230, !tbaa.struct !2232
  br label %26, !dbg !2233

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2234, !tbaa !691
  %28 = sext i32 %27 to i64, !dbg !2235
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2235
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2236
  %31 = sub nsw i32 %20, %27, !dbg !2237
  %32 = sext i32 %31 to i64, !dbg !2238
  %33 = shl nsw i64 %32, 4, !dbg !2239
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2236
  store i32 %20, i32* @nslots, align 4, !dbg !2240, !tbaa !691
  br label %34, !dbg !2241

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2194, metadata !595), !dbg !2210
  %36 = sext i32 %0 to i64, !dbg !2242
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2243
  %38 = load i64, i64* %37, align 8, !dbg !2243, !tbaa !2162
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2198, metadata !595), !dbg !2244
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2245
  %40 = load i8*, i8** %39, align 8, !dbg !2245, !tbaa !2149
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2200, metadata !595), !dbg !2246
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2247
  %42 = load i32, i32* %41, align 4, !dbg !2247, !tbaa !1236
  %43 = or i32 %42, 1, !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2201, metadata !595), !dbg !2249
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2250
  %45 = load i32, i32* %44, align 8, !dbg !2250, !tbaa !1176
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2251
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2252
  %48 = load i8*, i8** %47, align 8, !dbg !2252, !tbaa !1262
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2253
  %50 = load i8*, i8** %49, align 8, !dbg !2253, !tbaa !1265
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2202, metadata !595), !dbg !2255
  %52 = icmp ugt i64 %38, %51, !dbg !2256
  br i1 %52, label %63, label %53, !dbg !2258

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2198, metadata !595), !dbg !2244
  store i64 %54, i64* %37, align 8, !dbg !2261, !tbaa !2162
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2262
  br i1 %55, label %57, label %56, !dbg !2264

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2265
  br label %57, !dbg !2265

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2086, metadata !595) #12, !dbg !2266
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2268
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2200, metadata !595), !dbg !2246
  store i8* %58, i8** %39, align 8, !dbg !2269, !tbaa !2149
  %59 = load i32, i32* %44, align 8, !dbg !2270, !tbaa !1176
  %60 = load i8*, i8** %47, align 8, !dbg !2271, !tbaa !1262
  %61 = load i8*, i8** %49, align 8, !dbg !2272, !tbaa !1265
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2273
  br label %63, !dbg !2274

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2200, metadata !595), !dbg !2246
  store i32 %6, i32* %5, align 4, !dbg !2275, !tbaa !691
  ret i8* %64, !dbg !2276
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2277 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2281, metadata !595), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2282, metadata !595), !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2283, metadata !595), !dbg !2286
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2287
  ret i8* %4, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2289 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2293, metadata !595), !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2179, metadata !595) #12, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !595) #12, !dbg !2297
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2298
  ret i8* %2, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2300 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2304, metadata !595), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2305, metadata !595), !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !595) #12, !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2282, metadata !595) #12, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2283, metadata !595) #12, !dbg !2311
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2312
  ret i8* %3, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2314 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2322, metadata !2328), !dbg !2329
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2318, metadata !595), !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2319, metadata !595), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2320, metadata !595), !dbg !2333
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2321, metadata !595), !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2327, metadata !595) #12, !dbg !2336
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2337
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2337
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !595) #12, !dbg !2329
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2329
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2329
  %8 = icmp eq i32 %1, 10, !dbg !2339
  br i1 %8, label %9, label %10, !dbg !2341

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2342, !noalias !2343
  unreachable, !dbg !2342

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2322, metadata !2338) #12, !dbg !2329
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2346
  store i32 %1, i32* %11, align 8, !dbg !2346, !alias.scope !2343
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2346
  %13 = bitcast i32* %12 to i8*, !dbg !2346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2347
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2321, metadata !595), !dbg !2335
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2349
  ret i8* %14, !dbg !2350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2351 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2322, metadata !2328), !dbg !2360
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2355, metadata !595), !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2356, metadata !595), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2357, metadata !595), !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2358, metadata !595), !dbg !2365
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !595), !dbg !2367
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2327, metadata !595) #12, !dbg !2368
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2369
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2369
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !595) #12, !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2360
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2360
  %9 = icmp eq i32 %1, 10, !dbg !2370
  br i1 %9, label %10, label %11, !dbg !2371

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2372, !noalias !2373
  unreachable, !dbg !2372

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2322, metadata !2338) #12, !dbg !2360
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2376
  store i32 %1, i32* %12, align 8, !dbg !2376, !alias.scope !2373
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2376
  %14 = bitcast i32* %13 to i8*, !dbg !2376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2376
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !595), !dbg !2367
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2379
  ret i8* %15, !dbg !2380
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2381 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2322, metadata !2328), !dbg !2387
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2385, metadata !595), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2386, metadata !595), !dbg !2391
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !595) #12, !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2319, metadata !595) #12, !dbg !2393
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2320, metadata !595) #12, !dbg !2394
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2395
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2395
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2321, metadata !595) #12, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2327, metadata !595) #12, !dbg !2397
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2398
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2398
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !595) #12, !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2387
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2387
  %7 = icmp eq i32 %0, 10, !dbg !2399
  br i1 %7, label %8, label %9, !dbg !2400

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2401, !noalias !2402
  unreachable, !dbg !2401

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2387
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2405
  store i32 %0, i32* %10, align 8, !dbg !2405, !alias.scope !2402
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2405
  %12 = bitcast i32* %11 to i8*, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2405
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2321, metadata !595) #12, !dbg !2396
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2408
  ret i8* %13, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2410 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2322, metadata !2328), !dbg !2417
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2414, metadata !595), !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2415, metadata !595), !dbg !2421
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2416, metadata !595), !dbg !2422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2355, metadata !595) #12, !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2356, metadata !595) #12, !dbg !2424
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2357, metadata !595) #12, !dbg !2425
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2358, metadata !595) #12, !dbg !2426
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !595) #12, !dbg !2428
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2327, metadata !595) #12, !dbg !2429
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2430
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2430
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !595) #12, !dbg !2417
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2417
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2417
  %8 = icmp eq i32 %0, 10, !dbg !2431
  br i1 %8, label %9, label %10, !dbg !2432

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2433, !noalias !2434
  unreachable, !dbg !2433

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2417
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2437
  store i32 %0, i32* %11, align 8, !dbg !2437, !alias.scope !2434
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2437
  %13 = bitcast i32* %12 to i8*, !dbg !2437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2437
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !595) #12, !dbg !2428
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2439
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2440
  ret i8* %14, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2442 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !595), !dbg !2450
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2447, metadata !595), !dbg !2451
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2448, metadata !595), !dbg !2452
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2454, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2449, metadata !595), !dbg !2456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1195, metadata !595), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1196, metadata !595), !dbg !2459
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1197, metadata !595), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1198, metadata !595), !dbg !2461
  %6 = lshr i8 %2, 5, !dbg !2462
  %7 = zext i8 %6 to i64, !dbg !2462
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2463
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1199, metadata !595), !dbg !2464
  %9 = and i8 %2, 31, !dbg !2465
  %10 = zext i8 %9 to i32, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1201, metadata !595), !dbg !2467
  %11 = load i32, i32* %8, align 4, !dbg !2468, !tbaa !691
  %12 = lshr i32 %11, %10, !dbg !2469
  %13 = and i32 %12, 1, !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1202, metadata !595), !dbg !2471
  %14 = xor i32 %13, 1, !dbg !2472
  %15 = shl i32 %14, %10, !dbg !2473
  %16 = xor i32 %15, %11, !dbg !2474
  store i32 %16, i32* %8, align 4, !dbg !2474, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2449, metadata !595), !dbg !2456
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2476
  ret i8* %17, !dbg !2477
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2478 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2482, metadata !595), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2483, metadata !595), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !595) #12, !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2447, metadata !595) #12, !dbg !2488
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2448, metadata !595) #12, !dbg !2489
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2491, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !595) #12, !dbg !2492
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1195, metadata !595) #12, !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1196, metadata !595) #12, !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1197, metadata !595) #12, !dbg !2496
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1198, metadata !595) #12, !dbg !2497
  %5 = lshr i8 %1, 5, !dbg !2498
  %6 = zext i8 %5 to i64, !dbg !2498
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2499
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1199, metadata !595) #12, !dbg !2500
  %8 = and i8 %1, 31, !dbg !2501
  %9 = zext i8 %8 to i32, !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1201, metadata !595) #12, !dbg !2503
  %10 = load i32, i32* %7, align 4, !dbg !2504, !tbaa !691
  %11 = lshr i32 %10, %9, !dbg !2505
  %12 = and i32 %11, 1, !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1202, metadata !595) #12, !dbg !2507
  %13 = xor i32 %12, 1, !dbg !2508
  %14 = shl i32 %13, %9, !dbg !2509
  %15 = xor i32 %14, %10, !dbg !2510
  store i32 %15, i32* %7, align 4, !dbg !2510, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !595) #12, !dbg !2492
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2512
  ret i8* %16, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2514 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2516, metadata !595), !dbg !2517
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2482, metadata !595) #12, !dbg !2518
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2483, metadata !595) #12, !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !595) #12, !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2447, metadata !595) #12, !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2448, metadata !595) #12, !dbg !2524
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2526, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2449, metadata !595) #12, !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1195, metadata !595) #12, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1196, metadata !595) #12, !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1197, metadata !595) #12, !dbg !2531
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1198, metadata !595) #12, !dbg !2532
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2533
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1199, metadata !595) #12, !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1201, metadata !595) #12, !dbg !2535
  %5 = load i32, i32* %4, align 4, !dbg !2536, !tbaa !691
  %6 = or i32 %5, 67108864, !dbg !2537
  store i32 %6, i32* %4, align 4, !dbg !2537, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2449, metadata !595) #12, !dbg !2527
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2538
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2539
  ret i8* %7, !dbg !2540
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2541 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2543, metadata !595), !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2544, metadata !595), !dbg !2546
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2446, metadata !595) #12, !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2447, metadata !595) #12, !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2448, metadata !595) #12, !dbg !2550
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2552, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !595) #12, !dbg !2553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1195, metadata !595) #12, !dbg !2554
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1196, metadata !595) #12, !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1197, metadata !595) #12, !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1198, metadata !595) #12, !dbg !2558
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2559
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1199, metadata !595) #12, !dbg !2560
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1201, metadata !595) #12, !dbg !2561
  %6 = load i32, i32* %5, align 4, !dbg !2562, !tbaa !691
  %7 = or i32 %6, 67108864, !dbg !2563
  store i32 %7, i32* %5, align 4, !dbg !2563, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2449, metadata !595) #12, !dbg !2553
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2564
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2565
  ret i8* %8, !dbg !2566
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2567 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2322, metadata !2328), !dbg !2573
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2569, metadata !595), !dbg !2575
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2570, metadata !595), !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2571, metadata !595), !dbg !2577
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2578
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2327, metadata !595) #12, !dbg !2579
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2580
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2322, metadata !595) #12, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !2338) #12, !dbg !2573
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2573
  %9 = icmp eq i32 %1, 10, !dbg !2581
  br i1 %9, label %10, label %11, !dbg !2582

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2583, !noalias !2584
  unreachable, !dbg !2583

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2322, metadata !2338) #12, !dbg !2573
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2587
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2588
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2589
  store i32 %1, i32* %13, align 8, !dbg !2589
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2589
  %15 = bitcast i32* %14 to i8*, !dbg !2589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2589
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2572, metadata !595), !dbg !2590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1195, metadata !595), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1196, metadata !595), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1197, metadata !595), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1198, metadata !595), !dbg !2595
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2596
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1199, metadata !595), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1201, metadata !595), !dbg !2598
  %17 = load i32, i32* %16, align 4, !dbg !2599, !tbaa !691
  %18 = or i32 %17, 67108864, !dbg !2600
  store i32 %18, i32* %16, align 4, !dbg !2600, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2572, metadata !595), !dbg !2590
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2602
  ret i8* %19, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2604 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2608, metadata !595), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2609, metadata !595), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2610, metadata !595), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2611, metadata !595), !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2616, metadata !595) #12, !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2621, metadata !595) #12, !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2622, metadata !595) #12, !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2623, metadata !595) #12, !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2624, metadata !595) #12, !dbg !2631
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2633, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !595) #12, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1244, metadata !595) #12, !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1245, metadata !595) #12, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1246, metadata !595) #12, !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1244, metadata !595) #12, !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1244, metadata !595) #12, !dbg !2635
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2639
  store i32 10, i32* %7, align 8, !dbg !2640, !tbaa !1176
  %8 = icmp ne i8* %1, null, !dbg !2641
  %9 = icmp ne i8* %2, null, !dbg !2642
  %10 = and i1 %8, %9, !dbg !2643
  br i1 %10, label %12, label %11, !dbg !2643

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2644
  unreachable, !dbg !2644

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2645
  store i8* %1, i8** %13, align 8, !dbg !2646, !tbaa !1262
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2647
  store i8* %2, i8** %14, align 8, !dbg !2648, !tbaa !1265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !595) #12, !dbg !2634
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2650
  ret i8* %15, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2617 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2616, metadata !595), !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2621, metadata !595), !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2622, metadata !595), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2623, metadata !595), !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2624, metadata !595), !dbg !2656
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2657
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2658, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2625, metadata !595), !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1244, metadata !595) #12, !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1245, metadata !595) #12, !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1246, metadata !595) #12, !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1244, metadata !595) #12, !dbg !2660
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1244, metadata !595) #12, !dbg !2660
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2664
  store i32 10, i32* %8, align 8, !dbg !2665, !tbaa !1176
  %9 = icmp ne i8* %1, null, !dbg !2666
  %10 = icmp ne i8* %2, null, !dbg !2667
  %11 = and i1 %9, %10, !dbg !2668
  br i1 %11, label %13, label %12, !dbg !2668

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2669
  unreachable, !dbg !2669

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2670
  store i8* %1, i8** %14, align 8, !dbg !2671, !tbaa !1262
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2672
  store i8* %2, i8** %15, align 8, !dbg !2673, !tbaa !1265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2625, metadata !595), !dbg !2659
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2675
  ret i8* %16, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2677 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2681, metadata !595), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2682, metadata !595), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2683, metadata !595), !dbg !2686
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2608, metadata !595) #12, !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2609, metadata !595) #12, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2610, metadata !595) #12, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2611, metadata !595) #12, !dbg !2691
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2616, metadata !595) #12, !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2621, metadata !595) #12, !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !595) #12, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2623, metadata !595) #12, !dbg !2696
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2624, metadata !595) #12, !dbg !2697
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2698
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2699, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !595) #12, !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1244, metadata !595) #12, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1245, metadata !595) #12, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1246, metadata !595) #12, !dbg !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1244, metadata !595) #12, !dbg !2701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1244, metadata !595) #12, !dbg !2701
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2705
  store i32 10, i32* %6, align 8, !dbg !2706, !tbaa !1176
  %7 = icmp ne i8* %0, null, !dbg !2707
  %8 = icmp ne i8* %1, null, !dbg !2708
  %9 = and i1 %7, %8, !dbg !2709
  br i1 %9, label %11, label %10, !dbg !2709

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2710
  unreachable, !dbg !2710

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2711
  store i8* %0, i8** %12, align 8, !dbg !2712, !tbaa !1262
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2713
  store i8* %1, i8** %13, align 8, !dbg !2714, !tbaa !1265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !595) #12, !dbg !2700
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2716
  ret i8* %14, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2718 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !595), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2723, metadata !595), !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2724, metadata !595), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2725, metadata !595), !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2616, metadata !595) #12, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2621, metadata !595) #12, !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !595) #12, !dbg !2733
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2623, metadata !595) #12, !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2624, metadata !595) #12, !dbg !2735
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2737, !tbaa.struct !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !595) #12, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1244, metadata !595) #12, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1245, metadata !595) #12, !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1246, metadata !595) #12, !dbg !2742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1244, metadata !595) #12, !dbg !2739
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1244, metadata !595) #12, !dbg !2739
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  store i32 10, i32* %7, align 8, !dbg !2744, !tbaa !1176
  %8 = icmp ne i8* %0, null, !dbg !2745
  %9 = icmp ne i8* %1, null, !dbg !2746
  %10 = and i1 %8, %9, !dbg !2747
  br i1 %10, label %12, label %11, !dbg !2747

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2748
  unreachable, !dbg !2748

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2749
  store i8* %0, i8** %13, align 8, !dbg !2750, !tbaa !1262
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2751
  store i8* %1, i8** %14, align 8, !dbg !2752, !tbaa !1265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !595) #12, !dbg !2738
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2754
  ret i8* %15, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2756 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !595), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2761, metadata !595), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2762, metadata !595), !dbg !2765
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2766
  ret i8* %4, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2768 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2772, metadata !595), !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2773, metadata !595), !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !595) #12, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !595) #12, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2762, metadata !595) #12, !dbg !2779
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2780
  ret i8* %3, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2786, metadata !595), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2787, metadata !595), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !595) #12, !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2761, metadata !595) #12, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2762, metadata !595) #12, !dbg !2793
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2794
  ret i8* %3, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2800, metadata !595), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2786, metadata !595) #12, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2787, metadata !595) #12, !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !595) #12, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !595) #12, !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2762, metadata !595) #12, !dbg !2808
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2809
  ret i8* %2, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2811 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2868, metadata !595), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2869, metadata !595), !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2870, metadata !595), !dbg !2876
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2871, metadata !595), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2872, metadata !595), !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2873, metadata !595), !dbg !2879
  %7 = icmp eq i8* %1, null, !dbg !2880
  br i1 %7, label %10, label %8, !dbg !2882

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2883
  br label %12, !dbg !2883

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2884
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #12, !dbg !2885
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !2885
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.72, i64 0, i64 0), i32 5) #12, !dbg !2886
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !2886
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
  ], !dbg !2887

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2888
  unreachable, !dbg !2888

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #12, !dbg !2890
  %20 = load i8*, i8** %4, align 8, !dbg !2890, !tbaa !602
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !2890
  br label %146, !dbg !2891

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0), i32 5) #12, !dbg !2892
  %24 = load i8*, i8** %4, align 8, !dbg !2892, !tbaa !602
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2892
  %26 = load i8*, i8** %25, align 8, !dbg !2892, !tbaa !602
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !2892
  br label %146, !dbg !2893

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #12, !dbg !2894
  %30 = load i8*, i8** %4, align 8, !dbg !2894, !tbaa !602
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2894
  %32 = load i8*, i8** %31, align 8, !dbg !2894, !tbaa !602
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2894
  %34 = load i8*, i8** %33, align 8, !dbg !2894, !tbaa !602
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !2894
  br label %146, !dbg !2895

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #12, !dbg !2896
  %38 = load i8*, i8** %4, align 8, !dbg !2896, !tbaa !602
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2896
  %40 = load i8*, i8** %39, align 8, !dbg !2896, !tbaa !602
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2896
  %42 = load i8*, i8** %41, align 8, !dbg !2896, !tbaa !602
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2896
  %44 = load i8*, i8** %43, align 8, !dbg !2896, !tbaa !602
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !2896
  br label %146, !dbg !2897

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #12, !dbg !2898
  %48 = load i8*, i8** %4, align 8, !dbg !2898, !tbaa !602
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2898
  %50 = load i8*, i8** %49, align 8, !dbg !2898, !tbaa !602
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2898
  %52 = load i8*, i8** %51, align 8, !dbg !2898, !tbaa !602
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2898
  %54 = load i8*, i8** %53, align 8, !dbg !2898, !tbaa !602
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2898
  %56 = load i8*, i8** %55, align 8, !dbg !2898, !tbaa !602
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !2898
  br label %146, !dbg !2899

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #12, !dbg !2900
  %60 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !602
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2900
  %62 = load i8*, i8** %61, align 8, !dbg !2900, !tbaa !602
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2900
  %64 = load i8*, i8** %63, align 8, !dbg !2900, !tbaa !602
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2900
  %66 = load i8*, i8** %65, align 8, !dbg !2900, !tbaa !602
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2900
  %68 = load i8*, i8** %67, align 8, !dbg !2900, !tbaa !602
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2900
  %70 = load i8*, i8** %69, align 8, !dbg !2900, !tbaa !602
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !2900
  br label %146, !dbg !2901

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #12, !dbg !2902
  %74 = load i8*, i8** %4, align 8, !dbg !2902, !tbaa !602
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2902
  %76 = load i8*, i8** %75, align 8, !dbg !2902, !tbaa !602
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2902
  %78 = load i8*, i8** %77, align 8, !dbg !2902, !tbaa !602
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2902
  %80 = load i8*, i8** %79, align 8, !dbg !2902, !tbaa !602
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2902
  %82 = load i8*, i8** %81, align 8, !dbg !2902, !tbaa !602
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2902
  %84 = load i8*, i8** %83, align 8, !dbg !2902, !tbaa !602
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2902
  %86 = load i8*, i8** %85, align 8, !dbg !2902, !tbaa !602
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !2902
  br label %146, !dbg !2903

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #12, !dbg !2904
  %90 = load i8*, i8** %4, align 8, !dbg !2904, !tbaa !602
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2904
  %92 = load i8*, i8** %91, align 8, !dbg !2904, !tbaa !602
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2904
  %94 = load i8*, i8** %93, align 8, !dbg !2904, !tbaa !602
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2904
  %96 = load i8*, i8** %95, align 8, !dbg !2904, !tbaa !602
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2904
  %98 = load i8*, i8** %97, align 8, !dbg !2904, !tbaa !602
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2904
  %100 = load i8*, i8** %99, align 8, !dbg !2904, !tbaa !602
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2904
  %102 = load i8*, i8** %101, align 8, !dbg !2904, !tbaa !602
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2904
  %104 = load i8*, i8** %103, align 8, !dbg !2904, !tbaa !602
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !2904
  br label %146, !dbg !2905

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #12, !dbg !2906
  %108 = load i8*, i8** %4, align 8, !dbg !2906, !tbaa !602
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2906
  %110 = load i8*, i8** %109, align 8, !dbg !2906, !tbaa !602
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2906
  %112 = load i8*, i8** %111, align 8, !dbg !2906, !tbaa !602
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2906
  %114 = load i8*, i8** %113, align 8, !dbg !2906, !tbaa !602
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2906
  %116 = load i8*, i8** %115, align 8, !dbg !2906, !tbaa !602
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2906
  %118 = load i8*, i8** %117, align 8, !dbg !2906, !tbaa !602
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2906
  %120 = load i8*, i8** %119, align 8, !dbg !2906, !tbaa !602
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2906
  %122 = load i8*, i8** %121, align 8, !dbg !2906, !tbaa !602
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2906
  %124 = load i8*, i8** %123, align 8, !dbg !2906, !tbaa !602
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !2906
  br label %146, !dbg !2907

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #12, !dbg !2908
  %128 = load i8*, i8** %4, align 8, !dbg !2908, !tbaa !602
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2908
  %130 = load i8*, i8** %129, align 8, !dbg !2908, !tbaa !602
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2908
  %132 = load i8*, i8** %131, align 8, !dbg !2908, !tbaa !602
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2908
  %134 = load i8*, i8** %133, align 8, !dbg !2908, !tbaa !602
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2908
  %136 = load i8*, i8** %135, align 8, !dbg !2908, !tbaa !602
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2908
  %138 = load i8*, i8** %137, align 8, !dbg !2908, !tbaa !602
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2908
  %140 = load i8*, i8** %139, align 8, !dbg !2908, !tbaa !602
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2908
  %142 = load i8*, i8** %141, align 8, !dbg !2908, !tbaa !602
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2908
  %144 = load i8*, i8** %143, align 8, !dbg !2908, !tbaa !602
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !2908
  br label %146, !dbg !2909

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2910
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2911 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2915, metadata !595), !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2916, metadata !595), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2917, metadata !595), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2918, metadata !595), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2919, metadata !595), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2920, metadata !595), !dbg !2926
  br label %6, !dbg !2927

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2920, metadata !595), !dbg !2926
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2929
  %9 = load i8*, i8** %8, align 8, !dbg !2929, !tbaa !602
  %10 = icmp eq i8* %9, null, !dbg !2931
  %11 = add i64 %7, 1, !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2920, metadata !595), !dbg !2926
  br i1 %10, label %12, label %6, !dbg !2931, !llvm.loop !2933

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2935
  ret void, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2937 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2948, metadata !595), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2949, metadata !595), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2950, metadata !595), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2951, metadata !595), !dbg !2959
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2952, metadata !595), !dbg !2960
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2961
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2954, metadata !595), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %11 = load i32, i32* %8, align 8, !dbg !2964
  %12 = icmp ult i32 %11, 41, !dbg !2964
  br i1 %12, label %13, label %18, !dbg !2964

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2964
  %15 = sext i32 %11 to i64, !dbg !2964
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2964
  %17 = add i32 %11, 8, !dbg !2964
  store i32 %17, i32* %8, align 8, !dbg !2964
  br label %21, !dbg !2964

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2964
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2964
  store i8* %20, i8** %10, align 8, !dbg !2964
  br label %21, !dbg !2964

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2964
  %25 = load i8*, i8** %24, align 8, !dbg !2964
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2967
  store i8* %25, i8** %26, align 16, !dbg !2968, !tbaa !602
  %27 = icmp eq i8* %25, null, !dbg !2969
  br i1 %27, label %30, label %28, !dbg !2970

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %29 = icmp ult i32 %22, 41, !dbg !2964
  br i1 %29, label %35, label %32, !dbg !2964

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2971
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2972
  ret void, !dbg !2972

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2964
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2964
  store i8* %34, i8** %10, align 8, !dbg !2964
  br label %40, !dbg !2964

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2964
  %37 = sext i32 %22 to i64, !dbg !2964
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2964
  %39 = add i32 %22, 8, !dbg !2964
  store i32 %39, i32* %8, align 8, !dbg !2964
  br label %40, !dbg !2964

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2964
  %44 = load i8*, i8** %43, align 8, !dbg !2964
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2967
  store i8* %44, i8** %45, align 8, !dbg !2968, !tbaa !602
  %46 = icmp eq i8* %44, null, !dbg !2969
  br i1 %46, label %30, label %47, !dbg !2970

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %48 = icmp ult i32 %41, 41, !dbg !2964
  br i1 %48, label %52, label %49, !dbg !2964

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2964
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2964
  store i8* %51, i8** %10, align 8, !dbg !2964
  br label %57, !dbg !2964

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2964
  %54 = sext i32 %41 to i64, !dbg !2964
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2964
  %56 = add i32 %41, 8, !dbg !2964
  store i32 %56, i32* %8, align 8, !dbg !2964
  br label %57, !dbg !2964

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2964
  %61 = load i8*, i8** %60, align 8, !dbg !2964
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2967
  store i8* %61, i8** %62, align 16, !dbg !2968, !tbaa !602
  %63 = icmp eq i8* %61, null, !dbg !2969
  br i1 %63, label %30, label %64, !dbg !2970

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %65 = icmp ult i32 %58, 41, !dbg !2964
  br i1 %65, label %69, label %66, !dbg !2964

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2964
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2964
  store i8* %68, i8** %10, align 8, !dbg !2964
  br label %74, !dbg !2964

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2964
  %71 = sext i32 %58 to i64, !dbg !2964
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2964
  %73 = add i32 %58, 8, !dbg !2964
  store i32 %73, i32* %8, align 8, !dbg !2964
  br label %74, !dbg !2964

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2964
  %78 = load i8*, i8** %77, align 8, !dbg !2964
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2967
  store i8* %78, i8** %79, align 8, !dbg !2968, !tbaa !602
  %80 = icmp eq i8* %78, null, !dbg !2969
  br i1 %80, label %30, label %81, !dbg !2970

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %82 = icmp ult i32 %75, 41, !dbg !2964
  br i1 %82, label %86, label %83, !dbg !2964

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2964
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2964
  store i8* %85, i8** %10, align 8, !dbg !2964
  br label %91, !dbg !2964

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2964
  %88 = sext i32 %75 to i64, !dbg !2964
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2964
  %90 = add i32 %75, 8, !dbg !2964
  store i32 %90, i32* %8, align 8, !dbg !2964
  br label %91, !dbg !2964

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2964
  %95 = load i8*, i8** %94, align 8, !dbg !2964
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2967
  store i8* %95, i8** %96, align 16, !dbg !2968, !tbaa !602
  %97 = icmp eq i8* %95, null, !dbg !2969
  br i1 %97, label %30, label %98, !dbg !2970

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %99 = icmp ult i32 %92, 41, !dbg !2964
  br i1 %99, label %103, label %100, !dbg !2964

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2964
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2964
  store i8* %102, i8** %10, align 8, !dbg !2964
  br label %108, !dbg !2964

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2964
  %105 = sext i32 %92 to i64, !dbg !2964
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2964
  %107 = add i32 %92, 8, !dbg !2964
  store i32 %107, i32* %8, align 8, !dbg !2964
  br label %108, !dbg !2964

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2964
  %111 = load i8*, i8** %110, align 8, !dbg !2964
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2967
  store i8* %111, i8** %112, align 8, !dbg !2968, !tbaa !602
  %113 = icmp eq i8* %111, null, !dbg !2969
  br i1 %113, label %30, label %114, !dbg !2970

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %115 = load i8*, i8** %10, align 8, !dbg !2964
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2964
  store i8* %116, i8** %10, align 8, !dbg !2964
  %117 = bitcast i8* %115 to i8**, !dbg !2964
  %118 = load i8*, i8** %117, align 8, !dbg !2964
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2967
  store i8* %118, i8** %119, align 16, !dbg !2968, !tbaa !602
  %120 = icmp eq i8* %118, null, !dbg !2969
  br i1 %120, label %30, label %121, !dbg !2970

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %122 = load i8*, i8** %10, align 8, !dbg !2964
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2964
  store i8* %123, i8** %10, align 8, !dbg !2964
  %124 = bitcast i8* %122 to i8**, !dbg !2964
  %125 = load i8*, i8** %124, align 8, !dbg !2964
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2967
  store i8* %125, i8** %126, align 8, !dbg !2968, !tbaa !602
  %127 = icmp eq i8* %125, null, !dbg !2969
  br i1 %127, label %30, label %128, !dbg !2970

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %129 = load i8*, i8** %10, align 8, !dbg !2964
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2964
  store i8* %130, i8** %10, align 8, !dbg !2964
  %131 = bitcast i8* %129 to i8**, !dbg !2964
  %132 = load i8*, i8** %131, align 8, !dbg !2964
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2967
  store i8* %132, i8** %133, align 16, !dbg !2968, !tbaa !602
  %134 = icmp eq i8* %132, null, !dbg !2969
  br i1 %134, label %30, label %135, !dbg !2970

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2953, metadata !595), !dbg !2963
  %136 = load i8*, i8** %10, align 8, !dbg !2964
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2964
  store i8* %137, i8** %10, align 8, !dbg !2964
  %138 = bitcast i8* %136 to i8**, !dbg !2964
  %139 = load i8*, i8** %138, align 8, !dbg !2964
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2967
  store i8* %139, i8** %140, align 8, !dbg !2968, !tbaa !602
  %141 = icmp eq i8* %139, null, !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2953, metadata !595), !dbg !2963
  %142 = select i1 %141, i64 9, i64 10, !dbg !2970
  br label %30, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2973 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2977, metadata !595), !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2978, metadata !595), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2979, metadata !595), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2980, metadata !595), !dbg !2991
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2992
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2981, metadata !595), !dbg !2993
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2994
  call void @llvm.va_start(i8* nonnull %6), !dbg !2994
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2995
  call void @llvm.va_end(i8* nonnull %6), !dbg !2996
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2997
  ret void, !dbg !2997
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2998 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #12, !dbg !2999
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.86, i64 0, i64 0)) #12, !dbg !2999
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #12, !dbg !3000
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.88, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.89, i64 0, i64 0)) #12, !dbg !3000
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.90, i64 0, i64 0), i32 5) #12, !dbg !3001
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3001, !tbaa !602
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3001
  ret void, !dbg !3002
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3007, metadata !595), !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3008, metadata !595), !dbg !3010
  %3 = udiv i64 9223372036854775807, %1, !dbg !3011
  %4 = icmp ult i64 %3, %0, !dbg !3011
  br i1 %4, label %5, label %6, !dbg !3013

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3014
  unreachable, !dbg !3014

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3015
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3016, metadata !595) #12, !dbg !3023
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3025
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3022, metadata !595) #12, !dbg !3026
  %9 = icmp eq i8* %8, null, !dbg !3027
  %10 = icmp ne i64 %7, 0, !dbg !3029
  %11 = and i1 %10, %9, !dbg !3030
  br i1 %11, label %12, label %13, !dbg !3030

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3031
  unreachable, !dbg !3031

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3032
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3017 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3016, metadata !595), !dbg !3033
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3022, metadata !595), !dbg !3035
  %3 = icmp eq i8* %2, null, !dbg !3036
  %4 = icmp ne i64 %0, 0, !dbg !3037
  %5 = and i1 %4, %3, !dbg !3038
  br i1 %5, label %6, label %7, !dbg !3038

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3039
  unreachable, !dbg !3039

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3040
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3041 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3045, metadata !595), !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3046, metadata !595), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3047, metadata !595), !dbg !3050
  %4 = udiv i64 9223372036854775807, %2, !dbg !3051
  %5 = icmp ult i64 %4, %1, !dbg !3051
  br i1 %5, label %6, label %7, !dbg !3053

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3054
  unreachable, !dbg !3054

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3055
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !595) #12, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3061, metadata !595) #12, !dbg !3064
  %9 = icmp eq i64 %8, 0, !dbg !3065
  %10 = icmp ne i8* %0, null, !dbg !3067
  %11 = and i1 %10, %9, !dbg !3068
  br i1 %11, label %12, label %13, !dbg !3068

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3069
  br label %19, !dbg !3071

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3056, metadata !595) #12, !dbg !3062
  %15 = icmp eq i8* %14, null, !dbg !3073
  %16 = icmp ne i64 %8, 0, !dbg !3075
  %17 = and i1 %16, %15, !dbg !3076
  br i1 %17, label %18, label %19, !dbg !3076

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3077
  unreachable, !dbg !3077

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3078
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3057 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !595), !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3061, metadata !595), !dbg !3080
  %3 = icmp eq i64 %1, 0, !dbg !3081
  %4 = icmp ne i8* %0, null, !dbg !3082
  %5 = and i1 %4, %3, !dbg !3083
  br i1 %5, label %6, label %7, !dbg !3083

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3084
  br label %13, !dbg !3085

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3056, metadata !595), !dbg !3079
  %9 = icmp eq i8* %8, null, !dbg !3087
  %10 = icmp ne i64 %1, 0, !dbg !3088
  %11 = and i1 %10, %9, !dbg !3089
  br i1 %11, label %12, label %13, !dbg !3089

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3090
  unreachable, !dbg !3090

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3091
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !555 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !560, metadata !595), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !561, metadata !595), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !562, metadata !595), !dbg !3094
  %4 = load i64, i64* %1, align 8, !dbg !3095, !tbaa !2132
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !563, metadata !595), !dbg !3096
  %5 = icmp eq i8* %0, null, !dbg !3097
  br i1 %5, label %6, label %13, !dbg !3099

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3100
  br i1 %7, label %8, label %17, !dbg !3103

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !563, metadata !595), !dbg !3096
  %10 = icmp ugt i64 %2, 128, !dbg !3106
  %11 = zext i1 %10 to i64, !dbg !3106
  %12 = add nuw nsw i64 %9, %11, !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !563, metadata !595), !dbg !3096
  br label %17, !dbg !3108

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3109
  %15 = icmp ugt i64 %14, %4, !dbg !3112
  br i1 %15, label %20, label %16, !dbg !3113

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3114
  unreachable, !dbg !3114

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !563, metadata !595), !dbg !3096
  store i64 %18, i64* %1, align 8, !dbg !3115, !tbaa !2132
  %19 = mul i64 %18, %2, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !595) #12, !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3061, metadata !595) #12, !dbg !3119
  br label %27, !dbg !3120

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3121
  %22 = add i64 %4, 1, !dbg !3122
  %23 = add i64 %22, %21, !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !563, metadata !595), !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !563, metadata !595), !dbg !3096
  store i64 %23, i64* %1, align 8, !dbg !3115, !tbaa !2132
  %24 = mul i64 %23, %2, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !595) #12, !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3061, metadata !595) #12, !dbg !3119
  %25 = icmp eq i64 %24, 0, !dbg !3124
  br i1 %25, label %26, label %27, !dbg !3120

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3125
  br label %34, !dbg !3126

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3127
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3056, metadata !595) #12, !dbg !3117
  %30 = icmp eq i8* %29, null, !dbg !3128
  %31 = icmp ne i64 %28, 0, !dbg !3129
  %32 = and i1 %31, %30, !dbg !3130
  br i1 %32, label %33, label %34, !dbg !3130

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3131
  unreachable, !dbg !3131

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3132
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3135, metadata !595), !dbg !3136
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3016, metadata !595) #12, !dbg !3137
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3022, metadata !595) #12, !dbg !3140
  %3 = icmp eq i8* %2, null, !dbg !3141
  %4 = icmp ne i64 %0, 0, !dbg !3142
  %5 = and i1 %4, %3, !dbg !3143
  br i1 %5, label %6, label %7, !dbg !3143

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3144
  unreachable, !dbg !3144

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3145
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3150, metadata !595), !dbg !3152
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3151, metadata !595), !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !560, metadata !595) #12, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !561, metadata !595) #12, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !562, metadata !595) #12, !dbg !3157
  %3 = load i64, i64* %1, align 8, !dbg !3158, !tbaa !2132
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !563, metadata !595) #12, !dbg !3159
  %4 = icmp eq i8* %0, null, !dbg !3160
  br i1 %4, label %5, label %8, !dbg !3161

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !563, metadata !595) #12, !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !563, metadata !595) #12, !dbg !3159
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !563, metadata !595) #12, !dbg !3159
  store i64 %7, i64* %1, align 8, !dbg !3164, !tbaa !2132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !595) #12, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3061, metadata !595) #12, !dbg !3167
  br label %17, !dbg !3168

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3169
  br i1 %9, label %11, label %10, !dbg !3170

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3171
  unreachable, !dbg !3171

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3172
  %13 = add i64 %3, 1, !dbg !3173
  %14 = add i64 %13, %12, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !563, metadata !595) #12, !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !563, metadata !595) #12, !dbg !3159
  store i64 %14, i64* %1, align 8, !dbg !3164, !tbaa !2132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !595) #12, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3061, metadata !595) #12, !dbg !3167
  %15 = icmp eq i64 %14, 0, !dbg !3175
  br i1 %15, label %16, label %17, !dbg !3168

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3176
  br label %24, !dbg !3177

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3056, metadata !595) #12, !dbg !3165
  %20 = icmp eq i8* %19, null, !dbg !3179
  %21 = icmp ne i64 %18, 0, !dbg !3180
  %22 = and i1 %21, %20, !dbg !3181
  br i1 %22, label %23, label %24, !dbg !3181

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3182
  unreachable, !dbg !3182

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3183
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3184 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3186, metadata !595), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3016, metadata !595) #12, !dbg !3188
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3022, metadata !595) #12, !dbg !3191
  %3 = icmp eq i8* %2, null, !dbg !3192
  %4 = icmp ne i64 %0, 0, !dbg !3193
  %5 = and i1 %4, %3, !dbg !3194
  br i1 %5, label %6, label %7, !dbg !3194

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3195
  unreachable, !dbg !3195

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3196
  ret i8* %2, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3198 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3200, metadata !595), !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3201, metadata !595), !dbg !3204
  %3 = udiv i64 9223372036854775807, %1, !dbg !3205
  %4 = icmp ult i64 %3, %0, !dbg !3205
  br i1 %4, label %8, label %5, !dbg !3207

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3202, metadata !595), !dbg !3209
  %7 = icmp eq i8* %6, null, !dbg !3210
  br i1 %7, label %8, label %9, !dbg !3211

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3212
  unreachable, !dbg !3212

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3213
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3214 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3220, metadata !595), !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3221, metadata !595), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3016, metadata !595) #12, !dbg !3224
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3022, metadata !595) #12, !dbg !3227
  %4 = icmp eq i8* %3, null, !dbg !3228
  %5 = icmp ne i64 %1, 0, !dbg !3229
  %6 = and i1 %5, %4, !dbg !3230
  br i1 %6, label %7, label %8, !dbg !3230

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3231
  unreachable, !dbg !3231

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3232
  ret i8* %3, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3236, metadata !595), !dbg !3237
  %2 = tail call i64 @strlen(i8* %0) #10, !dbg !3238
  %3 = add i64 %2, 1, !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3220, metadata !595) #12, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3221, metadata !595) #12, !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3016, metadata !595) #12, !dbg !3243
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3245
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3022, metadata !595) #12, !dbg !3246
  %5 = icmp eq i8* %4, null, !dbg !3247
  %6 = icmp ne i64 %3, 0, !dbg !3248
  %7 = and i1 %6, %5, !dbg !3249
  br i1 %7, label %8, label %9, !dbg !3249

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3250
  unreachable, !dbg !3250

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3251
  ret i8* %4, !dbg !3252
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3253 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3255, !tbaa !691
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #12, !dbg !3256
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* %2) #12, !dbg !3257
  tail call void @abort() #15, !dbg !3258
  unreachable, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3259 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3262, metadata !595), !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3263, metadata !595), !dbg !3269
  %3 = icmp eq i64 %0, 0, !dbg !3270
  %4 = icmp eq i64 %1, 0, !dbg !3271
  %5 = or i1 %3, %4, !dbg !3272
  br i1 %5, label %12, label %6, !dbg !3272

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3265, metadata !595), !dbg !3274
  %8 = udiv i64 %7, %1, !dbg !3275
  %9 = icmp eq i64 %8, %0, !dbg !3277
  br i1 %9, label %12, label %10, !dbg !3278

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3279
  store i32 12, i32* %11, align 4, !dbg !3281, !tbaa !691
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3262, metadata !595), !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3263, metadata !595), !dbg !3269
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3282
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3264, metadata !595), !dbg !3283
  br label %16, !dbg !3284

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3285
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3286 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3303, metadata !595), !dbg !3312
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3304, metadata !595), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3305, metadata !595), !dbg !3314
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3306, metadata !595), !dbg !3315
  %6 = bitcast i32* %5 to i8*, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3316
  %7 = icmp eq i32* %0, null, !dbg !3317
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3303, metadata !595), !dbg !3312
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3319
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3303, metadata !595), !dbg !3312
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3307, metadata !595), !dbg !3321
  %10 = icmp ugt i64 %9, -3, !dbg !3322
  %11 = icmp ne i64 %2, 0, !dbg !3323
  %12 = and i1 %11, %10, !dbg !3324
  br i1 %12, label %13, label %18, !dbg !3324

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3325
  br i1 %14, label %18, label %15, !dbg !3326

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3327, !tbaa !863
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3309, metadata !595), !dbg !3328
  %17 = zext i8 %16 to i32, !dbg !3329
  store i32 %17, i32* %8, align 4, !dbg !3330, !tbaa !691
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3331
  ret i64 %19, !dbg !3331
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #6 !dbg !3332 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3336, metadata !595), !dbg !3338
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3337, metadata !595), !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3340, metadata !595) #12, !dbg !3361
  %5 = load i8, i8* %0, align 1, !dbg !3363, !tbaa !863
  %6 = sext i8 %5 to i32, !dbg !3363
  %7 = add nsw i32 %6, -48, !dbg !3363
  %8 = icmp ult i32 %7, 10, !dbg !3363
  br i1 %8, label %10, label %9, !dbg !3364

; <label>:9:                                      ; preds = %2
  br label %21, !dbg !3365

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !3369
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3345, metadata !595) #12, !dbg !3370
  %12 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #12, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !3348, metadata !595) #12, !dbg !3372
  %13 = load i8*, i8** %3, align 8, !dbg !3373, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3345, metadata !595) #12, !dbg !3370
  %14 = load i8, i8* %13, align 1, !dbg !3375, !tbaa !863
  %15 = icmp ne i8 %14, 0, !dbg !3375
  %16 = icmp sgt i64 %12, 64, !dbg !3376
  %17 = trunc i64 %12 to i32, !dbg !3377
  %18 = or i1 %16, %15, !dbg !3378
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !3379
  br i1 %18, label %74, label %75

; <label>:19:                                     ; preds = %21
  %20 = icmp ult i64 %26, 35, !dbg !3380
  br i1 %20, label %21, label %30, !dbg !3381, !llvm.loop !3382

; <label>:21:                                     ; preds = %9, %19
  %22 = phi i64 [ %26, %19 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3349, metadata !595) #12, !dbg !3385
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !3365
  %24 = tail call i32 @strcmp(i8* %23, i8* %0) #10, !dbg !3386
  %25 = icmp eq i32 %24, 0, !dbg !3387
  %26 = add nuw nsw i64 %22, 1, !dbg !3388
  br i1 %25, label %27, label %19, !dbg !3389

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 0, !dbg !3390
  %29 = load i32, i32* %28, align 4, !dbg !3390, !tbaa !3391
  br label %75

; <label>:30:                                     ; preds = %19
  %31 = bitcast i8** %4 to i8*, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3393
  %32 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !3394
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !3353, metadata !595) #12, !dbg !3395
  %33 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !3396
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3354, metadata !595) #12, !dbg !3397
  %34 = icmp sgt i32 %32, 0, !dbg !3398
  br i1 %34, label %35, label %50, !dbg !3399

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i64 5) #10, !dbg !3400
  %37 = icmp eq i32 %36, 0, !dbg !3401
  br i1 %37, label %38, label %50, !dbg !3402

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3403
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3351, metadata !595) #12, !dbg !3404
  %40 = call i64 @strtol(i8* %39, i8** nonnull %4, i32 10) #12, !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3355, metadata !595) #12, !dbg !3406
  %41 = load i8*, i8** %4, align 8, !dbg !3407, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !3351, metadata !595) #12, !dbg !3404
  %42 = load i8, i8* %41, align 1, !dbg !3409, !tbaa !863
  %43 = icmp eq i8 %42, 0, !dbg !3409
  %44 = icmp sgt i64 %40, -1, !dbg !3410
  %45 = and i1 %44, %43, !dbg !3411
  br i1 %45, label %46, label %67, !dbg !3411

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3412
  %48 = sext i32 %47 to i64, !dbg !3413
  %49 = icmp sgt i64 %40, %48, !dbg !3414
  br i1 %49, label %67, label %68, !dbg !3415

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3416
  br i1 %51, label %52, label %67, !dbg !3417

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i64 5) #10, !dbg !3418
  %54 = icmp eq i32 %53, 0, !dbg !3419
  br i1 %54, label %55, label %67, !dbg !3420

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3421
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3351, metadata !595) #12, !dbg !3404
  %57 = call i64 @strtol(i8* %56, i8** nonnull %4, i32 10) #12, !dbg !3422
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !3358, metadata !595) #12, !dbg !3423
  %58 = load i8*, i8** %4, align 8, !dbg !3424, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3351, metadata !595) #12, !dbg !3404
  %59 = load i8, i8* %58, align 1, !dbg !3426, !tbaa !863
  %60 = icmp eq i8 %59, 0, !dbg !3426
  br i1 %60, label %61, label %67, !dbg !3427

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3428
  %63 = sext i32 %62 to i64, !dbg !3429
  %64 = icmp sge i64 %57, %63, !dbg !3430
  %65 = icmp slt i64 %57, 1, !dbg !3431
  %66 = and i1 %64, %65, !dbg !3432
  br i1 %66, label %68, label %67, !dbg !3432

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3433
  br label %74

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i32 [ %33, %61 ], [ %32, %46 ]
  %70 = phi i64 [ %57, %61 ], [ %40, %46 ]
  %71 = zext i32 %69 to i64
  %72 = add i64 %70, %71
  %73 = trunc i64 %72 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3433
  br label %75

; <label>:74:                                     ; preds = %67, %10
  br label %75, !dbg !3434

; <label>:75:                                     ; preds = %10, %27, %68, %74
  %76 = phi i32 [ -1, %74 ], [ %17, %10 ], [ %73, %68 ], [ %29, %27 ]
  store i32 %76, i32* %1, align 4, !dbg !3435, !tbaa !691
  %77 = ashr i32 %76, 31, !dbg !3436
  ret i32 %77, !dbg !3437
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @sig2str(i32, i8*) local_unnamed_addr #6 !dbg !3438 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3442, metadata !595), !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3443, metadata !595), !dbg !3451
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3444, metadata !595), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3444, metadata !595), !dbg !3452
  br label %9, !dbg !3453

; <label>:3:                                      ; preds = %9
  %4 = add nsw i32 %10, 1, !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3444, metadata !595), !dbg !3452
  %5 = zext i32 %4 to i64, !dbg !3457
  %6 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %5, i32 0, !dbg !3458
  %7 = load i32, i32* %6, align 4, !dbg !3458, !tbaa !3391
  %8 = icmp eq i32 %7, %0, !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  br i1 %8, label %15, label %43, !dbg !3461

; <label>:9:                                      ; preds = %62, %2
  %10 = phi i32 [ 0, %2 ], [ %61, %62 ]
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3444, metadata !595), !dbg !3452
  %11 = zext i32 %10 to i64, !dbg !3457
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0, !dbg !3458
  %13 = load i32, i32* %12, align 4, !dbg !3458, !tbaa !3391
  %14 = icmp eq i32 %13, %0, !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  br i1 %14, label %15, label %3, !dbg !3461

; <label>:15:                                     ; preds = %55, %49, %43, %3, %9
  %16 = phi i64 [ %11, %9 ], [ %5, %3 ], [ %45, %43 ], [ %51, %49 ], [ %57, %55 ]
  %17 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %16, i32 1, i64 0, !dbg !3462
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3464, metadata !595) #12, !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !3471, metadata !595) #12, !dbg !3472
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false, i1 true) #12, !dbg !3474
  %19 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %17, i64 %18) #12, !dbg !3475
  br label %41, !dbg !3476

; <label>:20:                                     ; preds = %62
  %21 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !3477
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3445, metadata !595), !dbg !3478
  %22 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3447, metadata !595), !dbg !3480
  %23 = icmp sgt i32 %21, %0, !dbg !3481
  %24 = icmp slt i32 %22, %0, !dbg !3483
  %25 = or i1 %23, %24, !dbg !3484
  br i1 %25, label %41, label %26, !dbg !3484

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i32 %22, %21, !dbg !3485
  %28 = sdiv i32 %27, 2, !dbg !3487
  %29 = add nsw i32 %28, %21, !dbg !3488
  %30 = icmp slt i32 %29, %0, !dbg !3489
  br i1 %30, label %32, label %31, !dbg !3490

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3448, metadata !595), !dbg !3493
  br label %33, !dbg !3494

; <label>:32:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !3495
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3448, metadata !595), !dbg !3493
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = phi i32 [ %21, %31 ], [ %22, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !3448, metadata !595), !dbg !3493
  %35 = sub nsw i32 %0, %34, !dbg !3497
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !3449, metadata !595), !dbg !3498
  %36 = icmp eq i32 %35, 0, !dbg !3499
  br i1 %36, label %41, label %37, !dbg !3501

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3502
  %39 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false, i1 true), !dbg !3502
  %40 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %38, i32 1, i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.115, i64 0, i64 0), i32 %35) #12, !dbg !3502
  br label %41, !dbg !3502

; <label>:41:                                     ; preds = %20, %33, %37, %15
  %42 = phi i32 [ 0, %15 ], [ -1, %20 ], [ 0, %33 ], [ 0, %37 ]
  ret i32 %42, !dbg !3503

; <label>:43:                                     ; preds = %3
  %44 = add nsw i32 %10, 2, !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3444, metadata !595), !dbg !3452
  %45 = zext i32 %44 to i64, !dbg !3457
  %46 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %45, i32 0, !dbg !3458
  %47 = load i32, i32* %46, align 4, !dbg !3458, !tbaa !3391
  %48 = icmp eq i32 %47, %0, !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  br i1 %48, label %15, label %49, !dbg !3461

; <label>:49:                                     ; preds = %43
  %50 = add nsw i32 %10, 3, !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3444, metadata !595), !dbg !3452
  %51 = zext i32 %50 to i64, !dbg !3457
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !3458
  %53 = load i32, i32* %52, align 4, !dbg !3458, !tbaa !3391
  %54 = icmp eq i32 %53, %0, !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  br i1 %54, label %15, label %55, !dbg !3461

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %10, 4, !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3444, metadata !595), !dbg !3452
  %57 = zext i32 %56 to i64, !dbg !3457
  %58 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %57, i32 0, !dbg !3458
  %59 = load i32, i32* %58, align 4, !dbg !3458, !tbaa !3391
  %60 = icmp eq i32 %59, %0, !dbg !3460
  %61 = add nsw i32 %10, 5, !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  br i1 %60, label %15, label %62, !dbg !3461

; <label>:62:                                     ; preds = %55
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3444, metadata !595), !dbg !3452
  %63 = icmp ult i32 %61, 35, !dbg !3504
  br i1 %63, label %9, label %20, !dbg !3453, !llvm.loop !3505
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3507 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3552, metadata !595), !dbg !3557
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3558
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3559, metadata !595), !dbg !3563
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3565
  %4 = load i32, i32* %3, align 8, !dbg !3565, !tbaa !3566
  %5 = and i32 %4, 32, !dbg !3565
  %6 = icmp eq i32 %5, 0, !dbg !3568
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3569
  %8 = icmp ne i32 %7, 0, !dbg !3570
  br i1 %6, label %9, label %19, !dbg !3571

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3573
  %11 = xor i1 %8, true, !dbg !3574
  %12 = or i1 %10, %11, !dbg !3574
  %13 = sext i1 %8 to i32, !dbg !3574
  br i1 %12, label %22, label %14, !dbg !3574

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3575
  %16 = load i32, i32* %15, align 4, !dbg !3575, !tbaa !691
  %17 = icmp ne i32 %16, 9, !dbg !3576
  %18 = sext i1 %17 to i32, !dbg !3577
  br label %22, !dbg !3577

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3578

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3580
  store i32 0, i32* %21, align 4, !dbg !3582, !tbaa !691
  br label %22, !dbg !3580

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3583
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3584 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3589, metadata !595), !dbg !3592
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3590, metadata !595), !dbg !3593
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3591, metadata !595), !dbg !3595
  %3 = icmp eq i8* %2, null, !dbg !3596
  br i1 %3, label %11, label %4, !dbg !3598

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #10, !dbg !3599
  %6 = icmp eq i32 %5, 0, !dbg !3604
  br i1 %6, label %10, label %7, !dbg !3605

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #10, !dbg !3606
  %9 = icmp eq i32 %8, 0, !dbg !3607
  br i1 %9, label %10, label %11, !dbg !3608

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3590, metadata !595), !dbg !3593
  br label %11, !dbg !3609

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3611 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3617, metadata !595), !dbg !3691
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3684, metadata !595), !dbg !3694
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3695
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3615, metadata !595), !dbg !3696
  %4 = icmp eq i8* %3, null, !dbg !3697
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %3, !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3615, metadata !595), !dbg !3696
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3700, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3631, metadata !595) #12, !dbg !3701
  %7 = icmp eq i8* %6, null, !dbg !3702
  br i1 %7, label %8, label %123, !dbg !3703

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.125, i64 0, i64 0)) #12, !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3632, metadata !595) #12, !dbg !3705
  %10 = icmp eq i8* %9, null, !dbg !3706
  br i1 %10, label %14, label %11, !dbg !3708

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3709, !tbaa !863
  %13 = icmp eq i8 %12, 0, !dbg !3710
  br i1 %13, label %14, label %15, !dbg !3711

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3712

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.126, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3632, metadata !595) #12, !dbg !3705
  %17 = tail call i64 @strlen(i8* nonnull %16) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3635, metadata !595) #12, !dbg !3714
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3637, metadata !595) #12, !dbg !3715
  %18 = icmp eq i64 %17, 0, !dbg !3716
  br i1 %18, label %24, label %19, !dbg !3717

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3718
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3718
  %22 = load i8, i8* %21, align 1, !dbg !3718, !tbaa !863
  %23 = icmp ne i8 %22, 47, !dbg !3718
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3719
  %27 = add i64 %17, 14, !dbg !3720
  %28 = add i64 %27, %26, !dbg !3721
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !3722
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3634, metadata !595) #12, !dbg !3723
  %30 = icmp eq i8* %29, null, !dbg !3724
  br i1 %30, label %121, label %31, !dbg !3724

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !3725
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3728

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3729, !tbaa !863
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3731
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !3732
  br label %37, !dbg !3733

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3731
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !3732
  br label %37, !dbg !3733

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !3734
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3639, metadata !595) #12, !dbg !3735
  %39 = icmp slt i32 %38, 0, !dbg !3736
  br i1 %39, label %119, label %40, !dbg !3737

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.128, i64 0, i64 0)) #12, !dbg !3738
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3640, metadata !595) #12, !dbg !3739
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3740
  br i1 %42, label %43, label %45, !dbg !3741

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !3742
  br label %119, !dbg !3744

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3681, metadata !595) #12, !dbg !3745
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3747

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3748

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3681, metadata !595) #12, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3748
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3749
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3750, metadata !595) #12, !dbg !3755
  %54 = load i8*, i8** %48, align 8, !dbg !3757, !tbaa !3758
  %55 = load i8*, i8** %49, align 8, !dbg !3757, !tbaa !3759
  %56 = icmp ult i8* %54, %55, !dbg !3757
  br i1 %56, label %59, label %57, !dbg !3757, !prof !3760

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !3757
  br label %63, !dbg !3757

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3757
  store i8* %60, i8** %48, align 8, !dbg !3757, !tbaa !3758
  %61 = load i8, i8* %54, align 1, !dbg !3757, !tbaa !863
  %62 = zext i8 %61 to i32, !dbg !3757
  br label %63, !dbg !3757

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3757
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3683, metadata !595) #12, !dbg !3761
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3762, !llvm.loop !3763

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3768

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3750, metadata !595) #12, !dbg !3770
  %67 = load i8*, i8** %48, align 8, !dbg !3768, !tbaa !3758
  %68 = load i8*, i8** %49, align 8, !dbg !3768, !tbaa !3759
  %69 = icmp ult i8* %67, %68, !dbg !3768
  br i1 %69, label %72, label %70, !dbg !3768, !prof !3760

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !3768
  br label %76, !dbg !3768

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3768
  store i8* %73, i8** %48, align 8, !dbg !3768, !tbaa !3758
  %74 = load i8, i8* %67, align 1, !dbg !3768, !tbaa !863
  %75 = zext i8 %74 to i32, !dbg !3768
  br label %76, !dbg !3768

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3768
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3683, metadata !595) #12, !dbg !3761
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3771, !llvm.loop !3772

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !3775
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.129, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !3776
  %81 = icmp slt i32 %80, 2, !dbg !3778
  br i1 %81, label %112, label %82, !dbg !3779

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #10, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3688, metadata !595) #12, !dbg !3781
  %84 = call i64 @strlen(i8* nonnull %47) #10, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3689, metadata !595) #12, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3690, metadata !595) #12, !dbg !3784
  %85 = icmp eq i64 %51, 0, !dbg !3785
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3787

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  %90 = add i64 %87, 2, !dbg !3788
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3681, metadata !595) #12, !dbg !3745
  br label %96, !dbg !3791

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  %94 = add i64 %93, 1, !dbg !3794
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !3795
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3681, metadata !595) #12, !dbg !3745
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3681, metadata !595) #12, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  %99 = icmp eq i8* %98, null, !dbg !3796
  br i1 %99, label %100, label %102, !dbg !3798

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  call void @free(i8* %52) #12, !dbg !3799
  br label %112, !dbg !3801

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3802
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3802
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3803
  %104 = xor i64 %84, -1, !dbg !3804
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3804
  %106 = xor i64 %83, -1, !dbg !3805
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3806, metadata !595) #12, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3809, metadata !595) #12, !dbg !3810
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !3812
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3806, metadata !595) #12, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3809, metadata !595) #12, !dbg !3814
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !3816
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3681, metadata !595) #12, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3682, metadata !595) #12, !dbg !3746
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3802
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3802
  br label %50, !dbg !3818, !llvm.loop !3772

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3802
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3802
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !3819
  %116 = icmp eq i64 %113, 0, !dbg !3820
  br i1 %116, label %119, label %117, !dbg !3822

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3823
  store i8 0, i8* %118, align 1, !dbg !3825, !tbaa !863
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3631, metadata !595) #12, !dbg !3701
  call void @free(i8* %29) #12, !dbg !3826
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3631, metadata !595) #12, !dbg !3701
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3827, !tbaa !602
  br label %123, !dbg !3828

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3631, metadata !595) #12, !dbg !3701
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3616, metadata !595), !dbg !3829
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3616, metadata !595), !dbg !3829
  %125 = load i8, i8* %124, align 1, !dbg !3830, !tbaa !863
  %126 = icmp eq i8 %125, 0, !dbg !3832
  br i1 %126, label %152, label %127, !dbg !3833

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3834

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3616, metadata !595), !dbg !3829
  %131 = call i32 @strcmp(i8* %5, i8* %130) #10, !dbg !3834
  %132 = icmp eq i32 %131, 0, !dbg !3836
  br i1 %132, label %139, label %133, !dbg !3837

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3838
  br i1 %134, label %135, label %143, !dbg !3839

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3840
  %137 = load i8, i8* %136, align 1, !dbg !3840, !tbaa !863
  %138 = icmp eq i8 %137, 0, !dbg !3841
  br i1 %138, label %139, label %143, !dbg !3842

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #10, !dbg !3843
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3845
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3615, metadata !595), !dbg !3696
  br label %152, !dbg !3847

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #10, !dbg !3848
  %145 = add i64 %144, 1, !dbg !3849
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3616, metadata !595), !dbg !3829
  %147 = call i64 @strlen(i8* %146) #10, !dbg !3851
  %148 = add i64 %147, 1, !dbg !3852
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3616, metadata !595), !dbg !3829
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3616, metadata !595), !dbg !3829
  %150 = load i8, i8* %149, align 1, !dbg !3830, !tbaa !863
  %151 = icmp eq i8 %150, 0, !dbg !3832
  br i1 %151, label %152, label %128, !dbg !3833, !llvm.loop !3854

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3615, metadata !595), !dbg !3696
  %154 = load i8, i8* %153, align 1, !dbg !3856, !tbaa !863
  %155 = icmp eq i8 %154, 0, !dbg !3858
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %153, !dbg !3859
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3615, metadata !595), !dbg !3696
  ret i8* %156, !dbg !3860
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3861 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3906, metadata !595), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3907, metadata !595), !dbg !3911
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3909, metadata !595), !dbg !3912
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3913
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3908, metadata !595), !dbg !3914
  %3 = icmp slt i32 %2, 0, !dbg !3915
  br i1 %3, label %4, label %6, !dbg !3917

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3918
  br label %24, !dbg !3919

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3920
  %8 = icmp eq i32 %7, 0, !dbg !3920
  br i1 %8, label %13, label %9, !dbg !3922

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3923
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3924
  %12 = icmp eq i64 %11, -1, !dbg !3925
  br i1 %12, label %16, label %13, !dbg !3926

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3927
  %15 = icmp eq i32 %14, 0, !dbg !3927
  br i1 %15, label %16, label %18, !dbg !3928

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3907, metadata !595), !dbg !3911
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3909, metadata !595), !dbg !3912
  br label %24, !dbg !3930

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3931
  %20 = load i32, i32* %19, align 4, !dbg !3931, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3907, metadata !595), !dbg !3911
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3907, metadata !595), !dbg !3911
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3909, metadata !595), !dbg !3912
  %22 = icmp eq i32 %20, 0, !dbg !3932
  br i1 %22, label %24, label %23, !dbg !3930

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3934, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3909, metadata !595), !dbg !3912
  br label %24, !dbg !3936

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3937
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3938 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3983, metadata !595), !dbg !3984
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3985
  br i1 %2, label %6, label %3, !dbg !3987

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3988
  %5 = icmp eq i32 %4, 0, !dbg !3988
  br i1 %5, label %6, label %8, !dbg !3989

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3990
  br label %17, !dbg !3991

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3992, metadata !595) #12, !dbg !3997
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3999
  %10 = load i32, i32* %9, align 8, !dbg !3999, !tbaa !3566
  %11 = and i32 %10, 256, !dbg !4001
  %12 = icmp eq i32 %11, 0, !dbg !4001
  br i1 %12, label %15, label %13, !dbg !4002

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4003
  br label %15, !dbg !4003

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4004
  br label %17, !dbg !4005

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4006
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4007 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4053, metadata !595), !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4054, metadata !595), !dbg !4060
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4055, metadata !595), !dbg !4061
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4062
  %5 = load i8*, i8** %4, align 8, !dbg !4062, !tbaa !3759
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4063
  %7 = load i8*, i8** %6, align 8, !dbg !4063, !tbaa !3758
  %8 = icmp eq i8* %5, %7, !dbg !4064
  br i1 %8, label %9, label %28, !dbg !4065

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4066
  %11 = load i8*, i8** %10, align 8, !dbg !4066, !tbaa !4067
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4068
  %13 = load i8*, i8** %12, align 8, !dbg !4068, !tbaa !4069
  %14 = icmp eq i8* %11, %13, !dbg !4070
  br i1 %14, label %15, label %28, !dbg !4071

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4072
  %17 = load i8*, i8** %16, align 8, !dbg !4072, !tbaa !4073
  %18 = icmp eq i8* %17, null, !dbg !4074
  br i1 %18, label %19, label %28, !dbg !4075

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4076
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4056, metadata !595), !dbg !4078
  %22 = icmp eq i64 %21, -1, !dbg !4079
  br i1 %22, label %30, label %23, !dbg !4081

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4082
  %25 = load i32, i32* %24, align 8, !dbg !4083, !tbaa !3566
  %26 = and i32 %25, -17, !dbg !4083
  store i32 %26, i32* %24, align 8, !dbg !4083, !tbaa !3566
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4084
  store i64 %21, i64* %27, align 8, !dbg !4085, !tbaa !4086
  br label %30, !dbg !4087

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4088
  br label %30, !dbg !4089

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4090
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
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !538, !53, !58, !67, !74, !81, !542, !167, !550, !567, !569, !571, !176, !574, !576, !191, !578, !580, !582}
!llvm.ident = !{!584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584}
!llvm.module.flags = !{!585, !586, !587, !588, !589}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !3, line: 54, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/kill.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !0, !33}
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
!33 = !DIGlobalVariableExpression(var: !34)
!34 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 60, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1536, elements: !46)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !38, line: 50, size: 256, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !{!40, !41, !43, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 52, baseType: !17, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !37, file: !38, line: 55, baseType: !42, size: 32, offset: 64)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !37, file: !38, line: 56, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !37, file: !38, line: 57, baseType: !42, size: 32, offset: 192)
!46 = !{!47}
!47 = !DISubrange(count: 6)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 904, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 113)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "Version", scope: !53, file: !54, line: 2, type: !17, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !55)
!54 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!51}
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "file_name", scope: !58, file: !63, line: 36, type: !17, isLocal: true, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !60)
!59 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !{!56, !61}
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !58, file: !63, line: 46, type: !64, isLocal: true, isDefinition: true)
!63 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "exit_failure", scope: !67, file: !70, line: 24, type: !71, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !69)
!68 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !{!65}
!70 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "program_name", scope: !74, file: !78, line: 33, type: !17, isLocal: false, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !77)
!75 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !{!8, !6}
!77 = !{!72}
!78 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !81, file: !126, line: 77, type: !161, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !118, globals: !123)
!82 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !{!84, !98, !103}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !85, line: 32, size: 32, elements: !86)
!85 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!87 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!88 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!89 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!90 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!91 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!92 = !DIEnumerator(name: "c_quoting_style", value: 5)
!93 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!94 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!95 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!96 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!97 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !85, line: 242, size: 32, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!101 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!102 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 46, size: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!106 = !DIEnumerator(name: "_ISupper", value: 256)
!107 = !DIEnumerator(name: "_ISlower", value: 512)
!108 = !DIEnumerator(name: "_ISalpha", value: 1024)
!109 = !DIEnumerator(name: "_ISdigit", value: 2048)
!110 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!111 = !DIEnumerator(name: "_ISspace", value: 8192)
!112 = !DIEnumerator(name: "_ISprint", value: 16384)
!113 = !DIEnumerator(name: "_ISgraph", value: 32768)
!114 = !DIEnumerator(name: "_ISblank", value: 1)
!115 = !DIEnumerator(name: "_IScntrl", value: 2)
!116 = !DIEnumerator(name: "_ISpunct", value: 4)
!117 = !DIEnumerator(name: "_ISalnum", value: 8)
!118 = !{!42, !119, !120, !6}
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 62, baseType: !122)
!121 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !{!79, !124, !131, !143, !145, !150, !157, !159}
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !81, file: !126, line: 93, type: !127, isLocal: false, isDefinition: true)
!126 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 320, elements: !129)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!129 = !{!130}
!130 = !DISubrange(count: 10)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !81, file: !126, line: 1043, type: !133, isLocal: false, isDefinition: true)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !126, line: 57, size: 448, elements: !134)
!134 = !{!135, !136, !137, !141, !142}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !133, file: !126, line: 60, baseType: !84, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !126, line: 63, baseType: !42, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !133, file: !126, line: 67, baseType: !138, size: 256, offset: 64)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !133, file: !126, line: 70, baseType: !17, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !133, file: !126, line: 73, baseType: !17, size: 64, offset: 384)
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !81, file: !126, line: 108, type: !133, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "slot0", scope: !81, file: !126, line: 834, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "slotvec", scope: !81, file: !126, line: 837, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !126, line: 826, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !153, file: !126, line: 828, baseType: !120, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !153, file: !126, line: 829, baseType: !6, size: 64, offset: 64)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "nslots", scope: !81, file: !126, line: 835, type: !42, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "slotvec0", scope: !81, file: !126, line: 836, type: !153, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 704, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!163 = !{!164}
!164 = !DISubrange(count: 11)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !167, file: !170, line: 26, type: !171, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !169)
!168 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !{!165}
!170 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "numname_table", scope: !176, file: !180, line: 41, type: !181, isLocal: true, isDefinition: true)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178, globals: !179)
!177 = !DIFile(filename: "./lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!178 = !{!9}
!179 = !{!174}
!180 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 3360, elements: !187)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !180, line: 41, size: 96, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !182, file: !180, line: 41, baseType: !42, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !180, line: 41, baseType: !186, size: 64, offset: 32)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !139)
!187 = !{!188}
!188 = !DISubrange(count: 35)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !191, file: !536, line: 120, type: !537, isLocal: true, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !193, retainedTypes: !532, globals: !535)
!192 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!194}
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !195, line: 41, size: 32, elements: !196)
!195 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!197 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!198 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!199 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!200 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!201 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!202 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!203 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!204 = !DIEnumerator(name: "DAY_1", value: 131079)
!205 = !DIEnumerator(name: "DAY_2", value: 131080)
!206 = !DIEnumerator(name: "DAY_3", value: 131081)
!207 = !DIEnumerator(name: "DAY_4", value: 131082)
!208 = !DIEnumerator(name: "DAY_5", value: 131083)
!209 = !DIEnumerator(name: "DAY_6", value: 131084)
!210 = !DIEnumerator(name: "DAY_7", value: 131085)
!211 = !DIEnumerator(name: "ABMON_1", value: 131086)
!212 = !DIEnumerator(name: "ABMON_2", value: 131087)
!213 = !DIEnumerator(name: "ABMON_3", value: 131088)
!214 = !DIEnumerator(name: "ABMON_4", value: 131089)
!215 = !DIEnumerator(name: "ABMON_5", value: 131090)
!216 = !DIEnumerator(name: "ABMON_6", value: 131091)
!217 = !DIEnumerator(name: "ABMON_7", value: 131092)
!218 = !DIEnumerator(name: "ABMON_8", value: 131093)
!219 = !DIEnumerator(name: "ABMON_9", value: 131094)
!220 = !DIEnumerator(name: "ABMON_10", value: 131095)
!221 = !DIEnumerator(name: "ABMON_11", value: 131096)
!222 = !DIEnumerator(name: "ABMON_12", value: 131097)
!223 = !DIEnumerator(name: "MON_1", value: 131098)
!224 = !DIEnumerator(name: "MON_2", value: 131099)
!225 = !DIEnumerator(name: "MON_3", value: 131100)
!226 = !DIEnumerator(name: "MON_4", value: 131101)
!227 = !DIEnumerator(name: "MON_5", value: 131102)
!228 = !DIEnumerator(name: "MON_6", value: 131103)
!229 = !DIEnumerator(name: "MON_7", value: 131104)
!230 = !DIEnumerator(name: "MON_8", value: 131105)
!231 = !DIEnumerator(name: "MON_9", value: 131106)
!232 = !DIEnumerator(name: "MON_10", value: 131107)
!233 = !DIEnumerator(name: "MON_11", value: 131108)
!234 = !DIEnumerator(name: "MON_12", value: 131109)
!235 = !DIEnumerator(name: "AM_STR", value: 131110)
!236 = !DIEnumerator(name: "PM_STR", value: 131111)
!237 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!238 = !DIEnumerator(name: "D_FMT", value: 131113)
!239 = !DIEnumerator(name: "T_FMT", value: 131114)
!240 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!241 = !DIEnumerator(name: "ERA", value: 131116)
!242 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!243 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!244 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!245 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!246 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!247 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!248 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!249 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!250 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!251 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!252 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!253 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!254 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!255 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!256 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!257 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!258 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!259 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!260 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!261 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!262 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!263 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!264 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!265 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!266 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!267 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!268 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!269 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!270 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!271 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!272 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!273 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!274 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!275 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!276 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!277 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!278 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!279 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!280 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!281 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!282 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!283 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!284 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!285 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!286 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!287 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!288 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!289 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!290 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!291 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!292 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!293 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!294 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!295 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!296 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!297 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!301 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!302 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!303 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!304 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!305 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!306 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!307 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!308 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!309 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!310 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!311 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!312 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!313 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!314 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!315 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!316 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!317 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!318 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!319 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!320 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!321 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!322 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!323 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!324 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!325 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!326 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!327 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!328 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!329 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!330 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!339 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!340 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!341 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!342 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!343 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!344 = !DIEnumerator(name: "CODESET", value: 14)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!346 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!347 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!348 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!400 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!401 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!416 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!417 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!418 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!419 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!420 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!421 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!422 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!423 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!424 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!425 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!426 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!427 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!428 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!429 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!430 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!431 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!432 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!433 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!434 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!435 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!436 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!437 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!438 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!455 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!456 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!459 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!460 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!461 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!462 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!463 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!464 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!465 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!466 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!467 = !DIEnumerator(name: "THOUSEP", value: 65537)
!468 = !DIEnumerator(name: "__GROUPING", value: 65538)
!469 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!470 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!471 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!472 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!473 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!474 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!475 = !DIEnumerator(name: "__YESSTR", value: 327682)
!476 = !DIEnumerator(name: "__NOSTR", value: 327683)
!477 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!478 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!479 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!480 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!481 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!482 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!489 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!490 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!491 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!499 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!500 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!503 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!504 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!510 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!511 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!512 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!513 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!530 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!531 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!532 = !{!8, !6, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!535 = !{!189}
!536 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !540)
!539 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!9, !541}
!541 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !544, retainedTypes: !549)
!543 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !{!545}
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !546, line: 41, size: 32, elements: !547)
!546 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !{!548}
!548 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!549 = !{!8}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !552, retainedTypes: !566)
!551 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = !{!553}
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !555, file: !554, line: 192, size: 32, elements: !564)
!554 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = distinct !DISubprogram(name: "x2nrealloc", scope: !554, file: !554, line: 180, type: !556, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !559)
!556 = !DISubroutineType(types: !557)
!557 = !{!8, !8, !558, !120}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "p", arg: 1, scope: !555, file: !554, line: 180, type: !8)
!561 = !DILocalVariable(name: "pn", arg: 2, scope: !555, file: !554, line: 180, type: !558)
!562 = !DILocalVariable(name: "s", arg: 3, scope: !555, file: !554, line: 180, type: !120)
!563 = !DILocalVariable(name: "n", scope: !555, file: !554, line: 182, type: !120)
!564 = !{!565}
!565 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!566 = !{!120, !6, !8}
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!568 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !549)
!570 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!572 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!120}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!575 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!577 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!579 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !549)
!581 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !549)
!583 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!585 = !{i32 2, !"Dwarf Version", i32 4}
!586 = !{i32 2, !"Debug Info Version", i32 3}
!587 = !{i32 1, !"wchar_size", i32 4}
!588 = !{i32 7, !"PIC Level", i32 2}
!589 = !{i32 7, !"PIE Level", i32 2}
!590 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 71, type: !591, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !42}
!593 = !{!594}
!594 = !DILocalVariable(name: "status", arg: 1, scope: !590, file: !3, line: 71, type: !42)
!595 = !DIExpression()
!596 = !DILocation(line: 71, column: 12, scope: !590)
!597 = !DILocation(line: 73, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !3, line: 73, column: 7)
!599 = !DILocation(line: 73, column: 7, scope: !590)
!600 = !DILocation(line: 74, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 74, column: 5)
!602 = !{!603, !603, i64 0}
!603 = !{!"any pointer", !604, i64 0}
!604 = !{!"omnipotent char", !605, i64 0}
!605 = !{!"Simple C/C++ TBAA"}
!606 = !DILocation(line: 77, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !3, line: 76, column: 5)
!608 = !DILocation(line: 83, column: 7, scope: !607)
!609 = !DILocation(line: 587, column: 3, scope: !610, inlinedAt: !613)
!610 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !14, file: !14, line: 585, type: !611, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!611 = !DISubroutineType(types: !612)
!612 = !{null}
!613 = distinct !DILocation(line: 87, column: 7, scope: !607)
!614 = !DILocation(line: 89, column: 7, scope: !607)
!615 = !DILocation(line: 95, column: 7, scope: !607)
!616 = !DILocation(line: 96, column: 7, scope: !607)
!617 = !DILocation(line: 97, column: 7, scope: !607)
!618 = !DILocation(line: 102, column: 7, scope: !607)
!619 = !DILocation(line: 642, column: 15, scope: !13, inlinedAt: !620)
!620 = distinct !DILocation(line: 103, column: 7, scope: !607)
!621 = !DILocation(line: 651, column: 3, scope: !13, inlinedAt: !620)
!622 = !DILocation(line: 655, column: 29, scope: !13, inlinedAt: !620)
!623 = !DILocation(line: 655, column: 15, scope: !13, inlinedAt: !620)
!624 = !DILocation(line: 656, column: 7, scope: !625, inlinedAt: !620)
!625 = distinct !DILexicalBlock(scope: !13, file: !14, line: 656, column: 7)
!626 = !DILocation(line: 656, column: 19, scope: !625, inlinedAt: !620)
!627 = !DILocation(line: 656, column: 22, scope: !625, inlinedAt: !620)
!628 = !DILocation(line: 656, column: 7, scope: !13, inlinedAt: !620)
!629 = !DILocation(line: 662, column: 7, scope: !630, inlinedAt: !620)
!630 = distinct !DILexicalBlock(scope: !625, file: !14, line: 657, column: 5)
!631 = !DILocation(line: 664, column: 5, scope: !630, inlinedAt: !620)
!632 = !DILocation(line: 665, column: 3, scope: !13, inlinedAt: !620)
!633 = !DILocation(line: 667, column: 3, scope: !13, inlinedAt: !620)
!634 = !DILocation(line: 105, column: 3, scope: !590)
!635 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !636, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !639)
!636 = !DISubroutineType(types: !637)
!637 = !{!42, !42, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!639 = !{!640, !641, !642, !643, !644, !645, !646}
!640 = !DILocalVariable(name: "argc", arg: 1, scope: !635, file: !3, line: 221, type: !42)
!641 = !DILocalVariable(name: "argv", arg: 2, scope: !635, file: !3, line: 221, type: !638)
!642 = !DILocalVariable(name: "optc", scope: !635, file: !3, line: 223, type: !42)
!643 = !DILocalVariable(name: "list", scope: !635, file: !3, line: 224, type: !64)
!644 = !DILocalVariable(name: "table", scope: !635, file: !3, line: 225, type: !64)
!645 = !DILocalVariable(name: "signum", scope: !635, file: !3, line: 226, type: !42)
!646 = !DILocalVariable(name: "signame", scope: !635, file: !3, line: 227, type: !647)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 152, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 19)
!650 = !DILocalVariable(name: "signame", scope: !651, file: !3, line: 130, type: !647)
!651 = distinct !DISubprogram(name: "list_signals", scope: !3, file: !3, line: 126, type: !652, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !656)
!652 = !DISubroutineType(types: !653)
!653 = !{!42, !64, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!656 = !{!657, !658, !659, !660, !650, !661, !664, !665}
!657 = !DILocalVariable(name: "table", arg: 1, scope: !651, file: !3, line: 126, type: !64)
!658 = !DILocalVariable(name: "argv", arg: 2, scope: !651, file: !3, line: 126, type: !654)
!659 = !DILocalVariable(name: "signum", scope: !651, file: !3, line: 128, type: !42)
!660 = !DILocalVariable(name: "status", scope: !651, file: !3, line: 129, type: !42)
!661 = !DILocalVariable(name: "name_width", scope: !662, file: !3, line: 134, type: !9)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 133, column: 5)
!663 = distinct !DILexicalBlock(scope: !651, file: !3, line: 132, column: 7)
!664 = !DILocalVariable(name: "num_width", scope: !662, file: !3, line: 137, type: !9)
!665 = !DILocalVariable(name: "len", scope: !666, file: !3, line: 145, type: !120)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 144, column: 11)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 143, column: 13)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 142, column: 7)
!669 = distinct !DILexicalBlock(scope: !662, file: !3, line: 142, column: 7)
!670 = !DILocation(line: 130, column: 8, scope: !651, inlinedAt: !671)
!671 = distinct !DILocation(line: 312, column: 13, scope: !635)
!672 = !DILocation(line: 221, column: 11, scope: !635)
!673 = !DILocation(line: 221, column: 24, scope: !635)
!674 = !DILocation(line: 224, column: 8, scope: !635)
!675 = !DILocation(line: 225, column: 8, scope: !635)
!676 = !DILocation(line: 226, column: 7, scope: !635)
!677 = !DILocation(line: 227, column: 3, scope: !635)
!678 = !DILocation(line: 227, column: 8, scope: !635)
!679 = !DILocation(line: 230, column: 21, scope: !635)
!680 = !DILocation(line: 230, column: 3, scope: !635)
!681 = !DILocation(line: 231, column: 3, scope: !635)
!682 = !DILocation(line: 232, column: 3, scope: !635)
!683 = !DILocation(line: 233, column: 3, scope: !635)
!684 = !DILocation(line: 235, column: 3, scope: !635)
!685 = !DILocation(line: 237, column: 18, scope: !635)
!686 = !DILocation(line: 223, column: 7, scope: !635)
!687 = !DILocation(line: 237, column: 3, scope: !635)
!688 = !DILocation(line: 243, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 243, column: 13)
!690 = distinct !DILexicalBlock(scope: !635, file: !3, line: 240, column: 7)
!691 = !{!692, !692, i64 0}
!692 = !{!"int", !604, i64 0}
!693 = !DILocation(line: 243, column: 20, scope: !689)
!694 = !DILocation(line: 243, column: 13, scope: !690)
!695 = !DILocation(line: 246, column: 19, scope: !696)
!696 = distinct !DILexicalBlock(scope: !689, file: !3, line: 244, column: 11)
!697 = !DILocation(line: 247, column: 13, scope: !696)
!698 = !DILocation(line: 256, column: 15, scope: !699)
!699 = distinct !DILexicalBlock(scope: !690, file: !3, line: 256, column: 13)
!700 = !DILocation(line: 256, column: 13, scope: !690)
!701 = !DILocation(line: 257, column: 32, scope: !699)
!702 = !DILocation(line: 257, column: 20, scope: !699)
!703 = !DILocation(line: 257, column: 39, scope: !699)
!704 = !DILocation(line: 257, column: 37, scope: !699)
!705 = !DILocation(line: 257, column: 18, scope: !699)
!706 = !DILocation(line: 257, column: 11, scope: !699)
!707 = !DILocation(line: 258, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !690, file: !3, line: 258, column: 13)
!709 = !DILocation(line: 258, column: 35, scope: !708)
!710 = !DILocation(line: 258, column: 23, scope: !708)
!711 = !DILocation(line: 258, column: 40, scope: !708)
!712 = !DILocation(line: 258, column: 20, scope: !708)
!713 = !DILocation(line: 258, column: 13, scope: !690)
!714 = !DILocation(line: 260, column: 26, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !3, line: 259, column: 11)
!716 = !DILocation(line: 260, column: 13, scope: !715)
!717 = !DILocation(line: 261, column: 13, scope: !715)
!718 = !DILocation(line: 263, column: 15, scope: !690)
!719 = !DILocation(line: 263, column: 9, scope: !690)
!720 = !DILocation(line: 267, column: 15, scope: !721)
!721 = distinct !DILexicalBlock(scope: !690, file: !3, line: 267, column: 13)
!722 = !DILocation(line: 267, column: 13, scope: !690)
!723 = !DILocation(line: 269, column: 26, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !3, line: 268, column: 11)
!725 = !DILocation(line: 269, column: 70, scope: !724)
!726 = !DILocation(line: 269, column: 63, scope: !724)
!727 = !DILocation(line: 269, column: 13, scope: !724)
!728 = !DILocation(line: 270, column: 13, scope: !724)
!729 = !DILocation(line: 272, column: 31, scope: !690)
!730 = !DILocation(line: 272, column: 18, scope: !690)
!731 = !DILocation(line: 273, column: 20, scope: !732)
!732 = distinct !DILexicalBlock(scope: !690, file: !3, line: 273, column: 13)
!733 = !DILocation(line: 273, column: 13, scope: !690)
!734 = distinct !{!734, !687, !735}
!735 = !DILocation(line: 294, column: 7, scope: !635)
!736 = !DILocation(line: 274, column: 11, scope: !732)
!737 = !DILocation(line: 282, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !690, file: !3, line: 282, column: 13)
!739 = !DILocation(line: 290, column: 7, scope: !690)
!740 = !DILocation(line: 291, column: 7, scope: !690)
!741 = !DILocation(line: 293, column: 9, scope: !690)
!742 = !DILocation(line: 297, column: 14, scope: !743)
!743 = distinct !DILexicalBlock(scope: !635, file: !3, line: 297, column: 7)
!744 = !DILocation(line: 297, column: 7, scope: !635)
!745 = !DILocation(line: 299, column: 12, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 299, column: 12)
!747 = !DILocation(line: 299, column: 12, scope: !743)
!748 = !DILocation(line: 301, column: 20, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 300, column: 5)
!750 = !DILocation(line: 301, column: 7, scope: !749)
!751 = !DILocation(line: 302, column: 7, scope: !749)
!752 = !DILocation(line: 305, column: 10, scope: !753)
!753 = distinct !DILexicalBlock(scope: !635, file: !3, line: 305, column: 8)
!754 = !DILocation(line: 305, column: 26, scope: !753)
!755 = !DILocation(line: 305, column: 23, scope: !753)
!756 = !DILocation(line: 305, column: 15, scope: !753)
!757 = !DILocation(line: 307, column: 20, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 306, column: 5)
!759 = !DILocation(line: 307, column: 7, scope: !758)
!760 = !DILocation(line: 308, column: 7, scope: !758)
!761 = !DILocation(line: 311, column: 11, scope: !635)
!762 = !DILocation(line: 312, column: 27, scope: !635)
!763 = !DILocation(line: 312, column: 55, scope: !635)
!764 = !DILocation(line: 312, column: 34, scope: !635)
!765 = !DILocation(line: 126, column: 20, scope: !651, inlinedAt: !671)
!766 = !DILocation(line: 126, column: 40, scope: !651, inlinedAt: !671)
!767 = !DILocation(line: 129, column: 7, scope: !651, inlinedAt: !671)
!768 = !DILocation(line: 130, column: 3, scope: !651, inlinedAt: !671)
!769 = !DILocation(line: 132, column: 7, scope: !651, inlinedAt: !671)
!770 = !DILocation(line: 143, column: 13, scope: !667, inlinedAt: !671)
!771 = !DILocation(line: 128, column: 7, scope: !651, inlinedAt: !671)
!772 = !DILocation(line: 134, column: 20, scope: !662, inlinedAt: !671)
!773 = !DILocation(line: 143, column: 39, scope: !667, inlinedAt: !671)
!774 = !DILocation(line: 143, column: 13, scope: !668, inlinedAt: !671)
!775 = !DILocation(line: 145, column: 26, scope: !666, inlinedAt: !671)
!776 = !DILocation(line: 145, column: 20, scope: !666, inlinedAt: !671)
!777 = !DILocation(line: 146, column: 17, scope: !778, inlinedAt: !671)
!778 = distinct !DILexicalBlock(scope: !666, file: !3, line: 146, column: 17)
!779 = !DILocation(line: 146, column: 28, scope: !778, inlinedAt: !671)
!780 = !DILocation(line: 147, column: 28, scope: !778, inlinedAt: !671)
!781 = !DILocation(line: 146, column: 17, scope: !666, inlinedAt: !671)
!782 = !DILocation(line: 148, column: 11, scope: !666, inlinedAt: !671)
!783 = !DILocation(line: 142, column: 54, scope: !668, inlinedAt: !671)
!784 = !DILocation(line: 142, column: 31, scope: !668, inlinedAt: !671)
!785 = !DILocation(line: 142, column: 7, scope: !669, inlinedAt: !671)
!786 = distinct !{!786, !787, !788}
!787 = !DILocation(line: 142, column: 7, scope: !669)
!788 = !DILocation(line: 148, column: 11, scope: !669)
!789 = !DILocation(line: 150, column: 11, scope: !790, inlinedAt: !671)
!790 = distinct !DILexicalBlock(scope: !662, file: !3, line: 150, column: 11)
!791 = !DILocation(line: 150, column: 11, scope: !662, inlinedAt: !671)
!792 = !DILocation(line: 161, column: 15, scope: !793, inlinedAt: !671)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 161, column: 15)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 160, column: 9)
!795 = distinct !DILexicalBlock(scope: !790, file: !3, line: 160, column: 9)
!796 = !DILocation(line: 151, column: 16, scope: !797, inlinedAt: !671)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 151, column: 9)
!798 = distinct !DILexicalBlock(scope: !790, file: !3, line: 151, column: 9)
!799 = !DILocation(line: 151, column: 9, scope: !798, inlinedAt: !671)
!800 = !DILocation(line: 153, column: 22, scope: !801, inlinedAt: !671)
!801 = distinct !DILexicalBlock(scope: !797, file: !3, line: 152, column: 11)
!802 = !DILocation(line: 154, column: 24, scope: !803, inlinedAt: !671)
!803 = distinct !DILexicalBlock(scope: !801, file: !3, line: 154, column: 17)
!804 = !DILocation(line: 154, column: 17, scope: !801, inlinedAt: !671)
!805 = !DILocalVariable(name: "num_width", arg: 1, scope: !806, file: !3, line: 113, type: !42)
!806 = distinct !DISubprogram(name: "print_table_row", scope: !3, file: !3, line: 113, type: !807, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !42, !42, !42, !17}
!809 = !{!805, !810, !811, !812, !813}
!810 = !DILocalVariable(name: "signum", arg: 2, scope: !806, file: !3, line: 113, type: !42)
!811 = !DILocalVariable(name: "name_width", arg: 3, scope: !806, file: !3, line: 114, type: !42)
!812 = !DILocalVariable(name: "signame", arg: 4, scope: !806, file: !3, line: 114, type: !17)
!813 = !DILocalVariable(name: "description", scope: !806, file: !3, line: 116, type: !17)
!814 = !DILocation(line: 113, column: 22, scope: !806, inlinedAt: !815)
!815 = distinct !DILocation(line: 157, column: 15, scope: !803, inlinedAt: !671)
!816 = !DILocation(line: 113, column: 37, scope: !806, inlinedAt: !815)
!817 = !DILocation(line: 114, column: 22, scope: !806, inlinedAt: !815)
!818 = !DILocation(line: 114, column: 46, scope: !806, inlinedAt: !815)
!819 = !DILocation(line: 116, column: 29, scope: !806, inlinedAt: !815)
!820 = !DILocation(line: 116, column: 15, scope: !806, inlinedAt: !815)
!821 = !DILocation(line: 117, column: 3, scope: !806, inlinedAt: !815)
!822 = !DILocation(line: 151, column: 27, scope: !797, inlinedAt: !671)
!823 = distinct !{!823, !824, !825}
!824 = !DILocation(line: 151, column: 9, scope: !798)
!825 = !DILocation(line: 158, column: 11, scope: !798)
!826 = !DILocation(line: 161, column: 41, scope: !793, inlinedAt: !671)
!827 = !DILocation(line: 161, column: 15, scope: !794, inlinedAt: !671)
!828 = !DILocation(line: 113, column: 22, scope: !806, inlinedAt: !829)
!829 = distinct !DILocation(line: 162, column: 13, scope: !793, inlinedAt: !671)
!830 = !DILocation(line: 113, column: 37, scope: !806, inlinedAt: !829)
!831 = !DILocation(line: 114, column: 22, scope: !806, inlinedAt: !829)
!832 = !DILocation(line: 114, column: 46, scope: !806, inlinedAt: !829)
!833 = !DILocation(line: 116, column: 29, scope: !806, inlinedAt: !829)
!834 = !DILocation(line: 116, column: 15, scope: !806, inlinedAt: !829)
!835 = !DILocation(line: 117, column: 3, scope: !806, inlinedAt: !829)
!836 = !DILocation(line: 162, column: 13, scope: !793, inlinedAt: !671)
!837 = !DILocation(line: 160, column: 56, scope: !794, inlinedAt: !671)
!838 = !DILocation(line: 160, column: 33, scope: !794, inlinedAt: !671)
!839 = !DILocation(line: 160, column: 9, scope: !795, inlinedAt: !671)
!840 = distinct !{!840, !841, !842}
!841 = !DILocation(line: 160, column: 9, scope: !795)
!842 = !DILocation(line: 162, column: 68, scope: !795)
!843 = !DILocation(line: 166, column: 11, scope: !844, inlinedAt: !671)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 166, column: 11)
!845 = distinct !DILexicalBlock(scope: !663, file: !3, line: 165, column: 5)
!846 = !DILocation(line: 166, column: 11, scope: !845, inlinedAt: !671)
!847 = !DILocation(line: 182, column: 15, scope: !848, inlinedAt: !671)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 182, column: 15)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 181, column: 9)
!850 = distinct !DILexicalBlock(scope: !844, file: !3, line: 181, column: 9)
!851 = !DILocation(line: 167, column: 16, scope: !852, inlinedAt: !671)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 167, column: 9)
!853 = distinct !DILexicalBlock(scope: !844, file: !3, line: 167, column: 9)
!854 = !DILocation(line: 167, column: 9, scope: !853, inlinedAt: !671)
!855 = !DILocation(line: 169, column: 22, scope: !856, inlinedAt: !671)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 168, column: 11)
!857 = !DILocation(line: 170, column: 24, scope: !858, inlinedAt: !671)
!858 = distinct !DILexicalBlock(scope: !856, file: !3, line: 170, column: 17)
!859 = !DILocation(line: 170, column: 17, scope: !856, inlinedAt: !671)
!860 = !DILocation(line: 174, column: 21, scope: !861, inlinedAt: !671)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 174, column: 21)
!862 = distinct !DILexicalBlock(scope: !858, file: !3, line: 173, column: 15)
!863 = !{!604, !604, i64 0}
!864 = !DILocation(line: 174, column: 21, scope: !862, inlinedAt: !671)
!865 = !DILocation(line: 175, column: 19, scope: !861, inlinedAt: !671)
!866 = !DILocation(line: 177, column: 19, scope: !861, inlinedAt: !671)
!867 = !DILocation(line: 167, column: 27, scope: !852, inlinedAt: !671)
!868 = distinct !{!868, !869, !870}
!869 = !DILocation(line: 167, column: 9, scope: !853)
!870 = !DILocation(line: 179, column: 11, scope: !853)
!871 = !DILocation(line: 182, column: 41, scope: !848, inlinedAt: !671)
!872 = !DILocation(line: 182, column: 15, scope: !849, inlinedAt: !671)
!873 = !DILocation(line: 183, column: 13, scope: !848, inlinedAt: !671)
!874 = !DILocation(line: 181, column: 56, scope: !849, inlinedAt: !671)
!875 = !DILocation(line: 181, column: 33, scope: !849, inlinedAt: !671)
!876 = !DILocation(line: 181, column: 9, scope: !850, inlinedAt: !671)
!877 = distinct !{!877, !878, !879}
!878 = !DILocation(line: 181, column: 9, scope: !850)
!879 = !DILocation(line: 183, column: 26, scope: !850)
!880 = !DILocation(line: 187, column: 1, scope: !651, inlinedAt: !671)
!881 = !DILocation(line: 313, column: 40, scope: !635)
!882 = !DILocalVariable(name: "signum", arg: 1, scope: !883, file: !3, line: 193, type: !42)
!883 = distinct !DISubprogram(name: "send_signals", scope: !3, file: !3, line: 193, type: !884, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{!42, !42, !654}
!886 = !{!882, !887, !888, !889, !890, !892, !898}
!887 = !DILocalVariable(name: "argv", arg: 2, scope: !883, file: !3, line: 193, type: !654)
!888 = !DILocalVariable(name: "status", scope: !883, file: !3, line: 195, type: !42)
!889 = !DILocalVariable(name: "arg", scope: !883, file: !3, line: 196, type: !17)
!890 = !DILocalVariable(name: "endp", scope: !891, file: !3, line: 200, type: !6)
!891 = distinct !DILexicalBlock(scope: !883, file: !3, line: 199, column: 5)
!892 = !DILocalVariable(name: "n", scope: !891, file: !3, line: 201, type: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !894, line: 111, baseType: !895)
!894 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !896, line: 61, baseType: !897)
!896 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!897 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!898 = !DILocalVariable(name: "pid", scope: !891, file: !3, line: 202, type: !899)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !900, line: 98, baseType: !901)
!900 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !896, line: 142, baseType: !42)
!902 = !DILocation(line: 193, column: 19, scope: !883, inlinedAt: !903)
!903 = distinct !DILocation(line: 313, column: 13, scope: !635)
!904 = !DILocation(line: 193, column: 40, scope: !883, inlinedAt: !903)
!905 = !DILocation(line: 195, column: 7, scope: !883, inlinedAt: !903)
!906 = !DILocation(line: 196, column: 21, scope: !883, inlinedAt: !903)
!907 = !DILocation(line: 196, column: 15, scope: !883, inlinedAt: !903)
!908 = !DILocation(line: 198, column: 3, scope: !883, inlinedAt: !903)
!909 = distinct !{!909, !910, !911}
!910 = !DILocation(line: 198, column: 3, scope: !883)
!911 = !DILocation(line: 215, column: 25, scope: !883)
!912 = !DILocation(line: 200, column: 7, scope: !891, inlinedAt: !903)
!913 = !DILocation(line: 201, column: 21, scope: !891, inlinedAt: !903)
!914 = !DILocation(line: 201, column: 27, scope: !891, inlinedAt: !903)
!915 = !DILocation(line: 200, column: 13, scope: !891, inlinedAt: !903)
!916 = !DILocalVariable(name: "nptr", arg: 1, scope: !917, file: !918, line: 324, type: !921)
!917 = distinct !DISubprogram(name: "strtoimax", scope: !918, file: !918, line: 324, type: !919, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !923)
!918 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!919 = !DISubroutineType(types: !920)
!920 = !{!893, !921, !922, !42}
!921 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!922 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !638)
!923 = !{!916, !924, !925}
!924 = !DILocalVariable(name: "endptr", arg: 2, scope: !917, file: !918, line: 324, type: !922)
!925 = !DILocalVariable(name: "base", arg: 3, scope: !917, file: !918, line: 324, type: !42)
!926 = !DILocation(line: 324, column: 1, scope: !917, inlinedAt: !927)
!927 = distinct !DILocation(line: 201, column: 32, scope: !891, inlinedAt: !903)
!928 = !DILocation(line: 327, column: 10, scope: !917, inlinedAt: !927)
!929 = !DILocation(line: 201, column: 16, scope: !891, inlinedAt: !903)
!930 = !DILocation(line: 202, column: 19, scope: !891, inlinedAt: !903)
!931 = !DILocation(line: 202, column: 13, scope: !891, inlinedAt: !903)
!932 = !DILocation(line: 204, column: 11, scope: !933, inlinedAt: !903)
!933 = distinct !DILexicalBlock(scope: !891, file: !3, line: 204, column: 11)
!934 = !DILocation(line: 204, column: 17, scope: !933, inlinedAt: !903)
!935 = !DILocation(line: 204, column: 27, scope: !933, inlinedAt: !903)
!936 = !DILocation(line: 204, column: 30, scope: !933, inlinedAt: !903)
!937 = !DILocation(line: 204, column: 34, scope: !933, inlinedAt: !903)
!938 = !DILocation(line: 204, column: 39, scope: !933, inlinedAt: !903)
!939 = !DILocation(line: 204, column: 49, scope: !933, inlinedAt: !903)
!940 = !DILocation(line: 204, column: 46, scope: !933, inlinedAt: !903)
!941 = !DILocation(line: 204, column: 54, scope: !933, inlinedAt: !903)
!942 = !DILocation(line: 204, column: 57, scope: !933, inlinedAt: !903)
!943 = !DILocation(line: 204, column: 11, scope: !891, inlinedAt: !903)
!944 = !DILocation(line: 206, column: 24, scope: !945, inlinedAt: !903)
!945 = distinct !DILexicalBlock(scope: !933, file: !3, line: 205, column: 9)
!946 = !DILocation(line: 206, column: 53, scope: !945, inlinedAt: !903)
!947 = !DILocation(line: 206, column: 11, scope: !945, inlinedAt: !903)
!948 = !DILocation(line: 208, column: 9, scope: !945, inlinedAt: !903)
!949 = !DILocation(line: 209, column: 16, scope: !950, inlinedAt: !903)
!950 = distinct !DILexicalBlock(scope: !933, file: !3, line: 209, column: 16)
!951 = !DILocation(line: 209, column: 35, scope: !950, inlinedAt: !903)
!952 = !DILocation(line: 209, column: 16, scope: !933, inlinedAt: !903)
!953 = !DILocation(line: 211, column: 21, scope: !954, inlinedAt: !903)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 210, column: 9)
!955 = !DILocation(line: 211, column: 34, scope: !954, inlinedAt: !903)
!956 = !DILocation(line: 211, column: 11, scope: !954, inlinedAt: !903)
!957 = !DILocation(line: 213, column: 9, scope: !954, inlinedAt: !903)
!958 = !DILocation(line: 214, column: 5, scope: !883, inlinedAt: !903)
!959 = !DILocation(line: 215, column: 18, scope: !883, inlinedAt: !903)
!960 = !DILocation(line: 215, column: 17, scope: !883, inlinedAt: !903)
!961 = !DILocation(line: 214, column: 5, scope: !891, inlinedAt: !903)
!962 = !DILocation(line: 314, column: 1, scope: !635)
!963 = !DILocation(line: 284, column: 26, scope: !964)
!964 = distinct !DILexicalBlock(scope: !738, file: !3, line: 283, column: 11)
!965 = !DILocation(line: 284, column: 13, scope: !964)
!966 = !DILocation(line: 285, column: 13, scope: !964)
!967 = distinct !DISubprogram(name: "operand2sig", scope: !539, file: !539, line: 36, type: !968, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!42, !17, !6}
!970 = !{!971, !972, !973, !974, !977, !978, !979, !981}
!971 = !DILocalVariable(name: "operand", arg: 1, scope: !967, file: !539, line: 36, type: !17)
!972 = !DILocalVariable(name: "signame", arg: 2, scope: !967, file: !539, line: 36, type: !6)
!973 = !DILocalVariable(name: "signum", scope: !967, file: !539, line: 38, type: !42)
!974 = !DILocalVariable(name: "endp", scope: !975, file: !539, line: 53, type: !6)
!975 = distinct !DILexicalBlock(scope: !976, file: !539, line: 41, column: 5)
!976 = distinct !DILexicalBlock(scope: !967, file: !539, line: 40, column: 7)
!977 = !DILocalVariable(name: "l", scope: !975, file: !539, line: 54, type: !897)
!978 = !DILocalVariable(name: "i", scope: !975, file: !539, line: 55, type: !42)
!979 = !DILocalVariable(name: "upcased", scope: !980, file: !539, line: 63, type: !6)
!980 = distinct !DILexicalBlock(scope: !976, file: !539, line: 60, column: 5)
!981 = !DILocalVariable(name: "p", scope: !980, file: !539, line: 64, type: !6)
!982 = !DILocation(line: 36, column: 26, scope: !967)
!983 = !DILocation(line: 36, column: 41, scope: !967)
!984 = !DILocation(line: 38, column: 3, scope: !967)
!985 = !DILocation(line: 40, column: 7, scope: !976)
!986 = !DILocation(line: 40, column: 7, scope: !967)
!987 = !DILocation(line: 53, column: 7, scope: !975)
!988 = !DILocation(line: 54, column: 21, scope: !975)
!989 = !DILocation(line: 54, column: 27, scope: !975)
!990 = !DILocation(line: 53, column: 13, scope: !975)
!991 = !DILocation(line: 54, column: 32, scope: !975)
!992 = !DILocation(line: 54, column: 16, scope: !975)
!993 = !DILocation(line: 55, column: 15, scope: !975)
!994 = !DILocation(line: 55, column: 11, scope: !975)
!995 = !DILocation(line: 56, column: 28, scope: !975)
!996 = !DILocation(line: 56, column: 25, scope: !975)
!997 = !DILocation(line: 56, column: 33, scope: !975)
!998 = !DILocation(line: 56, column: 36, scope: !975)
!999 = !DILocation(line: 56, column: 42, scope: !975)
!1000 = !DILocation(line: 56, column: 45, scope: !975)
!1001 = !DILocation(line: 56, column: 51, scope: !975)
!1002 = !DILocation(line: 56, column: 54, scope: !975)
!1003 = !DILocation(line: 56, column: 56, scope: !975)
!1004 = !DILocation(line: 56, column: 17, scope: !975)
!1005 = !DILocation(line: 57, column: 19, scope: !975)
!1006 = !DILocation(line: 38, column: 7, scope: !967)
!1007 = !DILocation(line: 56, column: 14, scope: !975)
!1008 = !DILocation(line: 58, column: 5, scope: !976)
!1009 = !DILocation(line: 58, column: 5, scope: !975)
!1010 = !DILocation(line: 63, column: 23, scope: !980)
!1011 = !DILocation(line: 63, column: 13, scope: !980)
!1012 = !DILocation(line: 64, column: 13, scope: !980)
!1013 = !DILocation(line: 65, column: 25, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !539, line: 65, column: 7)
!1015 = distinct !DILexicalBlock(scope: !980, file: !539, line: 65, column: 7)
!1016 = !DILocation(line: 65, column: 7, scope: !1015)
!1017 = !DILocation(line: 66, column: 51, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !539, line: 66, column: 13)
!1019 = !DILocation(line: 66, column: 13, scope: !1018)
!1020 = !DILocation(line: 66, column: 13, scope: !1014)
!1021 = !DILocation(line: 67, column: 14, scope: !1018)
!1022 = !DILocation(line: 67, column: 11, scope: !1018)
!1023 = !DILocation(line: 65, column: 30, scope: !1014)
!1024 = distinct !{!1024, !1016, !1025}
!1025 = !DILocation(line: 67, column: 23, scope: !1015)
!1026 = !DILocation(line: 71, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !980, file: !539, line: 71, column: 11)
!1028 = !DILocation(line: 71, column: 40, scope: !1027)
!1029 = !DILocation(line: 72, column: 13, scope: !1027)
!1030 = !DILocation(line: 72, column: 17, scope: !1027)
!1031 = !DILocation(line: 72, column: 28, scope: !1027)
!1032 = !DILocation(line: 72, column: 35, scope: !1027)
!1033 = !DILocation(line: 72, column: 38, scope: !1027)
!1034 = !DILocation(line: 72, column: 49, scope: !1027)
!1035 = !DILocation(line: 72, column: 56, scope: !1027)
!1036 = !DILocation(line: 72, column: 59, scope: !1027)
!1037 = !DILocation(line: 72, column: 70, scope: !1027)
!1038 = !DILocation(line: 73, column: 17, scope: !1027)
!1039 = !DILocation(line: 73, column: 37, scope: !1027)
!1040 = !DILocation(line: 73, column: 20, scope: !1027)
!1041 = !DILocation(line: 73, column: 51, scope: !1027)
!1042 = !DILocation(line: 71, column: 11, scope: !980)
!1043 = !DILocation(line: 74, column: 16, scope: !1027)
!1044 = !DILocation(line: 74, column: 9, scope: !1027)
!1045 = !DILocation(line: 76, column: 7, scope: !980)
!1046 = !DILocation(line: 79, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !967, file: !539, line: 79, column: 7)
!1048 = !DILocation(line: 79, column: 14, scope: !1047)
!1049 = !DILocation(line: 79, column: 18, scope: !1047)
!1050 = !DILocation(line: 79, column: 21, scope: !1047)
!1051 = !DILocation(line: 79, column: 47, scope: !1047)
!1052 = !DILocation(line: 79, column: 7, scope: !967)
!1053 = !DILocation(line: 81, column: 20, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !539, line: 80, column: 5)
!1055 = !DILocation(line: 81, column: 45, scope: !1054)
!1056 = !DILocation(line: 81, column: 7, scope: !1054)
!1057 = !DILocation(line: 82, column: 7, scope: !1054)
!1058 = !DILocation(line: 85, column: 10, scope: !967)
!1059 = !DILocation(line: 85, column: 3, scope: !967)
!1060 = !DILocation(line: 86, column: 1, scope: !967)
!1061 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !63, file: !63, line: 41, type: !15, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !58, variables: !1062)
!1062 = !{!1063}
!1063 = !DILocalVariable(name: "file", arg: 1, scope: !1061, file: !63, line: 41, type: !17)
!1064 = !DILocation(line: 41, column: 41, scope: !1061)
!1065 = !DILocation(line: 43, column: 13, scope: !1061)
!1066 = !DILocation(line: 44, column: 1, scope: !1061)
!1067 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !63, file: !63, line: 78, type: !1068, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !58, variables: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !64}
!1070 = !{!1071}
!1071 = !DILocalVariable(name: "ignore", arg: 1, scope: !1067, file: !63, line: 78, type: !64)
!1072 = !DILocation(line: 78, column: 37, scope: !1067)
!1073 = !DILocation(line: 80, column: 16, scope: !1067)
!1074 = !{!1075, !1075, i64 0}
!1075 = !{!"_Bool", !604, i64 0}
!1076 = !DILocation(line: 81, column: 1, scope: !1067)
!1077 = distinct !DISubprogram(name: "close_stdout", scope: !63, file: !63, line: 107, type: !611, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !58, variables: !1078)
!1078 = !{!1079}
!1079 = !DILocalVariable(name: "write_error", scope: !1080, file: !63, line: 112, type: !17)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !63, line: 111, column: 5)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !63, line: 109, column: 7)
!1082 = !DILocation(line: 109, column: 21, scope: !1081)
!1083 = !DILocation(line: 109, column: 7, scope: !1081)
!1084 = !DILocation(line: 109, column: 29, scope: !1081)
!1085 = !DILocation(line: 110, column: 7, scope: !1081)
!1086 = !DILocation(line: 110, column: 12, scope: !1081)
!1087 = !{i8 0, i8 2}
!1088 = !DILocation(line: 114, column: 19, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !63, line: 113, column: 11)
!1090 = !DILocation(line: 110, column: 25, scope: !1081)
!1091 = !DILocation(line: 110, column: 28, scope: !1081)
!1092 = !DILocation(line: 110, column: 34, scope: !1081)
!1093 = !DILocation(line: 109, column: 7, scope: !1077)
!1094 = !DILocation(line: 112, column: 33, scope: !1080)
!1095 = !DILocation(line: 112, column: 19, scope: !1080)
!1096 = !DILocation(line: 113, column: 11, scope: !1089)
!1097 = !DILocation(line: 113, column: 11, scope: !1080)
!1098 = !DILocation(line: 114, column: 36, scope: !1089)
!1099 = !DILocation(line: 114, column: 9, scope: !1089)
!1100 = !DILocation(line: 117, column: 9, scope: !1089)
!1101 = !DILocation(line: 119, column: 14, scope: !1080)
!1102 = !DILocation(line: 119, column: 7, scope: !1080)
!1103 = !DILocation(line: 122, column: 22, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1077, file: !63, line: 122, column: 8)
!1105 = !DILocation(line: 122, column: 8, scope: !1104)
!1106 = !DILocation(line: 122, column: 30, scope: !1104)
!1107 = !DILocation(line: 122, column: 8, scope: !1077)
!1108 = !DILocation(line: 123, column: 13, scope: !1104)
!1109 = !DILocation(line: 123, column: 6, scope: !1104)
!1110 = !DILocation(line: 124, column: 1, scope: !1077)
!1111 = distinct !DISubprogram(name: "set_program_name", scope: !78, file: !78, line: 39, type: !15, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !74, variables: !1112)
!1112 = !{!1113, !1114, !1115}
!1113 = !DILocalVariable(name: "argv0", arg: 1, scope: !1111, file: !78, line: 39, type: !17)
!1114 = !DILocalVariable(name: "slash", scope: !1111, file: !78, line: 46, type: !17)
!1115 = !DILocalVariable(name: "base", scope: !1111, file: !78, line: 47, type: !17)
!1116 = !DILocation(line: 39, column: 31, scope: !1111)
!1117 = !DILocation(line: 51, column: 13, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !78, line: 51, column: 7)
!1119 = !DILocation(line: 51, column: 7, scope: !1111)
!1120 = !DILocation(line: 55, column: 14, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 52, column: 5)
!1122 = !DILocation(line: 54, column: 7, scope: !1121)
!1123 = !DILocation(line: 56, column: 7, scope: !1121)
!1124 = !DILocation(line: 59, column: 11, scope: !1111)
!1125 = !DILocation(line: 46, column: 15, scope: !1111)
!1126 = !DILocation(line: 60, column: 17, scope: !1111)
!1127 = !DILocation(line: 60, column: 33, scope: !1111)
!1128 = !DILocation(line: 60, column: 11, scope: !1111)
!1129 = !DILocation(line: 47, column: 15, scope: !1111)
!1130 = !DILocation(line: 61, column: 12, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1111, file: !78, line: 61, column: 7)
!1132 = !DILocation(line: 61, column: 20, scope: !1131)
!1133 = !DILocation(line: 61, column: 25, scope: !1131)
!1134 = !DILocation(line: 61, column: 42, scope: !1131)
!1135 = !DILocation(line: 61, column: 28, scope: !1131)
!1136 = !DILocation(line: 61, column: 61, scope: !1131)
!1137 = !DILocation(line: 61, column: 7, scope: !1111)
!1138 = !DILocation(line: 64, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !78, line: 64, column: 11)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !78, line: 62, column: 5)
!1141 = !DILocation(line: 64, column: 36, scope: !1139)
!1142 = !DILocation(line: 64, column: 11, scope: !1140)
!1143 = !DILocation(line: 66, column: 24, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !78, line: 65, column: 9)
!1145 = !DILocation(line: 70, column: 41, scope: !1144)
!1146 = !DILocation(line: 72, column: 9, scope: !1144)
!1147 = !DILocation(line: 84, column: 16, scope: !1111)
!1148 = !DILocation(line: 90, column: 27, scope: !1111)
!1149 = !DILocation(line: 92, column: 1, scope: !1111)
!1150 = distinct !DISubprogram(name: "clone_quoting_options", scope: !126, file: !126, line: 114, type: !1151, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1154)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1153, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1154 = !{!1155, !1156, !1157}
!1155 = !DILocalVariable(name: "o", arg: 1, scope: !1150, file: !126, line: 114, type: !1153)
!1156 = !DILocalVariable(name: "e", scope: !1150, file: !126, line: 116, type: !42)
!1157 = !DILocalVariable(name: "p", scope: !1150, file: !126, line: 117, type: !1153)
!1158 = !DILocation(line: 114, column: 48, scope: !1150)
!1159 = !DILocation(line: 116, column: 11, scope: !1150)
!1160 = !DILocation(line: 116, column: 7, scope: !1150)
!1161 = !DILocation(line: 117, column: 40, scope: !1150)
!1162 = !DILocation(line: 117, column: 31, scope: !1150)
!1163 = !DILocation(line: 117, column: 27, scope: !1150)
!1164 = !DILocation(line: 119, column: 9, scope: !1150)
!1165 = !DILocation(line: 120, column: 3, scope: !1150)
!1166 = distinct !DISubprogram(name: "get_quoting_style", scope: !126, file: !126, line: 125, type: !1167, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1171)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!84, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!1171 = !{!1172}
!1172 = !DILocalVariable(name: "o", arg: 1, scope: !1166, file: !126, line: 125, type: !1169)
!1173 = !DILocation(line: 125, column: 50, scope: !1166)
!1174 = !DILocation(line: 127, column: 11, scope: !1166)
!1175 = !DILocation(line: 127, column: 46, scope: !1166)
!1176 = !{!1177, !604, i64 0}
!1177 = !{!"quoting_options", !604, i64 0, !692, i64 4, !604, i64 8, !603, i64 40, !603, i64 48}
!1178 = !DILocation(line: 127, column: 3, scope: !1166)
!1179 = distinct !DISubprogram(name: "set_quoting_style", scope: !126, file: !126, line: 133, type: !1180, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1153, !84}
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "o", arg: 1, scope: !1179, file: !126, line: 133, type: !1153)
!1184 = !DILocalVariable(name: "s", arg: 2, scope: !1179, file: !126, line: 133, type: !84)
!1185 = !DILocation(line: 133, column: 44, scope: !1179)
!1186 = !DILocation(line: 133, column: 66, scope: !1179)
!1187 = !DILocation(line: 135, column: 4, scope: !1179)
!1188 = !DILocation(line: 135, column: 39, scope: !1179)
!1189 = !DILocation(line: 135, column: 45, scope: !1179)
!1190 = !DILocation(line: 136, column: 1, scope: !1179)
!1191 = distinct !DISubprogram(name: "set_char_quoting", scope: !126, file: !126, line: 144, type: !1192, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!42, !1153, !7, !42}
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1201, !1202}
!1195 = !DILocalVariable(name: "o", arg: 1, scope: !1191, file: !126, line: 144, type: !1153)
!1196 = !DILocalVariable(name: "c", arg: 2, scope: !1191, file: !126, line: 144, type: !7)
!1197 = !DILocalVariable(name: "i", arg: 3, scope: !1191, file: !126, line: 144, type: !42)
!1198 = !DILocalVariable(name: "uc", scope: !1191, file: !126, line: 146, type: !534)
!1199 = !DILocalVariable(name: "p", scope: !1191, file: !126, line: 147, type: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1201 = !DILocalVariable(name: "shift", scope: !1191, file: !126, line: 149, type: !42)
!1202 = !DILocalVariable(name: "r", scope: !1191, file: !126, line: 150, type: !42)
!1203 = !DILocation(line: 144, column: 43, scope: !1191)
!1204 = !DILocation(line: 144, column: 51, scope: !1191)
!1205 = !DILocation(line: 144, column: 58, scope: !1191)
!1206 = !DILocation(line: 146, column: 17, scope: !1191)
!1207 = !DILocation(line: 148, column: 6, scope: !1191)
!1208 = !DILocation(line: 148, column: 62, scope: !1191)
!1209 = !DILocation(line: 148, column: 57, scope: !1191)
!1210 = !DILocation(line: 147, column: 17, scope: !1191)
!1211 = !DILocation(line: 149, column: 18, scope: !1191)
!1212 = !DILocation(line: 149, column: 15, scope: !1191)
!1213 = !DILocation(line: 149, column: 7, scope: !1191)
!1214 = !DILocation(line: 150, column: 12, scope: !1191)
!1215 = !DILocation(line: 150, column: 15, scope: !1191)
!1216 = !DILocation(line: 150, column: 25, scope: !1191)
!1217 = !DILocation(line: 150, column: 7, scope: !1191)
!1218 = !DILocation(line: 151, column: 13, scope: !1191)
!1219 = !DILocation(line: 151, column: 18, scope: !1191)
!1220 = !DILocation(line: 151, column: 23, scope: !1191)
!1221 = !DILocation(line: 151, column: 6, scope: !1191)
!1222 = !DILocation(line: 152, column: 3, scope: !1191)
!1223 = distinct !DISubprogram(name: "set_quoting_flags", scope: !126, file: !126, line: 160, type: !1224, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!42, !1153, !42}
!1226 = !{!1227, !1228, !1229}
!1227 = !DILocalVariable(name: "o", arg: 1, scope: !1223, file: !126, line: 160, type: !1153)
!1228 = !DILocalVariable(name: "i", arg: 2, scope: !1223, file: !126, line: 160, type: !42)
!1229 = !DILocalVariable(name: "r", scope: !1223, file: !126, line: 162, type: !42)
!1230 = !DILocation(line: 160, column: 44, scope: !1223)
!1231 = !DILocation(line: 160, column: 51, scope: !1223)
!1232 = !DILocation(line: 163, column: 8, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1223, file: !126, line: 163, column: 7)
!1234 = !DILocation(line: 163, column: 7, scope: !1223)
!1235 = !DILocation(line: 165, column: 10, scope: !1223)
!1236 = !{!1177, !692, i64 4}
!1237 = !DILocation(line: 162, column: 7, scope: !1223)
!1238 = !DILocation(line: 166, column: 12, scope: !1223)
!1239 = !DILocation(line: 167, column: 3, scope: !1223)
!1240 = distinct !DISubprogram(name: "set_custom_quoting", scope: !126, file: !126, line: 171, type: !1241, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !1153, !17, !17}
!1243 = !{!1244, !1245, !1246}
!1244 = !DILocalVariable(name: "o", arg: 1, scope: !1240, file: !126, line: 171, type: !1153)
!1245 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1240, file: !126, line: 172, type: !17)
!1246 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1240, file: !126, line: 172, type: !17)
!1247 = !DILocation(line: 171, column: 45, scope: !1240)
!1248 = !DILocation(line: 172, column: 33, scope: !1240)
!1249 = !DILocation(line: 172, column: 57, scope: !1240)
!1250 = !DILocation(line: 174, column: 8, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !126, line: 174, column: 7)
!1252 = !DILocation(line: 174, column: 7, scope: !1240)
!1253 = !DILocation(line: 176, column: 6, scope: !1240)
!1254 = !DILocation(line: 176, column: 12, scope: !1240)
!1255 = !DILocation(line: 177, column: 8, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1240, file: !126, line: 177, column: 7)
!1257 = !DILocation(line: 177, column: 23, scope: !1256)
!1258 = !DILocation(line: 177, column: 19, scope: !1256)
!1259 = !DILocation(line: 178, column: 5, scope: !1256)
!1260 = !DILocation(line: 179, column: 6, scope: !1240)
!1261 = !DILocation(line: 179, column: 17, scope: !1240)
!1262 = !{!1177, !603, i64 40}
!1263 = !DILocation(line: 180, column: 6, scope: !1240)
!1264 = !DILocation(line: 180, column: 18, scope: !1240)
!1265 = !{!1177, !603, i64 48}
!1266 = !DILocation(line: 181, column: 1, scope: !1240)
!1267 = distinct !DISubprogram(name: "quotearg_buffer", scope: !126, file: !126, line: 776, type: !1268, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!120, !6, !120, !17, !120, !1169}
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1271 = !DILocalVariable(name: "buffer", arg: 1, scope: !1267, file: !126, line: 776, type: !6)
!1272 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1267, file: !126, line: 776, type: !120)
!1273 = !DILocalVariable(name: "arg", arg: 3, scope: !1267, file: !126, line: 777, type: !17)
!1274 = !DILocalVariable(name: "argsize", arg: 4, scope: !1267, file: !126, line: 777, type: !120)
!1275 = !DILocalVariable(name: "o", arg: 5, scope: !1267, file: !126, line: 778, type: !1169)
!1276 = !DILocalVariable(name: "p", scope: !1267, file: !126, line: 780, type: !1169)
!1277 = !DILocalVariable(name: "e", scope: !1267, file: !126, line: 781, type: !42)
!1278 = !DILocalVariable(name: "r", scope: !1267, file: !126, line: 782, type: !120)
!1279 = !DILocation(line: 776, column: 24, scope: !1267)
!1280 = !DILocation(line: 776, column: 39, scope: !1267)
!1281 = !DILocation(line: 777, column: 30, scope: !1267)
!1282 = !DILocation(line: 777, column: 42, scope: !1267)
!1283 = !DILocation(line: 778, column: 48, scope: !1267)
!1284 = !DILocation(line: 780, column: 37, scope: !1267)
!1285 = !DILocation(line: 780, column: 33, scope: !1267)
!1286 = !DILocation(line: 781, column: 11, scope: !1267)
!1287 = !DILocation(line: 781, column: 7, scope: !1267)
!1288 = !DILocation(line: 783, column: 43, scope: !1267)
!1289 = !DILocation(line: 783, column: 53, scope: !1267)
!1290 = !DILocation(line: 783, column: 60, scope: !1267)
!1291 = !DILocation(line: 784, column: 43, scope: !1267)
!1292 = !DILocation(line: 784, column: 58, scope: !1267)
!1293 = !DILocation(line: 782, column: 14, scope: !1267)
!1294 = !DILocation(line: 782, column: 10, scope: !1267)
!1295 = !DILocation(line: 785, column: 9, scope: !1267)
!1296 = !DILocation(line: 786, column: 3, scope: !1267)
!1297 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !126, file: !126, line: 248, type: !1298, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1302)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!120, !6, !120, !17, !120, !84, !42, !1300, !17, !17}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1327, !1328, !1329, !1330, !1331, !1334, !1335, !1353, !1356, !1357, !1364}
!1303 = !DILocalVariable(name: "buffer", arg: 1, scope: !1297, file: !126, line: 248, type: !6)
!1304 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1297, file: !126, line: 248, type: !120)
!1305 = !DILocalVariable(name: "arg", arg: 3, scope: !1297, file: !126, line: 249, type: !17)
!1306 = !DILocalVariable(name: "argsize", arg: 4, scope: !1297, file: !126, line: 249, type: !120)
!1307 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1297, file: !126, line: 250, type: !84)
!1308 = !DILocalVariable(name: "flags", arg: 6, scope: !1297, file: !126, line: 250, type: !42)
!1309 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1297, file: !126, line: 251, type: !1300)
!1310 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1297, file: !126, line: 252, type: !17)
!1311 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1297, file: !126, line: 253, type: !17)
!1312 = !DILocalVariable(name: "i", scope: !1297, file: !126, line: 255, type: !120)
!1313 = !DILocalVariable(name: "len", scope: !1297, file: !126, line: 256, type: !120)
!1314 = !DILocalVariable(name: "orig_buffersize", scope: !1297, file: !126, line: 257, type: !120)
!1315 = !DILocalVariable(name: "quote_string", scope: !1297, file: !126, line: 258, type: !17)
!1316 = !DILocalVariable(name: "quote_string_len", scope: !1297, file: !126, line: 259, type: !120)
!1317 = !DILocalVariable(name: "backslash_escapes", scope: !1297, file: !126, line: 260, type: !64)
!1318 = !DILocalVariable(name: "unibyte_locale", scope: !1297, file: !126, line: 261, type: !64)
!1319 = !DILocalVariable(name: "elide_outer_quotes", scope: !1297, file: !126, line: 262, type: !64)
!1320 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1297, file: !126, line: 263, type: !64)
!1321 = !DILocalVariable(name: "encountered_single_quote", scope: !1297, file: !126, line: 264, type: !64)
!1322 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1297, file: !126, line: 265, type: !64)
!1323 = !DILocalVariable(name: "c", scope: !1324, file: !126, line: 394, type: !534)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !126, line: 393, column: 5)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !126, line: 392, column: 3)
!1326 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 392, column: 3)
!1327 = !DILocalVariable(name: "esc", scope: !1324, file: !126, line: 395, type: !534)
!1328 = !DILocalVariable(name: "is_right_quote", scope: !1324, file: !126, line: 396, type: !64)
!1329 = !DILocalVariable(name: "escaping", scope: !1324, file: !126, line: 397, type: !64)
!1330 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1324, file: !126, line: 398, type: !64)
!1331 = !DILocalVariable(name: "m", scope: !1332, file: !126, line: 602, type: !120)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 600, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 418, column: 9)
!1334 = !DILocalVariable(name: "printable", scope: !1332, file: !126, line: 604, type: !64)
!1335 = !DILocalVariable(name: "mbstate", scope: !1336, file: !126, line: 613, type: !1338)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !126, line: 612, column: 15)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !126, line: 606, column: 17)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1339, line: 6, baseType: !1340)
!1339 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1341, line: 21, baseType: !1342)
!1341 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 13, size: 64, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1342, file: !1341, line: 15, baseType: !42, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1342, file: !1341, line: 20, baseType: !1346, size: 32, offset: 32)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1341, line: 16, size: 32, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1346, file: !1341, line: 18, baseType: !9, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1346, file: !1341, line: 19, baseType: !1350, size: 32)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 4)
!1353 = !DILocalVariable(name: "w", scope: !1354, file: !126, line: 623, type: !1355)
!1354 = distinct !DILexicalBlock(scope: !1336, file: !126, line: 622, column: 19)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !121, line: 90, baseType: !42)
!1356 = !DILocalVariable(name: "bytes", scope: !1354, file: !126, line: 624, type: !120)
!1357 = !DILocalVariable(name: "j", scope: !1358, file: !126, line: 649, type: !120)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !126, line: 648, column: 27)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !126, line: 646, column: 29)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !126, line: 641, column: 23)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !126, line: 633, column: 30)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !126, line: 628, column: 30)
!1363 = distinct !DILexicalBlock(scope: !1354, file: !126, line: 626, column: 25)
!1364 = !DILocalVariable(name: "ilim", scope: !1365, file: !126, line: 676, type: !120)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !126, line: 673, column: 15)
!1366 = distinct !DILexicalBlock(scope: !1332, file: !126, line: 672, column: 17)
!1367 = !DILocation(line: 248, column: 33, scope: !1297)
!1368 = !DILocation(line: 248, column: 48, scope: !1297)
!1369 = !DILocation(line: 249, column: 39, scope: !1297)
!1370 = !DILocation(line: 249, column: 51, scope: !1297)
!1371 = !DILocation(line: 250, column: 46, scope: !1297)
!1372 = !DILocation(line: 250, column: 65, scope: !1297)
!1373 = !DILocation(line: 251, column: 47, scope: !1297)
!1374 = !DILocation(line: 252, column: 39, scope: !1297)
!1375 = !DILocation(line: 253, column: 39, scope: !1297)
!1376 = !DILocation(line: 256, column: 10, scope: !1297)
!1377 = !DILocation(line: 257, column: 10, scope: !1297)
!1378 = !DILocation(line: 258, column: 15, scope: !1297)
!1379 = !DILocation(line: 259, column: 10, scope: !1297)
!1380 = !DILocation(line: 260, column: 8, scope: !1297)
!1381 = !DILocation(line: 261, column: 25, scope: !1297)
!1382 = !DILocation(line: 261, column: 36, scope: !1297)
!1383 = !DILocation(line: 262, column: 8, scope: !1297)
!1384 = !DILocation(line: 263, column: 8, scope: !1297)
!1385 = !DILocation(line: 264, column: 8, scope: !1297)
!1386 = !DILocation(line: 265, column: 8, scope: !1297)
!1387 = !DILocation(line: 265, column: 3, scope: !1297)
!1388 = !DILocation(line: 308, column: 3, scope: !1297)
!1389 = !DILocation(line: 315, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 309, column: 5)
!1391 = !DILocation(line: 315, column: 12, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1390, file: !126, line: 315, column: 11)
!1393 = !DILocation(line: 316, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !126, line: 316, column: 9)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !126, line: 316, column: 9)
!1396 = !DILocation(line: 316, column: 9, scope: !1395)
!1397 = !DILocation(line: 354, column: 26, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !126, line: 332, column: 11)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !126, line: 331, column: 13)
!1400 = distinct !DILexicalBlock(scope: !1390, file: !126, line: 330, column: 7)
!1401 = !DILocation(line: 355, column: 27, scope: !1398)
!1402 = !DILocation(line: 356, column: 11, scope: !1398)
!1403 = !DILocation(line: 357, column: 14, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !126, line: 357, column: 13)
!1405 = !DILocation(line: 357, column: 13, scope: !1400)
!1406 = !DILocation(line: 358, column: 43, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !126, line: 358, column: 11)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !126, line: 358, column: 11)
!1409 = !DILocation(line: 358, column: 11, scope: !1408)
!1410 = !DILocation(line: 359, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !126, line: 359, column: 13)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !126, line: 359, column: 13)
!1413 = !DILocation(line: 359, column: 13, scope: !1412)
!1414 = !DILocation(line: 358, column: 70, scope: !1407)
!1415 = distinct !{!1415, !1409, !1416}
!1416 = !DILocation(line: 359, column: 13, scope: !1408)
!1417 = !DILocation(line: 362, column: 28, scope: !1400)
!1418 = !DILocation(line: 364, column: 7, scope: !1390)
!1419 = !DILocation(line: 367, column: 7, scope: !1390)
!1420 = !DILocation(line: 370, column: 7, scope: !1390)
!1421 = !DILocation(line: 373, column: 12, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1390, file: !126, line: 373, column: 11)
!1423 = !DILocation(line: 373, column: 11, scope: !1390)
!1424 = !DILocation(line: 378, column: 12, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1390, file: !126, line: 378, column: 11)
!1426 = !DILocation(line: 378, column: 11, scope: !1390)
!1427 = !DILocation(line: 379, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !126, line: 379, column: 9)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !126, line: 379, column: 9)
!1430 = !DILocation(line: 379, column: 9, scope: !1429)
!1431 = !DILocation(line: 386, column: 7, scope: !1390)
!1432 = !DILocation(line: 389, column: 7, scope: !1390)
!1433 = !DILocation(line: 255, column: 10, scope: !1297)
!1434 = !DILocation(line: 392, column: 8, scope: !1326)
!1435 = !DILocation(line: 392, column: 27, scope: !1325)
!1436 = !DILocation(line: 392, column: 19, scope: !1325)
!1437 = !DILocation(line: 392, column: 60, scope: !1325)
!1438 = !DILocation(line: 392, column: 3, scope: !1326)
!1439 = !DILocation(line: 392, column: 41, scope: !1325)
!1440 = !DILocation(line: 392, column: 48, scope: !1325)
!1441 = !DILocation(line: 396, column: 12, scope: !1324)
!1442 = !DILocation(line: 397, column: 12, scope: !1324)
!1443 = !DILocation(line: 398, column: 12, scope: !1324)
!1444 = !DILocation(line: 401, column: 11, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 400, column: 11)
!1446 = !DILocation(line: 403, column: 17, scope: !1445)
!1447 = !DILocation(line: 404, column: 39, scope: !1445)
!1448 = !DILocation(line: 408, column: 32, scope: !1445)
!1449 = !DILocation(line: 404, column: 19, scope: !1445)
!1450 = !DILocation(line: 404, column: 15, scope: !1445)
!1451 = !DILocation(line: 409, column: 11, scope: !1445)
!1452 = !DILocation(line: 409, column: 26, scope: !1445)
!1453 = !DILocation(line: 409, column: 14, scope: !1445)
!1454 = !DILocation(line: 409, column: 63, scope: !1445)
!1455 = !DILocation(line: 400, column: 11, scope: !1324)
!1456 = !DILocation(line: 416, column: 11, scope: !1324)
!1457 = !DILocation(line: 394, column: 21, scope: !1324)
!1458 = !DILocation(line: 417, column: 7, scope: !1324)
!1459 = !DILocation(line: 420, column: 15, scope: !1333)
!1460 = !DILocation(line: 422, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !126, line: 422, column: 15)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !126, line: 421, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 420, column: 15)
!1464 = !DILocation(line: 422, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !126, line: 422, column: 15)
!1466 = !DILocation(line: 422, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !126, line: 422, column: 15)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !126, line: 422, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !126, line: 422, column: 15)
!1470 = !DILocation(line: 422, column: 15, scope: !1468)
!1471 = !DILocation(line: 422, column: 15, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !126, line: 422, column: 15)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !126, line: 422, column: 15)
!1474 = !DILocation(line: 422, column: 15, scope: !1473)
!1475 = !DILocation(line: 422, column: 15, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !126, line: 422, column: 15)
!1477 = distinct !DILexicalBlock(scope: !1469, file: !126, line: 422, column: 15)
!1478 = !DILocation(line: 422, column: 15, scope: !1477)
!1479 = !DILocation(line: 422, column: 15, scope: !1469)
!1480 = !DILocation(line: 422, column: 15, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !126, line: 422, column: 15)
!1482 = distinct !DILexicalBlock(scope: !1461, file: !126, line: 422, column: 15)
!1483 = !DILocation(line: 422, column: 15, scope: !1482)
!1484 = !DILocation(line: 430, column: 19, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1462, file: !126, line: 429, column: 19)
!1486 = !DILocation(line: 430, column: 24, scope: !1485)
!1487 = !DILocation(line: 430, column: 28, scope: !1485)
!1488 = !DILocation(line: 430, column: 38, scope: !1485)
!1489 = !DILocation(line: 430, column: 48, scope: !1485)
!1490 = !DILocation(line: 430, column: 59, scope: !1485)
!1491 = !DILocation(line: 432, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !126, line: 432, column: 19)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !126, line: 432, column: 19)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !126, line: 431, column: 17)
!1495 = !DILocation(line: 432, column: 19, scope: !1493)
!1496 = !DILocation(line: 433, column: 19, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !126, line: 433, column: 19)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !126, line: 433, column: 19)
!1499 = !DILocation(line: 433, column: 19, scope: !1498)
!1500 = !DILocation(line: 434, column: 17, scope: !1494)
!1501 = !DILocation(line: 441, column: 20, scope: !1463)
!1502 = !DILocation(line: 446, column: 11, scope: !1333)
!1503 = !DILocation(line: 449, column: 19, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 447, column: 13)
!1505 = !DILocation(line: 455, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1504, file: !126, line: 454, column: 19)
!1507 = !DILocation(line: 455, column: 24, scope: !1506)
!1508 = !DILocation(line: 455, column: 28, scope: !1506)
!1509 = !DILocation(line: 455, column: 38, scope: !1506)
!1510 = !DILocation(line: 455, column: 47, scope: !1506)
!1511 = !DILocation(line: 455, column: 41, scope: !1506)
!1512 = !DILocation(line: 455, column: 52, scope: !1506)
!1513 = !DILocation(line: 454, column: 19, scope: !1504)
!1514 = !DILocation(line: 456, column: 25, scope: !1506)
!1515 = !DILocation(line: 456, column: 17, scope: !1506)
!1516 = !DILocation(line: 463, column: 25, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1506, file: !126, line: 457, column: 19)
!1518 = !DILocation(line: 467, column: 21, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !126, line: 467, column: 21)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 467, column: 21)
!1521 = !DILocation(line: 467, column: 21, scope: !1520)
!1522 = !DILocation(line: 468, column: 21, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !126, line: 468, column: 21)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 468, column: 21)
!1525 = !DILocation(line: 468, column: 21, scope: !1524)
!1526 = !DILocation(line: 469, column: 21, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !126, line: 469, column: 21)
!1528 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 469, column: 21)
!1529 = !DILocation(line: 469, column: 21, scope: !1528)
!1530 = !DILocation(line: 470, column: 21, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !126, line: 470, column: 21)
!1532 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 470, column: 21)
!1533 = !DILocation(line: 470, column: 21, scope: !1532)
!1534 = !DILocation(line: 471, column: 21, scope: !1517)
!1535 = !DILocation(line: 395, column: 21, scope: !1324)
!1536 = !DILocation(line: 484, column: 31, scope: !1333)
!1537 = !DILocation(line: 485, column: 31, scope: !1333)
!1538 = !DILocation(line: 487, column: 31, scope: !1333)
!1539 = !DILocation(line: 488, column: 31, scope: !1333)
!1540 = !DILocation(line: 489, column: 31, scope: !1333)
!1541 = !DILocation(line: 492, column: 15, scope: !1333)
!1542 = !DILocation(line: 494, column: 19, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !126, line: 493, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 492, column: 15)
!1545 = !DILocation(line: 501, column: 33, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 501, column: 15)
!1547 = !DILocation(line: 506, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 505, column: 15)
!1549 = !DILocation(line: 510, column: 15, scope: !1333)
!1550 = !DILocation(line: 518, column: 26, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 518, column: 15)
!1552 = !DILocation(line: 518, column: 15, scope: !1333)
!1553 = !DILocation(line: 518, column: 40, scope: !1551)
!1554 = !DILocation(line: 518, column: 47, scope: !1551)
!1555 = !DILocation(line: 522, column: 17, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 522, column: 15)
!1557 = !DILocation(line: 518, column: 18, scope: !1551)
!1558 = !DILocation(line: 518, column: 65, scope: !1551)
!1559 = !DILocation(line: 522, column: 15, scope: !1333)
!1560 = !DILocation(line: 526, column: 11, scope: !1333)
!1561 = !DILocation(line: 541, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 540, column: 15)
!1563 = !DILocation(line: 548, column: 15, scope: !1333)
!1564 = !DILocation(line: 550, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !126, line: 549, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 548, column: 15)
!1567 = !DILocation(line: 553, column: 19, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !126, line: 553, column: 19)
!1569 = !DILocation(line: 553, column: 35, scope: !1568)
!1570 = !DILocation(line: 553, column: 30, scope: !1568)
!1571 = !DILocation(line: 562, column: 15, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !126, line: 562, column: 15)
!1573 = distinct !DILexicalBlock(scope: !1565, file: !126, line: 562, column: 15)
!1574 = !DILocation(line: 562, column: 15, scope: !1573)
!1575 = !DILocation(line: 563, column: 15, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !126, line: 563, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1565, file: !126, line: 563, column: 15)
!1578 = !DILocation(line: 563, column: 15, scope: !1577)
!1579 = !DILocation(line: 564, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !126, line: 564, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1565, file: !126, line: 564, column: 15)
!1582 = !DILocation(line: 564, column: 15, scope: !1581)
!1583 = !DILocation(line: 566, column: 13, scope: !1565)
!1584 = !DILocation(line: 606, column: 17, scope: !1332)
!1585 = !DILocation(line: 602, column: 20, scope: !1332)
!1586 = !DILocation(line: 609, column: 29, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1337, file: !126, line: 607, column: 15)
!1588 = !{!1589, !1589, i64 0}
!1589 = !{!"short", !604, i64 0}
!1590 = !DILocation(line: 609, column: 27, scope: !1587)
!1591 = !DILocation(line: 604, column: 18, scope: !1332)
!1592 = !DILocation(line: 610, column: 15, scope: !1587)
!1593 = !DILocation(line: 613, column: 17, scope: !1336)
!1594 = !DILocation(line: 614, column: 17, scope: !1336)
!1595 = !DILocation(line: 618, column: 29, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1336, file: !126, line: 618, column: 21)
!1597 = !DILocation(line: 618, column: 21, scope: !1336)
!1598 = !DILocation(line: 619, column: 29, scope: !1596)
!1599 = !DILocation(line: 619, column: 19, scope: !1596)
!1600 = !DILocation(line: 621, column: 17, scope: !1336)
!1601 = distinct !{!1601, !1600, !1602}
!1602 = !DILocation(line: 667, column: 44, scope: !1336)
!1603 = !DILocation(line: 623, column: 21, scope: !1354)
!1604 = !DILocation(line: 624, column: 56, scope: !1354)
!1605 = !DILocation(line: 624, column: 50, scope: !1354)
!1606 = !DILocation(line: 625, column: 53, scope: !1354)
!1607 = !DILocation(line: 613, column: 27, scope: !1336)
!1608 = !DILocation(line: 623, column: 29, scope: !1354)
!1609 = !DILocation(line: 624, column: 36, scope: !1354)
!1610 = !DILocation(line: 624, column: 28, scope: !1354)
!1611 = !DILocation(line: 626, column: 25, scope: !1354)
!1612 = !DILocation(line: 636, column: 38, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1361, file: !126, line: 634, column: 23)
!1614 = !DILocation(line: 636, column: 48, scope: !1613)
!1615 = !DILocation(line: 636, column: 51, scope: !1613)
!1616 = !DILocation(line: 636, column: 25, scope: !1613)
!1617 = !DILocation(line: 637, column: 28, scope: !1613)
!1618 = !DILocation(line: 636, column: 34, scope: !1613)
!1619 = distinct !{!1619, !1616, !1617}
!1620 = !DILocation(line: 650, column: 43, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !126, line: 650, column: 29)
!1622 = distinct !DILexicalBlock(scope: !1358, file: !126, line: 650, column: 29)
!1623 = !DILocation(line: 647, column: 29, scope: !1359)
!1624 = !DILocation(line: 649, column: 36, scope: !1358)
!1625 = !DILocation(line: 651, column: 49, scope: !1621)
!1626 = !DILocation(line: 651, column: 39, scope: !1621)
!1627 = !DILocation(line: 651, column: 31, scope: !1621)
!1628 = !DILocation(line: 650, column: 53, scope: !1621)
!1629 = !DILocation(line: 650, column: 29, scope: !1622)
!1630 = distinct !{!1630, !1629, !1631}
!1631 = !DILocation(line: 659, column: 33, scope: !1622)
!1632 = !DILocation(line: 666, column: 19, scope: !1336)
!1633 = !DILocation(line: 662, column: 41, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1360, file: !126, line: 662, column: 29)
!1635 = !DILocation(line: 662, column: 31, scope: !1634)
!1636 = !DILocation(line: 662, column: 29, scope: !1360)
!1637 = !DILocation(line: 664, column: 27, scope: !1360)
!1638 = !DILocation(line: 667, column: 26, scope: !1336)
!1639 = !DILocation(line: 667, column: 24, scope: !1336)
!1640 = !DILocation(line: 666, column: 19, scope: !1354)
!1641 = !DILocation(line: 668, column: 15, scope: !1337)
!1642 = !DILocation(line: 670, column: 40, scope: !1332)
!1643 = !DILocation(line: 672, column: 19, scope: !1366)
!1644 = !DILocation(line: 672, column: 45, scope: !1366)
!1645 = !DILocation(line: 672, column: 23, scope: !1366)
!1646 = !DILocation(line: 676, column: 33, scope: !1365)
!1647 = !DILocation(line: 676, column: 24, scope: !1365)
!1648 = !DILocation(line: 678, column: 17, scope: !1365)
!1649 = !DILocation(line: 680, column: 43, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 680, column: 25)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !126, line: 679, column: 19)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !126, line: 678, column: 17)
!1653 = distinct !DILexicalBlock(scope: !1365, file: !126, line: 678, column: 17)
!1654 = !DILocation(line: 682, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !126, line: 682, column: 25)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !126, line: 681, column: 23)
!1657 = !DILocation(line: 682, column: 25, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !126, line: 682, column: 25)
!1659 = !DILocation(line: 682, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !126, line: 682, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !126, line: 682, column: 25)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !126, line: 682, column: 25)
!1663 = !DILocation(line: 682, column: 25, scope: !1661)
!1664 = !DILocation(line: 682, column: 25, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !126, line: 682, column: 25)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !126, line: 682, column: 25)
!1667 = !DILocation(line: 682, column: 25, scope: !1666)
!1668 = !DILocation(line: 682, column: 25, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !126, line: 682, column: 25)
!1670 = distinct !DILexicalBlock(scope: !1662, file: !126, line: 682, column: 25)
!1671 = !DILocation(line: 682, column: 25, scope: !1670)
!1672 = !DILocation(line: 682, column: 25, scope: !1662)
!1673 = !DILocation(line: 682, column: 25, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !126, line: 682, column: 25)
!1675 = distinct !DILexicalBlock(scope: !1655, file: !126, line: 682, column: 25)
!1676 = !DILocation(line: 682, column: 25, scope: !1675)
!1677 = !DILocation(line: 683, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !126, line: 683, column: 25)
!1679 = distinct !DILexicalBlock(scope: !1656, file: !126, line: 683, column: 25)
!1680 = !DILocation(line: 683, column: 25, scope: !1679)
!1681 = !DILocation(line: 684, column: 25, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !126, line: 684, column: 25)
!1683 = distinct !DILexicalBlock(scope: !1656, file: !126, line: 684, column: 25)
!1684 = !DILocation(line: 684, column: 25, scope: !1683)
!1685 = !DILocation(line: 685, column: 38, scope: !1656)
!1686 = !DILocation(line: 685, column: 33, scope: !1656)
!1687 = !DILocation(line: 686, column: 23, scope: !1656)
!1688 = !DILocation(line: 687, column: 30, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1650, file: !126, line: 687, column: 30)
!1690 = !DILocation(line: 687, column: 30, scope: !1650)
!1691 = !DILocation(line: 689, column: 25, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !126, line: 689, column: 25)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !126, line: 689, column: 25)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !126, line: 688, column: 23)
!1695 = !DILocation(line: 689, column: 25, scope: !1693)
!1696 = !DILocation(line: 691, column: 23, scope: !1694)
!1697 = !DILocation(line: 692, column: 35, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 692, column: 25)
!1699 = !DILocation(line: 692, column: 30, scope: !1698)
!1700 = !DILocation(line: 692, column: 25, scope: !1651)
!1701 = !DILocation(line: 694, column: 21, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !126, line: 694, column: 21)
!1703 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 694, column: 21)
!1704 = !DILocation(line: 694, column: 21, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !126, line: 694, column: 21)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !126, line: 694, column: 21)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !126, line: 694, column: 21)
!1708 = !DILocation(line: 694, column: 21, scope: !1706)
!1709 = !DILocation(line: 694, column: 21, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !126, line: 694, column: 21)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !126, line: 694, column: 21)
!1712 = !DILocation(line: 694, column: 21, scope: !1711)
!1713 = !DILocation(line: 694, column: 21, scope: !1707)
!1714 = !DILocation(line: 695, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 695, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 695, column: 21)
!1717 = !DILocation(line: 695, column: 21, scope: !1716)
!1718 = !DILocation(line: 696, column: 25, scope: !1651)
!1719 = !DILocation(line: 678, column: 17, scope: !1652)
!1720 = distinct !{!1720, !1721, !1722}
!1721 = !DILocation(line: 678, column: 17, scope: !1653)
!1722 = !DILocation(line: 697, column: 19, scope: !1653)
!1723 = !DILocation(line: 704, column: 34, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 704, column: 11)
!1725 = !DILocation(line: 706, column: 14, scope: !1724)
!1726 = !DILocation(line: 707, column: 14, scope: !1724)
!1727 = !DILocation(line: 707, column: 35, scope: !1724)
!1728 = !DILocation(line: 707, column: 17, scope: !1724)
!1729 = !DILocation(line: 707, column: 53, scope: !1724)
!1730 = !DILocation(line: 707, column: 47, scope: !1724)
!1731 = !DILocation(line: 707, column: 65, scope: !1724)
!1732 = !DILocation(line: 708, column: 15, scope: !1724)
!1733 = !DILocation(line: 708, column: 11, scope: !1724)
!1734 = !DILocation(line: 704, column: 11, scope: !1324)
!1735 = !DILocation(line: 712, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 712, column: 7)
!1737 = !DILocation(line: 712, column: 7, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !126, line: 712, column: 7)
!1739 = !DILocation(line: 712, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !126, line: 712, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !126, line: 712, column: 7)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !126, line: 712, column: 7)
!1743 = !DILocation(line: 712, column: 7, scope: !1741)
!1744 = !DILocation(line: 712, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !126, line: 712, column: 7)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !126, line: 712, column: 7)
!1747 = !DILocation(line: 712, column: 7, scope: !1746)
!1748 = !DILocation(line: 712, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !126, line: 712, column: 7)
!1750 = distinct !DILexicalBlock(scope: !1742, file: !126, line: 712, column: 7)
!1751 = !DILocation(line: 712, column: 7, scope: !1750)
!1752 = !DILocation(line: 712, column: 7, scope: !1742)
!1753 = !DILocation(line: 712, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !126, line: 712, column: 7)
!1755 = distinct !DILexicalBlock(scope: !1736, file: !126, line: 712, column: 7)
!1756 = !DILocation(line: 712, column: 7, scope: !1755)
!1757 = !DILocation(line: 715, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !126, line: 715, column: 7)
!1759 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 715, column: 7)
!1760 = !DILocation(line: 715, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !126, line: 715, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !126, line: 715, column: 7)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !126, line: 715, column: 7)
!1764 = !DILocation(line: 715, column: 7, scope: !1762)
!1765 = !DILocation(line: 715, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !126, line: 715, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !126, line: 715, column: 7)
!1768 = !DILocation(line: 715, column: 7, scope: !1767)
!1769 = !DILocation(line: 715, column: 7, scope: !1763)
!1770 = !DILocation(line: 716, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !126, line: 716, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 716, column: 7)
!1773 = !DILocation(line: 716, column: 7, scope: !1772)
!1774 = !DILocation(line: 718, column: 13, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1324, file: !126, line: 718, column: 11)
!1776 = !DILocation(line: 718, column: 11, scope: !1324)
!1777 = !DILocation(line: 720, column: 5, scope: !1325)
!1778 = !DILocation(line: 392, column: 75, scope: !1325)
!1779 = !DILocation(line: 392, column: 3, scope: !1325)
!1780 = distinct !{!1780, !1438, !1781}
!1781 = !DILocation(line: 720, column: 5, scope: !1326)
!1782 = !DILocation(line: 722, column: 11, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 722, column: 7)
!1784 = !DILocation(line: 722, column: 16, scope: !1783)
!1785 = !DILocation(line: 730, column: 51, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 730, column: 7)
!1787 = !DILocation(line: 731, column: 10, scope: !1786)
!1788 = !DILocation(line: 733, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !126, line: 733, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !126, line: 732, column: 5)
!1791 = !DILocation(line: 733, column: 11, scope: !1790)
!1792 = !DILocation(line: 734, column: 16, scope: !1789)
!1793 = !DILocation(line: 734, column: 9, scope: !1789)
!1794 = !DILocation(line: 738, column: 18, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1789, file: !126, line: 738, column: 16)
!1796 = !DILocation(line: 738, column: 32, scope: !1795)
!1797 = !DILocation(line: 738, column: 29, scope: !1795)
!1798 = !DILocation(line: 747, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 747, column: 7)
!1800 = !DILocation(line: 747, column: 20, scope: !1799)
!1801 = !DILocation(line: 748, column: 12, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !126, line: 748, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !126, line: 748, column: 5)
!1804 = !DILocation(line: 748, column: 5, scope: !1803)
!1805 = !DILocation(line: 749, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !126, line: 749, column: 7)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !126, line: 749, column: 7)
!1808 = !DILocation(line: 749, column: 7, scope: !1807)
!1809 = !DILocation(line: 748, column: 39, scope: !1802)
!1810 = distinct !{!1810, !1804, !1811}
!1811 = !DILocation(line: 749, column: 7, scope: !1803)
!1812 = !DILocation(line: 751, column: 11, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 751, column: 7)
!1814 = !DILocation(line: 751, column: 7, scope: !1297)
!1815 = !DILocation(line: 752, column: 5, scope: !1813)
!1816 = !DILocation(line: 752, column: 17, scope: !1813)
!1817 = !DILocation(line: 758, column: 21, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1297, file: !126, line: 758, column: 7)
!1819 = !DILocation(line: 758, column: 54, scope: !1818)
!1820 = !DILocation(line: 758, column: 51, scope: !1818)
!1821 = !DILocation(line: 762, column: 42, scope: !1297)
!1822 = !DILocation(line: 760, column: 10, scope: !1297)
!1823 = !DILocation(line: 760, column: 3, scope: !1297)
!1824 = !DILocation(line: 764, column: 1, scope: !1297)
!1825 = distinct !DISubprogram(name: "gettext_quote", scope: !126, file: !126, line: 199, type: !1826, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!17, !17, !84}
!1828 = !{!1829, !1830, !1831, !1832}
!1829 = !DILocalVariable(name: "msgid", arg: 1, scope: !1825, file: !126, line: 199, type: !17)
!1830 = !DILocalVariable(name: "s", arg: 2, scope: !1825, file: !126, line: 199, type: !84)
!1831 = !DILocalVariable(name: "translation", scope: !1825, file: !126, line: 201, type: !17)
!1832 = !DILocalVariable(name: "locale_code", scope: !1825, file: !126, line: 202, type: !17)
!1833 = !DILocation(line: 199, column: 28, scope: !1825)
!1834 = !DILocation(line: 199, column: 54, scope: !1825)
!1835 = !DILocation(line: 201, column: 29, scope: !1825)
!1836 = !DILocation(line: 201, column: 15, scope: !1825)
!1837 = !DILocation(line: 204, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1825, file: !126, line: 204, column: 7)
!1839 = !DILocation(line: 204, column: 7, scope: !1825)
!1840 = !DILocation(line: 225, column: 17, scope: !1825)
!1841 = !DILocation(line: 202, column: 15, scope: !1825)
!1842 = !DILocalVariable(name: "s2", arg: 2, scope: !1843, file: !1844, line: 160, type: !17)
!1843 = distinct !DISubprogram(name: "strcaseeq0", scope: !1844, file: !1844, line: 160, type: !1845, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1847)
!1844 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!42, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1847 = !{!1848, !1842, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857}
!1848 = !DILocalVariable(name: "s1", arg: 1, scope: !1843, file: !1844, line: 160, type: !17)
!1849 = !DILocalVariable(name: "s20", arg: 3, scope: !1843, file: !1844, line: 160, type: !7)
!1850 = !DILocalVariable(name: "s21", arg: 4, scope: !1843, file: !1844, line: 160, type: !7)
!1851 = !DILocalVariable(name: "s22", arg: 5, scope: !1843, file: !1844, line: 160, type: !7)
!1852 = !DILocalVariable(name: "s23", arg: 6, scope: !1843, file: !1844, line: 160, type: !7)
!1853 = !DILocalVariable(name: "s24", arg: 7, scope: !1843, file: !1844, line: 160, type: !7)
!1854 = !DILocalVariable(name: "s25", arg: 8, scope: !1843, file: !1844, line: 160, type: !7)
!1855 = !DILocalVariable(name: "s26", arg: 9, scope: !1843, file: !1844, line: 160, type: !7)
!1856 = !DILocalVariable(name: "s27", arg: 10, scope: !1843, file: !1844, line: 160, type: !7)
!1857 = !DILocalVariable(name: "s28", arg: 11, scope: !1843, file: !1844, line: 160, type: !7)
!1858 = !DILocation(line: 160, column: 41, scope: !1843, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 226, column: 7, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1825, file: !126, line: 226, column: 7)
!1861 = !DILocation(line: 160, column: 120, scope: !1843, inlinedAt: !1859)
!1862 = !DILocation(line: 160, column: 130, scope: !1843, inlinedAt: !1859)
!1863 = !DILocation(line: 162, column: 7, scope: !1864, inlinedAt: !1859)
!1864 = distinct !DILexicalBlock(scope: !1843, file: !1844, line: 162, column: 7)
!1865 = !DILocalVariable(name: "s2", arg: 2, scope: !1866, file: !1844, line: 146, type: !17)
!1866 = distinct !DISubprogram(name: "strcaseeq1", scope: !1844, file: !1844, line: 146, type: !1867, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!42, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1869 = !{!1870, !1865, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878}
!1870 = !DILocalVariable(name: "s1", arg: 1, scope: !1866, file: !1844, line: 146, type: !17)
!1871 = !DILocalVariable(name: "s21", arg: 3, scope: !1866, file: !1844, line: 146, type: !7)
!1872 = !DILocalVariable(name: "s22", arg: 4, scope: !1866, file: !1844, line: 146, type: !7)
!1873 = !DILocalVariable(name: "s23", arg: 5, scope: !1866, file: !1844, line: 146, type: !7)
!1874 = !DILocalVariable(name: "s24", arg: 6, scope: !1866, file: !1844, line: 146, type: !7)
!1875 = !DILocalVariable(name: "s25", arg: 7, scope: !1866, file: !1844, line: 146, type: !7)
!1876 = !DILocalVariable(name: "s26", arg: 8, scope: !1866, file: !1844, line: 146, type: !7)
!1877 = !DILocalVariable(name: "s27", arg: 9, scope: !1866, file: !1844, line: 146, type: !7)
!1878 = !DILocalVariable(name: "s28", arg: 10, scope: !1866, file: !1844, line: 146, type: !7)
!1879 = !DILocation(line: 146, column: 41, scope: !1866, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 167, column: 16, scope: !1881, inlinedAt: !1859)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1844, line: 164, column: 11)
!1882 = distinct !DILexicalBlock(scope: !1864, file: !1844, line: 163, column: 5)
!1883 = !DILocation(line: 146, column: 110, scope: !1866, inlinedAt: !1880)
!1884 = !DILocation(line: 146, column: 120, scope: !1866, inlinedAt: !1880)
!1885 = !DILocation(line: 148, column: 7, scope: !1886, inlinedAt: !1880)
!1886 = distinct !DILexicalBlock(scope: !1866, file: !1844, line: 148, column: 7)
!1887 = !DILocalVariable(name: "s2", arg: 2, scope: !1888, file: !1844, line: 132, type: !17)
!1888 = distinct !DISubprogram(name: "strcaseeq2", scope: !1844, file: !1844, line: 132, type: !1889, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!42, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1891 = !{!1892, !1887, !1893, !1894, !1895, !1896, !1897, !1898, !1899}
!1892 = !DILocalVariable(name: "s1", arg: 1, scope: !1888, file: !1844, line: 132, type: !17)
!1893 = !DILocalVariable(name: "s22", arg: 3, scope: !1888, file: !1844, line: 132, type: !7)
!1894 = !DILocalVariable(name: "s23", arg: 4, scope: !1888, file: !1844, line: 132, type: !7)
!1895 = !DILocalVariable(name: "s24", arg: 5, scope: !1888, file: !1844, line: 132, type: !7)
!1896 = !DILocalVariable(name: "s25", arg: 6, scope: !1888, file: !1844, line: 132, type: !7)
!1897 = !DILocalVariable(name: "s26", arg: 7, scope: !1888, file: !1844, line: 132, type: !7)
!1898 = !DILocalVariable(name: "s27", arg: 8, scope: !1888, file: !1844, line: 132, type: !7)
!1899 = !DILocalVariable(name: "s28", arg: 9, scope: !1888, file: !1844, line: 132, type: !7)
!1900 = !DILocation(line: 132, column: 41, scope: !1888, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 153, column: 16, scope: !1902, inlinedAt: !1880)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !1844, line: 150, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1886, file: !1844, line: 149, column: 5)
!1904 = !DILocation(line: 132, column: 100, scope: !1888, inlinedAt: !1901)
!1905 = !DILocation(line: 132, column: 110, scope: !1888, inlinedAt: !1901)
!1906 = !DILocation(line: 134, column: 7, scope: !1907, inlinedAt: !1901)
!1907 = distinct !DILexicalBlock(scope: !1888, file: !1844, line: 134, column: 7)
!1908 = !DILocalVariable(name: "s2", arg: 2, scope: !1909, file: !1844, line: 118, type: !17)
!1909 = distinct !DISubprogram(name: "strcaseeq3", scope: !1844, file: !1844, line: 118, type: !1910, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!42, !17, !17, !7, !7, !7, !7, !7, !7}
!1912 = !{!1913, !1908, !1914, !1915, !1916, !1917, !1918, !1919}
!1913 = !DILocalVariable(name: "s1", arg: 1, scope: !1909, file: !1844, line: 118, type: !17)
!1914 = !DILocalVariable(name: "s23", arg: 3, scope: !1909, file: !1844, line: 118, type: !7)
!1915 = !DILocalVariable(name: "s24", arg: 4, scope: !1909, file: !1844, line: 118, type: !7)
!1916 = !DILocalVariable(name: "s25", arg: 5, scope: !1909, file: !1844, line: 118, type: !7)
!1917 = !DILocalVariable(name: "s26", arg: 6, scope: !1909, file: !1844, line: 118, type: !7)
!1918 = !DILocalVariable(name: "s27", arg: 7, scope: !1909, file: !1844, line: 118, type: !7)
!1919 = !DILocalVariable(name: "s28", arg: 8, scope: !1909, file: !1844, line: 118, type: !7)
!1920 = !DILocation(line: 118, column: 41, scope: !1909, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 139, column: 16, scope: !1922, inlinedAt: !1901)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !1844, line: 136, column: 11)
!1923 = distinct !DILexicalBlock(scope: !1907, file: !1844, line: 135, column: 5)
!1924 = !DILocation(line: 118, column: 90, scope: !1909, inlinedAt: !1921)
!1925 = !DILocation(line: 118, column: 100, scope: !1909, inlinedAt: !1921)
!1926 = !DILocation(line: 120, column: 7, scope: !1927, inlinedAt: !1921)
!1927 = distinct !DILexicalBlock(scope: !1909, file: !1844, line: 120, column: 7)
!1928 = !DILocation(line: 120, column: 7, scope: !1909, inlinedAt: !1921)
!1929 = !DILocalVariable(name: "s2", arg: 2, scope: !1930, file: !1844, line: 104, type: !17)
!1930 = distinct !DISubprogram(name: "strcaseeq4", scope: !1844, file: !1844, line: 104, type: !1931, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!42, !17, !17, !7, !7, !7, !7, !7}
!1933 = !{!1934, !1929, !1935, !1936, !1937, !1938, !1939}
!1934 = !DILocalVariable(name: "s1", arg: 1, scope: !1930, file: !1844, line: 104, type: !17)
!1935 = !DILocalVariable(name: "s24", arg: 3, scope: !1930, file: !1844, line: 104, type: !7)
!1936 = !DILocalVariable(name: "s25", arg: 4, scope: !1930, file: !1844, line: 104, type: !7)
!1937 = !DILocalVariable(name: "s26", arg: 5, scope: !1930, file: !1844, line: 104, type: !7)
!1938 = !DILocalVariable(name: "s27", arg: 6, scope: !1930, file: !1844, line: 104, type: !7)
!1939 = !DILocalVariable(name: "s28", arg: 7, scope: !1930, file: !1844, line: 104, type: !7)
!1940 = !DILocation(line: 104, column: 41, scope: !1930, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 125, column: 16, scope: !1942, inlinedAt: !1921)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !1844, line: 122, column: 11)
!1943 = distinct !DILexicalBlock(scope: !1927, file: !1844, line: 121, column: 5)
!1944 = !DILocation(line: 104, column: 80, scope: !1930, inlinedAt: !1941)
!1945 = !DILocation(line: 104, column: 90, scope: !1930, inlinedAt: !1941)
!1946 = !DILocation(line: 106, column: 7, scope: !1947, inlinedAt: !1941)
!1947 = distinct !DILexicalBlock(scope: !1930, file: !1844, line: 106, column: 7)
!1948 = !DILocation(line: 106, column: 7, scope: !1930, inlinedAt: !1941)
!1949 = !DILocalVariable(name: "s2", arg: 2, scope: !1950, file: !1844, line: 90, type: !17)
!1950 = distinct !DISubprogram(name: "strcaseeq5", scope: !1844, file: !1844, line: 90, type: !1951, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!42, !17, !17, !7, !7, !7, !7}
!1953 = !{!1954, !1949, !1955, !1956, !1957, !1958}
!1954 = !DILocalVariable(name: "s1", arg: 1, scope: !1950, file: !1844, line: 90, type: !17)
!1955 = !DILocalVariable(name: "s25", arg: 3, scope: !1950, file: !1844, line: 90, type: !7)
!1956 = !DILocalVariable(name: "s26", arg: 4, scope: !1950, file: !1844, line: 90, type: !7)
!1957 = !DILocalVariable(name: "s27", arg: 5, scope: !1950, file: !1844, line: 90, type: !7)
!1958 = !DILocalVariable(name: "s28", arg: 6, scope: !1950, file: !1844, line: 90, type: !7)
!1959 = !DILocation(line: 90, column: 41, scope: !1950, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 111, column: 16, scope: !1961, inlinedAt: !1941)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1844, line: 108, column: 11)
!1962 = distinct !DILexicalBlock(scope: !1947, file: !1844, line: 107, column: 5)
!1963 = !DILocation(line: 90, column: 70, scope: !1950, inlinedAt: !1960)
!1964 = !DILocation(line: 90, column: 80, scope: !1950, inlinedAt: !1960)
!1965 = !DILocation(line: 92, column: 7, scope: !1966, inlinedAt: !1960)
!1966 = distinct !DILexicalBlock(scope: !1950, file: !1844, line: 92, column: 7)
!1967 = !DILocation(line: 92, column: 7, scope: !1950, inlinedAt: !1960)
!1968 = !DILocation(line: 227, column: 12, scope: !1860)
!1969 = !DILocation(line: 227, column: 21, scope: !1860)
!1970 = !DILocation(line: 227, column: 5, scope: !1860)
!1971 = !DILocation(line: 146, column: 41, scope: !1866, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 167, column: 16, scope: !1881, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 228, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1825, file: !126, line: 228, column: 7)
!1975 = !DILocation(line: 146, column: 110, scope: !1866, inlinedAt: !1972)
!1976 = !DILocation(line: 146, column: 120, scope: !1866, inlinedAt: !1972)
!1977 = !DILocation(line: 148, column: 7, scope: !1886, inlinedAt: !1972)
!1978 = !DILocation(line: 132, column: 41, scope: !1888, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 153, column: 16, scope: !1902, inlinedAt: !1972)
!1980 = !DILocation(line: 132, column: 100, scope: !1888, inlinedAt: !1979)
!1981 = !DILocation(line: 132, column: 110, scope: !1888, inlinedAt: !1979)
!1982 = !DILocation(line: 134, column: 7, scope: !1907, inlinedAt: !1979)
!1983 = !DILocation(line: 134, column: 7, scope: !1888, inlinedAt: !1979)
!1984 = !DILocation(line: 118, column: 41, scope: !1909, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 139, column: 16, scope: !1922, inlinedAt: !1979)
!1986 = !DILocation(line: 118, column: 90, scope: !1909, inlinedAt: !1985)
!1987 = !DILocation(line: 118, column: 100, scope: !1909, inlinedAt: !1985)
!1988 = !DILocation(line: 120, column: 7, scope: !1927, inlinedAt: !1985)
!1989 = !DILocation(line: 120, column: 7, scope: !1909, inlinedAt: !1985)
!1990 = !DILocation(line: 104, column: 41, scope: !1930, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 125, column: 16, scope: !1942, inlinedAt: !1985)
!1992 = !DILocation(line: 104, column: 80, scope: !1930, inlinedAt: !1991)
!1993 = !DILocation(line: 104, column: 90, scope: !1930, inlinedAt: !1991)
!1994 = !DILocation(line: 106, column: 7, scope: !1947, inlinedAt: !1991)
!1995 = !DILocation(line: 106, column: 7, scope: !1930, inlinedAt: !1991)
!1996 = !DILocation(line: 90, column: 41, scope: !1950, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 111, column: 16, scope: !1961, inlinedAt: !1991)
!1998 = !DILocation(line: 90, column: 70, scope: !1950, inlinedAt: !1997)
!1999 = !DILocation(line: 90, column: 80, scope: !1950, inlinedAt: !1997)
!2000 = !DILocation(line: 92, column: 7, scope: !1966, inlinedAt: !1997)
!2001 = !DILocation(line: 92, column: 7, scope: !1950, inlinedAt: !1997)
!2002 = !DILocalVariable(name: "s2", arg: 2, scope: !2003, file: !1844, line: 76, type: !17)
!2003 = distinct !DISubprogram(name: "strcaseeq6", scope: !1844, file: !1844, line: 76, type: !2004, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!42, !17, !17, !7, !7, !7}
!2006 = !{!2007, !2002, !2008, !2009, !2010}
!2007 = !DILocalVariable(name: "s1", arg: 1, scope: !2003, file: !1844, line: 76, type: !17)
!2008 = !DILocalVariable(name: "s26", arg: 3, scope: !2003, file: !1844, line: 76, type: !7)
!2009 = !DILocalVariable(name: "s27", arg: 4, scope: !2003, file: !1844, line: 76, type: !7)
!2010 = !DILocalVariable(name: "s28", arg: 5, scope: !2003, file: !1844, line: 76, type: !7)
!2011 = !DILocation(line: 76, column: 41, scope: !2003, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 97, column: 16, scope: !2013, inlinedAt: !1997)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !1844, line: 94, column: 11)
!2014 = distinct !DILexicalBlock(scope: !1966, file: !1844, line: 93, column: 5)
!2015 = !DILocation(line: 76, column: 60, scope: !2003, inlinedAt: !2012)
!2016 = !DILocation(line: 76, column: 70, scope: !2003, inlinedAt: !2012)
!2017 = !DILocation(line: 78, column: 7, scope: !2018, inlinedAt: !2012)
!2018 = distinct !DILexicalBlock(scope: !2003, file: !1844, line: 78, column: 7)
!2019 = !DILocation(line: 78, column: 7, scope: !2003, inlinedAt: !2012)
!2020 = !DILocalVariable(name: "s2", arg: 2, scope: !2021, file: !1844, line: 62, type: !17)
!2021 = distinct !DISubprogram(name: "strcaseeq7", scope: !1844, file: !1844, line: 62, type: !2022, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!42, !17, !17, !7, !7}
!2024 = !{!2025, !2020, !2026, !2027}
!2025 = !DILocalVariable(name: "s1", arg: 1, scope: !2021, file: !1844, line: 62, type: !17)
!2026 = !DILocalVariable(name: "s27", arg: 3, scope: !2021, file: !1844, line: 62, type: !7)
!2027 = !DILocalVariable(name: "s28", arg: 4, scope: !2021, file: !1844, line: 62, type: !7)
!2028 = !DILocation(line: 62, column: 41, scope: !2021, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 83, column: 16, scope: !2030, inlinedAt: !2012)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !1844, line: 80, column: 11)
!2031 = distinct !DILexicalBlock(scope: !2018, file: !1844, line: 79, column: 5)
!2032 = !DILocation(line: 62, column: 50, scope: !2021, inlinedAt: !2029)
!2033 = !DILocation(line: 62, column: 60, scope: !2021, inlinedAt: !2029)
!2034 = !DILocation(line: 64, column: 7, scope: !2035, inlinedAt: !2029)
!2035 = distinct !DILexicalBlock(scope: !2021, file: !1844, line: 64, column: 7)
!2036 = !DILocation(line: 228, column: 7, scope: !1825)
!2037 = !DILocation(line: 229, column: 12, scope: !1974)
!2038 = !DILocation(line: 229, column: 21, scope: !1974)
!2039 = !DILocation(line: 229, column: 5, scope: !1974)
!2040 = !DILocation(line: 231, column: 13, scope: !1825)
!2041 = !DILocation(line: 231, column: 11, scope: !1825)
!2042 = !DILocation(line: 231, column: 3, scope: !1825)
!2043 = !DILocation(line: 232, column: 1, scope: !1825)
!2044 = distinct !DISubprogram(name: "quotearg_alloc", scope: !126, file: !126, line: 791, type: !2045, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!6, !17, !120, !1169}
!2047 = !{!2048, !2049, !2050}
!2048 = !DILocalVariable(name: "arg", arg: 1, scope: !2044, file: !126, line: 791, type: !17)
!2049 = !DILocalVariable(name: "argsize", arg: 2, scope: !2044, file: !126, line: 791, type: !120)
!2050 = !DILocalVariable(name: "o", arg: 3, scope: !2044, file: !126, line: 792, type: !1169)
!2051 = !DILocation(line: 791, column: 29, scope: !2044)
!2052 = !DILocation(line: 791, column: 41, scope: !2044)
!2053 = !DILocation(line: 792, column: 47, scope: !2044)
!2054 = !DILocalVariable(name: "arg", arg: 1, scope: !2055, file: !126, line: 804, type: !17)
!2055 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !126, file: !126, line: 804, type: !2056, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!6, !17, !120, !558, !1169}
!2058 = !{!2054, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2059 = !DILocalVariable(name: "argsize", arg: 2, scope: !2055, file: !126, line: 804, type: !120)
!2060 = !DILocalVariable(name: "size", arg: 3, scope: !2055, file: !126, line: 804, type: !558)
!2061 = !DILocalVariable(name: "o", arg: 4, scope: !2055, file: !126, line: 805, type: !1169)
!2062 = !DILocalVariable(name: "p", scope: !2055, file: !126, line: 807, type: !1169)
!2063 = !DILocalVariable(name: "e", scope: !2055, file: !126, line: 808, type: !42)
!2064 = !DILocalVariable(name: "flags", scope: !2055, file: !126, line: 810, type: !42)
!2065 = !DILocalVariable(name: "bufsize", scope: !2055, file: !126, line: 811, type: !120)
!2066 = !DILocalVariable(name: "buf", scope: !2055, file: !126, line: 815, type: !6)
!2067 = !DILocation(line: 804, column: 33, scope: !2055, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 794, column: 10, scope: !2044)
!2069 = !DILocation(line: 804, column: 45, scope: !2055, inlinedAt: !2068)
!2070 = !DILocation(line: 804, column: 62, scope: !2055, inlinedAt: !2068)
!2071 = !DILocation(line: 805, column: 51, scope: !2055, inlinedAt: !2068)
!2072 = !DILocation(line: 807, column: 37, scope: !2055, inlinedAt: !2068)
!2073 = !DILocation(line: 807, column: 33, scope: !2055, inlinedAt: !2068)
!2074 = !DILocation(line: 808, column: 11, scope: !2055, inlinedAt: !2068)
!2075 = !DILocation(line: 808, column: 7, scope: !2055, inlinedAt: !2068)
!2076 = !DILocation(line: 810, column: 18, scope: !2055, inlinedAt: !2068)
!2077 = !DILocation(line: 810, column: 24, scope: !2055, inlinedAt: !2068)
!2078 = !DILocation(line: 810, column: 7, scope: !2055, inlinedAt: !2068)
!2079 = !DILocation(line: 811, column: 69, scope: !2055, inlinedAt: !2068)
!2080 = !DILocation(line: 812, column: 53, scope: !2055, inlinedAt: !2068)
!2081 = !DILocation(line: 813, column: 49, scope: !2055, inlinedAt: !2068)
!2082 = !DILocation(line: 814, column: 49, scope: !2055, inlinedAt: !2068)
!2083 = !DILocation(line: 811, column: 20, scope: !2055, inlinedAt: !2068)
!2084 = !DILocation(line: 814, column: 62, scope: !2055, inlinedAt: !2068)
!2085 = !DILocation(line: 811, column: 10, scope: !2055, inlinedAt: !2068)
!2086 = !DILocalVariable(name: "n", arg: 1, scope: !2087, file: !554, line: 220, type: !120)
!2087 = distinct !DISubprogram(name: "xcharalloc", scope: !554, file: !554, line: 220, type: !2088, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!6, !120}
!2090 = !{!2086}
!2091 = !DILocation(line: 220, column: 20, scope: !2087, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 815, column: 15, scope: !2055, inlinedAt: !2068)
!2093 = !DILocation(line: 222, column: 10, scope: !2087, inlinedAt: !2092)
!2094 = !DILocation(line: 815, column: 9, scope: !2055, inlinedAt: !2068)
!2095 = !DILocation(line: 816, column: 60, scope: !2055, inlinedAt: !2068)
!2096 = !DILocation(line: 818, column: 32, scope: !2055, inlinedAt: !2068)
!2097 = !DILocation(line: 818, column: 47, scope: !2055, inlinedAt: !2068)
!2098 = !DILocation(line: 816, column: 3, scope: !2055, inlinedAt: !2068)
!2099 = !DILocation(line: 819, column: 9, scope: !2055, inlinedAt: !2068)
!2100 = !DILocation(line: 794, column: 3, scope: !2044)
!2101 = !DILocation(line: 804, column: 33, scope: !2055)
!2102 = !DILocation(line: 804, column: 45, scope: !2055)
!2103 = !DILocation(line: 804, column: 62, scope: !2055)
!2104 = !DILocation(line: 805, column: 51, scope: !2055)
!2105 = !DILocation(line: 807, column: 37, scope: !2055)
!2106 = !DILocation(line: 807, column: 33, scope: !2055)
!2107 = !DILocation(line: 808, column: 11, scope: !2055)
!2108 = !DILocation(line: 808, column: 7, scope: !2055)
!2109 = !DILocation(line: 810, column: 18, scope: !2055)
!2110 = !DILocation(line: 810, column: 27, scope: !2055)
!2111 = !DILocation(line: 810, column: 24, scope: !2055)
!2112 = !DILocation(line: 810, column: 7, scope: !2055)
!2113 = !DILocation(line: 811, column: 69, scope: !2055)
!2114 = !DILocation(line: 812, column: 53, scope: !2055)
!2115 = !DILocation(line: 813, column: 49, scope: !2055)
!2116 = !DILocation(line: 814, column: 49, scope: !2055)
!2117 = !DILocation(line: 811, column: 20, scope: !2055)
!2118 = !DILocation(line: 814, column: 62, scope: !2055)
!2119 = !DILocation(line: 811, column: 10, scope: !2055)
!2120 = !DILocation(line: 220, column: 20, scope: !2087, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 815, column: 15, scope: !2055)
!2122 = !DILocation(line: 222, column: 10, scope: !2087, inlinedAt: !2121)
!2123 = !DILocation(line: 815, column: 9, scope: !2055)
!2124 = !DILocation(line: 816, column: 60, scope: !2055)
!2125 = !DILocation(line: 818, column: 32, scope: !2055)
!2126 = !DILocation(line: 818, column: 47, scope: !2055)
!2127 = !DILocation(line: 816, column: 3, scope: !2055)
!2128 = !DILocation(line: 819, column: 9, scope: !2055)
!2129 = !DILocation(line: 820, column: 7, scope: !2055)
!2130 = !DILocation(line: 821, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2055, file: !126, line: 820, column: 7)
!2132 = !{!2133, !2133, i64 0}
!2133 = !{!"long", !604, i64 0}
!2134 = !DILocation(line: 821, column: 5, scope: !2131)
!2135 = !DILocation(line: 822, column: 3, scope: !2055)
!2136 = distinct !DISubprogram(name: "quotearg_free", scope: !126, file: !126, line: 840, type: !611, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2137)
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "sv", scope: !2136, file: !126, line: 842, type: !152)
!2139 = !DILocalVariable(name: "i", scope: !2136, file: !126, line: 843, type: !42)
!2140 = !DILocation(line: 842, column: 24, scope: !2136)
!2141 = !DILocation(line: 842, column: 19, scope: !2136)
!2142 = !DILocation(line: 843, column: 7, scope: !2136)
!2143 = !DILocation(line: 844, column: 19, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !126, line: 844, column: 3)
!2145 = distinct !DILexicalBlock(scope: !2136, file: !126, line: 844, column: 3)
!2146 = !DILocation(line: 844, column: 17, scope: !2144)
!2147 = !DILocation(line: 844, column: 3, scope: !2145)
!2148 = !DILocation(line: 845, column: 17, scope: !2144)
!2149 = !{!2150, !603, i64 8}
!2150 = !{!"slotvec", !2133, i64 0, !603, i64 8}
!2151 = !DILocation(line: 845, column: 5, scope: !2144)
!2152 = !DILocation(line: 844, column: 28, scope: !2144)
!2153 = distinct !{!2153, !2147, !2154}
!2154 = !DILocation(line: 845, column: 20, scope: !2145)
!2155 = !DILocation(line: 846, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2136, file: !126, line: 846, column: 7)
!2157 = !DILocation(line: 846, column: 17, scope: !2156)
!2158 = !DILocation(line: 846, column: 7, scope: !2136)
!2159 = !DILocation(line: 848, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !126, line: 847, column: 5)
!2161 = !DILocation(line: 849, column: 21, scope: !2160)
!2162 = !{!2150, !2133, i64 0}
!2163 = !DILocation(line: 850, column: 20, scope: !2160)
!2164 = !DILocation(line: 851, column: 5, scope: !2160)
!2165 = !DILocation(line: 852, column: 10, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2136, file: !126, line: 852, column: 7)
!2167 = !DILocation(line: 852, column: 7, scope: !2136)
!2168 = !DILocation(line: 854, column: 13, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !126, line: 853, column: 5)
!2170 = !DILocation(line: 854, column: 7, scope: !2169)
!2171 = !DILocation(line: 855, column: 15, scope: !2169)
!2172 = !DILocation(line: 856, column: 5, scope: !2169)
!2173 = !DILocation(line: 857, column: 10, scope: !2136)
!2174 = !DILocation(line: 858, column: 1, scope: !2136)
!2175 = distinct !DISubprogram(name: "quotearg_n", scope: !126, file: !126, line: 922, type: !2176, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!6, !42, !17}
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "n", arg: 1, scope: !2175, file: !126, line: 922, type: !42)
!2180 = !DILocalVariable(name: "arg", arg: 2, scope: !2175, file: !126, line: 922, type: !17)
!2181 = !DILocation(line: 922, column: 17, scope: !2175)
!2182 = !DILocation(line: 922, column: 32, scope: !2175)
!2183 = !DILocation(line: 924, column: 10, scope: !2175)
!2184 = !DILocation(line: 924, column: 3, scope: !2175)
!2185 = distinct !DISubprogram(name: "quotearg_n_options", scope: !126, file: !126, line: 869, type: !2186, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!6, !42, !17, !120, !1169}
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2198, !2200, !2201, !2202}
!2189 = !DILocalVariable(name: "n", arg: 1, scope: !2185, file: !126, line: 869, type: !42)
!2190 = !DILocalVariable(name: "arg", arg: 2, scope: !2185, file: !126, line: 869, type: !17)
!2191 = !DILocalVariable(name: "argsize", arg: 3, scope: !2185, file: !126, line: 869, type: !120)
!2192 = !DILocalVariable(name: "options", arg: 4, scope: !2185, file: !126, line: 870, type: !1169)
!2193 = !DILocalVariable(name: "e", scope: !2185, file: !126, line: 872, type: !42)
!2194 = !DILocalVariable(name: "sv", scope: !2185, file: !126, line: 874, type: !152)
!2195 = !DILocalVariable(name: "preallocated", scope: !2196, file: !126, line: 881, type: !64)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !126, line: 880, column: 5)
!2197 = distinct !DILexicalBlock(scope: !2185, file: !126, line: 879, column: 7)
!2198 = !DILocalVariable(name: "size", scope: !2199, file: !126, line: 894, type: !120)
!2199 = distinct !DILexicalBlock(scope: !2185, file: !126, line: 893, column: 3)
!2200 = !DILocalVariable(name: "val", scope: !2199, file: !126, line: 895, type: !6)
!2201 = !DILocalVariable(name: "flags", scope: !2199, file: !126, line: 897, type: !42)
!2202 = !DILocalVariable(name: "qsize", scope: !2199, file: !126, line: 898, type: !120)
!2203 = !DILocation(line: 869, column: 25, scope: !2185)
!2204 = !DILocation(line: 869, column: 40, scope: !2185)
!2205 = !DILocation(line: 869, column: 52, scope: !2185)
!2206 = !DILocation(line: 870, column: 51, scope: !2185)
!2207 = !DILocation(line: 872, column: 11, scope: !2185)
!2208 = !DILocation(line: 872, column: 7, scope: !2185)
!2209 = !DILocation(line: 874, column: 24, scope: !2185)
!2210 = !DILocation(line: 874, column: 19, scope: !2185)
!2211 = !DILocation(line: 876, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2185, file: !126, line: 876, column: 7)
!2213 = !DILocation(line: 876, column: 7, scope: !2185)
!2214 = !DILocation(line: 877, column: 5, scope: !2212)
!2215 = !DILocation(line: 879, column: 7, scope: !2197)
!2216 = !DILocation(line: 879, column: 14, scope: !2197)
!2217 = !DILocation(line: 879, column: 7, scope: !2185)
!2218 = !DILocation(line: 881, column: 31, scope: !2196)
!2219 = !DILocation(line: 883, column: 67, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2196, file: !126, line: 883, column: 11)
!2221 = !DILocation(line: 883, column: 11, scope: !2196)
!2222 = !DILocation(line: 884, column: 9, scope: !2220)
!2223 = !DILocation(line: 886, column: 32, scope: !2196)
!2224 = !DILocation(line: 886, column: 61, scope: !2196)
!2225 = !DILocation(line: 886, column: 58, scope: !2196)
!2226 = !DILocation(line: 886, column: 66, scope: !2196)
!2227 = !DILocation(line: 886, column: 22, scope: !2196)
!2228 = !DILocation(line: 886, column: 15, scope: !2196)
!2229 = !DILocation(line: 887, column: 11, scope: !2196)
!2230 = !DILocation(line: 888, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2196, file: !126, line: 887, column: 11)
!2232 = !{i64 0, i64 8, !2132, i64 8, i64 8, !602}
!2233 = !DILocation(line: 888, column: 9, scope: !2231)
!2234 = !DILocation(line: 889, column: 20, scope: !2196)
!2235 = !DILocation(line: 889, column: 18, scope: !2196)
!2236 = !DILocation(line: 889, column: 7, scope: !2196)
!2237 = !DILocation(line: 889, column: 38, scope: !2196)
!2238 = !DILocation(line: 889, column: 31, scope: !2196)
!2239 = !DILocation(line: 889, column: 48, scope: !2196)
!2240 = !DILocation(line: 890, column: 14, scope: !2196)
!2241 = !DILocation(line: 891, column: 5, scope: !2196)
!2242 = !DILocation(line: 894, column: 19, scope: !2199)
!2243 = !DILocation(line: 894, column: 25, scope: !2199)
!2244 = !DILocation(line: 894, column: 12, scope: !2199)
!2245 = !DILocation(line: 895, column: 23, scope: !2199)
!2246 = !DILocation(line: 895, column: 11, scope: !2199)
!2247 = !DILocation(line: 897, column: 26, scope: !2199)
!2248 = !DILocation(line: 897, column: 32, scope: !2199)
!2249 = !DILocation(line: 897, column: 9, scope: !2199)
!2250 = !DILocation(line: 899, column: 55, scope: !2199)
!2251 = !DILocation(line: 900, column: 46, scope: !2199)
!2252 = !DILocation(line: 901, column: 55, scope: !2199)
!2253 = !DILocation(line: 902, column: 55, scope: !2199)
!2254 = !DILocation(line: 898, column: 20, scope: !2199)
!2255 = !DILocation(line: 898, column: 12, scope: !2199)
!2256 = !DILocation(line: 904, column: 14, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2199, file: !126, line: 904, column: 9)
!2258 = !DILocation(line: 904, column: 9, scope: !2199)
!2259 = !DILocation(line: 906, column: 35, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !126, line: 905, column: 7)
!2261 = !DILocation(line: 906, column: 20, scope: !2260)
!2262 = !DILocation(line: 907, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !126, line: 907, column: 13)
!2264 = !DILocation(line: 907, column: 13, scope: !2260)
!2265 = !DILocation(line: 908, column: 11, scope: !2263)
!2266 = !DILocation(line: 220, column: 20, scope: !2087, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 909, column: 27, scope: !2260)
!2268 = !DILocation(line: 222, column: 10, scope: !2087, inlinedAt: !2267)
!2269 = !DILocation(line: 909, column: 19, scope: !2260)
!2270 = !DILocation(line: 910, column: 69, scope: !2260)
!2271 = !DILocation(line: 912, column: 44, scope: !2260)
!2272 = !DILocation(line: 913, column: 44, scope: !2260)
!2273 = !DILocation(line: 910, column: 9, scope: !2260)
!2274 = !DILocation(line: 914, column: 7, scope: !2260)
!2275 = !DILocation(line: 916, column: 11, scope: !2199)
!2276 = !DILocation(line: 917, column: 5, scope: !2199)
!2277 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !126, file: !126, line: 928, type: !2278, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!6, !42, !17, !120}
!2280 = !{!2281, !2282, !2283}
!2281 = !DILocalVariable(name: "n", arg: 1, scope: !2277, file: !126, line: 928, type: !42)
!2282 = !DILocalVariable(name: "arg", arg: 2, scope: !2277, file: !126, line: 928, type: !17)
!2283 = !DILocalVariable(name: "argsize", arg: 3, scope: !2277, file: !126, line: 928, type: !120)
!2284 = !DILocation(line: 928, column: 21, scope: !2277)
!2285 = !DILocation(line: 928, column: 36, scope: !2277)
!2286 = !DILocation(line: 928, column: 48, scope: !2277)
!2287 = !DILocation(line: 930, column: 10, scope: !2277)
!2288 = !DILocation(line: 930, column: 3, scope: !2277)
!2289 = distinct !DISubprogram(name: "quotearg", scope: !126, file: !126, line: 934, type: !2290, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!6, !17}
!2292 = !{!2293}
!2293 = !DILocalVariable(name: "arg", arg: 1, scope: !2289, file: !126, line: 934, type: !17)
!2294 = !DILocation(line: 934, column: 23, scope: !2289)
!2295 = !DILocation(line: 922, column: 17, scope: !2175, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 936, column: 10, scope: !2289)
!2297 = !DILocation(line: 922, column: 32, scope: !2175, inlinedAt: !2296)
!2298 = !DILocation(line: 924, column: 10, scope: !2175, inlinedAt: !2296)
!2299 = !DILocation(line: 936, column: 3, scope: !2289)
!2300 = distinct !DISubprogram(name: "quotearg_mem", scope: !126, file: !126, line: 940, type: !2301, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!6, !17, !120}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2300, file: !126, line: 940, type: !17)
!2305 = !DILocalVariable(name: "argsize", arg: 2, scope: !2300, file: !126, line: 940, type: !120)
!2306 = !DILocation(line: 940, column: 27, scope: !2300)
!2307 = !DILocation(line: 940, column: 39, scope: !2300)
!2308 = !DILocation(line: 928, column: 21, scope: !2277, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 942, column: 10, scope: !2300)
!2310 = !DILocation(line: 928, column: 36, scope: !2277, inlinedAt: !2309)
!2311 = !DILocation(line: 928, column: 48, scope: !2277, inlinedAt: !2309)
!2312 = !DILocation(line: 930, column: 10, scope: !2277, inlinedAt: !2309)
!2313 = !DILocation(line: 942, column: 3, scope: !2300)
!2314 = distinct !DISubprogram(name: "quotearg_n_style", scope: !126, file: !126, line: 946, type: !2315, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!6, !42, !84, !17}
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DILocalVariable(name: "n", arg: 1, scope: !2314, file: !126, line: 946, type: !42)
!2319 = !DILocalVariable(name: "s", arg: 2, scope: !2314, file: !126, line: 946, type: !84)
!2320 = !DILocalVariable(name: "arg", arg: 3, scope: !2314, file: !126, line: 946, type: !17)
!2321 = !DILocalVariable(name: "o", scope: !2314, file: !126, line: 948, type: !1170)
!2322 = !DILocalVariable(name: "o", scope: !2323, file: !126, line: 187, type: !133)
!2323 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !126, file: !126, line: 185, type: !2324, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!133, !84}
!2326 = !{!2327, !2322}
!2327 = !DILocalVariable(name: "style", arg: 1, scope: !2323, file: !126, line: 185, type: !84)
!2328 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2329 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 948, column: 36, scope: !2314)
!2331 = !DILocation(line: 946, column: 23, scope: !2314)
!2332 = !DILocation(line: 946, column: 45, scope: !2314)
!2333 = !DILocation(line: 946, column: 60, scope: !2314)
!2334 = !DILocation(line: 948, column: 3, scope: !2314)
!2335 = !DILocation(line: 948, column: 32, scope: !2314)
!2336 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2330)
!2337 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2330)
!2338 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2339 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2330)
!2340 = distinct !DILexicalBlock(scope: !2323, file: !126, line: 188, column: 7)
!2341 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2330)
!2342 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2330)
!2343 = !{!2344}
!2344 = distinct !{!2344, !2345, !"quoting_options_from_style: argument 0"}
!2345 = distinct !{!2345, !"quoting_options_from_style"}
!2346 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2330)
!2347 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2330)
!2348 = !DILocation(line: 949, column: 10, scope: !2314)
!2349 = !DILocation(line: 950, column: 1, scope: !2314)
!2350 = !DILocation(line: 949, column: 3, scope: !2314)
!2351 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !126, file: !126, line: 953, type: !2352, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!6, !42, !84, !17, !120}
!2354 = !{!2355, !2356, !2357, !2358, !2359}
!2355 = !DILocalVariable(name: "n", arg: 1, scope: !2351, file: !126, line: 953, type: !42)
!2356 = !DILocalVariable(name: "s", arg: 2, scope: !2351, file: !126, line: 953, type: !84)
!2357 = !DILocalVariable(name: "arg", arg: 3, scope: !2351, file: !126, line: 954, type: !17)
!2358 = !DILocalVariable(name: "argsize", arg: 4, scope: !2351, file: !126, line: 954, type: !120)
!2359 = !DILocalVariable(name: "o", scope: !2351, file: !126, line: 956, type: !1170)
!2360 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 956, column: 36, scope: !2351)
!2362 = !DILocation(line: 953, column: 27, scope: !2351)
!2363 = !DILocation(line: 953, column: 49, scope: !2351)
!2364 = !DILocation(line: 954, column: 35, scope: !2351)
!2365 = !DILocation(line: 954, column: 47, scope: !2351)
!2366 = !DILocation(line: 956, column: 3, scope: !2351)
!2367 = !DILocation(line: 956, column: 32, scope: !2351)
!2368 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2361)
!2369 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2361)
!2370 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2361)
!2371 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2361)
!2372 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2361)
!2373 = !{!2374}
!2374 = distinct !{!2374, !2375, !"quoting_options_from_style: argument 0"}
!2375 = distinct !{!2375, !"quoting_options_from_style"}
!2376 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2361)
!2377 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2361)
!2378 = !DILocation(line: 957, column: 10, scope: !2351)
!2379 = !DILocation(line: 958, column: 1, scope: !2351)
!2380 = !DILocation(line: 957, column: 3, scope: !2351)
!2381 = distinct !DISubprogram(name: "quotearg_style", scope: !126, file: !126, line: 961, type: !2382, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!6, !84, !17}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "s", arg: 1, scope: !2381, file: !126, line: 961, type: !84)
!2386 = !DILocalVariable(name: "arg", arg: 2, scope: !2381, file: !126, line: 961, type: !17)
!2387 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 948, column: 36, scope: !2314, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 963, column: 10, scope: !2381)
!2390 = !DILocation(line: 961, column: 36, scope: !2381)
!2391 = !DILocation(line: 961, column: 51, scope: !2381)
!2392 = !DILocation(line: 946, column: 23, scope: !2314, inlinedAt: !2389)
!2393 = !DILocation(line: 946, column: 45, scope: !2314, inlinedAt: !2389)
!2394 = !DILocation(line: 946, column: 60, scope: !2314, inlinedAt: !2389)
!2395 = !DILocation(line: 948, column: 3, scope: !2314, inlinedAt: !2389)
!2396 = !DILocation(line: 948, column: 32, scope: !2314, inlinedAt: !2389)
!2397 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2388)
!2398 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2388)
!2399 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2388)
!2400 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2388)
!2401 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2388)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2388)
!2406 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2388)
!2407 = !DILocation(line: 949, column: 10, scope: !2314, inlinedAt: !2389)
!2408 = !DILocation(line: 950, column: 1, scope: !2314, inlinedAt: !2389)
!2409 = !DILocation(line: 963, column: 3, scope: !2381)
!2410 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !126, file: !126, line: 967, type: !2411, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!6, !84, !17, !120}
!2413 = !{!2414, !2415, !2416}
!2414 = !DILocalVariable(name: "s", arg: 1, scope: !2410, file: !126, line: 967, type: !84)
!2415 = !DILocalVariable(name: "arg", arg: 2, scope: !2410, file: !126, line: 967, type: !17)
!2416 = !DILocalVariable(name: "argsize", arg: 3, scope: !2410, file: !126, line: 967, type: !120)
!2417 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 956, column: 36, scope: !2351, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 969, column: 10, scope: !2410)
!2420 = !DILocation(line: 967, column: 40, scope: !2410)
!2421 = !DILocation(line: 967, column: 55, scope: !2410)
!2422 = !DILocation(line: 967, column: 67, scope: !2410)
!2423 = !DILocation(line: 953, column: 27, scope: !2351, inlinedAt: !2419)
!2424 = !DILocation(line: 953, column: 49, scope: !2351, inlinedAt: !2419)
!2425 = !DILocation(line: 954, column: 35, scope: !2351, inlinedAt: !2419)
!2426 = !DILocation(line: 954, column: 47, scope: !2351, inlinedAt: !2419)
!2427 = !DILocation(line: 956, column: 3, scope: !2351, inlinedAt: !2419)
!2428 = !DILocation(line: 956, column: 32, scope: !2351, inlinedAt: !2419)
!2429 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2418)
!2430 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2418)
!2431 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2418)
!2432 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2418)
!2433 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2418)
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"quoting_options_from_style: argument 0"}
!2436 = distinct !{!2436, !"quoting_options_from_style"}
!2437 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2418)
!2438 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2418)
!2439 = !DILocation(line: 957, column: 10, scope: !2351, inlinedAt: !2419)
!2440 = !DILocation(line: 958, column: 1, scope: !2351, inlinedAt: !2419)
!2441 = !DILocation(line: 969, column: 3, scope: !2410)
!2442 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !126, file: !126, line: 973, type: !2443, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!6, !17, !120, !7}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "arg", arg: 1, scope: !2442, file: !126, line: 973, type: !17)
!2447 = !DILocalVariable(name: "argsize", arg: 2, scope: !2442, file: !126, line: 973, type: !120)
!2448 = !DILocalVariable(name: "ch", arg: 3, scope: !2442, file: !126, line: 973, type: !7)
!2449 = !DILocalVariable(name: "options", scope: !2442, file: !126, line: 975, type: !133)
!2450 = !DILocation(line: 973, column: 32, scope: !2442)
!2451 = !DILocation(line: 973, column: 44, scope: !2442)
!2452 = !DILocation(line: 973, column: 58, scope: !2442)
!2453 = !DILocation(line: 975, column: 3, scope: !2442)
!2454 = !DILocation(line: 976, column: 13, scope: !2442)
!2455 = !{i64 0, i64 4, !863, i64 4, i64 4, !691, i64 8, i64 32, !863, i64 40, i64 8, !602, i64 48, i64 8, !602}
!2456 = !DILocation(line: 975, column: 26, scope: !2442)
!2457 = !DILocation(line: 144, column: 43, scope: !1191, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 977, column: 3, scope: !2442)
!2459 = !DILocation(line: 144, column: 51, scope: !1191, inlinedAt: !2458)
!2460 = !DILocation(line: 144, column: 58, scope: !1191, inlinedAt: !2458)
!2461 = !DILocation(line: 146, column: 17, scope: !1191, inlinedAt: !2458)
!2462 = !DILocation(line: 148, column: 62, scope: !1191, inlinedAt: !2458)
!2463 = !DILocation(line: 148, column: 57, scope: !1191, inlinedAt: !2458)
!2464 = !DILocation(line: 147, column: 17, scope: !1191, inlinedAt: !2458)
!2465 = !DILocation(line: 149, column: 18, scope: !1191, inlinedAt: !2458)
!2466 = !DILocation(line: 149, column: 15, scope: !1191, inlinedAt: !2458)
!2467 = !DILocation(line: 149, column: 7, scope: !1191, inlinedAt: !2458)
!2468 = !DILocation(line: 150, column: 12, scope: !1191, inlinedAt: !2458)
!2469 = !DILocation(line: 150, column: 15, scope: !1191, inlinedAt: !2458)
!2470 = !DILocation(line: 150, column: 25, scope: !1191, inlinedAt: !2458)
!2471 = !DILocation(line: 150, column: 7, scope: !1191, inlinedAt: !2458)
!2472 = !DILocation(line: 151, column: 18, scope: !1191, inlinedAt: !2458)
!2473 = !DILocation(line: 151, column: 23, scope: !1191, inlinedAt: !2458)
!2474 = !DILocation(line: 151, column: 6, scope: !1191, inlinedAt: !2458)
!2475 = !DILocation(line: 978, column: 10, scope: !2442)
!2476 = !DILocation(line: 979, column: 1, scope: !2442)
!2477 = !DILocation(line: 978, column: 3, scope: !2442)
!2478 = distinct !DISubprogram(name: "quotearg_char", scope: !126, file: !126, line: 982, type: !2479, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!6, !17, !7}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "arg", arg: 1, scope: !2478, file: !126, line: 982, type: !17)
!2483 = !DILocalVariable(name: "ch", arg: 2, scope: !2478, file: !126, line: 982, type: !7)
!2484 = !DILocation(line: 982, column: 28, scope: !2478)
!2485 = !DILocation(line: 982, column: 38, scope: !2478)
!2486 = !DILocation(line: 973, column: 32, scope: !2442, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 984, column: 10, scope: !2478)
!2488 = !DILocation(line: 973, column: 44, scope: !2442, inlinedAt: !2487)
!2489 = !DILocation(line: 973, column: 58, scope: !2442, inlinedAt: !2487)
!2490 = !DILocation(line: 975, column: 3, scope: !2442, inlinedAt: !2487)
!2491 = !DILocation(line: 976, column: 13, scope: !2442, inlinedAt: !2487)
!2492 = !DILocation(line: 975, column: 26, scope: !2442, inlinedAt: !2487)
!2493 = !DILocation(line: 144, column: 43, scope: !1191, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 977, column: 3, scope: !2442, inlinedAt: !2487)
!2495 = !DILocation(line: 144, column: 51, scope: !1191, inlinedAt: !2494)
!2496 = !DILocation(line: 144, column: 58, scope: !1191, inlinedAt: !2494)
!2497 = !DILocation(line: 146, column: 17, scope: !1191, inlinedAt: !2494)
!2498 = !DILocation(line: 148, column: 62, scope: !1191, inlinedAt: !2494)
!2499 = !DILocation(line: 148, column: 57, scope: !1191, inlinedAt: !2494)
!2500 = !DILocation(line: 147, column: 17, scope: !1191, inlinedAt: !2494)
!2501 = !DILocation(line: 149, column: 18, scope: !1191, inlinedAt: !2494)
!2502 = !DILocation(line: 149, column: 15, scope: !1191, inlinedAt: !2494)
!2503 = !DILocation(line: 149, column: 7, scope: !1191, inlinedAt: !2494)
!2504 = !DILocation(line: 150, column: 12, scope: !1191, inlinedAt: !2494)
!2505 = !DILocation(line: 150, column: 15, scope: !1191, inlinedAt: !2494)
!2506 = !DILocation(line: 150, column: 25, scope: !1191, inlinedAt: !2494)
!2507 = !DILocation(line: 150, column: 7, scope: !1191, inlinedAt: !2494)
!2508 = !DILocation(line: 151, column: 18, scope: !1191, inlinedAt: !2494)
!2509 = !DILocation(line: 151, column: 23, scope: !1191, inlinedAt: !2494)
!2510 = !DILocation(line: 151, column: 6, scope: !1191, inlinedAt: !2494)
!2511 = !DILocation(line: 978, column: 10, scope: !2442, inlinedAt: !2487)
!2512 = !DILocation(line: 979, column: 1, scope: !2442, inlinedAt: !2487)
!2513 = !DILocation(line: 984, column: 3, scope: !2478)
!2514 = distinct !DISubprogram(name: "quotearg_colon", scope: !126, file: !126, line: 988, type: !2290, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2515)
!2515 = !{!2516}
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !126, line: 988, type: !17)
!2517 = !DILocation(line: 988, column: 29, scope: !2514)
!2518 = !DILocation(line: 982, column: 28, scope: !2478, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 990, column: 10, scope: !2514)
!2520 = !DILocation(line: 982, column: 38, scope: !2478, inlinedAt: !2519)
!2521 = !DILocation(line: 973, column: 32, scope: !2442, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 984, column: 10, scope: !2478, inlinedAt: !2519)
!2523 = !DILocation(line: 973, column: 44, scope: !2442, inlinedAt: !2522)
!2524 = !DILocation(line: 973, column: 58, scope: !2442, inlinedAt: !2522)
!2525 = !DILocation(line: 975, column: 3, scope: !2442, inlinedAt: !2522)
!2526 = !DILocation(line: 976, column: 13, scope: !2442, inlinedAt: !2522)
!2527 = !DILocation(line: 975, column: 26, scope: !2442, inlinedAt: !2522)
!2528 = !DILocation(line: 144, column: 43, scope: !1191, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 977, column: 3, scope: !2442, inlinedAt: !2522)
!2530 = !DILocation(line: 144, column: 51, scope: !1191, inlinedAt: !2529)
!2531 = !DILocation(line: 144, column: 58, scope: !1191, inlinedAt: !2529)
!2532 = !DILocation(line: 146, column: 17, scope: !1191, inlinedAt: !2529)
!2533 = !DILocation(line: 148, column: 57, scope: !1191, inlinedAt: !2529)
!2534 = !DILocation(line: 147, column: 17, scope: !1191, inlinedAt: !2529)
!2535 = !DILocation(line: 149, column: 7, scope: !1191, inlinedAt: !2529)
!2536 = !DILocation(line: 150, column: 12, scope: !1191, inlinedAt: !2529)
!2537 = !DILocation(line: 151, column: 6, scope: !1191, inlinedAt: !2529)
!2538 = !DILocation(line: 978, column: 10, scope: !2442, inlinedAt: !2522)
!2539 = !DILocation(line: 979, column: 1, scope: !2442, inlinedAt: !2522)
!2540 = !DILocation(line: 990, column: 3, scope: !2514)
!2541 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !126, file: !126, line: 994, type: !2301, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2542)
!2542 = !{!2543, !2544}
!2543 = !DILocalVariable(name: "arg", arg: 1, scope: !2541, file: !126, line: 994, type: !17)
!2544 = !DILocalVariable(name: "argsize", arg: 2, scope: !2541, file: !126, line: 994, type: !120)
!2545 = !DILocation(line: 994, column: 33, scope: !2541)
!2546 = !DILocation(line: 994, column: 45, scope: !2541)
!2547 = !DILocation(line: 973, column: 32, scope: !2442, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 996, column: 10, scope: !2541)
!2549 = !DILocation(line: 973, column: 44, scope: !2442, inlinedAt: !2548)
!2550 = !DILocation(line: 973, column: 58, scope: !2442, inlinedAt: !2548)
!2551 = !DILocation(line: 975, column: 3, scope: !2442, inlinedAt: !2548)
!2552 = !DILocation(line: 976, column: 13, scope: !2442, inlinedAt: !2548)
!2553 = !DILocation(line: 975, column: 26, scope: !2442, inlinedAt: !2548)
!2554 = !DILocation(line: 144, column: 43, scope: !1191, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 977, column: 3, scope: !2442, inlinedAt: !2548)
!2556 = !DILocation(line: 144, column: 51, scope: !1191, inlinedAt: !2555)
!2557 = !DILocation(line: 144, column: 58, scope: !1191, inlinedAt: !2555)
!2558 = !DILocation(line: 146, column: 17, scope: !1191, inlinedAt: !2555)
!2559 = !DILocation(line: 148, column: 57, scope: !1191, inlinedAt: !2555)
!2560 = !DILocation(line: 147, column: 17, scope: !1191, inlinedAt: !2555)
!2561 = !DILocation(line: 149, column: 7, scope: !1191, inlinedAt: !2555)
!2562 = !DILocation(line: 150, column: 12, scope: !1191, inlinedAt: !2555)
!2563 = !DILocation(line: 151, column: 6, scope: !1191, inlinedAt: !2555)
!2564 = !DILocation(line: 978, column: 10, scope: !2442, inlinedAt: !2548)
!2565 = !DILocation(line: 979, column: 1, scope: !2442, inlinedAt: !2548)
!2566 = !DILocation(line: 996, column: 3, scope: !2541)
!2567 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !126, file: !126, line: 1000, type: !2315, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2568)
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DILocalVariable(name: "n", arg: 1, scope: !2567, file: !126, line: 1000, type: !42)
!2570 = !DILocalVariable(name: "s", arg: 2, scope: !2567, file: !126, line: 1000, type: !84)
!2571 = !DILocalVariable(name: "arg", arg: 3, scope: !2567, file: !126, line: 1000, type: !17)
!2572 = !DILocalVariable(name: "options", scope: !2567, file: !126, line: 1002, type: !133)
!2573 = !DILocation(line: 187, column: 26, scope: !2323, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 1003, column: 13, scope: !2567)
!2575 = !DILocation(line: 1000, column: 29, scope: !2567)
!2576 = !DILocation(line: 1000, column: 51, scope: !2567)
!2577 = !DILocation(line: 1000, column: 66, scope: !2567)
!2578 = !DILocation(line: 1002, column: 3, scope: !2567)
!2579 = !DILocation(line: 185, column: 48, scope: !2323, inlinedAt: !2574)
!2580 = !DILocation(line: 187, column: 3, scope: !2323, inlinedAt: !2574)
!2581 = !DILocation(line: 188, column: 13, scope: !2340, inlinedAt: !2574)
!2582 = !DILocation(line: 188, column: 7, scope: !2323, inlinedAt: !2574)
!2583 = !DILocation(line: 189, column: 5, scope: !2340, inlinedAt: !2574)
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"quoting_options_from_style: argument 0"}
!2586 = distinct !{!2586, !"quoting_options_from_style"}
!2587 = !DILocation(line: 191, column: 10, scope: !2323, inlinedAt: !2574)
!2588 = !DILocation(line: 192, column: 1, scope: !2323, inlinedAt: !2574)
!2589 = !DILocation(line: 1003, column: 13, scope: !2567)
!2590 = !DILocation(line: 1002, column: 26, scope: !2567)
!2591 = !DILocation(line: 144, column: 43, scope: !1191, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1004, column: 3, scope: !2567)
!2593 = !DILocation(line: 144, column: 51, scope: !1191, inlinedAt: !2592)
!2594 = !DILocation(line: 144, column: 58, scope: !1191, inlinedAt: !2592)
!2595 = !DILocation(line: 146, column: 17, scope: !1191, inlinedAt: !2592)
!2596 = !DILocation(line: 148, column: 57, scope: !1191, inlinedAt: !2592)
!2597 = !DILocation(line: 147, column: 17, scope: !1191, inlinedAt: !2592)
!2598 = !DILocation(line: 149, column: 7, scope: !1191, inlinedAt: !2592)
!2599 = !DILocation(line: 150, column: 12, scope: !1191, inlinedAt: !2592)
!2600 = !DILocation(line: 151, column: 6, scope: !1191, inlinedAt: !2592)
!2601 = !DILocation(line: 1005, column: 10, scope: !2567)
!2602 = !DILocation(line: 1006, column: 1, scope: !2567)
!2603 = !DILocation(line: 1005, column: 3, scope: !2567)
!2604 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !126, file: !126, line: 1009, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!6, !42, !17, !17, !17}
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DILocalVariable(name: "n", arg: 1, scope: !2604, file: !126, line: 1009, type: !42)
!2609 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2604, file: !126, line: 1009, type: !17)
!2610 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2604, file: !126, line: 1010, type: !17)
!2611 = !DILocalVariable(name: "arg", arg: 4, scope: !2604, file: !126, line: 1010, type: !17)
!2612 = !DILocation(line: 1009, column: 24, scope: !2604)
!2613 = !DILocation(line: 1009, column: 39, scope: !2604)
!2614 = !DILocation(line: 1010, column: 32, scope: !2604)
!2615 = !DILocation(line: 1010, column: 57, scope: !2604)
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !126, line: 1017, type: !42)
!2617 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !126, file: !126, line: 1017, type: !2618, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!6, !42, !17, !17, !17, !120}
!2620 = !{!2616, !2621, !2622, !2623, !2624, !2625}
!2621 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2617, file: !126, line: 1017, type: !17)
!2622 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2617, file: !126, line: 1018, type: !17)
!2623 = !DILocalVariable(name: "arg", arg: 4, scope: !2617, file: !126, line: 1019, type: !17)
!2624 = !DILocalVariable(name: "argsize", arg: 5, scope: !2617, file: !126, line: 1019, type: !120)
!2625 = !DILocalVariable(name: "o", scope: !2617, file: !126, line: 1021, type: !133)
!2626 = !DILocation(line: 1017, column: 28, scope: !2617, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1012, column: 10, scope: !2604)
!2628 = !DILocation(line: 1017, column: 43, scope: !2617, inlinedAt: !2627)
!2629 = !DILocation(line: 1018, column: 36, scope: !2617, inlinedAt: !2627)
!2630 = !DILocation(line: 1019, column: 36, scope: !2617, inlinedAt: !2627)
!2631 = !DILocation(line: 1019, column: 48, scope: !2617, inlinedAt: !2627)
!2632 = !DILocation(line: 1021, column: 3, scope: !2617, inlinedAt: !2627)
!2633 = !DILocation(line: 1021, column: 30, scope: !2617, inlinedAt: !2627)
!2634 = !DILocation(line: 1021, column: 26, scope: !2617, inlinedAt: !2627)
!2635 = !DILocation(line: 171, column: 45, scope: !1240, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1022, column: 3, scope: !2617, inlinedAt: !2627)
!2637 = !DILocation(line: 172, column: 33, scope: !1240, inlinedAt: !2636)
!2638 = !DILocation(line: 172, column: 57, scope: !1240, inlinedAt: !2636)
!2639 = !DILocation(line: 176, column: 6, scope: !1240, inlinedAt: !2636)
!2640 = !DILocation(line: 176, column: 12, scope: !1240, inlinedAt: !2636)
!2641 = !DILocation(line: 177, column: 8, scope: !1256, inlinedAt: !2636)
!2642 = !DILocation(line: 177, column: 23, scope: !1256, inlinedAt: !2636)
!2643 = !DILocation(line: 177, column: 19, scope: !1256, inlinedAt: !2636)
!2644 = !DILocation(line: 178, column: 5, scope: !1256, inlinedAt: !2636)
!2645 = !DILocation(line: 179, column: 6, scope: !1240, inlinedAt: !2636)
!2646 = !DILocation(line: 179, column: 17, scope: !1240, inlinedAt: !2636)
!2647 = !DILocation(line: 180, column: 6, scope: !1240, inlinedAt: !2636)
!2648 = !DILocation(line: 180, column: 18, scope: !1240, inlinedAt: !2636)
!2649 = !DILocation(line: 1023, column: 10, scope: !2617, inlinedAt: !2627)
!2650 = !DILocation(line: 1024, column: 1, scope: !2617, inlinedAt: !2627)
!2651 = !DILocation(line: 1012, column: 3, scope: !2604)
!2652 = !DILocation(line: 1017, column: 28, scope: !2617)
!2653 = !DILocation(line: 1017, column: 43, scope: !2617)
!2654 = !DILocation(line: 1018, column: 36, scope: !2617)
!2655 = !DILocation(line: 1019, column: 36, scope: !2617)
!2656 = !DILocation(line: 1019, column: 48, scope: !2617)
!2657 = !DILocation(line: 1021, column: 3, scope: !2617)
!2658 = !DILocation(line: 1021, column: 30, scope: !2617)
!2659 = !DILocation(line: 1021, column: 26, scope: !2617)
!2660 = !DILocation(line: 171, column: 45, scope: !1240, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1022, column: 3, scope: !2617)
!2662 = !DILocation(line: 172, column: 33, scope: !1240, inlinedAt: !2661)
!2663 = !DILocation(line: 172, column: 57, scope: !1240, inlinedAt: !2661)
!2664 = !DILocation(line: 176, column: 6, scope: !1240, inlinedAt: !2661)
!2665 = !DILocation(line: 176, column: 12, scope: !1240, inlinedAt: !2661)
!2666 = !DILocation(line: 177, column: 8, scope: !1256, inlinedAt: !2661)
!2667 = !DILocation(line: 177, column: 23, scope: !1256, inlinedAt: !2661)
!2668 = !DILocation(line: 177, column: 19, scope: !1256, inlinedAt: !2661)
!2669 = !DILocation(line: 178, column: 5, scope: !1256, inlinedAt: !2661)
!2670 = !DILocation(line: 179, column: 6, scope: !1240, inlinedAt: !2661)
!2671 = !DILocation(line: 179, column: 17, scope: !1240, inlinedAt: !2661)
!2672 = !DILocation(line: 180, column: 6, scope: !1240, inlinedAt: !2661)
!2673 = !DILocation(line: 180, column: 18, scope: !1240, inlinedAt: !2661)
!2674 = !DILocation(line: 1023, column: 10, scope: !2617)
!2675 = !DILocation(line: 1024, column: 1, scope: !2617)
!2676 = !DILocation(line: 1023, column: 3, scope: !2617)
!2677 = distinct !DISubprogram(name: "quotearg_custom", scope: !126, file: !126, line: 1027, type: !2678, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!6, !17, !17, !17}
!2680 = !{!2681, !2682, !2683}
!2681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2677, file: !126, line: 1027, type: !17)
!2682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2677, file: !126, line: 1027, type: !17)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !126, line: 1028, type: !17)
!2684 = !DILocation(line: 1027, column: 30, scope: !2677)
!2685 = !DILocation(line: 1027, column: 54, scope: !2677)
!2686 = !DILocation(line: 1028, column: 30, scope: !2677)
!2687 = !DILocation(line: 1009, column: 24, scope: !2604, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1030, column: 10, scope: !2677)
!2689 = !DILocation(line: 1009, column: 39, scope: !2604, inlinedAt: !2688)
!2690 = !DILocation(line: 1010, column: 32, scope: !2604, inlinedAt: !2688)
!2691 = !DILocation(line: 1010, column: 57, scope: !2604, inlinedAt: !2688)
!2692 = !DILocation(line: 1017, column: 28, scope: !2617, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1012, column: 10, scope: !2604, inlinedAt: !2688)
!2694 = !DILocation(line: 1017, column: 43, scope: !2617, inlinedAt: !2693)
!2695 = !DILocation(line: 1018, column: 36, scope: !2617, inlinedAt: !2693)
!2696 = !DILocation(line: 1019, column: 36, scope: !2617, inlinedAt: !2693)
!2697 = !DILocation(line: 1019, column: 48, scope: !2617, inlinedAt: !2693)
!2698 = !DILocation(line: 1021, column: 3, scope: !2617, inlinedAt: !2693)
!2699 = !DILocation(line: 1021, column: 30, scope: !2617, inlinedAt: !2693)
!2700 = !DILocation(line: 1021, column: 26, scope: !2617, inlinedAt: !2693)
!2701 = !DILocation(line: 171, column: 45, scope: !1240, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1022, column: 3, scope: !2617, inlinedAt: !2693)
!2703 = !DILocation(line: 172, column: 33, scope: !1240, inlinedAt: !2702)
!2704 = !DILocation(line: 172, column: 57, scope: !1240, inlinedAt: !2702)
!2705 = !DILocation(line: 176, column: 6, scope: !1240, inlinedAt: !2702)
!2706 = !DILocation(line: 176, column: 12, scope: !1240, inlinedAt: !2702)
!2707 = !DILocation(line: 177, column: 8, scope: !1256, inlinedAt: !2702)
!2708 = !DILocation(line: 177, column: 23, scope: !1256, inlinedAt: !2702)
!2709 = !DILocation(line: 177, column: 19, scope: !1256, inlinedAt: !2702)
!2710 = !DILocation(line: 178, column: 5, scope: !1256, inlinedAt: !2702)
!2711 = !DILocation(line: 179, column: 6, scope: !1240, inlinedAt: !2702)
!2712 = !DILocation(line: 179, column: 17, scope: !1240, inlinedAt: !2702)
!2713 = !DILocation(line: 180, column: 6, scope: !1240, inlinedAt: !2702)
!2714 = !DILocation(line: 180, column: 18, scope: !1240, inlinedAt: !2702)
!2715 = !DILocation(line: 1023, column: 10, scope: !2617, inlinedAt: !2693)
!2716 = !DILocation(line: 1024, column: 1, scope: !2617, inlinedAt: !2693)
!2717 = !DILocation(line: 1030, column: 3, scope: !2677)
!2718 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !126, file: !126, line: 1034, type: !2719, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!6, !17, !17, !17, !120}
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2718, file: !126, line: 1034, type: !17)
!2723 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2718, file: !126, line: 1034, type: !17)
!2724 = !DILocalVariable(name: "arg", arg: 3, scope: !2718, file: !126, line: 1035, type: !17)
!2725 = !DILocalVariable(name: "argsize", arg: 4, scope: !2718, file: !126, line: 1035, type: !120)
!2726 = !DILocation(line: 1034, column: 34, scope: !2718)
!2727 = !DILocation(line: 1034, column: 58, scope: !2718)
!2728 = !DILocation(line: 1035, column: 34, scope: !2718)
!2729 = !DILocation(line: 1035, column: 46, scope: !2718)
!2730 = !DILocation(line: 1017, column: 28, scope: !2617, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1037, column: 10, scope: !2718)
!2732 = !DILocation(line: 1017, column: 43, scope: !2617, inlinedAt: !2731)
!2733 = !DILocation(line: 1018, column: 36, scope: !2617, inlinedAt: !2731)
!2734 = !DILocation(line: 1019, column: 36, scope: !2617, inlinedAt: !2731)
!2735 = !DILocation(line: 1019, column: 48, scope: !2617, inlinedAt: !2731)
!2736 = !DILocation(line: 1021, column: 3, scope: !2617, inlinedAt: !2731)
!2737 = !DILocation(line: 1021, column: 30, scope: !2617, inlinedAt: !2731)
!2738 = !DILocation(line: 1021, column: 26, scope: !2617, inlinedAt: !2731)
!2739 = !DILocation(line: 171, column: 45, scope: !1240, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1022, column: 3, scope: !2617, inlinedAt: !2731)
!2741 = !DILocation(line: 172, column: 33, scope: !1240, inlinedAt: !2740)
!2742 = !DILocation(line: 172, column: 57, scope: !1240, inlinedAt: !2740)
!2743 = !DILocation(line: 176, column: 6, scope: !1240, inlinedAt: !2740)
!2744 = !DILocation(line: 176, column: 12, scope: !1240, inlinedAt: !2740)
!2745 = !DILocation(line: 177, column: 8, scope: !1256, inlinedAt: !2740)
!2746 = !DILocation(line: 177, column: 23, scope: !1256, inlinedAt: !2740)
!2747 = !DILocation(line: 177, column: 19, scope: !1256, inlinedAt: !2740)
!2748 = !DILocation(line: 178, column: 5, scope: !1256, inlinedAt: !2740)
!2749 = !DILocation(line: 179, column: 6, scope: !1240, inlinedAt: !2740)
!2750 = !DILocation(line: 179, column: 17, scope: !1240, inlinedAt: !2740)
!2751 = !DILocation(line: 180, column: 6, scope: !1240, inlinedAt: !2740)
!2752 = !DILocation(line: 180, column: 18, scope: !1240, inlinedAt: !2740)
!2753 = !DILocation(line: 1023, column: 10, scope: !2617, inlinedAt: !2731)
!2754 = !DILocation(line: 1024, column: 1, scope: !2617, inlinedAt: !2731)
!2755 = !DILocation(line: 1037, column: 3, scope: !2718)
!2756 = distinct !DISubprogram(name: "quote_n_mem", scope: !126, file: !126, line: 1052, type: !2757, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!17, !42, !17, !120}
!2759 = !{!2760, !2761, !2762}
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2756, file: !126, line: 1052, type: !42)
!2761 = !DILocalVariable(name: "arg", arg: 2, scope: !2756, file: !126, line: 1052, type: !17)
!2762 = !DILocalVariable(name: "argsize", arg: 3, scope: !2756, file: !126, line: 1052, type: !120)
!2763 = !DILocation(line: 1052, column: 18, scope: !2756)
!2764 = !DILocation(line: 1052, column: 33, scope: !2756)
!2765 = !DILocation(line: 1052, column: 45, scope: !2756)
!2766 = !DILocation(line: 1054, column: 10, scope: !2756)
!2767 = !DILocation(line: 1054, column: 3, scope: !2756)
!2768 = distinct !DISubprogram(name: "quote_mem", scope: !126, file: !126, line: 1058, type: !2769, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!17, !17, !120}
!2771 = !{!2772, !2773}
!2772 = !DILocalVariable(name: "arg", arg: 1, scope: !2768, file: !126, line: 1058, type: !17)
!2773 = !DILocalVariable(name: "argsize", arg: 2, scope: !2768, file: !126, line: 1058, type: !120)
!2774 = !DILocation(line: 1058, column: 24, scope: !2768)
!2775 = !DILocation(line: 1058, column: 36, scope: !2768)
!2776 = !DILocation(line: 1052, column: 18, scope: !2756, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1060, column: 10, scope: !2768)
!2778 = !DILocation(line: 1052, column: 33, scope: !2756, inlinedAt: !2777)
!2779 = !DILocation(line: 1052, column: 45, scope: !2756, inlinedAt: !2777)
!2780 = !DILocation(line: 1054, column: 10, scope: !2756, inlinedAt: !2777)
!2781 = !DILocation(line: 1060, column: 3, scope: !2768)
!2782 = distinct !DISubprogram(name: "quote_n", scope: !126, file: !126, line: 1064, type: !2783, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!17, !42, !17}
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !126, line: 1064, type: !42)
!2787 = !DILocalVariable(name: "arg", arg: 2, scope: !2782, file: !126, line: 1064, type: !17)
!2788 = !DILocation(line: 1064, column: 14, scope: !2782)
!2789 = !DILocation(line: 1064, column: 29, scope: !2782)
!2790 = !DILocation(line: 1052, column: 18, scope: !2756, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1066, column: 10, scope: !2782)
!2792 = !DILocation(line: 1052, column: 33, scope: !2756, inlinedAt: !2791)
!2793 = !DILocation(line: 1052, column: 45, scope: !2756, inlinedAt: !2791)
!2794 = !DILocation(line: 1054, column: 10, scope: !2756, inlinedAt: !2791)
!2795 = !DILocation(line: 1066, column: 3, scope: !2782)
!2796 = distinct !DISubprogram(name: "quote", scope: !126, file: !126, line: 1070, type: !2797, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!17, !17}
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "arg", arg: 1, scope: !2796, file: !126, line: 1070, type: !17)
!2801 = !DILocation(line: 1070, column: 20, scope: !2796)
!2802 = !DILocation(line: 1064, column: 14, scope: !2782, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1072, column: 10, scope: !2796)
!2804 = !DILocation(line: 1064, column: 29, scope: !2782, inlinedAt: !2803)
!2805 = !DILocation(line: 1052, column: 18, scope: !2756, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1066, column: 10, scope: !2782, inlinedAt: !2803)
!2807 = !DILocation(line: 1052, column: 33, scope: !2756, inlinedAt: !2806)
!2808 = !DILocation(line: 1052, column: 45, scope: !2756, inlinedAt: !2806)
!2809 = !DILocation(line: 1054, column: 10, scope: !2756, inlinedAt: !2806)
!2810 = !DILocation(line: 1072, column: 3, scope: !2796)
!2811 = distinct !DISubprogram(name: "version_etc_arn", scope: !546, file: !546, line: 62, type: !2812, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !2867)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2814, !17, !17, !17, !2866, !120}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2816, line: 7, baseType: !2817)
!2816 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2818, line: 241, size: 1728, elements: !2819)
!2818 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2840, !2841, !2842, !2843, !2845, !2846, !2847, !2851, !2854, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2817, file: !2818, line: 242, baseType: !42, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2817, file: !2818, line: 247, baseType: !6, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2817, file: !2818, line: 248, baseType: !6, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2817, file: !2818, line: 249, baseType: !6, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2817, file: !2818, line: 250, baseType: !6, size: 64, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2817, file: !2818, line: 251, baseType: !6, size: 64, offset: 320)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2817, file: !2818, line: 252, baseType: !6, size: 64, offset: 384)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2817, file: !2818, line: 253, baseType: !6, size: 64, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2817, file: !2818, line: 254, baseType: !6, size: 64, offset: 512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2817, file: !2818, line: 256, baseType: !6, size: 64, offset: 576)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2817, file: !2818, line: 257, baseType: !6, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2817, file: !2818, line: 258, baseType: !6, size: 64, offset: 704)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2817, file: !2818, line: 260, baseType: !2833, size: 64, offset: 768)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2818, line: 156, size: 192, elements: !2835)
!2835 = !{!2836, !2837, !2839}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2834, file: !2818, line: 157, baseType: !2833, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2834, file: !2818, line: 158, baseType: !2838, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2834, file: !2818, line: 162, baseType: !42, size: 32, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2817, file: !2818, line: 262, baseType: !2838, size: 64, offset: 832)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2817, file: !2818, line: 264, baseType: !42, size: 32, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2817, file: !2818, line: 268, baseType: !42, size: 32, offset: 928)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2817, file: !2818, line: 270, baseType: !2844, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !896, line: 140, baseType: !897)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2817, file: !2818, line: 274, baseType: !119, size: 16, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2817, file: !2818, line: 275, baseType: !541, size: 8, offset: 1040)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2817, file: !2818, line: 276, baseType: !2848, size: 8, offset: 1048)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2849)
!2849 = !{!2850}
!2850 = !DISubrange(count: 1)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2817, file: !2818, line: 280, baseType: !2852, size: 64, offset: 1088)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2818, line: 150, baseType: null)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2817, file: !2818, line: 289, baseType: !2855, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !896, line: 141, baseType: !897)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2817, file: !2818, line: 297, baseType: !8, size: 64, offset: 1216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2817, file: !2818, line: 298, baseType: !8, size: 64, offset: 1280)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2817, file: !2818, line: 299, baseType: !8, size: 64, offset: 1344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2817, file: !2818, line: 300, baseType: !8, size: 64, offset: 1408)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2817, file: !2818, line: 302, baseType: !120, size: 64, offset: 1472)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2817, file: !2818, line: 303, baseType: !42, size: 32, offset: 1536)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2817, file: !2818, line: 305, baseType: !2863, size: 160, offset: 1568)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2864)
!2864 = !{!2865}
!2865 = !DISubrange(count: 20)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DILocalVariable(name: "stream", arg: 1, scope: !2811, file: !546, line: 62, type: !2814)
!2869 = !DILocalVariable(name: "command_name", arg: 2, scope: !2811, file: !546, line: 63, type: !17)
!2870 = !DILocalVariable(name: "package", arg: 3, scope: !2811, file: !546, line: 63, type: !17)
!2871 = !DILocalVariable(name: "version", arg: 4, scope: !2811, file: !546, line: 64, type: !17)
!2872 = !DILocalVariable(name: "authors", arg: 5, scope: !2811, file: !546, line: 65, type: !2866)
!2873 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2811, file: !546, line: 65, type: !120)
!2874 = !DILocation(line: 62, column: 24, scope: !2811)
!2875 = !DILocation(line: 63, column: 30, scope: !2811)
!2876 = !DILocation(line: 63, column: 56, scope: !2811)
!2877 = !DILocation(line: 64, column: 30, scope: !2811)
!2878 = !DILocation(line: 65, column: 39, scope: !2811)
!2879 = !DILocation(line: 65, column: 55, scope: !2811)
!2880 = !DILocation(line: 67, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2811, file: !546, line: 67, column: 7)
!2882 = !DILocation(line: 67, column: 7, scope: !2811)
!2883 = !DILocation(line: 68, column: 5, scope: !2881)
!2884 = !DILocation(line: 70, column: 5, scope: !2881)
!2885 = !DILocation(line: 84, column: 3, scope: !2811)
!2886 = !DILocation(line: 86, column: 3, scope: !2811)
!2887 = !DILocation(line: 95, column: 3, scope: !2811)
!2888 = !DILocation(line: 99, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2811, file: !546, line: 96, column: 5)
!2890 = !DILocation(line: 102, column: 7, scope: !2889)
!2891 = !DILocation(line: 103, column: 7, scope: !2889)
!2892 = !DILocation(line: 106, column: 7, scope: !2889)
!2893 = !DILocation(line: 107, column: 7, scope: !2889)
!2894 = !DILocation(line: 110, column: 7, scope: !2889)
!2895 = !DILocation(line: 112, column: 7, scope: !2889)
!2896 = !DILocation(line: 117, column: 7, scope: !2889)
!2897 = !DILocation(line: 119, column: 7, scope: !2889)
!2898 = !DILocation(line: 124, column: 7, scope: !2889)
!2899 = !DILocation(line: 126, column: 7, scope: !2889)
!2900 = !DILocation(line: 131, column: 7, scope: !2889)
!2901 = !DILocation(line: 134, column: 7, scope: !2889)
!2902 = !DILocation(line: 139, column: 7, scope: !2889)
!2903 = !DILocation(line: 142, column: 7, scope: !2889)
!2904 = !DILocation(line: 147, column: 7, scope: !2889)
!2905 = !DILocation(line: 151, column: 7, scope: !2889)
!2906 = !DILocation(line: 156, column: 7, scope: !2889)
!2907 = !DILocation(line: 160, column: 7, scope: !2889)
!2908 = !DILocation(line: 167, column: 7, scope: !2889)
!2909 = !DILocation(line: 171, column: 7, scope: !2889)
!2910 = !DILocation(line: 173, column: 1, scope: !2811)
!2911 = distinct !DISubprogram(name: "version_etc_ar", scope: !546, file: !546, line: 180, type: !2912, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !2814, !17, !17, !17, !2866}
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920}
!2915 = !DILocalVariable(name: "stream", arg: 1, scope: !2911, file: !546, line: 180, type: !2814)
!2916 = !DILocalVariable(name: "command_name", arg: 2, scope: !2911, file: !546, line: 181, type: !17)
!2917 = !DILocalVariable(name: "package", arg: 3, scope: !2911, file: !546, line: 181, type: !17)
!2918 = !DILocalVariable(name: "version", arg: 4, scope: !2911, file: !546, line: 182, type: !17)
!2919 = !DILocalVariable(name: "authors", arg: 5, scope: !2911, file: !546, line: 182, type: !2866)
!2920 = !DILocalVariable(name: "n_authors", scope: !2911, file: !546, line: 184, type: !120)
!2921 = !DILocation(line: 180, column: 23, scope: !2911)
!2922 = !DILocation(line: 181, column: 29, scope: !2911)
!2923 = !DILocation(line: 181, column: 55, scope: !2911)
!2924 = !DILocation(line: 182, column: 29, scope: !2911)
!2925 = !DILocation(line: 182, column: 59, scope: !2911)
!2926 = !DILocation(line: 184, column: 10, scope: !2911)
!2927 = !DILocation(line: 186, column: 8, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2911, file: !546, line: 186, column: 3)
!2929 = !DILocation(line: 186, column: 23, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2928, file: !546, line: 186, column: 3)
!2931 = !DILocation(line: 186, column: 3, scope: !2928)
!2932 = !DILocation(line: 186, column: 52, scope: !2930)
!2933 = distinct !{!2933, !2931, !2934}
!2934 = !DILocation(line: 187, column: 5, scope: !2928)
!2935 = !DILocation(line: 188, column: 3, scope: !2911)
!2936 = !DILocation(line: 189, column: 1, scope: !2911)
!2937 = distinct !DISubprogram(name: "version_etc_va", scope: !546, file: !546, line: 196, type: !2938, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !2947)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2814, !17, !17, !17, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !543, line: 189, size: 192, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2941, file: !543, line: 189, baseType: !9, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2941, file: !543, line: 189, baseType: !9, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2941, file: !543, line: 189, baseType: !8, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2941, file: !543, line: 189, baseType: !8, size: 64, offset: 128)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953, !2954}
!2948 = !DILocalVariable(name: "stream", arg: 1, scope: !2937, file: !546, line: 196, type: !2814)
!2949 = !DILocalVariable(name: "command_name", arg: 2, scope: !2937, file: !546, line: 197, type: !17)
!2950 = !DILocalVariable(name: "package", arg: 3, scope: !2937, file: !546, line: 197, type: !17)
!2951 = !DILocalVariable(name: "version", arg: 4, scope: !2937, file: !546, line: 198, type: !17)
!2952 = !DILocalVariable(name: "authors", arg: 5, scope: !2937, file: !546, line: 198, type: !2940)
!2953 = !DILocalVariable(name: "n_authors", scope: !2937, file: !546, line: 200, type: !120)
!2954 = !DILocalVariable(name: "authtab", scope: !2937, file: !546, line: 201, type: !2955)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !129)
!2956 = !DILocation(line: 196, column: 23, scope: !2937)
!2957 = !DILocation(line: 197, column: 29, scope: !2937)
!2958 = !DILocation(line: 197, column: 55, scope: !2937)
!2959 = !DILocation(line: 198, column: 29, scope: !2937)
!2960 = !DILocation(line: 198, column: 46, scope: !2937)
!2961 = !DILocation(line: 201, column: 3, scope: !2937)
!2962 = !DILocation(line: 201, column: 15, scope: !2937)
!2963 = !DILocation(line: 200, column: 10, scope: !2937)
!2964 = !DILocation(line: 205, column: 35, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !546, line: 203, column: 3)
!2966 = distinct !DILexicalBlock(scope: !2937, file: !546, line: 203, column: 3)
!2967 = !DILocation(line: 205, column: 14, scope: !2965)
!2968 = !DILocation(line: 205, column: 33, scope: !2965)
!2969 = !DILocation(line: 205, column: 67, scope: !2965)
!2970 = !DILocation(line: 203, column: 3, scope: !2966)
!2971 = !DILocation(line: 208, column: 3, scope: !2937)
!2972 = !DILocation(line: 210, column: 1, scope: !2937)
!2973 = distinct !DISubprogram(name: "version_etc", scope: !546, file: !546, line: 227, type: !2974, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2814, !17, !17, !17, null}
!2976 = !{!2977, !2978, !2979, !2980, !2981}
!2977 = !DILocalVariable(name: "stream", arg: 1, scope: !2973, file: !546, line: 227, type: !2814)
!2978 = !DILocalVariable(name: "command_name", arg: 2, scope: !2973, file: !546, line: 228, type: !17)
!2979 = !DILocalVariable(name: "package", arg: 3, scope: !2973, file: !546, line: 228, type: !17)
!2980 = !DILocalVariable(name: "version", arg: 4, scope: !2973, file: !546, line: 229, type: !17)
!2981 = !DILocalVariable(name: "authors", scope: !2973, file: !546, line: 231, type: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2983, line: 46, baseType: !2984)
!2983 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2985, line: 48, baseType: !2986)
!2985 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !543, line: 231, baseType: !2987)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2941, size: 192, elements: !2849)
!2988 = !DILocation(line: 227, column: 20, scope: !2973)
!2989 = !DILocation(line: 228, column: 26, scope: !2973)
!2990 = !DILocation(line: 228, column: 52, scope: !2973)
!2991 = !DILocation(line: 229, column: 26, scope: !2973)
!2992 = !DILocation(line: 231, column: 3, scope: !2973)
!2993 = !DILocation(line: 231, column: 11, scope: !2973)
!2994 = !DILocation(line: 233, column: 3, scope: !2973)
!2995 = !DILocation(line: 234, column: 3, scope: !2973)
!2996 = !DILocation(line: 235, column: 3, scope: !2973)
!2997 = !DILocation(line: 236, column: 1, scope: !2973)
!2998 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !546, file: !546, line: 239, type: !611, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !4)
!2999 = !DILocation(line: 245, column: 3, scope: !2998)
!3000 = !DILocation(line: 251, column: 3, scope: !2998)
!3001 = !DILocation(line: 256, column: 3, scope: !2998)
!3002 = !DILocation(line: 258, column: 1, scope: !2998)
!3003 = distinct !DISubprogram(name: "xnmalloc", scope: !554, file: !554, line: 105, type: !3004, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!8, !120, !120}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !554, line: 105, type: !120)
!3008 = !DILocalVariable(name: "s", arg: 2, scope: !3003, file: !554, line: 105, type: !120)
!3009 = !DILocation(line: 105, column: 18, scope: !3003)
!3010 = !DILocation(line: 105, column: 28, scope: !3003)
!3011 = !DILocation(line: 107, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3003, file: !554, line: 107, column: 7)
!3013 = !DILocation(line: 107, column: 7, scope: !3003)
!3014 = !DILocation(line: 108, column: 5, scope: !3012)
!3015 = !DILocation(line: 109, column: 21, scope: !3003)
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3017, file: !3018, line: 39, type: !120)
!3017 = distinct !DISubprogram(name: "xmalloc", scope: !3018, file: !3018, line: 39, type: !3019, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3021)
!3018 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!8, !120}
!3021 = !{!3016, !3022}
!3022 = !DILocalVariable(name: "p", scope: !3017, file: !3018, line: 41, type: !8)
!3023 = !DILocation(line: 39, column: 17, scope: !3017, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 109, column: 10, scope: !3003)
!3025 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3024)
!3026 = !DILocation(line: 41, column: 9, scope: !3017, inlinedAt: !3024)
!3027 = !DILocation(line: 42, column: 8, scope: !3028, inlinedAt: !3024)
!3028 = distinct !DILexicalBlock(scope: !3017, file: !3018, line: 42, column: 7)
!3029 = !DILocation(line: 42, column: 15, scope: !3028, inlinedAt: !3024)
!3030 = !DILocation(line: 42, column: 10, scope: !3028, inlinedAt: !3024)
!3031 = !DILocation(line: 43, column: 5, scope: !3028, inlinedAt: !3024)
!3032 = !DILocation(line: 109, column: 3, scope: !3003)
!3033 = !DILocation(line: 39, column: 17, scope: !3017)
!3034 = !DILocation(line: 41, column: 13, scope: !3017)
!3035 = !DILocation(line: 41, column: 9, scope: !3017)
!3036 = !DILocation(line: 42, column: 8, scope: !3028)
!3037 = !DILocation(line: 42, column: 15, scope: !3028)
!3038 = !DILocation(line: 42, column: 10, scope: !3028)
!3039 = !DILocation(line: 43, column: 5, scope: !3028)
!3040 = !DILocation(line: 44, column: 3, scope: !3017)
!3041 = distinct !DISubprogram(name: "xnrealloc", scope: !554, file: !554, line: 118, type: !3042, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!8, !8, !120, !120}
!3044 = !{!3045, !3046, !3047}
!3045 = !DILocalVariable(name: "p", arg: 1, scope: !3041, file: !554, line: 118, type: !8)
!3046 = !DILocalVariable(name: "n", arg: 2, scope: !3041, file: !554, line: 118, type: !120)
!3047 = !DILocalVariable(name: "s", arg: 3, scope: !3041, file: !554, line: 118, type: !120)
!3048 = !DILocation(line: 118, column: 18, scope: !3041)
!3049 = !DILocation(line: 118, column: 28, scope: !3041)
!3050 = !DILocation(line: 118, column: 38, scope: !3041)
!3051 = !DILocation(line: 120, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3041, file: !554, line: 120, column: 7)
!3053 = !DILocation(line: 120, column: 7, scope: !3041)
!3054 = !DILocation(line: 121, column: 5, scope: !3052)
!3055 = !DILocation(line: 122, column: 25, scope: !3041)
!3056 = !DILocalVariable(name: "p", arg: 1, scope: !3057, file: !3018, line: 51, type: !8)
!3057 = distinct !DISubprogram(name: "xrealloc", scope: !3018, file: !3018, line: 51, type: !3058, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!8, !8, !120}
!3060 = !{!3056, !3061}
!3061 = !DILocalVariable(name: "n", arg: 2, scope: !3057, file: !3018, line: 51, type: !120)
!3062 = !DILocation(line: 51, column: 17, scope: !3057, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 122, column: 10, scope: !3041)
!3064 = !DILocation(line: 51, column: 27, scope: !3057, inlinedAt: !3063)
!3065 = !DILocation(line: 53, column: 8, scope: !3066, inlinedAt: !3063)
!3066 = distinct !DILexicalBlock(scope: !3057, file: !3018, line: 53, column: 7)
!3067 = !DILocation(line: 53, column: 13, scope: !3066, inlinedAt: !3063)
!3068 = !DILocation(line: 53, column: 10, scope: !3066, inlinedAt: !3063)
!3069 = !DILocation(line: 57, column: 7, scope: !3070, inlinedAt: !3063)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !3018, line: 54, column: 5)
!3071 = !DILocation(line: 58, column: 7, scope: !3070, inlinedAt: !3063)
!3072 = !DILocation(line: 61, column: 7, scope: !3057, inlinedAt: !3063)
!3073 = !DILocation(line: 62, column: 8, scope: !3074, inlinedAt: !3063)
!3074 = distinct !DILexicalBlock(scope: !3057, file: !3018, line: 62, column: 7)
!3075 = !DILocation(line: 62, column: 13, scope: !3074, inlinedAt: !3063)
!3076 = !DILocation(line: 62, column: 10, scope: !3074, inlinedAt: !3063)
!3077 = !DILocation(line: 63, column: 5, scope: !3074, inlinedAt: !3063)
!3078 = !DILocation(line: 122, column: 3, scope: !3041)
!3079 = !DILocation(line: 51, column: 17, scope: !3057)
!3080 = !DILocation(line: 51, column: 27, scope: !3057)
!3081 = !DILocation(line: 53, column: 8, scope: !3066)
!3082 = !DILocation(line: 53, column: 13, scope: !3066)
!3083 = !DILocation(line: 53, column: 10, scope: !3066)
!3084 = !DILocation(line: 57, column: 7, scope: !3070)
!3085 = !DILocation(line: 58, column: 7, scope: !3070)
!3086 = !DILocation(line: 61, column: 7, scope: !3057)
!3087 = !DILocation(line: 62, column: 8, scope: !3074)
!3088 = !DILocation(line: 62, column: 13, scope: !3074)
!3089 = !DILocation(line: 62, column: 10, scope: !3074)
!3090 = !DILocation(line: 63, column: 5, scope: !3074)
!3091 = !DILocation(line: 65, column: 1, scope: !3057)
!3092 = !DILocation(line: 180, column: 19, scope: !555)
!3093 = !DILocation(line: 180, column: 30, scope: !555)
!3094 = !DILocation(line: 180, column: 41, scope: !555)
!3095 = !DILocation(line: 182, column: 14, scope: !555)
!3096 = !DILocation(line: 182, column: 10, scope: !555)
!3097 = !DILocation(line: 184, column: 9, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !555, file: !554, line: 184, column: 7)
!3099 = !DILocation(line: 184, column: 7, scope: !555)
!3100 = !DILocation(line: 186, column: 13, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !554, line: 186, column: 11)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !554, line: 185, column: 5)
!3103 = !DILocation(line: 186, column: 11, scope: !3102)
!3104 = !DILocation(line: 194, column: 30, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3101, file: !554, line: 187, column: 9)
!3106 = !DILocation(line: 195, column: 16, scope: !3105)
!3107 = !DILocation(line: 195, column: 13, scope: !3105)
!3108 = !DILocation(line: 196, column: 9, scope: !3105)
!3109 = !DILocation(line: 204, column: 69, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !554, line: 204, column: 11)
!3111 = distinct !DILexicalBlock(scope: !3098, file: !554, line: 199, column: 5)
!3112 = !DILocation(line: 205, column: 11, scope: !3110)
!3113 = !DILocation(line: 204, column: 11, scope: !3111)
!3114 = !DILocation(line: 206, column: 9, scope: !3110)
!3115 = !DILocation(line: 210, column: 7, scope: !555)
!3116 = !DILocation(line: 211, column: 25, scope: !555)
!3117 = !DILocation(line: 51, column: 17, scope: !3057, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 211, column: 10, scope: !555)
!3119 = !DILocation(line: 51, column: 27, scope: !3057, inlinedAt: !3118)
!3120 = !DILocation(line: 53, column: 10, scope: !3066, inlinedAt: !3118)
!3121 = !DILocation(line: 207, column: 14, scope: !3111)
!3122 = !DILocation(line: 207, column: 18, scope: !3111)
!3123 = !DILocation(line: 207, column: 9, scope: !3111)
!3124 = !DILocation(line: 53, column: 8, scope: !3066, inlinedAt: !3118)
!3125 = !DILocation(line: 57, column: 7, scope: !3070, inlinedAt: !3118)
!3126 = !DILocation(line: 58, column: 7, scope: !3070, inlinedAt: !3118)
!3127 = !DILocation(line: 61, column: 7, scope: !3057, inlinedAt: !3118)
!3128 = !DILocation(line: 62, column: 8, scope: !3074, inlinedAt: !3118)
!3129 = !DILocation(line: 62, column: 13, scope: !3074, inlinedAt: !3118)
!3130 = !DILocation(line: 62, column: 10, scope: !3074, inlinedAt: !3118)
!3131 = !DILocation(line: 63, column: 5, scope: !3074, inlinedAt: !3118)
!3132 = !DILocation(line: 211, column: 3, scope: !555)
!3133 = distinct !DISubprogram(name: "xcharalloc", scope: !554, file: !554, line: 220, type: !2088, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3134)
!3134 = !{!3135}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !554, line: 220, type: !120)
!3136 = !DILocation(line: 220, column: 20, scope: !3133)
!3137 = !DILocation(line: 39, column: 17, scope: !3017, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 222, column: 10, scope: !3133)
!3139 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3138)
!3140 = !DILocation(line: 41, column: 9, scope: !3017, inlinedAt: !3138)
!3141 = !DILocation(line: 42, column: 8, scope: !3028, inlinedAt: !3138)
!3142 = !DILocation(line: 42, column: 15, scope: !3028, inlinedAt: !3138)
!3143 = !DILocation(line: 42, column: 10, scope: !3028, inlinedAt: !3138)
!3144 = !DILocation(line: 43, column: 5, scope: !3028, inlinedAt: !3138)
!3145 = !DILocation(line: 222, column: 3, scope: !3133)
!3146 = distinct !DISubprogram(name: "x2realloc", scope: !3018, file: !3018, line: 74, type: !3147, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!8, !8, !558}
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "p", arg: 1, scope: !3146, file: !3018, line: 74, type: !8)
!3151 = !DILocalVariable(name: "pn", arg: 2, scope: !3146, file: !3018, line: 74, type: !558)
!3152 = !DILocation(line: 74, column: 18, scope: !3146)
!3153 = !DILocation(line: 74, column: 29, scope: !3146)
!3154 = !DILocation(line: 180, column: 19, scope: !555, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 76, column: 10, scope: !3146)
!3156 = !DILocation(line: 180, column: 30, scope: !555, inlinedAt: !3155)
!3157 = !DILocation(line: 180, column: 41, scope: !555, inlinedAt: !3155)
!3158 = !DILocation(line: 182, column: 14, scope: !555, inlinedAt: !3155)
!3159 = !DILocation(line: 182, column: 10, scope: !555, inlinedAt: !3155)
!3160 = !DILocation(line: 184, column: 9, scope: !3098, inlinedAt: !3155)
!3161 = !DILocation(line: 184, column: 7, scope: !555, inlinedAt: !3155)
!3162 = !DILocation(line: 186, column: 13, scope: !3101, inlinedAt: !3155)
!3163 = !DILocation(line: 186, column: 11, scope: !3102, inlinedAt: !3155)
!3164 = !DILocation(line: 210, column: 7, scope: !555, inlinedAt: !3155)
!3165 = !DILocation(line: 51, column: 17, scope: !3057, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 211, column: 10, scope: !555, inlinedAt: !3155)
!3167 = !DILocation(line: 51, column: 27, scope: !3057, inlinedAt: !3166)
!3168 = !DILocation(line: 53, column: 10, scope: !3066, inlinedAt: !3166)
!3169 = !DILocation(line: 205, column: 11, scope: !3110, inlinedAt: !3155)
!3170 = !DILocation(line: 204, column: 11, scope: !3111, inlinedAt: !3155)
!3171 = !DILocation(line: 206, column: 9, scope: !3110, inlinedAt: !3155)
!3172 = !DILocation(line: 207, column: 14, scope: !3111, inlinedAt: !3155)
!3173 = !DILocation(line: 207, column: 18, scope: !3111, inlinedAt: !3155)
!3174 = !DILocation(line: 207, column: 9, scope: !3111, inlinedAt: !3155)
!3175 = !DILocation(line: 53, column: 8, scope: !3066, inlinedAt: !3166)
!3176 = !DILocation(line: 57, column: 7, scope: !3070, inlinedAt: !3166)
!3177 = !DILocation(line: 58, column: 7, scope: !3070, inlinedAt: !3166)
!3178 = !DILocation(line: 61, column: 7, scope: !3057, inlinedAt: !3166)
!3179 = !DILocation(line: 62, column: 8, scope: !3074, inlinedAt: !3166)
!3180 = !DILocation(line: 62, column: 13, scope: !3074, inlinedAt: !3166)
!3181 = !DILocation(line: 62, column: 10, scope: !3074, inlinedAt: !3166)
!3182 = !DILocation(line: 63, column: 5, scope: !3074, inlinedAt: !3166)
!3183 = !DILocation(line: 76, column: 3, scope: !3146)
!3184 = distinct !DISubprogram(name: "xzalloc", scope: !3018, file: !3018, line: 84, type: !3019, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3185)
!3185 = !{!3186}
!3186 = !DILocalVariable(name: "s", arg: 1, scope: !3184, file: !3018, line: 84, type: !120)
!3187 = !DILocation(line: 84, column: 17, scope: !3184)
!3188 = !DILocation(line: 39, column: 17, scope: !3017, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 86, column: 18, scope: !3184)
!3190 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3189)
!3191 = !DILocation(line: 41, column: 9, scope: !3017, inlinedAt: !3189)
!3192 = !DILocation(line: 42, column: 8, scope: !3028, inlinedAt: !3189)
!3193 = !DILocation(line: 42, column: 15, scope: !3028, inlinedAt: !3189)
!3194 = !DILocation(line: 42, column: 10, scope: !3028, inlinedAt: !3189)
!3195 = !DILocation(line: 43, column: 5, scope: !3028, inlinedAt: !3189)
!3196 = !DILocation(line: 86, column: 10, scope: !3184)
!3197 = !DILocation(line: 86, column: 3, scope: !3184)
!3198 = distinct !DISubprogram(name: "xcalloc", scope: !3018, file: !3018, line: 93, type: !3004, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3199)
!3199 = !{!3200, !3201, !3202}
!3200 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !3018, line: 93, type: !120)
!3201 = !DILocalVariable(name: "s", arg: 2, scope: !3198, file: !3018, line: 93, type: !120)
!3202 = !DILocalVariable(name: "p", scope: !3198, file: !3018, line: 95, type: !8)
!3203 = !DILocation(line: 93, column: 17, scope: !3198)
!3204 = !DILocation(line: 93, column: 27, scope: !3198)
!3205 = !DILocation(line: 100, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3198, file: !3018, line: 100, column: 7)
!3207 = !DILocation(line: 101, column: 7, scope: !3206)
!3208 = !DILocation(line: 101, column: 18, scope: !3206)
!3209 = !DILocation(line: 95, column: 9, scope: !3198)
!3210 = !DILocation(line: 101, column: 16, scope: !3206)
!3211 = !DILocation(line: 100, column: 7, scope: !3198)
!3212 = !DILocation(line: 102, column: 5, scope: !3206)
!3213 = !DILocation(line: 103, column: 3, scope: !3198)
!3214 = distinct !DISubprogram(name: "xmemdup", scope: !3018, file: !3018, line: 111, type: !3215, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3219)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!8, !3217, !120}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "p", arg: 1, scope: !3214, file: !3018, line: 111, type: !3217)
!3221 = !DILocalVariable(name: "s", arg: 2, scope: !3214, file: !3018, line: 111, type: !120)
!3222 = !DILocation(line: 111, column: 22, scope: !3214)
!3223 = !DILocation(line: 111, column: 32, scope: !3214)
!3224 = !DILocation(line: 39, column: 17, scope: !3017, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 113, column: 18, scope: !3214)
!3226 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3225)
!3227 = !DILocation(line: 41, column: 9, scope: !3017, inlinedAt: !3225)
!3228 = !DILocation(line: 42, column: 8, scope: !3028, inlinedAt: !3225)
!3229 = !DILocation(line: 42, column: 15, scope: !3028, inlinedAt: !3225)
!3230 = !DILocation(line: 42, column: 10, scope: !3028, inlinedAt: !3225)
!3231 = !DILocation(line: 43, column: 5, scope: !3028, inlinedAt: !3225)
!3232 = !DILocation(line: 113, column: 10, scope: !3214)
!3233 = !DILocation(line: 113, column: 3, scope: !3214)
!3234 = distinct !DISubprogram(name: "xstrdup", scope: !3018, file: !3018, line: 119, type: !2290, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3235)
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "string", arg: 1, scope: !3234, file: !3018, line: 119, type: !17)
!3237 = !DILocation(line: 119, column: 22, scope: !3234)
!3238 = !DILocation(line: 121, column: 27, scope: !3234)
!3239 = !DILocation(line: 121, column: 43, scope: !3234)
!3240 = !DILocation(line: 111, column: 22, scope: !3214, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 121, column: 10, scope: !3234)
!3242 = !DILocation(line: 111, column: 32, scope: !3214, inlinedAt: !3241)
!3243 = !DILocation(line: 39, column: 17, scope: !3017, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 113, column: 18, scope: !3214, inlinedAt: !3241)
!3245 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3244)
!3246 = !DILocation(line: 41, column: 9, scope: !3017, inlinedAt: !3244)
!3247 = !DILocation(line: 42, column: 8, scope: !3028, inlinedAt: !3244)
!3248 = !DILocation(line: 42, column: 15, scope: !3028, inlinedAt: !3244)
!3249 = !DILocation(line: 42, column: 10, scope: !3028, inlinedAt: !3244)
!3250 = !DILocation(line: 43, column: 5, scope: !3028, inlinedAt: !3244)
!3251 = !DILocation(line: 113, column: 10, scope: !3214, inlinedAt: !3241)
!3252 = !DILocation(line: 121, column: 3, scope: !3234)
!3253 = distinct !DISubprogram(name: "xalloc_die", scope: !3254, file: !3254, line: 32, type: !611, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !567, variables: !4)
!3254 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3255 = !DILocation(line: 34, column: 10, scope: !3253)
!3256 = !DILocation(line: 34, column: 33, scope: !3253)
!3257 = !DILocation(line: 34, column: 3, scope: !3253)
!3258 = !DILocation(line: 40, column: 3, scope: !3253)
!3259 = distinct !DISubprogram(name: "rpl_calloc", scope: !3260, file: !3260, line: 42, type: !3004, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3261)
!3260 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3259, file: !3260, line: 42, type: !120)
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3259, file: !3260, line: 42, type: !120)
!3264 = !DILocalVariable(name: "result", scope: !3259, file: !3260, line: 44, type: !8)
!3265 = !DILocalVariable(name: "bytes", scope: !3266, file: !3260, line: 56, type: !120)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !3260, line: 53, column: 5)
!3267 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 47, column: 7)
!3268 = !DILocation(line: 42, column: 20, scope: !3259)
!3269 = !DILocation(line: 42, column: 30, scope: !3259)
!3270 = !DILocation(line: 47, column: 9, scope: !3267)
!3271 = !DILocation(line: 47, column: 19, scope: !3267)
!3272 = !DILocation(line: 47, column: 14, scope: !3267)
!3273 = !DILocation(line: 56, column: 24, scope: !3266)
!3274 = !DILocation(line: 56, column: 14, scope: !3266)
!3275 = !DILocation(line: 57, column: 17, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3266, file: !3260, line: 57, column: 11)
!3277 = !DILocation(line: 57, column: 21, scope: !3276)
!3278 = !DILocation(line: 57, column: 11, scope: !3266)
!3279 = !DILocation(line: 59, column: 11, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3276, file: !3260, line: 58, column: 9)
!3281 = !DILocation(line: 59, column: 17, scope: !3280)
!3282 = !DILocation(line: 65, column: 12, scope: !3259)
!3283 = !DILocation(line: 44, column: 9, scope: !3259)
!3284 = !DILocation(line: 72, column: 3, scope: !3259)
!3285 = !DILocation(line: 73, column: 1, scope: !3259)
!3286 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3287, file: !3287, line: 334, type: !3288, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3302)
!3287 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!120, !3290, !17, !120, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1339, line: 6, baseType: !3293)
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1341, line: 21, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 13, size: 64, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3294, file: !1341, line: 15, baseType: !42, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3294, file: !1341, line: 20, baseType: !3298, size: 32, offset: 32)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3294, file: !1341, line: 16, size: 32, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3298, file: !1341, line: 18, baseType: !9, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3298, file: !1341, line: 19, baseType: !1350, size: 32)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3303 = !DILocalVariable(name: "pwc", arg: 1, scope: !3286, file: !3287, line: 334, type: !3290)
!3304 = !DILocalVariable(name: "s", arg: 2, scope: !3286, file: !3287, line: 334, type: !17)
!3305 = !DILocalVariable(name: "n", arg: 3, scope: !3286, file: !3287, line: 334, type: !120)
!3306 = !DILocalVariable(name: "ps", arg: 4, scope: !3286, file: !3287, line: 334, type: !3291)
!3307 = !DILocalVariable(name: "ret", scope: !3286, file: !3287, line: 336, type: !120)
!3308 = !DILocalVariable(name: "wc", scope: !3286, file: !3287, line: 337, type: !1355)
!3309 = !DILocalVariable(name: "uc", scope: !3310, file: !3287, line: 398, type: !534)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3287, line: 397, column: 5)
!3311 = distinct !DILexicalBlock(scope: !3286, file: !3287, line: 396, column: 7)
!3312 = !DILocation(line: 334, column: 23, scope: !3286)
!3313 = !DILocation(line: 334, column: 40, scope: !3286)
!3314 = !DILocation(line: 334, column: 50, scope: !3286)
!3315 = !DILocation(line: 334, column: 64, scope: !3286)
!3316 = !DILocation(line: 337, column: 3, scope: !3286)
!3317 = !DILocation(line: 353, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3286, file: !3287, line: 353, column: 7)
!3319 = !DILocation(line: 353, column: 7, scope: !3286)
!3320 = !DILocation(line: 388, column: 9, scope: !3286)
!3321 = !DILocation(line: 336, column: 10, scope: !3286)
!3322 = !DILocation(line: 396, column: 19, scope: !3311)
!3323 = !DILocation(line: 396, column: 31, scope: !3311)
!3324 = !DILocation(line: 396, column: 26, scope: !3311)
!3325 = !DILocation(line: 396, column: 41, scope: !3311)
!3326 = !DILocation(line: 396, column: 7, scope: !3286)
!3327 = !DILocation(line: 398, column: 26, scope: !3310)
!3328 = !DILocation(line: 398, column: 21, scope: !3310)
!3329 = !DILocation(line: 399, column: 14, scope: !3310)
!3330 = !DILocation(line: 399, column: 12, scope: !3310)
!3331 = !DILocation(line: 405, column: 1, scope: !3286)
!3332 = distinct !DISubprogram(name: "str2sig", scope: !180, file: !180, line: 304, type: !3333, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!42, !17, !44}
!3335 = !{!3336, !3337}
!3336 = !DILocalVariable(name: "signame", arg: 1, scope: !3332, file: !180, line: 304, type: !17)
!3337 = !DILocalVariable(name: "signum", arg: 2, scope: !3332, file: !180, line: 304, type: !44)
!3338 = !DILocation(line: 304, column: 22, scope: !3332)
!3339 = !DILocation(line: 304, column: 36, scope: !3332)
!3340 = !DILocalVariable(name: "signame", arg: 1, scope: !3341, file: !180, line: 261, type: !17)
!3341 = distinct !DISubprogram(name: "str2signum", scope: !180, file: !180, line: 261, type: !3342, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!42, !17}
!3344 = !{!3340, !3345, !3348, !3349, !3351, !3353, !3354, !3355, !3358}
!3345 = !DILocalVariable(name: "endp", scope: !3346, file: !180, line: 265, type: !6)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !180, line: 264, column: 5)
!3347 = distinct !DILexicalBlock(scope: !3341, file: !180, line: 263, column: 7)
!3348 = !DILocalVariable(name: "n", scope: !3346, file: !180, line: 266, type: !897)
!3349 = !DILocalVariable(name: "i", scope: !3350, file: !180, line: 272, type: !9)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !180, line: 271, column: 5)
!3351 = !DILocalVariable(name: "endp", scope: !3352, file: !180, line: 278, type: !6)
!3352 = distinct !DILexicalBlock(scope: !3350, file: !180, line: 277, column: 7)
!3353 = !DILocalVariable(name: "rtmin", scope: !3352, file: !180, line: 279, type: !42)
!3354 = !DILocalVariable(name: "rtmax", scope: !3352, file: !180, line: 280, type: !42)
!3355 = !DILocalVariable(name: "n", scope: !3356, file: !180, line: 284, type: !897)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !180, line: 283, column: 11)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !180, line: 282, column: 13)
!3358 = !DILocalVariable(name: "n", scope: !3359, file: !180, line: 290, type: !897)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !180, line: 289, column: 11)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !180, line: 288, column: 18)
!3361 = !DILocation(line: 261, column: 25, scope: !3341, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 306, column: 13, scope: !3332)
!3363 = !DILocation(line: 263, column: 7, scope: !3347, inlinedAt: !3362)
!3364 = !DILocation(line: 263, column: 7, scope: !3341, inlinedAt: !3362)
!3365 = !DILocation(line: 274, column: 21, scope: !3366, inlinedAt: !3362)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !180, line: 274, column: 13)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !180, line: 273, column: 7)
!3368 = distinct !DILexicalBlock(scope: !3350, file: !180, line: 273, column: 7)
!3369 = !DILocation(line: 265, column: 7, scope: !3346, inlinedAt: !3362)
!3370 = !DILocation(line: 265, column: 13, scope: !3346, inlinedAt: !3362)
!3371 = !DILocation(line: 266, column: 20, scope: !3346, inlinedAt: !3362)
!3372 = !DILocation(line: 266, column: 16, scope: !3346, inlinedAt: !3362)
!3373 = !DILocation(line: 267, column: 14, scope: !3374, inlinedAt: !3362)
!3374 = distinct !DILexicalBlock(scope: !3346, file: !180, line: 267, column: 11)
!3375 = !DILocation(line: 267, column: 13, scope: !3374, inlinedAt: !3362)
!3376 = !DILocation(line: 267, column: 24, scope: !3374, inlinedAt: !3362)
!3377 = !DILocation(line: 268, column: 16, scope: !3374, inlinedAt: !3362)
!3378 = !DILocation(line: 267, column: 19, scope: !3374, inlinedAt: !3362)
!3379 = !DILocation(line: 269, column: 5, scope: !3347, inlinedAt: !3362)
!3380 = !DILocation(line: 273, column: 21, scope: !3367, inlinedAt: !3362)
!3381 = !DILocation(line: 273, column: 7, scope: !3368, inlinedAt: !3362)
!3382 = distinct !{!3382, !3383, !3384}
!3383 = !DILocation(line: 273, column: 7, scope: !3368)
!3384 = !DILocation(line: 275, column: 35, scope: !3368)
!3385 = !DILocation(line: 272, column: 20, scope: !3350, inlinedAt: !3362)
!3386 = !DILocation(line: 274, column: 13, scope: !3366, inlinedAt: !3362)
!3387 = !DILocation(line: 274, column: 53, scope: !3366, inlinedAt: !3362)
!3388 = !DILocation(line: 273, column: 41, scope: !3367, inlinedAt: !3362)
!3389 = !DILocation(line: 274, column: 13, scope: !3367, inlinedAt: !3362)
!3390 = !DILocation(line: 275, column: 35, scope: !3366, inlinedAt: !3362)
!3391 = !{!3392, !692, i64 0}
!3392 = !{!"numname", !692, i64 0, !604, i64 4}
!3393 = !DILocation(line: 278, column: 9, scope: !3352, inlinedAt: !3362)
!3394 = !DILocation(line: 279, column: 21, scope: !3352, inlinedAt: !3362)
!3395 = !DILocation(line: 279, column: 13, scope: !3352, inlinedAt: !3362)
!3396 = !DILocation(line: 280, column: 21, scope: !3352, inlinedAt: !3362)
!3397 = !DILocation(line: 280, column: 13, scope: !3352, inlinedAt: !3362)
!3398 = !DILocation(line: 282, column: 15, scope: !3357, inlinedAt: !3362)
!3399 = !DILocation(line: 282, column: 23, scope: !3357, inlinedAt: !3362)
!3400 = !DILocation(line: 282, column: 26, scope: !3357, inlinedAt: !3362)
!3401 = !DILocation(line: 282, column: 56, scope: !3357, inlinedAt: !3362)
!3402 = !DILocation(line: 282, column: 13, scope: !3352, inlinedAt: !3362)
!3403 = !DILocation(line: 284, column: 42, scope: !3356, inlinedAt: !3362)
!3404 = !DILocation(line: 278, column: 15, scope: !3352, inlinedAt: !3362)
!3405 = !DILocation(line: 284, column: 26, scope: !3356, inlinedAt: !3362)
!3406 = !DILocation(line: 284, column: 22, scope: !3356, inlinedAt: !3362)
!3407 = !DILocation(line: 285, column: 20, scope: !3408, inlinedAt: !3362)
!3408 = distinct !DILexicalBlock(scope: !3356, file: !180, line: 285, column: 17)
!3409 = !DILocation(line: 285, column: 19, scope: !3408, inlinedAt: !3362)
!3410 = !DILocation(line: 285, column: 30, scope: !3408, inlinedAt: !3362)
!3411 = !DILocation(line: 285, column: 25, scope: !3408, inlinedAt: !3362)
!3412 = !DILocation(line: 285, column: 49, scope: !3408, inlinedAt: !3362)
!3413 = !DILocation(line: 285, column: 43, scope: !3408, inlinedAt: !3362)
!3414 = !DILocation(line: 285, column: 40, scope: !3408, inlinedAt: !3362)
!3415 = !DILocation(line: 285, column: 17, scope: !3356, inlinedAt: !3362)
!3416 = !DILocation(line: 288, column: 20, scope: !3360, inlinedAt: !3362)
!3417 = !DILocation(line: 288, column: 28, scope: !3360, inlinedAt: !3362)
!3418 = !DILocation(line: 288, column: 31, scope: !3360, inlinedAt: !3362)
!3419 = !DILocation(line: 288, column: 61, scope: !3360, inlinedAt: !3362)
!3420 = !DILocation(line: 288, column: 18, scope: !3357, inlinedAt: !3362)
!3421 = !DILocation(line: 290, column: 42, scope: !3359, inlinedAt: !3362)
!3422 = !DILocation(line: 290, column: 26, scope: !3359, inlinedAt: !3362)
!3423 = !DILocation(line: 290, column: 22, scope: !3359, inlinedAt: !3362)
!3424 = !DILocation(line: 291, column: 20, scope: !3425, inlinedAt: !3362)
!3425 = distinct !DILexicalBlock(scope: !3359, file: !180, line: 291, column: 17)
!3426 = !DILocation(line: 291, column: 19, scope: !3425, inlinedAt: !3362)
!3427 = !DILocation(line: 291, column: 25, scope: !3425, inlinedAt: !3362)
!3428 = !DILocation(line: 291, column: 34, scope: !3425, inlinedAt: !3362)
!3429 = !DILocation(line: 291, column: 28, scope: !3425, inlinedAt: !3362)
!3430 = !DILocation(line: 291, column: 42, scope: !3425, inlinedAt: !3362)
!3431 = !DILocation(line: 291, column: 52, scope: !3425, inlinedAt: !3362)
!3432 = !DILocation(line: 291, column: 47, scope: !3425, inlinedAt: !3362)
!3433 = !DILocation(line: 294, column: 7, scope: !3350, inlinedAt: !3362)
!3434 = !DILocation(line: 297, column: 3, scope: !3341, inlinedAt: !3362)
!3435 = !DILocation(line: 306, column: 11, scope: !3332)
!3436 = !DILocation(line: 307, column: 10, scope: !3332)
!3437 = !DILocation(line: 307, column: 3, scope: !3332)
!3438 = distinct !DISubprogram(name: "sig2str", scope: !180, file: !180, line: 315, type: !3439, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!42, !42, !6}
!3441 = !{!3442, !3443, !3444, !3445, !3447, !3448, !3449}
!3442 = !DILocalVariable(name: "signum", arg: 1, scope: !3438, file: !180, line: 315, type: !42)
!3443 = !DILocalVariable(name: "signame", arg: 2, scope: !3438, file: !180, line: 315, type: !6)
!3444 = !DILocalVariable(name: "i", scope: !3438, file: !180, line: 317, type: !9)
!3445 = !DILocalVariable(name: "rtmin", scope: !3446, file: !180, line: 326, type: !42)
!3446 = distinct !DILexicalBlock(scope: !3438, file: !180, line: 325, column: 3)
!3447 = !DILocalVariable(name: "rtmax", scope: !3446, file: !180, line: 327, type: !42)
!3448 = !DILocalVariable(name: "base", scope: !3446, file: !180, line: 328, type: !42)
!3449 = !DILocalVariable(name: "delta", scope: !3446, file: !180, line: 328, type: !42)
!3450 = !DILocation(line: 315, column: 14, scope: !3438)
!3451 = !DILocation(line: 315, column: 28, scope: !3438)
!3452 = !DILocation(line: 317, column: 16, scope: !3438)
!3453 = !DILocation(line: 318, column: 3, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3438, file: !180, line: 318, column: 3)
!3455 = !DILocation(line: 318, column: 37, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3454, file: !180, line: 318, column: 3)
!3457 = !DILocation(line: 318, column: 15, scope: !3456)
!3458 = !DILocation(line: 319, column: 26, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3456, file: !180, line: 319, column: 9)
!3460 = !DILocation(line: 319, column: 30, scope: !3459)
!3461 = !DILocation(line: 319, column: 9, scope: !3456)
!3462 = !DILocation(line: 321, column: 26, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3459, file: !180, line: 320, column: 7)
!3464 = !DILocalVariable(name: "__dest", arg: 1, scope: !3465, file: !3466, line: 88, type: !3469)
!3465 = distinct !DISubprogram(name: "strcpy", scope: !3466, file: !3466, line: 88, type: !3467, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3470)
!3466 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!6, !3469, !921}
!3469 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3470 = !{!3464, !3471}
!3471 = !DILocalVariable(name: "__src", arg: 2, scope: !3465, file: !3466, line: 88, type: !921)
!3472 = !DILocation(line: 88, column: 1, scope: !3465, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 321, column: 9, scope: !3463)
!3474 = !DILocation(line: 90, column: 49, scope: !3465, inlinedAt: !3473)
!3475 = !DILocation(line: 90, column: 10, scope: !3465, inlinedAt: !3473)
!3476 = !DILocation(line: 322, column: 9, scope: !3463)
!3477 = !DILocation(line: 326, column: 17, scope: !3446)
!3478 = !DILocation(line: 326, column: 9, scope: !3446)
!3479 = !DILocation(line: 327, column: 17, scope: !3446)
!3480 = !DILocation(line: 327, column: 9, scope: !3446)
!3481 = !DILocation(line: 330, column: 18, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3446, file: !180, line: 330, column: 9)
!3483 = !DILocation(line: 330, column: 38, scope: !3482)
!3484 = !DILocation(line: 330, column: 28, scope: !3482)
!3485 = !DILocation(line: 333, column: 34, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3446, file: !180, line: 333, column: 9)
!3487 = !DILocation(line: 333, column: 43, scope: !3486)
!3488 = !DILocation(line: 333, column: 25, scope: !3486)
!3489 = !DILocation(line: 333, column: 16, scope: !3486)
!3490 = !DILocation(line: 333, column: 9, scope: !3446)
!3491 = !DILocation(line: 335, column: 9, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !180, line: 334, column: 7)
!3493 = !DILocation(line: 328, column: 9, scope: !3446)
!3494 = !DILocation(line: 337, column: 7, scope: !3492)
!3495 = !DILocation(line: 340, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3486, file: !180, line: 339, column: 7)
!3497 = !DILocation(line: 344, column: 20, scope: !3446)
!3498 = !DILocation(line: 328, column: 15, scope: !3446)
!3499 = !DILocation(line: 345, column: 15, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3446, file: !180, line: 345, column: 9)
!3501 = !DILocation(line: 345, column: 9, scope: !3446)
!3502 = !DILocation(line: 346, column: 7, scope: !3500)
!3503 = !DILocation(line: 349, column: 1, scope: !3438)
!3504 = !DILocation(line: 318, column: 17, scope: !3456)
!3505 = distinct !{!3505, !3453, !3506}
!3506 = !DILocation(line: 323, column: 7, scope: !3454)
!3507 = distinct !DISubprogram(name: "close_stream", scope: !3508, file: !3508, line: 56, type: !3509, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3551)
!3508 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!42, !3511}
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2816, line: 7, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2818, line: 241, size: 1728, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3513, file: !2818, line: 242, baseType: !42, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3513, file: !2818, line: 247, baseType: !6, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3513, file: !2818, line: 248, baseType: !6, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3513, file: !2818, line: 249, baseType: !6, size: 64, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3513, file: !2818, line: 250, baseType: !6, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3513, file: !2818, line: 251, baseType: !6, size: 64, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3513, file: !2818, line: 252, baseType: !6, size: 64, offset: 384)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3513, file: !2818, line: 253, baseType: !6, size: 64, offset: 448)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3513, file: !2818, line: 254, baseType: !6, size: 64, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3513, file: !2818, line: 256, baseType: !6, size: 64, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3513, file: !2818, line: 257, baseType: !6, size: 64, offset: 640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3513, file: !2818, line: 258, baseType: !6, size: 64, offset: 704)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3513, file: !2818, line: 260, baseType: !3528, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2818, line: 156, size: 192, elements: !3530)
!3530 = !{!3531, !3532, !3534}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3529, file: !2818, line: 157, baseType: !3528, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3529, file: !2818, line: 158, baseType: !3533, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3529, file: !2818, line: 162, baseType: !42, size: 32, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3513, file: !2818, line: 262, baseType: !3533, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3513, file: !2818, line: 264, baseType: !42, size: 32, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3513, file: !2818, line: 268, baseType: !42, size: 32, offset: 928)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3513, file: !2818, line: 270, baseType: !2844, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3513, file: !2818, line: 274, baseType: !119, size: 16, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3513, file: !2818, line: 275, baseType: !541, size: 8, offset: 1040)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3513, file: !2818, line: 276, baseType: !2848, size: 8, offset: 1048)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3513, file: !2818, line: 280, baseType: !2852, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3513, file: !2818, line: 289, baseType: !2855, size: 64, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3513, file: !2818, line: 297, baseType: !8, size: 64, offset: 1216)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3513, file: !2818, line: 298, baseType: !8, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3513, file: !2818, line: 299, baseType: !8, size: 64, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3513, file: !2818, line: 300, baseType: !8, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3513, file: !2818, line: 302, baseType: !120, size: 64, offset: 1472)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3513, file: !2818, line: 303, baseType: !42, size: 32, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3513, file: !2818, line: 305, baseType: !2863, size: 160, offset: 1568)
!3551 = !{!3552, !3553, !3555, !3556}
!3552 = !DILocalVariable(name: "stream", arg: 1, scope: !3507, file: !3508, line: 56, type: !3511)
!3553 = !DILocalVariable(name: "some_pending", scope: !3507, file: !3508, line: 58, type: !3554)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3555 = !DILocalVariable(name: "prev_fail", scope: !3507, file: !3508, line: 59, type: !3554)
!3556 = !DILocalVariable(name: "fclose_fail", scope: !3507, file: !3508, line: 60, type: !3554)
!3557 = !DILocation(line: 56, column: 21, scope: !3507)
!3558 = !DILocation(line: 58, column: 30, scope: !3507)
!3559 = !DILocalVariable(name: "__stream", arg: 1, scope: !3560, file: !3561, line: 132, type: !3511)
!3560 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3561, file: !3561, line: 132, type: !3509, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3562)
!3561 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3562 = !{!3559}
!3563 = !DILocation(line: 132, column: 1, scope: !3560, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 59, column: 27, scope: !3507)
!3565 = !DILocation(line: 134, column: 10, scope: !3560, inlinedAt: !3564)
!3566 = !{!3567, !692, i64 0}
!3567 = !{!"_IO_FILE", !692, i64 0, !603, i64 8, !603, i64 16, !603, i64 24, !603, i64 32, !603, i64 40, !603, i64 48, !603, i64 56, !603, i64 64, !603, i64 72, !603, i64 80, !603, i64 88, !603, i64 96, !603, i64 104, !692, i64 112, !692, i64 116, !2133, i64 120, !1589, i64 128, !604, i64 130, !604, i64 131, !603, i64 136, !2133, i64 144, !603, i64 152, !603, i64 160, !603, i64 168, !603, i64 176, !2133, i64 184, !692, i64 192, !604, i64 196}
!3568 = !DILocation(line: 59, column: 43, scope: !3507)
!3569 = !DILocation(line: 60, column: 29, scope: !3507)
!3570 = !DILocation(line: 60, column: 45, scope: !3507)
!3571 = !DILocation(line: 70, column: 17, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3507, file: !3508, line: 70, column: 7)
!3573 = !DILocation(line: 58, column: 50, scope: !3507)
!3574 = !DILocation(line: 70, column: 33, scope: !3572)
!3575 = !DILocation(line: 70, column: 53, scope: !3572)
!3576 = !DILocation(line: 70, column: 59, scope: !3572)
!3577 = !DILocation(line: 70, column: 7, scope: !3507)
!3578 = !DILocation(line: 72, column: 11, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3572, file: !3508, line: 71, column: 5)
!3580 = !DILocation(line: 73, column: 9, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3579, file: !3508, line: 72, column: 11)
!3582 = !DILocation(line: 73, column: 15, scope: !3581)
!3583 = !DILocation(line: 78, column: 1, scope: !3507)
!3584 = distinct !DISubprogram(name: "hard_locale", scope: !3585, file: !3585, line: 38, type: !3586, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3588)
!3585 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!64, !42}
!3588 = !{!3589, !3590, !3591}
!3589 = !DILocalVariable(name: "category", arg: 1, scope: !3584, file: !3585, line: 38, type: !42)
!3590 = !DILocalVariable(name: "hard", scope: !3584, file: !3585, line: 40, type: !64)
!3591 = !DILocalVariable(name: "p", scope: !3584, file: !3585, line: 41, type: !17)
!3592 = !DILocation(line: 38, column: 18, scope: !3584)
!3593 = !DILocation(line: 40, column: 8, scope: !3584)
!3594 = !DILocation(line: 41, column: 19, scope: !3584)
!3595 = !DILocation(line: 41, column: 15, scope: !3584)
!3596 = !DILocation(line: 43, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3584, file: !3585, line: 43, column: 7)
!3598 = !DILocation(line: 43, column: 7, scope: !3584)
!3599 = !DILocation(line: 47, column: 15, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3585, line: 47, column: 15)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !3585, line: 46, column: 9)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3585, line: 45, column: 11)
!3603 = distinct !DILexicalBlock(scope: !3597, file: !3585, line: 44, column: 5)
!3604 = !DILocation(line: 47, column: 31, scope: !3600)
!3605 = !DILocation(line: 47, column: 36, scope: !3600)
!3606 = !DILocation(line: 47, column: 39, scope: !3600)
!3607 = !DILocation(line: 47, column: 59, scope: !3600)
!3608 = !DILocation(line: 47, column: 15, scope: !3601)
!3609 = !DILocation(line: 48, column: 13, scope: !3600)
!3610 = !DILocation(line: 71, column: 3, scope: !3584)
!3611 = distinct !DISubprogram(name: "locale_charset", scope: !536, file: !536, line: 393, type: !3612, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!17}
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "codeset", scope: !3611, file: !536, line: 395, type: !17)
!3616 = !DILocalVariable(name: "aliases", scope: !3611, file: !536, line: 396, type: !17)
!3617 = !DILocalVariable(name: "buf1", scope: !3618, file: !536, line: 196, type: !3685)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !536, line: 194, column: 21)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !536, line: 193, column: 19)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !536, line: 193, column: 19)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !536, line: 188, column: 17)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !536, line: 181, column: 19)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !536, line: 177, column: 13)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !536, line: 173, column: 15)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !536, line: 161, column: 9)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !536, line: 157, column: 11)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !536, line: 130, column: 5)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !536, line: 129, column: 7)
!3629 = distinct !DISubprogram(name: "get_charset_aliases", scope: !536, file: !536, line: 124, type: !3612, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3637, !3638, !3639, !3640, !3681, !3682, !3683, !3617, !3684, !3688, !3689, !3690}
!3631 = !DILocalVariable(name: "cp", scope: !3629, file: !536, line: 126, type: !17)
!3632 = !DILocalVariable(name: "dir", scope: !3627, file: !536, line: 132, type: !17)
!3633 = !DILocalVariable(name: "base", scope: !3627, file: !536, line: 133, type: !17)
!3634 = !DILocalVariable(name: "file_name", scope: !3627, file: !536, line: 134, type: !6)
!3635 = !DILocalVariable(name: "dir_len", scope: !3636, file: !536, line: 144, type: !120)
!3636 = distinct !DILexicalBlock(scope: !3627, file: !536, line: 143, column: 7)
!3637 = !DILocalVariable(name: "base_len", scope: !3636, file: !536, line: 145, type: !120)
!3638 = !DILocalVariable(name: "add_slash", scope: !3636, file: !536, line: 146, type: !42)
!3639 = !DILocalVariable(name: "fd", scope: !3625, file: !536, line: 162, type: !42)
!3640 = !DILocalVariable(name: "fp", scope: !3623, file: !536, line: 178, type: !3641)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2816, line: 7, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2818, line: 241, size: 1728, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3643, file: !2818, line: 242, baseType: !42, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3643, file: !2818, line: 247, baseType: !6, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3643, file: !2818, line: 248, baseType: !6, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3643, file: !2818, line: 249, baseType: !6, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3643, file: !2818, line: 250, baseType: !6, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3643, file: !2818, line: 251, baseType: !6, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3643, file: !2818, line: 252, baseType: !6, size: 64, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3643, file: !2818, line: 253, baseType: !6, size: 64, offset: 448)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3643, file: !2818, line: 254, baseType: !6, size: 64, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3643, file: !2818, line: 256, baseType: !6, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3643, file: !2818, line: 257, baseType: !6, size: 64, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3643, file: !2818, line: 258, baseType: !6, size: 64, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3643, file: !2818, line: 260, baseType: !3658, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2818, line: 156, size: 192, elements: !3660)
!3660 = !{!3661, !3662, !3664}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3659, file: !2818, line: 157, baseType: !3658, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3659, file: !2818, line: 158, baseType: !3663, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3659, file: !2818, line: 162, baseType: !42, size: 32, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3643, file: !2818, line: 262, baseType: !3663, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3643, file: !2818, line: 264, baseType: !42, size: 32, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3643, file: !2818, line: 268, baseType: !42, size: 32, offset: 928)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3643, file: !2818, line: 270, baseType: !2844, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3643, file: !2818, line: 274, baseType: !119, size: 16, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3643, file: !2818, line: 275, baseType: !541, size: 8, offset: 1040)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3643, file: !2818, line: 276, baseType: !2848, size: 8, offset: 1048)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3643, file: !2818, line: 280, baseType: !2852, size: 64, offset: 1088)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3643, file: !2818, line: 289, baseType: !2855, size: 64, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3643, file: !2818, line: 297, baseType: !8, size: 64, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3643, file: !2818, line: 298, baseType: !8, size: 64, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3643, file: !2818, line: 299, baseType: !8, size: 64, offset: 1344)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3643, file: !2818, line: 300, baseType: !8, size: 64, offset: 1408)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3643, file: !2818, line: 302, baseType: !120, size: 64, offset: 1472)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3643, file: !2818, line: 303, baseType: !42, size: 32, offset: 1536)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3643, file: !2818, line: 305, baseType: !2863, size: 160, offset: 1568)
!3681 = !DILocalVariable(name: "res_ptr", scope: !3621, file: !536, line: 190, type: !6)
!3682 = !DILocalVariable(name: "res_size", scope: !3621, file: !536, line: 191, type: !120)
!3683 = !DILocalVariable(name: "c", scope: !3618, file: !536, line: 195, type: !42)
!3684 = !DILocalVariable(name: "buf2", scope: !3618, file: !536, line: 197, type: !3685)
!3685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3686)
!3686 = !{!3687}
!3687 = !DISubrange(count: 51)
!3688 = !DILocalVariable(name: "l1", scope: !3618, file: !536, line: 198, type: !120)
!3689 = !DILocalVariable(name: "l2", scope: !3618, file: !536, line: 198, type: !120)
!3690 = !DILocalVariable(name: "old_res_ptr", scope: !3618, file: !536, line: 199, type: !6)
!3691 = !DILocation(line: 196, column: 28, scope: !3618, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 589, column: 18, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3611, file: !536, line: 589, column: 3)
!3694 = !DILocation(line: 197, column: 28, scope: !3618, inlinedAt: !3692)
!3695 = !DILocation(line: 403, column: 13, scope: !3611)
!3696 = !DILocation(line: 395, column: 15, scope: !3611)
!3697 = !DILocation(line: 584, column: 15, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3611, file: !536, line: 584, column: 7)
!3699 = !DILocation(line: 584, column: 7, scope: !3611)
!3700 = !DILocation(line: 128, column: 8, scope: !3629, inlinedAt: !3692)
!3701 = !DILocation(line: 126, column: 15, scope: !3629, inlinedAt: !3692)
!3702 = !DILocation(line: 129, column: 10, scope: !3628, inlinedAt: !3692)
!3703 = !DILocation(line: 129, column: 7, scope: !3629, inlinedAt: !3692)
!3704 = !DILocation(line: 138, column: 13, scope: !3627, inlinedAt: !3692)
!3705 = !DILocation(line: 132, column: 19, scope: !3627, inlinedAt: !3692)
!3706 = !DILocation(line: 139, column: 15, scope: !3707, inlinedAt: !3692)
!3707 = distinct !DILexicalBlock(scope: !3627, file: !536, line: 139, column: 11)
!3708 = !DILocation(line: 139, column: 23, scope: !3707, inlinedAt: !3692)
!3709 = !DILocation(line: 139, column: 26, scope: !3707, inlinedAt: !3692)
!3710 = !DILocation(line: 139, column: 33, scope: !3707, inlinedAt: !3692)
!3711 = !DILocation(line: 139, column: 11, scope: !3627, inlinedAt: !3692)
!3712 = !DILocation(line: 140, column: 9, scope: !3707, inlinedAt: !3692)
!3713 = !DILocation(line: 144, column: 26, scope: !3636, inlinedAt: !3692)
!3714 = !DILocation(line: 144, column: 16, scope: !3636, inlinedAt: !3692)
!3715 = !DILocation(line: 145, column: 16, scope: !3636, inlinedAt: !3692)
!3716 = !DILocation(line: 146, column: 34, scope: !3636, inlinedAt: !3692)
!3717 = !DILocation(line: 146, column: 38, scope: !3636, inlinedAt: !3692)
!3718 = !DILocation(line: 146, column: 42, scope: !3636, inlinedAt: !3692)
!3719 = !DILocation(line: 147, column: 48, scope: !3636, inlinedAt: !3692)
!3720 = !DILocation(line: 147, column: 46, scope: !3636, inlinedAt: !3692)
!3721 = !DILocation(line: 147, column: 69, scope: !3636, inlinedAt: !3692)
!3722 = !DILocation(line: 147, column: 30, scope: !3636, inlinedAt: !3692)
!3723 = !DILocation(line: 134, column: 13, scope: !3627, inlinedAt: !3692)
!3724 = !DILocation(line: 148, column: 13, scope: !3636, inlinedAt: !3692)
!3725 = !DILocation(line: 150, column: 13, scope: !3726, inlinedAt: !3692)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !536, line: 149, column: 11)
!3727 = distinct !DILexicalBlock(scope: !3636, file: !536, line: 148, column: 13)
!3728 = !DILocation(line: 151, column: 17, scope: !3726, inlinedAt: !3692)
!3729 = !DILocation(line: 152, column: 34, scope: !3730, inlinedAt: !3692)
!3730 = distinct !DILexicalBlock(scope: !3726, file: !536, line: 151, column: 17)
!3731 = !DILocation(line: 153, column: 41, scope: !3726, inlinedAt: !3692)
!3732 = !DILocation(line: 153, column: 13, scope: !3726, inlinedAt: !3692)
!3733 = !DILocation(line: 157, column: 11, scope: !3627, inlinedAt: !3692)
!3734 = !DILocation(line: 171, column: 16, scope: !3625, inlinedAt: !3692)
!3735 = !DILocation(line: 162, column: 15, scope: !3625, inlinedAt: !3692)
!3736 = !DILocation(line: 173, column: 18, scope: !3624, inlinedAt: !3692)
!3737 = !DILocation(line: 173, column: 15, scope: !3625, inlinedAt: !3692)
!3738 = !DILocation(line: 180, column: 20, scope: !3623, inlinedAt: !3692)
!3739 = !DILocation(line: 178, column: 21, scope: !3623, inlinedAt: !3692)
!3740 = !DILocation(line: 181, column: 22, scope: !3622, inlinedAt: !3692)
!3741 = !DILocation(line: 181, column: 19, scope: !3623, inlinedAt: !3692)
!3742 = !DILocation(line: 184, column: 19, scope: !3743, inlinedAt: !3692)
!3743 = distinct !DILexicalBlock(scope: !3622, file: !536, line: 182, column: 17)
!3744 = !DILocation(line: 186, column: 17, scope: !3743, inlinedAt: !3692)
!3745 = !DILocation(line: 190, column: 25, scope: !3621, inlinedAt: !3692)
!3746 = !DILocation(line: 191, column: 26, scope: !3621, inlinedAt: !3692)
!3747 = !DILocation(line: 193, column: 19, scope: !3621, inlinedAt: !3692)
!3748 = !DILocation(line: 196, column: 23, scope: !3618, inlinedAt: !3692)
!3749 = !DILocation(line: 197, column: 23, scope: !3618, inlinedAt: !3692)
!3750 = !DILocalVariable(name: "__fp", arg: 1, scope: !3751, file: !3561, line: 63, type: !3641)
!3751 = distinct !DISubprogram(name: "getc_unlocked", scope: !3561, file: !3561, line: 63, type: !3752, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!42, !3641}
!3754 = !{!3750}
!3755 = !DILocation(line: 63, column: 22, scope: !3751, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 201, column: 27, scope: !3618, inlinedAt: !3692)
!3757 = !DILocation(line: 65, column: 10, scope: !3751, inlinedAt: !3756)
!3758 = !{!3567, !603, i64 8}
!3759 = !{!3567, !603, i64 16}
!3760 = !{!"branch_weights", i32 2000, i32 1}
!3761 = !DILocation(line: 195, column: 27, scope: !3618, inlinedAt: !3692)
!3762 = !DILocation(line: 202, column: 27, scope: !3618, inlinedAt: !3692)
!3763 = distinct !{!3763, !3764, !3767}
!3764 = !DILocation(line: 209, column: 27, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !536, line: 207, column: 25)
!3766 = distinct !DILexicalBlock(scope: !3618, file: !536, line: 206, column: 27)
!3767 = !DILocation(line: 211, column: 58, scope: !3765)
!3768 = !DILocation(line: 65, column: 10, scope: !3751, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 210, column: 33, scope: !3765, inlinedAt: !3692)
!3770 = !DILocation(line: 63, column: 22, scope: !3751, inlinedAt: !3769)
!3771 = !DILocation(line: 210, column: 29, scope: !3765, inlinedAt: !3692)
!3772 = distinct !{!3772, !3773, !3774}
!3773 = !DILocation(line: 193, column: 19, scope: !3620)
!3774 = !DILocation(line: 241, column: 21, scope: !3620)
!3775 = !DILocation(line: 216, column: 23, scope: !3618, inlinedAt: !3692)
!3776 = !DILocation(line: 217, column: 27, scope: !3777, inlinedAt: !3692)
!3777 = distinct !DILexicalBlock(scope: !3618, file: !536, line: 217, column: 27)
!3778 = !DILocation(line: 217, column: 64, scope: !3777, inlinedAt: !3692)
!3779 = !DILocation(line: 217, column: 27, scope: !3618, inlinedAt: !3692)
!3780 = !DILocation(line: 219, column: 28, scope: !3618, inlinedAt: !3692)
!3781 = !DILocation(line: 198, column: 30, scope: !3618, inlinedAt: !3692)
!3782 = !DILocation(line: 220, column: 28, scope: !3618, inlinedAt: !3692)
!3783 = !DILocation(line: 198, column: 34, scope: !3618, inlinedAt: !3692)
!3784 = !DILocation(line: 199, column: 29, scope: !3618, inlinedAt: !3692)
!3785 = !DILocation(line: 222, column: 36, scope: !3786, inlinedAt: !3692)
!3786 = distinct !DILexicalBlock(scope: !3618, file: !536, line: 222, column: 27)
!3787 = !DILocation(line: 222, column: 27, scope: !3618, inlinedAt: !3692)
!3788 = !DILocation(line: 225, column: 63, scope: !3789, inlinedAt: !3692)
!3789 = distinct !DILexicalBlock(scope: !3786, file: !536, line: 223, column: 25)
!3790 = !DILocation(line: 225, column: 46, scope: !3789, inlinedAt: !3692)
!3791 = !DILocation(line: 226, column: 25, scope: !3789, inlinedAt: !3692)
!3792 = !DILocation(line: 229, column: 36, scope: !3793, inlinedAt: !3692)
!3793 = distinct !DILexicalBlock(scope: !3786, file: !536, line: 228, column: 25)
!3794 = !DILocation(line: 230, column: 73, scope: !3793, inlinedAt: !3692)
!3795 = !DILocation(line: 230, column: 46, scope: !3793, inlinedAt: !3692)
!3796 = !DILocation(line: 232, column: 35, scope: !3797, inlinedAt: !3692)
!3797 = distinct !DILexicalBlock(scope: !3618, file: !536, line: 232, column: 27)
!3798 = !DILocation(line: 232, column: 27, scope: !3618, inlinedAt: !3692)
!3799 = !DILocation(line: 236, column: 27, scope: !3800, inlinedAt: !3692)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !536, line: 233, column: 25)
!3801 = !DILocation(line: 237, column: 27, scope: !3800, inlinedAt: !3692)
!3802 = !DILocation(line: 241, column: 21, scope: !3619, inlinedAt: !3692)
!3803 = !DILocation(line: 239, column: 39, scope: !3618, inlinedAt: !3692)
!3804 = !DILocation(line: 239, column: 50, scope: !3618, inlinedAt: !3692)
!3805 = !DILocation(line: 239, column: 61, scope: !3618, inlinedAt: !3692)
!3806 = !DILocalVariable(name: "__dest", arg: 1, scope: !3807, file: !3466, line: 88, type: !3469)
!3807 = distinct !DISubprogram(name: "strcpy", scope: !3466, file: !3466, line: 88, type: !3467, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3808)
!3808 = !{!3806, !3809}
!3809 = !DILocalVariable(name: "__src", arg: 2, scope: !3807, file: !3466, line: 88, type: !921)
!3810 = !DILocation(line: 88, column: 1, scope: !3807, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 239, column: 23, scope: !3618, inlinedAt: !3692)
!3812 = !DILocation(line: 90, column: 49, scope: !3807, inlinedAt: !3811)
!3813 = !DILocation(line: 90, column: 10, scope: !3807, inlinedAt: !3811)
!3814 = !DILocation(line: 88, column: 1, scope: !3807, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 240, column: 23, scope: !3618, inlinedAt: !3692)
!3816 = !DILocation(line: 90, column: 49, scope: !3807, inlinedAt: !3815)
!3817 = !DILocation(line: 90, column: 10, scope: !3807, inlinedAt: !3815)
!3818 = !DILocation(line: 193, column: 19, scope: !3619, inlinedAt: !3692)
!3819 = !DILocation(line: 242, column: 19, scope: !3621, inlinedAt: !3692)
!3820 = !DILocation(line: 243, column: 32, scope: !3821, inlinedAt: !3692)
!3821 = distinct !DILexicalBlock(scope: !3621, file: !536, line: 243, column: 23)
!3822 = !DILocation(line: 243, column: 23, scope: !3621, inlinedAt: !3692)
!3823 = !DILocation(line: 247, column: 33, scope: !3824, inlinedAt: !3692)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !536, line: 246, column: 21)
!3825 = !DILocation(line: 247, column: 45, scope: !3824, inlinedAt: !3692)
!3826 = !DILocation(line: 253, column: 11, scope: !3625, inlinedAt: !3692)
!3827 = !DILocation(line: 377, column: 23, scope: !3627, inlinedAt: !3692)
!3828 = !DILocation(line: 378, column: 5, scope: !3627, inlinedAt: !3692)
!3829 = !DILocation(line: 396, column: 15, scope: !3611)
!3830 = !DILocation(line: 590, column: 8, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3693, file: !536, line: 589, column: 3)
!3832 = !DILocation(line: 590, column: 17, scope: !3831)
!3833 = !DILocation(line: 589, column: 3, scope: !3693)
!3834 = !DILocation(line: 592, column: 9, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !536, line: 592, column: 9)
!3836 = !DILocation(line: 592, column: 35, scope: !3835)
!3837 = !DILocation(line: 593, column: 9, scope: !3835)
!3838 = !DILocation(line: 593, column: 24, scope: !3835)
!3839 = !DILocation(line: 593, column: 31, scope: !3835)
!3840 = !DILocation(line: 593, column: 34, scope: !3835)
!3841 = !DILocation(line: 593, column: 45, scope: !3835)
!3842 = !DILocation(line: 592, column: 9, scope: !3831)
!3843 = !DILocation(line: 595, column: 29, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3835, file: !536, line: 594, column: 7)
!3845 = !DILocation(line: 595, column: 27, scope: !3844)
!3846 = !DILocation(line: 595, column: 46, scope: !3844)
!3847 = !DILocation(line: 596, column: 9, scope: !3844)
!3848 = !DILocation(line: 591, column: 19, scope: !3831)
!3849 = !DILocation(line: 591, column: 36, scope: !3831)
!3850 = !DILocation(line: 591, column: 16, scope: !3831)
!3851 = !DILocation(line: 591, column: 52, scope: !3831)
!3852 = !DILocation(line: 591, column: 69, scope: !3831)
!3853 = !DILocation(line: 591, column: 49, scope: !3831)
!3854 = distinct !{!3854, !3833, !3855}
!3855 = !DILocation(line: 597, column: 7, scope: !3693)
!3856 = !DILocation(line: 602, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3611, file: !536, line: 602, column: 7)
!3858 = !DILocation(line: 602, column: 18, scope: !3857)
!3859 = !DILocation(line: 602, column: 7, scope: !3611)
!3860 = !DILocation(line: 612, column: 3, scope: !3611)
!3861 = distinct !DISubprogram(name: "rpl_fclose", scope: !3862, file: !3862, line: 56, type: !3863, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3905)
!3862 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!42, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2816, line: 7, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2818, line: 241, size: 1728, elements: !3868)
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3867, file: !2818, line: 242, baseType: !42, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3867, file: !2818, line: 247, baseType: !6, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3867, file: !2818, line: 248, baseType: !6, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3867, file: !2818, line: 249, baseType: !6, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3867, file: !2818, line: 250, baseType: !6, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3867, file: !2818, line: 251, baseType: !6, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3867, file: !2818, line: 252, baseType: !6, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3867, file: !2818, line: 253, baseType: !6, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3867, file: !2818, line: 254, baseType: !6, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3867, file: !2818, line: 256, baseType: !6, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3867, file: !2818, line: 257, baseType: !6, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3867, file: !2818, line: 258, baseType: !6, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3867, file: !2818, line: 260, baseType: !3882, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2818, line: 156, size: 192, elements: !3884)
!3884 = !{!3885, !3886, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3883, file: !2818, line: 157, baseType: !3882, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3883, file: !2818, line: 158, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3883, file: !2818, line: 162, baseType: !42, size: 32, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3867, file: !2818, line: 262, baseType: !3887, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3867, file: !2818, line: 264, baseType: !42, size: 32, offset: 896)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3867, file: !2818, line: 268, baseType: !42, size: 32, offset: 928)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3867, file: !2818, line: 270, baseType: !2844, size: 64, offset: 960)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3867, file: !2818, line: 274, baseType: !119, size: 16, offset: 1024)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3867, file: !2818, line: 275, baseType: !541, size: 8, offset: 1040)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3867, file: !2818, line: 276, baseType: !2848, size: 8, offset: 1048)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3867, file: !2818, line: 280, baseType: !2852, size: 64, offset: 1088)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3867, file: !2818, line: 289, baseType: !2855, size: 64, offset: 1152)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3867, file: !2818, line: 297, baseType: !8, size: 64, offset: 1216)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3867, file: !2818, line: 298, baseType: !8, size: 64, offset: 1280)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3867, file: !2818, line: 299, baseType: !8, size: 64, offset: 1344)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3867, file: !2818, line: 300, baseType: !8, size: 64, offset: 1408)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3867, file: !2818, line: 302, baseType: !120, size: 64, offset: 1472)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3867, file: !2818, line: 303, baseType: !42, size: 32, offset: 1536)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3867, file: !2818, line: 305, baseType: !2863, size: 160, offset: 1568)
!3905 = !{!3906, !3907, !3908, !3909}
!3906 = !DILocalVariable(name: "fp", arg: 1, scope: !3861, file: !3862, line: 56, type: !3865)
!3907 = !DILocalVariable(name: "saved_errno", scope: !3861, file: !3862, line: 58, type: !42)
!3908 = !DILocalVariable(name: "fd", scope: !3861, file: !3862, line: 59, type: !42)
!3909 = !DILocalVariable(name: "result", scope: !3861, file: !3862, line: 60, type: !42)
!3910 = !DILocation(line: 56, column: 19, scope: !3861)
!3911 = !DILocation(line: 58, column: 7, scope: !3861)
!3912 = !DILocation(line: 60, column: 7, scope: !3861)
!3913 = !DILocation(line: 63, column: 8, scope: !3861)
!3914 = !DILocation(line: 59, column: 7, scope: !3861)
!3915 = !DILocation(line: 64, column: 10, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3861, file: !3862, line: 64, column: 7)
!3917 = !DILocation(line: 64, column: 7, scope: !3861)
!3918 = !DILocation(line: 65, column: 12, scope: !3916)
!3919 = !DILocation(line: 65, column: 5, scope: !3916)
!3920 = !DILocation(line: 70, column: 9, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3861, file: !3862, line: 70, column: 7)
!3922 = !DILocation(line: 70, column: 23, scope: !3921)
!3923 = !DILocation(line: 70, column: 33, scope: !3921)
!3924 = !DILocation(line: 70, column: 26, scope: !3921)
!3925 = !DILocation(line: 70, column: 59, scope: !3921)
!3926 = !DILocation(line: 71, column: 7, scope: !3921)
!3927 = !DILocation(line: 71, column: 10, scope: !3921)
!3928 = !DILocation(line: 70, column: 7, scope: !3861)
!3929 = !DILocation(line: 98, column: 12, scope: !3861)
!3930 = !DILocation(line: 103, column: 7, scope: !3861)
!3931 = !DILocation(line: 72, column: 19, scope: !3921)
!3932 = !DILocation(line: 103, column: 19, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3861, file: !3862, line: 103, column: 7)
!3934 = !DILocation(line: 105, column: 13, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3933, file: !3862, line: 104, column: 5)
!3936 = !DILocation(line: 107, column: 5, scope: !3935)
!3937 = !DILocation(line: 110, column: 1, scope: !3861)
!3938 = distinct !DISubprogram(name: "rpl_fflush", scope: !3939, file: !3939, line: 127, type: !3940, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3982)
!3939 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!42, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2816, line: 7, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2818, line: 241, size: 1728, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3944, file: !2818, line: 242, baseType: !42, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3944, file: !2818, line: 247, baseType: !6, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3944, file: !2818, line: 248, baseType: !6, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3944, file: !2818, line: 249, baseType: !6, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3944, file: !2818, line: 250, baseType: !6, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3944, file: !2818, line: 251, baseType: !6, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3944, file: !2818, line: 252, baseType: !6, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3944, file: !2818, line: 253, baseType: !6, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3944, file: !2818, line: 254, baseType: !6, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3944, file: !2818, line: 256, baseType: !6, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3944, file: !2818, line: 257, baseType: !6, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3944, file: !2818, line: 258, baseType: !6, size: 64, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3944, file: !2818, line: 260, baseType: !3959, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2818, line: 156, size: 192, elements: !3961)
!3961 = !{!3962, !3963, !3965}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3960, file: !2818, line: 157, baseType: !3959, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3960, file: !2818, line: 158, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3960, file: !2818, line: 162, baseType: !42, size: 32, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3944, file: !2818, line: 262, baseType: !3964, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3944, file: !2818, line: 264, baseType: !42, size: 32, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3944, file: !2818, line: 268, baseType: !42, size: 32, offset: 928)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3944, file: !2818, line: 270, baseType: !2844, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3944, file: !2818, line: 274, baseType: !119, size: 16, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3944, file: !2818, line: 275, baseType: !541, size: 8, offset: 1040)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3944, file: !2818, line: 276, baseType: !2848, size: 8, offset: 1048)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3944, file: !2818, line: 280, baseType: !2852, size: 64, offset: 1088)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3944, file: !2818, line: 289, baseType: !2855, size: 64, offset: 1152)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3944, file: !2818, line: 297, baseType: !8, size: 64, offset: 1216)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3944, file: !2818, line: 298, baseType: !8, size: 64, offset: 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3944, file: !2818, line: 299, baseType: !8, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3944, file: !2818, line: 300, baseType: !8, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3944, file: !2818, line: 302, baseType: !120, size: 64, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3944, file: !2818, line: 303, baseType: !42, size: 32, offset: 1536)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3944, file: !2818, line: 305, baseType: !2863, size: 160, offset: 1568)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "stream", arg: 1, scope: !3938, file: !3939, line: 127, type: !3942)
!3984 = !DILocation(line: 127, column: 19, scope: !3938)
!3985 = !DILocation(line: 148, column: 14, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3938, file: !3939, line: 148, column: 7)
!3987 = !DILocation(line: 148, column: 22, scope: !3986)
!3988 = !DILocation(line: 148, column: 27, scope: !3986)
!3989 = !DILocation(line: 148, column: 7, scope: !3938)
!3990 = !DILocation(line: 149, column: 12, scope: !3986)
!3991 = !DILocation(line: 149, column: 5, scope: !3986)
!3992 = !DILocalVariable(name: "fp", arg: 1, scope: !3993, file: !3939, line: 40, type: !3942)
!3993 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3939, file: !3939, line: 40, type: !3994, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3942}
!3996 = !{!3992}
!3997 = !DILocation(line: 40, column: 48, scope: !3993, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 153, column: 3, scope: !3938)
!3999 = !DILocation(line: 42, column: 11, scope: !4000, inlinedAt: !3998)
!4000 = distinct !DILexicalBlock(scope: !3993, file: !3939, line: 42, column: 7)
!4001 = !DILocation(line: 42, column: 18, scope: !4000, inlinedAt: !3998)
!4002 = !DILocation(line: 42, column: 7, scope: !3993, inlinedAt: !3998)
!4003 = !DILocation(line: 44, column: 5, scope: !4000, inlinedAt: !3998)
!4004 = !DILocation(line: 155, column: 10, scope: !3938)
!4005 = !DILocation(line: 155, column: 3, scope: !3938)
!4006 = !DILocation(line: 229, column: 1, scope: !3938)
!4007 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4008, file: !4008, line: 28, type: !4009, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !4052)
!4008 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!42, !4011, !4051, !42}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2816, line: 7, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2818, line: 241, size: 1728, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4013, file: !2818, line: 242, baseType: !42, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4013, file: !2818, line: 247, baseType: !6, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4013, file: !2818, line: 248, baseType: !6, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4013, file: !2818, line: 249, baseType: !6, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4013, file: !2818, line: 250, baseType: !6, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4013, file: !2818, line: 251, baseType: !6, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4013, file: !2818, line: 252, baseType: !6, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4013, file: !2818, line: 253, baseType: !6, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4013, file: !2818, line: 254, baseType: !6, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4013, file: !2818, line: 256, baseType: !6, size: 64, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4013, file: !2818, line: 257, baseType: !6, size: 64, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4013, file: !2818, line: 258, baseType: !6, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4013, file: !2818, line: 260, baseType: !4028, size: 64, offset: 768)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2818, line: 156, size: 192, elements: !4030)
!4030 = !{!4031, !4032, !4034}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4029, file: !2818, line: 157, baseType: !4028, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4029, file: !2818, line: 158, baseType: !4033, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4029, file: !2818, line: 162, baseType: !42, size: 32, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4013, file: !2818, line: 262, baseType: !4033, size: 64, offset: 832)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4013, file: !2818, line: 264, baseType: !42, size: 32, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4013, file: !2818, line: 268, baseType: !42, size: 32, offset: 928)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4013, file: !2818, line: 270, baseType: !2844, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4013, file: !2818, line: 274, baseType: !119, size: 16, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4013, file: !2818, line: 275, baseType: !541, size: 8, offset: 1040)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4013, file: !2818, line: 276, baseType: !2848, size: 8, offset: 1048)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4013, file: !2818, line: 280, baseType: !2852, size: 64, offset: 1088)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4013, file: !2818, line: 289, baseType: !2855, size: 64, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4013, file: !2818, line: 297, baseType: !8, size: 64, offset: 1216)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4013, file: !2818, line: 298, baseType: !8, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4013, file: !2818, line: 299, baseType: !8, size: 64, offset: 1344)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4013, file: !2818, line: 300, baseType: !8, size: 64, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4013, file: !2818, line: 302, baseType: !120, size: 64, offset: 1472)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4013, file: !2818, line: 303, baseType: !42, size: 32, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4013, file: !2818, line: 305, baseType: !2863, size: 160, offset: 1568)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2983, line: 57, baseType: !2844)
!4052 = !{!4053, !4054, !4055, !4056}
!4053 = !DILocalVariable(name: "fp", arg: 1, scope: !4007, file: !4008, line: 28, type: !4011)
!4054 = !DILocalVariable(name: "offset", arg: 2, scope: !4007, file: !4008, line: 28, type: !4051)
!4055 = !DILocalVariable(name: "whence", arg: 3, scope: !4007, file: !4008, line: 28, type: !42)
!4056 = !DILocalVariable(name: "pos", scope: !4057, file: !4008, line: 116, type: !4051)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !4008, line: 112, column: 5)
!4058 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 51, column: 7)
!4059 = !DILocation(line: 28, column: 15, scope: !4007)
!4060 = !DILocation(line: 28, column: 25, scope: !4007)
!4061 = !DILocation(line: 28, column: 37, scope: !4007)
!4062 = !DILocation(line: 51, column: 11, scope: !4058)
!4063 = !DILocation(line: 51, column: 31, scope: !4058)
!4064 = !DILocation(line: 51, column: 24, scope: !4058)
!4065 = !DILocation(line: 52, column: 7, scope: !4058)
!4066 = !DILocation(line: 52, column: 14, scope: !4058)
!4067 = !{!3567, !603, i64 40}
!4068 = !DILocation(line: 52, column: 35, scope: !4058)
!4069 = !{!3567, !603, i64 32}
!4070 = !DILocation(line: 52, column: 28, scope: !4058)
!4071 = !DILocation(line: 53, column: 7, scope: !4058)
!4072 = !DILocation(line: 53, column: 14, scope: !4058)
!4073 = !{!3567, !603, i64 72}
!4074 = !DILocation(line: 53, column: 28, scope: !4058)
!4075 = !DILocation(line: 51, column: 7, scope: !4007)
!4076 = !DILocation(line: 116, column: 26, scope: !4057)
!4077 = !DILocation(line: 116, column: 19, scope: !4057)
!4078 = !DILocation(line: 116, column: 13, scope: !4057)
!4079 = !DILocation(line: 117, column: 15, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4057, file: !4008, line: 117, column: 11)
!4081 = !DILocation(line: 117, column: 11, scope: !4057)
!4082 = !DILocation(line: 127, column: 11, scope: !4057)
!4083 = !DILocation(line: 127, column: 18, scope: !4057)
!4084 = !DILocation(line: 128, column: 11, scope: !4057)
!4085 = !DILocation(line: 128, column: 19, scope: !4057)
!4086 = !{!3567, !2133, i64 144}
!4087 = !DILocation(line: 159, column: 7, scope: !4057)
!4088 = !DILocation(line: 161, column: 10, scope: !4007)
!4089 = !DILocation(line: 161, column: 3, scope: !4007)
!4090 = !DILocation(line: 162, column: 1, scope: !4007)
