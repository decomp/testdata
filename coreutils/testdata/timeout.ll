; ModuleID = 'coreutils-8.27/src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.9 }
%union.sigval = type { i8* }
%union.anon.9 = type { %struct.anon.10, [32 x i8] }
%struct.anon.10 = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Usage: %s [OPTION] DURATION COMMAND [ARG]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Start COMMAND, and kill it if still running after DURATION.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [732 x i8] c"      --preserve-status\0A                 exit with the same status as COMMAND, even when the\0A                   command times out\0A      --foreground\0A                 when not running timeout directly from a shell prompt,\0A                   allow COMMAND to read from the TTY and get TTY signals;\0A                   in this mode, children of COMMAND will not be timed out\0A  -k, --kill-after=DURATION\0A                 also send a KILL signal if COMMAND is still running\0A                   this long after the initial signal was sent\0A  -s, --signal=SIGNAL\0A                 specify the signal to be sent on timeout;\0A                   SIGNAL may be a name like 'HUP' or a number;\0A                   see 'kill -l' for a list of signals\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [142 x i8] c"\0ADURATION is a floating point number with an optional suffix:\0A's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\0A\00", align 1
@.str.7 = private unnamed_addr constant [415 x i8] c"\0AIf the command times out, and --preserve-status is not set, then exit with\0Astatus 124.  Otherwise, exit with the status of COMMAND.  If no signal\0Ais specified, send the TERM signal upon timeout.  The TERM signal kills\0Aany process that does not block or catch that signal.  It may be necessary\0Ato use the KILL (9) signal, since this signal cannot be caught, in which\0Acase the exit status is 128+9 rather than 124.\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"+k:s:\00", align 1
@long_options = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !32
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !61
@foreground = internal unnamed_addr global i1 false, align 1
@preserve_status = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !26
@.str.15 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1
@timed_out = internal unnamed_addr global i1 false, align 4
@.str.46 = private unnamed_addr constant [37 x i8] c"warning: disabling core dumps failed\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"unknown status from command (%d)\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"warning: timer_settime\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"warning: timer_create\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.22 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), align 8, !dbg !73
@.str.25 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !79
@.str.28 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !110
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !115
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !118
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !125
@.str.58 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.70, i32 0, i32 0), i8* null], align 16, !dbg !132
@.str.61 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.62 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.63 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.64 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.65 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.66 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.67 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.68 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.69 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.70 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !176
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !183
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !196
@.str.11.71 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.73 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.74 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.75 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.76 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.77 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !203
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !210
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !198
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !212
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !218
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !227
@.str.126 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.130 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !242
@.str.3.140 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.141 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.142 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.144 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !656 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !658, metadata !659), !dbg !660
  %2 = icmp eq i32 %0, 0, !dbg !661
  br i1 %2, label %8, label %3, !dbg !663

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !664, !tbaa !666
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !664
  %6 = load i8*, i8** @program_name, align 8, !dbg !664, !tbaa !666
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !664
  br label %48, !dbg !664

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !670
  %10 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !666
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #12, !dbg !670
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !672
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !666
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !672
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !673
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !666
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !673
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([732 x i8], [732 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !678
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !666
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !678
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !679
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !666
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !679
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !680
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !666
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !680
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !681
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !666
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !681
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !682
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !666
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !49, metadata !659) #12, !dbg !683
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !49, metadata !659) #12, !dbg !683
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !685
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !685
  %35 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !686
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !57, metadata !659) #12, !dbg !687
  %36 = icmp eq i8* %35, null, !dbg !688
  br i1 %36, label %43, label %37, !dbg !690

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #11, !dbg !691
  %39 = icmp eq i32 %38, 0, !dbg !691
  br i1 %39, label %43, label %40, !dbg !692

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !693
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !693
  br label %43, !dbg !695

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !696
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !696
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !697
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !697
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #16, !dbg !698
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
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !704, metadata !659), !dbg !736
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !705, metadata !659), !dbg !737
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0, !dbg !738
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %9) #12, !dbg !738
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !707, metadata !659), !dbg !739
  %10 = load i8*, i8** %1, align 8, !dbg !740, !tbaa !666
  tail call void @set_program_name(i8* %10) #12, !dbg !741
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !742
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !743
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !744
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !745, metadata !659), !dbg !748
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !750, !tbaa !752
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !754
  br label %15, !dbg !755

; <label>:15:                                     ; preds = %24, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !756
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !711, metadata !659), !dbg !757
  switch i32 %16, label %32 [
    i32 -1, label %33
    i32 107, label %17
    i32 115, label %20
    i32 128, label %26
    i32 129, label %27
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !755

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** @optarg, align 8, !dbg !758, !tbaa !666
  %19 = call fastcc double @parse_duration(i8* %18), !dbg !761
  store double %19, double* @kill_after, align 8, !dbg !762, !tbaa !763
  br label %24, !dbg !765

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** @optarg, align 8, !dbg !766, !tbaa !666
  %22 = call i32 @operand2sig(i8* %21, i8* nonnull %9) #12, !dbg !767
  store i32 %22, i32* @term_signal, align 4, !dbg !768, !tbaa !752
  %23 = icmp eq i32 %22, -1, !dbg !769
  br i1 %23, label %25, label %24, !dbg !771

; <label>:24:                                     ; preds = %20, %27, %26, %17
  br label %15, !dbg !756, !llvm.loop !772

; <label>:25:                                     ; preds = %20
  call void @usage(i32 125) #17, !dbg !774
  unreachable, !dbg !774

; <label>:26:                                     ; preds = %15
  store i1 true, i1* @foreground, align 1
  br label %24, !dbg !775

; <label>:27:                                     ; preds = %15
  store i1 true, i1* @preserve_status, align 1
  br label %24, !dbg !776

; <label>:28:                                     ; preds = %15
  call void @usage(i32 0) #17, !dbg !777
  unreachable, !dbg !777

; <label>:29:                                     ; preds = %15
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !778, !tbaa !666
  %31 = load i8*, i8** @Version, align 8, !dbg !778, !tbaa !666
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #12, !dbg !778
  call void @exit(i32 0) #16, !dbg !778
  unreachable, !dbg !778

; <label>:32:                                     ; preds = %15
  call void @usage(i32 125) #17, !dbg !779
  unreachable, !dbg !779

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* @optind, align 4, !dbg !780, !tbaa !752
  %35 = sub nsw i32 %0, %34, !dbg !782
  %36 = icmp slt i32 %35, 2, !dbg !783
  br i1 %36, label %37, label %38, !dbg !784

; <label>:37:                                     ; preds = %33
  call void @usage(i32 125) #17, !dbg !785
  unreachable, !dbg !785

; <label>:38:                                     ; preds = %33
  %39 = add nsw i32 %34, 1, !dbg !786
  store i32 %39, i32* @optind, align 4, !dbg !786, !tbaa !752
  %40 = sext i32 %34 to i64, !dbg !787
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !787
  %42 = load i8*, i8** %41, align 8, !dbg !787, !tbaa !666
  %43 = call fastcc double @parse_duration(i8* %42), !dbg !788
  call void @llvm.dbg.value(metadata double %43, i64 0, metadata !706, metadata !659), !dbg !789
  %44 = load i32, i32* @optind, align 4, !dbg !790, !tbaa !752
  %45 = sext i32 %44 to i64, !dbg !791
  %46 = getelementptr inbounds i8*, i8** %1, i64 %45, !dbg !791
  call void @llvm.dbg.value(metadata i8** %46, i64 0, metadata !705, metadata !659), !dbg !737
  %47 = load i1, i1* @foreground, align 1
  br i1 %47, label %50, label %48, !dbg !792

; <label>:48:                                     ; preds = %38
  %49 = call i32 @setpgid(i32 0, i32 0) #12, !dbg !793
  br label %50, !dbg !793

; <label>:50:                                     ; preds = %48, %38
  %51 = load i32, i32* @term_signal, align 4, !dbg !795, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !796, metadata !659) #12, !dbg !891
  %52 = bitcast %struct.sigaction* %5 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %52) #12, !dbg !893
  %53 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 1, !dbg !894
  %54 = call i32 @sigemptyset(%struct.__sigset_t* %53) #12, !dbg !895
  %55 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 0, i32 0, !dbg !896
  store void (i32)* @cleanup, void (i32)** %55, align 8, !dbg !897, !tbaa !898
  %56 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 2, !dbg !899
  store i32 268435456, i32* %56, align 8, !dbg !900, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !799, metadata !659) #12, !dbg !904
  %57 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !905
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !799, metadata !659) #12, !dbg !904
  %58 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !906
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !799, metadata !659) #12, !dbg !904
  %59 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !907
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !799, metadata !659) #12, !dbg !904
  %60 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !908
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !799, metadata !659) #12, !dbg !904
  %61 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !909
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !799, metadata !659) #12, !dbg !904
  %62 = call i32 @sigaction(i32 %51, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !910
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %52) #12, !dbg !911
  %63 = call void (i32)* @signal(i32 21, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !912
  %64 = call void (i32)* @signal(i32 22, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !913
  %65 = bitcast %struct.sigaction* %4 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %65) #12, !dbg !914
  %66 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 1, !dbg !919
  %67 = call i32 @sigemptyset(%struct.__sigset_t* %66) #12, !dbg !920
  %68 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0, !dbg !921
  store void (i32)* @chld, void (i32)** %68, align 8, !dbg !922, !tbaa !898
  %69 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 2, !dbg !923
  store i32 268435456, i32* %69, align 8, !dbg !924, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.sigaction* %4, i64 0, metadata !917, metadata !659) #12, !dbg !925
  %70 = call i32 @sigaction(i32 17, %struct.sigaction* nonnull %4, %struct.sigaction* null) #12, !dbg !926
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %65) #12, !dbg !927
  %71 = call i32 @fork() #12, !dbg !928
  store i32 %71, i32* @monitored_pid, align 4, !dbg !929, !tbaa !752
  switch i32 %71, label %88 [
    i32 -1, label %72
    i32 0, label %76
  ], !dbg !930

; <label>:72:                                     ; preds = %50
  %73 = tail call i32* @__errno_location() #18, !dbg !931
  %74 = load i32, i32* %73, align 4, !dbg !931, !tbaa !752
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !933
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %74, i8* %75) #12, !dbg !934
  br label %165, !dbg !935

; <label>:76:                                     ; preds = %50
  %77 = call void (i32)* @signal(i32 21, void (i32)* null) #12, !dbg !936
  %78 = call void (i32)* @signal(i32 22, void (i32)* null) #12, !dbg !937
  %79 = load i8*, i8** %46, align 8, !dbg !938, !tbaa !666
  %80 = call i32 @execvp(i8* %79, i8** %46) #12, !dbg !939
  %81 = tail call i32* @__errno_location() #18, !dbg !940
  %82 = load i32, i32* %81, align 4, !dbg !940, !tbaa !752
  %83 = icmp eq i32 %82, 2, !dbg !941
  %84 = select i1 %83, i32 127, i32 126, !dbg !940
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !712, metadata !659), !dbg !942
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !943
  %86 = load i8*, i8** %46, align 8, !dbg !944, !tbaa !666
  %87 = call i8* @quote(i8* %86) #12, !dbg !945
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %82, i8* %85, i8* %87) #12, !dbg !946
  br label %165

; <label>:88:                                     ; preds = %50
  %89 = bitcast i32* %7 to i8*, !dbg !947
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #12, !dbg !947
  call fastcc void @unblock_signal(i32 14), !dbg !948
  call fastcc void @settimeout(double %43, i1 zeroext true), !dbg !949
  %90 = bitcast %struct.__sigset_t* %8 to i8*, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %90) #12, !dbg !950
  %91 = load i32, i32* @term_signal, align 4, !dbg !951, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, i64 0, metadata !719, metadata !659), !dbg !952
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !953, metadata !659) #12, !dbg !961
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, i64 0, metadata !959, metadata !659) #12, !dbg !963
  %92 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !964
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %92) #12, !dbg !964
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %93 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #12, !dbg !966
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %94 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 14) #12, !dbg !967
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %95 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 2) #12, !dbg !968
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %96 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 3) #12, !dbg !969
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %97 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 1) #12, !dbg !970
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %98 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 15) #12, !dbg !971
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %99 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %91) #12, !dbg !972
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !960, metadata !659) #12, !dbg !965
  %100 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* nonnull %8) #12, !dbg !973
  %101 = icmp eq i32 %100, 0, !dbg !975
  br i1 %101, label %106, label %102, !dbg !976

; <label>:102:                                    ; preds = %88
  %103 = tail call i32* @__errno_location() #18, !dbg !977
  %104 = load i32, i32* %103, align 4, !dbg !977, !tbaa !752
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !978
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %104, i8* %105) #12, !dbg !979
  br label %106, !dbg !979

; <label>:106:                                    ; preds = %88, %102
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #12, !dbg !980
  %107 = load i32, i32* @monitored_pid, align 4, !dbg !981, !tbaa !752
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !718, metadata !659), !dbg !982
  %108 = call i32 @waitpid(i32 %107, i32* nonnull %7, i32 1) #12, !dbg !983
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !716, metadata !659), !dbg !984
  %109 = icmp eq i32 %108, 0, !dbg !985
  br i1 %109, label %110, label %116, !dbg !986

; <label>:110:                                    ; preds = %106
  br label %111, !dbg !987

; <label>:111:                                    ; preds = %110, %111
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, i64 0, metadata !719, metadata !659), !dbg !952
  %112 = call i32 @sigsuspend(%struct.__sigset_t* nonnull %8) #12, !dbg !987
  %113 = load i32, i32* @monitored_pid, align 4, !dbg !981, !tbaa !752
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !718, metadata !659), !dbg !982
  %114 = call i32 @waitpid(i32 %113, i32* nonnull %7, i32 1) #12, !dbg !983
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !716, metadata !659), !dbg !984
  %115 = icmp eq i32 %114, 0, !dbg !985
  br i1 %115, label %111, label %116, !dbg !986, !llvm.loop !988

; <label>:116:                                    ; preds = %111, %106
  %117 = phi i32 [ %108, %106 ], [ %114, %111 ]
  %118 = icmp slt i32 %117, 0, !dbg !990
  br i1 %118, label %119, label %123, !dbg !991

; <label>:119:                                    ; preds = %116
  %120 = tail call i32* @__errno_location() #18, !dbg !992
  %121 = load i32, i32* %120, align 4, !dbg !992, !tbaa !752
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !994
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %121, i8* %122) #12, !dbg !995
  call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !718, metadata !659), !dbg !982
  store i32 125, i32* %7, align 4, !dbg !996, !tbaa !752
  br label %157, !dbg !997

; <label>:123:                                    ; preds = %116
  %124 = load i32, i32* %7, align 4, !dbg !998, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !718, metadata !659), !dbg !982
  %125 = and i32 %124, 127, !dbg !998
  %126 = icmp eq i32 %125, 0, !dbg !998
  br i1 %126, label %127, label %130, !dbg !999

; <label>:127:                                    ; preds = %123
  %128 = lshr i32 %124, 8, !dbg !1000
  %129 = and i32 %128, 255, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !718, metadata !659), !dbg !982
  store i32 %129, i32* %7, align 4, !dbg !1001, !tbaa !752
  br label %157, !dbg !1002

; <label>:130:                                    ; preds = %123
  %131 = shl nuw nsw i32 %125, 24, !dbg !1003
  %132 = add nuw i32 %131, 16777216, !dbg !1003
  %133 = ashr i32 %132, 25, !dbg !1003
  %134 = icmp sgt i32 %133, 0, !dbg !1003
  br i1 %134, label %135, label %154, !dbg !1004

; <label>:135:                                    ; preds = %130
  call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !730, metadata !659), !dbg !1005
  %136 = trunc i32 %124 to i8, !dbg !1006
  %137 = icmp slt i8 %136, 0, !dbg !1006
  br i1 %137, label %138, label %140, !dbg !1008

; <label>:138:                                    ; preds = %135
  %139 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !1009
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %139) #12, !dbg !1010
  br label %140, !dbg !1010

; <label>:140:                                    ; preds = %138, %135
  %141 = load i1, i1* @timed_out, align 4
  br i1 %141, label %152, label %142, !dbg !1011

; <label>:142:                                    ; preds = %140
  %143 = call i32 (i32, ...) @prctl(i32 4, i32 0) #12, !dbg !1013
  %144 = icmp eq i32 %143, 0, !dbg !1019
  br i1 %144, label %149, label %145, !dbg !1020

; <label>:145:                                    ; preds = %142
  %146 = tail call i32* @__errno_location() #18, !dbg !1021
  %147 = load i32, i32* %146, align 4, !dbg !1021, !tbaa !752
  %148 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !1022
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %147, i8* %148) #12, !dbg !1023
  br label %152, !dbg !1024

; <label>:149:                                    ; preds = %142
  %150 = call void (i32)* @signal(i32 %125, void (i32)* null) #12, !dbg !1025
  call fastcc void @unblock_signal(i32 %125), !dbg !1027
  %151 = call i32 @raise(i32 %125) #12, !dbg !1028
  br label %152, !dbg !1029

; <label>:152:                                    ; preds = %145, %149, %140
  %153 = or i32 %125, 128, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !718, metadata !659), !dbg !982
  store i32 %153, i32* %7, align 4, !dbg !1031, !tbaa !752
  br label %157, !dbg !1032

; <label>:154:                                    ; preds = %130
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !1033
  %156 = load i32, i32* %7, align 4, !dbg !1035, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %156, i64 0, metadata !718, metadata !659), !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %155, i32 %156) #12, !dbg !1036
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !718, metadata !659), !dbg !982
  store i32 1, i32* %7, align 4, !dbg !1037, !tbaa !752
  br label %157

; <label>:157:                                    ; preds = %127, %154, %152, %119
  %158 = phi i32 [ %129, %127 ], [ 1, %154 ], [ %153, %152 ], [ 125, %119 ]
  %159 = load i1, i1* @timed_out, align 4
  br i1 %159, label %160, label %163, !dbg !1038

; <label>:160:                                    ; preds = %157
  %161 = load i1, i1* @preserve_status, align 1
  br i1 %161, label %163, label %162, !dbg !1040

; <label>:162:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i32 124, i64 0, metadata !718, metadata !659), !dbg !982
  store i32 124, i32* %7, align 4, !dbg !1041, !tbaa !752
  br label %163, !dbg !1042

; <label>:163:                                    ; preds = %162, %160, %157
  %164 = phi i32 [ 124, %162 ], [ %158, %160 ], [ %158, %157 ], !dbg !1043
  call void @llvm.dbg.value(metadata i32 %164, i64 0, metadata !718, metadata !659), !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %90) #12, !dbg !1044
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #12, !dbg !1044
  br label %165

; <label>:165:                                    ; preds = %163, %76, %72
  %166 = phi i32 [ 125, %72 ], [ %84, %76 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %9) #12, !dbg !1045
  ret i32 %166, !dbg !1045
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @parse_duration(i8*) unnamed_addr #6 !dbg !1046 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1050, metadata !659), !dbg !1053
  %4 = bitcast double* %2 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12, !dbg !1054
  %5 = bitcast i8** %3 to i8*, !dbg !1055
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1055
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !1051, metadata !659), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1052, metadata !659), !dbg !1057
  %6 = call zeroext i1 @xstrtod(i8* %0, i8** nonnull %3, double* nonnull %2, double (i8*, i8**)* nonnull @c_strtod) #12, !dbg !1058
  br i1 %6, label %14, label %7, !dbg !1060

; <label>:7:                                      ; preds = %1
  %8 = tail call i32* @__errno_location() #18, !dbg !1061
  %9 = load i32, i32* %8, align 4, !dbg !1061, !tbaa !752
  %10 = icmp eq i32 %9, 34, !dbg !1062
  %11 = load double, double* %2, align 8, !dbg !1063
  call void @llvm.dbg.value(metadata double %11, i64 0, metadata !1051, metadata !659), !dbg !1056
  %12 = fcmp oge double %11, 0.000000e+00, !dbg !1064
  %13 = and i1 %10, %12, !dbg !1065
  br i1 %13, label %17, label %31, !dbg !1065

; <label>:14:                                     ; preds = %1
  %15 = load double, double* %2, align 8, !dbg !1063, !tbaa !763
  call void @llvm.dbg.value(metadata double %15, i64 0, metadata !1051, metadata !659), !dbg !1056
  %16 = fcmp ult double %15, 0.000000e+00, !dbg !1064
  br i1 %16, label %31, label %17, !dbg !1066

; <label>:17:                                     ; preds = %14, %7
  %18 = phi double [ %15, %14 ], [ %11, %7 ]
  %19 = load i8*, i8** %3, align 8, !dbg !1067, !tbaa !666
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1052, metadata !659), !dbg !1057
  %20 = load i8, i8* %19, align 1, !dbg !1068, !tbaa !898
  %21 = icmp eq i8 %20, 0, !dbg !1068
  br i1 %21, label %26, label %22, !dbg !1069

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1070
  %24 = load i8, i8* %23, align 1, !dbg !1071, !tbaa !898
  %25 = icmp eq i8 %24, 0, !dbg !1071
  br i1 %25, label %26, label %31, !dbg !1072

; <label>:26:                                     ; preds = %22, %17
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1052, metadata !659), !dbg !1057
  call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !1051, metadata !659), !dbg !1056
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !1073, metadata !659), !dbg !1081
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1079, metadata !659), !dbg !1083
  %27 = sext i8 %20 to i32, !dbg !1084
  switch i32 %27, label %31 [
    i32 0, label %34
    i32 115, label %34
    i32 109, label %28
    i32 104, label %29
    i32 100, label %30
  ], !dbg !1085

; <label>:28:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 60, i64 0, metadata !1080, metadata !659), !dbg !1086
  br label %34, !dbg !1087

; <label>:29:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 3600, i64 0, metadata !1080, metadata !659), !dbg !1086
  br label %34, !dbg !1089

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 86400, i64 0, metadata !1080, metadata !659), !dbg !1086
  br label %34, !dbg !1090

; <label>:31:                                     ; preds = %26, %14, %22, %7
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !1091
  %33 = call i8* @quote(i8* %0) #12, !dbg !1093
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32, i8* %33) #12, !dbg !1094
  call void @usage(i32 125) #17, !dbg !1095
  unreachable, !dbg !1095

; <label>:34:                                     ; preds = %26, %26, %28, %29, %30
  %35 = phi double [ 8.640000e+04, %30 ], [ 3.600000e+03, %29 ], [ 6.000000e+01, %28 ], [ 1.000000e+00, %26 ], [ 1.000000e+00, %26 ]
  %36 = fmul double %35, %18, !dbg !1096
  call void @llvm.dbg.value(metadata double %36, i64 0, metadata !1051, metadata !659), !dbg !1056
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12, !dbg !1097
  ret double %36, !dbg !1098
}

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cleanup(i32) #6 !dbg !1099 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1101, metadata !659), !dbg !1107
  %2 = icmp eq i32 %0, 14, !dbg !1108
  br i1 %2, label %3, label %5, !dbg !1110

; <label>:3:                                      ; preds = %1
  store i1 true, i1* @timed_out, align 4
  %4 = load i32, i32* @term_signal, align 4, !dbg !1111, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1101, metadata !659), !dbg !1107
  br label %5, !dbg !1113

; <label>:5:                                      ; preds = %3, %1
  %6 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1101, metadata !659), !dbg !1107
  %7 = load i32, i32* @monitored_pid, align 4, !dbg !1114, !tbaa !752
  %8 = icmp eq i32 %7, 0, !dbg !1114
  br i1 %8, label %35, label %9, !dbg !1115

; <label>:9:                                      ; preds = %5
  %10 = load double, double* @kill_after, align 8, !dbg !1116, !tbaa !763
  %11 = fcmp une double %10, 0.000000e+00, !dbg !1116
  br i1 %11, label %12, label %19, !dbg !1117

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #18, !dbg !1118
  %14 = load i32, i32* %13, align 4, !dbg !1118, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1102, metadata !659), !dbg !1119
  store i32 9, i32* @term_signal, align 4, !dbg !1120, !tbaa !752
  tail call fastcc void @settimeout(double %10, i1 zeroext false), !dbg !1121
  store double 0.000000e+00, double* @kill_after, align 8, !dbg !1122, !tbaa !763
  store i32 %14, i32* %13, align 4, !dbg !1123, !tbaa !752
  %15 = load i32, i32* @monitored_pid, align 4, !dbg !1124, !tbaa !752
  %16 = icmp eq i32 %15, 0, !dbg !1125
  br i1 %16, label %17, label %19, !dbg !1134

; <label>:17:                                     ; preds = %12
  %18 = tail call void (i32)* @signal(i32 %6, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1135
  br label %19, !dbg !1135

; <label>:19:                                     ; preds = %9, %12, %17
  %20 = phi i32 [ %15, %12 ], [ 0, %17 ], [ %7, %9 ]
  %21 = tail call i32 @kill(i32 %20, i32 %6) #12, !dbg !1136
  %22 = load i1, i1* @foreground, align 1
  br i1 %22, label %37, label %23, !dbg !1137

; <label>:23:                                     ; preds = %19
  %24 = tail call void (i32)* @signal(i32 %6, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1138
  %25 = tail call i32 @kill(i32 0, i32 %6) #12, !dbg !1142
  switch i32 %6, label %26 [
    i32 18, label %37
    i32 9, label %37
  ], !dbg !1143

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* @monitored_pid, align 4, !dbg !1145, !tbaa !752
  %28 = icmp eq i32 %27, 0, !dbg !1147
  br i1 %28, label %29, label %31, !dbg !1149

; <label>:29:                                     ; preds = %26
  %30 = tail call void (i32)* @signal(i32 18, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1150
  br label %31, !dbg !1150

; <label>:31:                                     ; preds = %26, %29
  %32 = tail call i32 @kill(i32 %27, i32 18) #12, !dbg !1151
  %33 = tail call void (i32)* @signal(i32 18, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1152
  %34 = tail call i32 @kill(i32 0, i32 18) #12, !dbg !1154
  br label %37, !dbg !1155

; <label>:35:                                     ; preds = %5
  %36 = add nsw i32 %6, 128, !dbg !1156
  tail call void @_exit(i32 %36) #16, !dbg !1157
  unreachable, !dbg !1157

; <label>:37:                                     ; preds = %23, %23, %19, %31
  ret void, !dbg !1158
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define internal void @chld(i32) #8 !dbg !1159 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1161, metadata !659), !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @unblock_signal(i32) unnamed_addr #6 !dbg !1164 {
  %2 = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1166, metadata !659), !dbg !1168
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !1169
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #12, !dbg !1169
  tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, i64 0, metadata !1167, metadata !659), !dbg !1170
  %4 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %2) #12, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, i64 0, metadata !1167, metadata !659), !dbg !1170
  %5 = call i32 @sigaddset(%struct.__sigset_t* nonnull %2, i32 %0) #12, !dbg !1172
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, i64 0, metadata !1167, metadata !659), !dbg !1170
  %6 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* nonnull %2, %struct.__sigset_t* null) #12, !dbg !1173
  %7 = icmp eq i32 %6, 0, !dbg !1175
  br i1 %7, label %12, label %8, !dbg !1176

; <label>:8:                                      ; preds = %1
  %9 = tail call i32* @__errno_location() #18, !dbg !1177
  %10 = load i32, i32* %9, align 4, !dbg !1177, !tbaa !752
  %11 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !1178
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11) #12, !dbg !1179
  br label %12, !dbg !1179

; <label>:12:                                     ; preds = %1, %8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #12, !dbg !1180
  ret void, !dbg !1180
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @settimeout(double, i1 zeroext) unnamed_addr #6 !dbg !1181 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !1185, metadata !659), !dbg !1208
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1186, metadata !659), !dbg !1209
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1187, metadata !659), !dbg !1210
  %5 = tail call { i64, i64 } @dtotimespec(double %0) #18, !dbg !1211
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1211
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1187, metadata !1212), !dbg !1210
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1211
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1187, metadata !1213), !dbg !1210
  %8 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1214
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #12, !dbg !1214
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 0, !dbg !1215
  %10 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1215
  call void @llvm.memset.p0i8.i64(i8* nonnull %10, i8 0, i64 16, i32 8, i1 false), !dbg !1216
  store i64 %6, i64* %9, align 8, !dbg !1215
  %11 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 1, !dbg !1215
  store i64 %7, i64* %11, align 8, !dbg !1215
  %12 = bitcast i8** %4 to i8*, !dbg !1217
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #12, !dbg !1217
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1200, metadata !659), !dbg !1218
  %13 = call i32 @timer_create(i32 0, %struct.sigevent* null, i8** nonnull %4) #12, !dbg !1219
  %14 = icmp eq i32 %13, 0, !dbg !1221
  br i1 %14, label %15, label %27, !dbg !1222

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1223, !tbaa !666
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1200, metadata !659), !dbg !1218
  call void @llvm.dbg.value(metadata %struct.itimerspec* %3, i64 0, metadata !1194, metadata !659), !dbg !1226
  %17 = call i32 @timer_settime(i8* %16, i32 0, %struct.itimerspec* nonnull %3, %struct.itimerspec* null) #12, !dbg !1227
  %18 = icmp eq i32 %17, 0, !dbg !1228
  br i1 %18, label %45, label %19, !dbg !1229

; <label>:19:                                     ; preds = %15
  br i1 %1, label %20, label %24, !dbg !1230

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !1232
  %22 = load i32, i32* %21, align 4, !dbg !1232, !tbaa !752
  %23 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !1234
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %23) #12, !dbg !1235
  br label %24, !dbg !1235

; <label>:24:                                     ; preds = %20, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1236, !tbaa !666
  call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1200, metadata !659), !dbg !1218
  %26 = call i32 @timer_delete(i8* %25) #12, !dbg !1237
  br label %34, !dbg !1238

; <label>:27:                                     ; preds = %2
  br i1 %1, label %28, label %34, !dbg !1239

; <label>:28:                                     ; preds = %27
  %29 = tail call i32* @__errno_location() #18, !dbg !1241
  %30 = load i32, i32* %29, align 4, !dbg !1241, !tbaa !752
  %31 = icmp eq i32 %30, 38, !dbg !1242
  br i1 %31, label %34, label %32, !dbg !1243

; <label>:32:                                     ; preds = %28
  %33 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !1244
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %30, i8* %33) #12, !dbg !1245
  br label %34, !dbg !1245

; <label>:34:                                     ; preds = %28, %27, %32, %24
  %35 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1246
  br i1 %35, label %36, label %42, !dbg !1247

; <label>:36:                                     ; preds = %34
  %37 = fptoui double %0 to i32, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1205, metadata !659), !dbg !1249
  %38 = uitofp i32 %37 to double, !dbg !1250
  %39 = fcmp olt double %38, %0, !dbg !1251
  %40 = zext i1 %39 to i32, !dbg !1251
  %41 = add i32 %40, %37, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1204, metadata !659), !dbg !1253
  br label %42

; <label>:42:                                     ; preds = %34, %36
  %43 = phi i32 [ %41, %36 ], [ -1, %34 ]
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1204, metadata !659), !dbg !1253
  %44 = call i32 @alarm(i32 %43) #12, !dbg !1254
  br label %45, !dbg !1255

; <label>:45:                                     ; preds = %15, %42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #12, !dbg !1255
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #12, !dbg !1255
  ret void, !dbg !1255
}

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

declare i32 @sigsuspend(%struct.__sigset_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @timer_create(i32, %struct.sigevent*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @timer_delete(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @alarm(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i32 @operand2sig(i8*, i8*) local_unnamed_addr #6 !dbg !1256 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1260, metadata !659), !dbg !1271
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1261, metadata !659), !dbg !1272
  %5 = bitcast i32* %3 to i8*, !dbg !1273
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1273
  %6 = load i8, i8* %0, align 1, !dbg !1274, !tbaa !898
  %7 = sext i8 %6 to i32, !dbg !1274
  %8 = add nsw i32 %7, -48, !dbg !1274
  %9 = icmp ult i32 %8, 10, !dbg !1274
  br i1 %9, label %10, label %36, !dbg !1275

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1276
  %12 = tail call i32* @__errno_location() #18, !dbg !1277
  store i32 0, i32* %12, align 4, !dbg !1278, !tbaa !752
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1263, metadata !659), !dbg !1279
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #12, !dbg !1280
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1266, metadata !659), !dbg !1281
  %14 = trunc i64 %13 to i32, !dbg !1282
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1267, metadata !659), !dbg !1283
  %15 = load i8*, i8** %4, align 8, !dbg !1284, !tbaa !666
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1263, metadata !659), !dbg !1279
  %16 = icmp eq i8* %15, %0, !dbg !1285
  br i1 %16, label %34, label %17, !dbg !1286

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1287, !tbaa !898
  %19 = icmp eq i8 %18, 0, !dbg !1287
  br i1 %19, label %20, label %34, !dbg !1288

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1289, !tbaa !752
  %22 = icmp eq i32 %21, 0, !dbg !1289
  br i1 %22, label %23, label %34, !dbg !1290

; <label>:23:                                     ; preds = %20
  %24 = shl i64 %13, 32, !dbg !1291
  %25 = ashr exact i64 %24, 32, !dbg !1291
  %26 = icmp eq i64 %25, %13, !dbg !1292
  br i1 %26, label %27, label %34, !dbg !1293

; <label>:27:                                     ; preds = %23
  %28 = and i32 %14, 127, !dbg !1294
  %29 = shl nuw nsw i32 %28, 24, !dbg !1294
  %30 = add nuw i32 %29, 16777216, !dbg !1294
  %31 = ashr i32 %30, 25, !dbg !1294
  %32 = icmp sgt i32 %31, 0, !dbg !1294
  %33 = select i1 %32, i32 %28, i32 %14, !dbg !1294
  br label %34, !dbg !1294

; <label>:34:                                     ; preds = %23, %20, %17, %27, %10
  %35 = phi i32 [ -1, %23 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ], [ %33, %27 ], !dbg !1293
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !1262, metadata !659), !dbg !1295
  store i32 %35, i32* %3, align 4, !dbg !1296, !tbaa !752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1297
  br label %74, !dbg !1298

; <label>:36:                                     ; preds = %2
  %37 = tail call noalias i8* @xstrdup(i8* nonnull %0) #12, !dbg !1299
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1268, metadata !659), !dbg !1300
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1270, metadata !659), !dbg !1301
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1270, metadata !659), !dbg !1301
  %38 = load i8, i8* %37, align 1, !dbg !1302, !tbaa !898
  %39 = icmp eq i8 %38, 0, !dbg !1305
  br i1 %39, label %53, label %40, !dbg !1305

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !1306

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i8 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i8* [ %50, %49 ], [ %37, %40 ]
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1270, metadata !659), !dbg !1301
  %44 = sext i8 %42 to i32, !dbg !1306
  %45 = tail call i8* @memchr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %44, i64 27), !dbg !1308
  %46 = icmp eq i8* %45, null, !dbg !1308
  br i1 %46, label %49, label %47, !dbg !1309

; <label>:47:                                     ; preds = %41
  %48 = add i8 %42, -32, !dbg !1310
  store i8 %48, i8* %43, align 1, !dbg !1310, !tbaa !898
  br label %49, !dbg !1311

; <label>:49:                                     ; preds = %41, %47
  %50 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1312
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1270, metadata !659), !dbg !1301
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1270, metadata !659), !dbg !1301
  %51 = load i8, i8* %50, align 1, !dbg !1302, !tbaa !898
  %52 = icmp eq i8 %51, 0, !dbg !1305
  br i1 %52, label %53, label %41, !dbg !1305, !llvm.loop !1313

; <label>:53:                                     ; preds = %49, %36
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1262, metadata !659), !dbg !1295
  %54 = call i32 @str2sig(i8* %37, i32* nonnull %3) #12, !dbg !1315
  %55 = icmp eq i32 %54, 0, !dbg !1317
  br i1 %55, label %72, label %56, !dbg !1318

; <label>:56:                                     ; preds = %53
  %57 = load i8, i8* %37, align 1, !dbg !1319, !tbaa !898
  %58 = icmp eq i8 %57, 83, !dbg !1320
  br i1 %58, label %59, label %71, !dbg !1321

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1322
  %61 = load i8, i8* %60, align 1, !dbg !1322, !tbaa !898
  %62 = icmp eq i8 %61, 73, !dbg !1323
  br i1 %62, label %63, label %71, !dbg !1324

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1325
  %65 = load i8, i8* %64, align 1, !dbg !1325, !tbaa !898
  %66 = icmp eq i8 %65, 71, !dbg !1326
  br i1 %66, label %67, label %71, !dbg !1327

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !1328
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1262, metadata !659), !dbg !1295
  %69 = call i32 @str2sig(i8* %68, i32* nonnull %3) #12, !dbg !1329
  %70 = icmp eq i32 %69, 0, !dbg !1330
  br i1 %70, label %72, label %71, !dbg !1331

; <label>:71:                                     ; preds = %67, %63, %59, %56
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1262, metadata !659), !dbg !1295
  store i32 -1, i32* %3, align 4, !dbg !1332, !tbaa !752
  br label %72, !dbg !1333

; <label>:72:                                     ; preds = %71, %67, %53
  call void @free(i8* %37) #12, !dbg !1334
  %73 = load i32, i32* %3, align 4, !dbg !1335, !tbaa !752
  br label %74

; <label>:74:                                     ; preds = %72, %34
  %75 = phi i32 [ %73, %72 ], [ %35, %34 ], !dbg !1335
  call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1262, metadata !659), !dbg !1295
  %76 = icmp slt i32 %75, 0, !dbg !1337
  br i1 %76, label %80, label %77, !dbg !1338

; <label>:77:                                     ; preds = %74
  %78 = call i32 @sig2str(i32 %75, i8* %1) #12, !dbg !1339
  %79 = icmp eq i32 %78, 0, !dbg !1340
  br i1 %79, label %83, label %80, !dbg !1341

; <label>:80:                                     ; preds = %77, %74
  %81 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.22, i64 0, i64 0), i32 5) #12, !dbg !1342
  %82 = call i8* @quote(i8* %0) #12, !dbg !1344
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %81, i8* %82) #12, !dbg !1345
  br label %85, !dbg !1346

; <label>:83:                                     ; preds = %77
  %84 = load i32, i32* %3, align 4, !dbg !1347, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !1262, metadata !659), !dbg !1295
  br label %85, !dbg !1348

; <label>:85:                                     ; preds = %83, %80
  %86 = phi i32 [ -1, %80 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1349
  ret i32 %86, !dbg !1349
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #11

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @c_strtod(i8*, i8**) #6 !dbg !1350 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1354, metadata !659), !dbg !1358
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1355, metadata !659), !dbg !1359
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1360, !tbaa !666
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1360
  br i1 %4, label %5, label %7, !dbg !1366

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.__locale_struct* null) #12, !dbg !1367
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1368, !tbaa !666
  br label %7, !dbg !1369

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1370, !tbaa !666
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !1357, metadata !659), !dbg !1371
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1372
  br i1 %9, label %10, label %13, !dbg !1374

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1375
  br i1 %11, label %15, label %12, !dbg !1378

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1379, !tbaa !666
  br label %15, !dbg !1380

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #12, !dbg !1381
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !1356, metadata !659), !dbg !1382
  br label %15, !dbg !1383

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ]
  ret double %16, !dbg !1384
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1385 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1387, metadata !659), !dbg !1388
  store i8* %0, i8** @file_name, align 8, !dbg !1389, !tbaa !666
  ret void, !dbg !1390
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1391 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1395, metadata !659), !dbg !1396
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1397, !tbaa !1398
  ret void, !dbg !1400
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1401 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !666
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1407
  %3 = icmp eq i32 %2, 0, !dbg !1408
  br i1 %3, label %21, label %4, !dbg !1409

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1410, !tbaa !1398, !range !1411
  %6 = icmp eq i8 %5, 0, !dbg !1410
  %7 = tail call i32* @__errno_location() #18, !dbg !1412
  br i1 %6, label %11, label %8, !dbg !1414

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1415, !tbaa !752
  %10 = icmp eq i32 %9, 32, !dbg !1416
  br i1 %10, label %21, label %11, !dbg !1417

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !1418
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1403, metadata !659), !dbg !1419
  %13 = load i8*, i8** @file_name, align 8, !dbg !1420, !tbaa !666
  %14 = icmp eq i8* %13, null, !dbg !1420
  %15 = load i32, i32* %7, align 4, !tbaa !752
  br i1 %14, label %18, label %16, !dbg !1421

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1422
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1423
  br label %19, !dbg !1423

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #12, !dbg !1424
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1425, !tbaa !752
  tail call void @_exit(i32 %20) #16, !dbg !1426
  unreachable, !dbg !1426

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1427, !tbaa !666
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1429
  %24 = icmp eq i32 %23, 0, !dbg !1430
  br i1 %24, label %27, label %25, !dbg !1431

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1432, !tbaa !752
  tail call void @_exit(i32 %26) #16, !dbg !1433
  unreachable, !dbg !1433

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1434
}

; Function Attrs: nounwind readnone sspstrong uwtable
define { i64, i64 } @dtotimespec(double) local_unnamed_addr #8 !dbg !1435 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !1444, metadata !659), !dbg !1451
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !1452
  br i1 %2, label %3, label %25, !dbg !1453

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !1454
  br i1 %4, label %5, label %25, !dbg !1455

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !1456
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1445, metadata !659), !dbg !1457
  %7 = sitofp i64 %6 to double, !dbg !1458
  %8 = fsub double %0, %7, !dbg !1459
  %9 = fmul double %8, 1.000000e+09, !dbg !1460
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !1449, metadata !659), !dbg !1461
  %10 = fptosi double %9 to i64, !dbg !1462
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1450, metadata !659), !dbg !1463
  %11 = sitofp i64 %10 to double, !dbg !1464
  %12 = fcmp ogt double %9, %11, !dbg !1465
  %13 = zext i1 %12 to i64, !dbg !1464
  %14 = add nsw i64 %13, %10, !dbg !1466
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1450, metadata !659), !dbg !1463
  %15 = sdiv i64 %14, 1000000000, !dbg !1467
  %16 = add nsw i64 %15, %6, !dbg !1468
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1445, metadata !659), !dbg !1457
  %17 = srem i64 %14, 1000000000, !dbg !1469
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1450, metadata !659), !dbg !1463
  %18 = icmp slt i64 %17, 0, !dbg !1470
  %19 = add nsw i64 %17, 1000000000, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1450, metadata !659), !dbg !1463
  %20 = ashr i64 %17, 63, !dbg !1474
  %21 = add nsw i64 %16, %20, !dbg !1474
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !1474
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1450, metadata !659), !dbg !1463
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1445, metadata !659), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1475, metadata !659), !dbg !1482
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1480, metadata !659), !dbg !1484
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1481, metadata !659), !dbg !1485
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1481, metadata !1212), !dbg !1485
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1481, metadata !1213), !dbg !1485
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0, !dbg !1486
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !1486
  br label %25

; <label>:25:                                     ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !1487
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1488 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1490, metadata !659), !dbg !1493
  %2 = icmp eq i8* %0, null, !dbg !1494
  br i1 %2, label %3, label %6, !dbg !1496

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1497, !tbaa !666
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.58, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1499
  tail call void @abort() #16, !dbg !1500
  unreachable, !dbg !1500

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #11, !dbg !1501
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1491, metadata !659), !dbg !1502
  %8 = icmp eq i8* %7, null, !dbg !1503
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1504
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1505
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1492, metadata !659), !dbg !1506
  %11 = ptrtoint i8* %10 to i64, !dbg !1507
  %12 = ptrtoint i8* %0 to i64, !dbg !1507
  %13 = sub i64 %11, %12, !dbg !1507
  %14 = icmp sgt i64 %13, 6, !dbg !1509
  br i1 %14, label %15, label %24, !dbg !1510

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1511
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.59, i64 0, i64 0), i64 7) #11, !dbg !1512
  %18 = icmp eq i32 %17, 0, !dbg !1513
  br i1 %18, label %19, label %24, !dbg !1514

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1490, metadata !659), !dbg !1493
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i64 3) #11, !dbg !1515
  %21 = icmp eq i32 %20, 0, !dbg !1518
  br i1 %21, label %22, label %24, !dbg !1519

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1520
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1490, metadata !659), !dbg !1493
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1522, !tbaa !666
  br label %24, !dbg !1523

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1490, metadata !659), !dbg !1493
  store i8* %25, i8** @program_name, align 8, !dbg !1524, !tbaa !666
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1525, !tbaa !666
  ret void, !dbg !1526
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1527 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1532, metadata !659), !dbg !1535
  %2 = tail call i32* @__errno_location() #18, !dbg !1536
  %3 = load i32, i32* %2, align 4, !dbg !1536, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1533, metadata !659), !dbg !1537
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1538
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1538
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1538
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1539
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1539
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1534, metadata !659), !dbg !1540
  store i32 %3, i32* %2, align 4, !dbg !1541, !tbaa !752
  ret %struct.quoting_options* %8, !dbg !1542
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1543 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1549, metadata !659), !dbg !1550
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1551
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1551
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1552
  %5 = load i32, i32* %4, align 8, !dbg !1552, !tbaa !1553
  ret i32 %5, !dbg !1555
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1556 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1560, metadata !659), !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1561, metadata !659), !dbg !1563
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1564
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1564
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1565
  store i32 %1, i32* %5, align 8, !dbg !1566, !tbaa !1553
  ret void, !dbg !1567
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1568 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1572, metadata !659), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1573, metadata !659), !dbg !1581
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1574, metadata !659), !dbg !1582
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1575, metadata !659), !dbg !1583
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1584
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1584
  %6 = lshr i8 %1, 5, !dbg !1585
  %7 = zext i8 %6 to i64, !dbg !1585
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1586
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1576, metadata !659), !dbg !1587
  %9 = and i8 %1, 31, !dbg !1588
  %10 = zext i8 %9 to i32, !dbg !1589
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1578, metadata !659), !dbg !1590
  %11 = load i32, i32* %8, align 4, !dbg !1591, !tbaa !752
  %12 = lshr i32 %11, %10, !dbg !1592
  %13 = and i32 %12, 1, !dbg !1593
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1579, metadata !659), !dbg !1594
  %14 = and i32 %2, 1, !dbg !1595
  %15 = xor i32 %13, %14, !dbg !1596
  %16 = shl i32 %15, %10, !dbg !1597
  %17 = xor i32 %16, %11, !dbg !1598
  store i32 %17, i32* %8, align 4, !dbg !1598, !tbaa !752
  ret i32 %13, !dbg !1599
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1600 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1604, metadata !659), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1605, metadata !659), !dbg !1608
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1609
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1604, metadata !659), !dbg !1607
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1604, metadata !659), !dbg !1607
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1612
  %6 = load i32, i32* %5, align 4, !dbg !1612, !tbaa !1613
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1606, metadata !659), !dbg !1614
  store i32 %1, i32* %5, align 4, !dbg !1615, !tbaa !1613
  ret i32 %6, !dbg !1616
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1617 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1621, metadata !659), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1622, metadata !659), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1623, metadata !659), !dbg !1626
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1627
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1621, metadata !659), !dbg !1624
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1629
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1621, metadata !659), !dbg !1624
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1630
  store i32 10, i32* %6, align 8, !dbg !1631, !tbaa !1553
  %7 = icmp ne i8* %1, null, !dbg !1632
  %8 = icmp ne i8* %2, null, !dbg !1634
  %9 = and i1 %7, %8, !dbg !1635
  br i1 %9, label %11, label %10, !dbg !1635

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1636
  unreachable, !dbg !1636

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1637
  store i8* %1, i8** %12, align 8, !dbg !1638, !tbaa !1639
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1640
  store i8* %2, i8** %13, align 8, !dbg !1641, !tbaa !1642
  ret void, !dbg !1643
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1644 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1648, metadata !659), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1649, metadata !659), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1650, metadata !659), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1651, metadata !659), !dbg !1659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1652, metadata !659), !dbg !1660
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1661
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1653, metadata !659), !dbg !1662
  %8 = tail call i32* @__errno_location() #18, !dbg !1663
  %9 = load i32, i32* %8, align 4, !dbg !1663, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1654, metadata !659), !dbg !1664
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1665
  %11 = load i32, i32* %10, align 8, !dbg !1665, !tbaa !1553
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1666
  %13 = load i32, i32* %12, align 4, !dbg !1666, !tbaa !1613
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1667
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1668
  %16 = load i8*, i8** %15, align 8, !dbg !1668, !tbaa !1639
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1669
  %18 = load i8*, i8** %17, align 8, !dbg !1669, !tbaa !1642
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1670
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1655, metadata !659), !dbg !1671
  store i32 %9, i32* %8, align 4, !dbg !1672, !tbaa !752
  ret i64 %19, !dbg !1673
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1674 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1680, metadata !659), !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1681, metadata !659), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1682, metadata !659), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1683, metadata !659), !dbg !1747
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1684, metadata !659), !dbg !1748
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1685, metadata !659), !dbg !1749
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1686, metadata !659), !dbg !1750
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1687, metadata !659), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1688, metadata !659), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1690, metadata !659), !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1691, metadata !659), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1692, metadata !659), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1693, metadata !659), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1694, metadata !659), !dbg !1757
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1758
  %14 = icmp eq i64 %13, 1, !dbg !1759
  %15 = lshr i32 %5, 1, !dbg !1760
  %16 = trunc i32 %15 to i8, !dbg !1760
  %17 = and i8 %16, 1, !dbg !1760
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1696, metadata !659), !dbg !1760
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1697, metadata !659), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1698, metadata !659), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1699, metadata !659), !dbg !1763
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1764

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1699, metadata !659), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1694, metadata !659), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1693, metadata !659), !dbg !1756
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1688, metadata !659), !dbg !1752
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1687, metadata !659), !dbg !1751
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1684, metadata !659), !dbg !1748
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
  ], !dbg !1765

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1684, metadata !659), !dbg !1748
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1684, metadata !659), !dbg !1748
  br label %94, !dbg !1766

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1684, metadata !659), !dbg !1748
  %43 = and i8 %36, 1, !dbg !1768
  %44 = icmp eq i8 %43, 0, !dbg !1768
  br i1 %44, label %45, label %94, !dbg !1766

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1770
  br i1 %46, label %94, label %47, !dbg !1773

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1770, !tbaa !898
  br label %94, !dbg !1770

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), i32 %28), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1687, metadata !659), !dbg !1751
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), i32 %28), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1688, metadata !659), !dbg !1752
  br label %51, !dbg !1779

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1688, metadata !659), !dbg !1752
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1687, metadata !659), !dbg !1751
  %54 = and i8 %36, 1, !dbg !1780
  %55 = icmp eq i8 %54, 0, !dbg !1780
  br i1 %55, label %56, label %72, !dbg !1782

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1690, metadata !659), !dbg !1753
  %57 = load i8, i8* %52, align 1, !dbg !1783, !tbaa !898
  %58 = icmp eq i8 %57, 0, !dbg !1786
  br i1 %58, label %72, label %59, !dbg !1786

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1787

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1692, metadata !659), !dbg !1755
  %64 = icmp ult i64 %63, %40, !dbg !1787
  br i1 %64, label %65, label %67, !dbg !1790

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1787
  store i8 %61, i8* %66, align 1, !dbg !1787, !tbaa !898
  br label %67, !dbg !1787

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1690, metadata !659), !dbg !1753
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1791
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1690, metadata !659), !dbg !1753
  %70 = load i8, i8* %69, align 1, !dbg !1783, !tbaa !898
  %71 = icmp eq i8 %70, 0, !dbg !1786
  br i1 %71, label %72, label %60, !dbg !1786, !llvm.loop !1792

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1694, metadata !659), !dbg !1757
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1692, metadata !659), !dbg !1755
  %74 = call i64 @strlen(i8* %53) #11, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1693, metadata !659), !dbg !1756
  br label %94, !dbg !1795

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1694, metadata !659), !dbg !1757
  br label %76, !dbg !1796

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1694, metadata !659), !dbg !1757
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1696, metadata !659), !dbg !1760
  br label %78, !dbg !1797

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1694, metadata !659), !dbg !1757
  %81 = and i8 %80, 1, !dbg !1798
  %82 = icmp eq i8 %81, 0, !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1694, metadata !659), !dbg !1757
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1800
  br label %84, !dbg !1800

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1694, metadata !659), !dbg !1757
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1684, metadata !659), !dbg !1748
  %87 = and i8 %86, 1, !dbg !1801
  %88 = icmp eq i8 %87, 0, !dbg !1801
  br i1 %88, label %89, label %94, !dbg !1803

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1804
  br i1 %90, label %94, label %91, !dbg !1807

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1804, !tbaa !898
  br label %94, !dbg !1804

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1696, metadata !659), !dbg !1760
  br label %94, !dbg !1808

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !1809
  unreachable, !dbg !1809

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1696, metadata !659), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1694, metadata !659), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1693, metadata !659), !dbg !1756
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1688, metadata !659), !dbg !1752
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1687, metadata !659), !dbg !1751
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1684, metadata !659), !dbg !1748
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1689, metadata !659), !dbg !1810
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
  br label %122, !dbg !1811

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1699, metadata !659), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1689, metadata !659), !dbg !1810
  %131 = icmp eq i64 %126, -1, !dbg !1812
  br i1 %131, label %134, label %132, !dbg !1813

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1814
  br i1 %133, label %590, label %138, !dbg !1815

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1816
  %136 = load i8, i8* %135, align 1, !dbg !1816, !tbaa !898
  %137 = icmp eq i8 %136, 0, !dbg !1817
  br i1 %137, label %590, label %138, !dbg !1815

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !659), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1706, metadata !659), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1707, metadata !659), !dbg !1820
  br i1 %108, label %139, label %154, !dbg !1821

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1823
  %141 = and i1 %109, %131, !dbg !1824
  br i1 %141, label %142, label %144, !dbg !1824

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #11, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1683, metadata !659), !dbg !1747
  br label %144, !dbg !1826

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1683, metadata !659), !dbg !1747
  %146 = icmp ugt i64 %140, %145, !dbg !1827
  br i1 %146, label %154, label %147, !dbg !1828

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1829
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #11, !dbg !1830
  %150 = icmp ne i32 %149, 0, !dbg !1831
  %151 = or i1 %150, %111, !dbg !1832
  %152 = xor i1 %150, true, !dbg !1832
  %153 = zext i1 %152 to i8, !dbg !1832
  br i1 %151, label %154, label %635, !dbg !1832

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1705, metadata !659), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1683, metadata !659), !dbg !1747
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1833
  %158 = load i8, i8* %157, align 1, !dbg !1833, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1700, metadata !659), !dbg !1834
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
  ], !dbg !1835

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1836

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1837

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1706, metadata !659), !dbg !1819
  %162 = and i8 %127, 1, !dbg !1841
  %163 = icmp eq i8 %162, 0, !dbg !1841
  %164 = and i1 %113, %163, !dbg !1841
  br i1 %164, label %165, label %181, !dbg !1841

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1843
  br i1 %166, label %167, label %169, !dbg !1847

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1843
  store i8 39, i8* %168, align 1, !dbg !1843, !tbaa !898
  br label %169, !dbg !1843

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1690, metadata !659), !dbg !1753
  %171 = icmp ult i64 %170, %130, !dbg !1848
  br i1 %171, label %172, label %174, !dbg !1851

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1848
  store i8 36, i8* %173, align 1, !dbg !1848, !tbaa !898
  br label %174, !dbg !1848

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1690, metadata !659), !dbg !1753
  %176 = icmp ult i64 %175, %130, !dbg !1852
  br i1 %176, label %177, label %179, !dbg !1855

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1852
  store i8 39, i8* %178, align 1, !dbg !1852, !tbaa !898
  br label %179, !dbg !1852

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1697, metadata !659), !dbg !1761
  br label %181, !dbg !1856

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1690, metadata !659), !dbg !1753
  %184 = icmp ult i64 %182, %130, !dbg !1857
  br i1 %184, label %185, label %187, !dbg !1860

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1857
  store i8 92, i8* %186, align 1, !dbg !1857, !tbaa !898
  br label %187, !dbg !1857

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1690, metadata !659), !dbg !1753
  br i1 %105, label %189, label %470, !dbg !1861

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1863
  %191 = icmp ult i64 %190, %155, !dbg !1864
  br i1 %191, label %192, label %470, !dbg !1865

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1866
  %194 = load i8, i8* %193, align 1, !dbg !1866, !tbaa !898
  %195 = add i8 %194, -48, !dbg !1867
  %196 = icmp ult i8 %195, 10, !dbg !1867
  br i1 %196, label %197, label %470, !dbg !1867

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1868
  br i1 %198, label %199, label %201, !dbg !1872

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1868
  store i8 48, i8* %200, align 1, !dbg !1868, !tbaa !898
  br label %201, !dbg !1868

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1690, metadata !659), !dbg !1753
  %203 = icmp ult i64 %202, %130, !dbg !1873
  br i1 %203, label %204, label %206, !dbg !1876

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1873
  store i8 48, i8* %205, align 1, !dbg !1873, !tbaa !898
  br label %206, !dbg !1873

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1690, metadata !659), !dbg !1753
  br label %470, !dbg !1877

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1878

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1879

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1880

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1882

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1884
  %214 = icmp ult i64 %213, %155, !dbg !1885
  br i1 %214, label %215, label %470, !dbg !1886

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1887
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1888
  %218 = load i8, i8* %217, align 1, !dbg !1888, !tbaa !898
  %219 = icmp eq i8 %218, 63, !dbg !1889
  br i1 %219, label %220, label %470, !dbg !1890

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1891
  %222 = load i8, i8* %221, align 1, !dbg !1891, !tbaa !898
  %223 = sext i8 %222 to i32, !dbg !1891
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
  ], !dbg !1892

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1893

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1689, metadata !659), !dbg !1810
  %226 = icmp ult i64 %124, %130, !dbg !1895
  br i1 %226, label %227, label %229, !dbg !1898

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1895
  store i8 63, i8* %228, align 1, !dbg !1895, !tbaa !898
  br label %229, !dbg !1895

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1690, metadata !659), !dbg !1753
  %231 = icmp ult i64 %230, %130, !dbg !1899
  br i1 %231, label %232, label %234, !dbg !1902

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1899
  store i8 34, i8* %233, align 1, !dbg !1899, !tbaa !898
  br label %234, !dbg !1899

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1690, metadata !659), !dbg !1753
  %236 = icmp ult i64 %235, %130, !dbg !1903
  br i1 %236, label %237, label %239, !dbg !1906

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1903
  store i8 34, i8* %238, align 1, !dbg !1903, !tbaa !898
  br label %239, !dbg !1903

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1690, metadata !659), !dbg !1753
  %241 = icmp ult i64 %240, %130, !dbg !1907
  br i1 %241, label %242, label %244, !dbg !1910

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1907
  store i8 63, i8* %243, align 1, !dbg !1907, !tbaa !898
  br label %244, !dbg !1907

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1690, metadata !659), !dbg !1753
  br label %470, !dbg !1911

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1704, metadata !659), !dbg !1912
  br label %256, !dbg !1913

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1704, metadata !659), !dbg !1912
  br label %256, !dbg !1914

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1704, metadata !659), !dbg !1912
  br label %254, !dbg !1915

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1704, metadata !659), !dbg !1912
  br label %254, !dbg !1916

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1704, metadata !659), !dbg !1912
  br label %256, !dbg !1917

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1704, metadata !659), !dbg !1912
  br i1 %113, label %252, label %253, !dbg !1918

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1919

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1922

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1704, metadata !659), !dbg !1912
  br i1 %117, label %256, label %635, !dbg !1924

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1704, metadata !659), !dbg !1912
  br i1 %104, label %497, label %470, !dbg !1926

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1927
  br i1 %259, label %260, label %265, !dbg !1929

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1930, !tbaa !898
  %262 = icmp ne i8 %261, 0, !dbg !1931
  %263 = icmp ne i64 %123, 0, !dbg !1932
  %264 = or i1 %263, %262, !dbg !1934
  br i1 %264, label %470, label %271, !dbg !1934

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1935
  %267 = icmp ne i64 %123, 0, !dbg !1932
  %268 = or i1 %267, %266, !dbg !1929
  br i1 %268, label %470, label %271, !dbg !1929

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1932
  br i1 %270, label %271, label %470, !dbg !1936

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1707, metadata !659), !dbg !1820
  br label %272, !dbg !1937

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1707, metadata !659), !dbg !1820
  br i1 %117, label %470, label %635, !dbg !1938

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1707, metadata !659), !dbg !1820
  br i1 %113, label %275, label %470, !dbg !1940

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1941

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1944
  %278 = icmp ne i64 %125, 0, !dbg !1946
  %279 = or i1 %278, %277, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1681, metadata !659), !dbg !1745
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1947
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1691, metadata !659), !dbg !1754
  %282 = icmp ult i64 %124, %281, !dbg !1948
  br i1 %282, label %283, label %285, !dbg !1951

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1948
  store i8 39, i8* %284, align 1, !dbg !1948, !tbaa !898
  br label %285, !dbg !1948

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1690, metadata !659), !dbg !1753
  %287 = icmp ult i64 %286, %281, !dbg !1952
  br i1 %287, label %288, label %290, !dbg !1955

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1952
  store i8 92, i8* %289, align 1, !dbg !1952, !tbaa !898
  br label %290, !dbg !1952

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1690, metadata !659), !dbg !1753
  %292 = icmp ult i64 %291, %281, !dbg !1956
  br i1 %292, label %293, label %295, !dbg !1959

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1956
  store i8 39, i8* %294, align 1, !dbg !1956, !tbaa !898
  br label %295, !dbg !1956

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1697, metadata !659), !dbg !1761
  br label %470, !dbg !1960

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1961

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1708, metadata !659), !dbg !1962
  %299 = tail call i16** @__ctype_b_loc() #18, !dbg !1963
  %300 = load i16*, i16** %299, align 8, !dbg !1963, !tbaa !666
  %301 = zext i8 %158 to i64, !dbg !1963
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1963
  %303 = load i16, i16* %302, align 2, !dbg !1963, !tbaa !1965
  %304 = lshr i16 %303, 14, !dbg !1967
  %305 = trunc i16 %304 to i8, !dbg !1967
  %306 = and i8 %305, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1711, metadata !659), !dbg !1968
  br label %362, !dbg !1969

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1970
  store i64 0, i64* %10, align 8, !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1711, metadata !659), !dbg !1968
  %308 = icmp eq i64 %155, -1, !dbg !1972
  br i1 %308, label %309, label %311, !dbg !1974

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #11, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1683, metadata !659), !dbg !1747
  br label %311, !dbg !1976

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1683, metadata !659), !dbg !1747
  br label %313, !dbg !1977, !llvm.loop !1978

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1711, metadata !659), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1980
  %316 = add i64 %314, %123, !dbg !1981
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1982
  %318 = sub i64 %312, %316, !dbg !1983
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1712, metadata !659), !dbg !1984
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1730, metadata !659), !dbg !1985
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1733, metadata !659), !dbg !1987
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1988

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1711, metadata !659), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1708, metadata !659), !dbg !1962
  %321 = icmp ugt i64 %312, %316, !dbg !1989
  br i1 %321, label %322, label %347, !dbg !1991

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1992

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1708, metadata !659), !dbg !1962
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1992
  %327 = load i8, i8* %326, align 1, !dbg !1992, !tbaa !898
  %328 = icmp eq i8 %327, 0, !dbg !1991
  br i1 %328, label %347, label %329, !dbg !1993

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1708, metadata !659), !dbg !1962
  %331 = add i64 %330, %123, !dbg !1995
  %332 = icmp ult i64 %331, %312, !dbg !1989
  br i1 %332, label %323, label %347, !dbg !1991, !llvm.loop !1996

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1997
  %335 = and i1 %115, %334, !dbg !2000
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1734, metadata !659), !dbg !2001
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1734, metadata !659), !dbg !2001
  br i1 %335, label %336, label %350, !dbg !2000

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2002

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1734, metadata !659), !dbg !2001
  %339 = add i64 %338, %316, !dbg !2002
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2003
  %341 = load i8, i8* %340, align 1, !dbg !2003, !tbaa !898
  %342 = sext i8 %341 to i32, !dbg !2003
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2004

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1734, metadata !659), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1734, metadata !659), !dbg !2001
  %345 = icmp ult i64 %344, %319, !dbg !1997
  br i1 %345, label %337, label %350, !dbg !2006, !llvm.loop !2007

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2009

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1711, metadata !659), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2009
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2010, !tbaa !752
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1730, metadata !659), !dbg !1985
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2012
  %353 = icmp eq i32 %352, 0, !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1711, metadata !659), !dbg !1968
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2013
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1711, metadata !659), !dbg !1968
  %355 = add i64 %319, %314, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1711, metadata !659), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1712, metadata !659), !dbg !1984
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #11, !dbg !2015
  %357 = icmp eq i32 %356, 0, !dbg !2016
  br i1 %357, label %313, label %358, !dbg !2017, !llvm.loop !1978

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2018
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1711, metadata !659), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2018
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1711, metadata !659), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1708, metadata !659), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1683, metadata !659), !dbg !1747
  %366 = and i8 %365, 1, !dbg !2019
  %367 = icmp ne i8 %366, 0, !dbg !2019
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1707, metadata !659), !dbg !1820
  %368 = icmp ult i64 %364, 2, !dbg !2020
  %369 = or i1 %367, %112, !dbg !2021
  %370 = and i1 %368, %369, !dbg !2022
  br i1 %370, label %470, label %371, !dbg !2022

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1741, metadata !659), !dbg !2024
  br label %373, !dbg !2025

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1706, metadata !659), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1705, metadata !659), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1689, metadata !659), !dbg !1810
  br i1 %369, label %426, label %380, !dbg !2026

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2031

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1706, metadata !659), !dbg !1819
  %382 = and i8 %376, 1, !dbg !2034
  %383 = icmp eq i8 %382, 0, !dbg !2034
  %384 = and i1 %113, %383, !dbg !2034
  br i1 %384, label %385, label %401, !dbg !2034

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2036
  br i1 %386, label %387, label %389, !dbg !2040

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2036
  store i8 39, i8* %388, align 1, !dbg !2036, !tbaa !898
  br label %389, !dbg !2036

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1690, metadata !659), !dbg !1753
  %391 = icmp ult i64 %390, %130, !dbg !2041
  br i1 %391, label %392, label %394, !dbg !2044

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2041
  store i8 36, i8* %393, align 1, !dbg !2041, !tbaa !898
  br label %394, !dbg !2041

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1690, metadata !659), !dbg !1753
  %396 = icmp ult i64 %395, %130, !dbg !2045
  br i1 %396, label %397, label %399, !dbg !2048

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2045
  store i8 39, i8* %398, align 1, !dbg !2045, !tbaa !898
  br label %399, !dbg !2045

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1697, metadata !659), !dbg !1761
  br label %401, !dbg !2049

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1690, metadata !659), !dbg !1753
  %404 = icmp ult i64 %402, %130, !dbg !2050
  br i1 %404, label %405, label %407, !dbg !2053

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2050
  store i8 92, i8* %406, align 1, !dbg !2050, !tbaa !898
  br label %407, !dbg !2050

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1690, metadata !659), !dbg !1753
  %409 = icmp ult i64 %408, %130, !dbg !2054
  br i1 %409, label %410, label %414, !dbg !2057

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2054
  %412 = or i8 %411, 48, !dbg !2054
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2054
  store i8 %412, i8* %413, align 1, !dbg !2054, !tbaa !898
  br label %414, !dbg !2054

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1690, metadata !659), !dbg !1753
  %416 = icmp ult i64 %415, %130, !dbg !2058
  br i1 %416, label %417, label %422, !dbg !2061

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2058
  %419 = and i8 %418, 7, !dbg !2058
  %420 = or i8 %419, 48, !dbg !2058
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2058
  store i8 %420, i8* %421, align 1, !dbg !2058, !tbaa !898
  br label %422, !dbg !2058

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1690, metadata !659), !dbg !1753
  %424 = and i8 %377, 7, !dbg !2062
  %425 = or i8 %424, 48, !dbg !2063
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1700, metadata !659), !dbg !1834
  br label %435, !dbg !2064

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2065
  %428 = icmp eq i8 %427, 0, !dbg !2065
  br i1 %428, label %435, label %429, !dbg !2067

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2068
  br i1 %430, label %431, label %433, !dbg !2072

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2068
  store i8 92, i8* %432, align 1, !dbg !2068, !tbaa !898
  br label %433, !dbg !2068

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !659), !dbg !1818
  br label %435, !dbg !2073

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1706, metadata !659), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1705, metadata !659), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1690, metadata !659), !dbg !1753
  %441 = add i64 %374, 1, !dbg !2074
  %442 = icmp ugt i64 %372, %441, !dbg !2076
  br i1 %442, label %443, label %535, !dbg !2077

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2078
  %445 = icmp ne i8 %444, 0, !dbg !2078
  %446 = and i8 %440, 1, !dbg !2078
  %447 = icmp eq i8 %446, 0, !dbg !2078
  %448 = and i1 %445, %447, !dbg !2078
  br i1 %448, label %449, label %460, !dbg !2078

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2081
  br i1 %450, label %451, label %453, !dbg !2085

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2081
  store i8 39, i8* %452, align 1, !dbg !2081, !tbaa !898
  br label %453, !dbg !2081

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1690, metadata !659), !dbg !1753
  %455 = icmp ult i64 %454, %130, !dbg !2086
  br i1 %455, label %456, label %458, !dbg !2089

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2086
  store i8 39, i8* %457, align 1, !dbg !2086, !tbaa !898
  br label %458, !dbg !2086

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1697, metadata !659), !dbg !1761
  br label %460, !dbg !2090

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1690, metadata !659), !dbg !1753
  %463 = icmp ult i64 %461, %130, !dbg !2091
  br i1 %463, label %464, label %466, !dbg !2094

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2091
  store i8 %438, i8* %465, align 1, !dbg !2091, !tbaa !898
  br label %466, !dbg !2091

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1689, metadata !659), !dbg !1810
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2095
  %469 = load i8, i8* %468, align 1, !dbg !2095, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1700, metadata !659), !dbg !1834
  br label %373, !dbg !2096, !llvm.loop !2097

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1707, metadata !659), !dbg !1820
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1706, metadata !659), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1705, metadata !659), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1689, metadata !659), !dbg !1810
  br i1 %106, label %482, label %481, !dbg !2100

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2102

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2103

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2104
  %485 = zext i8 %484 to i64, !dbg !2104
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2105
  %487 = load i32, i32* %486, align 4, !dbg !2105, !tbaa !752
  %488 = and i8 %477, 31, !dbg !2106
  %489 = zext i8 %488 to i32, !dbg !2107
  %490 = shl i32 1, %489, !dbg !2108
  %491 = and i32 %487, %490, !dbg !2108
  %492 = icmp eq i32 %491, 0, !dbg !2108
  %493 = icmp eq i8 %156, 0, !dbg !2109
  %494 = and i1 %493, %492, !dbg !2110
  br i1 %494, label %535, label %497, !dbg !2110

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2109
  br i1 %496, label %535, label %497, !dbg !2111

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1707, metadata !659), !dbg !1820
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1689, metadata !659), !dbg !1810
  br i1 %111, label %507, label %635, !dbg !2112

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1706, metadata !659), !dbg !1819
  %508 = and i8 %502, 1, !dbg !2114
  %509 = icmp eq i8 %508, 0, !dbg !2114
  %510 = and i1 %113, %509, !dbg !2114
  br i1 %510, label %511, label %527, !dbg !2114

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2116
  br i1 %512, label %513, label %515, !dbg !2120

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2116
  store i8 39, i8* %514, align 1, !dbg !2116, !tbaa !898
  br label %515, !dbg !2116

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1690, metadata !659), !dbg !1753
  %517 = icmp ult i64 %516, %506, !dbg !2121
  br i1 %517, label %518, label %520, !dbg !2124

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2121
  store i8 36, i8* %519, align 1, !dbg !2121, !tbaa !898
  br label %520, !dbg !2121

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1690, metadata !659), !dbg !1753
  %522 = icmp ult i64 %521, %506, !dbg !2125
  br i1 %522, label %523, label %525, !dbg !2128

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2125
  store i8 39, i8* %524, align 1, !dbg !2125, !tbaa !898
  br label %525, !dbg !2125

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1697, metadata !659), !dbg !1761
  br label %527, !dbg !2129

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1690, metadata !659), !dbg !1753
  %530 = icmp ult i64 %528, %506, !dbg !2130
  br i1 %530, label %531, label %533, !dbg !2133

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2130
  store i8 92, i8* %532, align 1, !dbg !2130, !tbaa !898
  br label %533, !dbg !2130

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1707, metadata !659), !dbg !1820
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1706, metadata !659), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1689, metadata !659), !dbg !1810
  br label %562, !dbg !2134

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1707, metadata !659), !dbg !1820
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1706, metadata !659), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1700, metadata !659), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1689, metadata !659), !dbg !1810
  %546 = and i8 %540, 1, !dbg !2134
  %547 = icmp ne i8 %546, 0, !dbg !2134
  %548 = and i8 %543, 1, !dbg !2134
  %549 = icmp eq i8 %548, 0, !dbg !2134
  %550 = and i1 %547, %549, !dbg !2134
  br i1 %550, label %551, label %562, !dbg !2134

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2137
  br i1 %552, label %553, label %555, !dbg !2141

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2137
  store i8 39, i8* %554, align 1, !dbg !2137, !tbaa !898
  br label %555, !dbg !2137

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1690, metadata !659), !dbg !1753
  %557 = icmp ult i64 %556, %545, !dbg !2142
  br i1 %557, label %558, label %560, !dbg !2145

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2142
  store i8 39, i8* %559, align 1, !dbg !2142, !tbaa !898
  br label %560, !dbg !2142

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1697, metadata !659), !dbg !1761
  br label %562, !dbg !2146

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1690, metadata !659), !dbg !1753
  %572 = icmp ult i64 %570, %563, !dbg !2147
  br i1 %572, label %573, label %575, !dbg !2150

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2147
  store i8 %565, i8* %574, align 1, !dbg !2147, !tbaa !898
  br label %575, !dbg !2147

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1690, metadata !659), !dbg !1753
  %577 = and i8 %564, 1, !dbg !2151
  %578 = icmp eq i8 %577, 0, !dbg !2151
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1699, metadata !659), !dbg !1763
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2153
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1699, metadata !659), !dbg !1763
  br label %580, !dbg !2154

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1699, metadata !659), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1698, metadata !659), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1697, metadata !659), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1683, metadata !659), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1691, metadata !659), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1689, metadata !659), !dbg !1810
  %589 = add i64 %581, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1689, metadata !659), !dbg !1810
  br label %122, !dbg !2156, !llvm.loop !2157

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2159
  %593 = and i1 %113, %592, !dbg !2161
  %594 = xor i1 %593, true, !dbg !2161
  %595 = or i1 %111, %594, !dbg !2161
  br i1 %595, label %596, label %635, !dbg !2161

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2162
  %598 = xor i1 %597, true, !dbg !2162
  %599 = and i8 %128, 1, !dbg !2164
  %600 = icmp eq i8 %599, 0, !dbg !2164
  %601 = or i1 %600, %598, !dbg !2162
  br i1 %601, label %611, label %602, !dbg !2162

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2165
  %604 = icmp eq i8 %603, 0, !dbg !2165
  br i1 %604, label %607, label %605, !dbg !2168

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2169
  br label %645, !dbg !2170

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2171
  %609 = icmp ne i64 %125, 0, !dbg !2173
  %610 = and i1 %609, %608, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1690, metadata !659), !dbg !1753
  br i1 %610, label %27, label %611, !dbg !2174

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2175
  %613 = and i1 %612, %111, !dbg !2177
  br i1 %613, label %614, label %630, !dbg !2177

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1690, metadata !659), !dbg !1753
  %615 = load i8, i8* %99, align 1, !dbg !2178, !tbaa !898
  %616 = icmp eq i8 %615, 0, !dbg !2181
  br i1 %616, label %630, label %617, !dbg !2181

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2182

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1690, metadata !659), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1692, metadata !659), !dbg !1755
  %622 = icmp ult i64 %621, %130, !dbg !2182
  br i1 %622, label %623, label %625, !dbg !2185

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2182
  store i8 %619, i8* %624, align 1, !dbg !2182, !tbaa !898
  br label %625, !dbg !2182

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1690, metadata !659), !dbg !1753
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2186
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1692, metadata !659), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1690, metadata !659), !dbg !1753
  %628 = load i8, i8* %627, align 1, !dbg !2178, !tbaa !898
  %629 = icmp eq i8 %628, 0, !dbg !2181
  br i1 %629, label %630, label %618, !dbg !2181, !llvm.loop !2187

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1690, metadata !659), !dbg !1753
  %632 = icmp ult i64 %631, %130, !dbg !2189
  br i1 %632, label %633, label %645, !dbg !2191

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2192
  store i8 0, i8* %634, align 1, !dbg !2193, !tbaa !898
  br label %645, !dbg !2192

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1681, metadata !659), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1683, metadata !659), !dbg !1747
  %639 = icmp ne i32 %636, 2, !dbg !2194
  %640 = icmp eq i8 %103, 0, !dbg !2196
  %641 = or i1 %639, %640, !dbg !2197
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1684, metadata !659), !dbg !1748
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1684, metadata !659), !dbg !1748
  %643 = and i32 %5, -3, !dbg !2198
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2199
  br label %645, !dbg !2200

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2201
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2202 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2206, metadata !659), !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2207, metadata !659), !dbg !2211
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2212
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2208, metadata !659), !dbg !2213
  %4 = icmp eq i8* %3, %0, !dbg !2214
  br i1 %4, label %5, label %75, !dbg !2216

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2217
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2209, metadata !659), !dbg !2218
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2219, metadata !659), !dbg !2235
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2233, metadata !659), !dbg !2238
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2234, metadata !659), !dbg !2239
  %7 = load i8, i8* %6, align 1, !dbg !2240, !tbaa !898
  %8 = sext i8 %7 to i32, !dbg !2240
  %9 = and i32 %8, -33, !dbg !2240
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2240

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2242, metadata !659), !dbg !2256
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2254, metadata !659), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2255, metadata !659), !dbg !2261
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2262
  %12 = load i8, i8* %11, align 1, !dbg !2262, !tbaa !898
  %13 = sext i8 %12 to i32, !dbg !2262
  %14 = and i32 %13, -33, !dbg !2262
  %15 = icmp eq i32 %14, 84, !dbg !2262
  br i1 %15, label %16, label %72, !dbg !2262

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2264, metadata !659), !dbg !2277
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !659), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2276, metadata !659), !dbg !2282
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2283
  %18 = load i8, i8* %17, align 1, !dbg !2283, !tbaa !898
  %19 = sext i8 %18 to i32, !dbg !2283
  %20 = and i32 %19, -33, !dbg !2283
  %21 = icmp eq i32 %20, 70, !dbg !2283
  br i1 %21, label %22, label %72, !dbg !2283

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2285, metadata !659), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2295, metadata !659), !dbg !2301
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !659), !dbg !2302
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2303
  %24 = load i8, i8* %23, align 1, !dbg !2303, !tbaa !898
  %25 = icmp eq i8 %24, 45, !dbg !2303
  br i1 %25, label %26, label %72, !dbg !2305

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2306, metadata !659), !dbg !2317
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2315, metadata !659), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2316, metadata !659), !dbg !2322
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2323
  %28 = load i8, i8* %27, align 1, !dbg !2323, !tbaa !898
  %29 = icmp eq i8 %28, 56, !dbg !2323
  br i1 %29, label %30, label %72, !dbg !2325

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2326, metadata !659), !dbg !2336
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2334, metadata !659), !dbg !2340
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2335, metadata !659), !dbg !2341
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2342
  %32 = load i8, i8* %31, align 1, !dbg !2342, !tbaa !898
  %33 = icmp eq i8 %32, 0, !dbg !2342
  br i1 %33, label %34, label %72, !dbg !2344

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2345, !tbaa !898
  %36 = icmp eq i8 %35, 96, !dbg !2346
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.75, i64 0, i64 0), !dbg !2345
  br label %75, !dbg !2347

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2242, metadata !659), !dbg !2348
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2254, metadata !659), !dbg !2352
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2255, metadata !659), !dbg !2353
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2354
  %40 = load i8, i8* %39, align 1, !dbg !2354, !tbaa !898
  %41 = sext i8 %40 to i32, !dbg !2354
  %42 = and i32 %41, -33, !dbg !2354
  %43 = icmp eq i32 %42, 66, !dbg !2354
  br i1 %43, label %44, label %72, !dbg !2354

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2264, metadata !659), !dbg !2355
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !659), !dbg !2357
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2276, metadata !659), !dbg !2358
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2359
  %46 = load i8, i8* %45, align 1, !dbg !2359, !tbaa !898
  %47 = icmp eq i8 %46, 49, !dbg !2359
  br i1 %47, label %48, label %72, !dbg !2360

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2285, metadata !659), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2295, metadata !659), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !659), !dbg !2364
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2365
  %50 = load i8, i8* %49, align 1, !dbg !2365, !tbaa !898
  %51 = icmp eq i8 %50, 56, !dbg !2365
  br i1 %51, label %52, label %72, !dbg !2366

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2306, metadata !659), !dbg !2367
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2315, metadata !659), !dbg !2369
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2316, metadata !659), !dbg !2370
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2371
  %54 = load i8, i8* %53, align 1, !dbg !2371, !tbaa !898
  %55 = icmp eq i8 %54, 48, !dbg !2371
  br i1 %55, label %56, label %72, !dbg !2372

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2326, metadata !659), !dbg !2373
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2334, metadata !659), !dbg !2375
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2335, metadata !659), !dbg !2376
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2377
  %58 = load i8, i8* %57, align 1, !dbg !2377, !tbaa !898
  %59 = icmp eq i8 %58, 51, !dbg !2377
  br i1 %59, label %60, label %72, !dbg !2378

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2379, metadata !659), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2386, metadata !659), !dbg !2392
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2387, metadata !659), !dbg !2393
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2394
  %62 = load i8, i8* %61, align 1, !dbg !2394, !tbaa !898
  %63 = icmp eq i8 %62, 48, !dbg !2394
  br i1 %63, label %64, label %72, !dbg !2396

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2397, metadata !659), !dbg !2405
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2403, metadata !659), !dbg !2409
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !659), !dbg !2410
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2411
  %66 = load i8, i8* %65, align 1, !dbg !2411, !tbaa !898
  %67 = icmp eq i8 %66, 0, !dbg !2411
  br i1 %67, label %68, label %72, !dbg !2413

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2414, !tbaa !898
  %70 = icmp eq i8 %69, 96, !dbg !2415
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.77, i64 0, i64 0), !dbg !2414
  br label %75, !dbg !2416

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2417
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), !dbg !2418
  br label %75, !dbg !2419

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2420
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #14

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2421 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2425, metadata !659), !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2426, metadata !659), !dbg !2429
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2427, metadata !659), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2431, metadata !659) #12, !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2436, metadata !659) #12, !dbg !2446
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2437, metadata !659) #12, !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2438, metadata !659) #12, !dbg !2448
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2449
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2439, metadata !659) #12, !dbg !2450
  %6 = tail call i32* @__errno_location() #18, !dbg !2451
  %7 = load i32, i32* %6, align 4, !dbg !2451, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2440, metadata !659) #12, !dbg !2452
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2453
  %9 = load i32, i32* %8, align 4, !dbg !2453, !tbaa !1613
  %10 = or i32 %9, 1, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2441, metadata !659) #12, !dbg !2455
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2456
  %12 = load i32, i32* %11, align 8, !dbg !2456, !tbaa !1553
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2457
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2458
  %15 = load i8*, i8** %14, align 8, !dbg !2458, !tbaa !1639
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2459
  %17 = load i8*, i8** %16, align 8, !dbg !2459, !tbaa !1642
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2460
  %19 = add i64 %18, 1, !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2442, metadata !659) #12, !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2463, metadata !659) #12, !dbg !2468
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2443, metadata !659) #12, !dbg !2471
  %21 = load i32, i32* %11, align 8, !dbg !2472, !tbaa !1553
  %22 = load i8*, i8** %14, align 8, !dbg !2473, !tbaa !1639
  %23 = load i8*, i8** %16, align 8, !dbg !2474, !tbaa !1642
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2475
  store i32 %7, i32* %6, align 4, !dbg !2476, !tbaa !752
  ret i8* %20, !dbg !2477
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2432 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2431, metadata !659), !dbg !2478
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2436, metadata !659), !dbg !2479
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2437, metadata !659), !dbg !2480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2438, metadata !659), !dbg !2481
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2482
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2439, metadata !659), !dbg !2483
  %7 = tail call i32* @__errno_location() #18, !dbg !2484
  %8 = load i32, i32* %7, align 4, !dbg !2484, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2440, metadata !659), !dbg !2485
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2486
  %10 = load i32, i32* %9, align 4, !dbg !2486, !tbaa !1613
  %11 = icmp ne i64* %2, null, !dbg !2487
  %12 = xor i1 %11, true, !dbg !2487
  %13 = zext i1 %12 to i32, !dbg !2487
  %14 = or i32 %10, %13, !dbg !2488
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2441, metadata !659), !dbg !2489
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2490
  %16 = load i32, i32* %15, align 8, !dbg !2490, !tbaa !1553
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2491
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2492
  %19 = load i8*, i8** %18, align 8, !dbg !2492, !tbaa !1639
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2493
  %21 = load i8*, i8** %20, align 8, !dbg !2493, !tbaa !1642
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2494
  %23 = add i64 %22, 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2442, metadata !659), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2463, metadata !659) #12, !dbg !2497
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2443, metadata !659), !dbg !2500
  %25 = load i32, i32* %15, align 8, !dbg !2501, !tbaa !1553
  %26 = load i8*, i8** %18, align 8, !dbg !2502, !tbaa !1639
  %27 = load i8*, i8** %20, align 8, !dbg !2503, !tbaa !1642
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2504
  store i32 %8, i32* %7, align 4, !dbg !2505, !tbaa !752
  br i1 %11, label %29, label %30, !dbg !2506

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2507, !tbaa !2509
  br label %30, !dbg !2511

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2512
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2513 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2517, !tbaa !666
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2515, metadata !659), !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2516, metadata !659), !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2516, metadata !659), !dbg !2519
  %2 = load i32, i32* @nslots, align 4, !dbg !2520, !tbaa !752
  %3 = icmp sgt i32 %2, 1, !dbg !2523
  br i1 %3, label %4, label %13, !dbg !2524

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2525

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2516, metadata !659), !dbg !2519
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2525
  %8 = load i8*, i8** %7, align 8, !dbg !2525, !tbaa !2526
  tail call void @free(i8* %8) #12, !dbg !2528
  %9 = add nuw i64 %6, 1, !dbg !2529
  %10 = load i32, i32* @nslots, align 4, !dbg !2520, !tbaa !752
  %11 = sext i32 %10 to i64, !dbg !2523
  %12 = icmp slt i64 %9, %11, !dbg !2523
  br i1 %12, label %5, label %13, !dbg !2524, !llvm.loop !2530

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2532
  %15 = load i8*, i8** %14, align 8, !dbg !2532, !tbaa !2526
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2534
  br i1 %16, label %18, label %17, !dbg !2535

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2536
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2538, !tbaa !2539
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2540, !tbaa !2526
  br label %18, !dbg !2541

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2542
  br i1 %19, label %22, label %20, !dbg !2544

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2545
  tail call void @free(i8* %21) #12, !dbg !2547
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2548, !tbaa !666
  br label %22, !dbg !2549

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2550, !tbaa !752
  ret void, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2552 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2556, metadata !659), !dbg !2558
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2557, metadata !659), !dbg !2559
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2560
  ret i8* %3, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2562 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2566, metadata !659), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2567, metadata !659), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2568, metadata !659), !dbg !2582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2569, metadata !659), !dbg !2583
  %5 = tail call i32* @__errno_location() #18, !dbg !2584
  %6 = load i32, i32* %5, align 4, !dbg !2584, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2570, metadata !659), !dbg !2585
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2586, !tbaa !666
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2571, metadata !659), !dbg !2587
  %8 = icmp slt i32 %0, 0, !dbg !2588
  br i1 %8, label %9, label %10, !dbg !2590

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2591
  unreachable, !dbg !2591

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2592, !tbaa !752
  %12 = icmp sgt i32 %11, %0, !dbg !2593
  br i1 %12, label %34, label %13, !dbg !2594

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2595
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2596
  br i1 %15, label %16, label %17, !dbg !2598

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2599
  unreachable, !dbg !2599

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2600
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2600
  %20 = add nsw i32 %0, 1, !dbg !2601
  %21 = sext i32 %20 to i64, !dbg !2602
  %22 = shl nsw i64 %21, 4, !dbg !2603
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2604
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2604
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2571, metadata !659), !dbg !2587
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2605, !tbaa !666
  br i1 %14, label %25, label %26, !dbg !2606

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2607, !tbaa.struct !2609
  br label %26, !dbg !2610

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2611, !tbaa !752
  %28 = sext i32 %27 to i64, !dbg !2612
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2612
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2613
  %31 = sub nsw i32 %20, %27, !dbg !2614
  %32 = sext i32 %31 to i64, !dbg !2615
  %33 = shl nsw i64 %32, 4, !dbg !2616
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2613
  store i32 %20, i32* @nslots, align 4, !dbg !2617, !tbaa !752
  br label %34, !dbg !2618

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2571, metadata !659), !dbg !2587
  %36 = sext i32 %0 to i64, !dbg !2619
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2620
  %38 = load i64, i64* %37, align 8, !dbg !2620, !tbaa !2539
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2575, metadata !659), !dbg !2621
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2622
  %40 = load i8*, i8** %39, align 8, !dbg !2622, !tbaa !2526
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2577, metadata !659), !dbg !2623
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2624
  %42 = load i32, i32* %41, align 4, !dbg !2624, !tbaa !1613
  %43 = or i32 %42, 1, !dbg !2625
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2578, metadata !659), !dbg !2626
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2627
  %45 = load i32, i32* %44, align 8, !dbg !2627, !tbaa !1553
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2628
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2629
  %48 = load i8*, i8** %47, align 8, !dbg !2629, !tbaa !1639
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2630
  %50 = load i8*, i8** %49, align 8, !dbg !2630, !tbaa !1642
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2579, metadata !659), !dbg !2632
  %52 = icmp ugt i64 %38, %51, !dbg !2633
  br i1 %52, label %63, label %53, !dbg !2635

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2575, metadata !659), !dbg !2621
  store i64 %54, i64* %37, align 8, !dbg !2638, !tbaa !2539
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2639
  br i1 %55, label %57, label %56, !dbg !2641

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2642
  br label %57, !dbg !2642

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2463, metadata !659) #12, !dbg !2643
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2577, metadata !659), !dbg !2623
  store i8* %58, i8** %39, align 8, !dbg !2646, !tbaa !2526
  %59 = load i32, i32* %44, align 8, !dbg !2647, !tbaa !1553
  %60 = load i8*, i8** %47, align 8, !dbg !2648, !tbaa !1639
  %61 = load i8*, i8** %49, align 8, !dbg !2649, !tbaa !1642
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2650
  br label %63, !dbg !2651

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2577, metadata !659), !dbg !2623
  store i32 %6, i32* %5, align 4, !dbg !2652, !tbaa !752
  ret i8* %64, !dbg !2653
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2654 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2658, metadata !659), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2659, metadata !659), !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2660, metadata !659), !dbg !2663
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2664
  ret i8* %4, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2666 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !659), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2556, metadata !659) #12, !dbg !2672
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2557, metadata !659) #12, !dbg !2674
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2675
  ret i8* %2, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2677 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2681, metadata !659), !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2682, metadata !659), !dbg !2684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2658, metadata !659) #12, !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2659, metadata !659) #12, !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2660, metadata !659) #12, !dbg !2688
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2689
  ret i8* %3, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2691 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2699, metadata !2705), !dbg !2706
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2695, metadata !659), !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2696, metadata !659), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2697, metadata !659), !dbg !2710
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2711
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2711
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2698, metadata !659), !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2704, metadata !659) #12, !dbg !2713
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2714
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2699, metadata !659) #12, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2706
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2706
  %8 = icmp eq i32 %1, 10, !dbg !2716
  br i1 %8, label %9, label %10, !dbg !2718

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2719, !noalias !2720
  unreachable, !dbg !2719

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2699, metadata !2715) #12, !dbg !2706
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2723
  store i32 %1, i32* %11, align 8, !dbg !2723, !alias.scope !2720
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2723
  %13 = bitcast i32* %12 to i8*, !dbg !2723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2698, metadata !659), !dbg !2712
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2725
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2726
  ret i8* %14, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2728 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2699, metadata !2705), !dbg !2737
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2732, metadata !659), !dbg !2739
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2733, metadata !659), !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2734, metadata !659), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2735, metadata !659), !dbg !2742
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2743
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2736, metadata !659), !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2704, metadata !659) #12, !dbg !2745
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2746
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2699, metadata !659) #12, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2737
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2737
  %9 = icmp eq i32 %1, 10, !dbg !2747
  br i1 %9, label %10, label %11, !dbg !2748

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !2749, !noalias !2750
  unreachable, !dbg !2749

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2699, metadata !2715) #12, !dbg !2737
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2753
  store i32 %1, i32* %12, align 8, !dbg !2753, !alias.scope !2750
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2753
  %14 = bitcast i32* %13 to i8*, !dbg !2753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2754
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2736, metadata !659), !dbg !2744
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2756
  ret i8* %15, !dbg !2757
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2758 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2699, metadata !2705), !dbg !2764
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2762, metadata !659), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2763, metadata !659), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2695, metadata !659) #12, !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2696, metadata !659) #12, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2697, metadata !659) #12, !dbg !2771
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2698, metadata !659) #12, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2704, metadata !659) #12, !dbg !2774
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2775
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2775
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2699, metadata !659) #12, !dbg !2764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2764
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2764
  %7 = icmp eq i32 %0, 10, !dbg !2776
  br i1 %7, label %8, label %9, !dbg !2777

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !2778, !noalias !2779
  unreachable, !dbg !2778

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2764
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2782
  store i32 %0, i32* %10, align 8, !dbg !2782, !alias.scope !2779
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2782
  %12 = bitcast i32* %11 to i8*, !dbg !2782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2698, metadata !659) #12, !dbg !2773
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2784
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2785
  ret i8* %13, !dbg !2786
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2787 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2699, metadata !2705), !dbg !2794
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2791, metadata !659), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2792, metadata !659), !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2793, metadata !659), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2732, metadata !659) #12, !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2733, metadata !659) #12, !dbg !2801
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2734, metadata !659) #12, !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2735, metadata !659) #12, !dbg !2803
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2736, metadata !659) #12, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2704, metadata !659) #12, !dbg !2806
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2807
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2699, metadata !659) #12, !dbg !2794
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2794
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2794
  %8 = icmp eq i32 %0, 10, !dbg !2808
  br i1 %8, label %9, label %10, !dbg !2809

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2810, !noalias !2811
  unreachable, !dbg !2810

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2794
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2814
  store i32 %0, i32* %11, align 8, !dbg !2814, !alias.scope !2811
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2814
  %13 = bitcast i32* %12 to i8*, !dbg !2814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2814
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2736, metadata !659) #12, !dbg !2805
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2816
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2817
  ret i8* %14, !dbg !2818
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2819 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2823, metadata !659), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2824, metadata !659), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2825, metadata !659), !dbg !2829
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2830
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2831, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2826, metadata !659), !dbg !2833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1572, metadata !659), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1573, metadata !659), !dbg !2836
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1574, metadata !659), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1575, metadata !659), !dbg !2838
  %6 = lshr i8 %2, 5, !dbg !2839
  %7 = zext i8 %6 to i64, !dbg !2839
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2840
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1576, metadata !659), !dbg !2841
  %9 = and i8 %2, 31, !dbg !2842
  %10 = zext i8 %9 to i32, !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1578, metadata !659), !dbg !2844
  %11 = load i32, i32* %8, align 4, !dbg !2845, !tbaa !752
  %12 = lshr i32 %11, %10, !dbg !2846
  %13 = and i32 %12, 1, !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1579, metadata !659), !dbg !2848
  %14 = xor i32 %13, 1, !dbg !2849
  %15 = shl i32 %14, %10, !dbg !2850
  %16 = xor i32 %15, %11, !dbg !2851
  store i32 %16, i32* %8, align 4, !dbg !2851, !tbaa !752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2826, metadata !659), !dbg !2833
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2853
  ret i8* %17, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2855 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !659), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2860, metadata !659), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2823, metadata !659) #12, !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2824, metadata !659) #12, !dbg !2865
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2825, metadata !659) #12, !dbg !2866
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2868, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2826, metadata !659) #12, !dbg !2869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1572, metadata !659) #12, !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1573, metadata !659) #12, !dbg !2872
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1574, metadata !659) #12, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1575, metadata !659) #12, !dbg !2874
  %5 = lshr i8 %1, 5, !dbg !2875
  %6 = zext i8 %5 to i64, !dbg !2875
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1576, metadata !659) #12, !dbg !2877
  %8 = and i8 %1, 31, !dbg !2878
  %9 = zext i8 %8 to i32, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1578, metadata !659) #12, !dbg !2880
  %10 = load i32, i32* %7, align 4, !dbg !2881, !tbaa !752
  %11 = lshr i32 %10, %9, !dbg !2882
  %12 = and i32 %11, 1, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1579, metadata !659) #12, !dbg !2884
  %13 = xor i32 %12, 1, !dbg !2885
  %14 = shl i32 %13, %9, !dbg !2886
  %15 = xor i32 %14, %10, !dbg !2887
  store i32 %15, i32* %7, align 4, !dbg !2887, !tbaa !752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2826, metadata !659) #12, !dbg !2869
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2889
  ret i8* %16, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2891 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !659), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !659) #12, !dbg !2895
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2860, metadata !659) #12, !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2823, metadata !659) #12, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2824, metadata !659) #12, !dbg !2900
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2825, metadata !659) #12, !dbg !2901
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2902
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2903, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2826, metadata !659) #12, !dbg !2904
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1572, metadata !659) #12, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1573, metadata !659) #12, !dbg !2907
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1574, metadata !659) #12, !dbg !2908
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1575, metadata !659) #12, !dbg !2909
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2910
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1576, metadata !659) #12, !dbg !2911
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1578, metadata !659) #12, !dbg !2912
  %5 = load i32, i32* %4, align 4, !dbg !2913, !tbaa !752
  %6 = or i32 %5, 67108864, !dbg !2914
  store i32 %6, i32* %4, align 4, !dbg !2914, !tbaa !752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2826, metadata !659) #12, !dbg !2904
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2915
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2916
  ret i8* %7, !dbg !2917
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2918 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2920, metadata !659), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2921, metadata !659), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2823, metadata !659) #12, !dbg !2924
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2824, metadata !659) #12, !dbg !2926
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2825, metadata !659) #12, !dbg !2927
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2928
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2928
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2929, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2826, metadata !659) #12, !dbg !2930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1572, metadata !659) #12, !dbg !2931
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1573, metadata !659) #12, !dbg !2933
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1574, metadata !659) #12, !dbg !2934
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1575, metadata !659) #12, !dbg !2935
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2936
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1576, metadata !659) #12, !dbg !2937
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1578, metadata !659) #12, !dbg !2938
  %6 = load i32, i32* %5, align 4, !dbg !2939, !tbaa !752
  %7 = or i32 %6, 67108864, !dbg !2940
  store i32 %7, i32* %5, align 4, !dbg !2940, !tbaa !752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2826, metadata !659) #12, !dbg !2930
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2942
  ret i8* %8, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2944 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2699, metadata !2705), !dbg !2950
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2946, metadata !659), !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2947, metadata !659), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2948, metadata !659), !dbg !2954
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2955
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2704, metadata !659) #12, !dbg !2956
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2957
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2699, metadata !659) #12, !dbg !2950
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2699, metadata !2715) #12, !dbg !2950
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2950
  %9 = icmp eq i32 %1, 10, !dbg !2958
  br i1 %9, label %10, label %11, !dbg !2959

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2960, !noalias !2961
  unreachable, !dbg !2960

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2699, metadata !2715) #12, !dbg !2950
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2965
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2966
  store i32 %1, i32* %13, align 8, !dbg !2966
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2966
  %15 = bitcast i32* %14 to i8*, !dbg !2966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2966
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2949, metadata !659), !dbg !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1572, metadata !659), !dbg !2968
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1573, metadata !659), !dbg !2970
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1574, metadata !659), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1575, metadata !659), !dbg !2972
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2973
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1576, metadata !659), !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1578, metadata !659), !dbg !2975
  %17 = load i32, i32* %16, align 4, !dbg !2976, !tbaa !752
  %18 = or i32 %17, 67108864, !dbg !2977
  store i32 %18, i32* %16, align 4, !dbg !2977, !tbaa !752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2949, metadata !659), !dbg !2967
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2978
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2979
  ret i8* %19, !dbg !2980
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2981 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2985, metadata !659), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2986, metadata !659), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2987, metadata !659), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2988, metadata !659), !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2993, metadata !659) #12, !dbg !3003
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2998, metadata !659) #12, !dbg !3005
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2999, metadata !659) #12, !dbg !3006
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3000, metadata !659) #12, !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3001, metadata !659) #12, !dbg !3008
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3009
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3010, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3002, metadata !659) #12, !dbg !3011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1621, metadata !659) #12, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1622, metadata !659) #12, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1623, metadata !659) #12, !dbg !3015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1621, metadata !659) #12, !dbg !3012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1621, metadata !659) #12, !dbg !3012
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3016
  store i32 10, i32* %7, align 8, !dbg !3017, !tbaa !1553
  %8 = icmp ne i8* %1, null, !dbg !3018
  %9 = icmp ne i8* %2, null, !dbg !3019
  %10 = and i1 %8, %9, !dbg !3020
  br i1 %10, label %12, label %11, !dbg !3020

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3021
  unreachable, !dbg !3021

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3022
  store i8* %1, i8** %13, align 8, !dbg !3023, !tbaa !1639
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3024
  store i8* %2, i8** %14, align 8, !dbg !3025, !tbaa !1642
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3002, metadata !659) #12, !dbg !3011
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3027
  ret i8* %15, !dbg !3028
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2994 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2993, metadata !659), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2998, metadata !659), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2999, metadata !659), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3000, metadata !659), !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3001, metadata !659), !dbg !3033
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3035, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3002, metadata !659), !dbg !3036
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1621, metadata !659) #12, !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1622, metadata !659) #12, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1623, metadata !659) #12, !dbg !3040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1621, metadata !659) #12, !dbg !3037
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1621, metadata !659) #12, !dbg !3037
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3041
  store i32 10, i32* %8, align 8, !dbg !3042, !tbaa !1553
  %9 = icmp ne i8* %1, null, !dbg !3043
  %10 = icmp ne i8* %2, null, !dbg !3044
  %11 = and i1 %9, %10, !dbg !3045
  br i1 %11, label %13, label %12, !dbg !3045

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3046
  unreachable, !dbg !3046

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3047
  store i8* %1, i8** %14, align 8, !dbg !3048, !tbaa !1639
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3049
  store i8* %2, i8** %15, align 8, !dbg !3050, !tbaa !1642
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3002, metadata !659), !dbg !3036
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3051
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3052
  ret i8* %16, !dbg !3053
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3054 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3058, metadata !659), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3059, metadata !659), !dbg !3062
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3060, metadata !659), !dbg !3063
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2985, metadata !659) #12, !dbg !3064
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2986, metadata !659) #12, !dbg !3066
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2987, metadata !659) #12, !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2988, metadata !659) #12, !dbg !3068
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2993, metadata !659) #12, !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !659) #12, !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2999, metadata !659) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3000, metadata !659) #12, !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3001, metadata !659) #12, !dbg !3074
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3076, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3002, metadata !659) #12, !dbg !3077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1621, metadata !659) #12, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1622, metadata !659) #12, !dbg !3080
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1623, metadata !659) #12, !dbg !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1621, metadata !659) #12, !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1621, metadata !659) #12, !dbg !3078
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3082
  store i32 10, i32* %6, align 8, !dbg !3083, !tbaa !1553
  %7 = icmp ne i8* %0, null, !dbg !3084
  %8 = icmp ne i8* %1, null, !dbg !3085
  %9 = and i1 %7, %8, !dbg !3086
  br i1 %9, label %11, label %10, !dbg !3086

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3087
  unreachable, !dbg !3087

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3088
  store i8* %0, i8** %12, align 8, !dbg !3089, !tbaa !1639
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3090
  store i8* %1, i8** %13, align 8, !dbg !3091, !tbaa !1642
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3002, metadata !659) #12, !dbg !3077
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3093
  ret i8* %14, !dbg !3094
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3095 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3099, metadata !659), !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3100, metadata !659), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3101, metadata !659), !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3102, metadata !659), !dbg !3106
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2993, metadata !659) #12, !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !659) #12, !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2999, metadata !659) #12, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3000, metadata !659) #12, !dbg !3111
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3001, metadata !659) #12, !dbg !3112
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3113
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3114, !tbaa.struct !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3002, metadata !659) #12, !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1621, metadata !659) #12, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1622, metadata !659) #12, !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1623, metadata !659) #12, !dbg !3119
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1621, metadata !659) #12, !dbg !3116
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1621, metadata !659) #12, !dbg !3116
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3120
  store i32 10, i32* %7, align 8, !dbg !3121, !tbaa !1553
  %8 = icmp ne i8* %0, null, !dbg !3122
  %9 = icmp ne i8* %1, null, !dbg !3123
  %10 = and i1 %8, %9, !dbg !3124
  br i1 %10, label %12, label %11, !dbg !3124

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3125
  unreachable, !dbg !3125

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3126
  store i8* %0, i8** %13, align 8, !dbg !3127, !tbaa !1639
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3128
  store i8* %1, i8** %14, align 8, !dbg !3129, !tbaa !1642
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3002, metadata !659) #12, !dbg !3115
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3130
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3131
  ret i8* %15, !dbg !3132
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3137, metadata !659), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3138, metadata !659), !dbg !3141
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3139, metadata !659), !dbg !3142
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3143
  ret i8* %4, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3145 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3149, metadata !659), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3150, metadata !659), !dbg !3152
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3137, metadata !659) #12, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3138, metadata !659) #12, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3139, metadata !659) #12, !dbg !3156
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3157
  ret i8* %3, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3159 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3163, metadata !659), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3164, metadata !659), !dbg !3166
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3137, metadata !659) #12, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3138, metadata !659) #12, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3139, metadata !659) #12, !dbg !3170
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3171
  ret i8* %3, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3173 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3177, metadata !659), !dbg !3178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3163, metadata !659) #12, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3164, metadata !659) #12, !dbg !3181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3137, metadata !659) #12, !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3138, metadata !659) #12, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3139, metadata !659) #12, !dbg !3185
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3186
  ret i8* %2, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3188 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3245, metadata !659), !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3246, metadata !659), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3247, metadata !659), !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3248, metadata !659), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3249, metadata !659), !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3250, metadata !659), !dbg !3256
  %7 = icmp eq i8* %1, null, !dbg !3257
  br i1 %7, label %10, label %8, !dbg !3259

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3260
  br label %12, !dbg !3260

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3261
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #12, !dbg !3262
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3262
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.85, i64 0, i64 0), i32 5) #12, !dbg !3263
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3263
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
  ], !dbg !3264

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3265
  unreachable, !dbg !3265

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #12, !dbg !3267
  %20 = load i8*, i8** %4, align 8, !dbg !3267, !tbaa !666
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3267
  br label %146, !dbg !3268

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.87, i64 0, i64 0), i32 5) #12, !dbg !3269
  %24 = load i8*, i8** %4, align 8, !dbg !3269, !tbaa !666
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3269
  %26 = load i8*, i8** %25, align 8, !dbg !3269, !tbaa !666
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3269
  br label %146, !dbg !3270

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #12, !dbg !3271
  %30 = load i8*, i8** %4, align 8, !dbg !3271, !tbaa !666
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3271
  %32 = load i8*, i8** %31, align 8, !dbg !3271, !tbaa !666
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3271
  %34 = load i8*, i8** %33, align 8, !dbg !3271, !tbaa !666
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3271
  br label %146, !dbg !3272

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #12, !dbg !3273
  %38 = load i8*, i8** %4, align 8, !dbg !3273, !tbaa !666
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3273
  %40 = load i8*, i8** %39, align 8, !dbg !3273, !tbaa !666
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3273
  %42 = load i8*, i8** %41, align 8, !dbg !3273, !tbaa !666
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3273
  %44 = load i8*, i8** %43, align 8, !dbg !3273, !tbaa !666
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3273
  br label %146, !dbg !3274

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #12, !dbg !3275
  %48 = load i8*, i8** %4, align 8, !dbg !3275, !tbaa !666
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3275
  %50 = load i8*, i8** %49, align 8, !dbg !3275, !tbaa !666
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3275
  %52 = load i8*, i8** %51, align 8, !dbg !3275, !tbaa !666
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3275
  %54 = load i8*, i8** %53, align 8, !dbg !3275, !tbaa !666
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3275
  %56 = load i8*, i8** %55, align 8, !dbg !3275, !tbaa !666
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3275
  br label %146, !dbg !3276

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #12, !dbg !3277
  %60 = load i8*, i8** %4, align 8, !dbg !3277, !tbaa !666
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3277
  %62 = load i8*, i8** %61, align 8, !dbg !3277, !tbaa !666
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3277
  %64 = load i8*, i8** %63, align 8, !dbg !3277, !tbaa !666
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3277
  %66 = load i8*, i8** %65, align 8, !dbg !3277, !tbaa !666
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3277
  %68 = load i8*, i8** %67, align 8, !dbg !3277, !tbaa !666
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3277
  %70 = load i8*, i8** %69, align 8, !dbg !3277, !tbaa !666
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3277
  br label %146, !dbg !3278

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #12, !dbg !3279
  %74 = load i8*, i8** %4, align 8, !dbg !3279, !tbaa !666
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3279
  %76 = load i8*, i8** %75, align 8, !dbg !3279, !tbaa !666
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3279
  %78 = load i8*, i8** %77, align 8, !dbg !3279, !tbaa !666
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3279
  %80 = load i8*, i8** %79, align 8, !dbg !3279, !tbaa !666
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3279
  %82 = load i8*, i8** %81, align 8, !dbg !3279, !tbaa !666
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3279
  %84 = load i8*, i8** %83, align 8, !dbg !3279, !tbaa !666
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3279
  %86 = load i8*, i8** %85, align 8, !dbg !3279, !tbaa !666
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3279
  br label %146, !dbg !3280

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #12, !dbg !3281
  %90 = load i8*, i8** %4, align 8, !dbg !3281, !tbaa !666
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3281
  %92 = load i8*, i8** %91, align 8, !dbg !3281, !tbaa !666
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3281
  %94 = load i8*, i8** %93, align 8, !dbg !3281, !tbaa !666
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3281
  %96 = load i8*, i8** %95, align 8, !dbg !3281, !tbaa !666
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3281
  %98 = load i8*, i8** %97, align 8, !dbg !3281, !tbaa !666
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3281
  %100 = load i8*, i8** %99, align 8, !dbg !3281, !tbaa !666
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3281
  %102 = load i8*, i8** %101, align 8, !dbg !3281, !tbaa !666
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3281
  %104 = load i8*, i8** %103, align 8, !dbg !3281, !tbaa !666
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3281
  br label %146, !dbg !3282

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #12, !dbg !3283
  %108 = load i8*, i8** %4, align 8, !dbg !3283, !tbaa !666
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3283
  %110 = load i8*, i8** %109, align 8, !dbg !3283, !tbaa !666
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3283
  %112 = load i8*, i8** %111, align 8, !dbg !3283, !tbaa !666
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3283
  %114 = load i8*, i8** %113, align 8, !dbg !3283, !tbaa !666
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3283
  %116 = load i8*, i8** %115, align 8, !dbg !3283, !tbaa !666
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3283
  %118 = load i8*, i8** %117, align 8, !dbg !3283, !tbaa !666
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3283
  %120 = load i8*, i8** %119, align 8, !dbg !3283, !tbaa !666
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3283
  %122 = load i8*, i8** %121, align 8, !dbg !3283, !tbaa !666
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3283
  %124 = load i8*, i8** %123, align 8, !dbg !3283, !tbaa !666
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3283
  br label %146, !dbg !3284

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #12, !dbg !3285
  %128 = load i8*, i8** %4, align 8, !dbg !3285, !tbaa !666
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3285
  %130 = load i8*, i8** %129, align 8, !dbg !3285, !tbaa !666
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3285
  %132 = load i8*, i8** %131, align 8, !dbg !3285, !tbaa !666
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3285
  %134 = load i8*, i8** %133, align 8, !dbg !3285, !tbaa !666
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3285
  %136 = load i8*, i8** %135, align 8, !dbg !3285, !tbaa !666
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3285
  %138 = load i8*, i8** %137, align 8, !dbg !3285, !tbaa !666
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3285
  %140 = load i8*, i8** %139, align 8, !dbg !3285, !tbaa !666
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3285
  %142 = load i8*, i8** %141, align 8, !dbg !3285, !tbaa !666
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3285
  %144 = load i8*, i8** %143, align 8, !dbg !3285, !tbaa !666
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3285
  br label %146, !dbg !3286

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3288 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3292, metadata !659), !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3293, metadata !659), !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3294, metadata !659), !dbg !3300
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3295, metadata !659), !dbg !3301
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3296, metadata !659), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3297, metadata !659), !dbg !3303
  br label %6, !dbg !3304

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3297, metadata !659), !dbg !3303
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3306
  %9 = load i8*, i8** %8, align 8, !dbg !3306, !tbaa !666
  %10 = icmp eq i8* %9, null, !dbg !3308
  %11 = add i64 %7, 1, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3297, metadata !659), !dbg !3303
  br i1 %10, label %12, label %6, !dbg !3308, !llvm.loop !3310

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3314 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3325, metadata !659), !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3326, metadata !659), !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3327, metadata !659), !dbg !3335
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3328, metadata !659), !dbg !3336
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3329, metadata !659), !dbg !3337
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3338
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3338
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3331, metadata !659), !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %11 = load i32, i32* %8, align 8, !dbg !3341
  %12 = icmp ult i32 %11, 41, !dbg !3341
  br i1 %12, label %13, label %18, !dbg !3341

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3341
  %15 = sext i32 %11 to i64, !dbg !3341
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3341
  %17 = add i32 %11, 8, !dbg !3341
  store i32 %17, i32* %8, align 8, !dbg !3341
  br label %21, !dbg !3341

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3341
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3341
  store i8* %20, i8** %10, align 8, !dbg !3341
  br label %21, !dbg !3341

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3341
  %25 = load i8*, i8** %24, align 8, !dbg !3341
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3344
  store i8* %25, i8** %26, align 16, !dbg !3345, !tbaa !666
  %27 = icmp eq i8* %25, null, !dbg !3346
  br i1 %27, label %30, label %28, !dbg !3347

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %29 = icmp ult i32 %22, 41, !dbg !3341
  br i1 %29, label %35, label %32, !dbg !3341

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3349
  ret void, !dbg !3349

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3341
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3341
  store i8* %34, i8** %10, align 8, !dbg !3341
  br label %40, !dbg !3341

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3341
  %37 = sext i32 %22 to i64, !dbg !3341
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3341
  %39 = add i32 %22, 8, !dbg !3341
  store i32 %39, i32* %8, align 8, !dbg !3341
  br label %40, !dbg !3341

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3341
  %44 = load i8*, i8** %43, align 8, !dbg !3341
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3344
  store i8* %44, i8** %45, align 8, !dbg !3345, !tbaa !666
  %46 = icmp eq i8* %44, null, !dbg !3346
  br i1 %46, label %30, label %47, !dbg !3347

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %48 = icmp ult i32 %41, 41, !dbg !3341
  br i1 %48, label %52, label %49, !dbg !3341

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3341
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3341
  store i8* %51, i8** %10, align 8, !dbg !3341
  br label %57, !dbg !3341

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3341
  %54 = sext i32 %41 to i64, !dbg !3341
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3341
  %56 = add i32 %41, 8, !dbg !3341
  store i32 %56, i32* %8, align 8, !dbg !3341
  br label %57, !dbg !3341

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3341
  %61 = load i8*, i8** %60, align 8, !dbg !3341
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3344
  store i8* %61, i8** %62, align 16, !dbg !3345, !tbaa !666
  %63 = icmp eq i8* %61, null, !dbg !3346
  br i1 %63, label %30, label %64, !dbg !3347

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %65 = icmp ult i32 %58, 41, !dbg !3341
  br i1 %65, label %69, label %66, !dbg !3341

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3341
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3341
  store i8* %68, i8** %10, align 8, !dbg !3341
  br label %74, !dbg !3341

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3341
  %71 = sext i32 %58 to i64, !dbg !3341
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3341
  %73 = add i32 %58, 8, !dbg !3341
  store i32 %73, i32* %8, align 8, !dbg !3341
  br label %74, !dbg !3341

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3341
  %78 = load i8*, i8** %77, align 8, !dbg !3341
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3344
  store i8* %78, i8** %79, align 8, !dbg !3345, !tbaa !666
  %80 = icmp eq i8* %78, null, !dbg !3346
  br i1 %80, label %30, label %81, !dbg !3347

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %82 = icmp ult i32 %75, 41, !dbg !3341
  br i1 %82, label %86, label %83, !dbg !3341

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3341
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3341
  store i8* %85, i8** %10, align 8, !dbg !3341
  br label %91, !dbg !3341

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3341
  %88 = sext i32 %75 to i64, !dbg !3341
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3341
  %90 = add i32 %75, 8, !dbg !3341
  store i32 %90, i32* %8, align 8, !dbg !3341
  br label %91, !dbg !3341

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3341
  %95 = load i8*, i8** %94, align 8, !dbg !3341
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3344
  store i8* %95, i8** %96, align 16, !dbg !3345, !tbaa !666
  %97 = icmp eq i8* %95, null, !dbg !3346
  br i1 %97, label %30, label %98, !dbg !3347

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %99 = icmp ult i32 %92, 41, !dbg !3341
  br i1 %99, label %103, label %100, !dbg !3341

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3341
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3341
  store i8* %102, i8** %10, align 8, !dbg !3341
  br label %108, !dbg !3341

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3341
  %105 = sext i32 %92 to i64, !dbg !3341
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3341
  %107 = add i32 %92, 8, !dbg !3341
  store i32 %107, i32* %8, align 8, !dbg !3341
  br label %108, !dbg !3341

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3341
  %111 = load i8*, i8** %110, align 8, !dbg !3341
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3344
  store i8* %111, i8** %112, align 8, !dbg !3345, !tbaa !666
  %113 = icmp eq i8* %111, null, !dbg !3346
  br i1 %113, label %30, label %114, !dbg !3347

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %115 = load i8*, i8** %10, align 8, !dbg !3341
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3341
  store i8* %116, i8** %10, align 8, !dbg !3341
  %117 = bitcast i8* %115 to i8**, !dbg !3341
  %118 = load i8*, i8** %117, align 8, !dbg !3341
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3344
  store i8* %118, i8** %119, align 16, !dbg !3345, !tbaa !666
  %120 = icmp eq i8* %118, null, !dbg !3346
  br i1 %120, label %30, label %121, !dbg !3347

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %122 = load i8*, i8** %10, align 8, !dbg !3341
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3341
  store i8* %123, i8** %10, align 8, !dbg !3341
  %124 = bitcast i8* %122 to i8**, !dbg !3341
  %125 = load i8*, i8** %124, align 8, !dbg !3341
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3344
  store i8* %125, i8** %126, align 8, !dbg !3345, !tbaa !666
  %127 = icmp eq i8* %125, null, !dbg !3346
  br i1 %127, label %30, label %128, !dbg !3347

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %129 = load i8*, i8** %10, align 8, !dbg !3341
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3341
  store i8* %130, i8** %10, align 8, !dbg !3341
  %131 = bitcast i8* %129 to i8**, !dbg !3341
  %132 = load i8*, i8** %131, align 8, !dbg !3341
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3344
  store i8* %132, i8** %133, align 16, !dbg !3345, !tbaa !666
  %134 = icmp eq i8* %132, null, !dbg !3346
  br i1 %134, label %30, label %135, !dbg !3347

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !659), !dbg !3340
  %136 = load i8*, i8** %10, align 8, !dbg !3341
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3341
  store i8* %137, i8** %10, align 8, !dbg !3341
  %138 = bitcast i8* %136 to i8**, !dbg !3341
  %139 = load i8*, i8** %138, align 8, !dbg !3341
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3344
  store i8* %139, i8** %140, align 8, !dbg !3345, !tbaa !666
  %141 = icmp eq i8* %139, null, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3330, metadata !659), !dbg !3340
  %142 = select i1 %141, i64 9, i64 10, !dbg !3347
  br label %30, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3350 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3354, metadata !659), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3355, metadata !659), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3356, metadata !659), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3357, metadata !659), !dbg !3368
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3369
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3358, metadata !659), !dbg !3370
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3371
  call void @llvm.va_start(i8* nonnull %6), !dbg !3371
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3372
  call void @llvm.va_end(i8* nonnull %6), !dbg !3373
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3374
  ret void, !dbg !3374
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3375 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.98, i64 0, i64 0), i32 5) #12, !dbg !3376
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.99, i64 0, i64 0)) #12, !dbg !3376
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #12, !dbg !3377
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.102, i64 0, i64 0)) #12, !dbg !3377
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.103, i64 0, i64 0), i32 5) #12, !dbg !3378
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3378, !tbaa !666
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3378
  ret void, !dbg !3379
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #15 !dbg !3380 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3384, metadata !659), !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3385, metadata !659), !dbg !3387
  %3 = udiv i64 9223372036854775807, %1, !dbg !3388
  %4 = icmp ult i64 %3, %0, !dbg !3388
  br i1 %4, label %5, label %6, !dbg !3390

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3391
  unreachable, !dbg !3391

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3393, metadata !659) #12, !dbg !3400
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3399, metadata !659) #12, !dbg !3403
  %9 = icmp eq i8* %8, null, !dbg !3404
  %10 = icmp ne i64 %7, 0, !dbg !3406
  %11 = and i1 %10, %9, !dbg !3407
  br i1 %11, label %12, label %13, !dbg !3407

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3408
  unreachable, !dbg !3408

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3409
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3394 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3393, metadata !659), !dbg !3410
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !659), !dbg !3412
  %3 = icmp eq i8* %2, null, !dbg !3413
  %4 = icmp ne i64 %0, 0, !dbg !3414
  %5 = and i1 %4, %3, !dbg !3415
  br i1 %5, label %6, label %7, !dbg !3415

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3416
  unreachable, !dbg !3416

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3417
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #15 !dbg !3418 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3422, metadata !659), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3423, metadata !659), !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3424, metadata !659), !dbg !3427
  %4 = udiv i64 9223372036854775807, %2, !dbg !3428
  %5 = icmp ult i64 %4, %1, !dbg !3428
  br i1 %5, label %6, label %7, !dbg !3430

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3431
  unreachable, !dbg !3431

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !659) #12, !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3438, metadata !659) #12, !dbg !3441
  %9 = icmp eq i64 %8, 0, !dbg !3442
  %10 = icmp ne i8* %0, null, !dbg !3444
  %11 = and i1 %10, %9, !dbg !3445
  br i1 %11, label %12, label %13, !dbg !3445

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3446
  br label %19, !dbg !3448

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3449
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3433, metadata !659) #12, !dbg !3439
  %15 = icmp eq i8* %14, null, !dbg !3450
  %16 = icmp ne i64 %8, 0, !dbg !3452
  %17 = and i1 %16, %15, !dbg !3453
  br i1 %17, label %18, label %19, !dbg !3453

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3454
  unreachable, !dbg !3454

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3455
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !659), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3438, metadata !659), !dbg !3457
  %3 = icmp eq i64 %1, 0, !dbg !3458
  %4 = icmp ne i8* %0, null, !dbg !3459
  %5 = and i1 %4, %3, !dbg !3460
  br i1 %5, label %6, label %7, !dbg !3460

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3461
  br label %13, !dbg !3462

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3433, metadata !659), !dbg !3456
  %9 = icmp eq i8* %8, null, !dbg !3464
  %10 = icmp ne i64 %1, 0, !dbg !3465
  %11 = and i1 %10, %9, !dbg !3466
  br i1 %11, label %12, label %13, !dbg !3466

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3467
  unreachable, !dbg !3467

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3468
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #15 !dbg !619 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !624, metadata !659), !dbg !3469
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !625, metadata !659), !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !626, metadata !659), !dbg !3471
  %4 = load i64, i64* %1, align 8, !dbg !3472, !tbaa !2509
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !627, metadata !659), !dbg !3473
  %5 = icmp eq i8* %0, null, !dbg !3474
  br i1 %5, label %6, label %13, !dbg !3476

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3477
  br i1 %7, label %8, label %17, !dbg !3480

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !627, metadata !659), !dbg !3473
  %10 = icmp ugt i64 %2, 128, !dbg !3483
  %11 = zext i1 %10 to i64, !dbg !3483
  %12 = add nuw nsw i64 %9, %11, !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !627, metadata !659), !dbg !3473
  br label %17, !dbg !3485

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3486
  %15 = icmp ugt i64 %14, %4, !dbg !3489
  br i1 %15, label %20, label %16, !dbg !3490

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3491
  unreachable, !dbg !3491

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !627, metadata !659), !dbg !3473
  store i64 %18, i64* %1, align 8, !dbg !3492, !tbaa !2509
  %19 = mul i64 %18, %2, !dbg !3493
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !659) #12, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3438, metadata !659) #12, !dbg !3496
  br label %27, !dbg !3497

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3498
  %22 = add i64 %4, 1, !dbg !3499
  %23 = add i64 %22, %21, !dbg !3500
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !627, metadata !659), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !627, metadata !659), !dbg !3473
  store i64 %23, i64* %1, align 8, !dbg !3492, !tbaa !2509
  %24 = mul i64 %23, %2, !dbg !3493
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !659) #12, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3438, metadata !659) #12, !dbg !3496
  %25 = icmp eq i64 %24, 0, !dbg !3501
  br i1 %25, label %26, label %27, !dbg !3497

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3502
  br label %34, !dbg !3503

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3433, metadata !659) #12, !dbg !3494
  %30 = icmp eq i8* %29, null, !dbg !3505
  %31 = icmp ne i64 %28, 0, !dbg !3506
  %32 = and i1 %31, %30, !dbg !3507
  br i1 %32, label %33, label %34, !dbg !3507

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !3508
  unreachable, !dbg !3508

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3509
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #15 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3512, metadata !659), !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3393, metadata !659) #12, !dbg !3514
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !659) #12, !dbg !3517
  %3 = icmp eq i8* %2, null, !dbg !3518
  %4 = icmp ne i64 %0, 0, !dbg !3519
  %5 = and i1 %4, %3, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3520

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3521
  unreachable, !dbg !3521

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3522
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3523 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3527, metadata !659), !dbg !3529
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3528, metadata !659), !dbg !3530
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !624, metadata !659) #12, !dbg !3531
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !625, metadata !659) #12, !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !626, metadata !659) #12, !dbg !3534
  %3 = load i64, i64* %1, align 8, !dbg !3535, !tbaa !2509
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !627, metadata !659) #12, !dbg !3536
  %4 = icmp eq i8* %0, null, !dbg !3537
  br i1 %4, label %5, label %8, !dbg !3538

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !627, metadata !659) #12, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !627, metadata !659) #12, !dbg !3536
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !627, metadata !659) #12, !dbg !3536
  store i64 %7, i64* %1, align 8, !dbg !3541, !tbaa !2509
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !659) #12, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3438, metadata !659) #12, !dbg !3544
  br label %17, !dbg !3545

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3546
  br i1 %9, label %11, label %10, !dbg !3547

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !3548
  unreachable, !dbg !3548

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3549
  %13 = add i64 %3, 1, !dbg !3550
  %14 = add i64 %13, %12, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !627, metadata !659) #12, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !627, metadata !659) #12, !dbg !3536
  store i64 %14, i64* %1, align 8, !dbg !3541, !tbaa !2509
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !659) #12, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3438, metadata !659) #12, !dbg !3544
  %15 = icmp eq i64 %14, 0, !dbg !3552
  br i1 %15, label %16, label %17, !dbg !3545

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3553
  br label %24, !dbg !3554

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3433, metadata !659) #12, !dbg !3542
  %20 = icmp eq i8* %19, null, !dbg !3556
  %21 = icmp ne i64 %18, 0, !dbg !3557
  %22 = and i1 %21, %20, !dbg !3558
  br i1 %22, label %23, label %24, !dbg !3558

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !3559
  unreachable, !dbg !3559

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3563, metadata !659), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3393, metadata !659) #12, !dbg !3565
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !659) #12, !dbg !3568
  %3 = icmp eq i8* %2, null, !dbg !3569
  %4 = icmp ne i64 %0, 0, !dbg !3570
  %5 = and i1 %4, %3, !dbg !3571
  br i1 %5, label %6, label %7, !dbg !3571

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3572
  unreachable, !dbg !3572

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3573
  ret i8* %2, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3575 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3577, metadata !659), !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3578, metadata !659), !dbg !3581
  %3 = udiv i64 9223372036854775807, %1, !dbg !3582
  %4 = icmp ult i64 %3, %0, !dbg !3582
  br i1 %4, label %8, label %5, !dbg !3584

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3585
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3579, metadata !659), !dbg !3586
  %7 = icmp eq i8* %6, null, !dbg !3587
  br i1 %7, label %8, label %9, !dbg !3588

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3589
  unreachable, !dbg !3589

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3591 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3597, metadata !659), !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3598, metadata !659), !dbg !3600
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3393, metadata !659) #12, !dbg !3601
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3399, metadata !659) #12, !dbg !3604
  %4 = icmp eq i8* %3, null, !dbg !3605
  %5 = icmp ne i64 %1, 0, !dbg !3606
  %6 = and i1 %5, %4, !dbg !3607
  br i1 %6, label %7, label %8, !dbg !3607

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3608
  unreachable, !dbg !3608

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3609
  ret i8* %3, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3611 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3613, metadata !659), !dbg !3614
  %2 = tail call i64 @strlen(i8* %0) #11, !dbg !3615
  %3 = add i64 %2, 1, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3597, metadata !659) #12, !dbg !3617
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3598, metadata !659) #12, !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3393, metadata !659) #12, !dbg !3620
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3622
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3399, metadata !659) #12, !dbg !3623
  %5 = icmp eq i8* %4, null, !dbg !3624
  %6 = icmp ne i64 %3, 0, !dbg !3625
  %7 = and i1 %6, %5, !dbg !3626
  br i1 %7, label %8, label %9, !dbg !3626

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3627
  unreachable, !dbg !3627

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3628
  ret i8* %4, !dbg !3629
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3630 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3632, !tbaa !752
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #12, !dbg !3633
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #12, !dbg !3634
  tail call void @abort() #16, !dbg !3635
  unreachable, !dbg !3635
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #6 !dbg !3636 {
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3643, metadata !659), !dbg !3650
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3644, metadata !659), !dbg !3651
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !3645, metadata !659), !dbg !3652
  tail call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, i64 0, metadata !3646, metadata !659), !dbg !3653
  %6 = bitcast i8** %5 to i8*, !dbg !3654
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3654
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3649, metadata !659), !dbg !3655
  %7 = tail call i32* @__errno_location() #18, !dbg !3656
  store i32 0, i32* %7, align 4, !dbg !3657, !tbaa !752
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3648, metadata !659), !dbg !3658
  %8 = call double %3(i8* %0, i8** nonnull %5) #12, !dbg !3659
  call void @llvm.dbg.value(metadata double %8, i64 0, metadata !3647, metadata !659), !dbg !3660
  %9 = load i8*, i8** %5, align 8, !dbg !3661, !tbaa !666
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3648, metadata !659), !dbg !3658
  %10 = icmp eq i8* %9, %0, !dbg !3663
  %11 = ptrtoint i8* %9 to i64, !dbg !3664
  br i1 %10, label %22, label %12, !dbg !3664

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3665
  br i1 %13, label %14, label %17, !dbg !3666

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3667, !tbaa !898
  %16 = icmp eq i8 %15, 0, !dbg !3668
  br i1 %16, label %17, label %27, !dbg !3669

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !3670
  br i1 %18, label %19, label %22, !dbg !3673

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3674, !tbaa !752
  %21 = icmp ne i32 %20, 34, !dbg !3675
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3649, metadata !659), !dbg !3655
  br label %22, !dbg !3676

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3677
  br i1 %24, label %27, label %25, !dbg !3679

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3648, metadata !3680), !dbg !3658
  %26 = bitcast i8** %1 to i64*, !dbg !3681
  store i64 %11, i64* %26, align 8, !dbg !3681, !tbaa !666
  br label %27, !dbg !3682

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !3683, !tbaa !763
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3684
  ret i1 %28, !dbg !3685
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3686 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3689, metadata !659), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3690, metadata !659), !dbg !3696
  %3 = icmp eq i64 %0, 0, !dbg !3697
  %4 = icmp eq i64 %1, 0, !dbg !3698
  %5 = or i1 %3, %4, !dbg !3699
  br i1 %5, label %12, label %6, !dbg !3699

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3692, metadata !659), !dbg !3701
  %8 = udiv i64 %7, %1, !dbg !3702
  %9 = icmp eq i64 %8, %0, !dbg !3704
  br i1 %9, label %12, label %10, !dbg !3705

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !3706
  store i32 12, i32* %11, align 4, !dbg !3708, !tbaa !752
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3689, metadata !659), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3690, metadata !659), !dbg !3696
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3691, metadata !659), !dbg !3710
  br label %16, !dbg !3711

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3712
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3713 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3730, metadata !659), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3731, metadata !659), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3732, metadata !659), !dbg !3741
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3733, metadata !659), !dbg !3742
  %6 = bitcast i32* %5 to i8*, !dbg !3743
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3743
  %7 = icmp eq i32* %0, null, !dbg !3744
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3730, metadata !659), !dbg !3739
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3746
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3730, metadata !659), !dbg !3739
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3734, metadata !659), !dbg !3748
  %10 = icmp ugt i64 %9, -3, !dbg !3749
  %11 = icmp ne i64 %2, 0, !dbg !3750
  %12 = and i1 %11, %10, !dbg !3751
  br i1 %12, label %13, label %18, !dbg !3751

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3752
  br i1 %14, label %18, label %15, !dbg !3753

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3754, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3736, metadata !659), !dbg !3755
  %17 = zext i8 %16 to i32, !dbg !3756
  store i32 %17, i32* %8, align 4, !dbg !3757, !tbaa !752
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3758
  ret i64 %19, !dbg !3758
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #6 !dbg !3759 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3763, metadata !659), !dbg !3765
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3764, metadata !659), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3767, metadata !659) #12, !dbg !3788
  %5 = load i8, i8* %0, align 1, !dbg !3790, !tbaa !898
  %6 = sext i8 %5 to i32, !dbg !3790
  %7 = add nsw i32 %6, -48, !dbg !3790
  %8 = icmp ult i32 %7, 10, !dbg !3790
  br i1 %8, label %10, label %9, !dbg !3791

; <label>:9:                                      ; preds = %2
  br label %21, !dbg !3792

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !3796
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !3796
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3772, metadata !659) #12, !dbg !3797
  %12 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #12, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !3775, metadata !659) #12, !dbg !3799
  %13 = load i8*, i8** %3, align 8, !dbg !3800, !tbaa !666
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3772, metadata !659) #12, !dbg !3797
  %14 = load i8, i8* %13, align 1, !dbg !3802, !tbaa !898
  %15 = icmp ne i8 %14, 0, !dbg !3802
  %16 = icmp sgt i64 %12, 64, !dbg !3803
  %17 = trunc i64 %12 to i32, !dbg !3804
  %18 = or i1 %16, %15, !dbg !3805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !3806
  br i1 %18, label %74, label %75

; <label>:19:                                     ; preds = %21
  %20 = icmp ult i64 %26, 35, !dbg !3807
  br i1 %20, label %21, label %30, !dbg !3808, !llvm.loop !3809

; <label>:21:                                     ; preds = %9, %19
  %22 = phi i64 [ %26, %19 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3776, metadata !659) #12, !dbg !3812
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !3792
  %24 = tail call i32 @strcmp(i8* %23, i8* %0) #11, !dbg !3813
  %25 = icmp eq i32 %24, 0, !dbg !3814
  %26 = add nuw nsw i64 %22, 1, !dbg !3815
  br i1 %25, label %27, label %19, !dbg !3816

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 0, !dbg !3817
  %29 = load i32, i32* %28, align 4, !dbg !3817, !tbaa !3818
  br label %75

; <label>:30:                                     ; preds = %19
  %31 = bitcast i8** %4 to i8*, !dbg !3820
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3820
  %32 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !3821
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !3780, metadata !659) #12, !dbg !3822
  %33 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !3823
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3781, metadata !659) #12, !dbg !3824
  %34 = icmp sgt i32 %32, 0, !dbg !3825
  br i1 %34, label %35, label %50, !dbg !3826

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), i64 5) #11, !dbg !3827
  %37 = icmp eq i32 %36, 0, !dbg !3828
  br i1 %37, label %38, label %50, !dbg !3829

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3830
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3778, metadata !659) #12, !dbg !3831
  %40 = call i64 @strtol(i8* %39, i8** nonnull %4, i32 10) #12, !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3782, metadata !659) #12, !dbg !3833
  %41 = load i8*, i8** %4, align 8, !dbg !3834, !tbaa !666
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !3778, metadata !659) #12, !dbg !3831
  %42 = load i8, i8* %41, align 1, !dbg !3836, !tbaa !898
  %43 = icmp eq i8 %42, 0, !dbg !3836
  %44 = icmp sgt i64 %40, -1, !dbg !3837
  %45 = and i1 %44, %43, !dbg !3838
  br i1 %45, label %46, label %67, !dbg !3838

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3839
  %48 = sext i32 %47 to i64, !dbg !3840
  %49 = icmp sgt i64 %40, %48, !dbg !3841
  br i1 %49, label %67, label %68, !dbg !3842

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3843
  br i1 %51, label %52, label %67, !dbg !3844

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i64 5) #11, !dbg !3845
  %54 = icmp eq i32 %53, 0, !dbg !3846
  br i1 %54, label %55, label %67, !dbg !3847

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3848
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3778, metadata !659) #12, !dbg !3831
  %57 = call i64 @strtol(i8* %56, i8** nonnull %4, i32 10) #12, !dbg !3849
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !3785, metadata !659) #12, !dbg !3850
  %58 = load i8*, i8** %4, align 8, !dbg !3851, !tbaa !666
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3778, metadata !659) #12, !dbg !3831
  %59 = load i8, i8* %58, align 1, !dbg !3853, !tbaa !898
  %60 = icmp eq i8 %59, 0, !dbg !3853
  br i1 %60, label %61, label %67, !dbg !3854

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3855
  %63 = sext i32 %62 to i64, !dbg !3856
  %64 = icmp sge i64 %57, %63, !dbg !3857
  %65 = icmp slt i64 %57, 1, !dbg !3858
  %66 = and i1 %64, %65, !dbg !3859
  br i1 %66, label %68, label %67, !dbg !3859

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3860
  br label %74

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i32 [ %33, %61 ], [ %32, %46 ]
  %70 = phi i64 [ %57, %61 ], [ %40, %46 ]
  %71 = zext i32 %69 to i64
  %72 = add i64 %70, %71
  %73 = trunc i64 %72 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !3860
  br label %75

; <label>:74:                                     ; preds = %67, %10
  br label %75, !dbg !3861

; <label>:75:                                     ; preds = %10, %27, %68, %74
  %76 = phi i32 [ -1, %74 ], [ %17, %10 ], [ %73, %68 ], [ %29, %27 ]
  store i32 %76, i32* %1, align 4, !dbg !3862, !tbaa !752
  %77 = ashr i32 %76, 31, !dbg !3863
  ret i32 %77, !dbg !3864
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @sig2str(i32, i8*) local_unnamed_addr #6 !dbg !3865 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3869, metadata !659), !dbg !3877
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3870, metadata !659), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3871, metadata !659), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3871, metadata !659), !dbg !3879
  br label %9, !dbg !3880

; <label>:3:                                      ; preds = %9
  %4 = add nsw i32 %10, 1, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3871, metadata !659), !dbg !3879
  %5 = zext i32 %4 to i64, !dbg !3884
  %6 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %5, i32 0, !dbg !3885
  %7 = load i32, i32* %6, align 4, !dbg !3885, !tbaa !3818
  %8 = icmp eq i32 %7, %0, !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  br i1 %8, label %15, label %43, !dbg !3888

; <label>:9:                                      ; preds = %62, %2
  %10 = phi i32 [ 0, %2 ], [ %61, %62 ]
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3871, metadata !659), !dbg !3879
  %11 = zext i32 %10 to i64, !dbg !3884
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0, !dbg !3885
  %13 = load i32, i32* %12, align 4, !dbg !3885, !tbaa !3818
  %14 = icmp eq i32 %13, %0, !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  br i1 %14, label %15, label %3, !dbg !3888

; <label>:15:                                     ; preds = %55, %49, %43, %3, %9
  %16 = phi i64 [ %11, %9 ], [ %5, %3 ], [ %45, %43 ], [ %51, %49 ], [ %57, %55 ]
  %17 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %16, i32 1, i64 0, !dbg !3889
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3891, metadata !659) #12, !dbg !3900
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !3899, metadata !659) #12, !dbg !3900
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false, i1 true) #12, !dbg !3902
  %19 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %17, i64 %18) #12, !dbg !3903
  br label %41, !dbg !3904

; <label>:20:                                     ; preds = %62
  %21 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !3905
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3872, metadata !659), !dbg !3906
  %22 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3874, metadata !659), !dbg !3908
  %23 = icmp sgt i32 %21, %0, !dbg !3909
  %24 = icmp slt i32 %22, %0, !dbg !3911
  %25 = or i1 %23, %24, !dbg !3912
  br i1 %25, label %41, label %26, !dbg !3912

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i32 %22, %21, !dbg !3913
  %28 = sdiv i32 %27, 2, !dbg !3915
  %29 = add nsw i32 %28, %21, !dbg !3916
  %30 = icmp slt i32 %29, %0, !dbg !3917
  br i1 %30, label %32, label %31, !dbg !3918

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !3919
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3875, metadata !659), !dbg !3921
  br label %33, !dbg !3922

; <label>:32:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !3923
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3875, metadata !659), !dbg !3921
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = phi i32 [ %21, %31 ], [ %22, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !3875, metadata !659), !dbg !3921
  %35 = sub nsw i32 %0, %34, !dbg !3925
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !3876, metadata !659), !dbg !3926
  %36 = icmp eq i32 %35, 0, !dbg !3927
  br i1 %36, label %41, label %37, !dbg !3929

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3930
  %39 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false, i1 true), !dbg !3930
  %40 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %38, i32 1, i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.130, i64 0, i64 0), i32 %35) #12, !dbg !3930
  br label %41, !dbg !3930

; <label>:41:                                     ; preds = %20, %33, %37, %15
  %42 = phi i32 [ 0, %15 ], [ -1, %20 ], [ 0, %33 ], [ 0, %37 ]
  ret i32 %42, !dbg !3931

; <label>:43:                                     ; preds = %3
  %44 = add nsw i32 %10, 2, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3871, metadata !659), !dbg !3879
  %45 = zext i32 %44 to i64, !dbg !3884
  %46 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %45, i32 0, !dbg !3885
  %47 = load i32, i32* %46, align 4, !dbg !3885, !tbaa !3818
  %48 = icmp eq i32 %47, %0, !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  br i1 %48, label %15, label %49, !dbg !3888

; <label>:49:                                     ; preds = %43
  %50 = add nsw i32 %10, 3, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3871, metadata !659), !dbg !3879
  %51 = zext i32 %50 to i64, !dbg !3884
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !3885
  %53 = load i32, i32* %52, align 4, !dbg !3885, !tbaa !3818
  %54 = icmp eq i32 %53, %0, !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  br i1 %54, label %15, label %55, !dbg !3888

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %10, 4, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3871, metadata !659), !dbg !3879
  %57 = zext i32 %56 to i64, !dbg !3884
  %58 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %57, i32 0, !dbg !3885
  %59 = load i32, i32* %58, align 4, !dbg !3885, !tbaa !3818
  %60 = icmp eq i32 %59, %0, !dbg !3887
  %61 = add nsw i32 %10, 5, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  br i1 %60, label %15, label %62, !dbg !3888

; <label>:62:                                     ; preds = %55
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3871, metadata !659), !dbg !3879
  %63 = icmp ult i32 %61, 35, !dbg !3932
  br i1 %63, label %9, label %20, !dbg !3880, !llvm.loop !3933
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3935 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3980, metadata !659), !dbg !3985
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3986
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3987, metadata !659), !dbg !3991
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3993
  %4 = load i32, i32* %3, align 8, !dbg !3993, !tbaa !3994
  %5 = and i32 %4, 32, !dbg !3993
  %6 = icmp eq i32 %5, 0, !dbg !3996
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3997
  %8 = icmp ne i32 %7, 0, !dbg !3998
  br i1 %6, label %9, label %19, !dbg !3999

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4001
  %11 = xor i1 %8, true, !dbg !4002
  %12 = or i1 %10, %11, !dbg !4002
  %13 = sext i1 %8 to i32, !dbg !4002
  br i1 %12, label %22, label %14, !dbg !4002

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4003
  %16 = load i32, i32* %15, align 4, !dbg !4003, !tbaa !752
  %17 = icmp ne i32 %16, 9, !dbg !4004
  %18 = sext i1 %17 to i32, !dbg !4005
  br label %22, !dbg !4005

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4006

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4008
  store i32 0, i32* %21, align 4, !dbg !4010, !tbaa !752
  br label %22, !dbg !4008

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4011
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4012 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4017, metadata !659), !dbg !4020
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4018, metadata !659), !dbg !4021
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4019, metadata !659), !dbg !4023
  %3 = icmp eq i8* %2, null, !dbg !4024
  br i1 %3, label %11, label %4, !dbg !4026

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0)) #11, !dbg !4027
  %6 = icmp eq i32 %5, 0, !dbg !4032
  br i1 %6, label %10, label %7, !dbg !4033

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0)) #11, !dbg !4034
  %9 = icmp eq i32 %8, 0, !dbg !4035
  br i1 %9, label %10, label %11, !dbg !4036

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4018, metadata !659), !dbg !4021
  br label %11, !dbg !4037

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4038
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4039 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4045, metadata !659), !dbg !4119
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4112, metadata !659), !dbg !4122
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4123
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4043, metadata !659), !dbg !4124
  %4 = icmp eq i8* %3, null, !dbg !4125
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %3, !dbg !4127
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4043, metadata !659), !dbg !4124
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4128, !tbaa !666
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4059, metadata !659) #12, !dbg !4129
  %7 = icmp eq i8* %6, null, !dbg !4130
  br i1 %7, label %8, label %123, !dbg !4131

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.140, i64 0, i64 0)) #12, !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4060, metadata !659) #12, !dbg !4133
  %10 = icmp eq i8* %9, null, !dbg !4134
  br i1 %10, label %14, label %11, !dbg !4136

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4137, !tbaa !898
  %13 = icmp eq i8 %12, 0, !dbg !4138
  br i1 %13, label %14, label %15, !dbg !4139

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4140

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.141, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4060, metadata !659) #12, !dbg !4133
  %17 = tail call i64 @strlen(i8* nonnull %16) #11, !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4063, metadata !659) #12, !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4065, metadata !659) #12, !dbg !4143
  %18 = icmp eq i64 %17, 0, !dbg !4144
  br i1 %18, label %24, label %19, !dbg !4145

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4146
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4146
  %22 = load i8, i8* %21, align 1, !dbg !4146, !tbaa !898
  %23 = icmp ne i8 %22, 47, !dbg !4146
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4147
  %27 = add i64 %17, 14, !dbg !4148
  %28 = add i64 %27, %26, !dbg !4149
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4150
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4062, metadata !659) #12, !dbg !4151
  %30 = icmp eq i8* %29, null, !dbg !4152
  br i1 %30, label %121, label %31, !dbg !4152

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4153
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4156

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4157, !tbaa !898
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4159
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4160
  br label %37, !dbg !4161

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4159
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4160
  br label %37, !dbg !4161

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4067, metadata !659) #12, !dbg !4163
  %39 = icmp slt i32 %38, 0, !dbg !4164
  br i1 %39, label %119, label %40, !dbg !4165

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i64 0, i64 0)) #12, !dbg !4166
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4068, metadata !659) #12, !dbg !4167
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4168
  br i1 %42, label %43, label %45, !dbg !4169

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4170
  br label %119, !dbg !4172

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4109, metadata !659) #12, !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4175

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4176

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4109, metadata !659) #12, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4176
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4177
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4178, metadata !659) #12, !dbg !4183
  %54 = load i8*, i8** %48, align 8, !dbg !4185, !tbaa !4186
  %55 = load i8*, i8** %49, align 8, !dbg !4185, !tbaa !4187
  %56 = icmp ult i8* %54, %55, !dbg !4185
  br i1 %56, label %59, label %57, !dbg !4185, !prof !4188

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4185
  br label %63, !dbg !4185

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4185
  store i8* %60, i8** %48, align 8, !dbg !4185, !tbaa !4186
  %61 = load i8, i8* %54, align 1, !dbg !4185, !tbaa !898
  %62 = zext i8 %61 to i32, !dbg !4185
  br label %63, !dbg !4185

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4185
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4111, metadata !659) #12, !dbg !4189
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4190, !llvm.loop !4191

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4196

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4178, metadata !659) #12, !dbg !4198
  %67 = load i8*, i8** %48, align 8, !dbg !4196, !tbaa !4186
  %68 = load i8*, i8** %49, align 8, !dbg !4196, !tbaa !4187
  %69 = icmp ult i8* %67, %68, !dbg !4196
  br i1 %69, label %72, label %70, !dbg !4196, !prof !4188

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4196
  br label %76, !dbg !4196

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4196
  store i8* %73, i8** %48, align 8, !dbg !4196, !tbaa !4186
  %74 = load i8, i8* %67, align 1, !dbg !4196, !tbaa !898
  %75 = zext i8 %74 to i32, !dbg !4196
  br label %76, !dbg !4196

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4196
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4111, metadata !659) #12, !dbg !4189
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4199, !llvm.loop !4200

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4203
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.144, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4204
  %81 = icmp slt i32 %80, 2, !dbg !4206
  br i1 %81, label %112, label %82, !dbg !4207

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #11, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4116, metadata !659) #12, !dbg !4209
  %84 = call i64 @strlen(i8* nonnull %47) #11, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4117, metadata !659) #12, !dbg !4211
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4118, metadata !659) #12, !dbg !4212
  %85 = icmp eq i64 %51, 0, !dbg !4213
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4215

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  %90 = add i64 %87, 2, !dbg !4216
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4109, metadata !659) #12, !dbg !4173
  br label %96, !dbg !4219

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  %94 = add i64 %93, 1, !dbg !4222
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4223
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4109, metadata !659) #12, !dbg !4173
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4109, metadata !659) #12, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  %99 = icmp eq i8* %98, null, !dbg !4224
  br i1 %99, label %100, label %102, !dbg !4226

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  call void @free(i8* %52) #12, !dbg !4227
  br label %112, !dbg !4229

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4230
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4230
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4231
  %104 = xor i64 %84, -1, !dbg !4232
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4232
  %106 = xor i64 %83, -1, !dbg !4233
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4234, metadata !659) #12, !dbg !4238
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4237, metadata !659) #12, !dbg !4238
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4240
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4234, metadata !659) #12, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4237, metadata !659) #12, !dbg !4242
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4244
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4245
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4109, metadata !659) #12, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4110, metadata !659) #12, !dbg !4174
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4230
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4230
  br label %50, !dbg !4246, !llvm.loop !4200

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4230
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4230
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4247
  %116 = icmp eq i64 %113, 0, !dbg !4248
  br i1 %116, label %119, label %117, !dbg !4250

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4251
  store i8 0, i8* %118, align 1, !dbg !4253, !tbaa !898
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4059, metadata !659) #12, !dbg !4129
  call void @free(i8* %29) #12, !dbg !4254
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4059, metadata !659) #12, !dbg !4129
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4255, !tbaa !666
  br label %123, !dbg !4256

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4059, metadata !659) #12, !dbg !4129
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4044, metadata !659), !dbg !4257
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4044, metadata !659), !dbg !4257
  %125 = load i8, i8* %124, align 1, !dbg !4258, !tbaa !898
  %126 = icmp eq i8 %125, 0, !dbg !4260
  br i1 %126, label %152, label %127, !dbg !4261

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4262

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4044, metadata !659), !dbg !4257
  %131 = call i32 @strcmp(i8* %5, i8* %130) #11, !dbg !4262
  %132 = icmp eq i32 %131, 0, !dbg !4264
  br i1 %132, label %139, label %133, !dbg !4265

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4266
  br i1 %134, label %135, label %143, !dbg !4267

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4268
  %137 = load i8, i8* %136, align 1, !dbg !4268, !tbaa !898
  %138 = icmp eq i8 %137, 0, !dbg !4269
  br i1 %138, label %139, label %143, !dbg !4270

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #11, !dbg !4271
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4273
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4274
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4043, metadata !659), !dbg !4124
  br label %152, !dbg !4275

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #11, !dbg !4276
  %145 = add i64 %144, 1, !dbg !4277
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4278
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4044, metadata !659), !dbg !4257
  %147 = call i64 @strlen(i8* %146) #11, !dbg !4279
  %148 = add i64 %147, 1, !dbg !4280
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4044, metadata !659), !dbg !4257
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4044, metadata !659), !dbg !4257
  %150 = load i8, i8* %149, align 1, !dbg !4258, !tbaa !898
  %151 = icmp eq i8 %150, 0, !dbg !4260
  br i1 %151, label %152, label %128, !dbg !4261, !llvm.loop !4282

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4043, metadata !659), !dbg !4124
  %154 = load i8, i8* %153, align 1, !dbg !4284, !tbaa !898
  %155 = icmp eq i8 %154, 0, !dbg !4286
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %153, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4043, metadata !659), !dbg !4124
  ret i8* %156, !dbg !4288
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4289 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4334, metadata !659), !dbg !4338
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4335, metadata !659), !dbg !4339
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4337, metadata !659), !dbg !4340
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4341
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4336, metadata !659), !dbg !4342
  %3 = icmp slt i32 %2, 0, !dbg !4343
  br i1 %3, label %4, label %6, !dbg !4345

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4346
  br label %24, !dbg !4347

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4348
  %8 = icmp eq i32 %7, 0, !dbg !4348
  br i1 %8, label %13, label %9, !dbg !4350

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4351
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4352
  %12 = icmp eq i64 %11, -1, !dbg !4353
  br i1 %12, label %16, label %13, !dbg !4354

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4355
  %15 = icmp eq i32 %14, 0, !dbg !4355
  br i1 %15, label %16, label %18, !dbg !4356

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4335, metadata !659), !dbg !4339
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4337, metadata !659), !dbg !4340
  br label %24, !dbg !4358

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4359
  %20 = load i32, i32* %19, align 4, !dbg !4359, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4335, metadata !659), !dbg !4339
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4335, metadata !659), !dbg !4339
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4337, metadata !659), !dbg !4340
  %22 = icmp eq i32 %20, 0, !dbg !4360
  br i1 %22, label %24, label %23, !dbg !4358

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4362, !tbaa !752
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4337, metadata !659), !dbg !4340
  br label %24, !dbg !4364

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4365
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4366 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4411, metadata !659), !dbg !4412
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4413
  br i1 %2, label %6, label %3, !dbg !4415

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4416
  %5 = icmp eq i32 %4, 0, !dbg !4416
  br i1 %5, label %6, label %8, !dbg !4417

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4418
  br label %17, !dbg !4419

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4420, metadata !659) #12, !dbg !4425
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4427
  %10 = load i32, i32* %9, align 8, !dbg !4427, !tbaa !3994
  %11 = and i32 %10, 256, !dbg !4429
  %12 = icmp eq i32 %11, 0, !dbg !4429
  br i1 %12, label %15, label %13, !dbg !4430

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4431
  br label %15, !dbg !4431

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4432
  br label %17, !dbg !4433

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4434
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4435 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4481, metadata !659), !dbg !4487
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4482, metadata !659), !dbg !4488
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4483, metadata !659), !dbg !4489
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4490
  %5 = load i8*, i8** %4, align 8, !dbg !4490, !tbaa !4187
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4491
  %7 = load i8*, i8** %6, align 8, !dbg !4491, !tbaa !4186
  %8 = icmp eq i8* %5, %7, !dbg !4492
  br i1 %8, label %9, label %28, !dbg !4493

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4494
  %11 = load i8*, i8** %10, align 8, !dbg !4494, !tbaa !4495
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4496
  %13 = load i8*, i8** %12, align 8, !dbg !4496, !tbaa !4497
  %14 = icmp eq i8* %11, %13, !dbg !4498
  br i1 %14, label %15, label %28, !dbg !4499

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4500
  %17 = load i8*, i8** %16, align 8, !dbg !4500, !tbaa !4501
  %18 = icmp eq i8* %17, null, !dbg !4502
  br i1 %18, label %19, label %28, !dbg !4503

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4504
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4505
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4484, metadata !659), !dbg !4506
  %22 = icmp eq i64 %21, -1, !dbg !4507
  br i1 %22, label %30, label %23, !dbg !4509

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4510
  %25 = load i32, i32* %24, align 8, !dbg !4511, !tbaa !3994
  %26 = and i32 %25, -17, !dbg !4511
  store i32 %26, i32* %24, align 8, !dbg !4511, !tbaa !3994
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4512
  store i64 %21, i64* %27, align 8, !dbg !4513, !tbaa !4514
  br label %30, !dbg !4515

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4516
  br label %30, !dbg !4517

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4518
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
attributes #8 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !591, !75, !81, !112, !594, !120, !127, !134, !606, !220, !614, !631, !633, !635, !637, !229, !640, !642, !244, !644, !646, !648}
!llvm.ident = !{!650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650}
!llvm.module.flags = !{!651, !652, !653, !654, !655}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 94, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !23)
!3 = !DIFile(filename: "src/timeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !{!13, !15, !16, !22}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !17, line: 68, baseType: !18)
!17 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !26, !32, !35, !38, !40, !0, !61}
!24 = !DIGlobalVariableExpression(var: !25)
!25 = distinct !DIGlobalVariable(name: "timed_out", scope: !2, file: !3, line: 80, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27)
!27 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !2, file: !3, line: 82, type: !28, isLocal: true, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !29, line: 98, baseType: !30)
!29 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !31, line: 142, baseType: !21)
!31 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DIGlobalVariableExpression(var: !33)
!33 = distinct !DIGlobalVariable(name: "kill_after", scope: !2, file: !3, line: 83, type: !34, isLocal: true, isDefinition: true)
!34 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "foreground", scope: !2, file: !3, line: 84, type: !37, isLocal: true, isDefinition: true)
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "preserve_status", scope: !2, file: !3, line: 85, type: !37, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41)
!41 = distinct !DIGlobalVariable(name: "infomap", scope: !42, file: !6, line: 632, type: !58, isLocal: true, isDefinition: true)
!42 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !43, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !47)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!47 = !{!48, !49, !50, !57}
!48 = !DILocalVariable(name: "program", arg: 1, scope: !42, file: !6, line: 630, type: !45)
!49 = !DILocalVariable(name: "node", scope: !42, file: !6, line: 642, type: !45)
!50 = !DILocalVariable(name: "map_prog", scope: !42, file: !6, line: 643, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !42, file: !6, line: 632, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !53, file: !6, line: 632, baseType: !45, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !53, file: !6, line: 632, baseType: !45, size: 64, offset: 64)
!57 = !DILocalVariable(name: "lc_messages", scope: !42, file: !6, line: 655, type: !45)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 896, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 7)
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "term_signal", scope: !2, file: !3, line: 81, type: !21, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1792, elements: !59)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !66, line: 50, size: 256, elements: !67)
!66 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !{!68, !69, !70, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 52, baseType: !45, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !65, file: !66, line: 55, baseType: !21, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !65, file: !66, line: 56, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !65, file: !66, line: 57, baseType: !21, size: 32, offset: 192)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "Version", scope: !75, file: !76, line: 2, type: !45, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !78)
!76 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{}
!78 = !{!73}
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !81, file: !108, line: 51, type: !109, isLocal: true, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !83, globals: !107)
!82 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !{!13, !84}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !85, line: 24, baseType: !86)
!85 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !87, line: 42, baseType: !88)
!87 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !87, line: 28, size: 1856, elements: !90)
!90 = !{!91, !97, !101, !104, !105}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !89, file: !87, line: 31, baseType: !92, size: 832)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 832, elements: !95)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !87, line: 31, flags: DIFlagFwdDecl)
!95 = !{!96}
!96 = !DISubrange(count: 13)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !89, file: !87, line: 34, baseType: !98, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !89, file: !87, line: 35, baseType: !102, size: 64, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !89, file: !87, line: 36, baseType: !102, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !89, file: !87, line: 39, baseType: !106, size: 832, offset: 1024)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 832, elements: !95)
!107 = !{!79}
!108 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "file_name", scope: !112, file: !117, line: 36, type: !45, isLocal: true, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !114)
!113 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!110, !115}
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !112, file: !117, line: 46, type: !37, isLocal: true, isDefinition: true)
!117 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "exit_failure", scope: !120, file: !123, line: 24, type: !124, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !122)
!121 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !{!118}
!123 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "program_name", scope: !127, file: !131, line: 33, type: !45, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !129, globals: !130)
!128 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !{!15, !13}
!130 = !{!125}
!131 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !134, file: !178, line: 77, type: !214, isLocal: false, isDefinition: true)
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !171, globals: !175)
!135 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !{!137, !151, !156}
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !138, line: 32, size: 32, elements: !139)
!138 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!140 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!141 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!142 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!143 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!144 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!145 = !DIEnumerator(name: "c_quoting_style", value: 5)
!146 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!147 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!148 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!149 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!150 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !138, line: 242, size: 32, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!154 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!155 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 46, size: 32, elements: !158)
!157 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!159 = !DIEnumerator(name: "_ISupper", value: 256)
!160 = !DIEnumerator(name: "_ISlower", value: 512)
!161 = !DIEnumerator(name: "_ISalpha", value: 1024)
!162 = !DIEnumerator(name: "_ISdigit", value: 2048)
!163 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!164 = !DIEnumerator(name: "_ISspace", value: 8192)
!165 = !DIEnumerator(name: "_ISprint", value: 16384)
!166 = !DIEnumerator(name: "_ISgraph", value: 32768)
!167 = !DIEnumerator(name: "_ISblank", value: 1)
!168 = !DIEnumerator(name: "_IScntrl", value: 2)
!169 = !DIEnumerator(name: "_ISpunct", value: 4)
!170 = !DIEnumerator(name: "_ISalnum", value: 8)
!171 = !{!21, !100, !172, !13}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 62, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!175 = !{!132, !176, !183, !196, !198, !203, !210, !212}
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !134, file: !178, line: 93, type: !179, isLocal: false, isDefinition: true)
!178 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 320, elements: !181)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!181 = !{!182}
!182 = !DISubrange(count: 10)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !134, file: !178, line: 1043, type: !185, isLocal: false, isDefinition: true)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !178, line: 57, size: 448, elements: !186)
!186 = !{!187, !188, !189, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !185, file: !178, line: 60, baseType: !137, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !178, line: 63, baseType: !21, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !185, file: !178, line: 67, baseType: !190, size: 256, offset: 64)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !192)
!191 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !185, file: !178, line: 70, baseType: !45, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !185, file: !178, line: 73, baseType: !45, size: 64, offset: 384)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !134, file: !178, line: 108, type: !185, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "slot0", scope: !134, file: !178, line: 834, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 256)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "slotvec", scope: !134, file: !178, line: 837, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !178, line: 826, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !178, line: 828, baseType: !172, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !178, line: 829, baseType: !13, size: 64, offset: 64)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "nslots", scope: !134, file: !178, line: 835, type: !21, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "slotvec0", scope: !134, file: !178, line: 836, type: !206, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 704, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!216 = !{!217}
!217 = !DISubrange(count: 11)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !220, file: !223, line: 26, type: !224, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !222)
!221 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !{!218}
!223 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 376, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 47)
!227 = !DIGlobalVariableExpression(var: !228)
!228 = distinct !DIGlobalVariable(name: "numname_table", scope: !229, file: !233, line: 41, type: !234, isLocal: true, isDefinition: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !231, globals: !232)
!230 = !DIFile(filename: "./lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!231 = !{!191}
!232 = !{!227}
!233 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 3360, elements: !240)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !233, line: 41, size: 96, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !235, file: !233, line: 41, baseType: !21, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !233, line: 41, baseType: !239, size: 64, offset: 32)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !192)
!240 = !{!241}
!241 = !DISubrange(count: 35)
!242 = !DIGlobalVariableExpression(var: !243)
!243 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !244, file: !589, line: 120, type: !590, isLocal: true, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !585, globals: !588)
!245 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !{!247}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !248, line: 41, size: 32, elements: !249)
!248 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!250 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!251 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!252 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!253 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!254 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!255 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!256 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!257 = !DIEnumerator(name: "DAY_1", value: 131079)
!258 = !DIEnumerator(name: "DAY_2", value: 131080)
!259 = !DIEnumerator(name: "DAY_3", value: 131081)
!260 = !DIEnumerator(name: "DAY_4", value: 131082)
!261 = !DIEnumerator(name: "DAY_5", value: 131083)
!262 = !DIEnumerator(name: "DAY_6", value: 131084)
!263 = !DIEnumerator(name: "DAY_7", value: 131085)
!264 = !DIEnumerator(name: "ABMON_1", value: 131086)
!265 = !DIEnumerator(name: "ABMON_2", value: 131087)
!266 = !DIEnumerator(name: "ABMON_3", value: 131088)
!267 = !DIEnumerator(name: "ABMON_4", value: 131089)
!268 = !DIEnumerator(name: "ABMON_5", value: 131090)
!269 = !DIEnumerator(name: "ABMON_6", value: 131091)
!270 = !DIEnumerator(name: "ABMON_7", value: 131092)
!271 = !DIEnumerator(name: "ABMON_8", value: 131093)
!272 = !DIEnumerator(name: "ABMON_9", value: 131094)
!273 = !DIEnumerator(name: "ABMON_10", value: 131095)
!274 = !DIEnumerator(name: "ABMON_11", value: 131096)
!275 = !DIEnumerator(name: "ABMON_12", value: 131097)
!276 = !DIEnumerator(name: "MON_1", value: 131098)
!277 = !DIEnumerator(name: "MON_2", value: 131099)
!278 = !DIEnumerator(name: "MON_3", value: 131100)
!279 = !DIEnumerator(name: "MON_4", value: 131101)
!280 = !DIEnumerator(name: "MON_5", value: 131102)
!281 = !DIEnumerator(name: "MON_6", value: 131103)
!282 = !DIEnumerator(name: "MON_7", value: 131104)
!283 = !DIEnumerator(name: "MON_8", value: 131105)
!284 = !DIEnumerator(name: "MON_9", value: 131106)
!285 = !DIEnumerator(name: "MON_10", value: 131107)
!286 = !DIEnumerator(name: "MON_11", value: 131108)
!287 = !DIEnumerator(name: "MON_12", value: 131109)
!288 = !DIEnumerator(name: "AM_STR", value: 131110)
!289 = !DIEnumerator(name: "PM_STR", value: 131111)
!290 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!291 = !DIEnumerator(name: "D_FMT", value: 131113)
!292 = !DIEnumerator(name: "T_FMT", value: 131114)
!293 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!294 = !DIEnumerator(name: "ERA", value: 131116)
!295 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!296 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!297 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!298 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!299 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!300 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!301 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!302 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!303 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!304 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!305 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!306 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!307 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!308 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!309 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!310 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!311 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!312 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!313 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!314 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!315 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!316 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!317 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!318 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!319 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!320 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!321 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!322 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!323 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!324 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!325 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!326 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!327 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!328 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!329 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!330 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!331 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!332 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!333 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!334 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!335 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!336 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!337 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!338 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!339 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!340 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!341 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!342 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!343 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!344 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!345 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!346 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!347 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!348 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!349 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!350 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!351 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!352 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!353 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!354 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!355 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!356 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!357 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!358 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!359 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!360 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!361 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!362 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!363 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!364 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!365 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!366 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!367 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!368 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!369 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!370 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!371 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!372 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!373 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!374 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!375 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!376 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!377 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!378 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!379 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!380 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!381 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!382 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!383 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!393 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!394 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!395 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!396 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!397 = !DIEnumerator(name: "CODESET", value: 14)
!398 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!399 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!400 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!401 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!453 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!454 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!469 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!470 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!471 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!472 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!473 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!474 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!475 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!476 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!477 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!478 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!479 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!480 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!481 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!482 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!483 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!484 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!485 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!486 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!487 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!488 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!489 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!490 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!491 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!508 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!509 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!512 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!513 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!514 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!515 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!516 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!517 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!518 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!519 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!520 = !DIEnumerator(name: "THOUSEP", value: 65537)
!521 = !DIEnumerator(name: "__GROUPING", value: 65538)
!522 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!523 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!524 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!525 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!526 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!527 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!528 = !DIEnumerator(name: "__YESSTR", value: 327682)
!529 = !DIEnumerator(name: "__NOSTR", value: 327683)
!530 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!531 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!532 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!533 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!534 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!535 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!537 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!542 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!543 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!544 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!552 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!553 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!554 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!555 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!556 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!557 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!558 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!559 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!560 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!561 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!562 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!563 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!564 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!565 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!566 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!583 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!584 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!585 = !{!15, !13, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!588 = !{!242}
!589 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !593)
!592 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!191, !22}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !596, retainedTypes: !601)
!595 = !DIFile(filename: "./lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!597}
!597 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !598, line: 35, size: 32, elements: !599)
!598 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!600}
!600 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !603, line: 7, baseType: !604)
!603 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !31, line: 148, baseType: !605)
!605 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !608, retainedTypes: !613)
!607 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !{!609}
!609 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !610, line: 41, size: 32, elements: !611)
!610 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!612}
!612 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!613 = !{!15}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !630)
!615 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!617}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !619, file: !618, line: 192, size: 32, elements: !628)
!618 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = distinct !DISubprogram(name: "x2nrealloc", scope: !618, file: !618, line: 180, type: !620, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !623)
!620 = !DISubroutineType(types: !621)
!621 = !{!15, !15, !622, !172}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(name: "p", arg: 1, scope: !619, file: !618, line: 180, type: !15)
!625 = !DILocalVariable(name: "pn", arg: 2, scope: !619, file: !618, line: 180, type: !622)
!626 = !DILocalVariable(name: "s", arg: 3, scope: !619, file: !618, line: 180, type: !172)
!627 = !DILocalVariable(name: "n", scope: !619, file: !618, line: 182, type: !172)
!628 = !{!629}
!629 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!630 = !{!172, !13, !15}
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!632 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !613)
!634 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !613)
!636 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !639)
!638 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = !{!172}
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!641 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!643 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!645 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !613)
!647 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !613)
!649 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!651 = !{i32 2, !"Dwarf Version", i32 4}
!652 = !{i32 2, !"Debug Info Version", i32 3}
!653 = !{i32 1, !"wchar_size", i32 4}
!654 = !{i32 7, !"PIC Level", i32 2}
!655 = !{i32 7, !"PIE Level", i32 2}
!656 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 218, type: !19, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !657)
!657 = !{!658}
!658 = !DILocalVariable(name: "status", arg: 1, scope: !656, file: !3, line: 218, type: !21)
!659 = !DIExpression()
!660 = !DILocation(line: 218, column: 12, scope: !656)
!661 = !DILocation(line: 220, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !3, line: 220, column: 7)
!663 = !DILocation(line: 220, column: 7, scope: !656)
!664 = !DILocation(line: 221, column: 5, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !3, line: 221, column: 5)
!666 = !{!667, !667, i64 0}
!667 = !{!"any pointer", !668, i64 0}
!668 = !{!"omnipotent char", !669, i64 0}
!669 = !{!"Simple C/C++ TBAA"}
!670 = !DILocation(line: 224, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !662, file: !3, line: 223, column: 5)
!672 = !DILocation(line: 228, column: 7, scope: !671)
!673 = !DILocation(line: 587, column: 3, scope: !674, inlinedAt: !677)
!674 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !675, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !77)
!675 = !DISubroutineType(types: !676)
!676 = !{null}
!677 = distinct !DILocation(line: 232, column: 7, scope: !671)
!678 = !DILocation(line: 234, column: 7, scope: !671)
!679 = !DILocation(line: 250, column: 7, scope: !671)
!680 = !DILocation(line: 251, column: 7, scope: !671)
!681 = !DILocation(line: 253, column: 7, scope: !671)
!682 = !DILocation(line: 258, column: 7, scope: !671)
!683 = !DILocation(line: 642, column: 15, scope: !42, inlinedAt: !684)
!684 = distinct !DILocation(line: 265, column: 7, scope: !671)
!685 = !DILocation(line: 651, column: 3, scope: !42, inlinedAt: !684)
!686 = !DILocation(line: 655, column: 29, scope: !42, inlinedAt: !684)
!687 = !DILocation(line: 655, column: 15, scope: !42, inlinedAt: !684)
!688 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !684)
!689 = distinct !DILexicalBlock(scope: !42, file: !6, line: 656, column: 7)
!690 = !DILocation(line: 656, column: 19, scope: !689, inlinedAt: !684)
!691 = !DILocation(line: 656, column: 22, scope: !689, inlinedAt: !684)
!692 = !DILocation(line: 656, column: 7, scope: !42, inlinedAt: !684)
!693 = !DILocation(line: 662, column: 7, scope: !694, inlinedAt: !684)
!694 = distinct !DILexicalBlock(scope: !689, file: !6, line: 657, column: 5)
!695 = !DILocation(line: 664, column: 5, scope: !694, inlinedAt: !684)
!696 = !DILocation(line: 665, column: 3, scope: !42, inlinedAt: !684)
!697 = !DILocation(line: 667, column: 3, scope: !42, inlinedAt: !684)
!698 = !DILocation(line: 267, column: 3, scope: !656)
!699 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 406, type: !700, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!21, !21, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!703 = !{!704, !705, !706, !707, !711, !712, !716, !718, !719, !730}
!704 = !DILocalVariable(name: "argc", arg: 1, scope: !699, file: !3, line: 406, type: !21)
!705 = !DILocalVariable(name: "argv", arg: 2, scope: !699, file: !3, line: 406, type: !702)
!706 = !DILocalVariable(name: "timeout", scope: !699, file: !3, line: 408, type: !34)
!707 = !DILocalVariable(name: "signame", scope: !699, file: !3, line: 409, type: !708)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 152, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 19)
!711 = !DILocalVariable(name: "c", scope: !699, file: !3, line: 410, type: !21)
!712 = !DILocalVariable(name: "exit_status", scope: !713, file: !3, line: 489, type: !21)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 481, column: 5)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 480, column: 12)
!715 = distinct !DILexicalBlock(scope: !699, file: !3, line: 475, column: 7)
!716 = !DILocalVariable(name: "wait_result", scope: !717, file: !3, line: 495, type: !28)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 494, column: 5)
!718 = !DILocalVariable(name: "status", scope: !717, file: !3, line: 496, type: !21)
!719 = !DILocalVariable(name: "cleanup_set", scope: !717, file: !3, line: 506, type: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !721, line: 7, baseType: !722)
!721 = !DIFile(filename: "/usr/include/bits/types/sigset_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !723, line: 8, baseType: !724)
!723 = !DIFile(filename: "/usr/include/bits/types/__sigset_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 5, size: 1024, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !724, file: !723, line: 7, baseType: !727, size: 1024)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 1024, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 16)
!730 = !DILocalVariable(name: "sig", scope: !731, file: !3, line: 524, type: !21)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 523, column: 13)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 522, column: 20)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 520, column: 15)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 519, column: 9)
!735 = distinct !DILexicalBlock(scope: !717, file: !3, line: 512, column: 11)
!736 = !DILocation(line: 406, column: 11, scope: !699)
!737 = !DILocation(line: 406, column: 24, scope: !699)
!738 = !DILocation(line: 409, column: 3, scope: !699)
!739 = !DILocation(line: 409, column: 8, scope: !699)
!740 = !DILocation(line: 413, column: 21, scope: !699)
!741 = !DILocation(line: 413, column: 3, scope: !699)
!742 = !DILocation(line: 414, column: 3, scope: !699)
!743 = !DILocation(line: 415, column: 3, scope: !699)
!744 = !DILocation(line: 416, column: 3, scope: !699)
!745 = !DILocalVariable(name: "status", arg: 1, scope: !746, file: !6, line: 99, type: !21)
!746 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !19, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !747)
!747 = !{!745}
!748 = !DILocation(line: 99, column: 30, scope: !746, inlinedAt: !749)
!749 = distinct !DILocation(line: 418, column: 3, scope: !699)
!750 = !DILocation(line: 102, column: 18, scope: !751, inlinedAt: !749)
!751 = distinct !DILexicalBlock(scope: !746, file: !6, line: 101, column: 7)
!752 = !{!753, !753, i64 0}
!753 = !{!"int", !668, i64 0}
!754 = !DILocation(line: 419, column: 3, scope: !699)
!755 = !DILocation(line: 421, column: 3, scope: !699)
!756 = !DILocation(line: 421, column: 15, scope: !699)
!757 = !DILocation(line: 410, column: 7, scope: !699)
!758 = !DILocation(line: 426, column: 40, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 424, column: 9)
!760 = distinct !DILexicalBlock(scope: !699, file: !3, line: 422, column: 5)
!761 = !DILocation(line: 426, column: 24, scope: !759)
!762 = !DILocation(line: 426, column: 22, scope: !759)
!763 = !{!764, !764, i64 0}
!764 = !{!"double", !668, i64 0}
!765 = !DILocation(line: 427, column: 11, scope: !759)
!766 = !DILocation(line: 430, column: 38, scope: !759)
!767 = !DILocation(line: 430, column: 25, scope: !759)
!768 = !DILocation(line: 430, column: 23, scope: !759)
!769 = !DILocation(line: 431, column: 27, scope: !770)
!770 = distinct !DILexicalBlock(scope: !759, file: !3, line: 431, column: 15)
!771 = !DILocation(line: 431, column: 15, scope: !759)
!772 = distinct !{!772, !755, !773}
!773 = !DILocation(line: 451, column: 5, scope: !699)
!774 = !DILocation(line: 432, column: 13, scope: !770)
!775 = !DILocation(line: 437, column: 11, scope: !759)
!776 = !DILocation(line: 441, column: 11, scope: !759)
!777 = !DILocation(line: 443, column: 9, scope: !759)
!778 = !DILocation(line: 445, column: 9, scope: !759)
!779 = !DILocation(line: 448, column: 11, scope: !759)
!780 = !DILocation(line: 453, column: 14, scope: !781)
!781 = distinct !DILexicalBlock(scope: !699, file: !3, line: 453, column: 7)
!782 = !DILocation(line: 453, column: 12, scope: !781)
!783 = !DILocation(line: 453, column: 21, scope: !781)
!784 = !DILocation(line: 453, column: 7, scope: !699)
!785 = !DILocation(line: 454, column: 5, scope: !781)
!786 = !DILocation(line: 456, column: 40, scope: !699)
!787 = !DILocation(line: 456, column: 29, scope: !699)
!788 = !DILocation(line: 456, column: 13, scope: !699)
!789 = !DILocation(line: 408, column: 10, scope: !699)
!790 = !DILocation(line: 458, column: 11, scope: !699)
!791 = !DILocation(line: 458, column: 8, scope: !699)
!792 = !DILocation(line: 464, column: 7, scope: !699)
!793 = !DILocation(line: 465, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !699, file: !3, line: 464, column: 7)
!795 = !DILocation(line: 469, column: 20, scope: !699)
!796 = !DILocalVariable(name: "sigterm", arg: 1, scope: !797, file: !3, line: 339, type: !21)
!797 = distinct !DISubprogram(name: "install_cleanup", scope: !3, file: !3, line: 339, type: !19, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !798)
!798 = !{!796, !799}
!799 = !DILocalVariable(name: "sa", scope: !797, file: !3, line: 341, type: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !801, line: 24, size: 1216, elements: !802)
!801 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!802 = !{!803, !887, !888, !889}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !800, file: !801, line: 35, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 28, size: 64, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !804, file: !801, line: 31, baseType: !16, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !804, file: !801, line: 33, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !21, !811, !15}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !813, line: 124, baseType: !814)
!813 = !DIFile(filename: "/usr/include/bits/types/siginfo_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 36, size: 1024, elements: !815)
!815 = !{!816, !817, !818, !819, !820}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !814, file: !813, line: 38, baseType: !21, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !814, file: !813, line: 40, baseType: !21, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !814, file: !813, line: 42, baseType: !21, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !814, file: !813, line: 48, baseType: !21, size: 32, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !814, file: !813, line: 123, baseType: !821, size: 896, offset: 128)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !813, line: 51, size: 896, elements: !822)
!822 = !{!823, !827, !833, !845, !851, !860, !876, !881}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !821, file: !813, line: 53, baseType: !824, size: 896)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 896, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 28)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !821, file: !813, line: 60, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 56, size: 64, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !828, file: !813, line: 58, baseType: !30, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !828, file: !813, line: 59, baseType: !832, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !31, line: 134, baseType: !191)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !821, file: !813, line: 68, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 63, size: 128, elements: !835)
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !834, file: !813, line: 65, baseType: !21, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !834, file: !813, line: 66, baseType: !21, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !834, file: !813, line: 67, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !840, line: 11, baseType: !841)
!840 = !DIFile(filename: "/usr/include/bits/types/sigval_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !840, line: 5, size: 64, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !841, file: !840, line: 7, baseType: !21, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !841, file: !840, line: 8, baseType: !15, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !821, file: !813, line: 76, baseType: !846, size: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 71, size: 128, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !846, file: !813, line: 73, baseType: !30, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !846, file: !813, line: 74, baseType: !832, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !846, file: !813, line: 75, baseType: !839, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !821, file: !813, line: 86, baseType: !852, size: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 79, size: 256, elements: !853)
!853 = !{!854, !855, !856, !857, !859}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !852, file: !813, line: 81, baseType: !30, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !852, file: !813, line: 82, baseType: !832, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !852, file: !813, line: 83, baseType: !21, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !852, file: !813, line: 84, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !31, line: 144, baseType: !605)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !852, file: !813, line: 85, baseType: !858, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !821, file: !813, line: 105, baseType: !861, size: 256)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 89, size: 256, elements: !862)
!862 = !{!863, !864, !866}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !861, file: !813, line: 91, baseType: !15, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !861, file: !813, line: 93, baseType: !865, size: 16, offset: 64)
!865 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !861, file: !813, line: 104, baseType: !867, size: 128, offset: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !813, line: 94, size: 128, elements: !868)
!868 = !{!869, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !867, file: !813, line: 101, baseType: !870, size: 128)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !867, file: !813, line: 97, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !870, file: !813, line: 99, baseType: !15, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !870, file: !813, line: 100, baseType: !15, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !867, file: !813, line: 103, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 41, baseType: !191)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !821, file: !813, line: 112, baseType: !877, size: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 108, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !877, file: !813, line: 110, baseType: !605, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !877, file: !813, line: 111, baseType: !21, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !821, file: !813, line: 121, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !813, line: 116, size: 128, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !882, file: !813, line: 118, baseType: !15, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !882, file: !813, line: 119, baseType: !21, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !882, file: !813, line: 120, baseType: !191, size: 32, offset: 96)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !800, file: !801, line: 43, baseType: !722, size: 1024, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !800, file: !801, line: 46, baseType: !21, size: 32, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !800, file: !801, line: 49, baseType: !890, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!891 = !DILocation(line: 339, column: 22, scope: !797, inlinedAt: !892)
!892 = distinct !DILocation(line: 469, column: 3, scope: !699)
!893 = !DILocation(line: 341, column: 3, scope: !797, inlinedAt: !892)
!894 = !DILocation(line: 342, column: 20, scope: !797, inlinedAt: !892)
!895 = !DILocation(line: 342, column: 3, scope: !797, inlinedAt: !892)
!896 = !DILocation(line: 343, column: 6, scope: !797, inlinedAt: !892)
!897 = !DILocation(line: 343, column: 17, scope: !797, inlinedAt: !892)
!898 = !{!668, !668, i64 0}
!899 = !DILocation(line: 344, column: 6, scope: !797, inlinedAt: !892)
!900 = !DILocation(line: 344, column: 15, scope: !797, inlinedAt: !892)
!901 = !{!902, !753, i64 136}
!902 = !{!"sigaction", !668, i64 0, !903, i64 8, !753, i64 136, !667, i64 144}
!903 = !{!"", !668, i64 0}
!904 = !DILocation(line: 341, column: 20, scope: !797, inlinedAt: !892)
!905 = !DILocation(line: 347, column: 3, scope: !797, inlinedAt: !892)
!906 = !DILocation(line: 348, column: 3, scope: !797, inlinedAt: !892)
!907 = !DILocation(line: 349, column: 3, scope: !797, inlinedAt: !892)
!908 = !DILocation(line: 350, column: 3, scope: !797, inlinedAt: !892)
!909 = !DILocation(line: 351, column: 3, scope: !797, inlinedAt: !892)
!910 = !DILocation(line: 352, column: 3, scope: !797, inlinedAt: !892)
!911 = !DILocation(line: 353, column: 1, scope: !797, inlinedAt: !892)
!912 = !DILocation(line: 470, column: 3, scope: !699)
!913 = !DILocation(line: 471, column: 3, scope: !699)
!914 = !DILocation(line: 329, column: 3, scope: !915, inlinedAt: !918)
!915 = distinct !DISubprogram(name: "install_sigchld", scope: !3, file: !3, line: 327, type: !675, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !916)
!916 = !{!917}
!917 = !DILocalVariable(name: "sa", scope: !915, file: !3, line: 329, type: !800)
!918 = distinct !DILocation(line: 472, column: 3, scope: !699)
!919 = !DILocation(line: 330, column: 20, scope: !915, inlinedAt: !918)
!920 = !DILocation(line: 330, column: 3, scope: !915, inlinedAt: !918)
!921 = !DILocation(line: 331, column: 6, scope: !915, inlinedAt: !918)
!922 = !DILocation(line: 331, column: 17, scope: !915, inlinedAt: !918)
!923 = !DILocation(line: 332, column: 6, scope: !915, inlinedAt: !918)
!924 = !DILocation(line: 332, column: 15, scope: !915, inlinedAt: !918)
!925 = !DILocation(line: 329, column: 20, scope: !915, inlinedAt: !918)
!926 = !DILocation(line: 335, column: 3, scope: !915, inlinedAt: !918)
!927 = !DILocation(line: 336, column: 1, scope: !915, inlinedAt: !918)
!928 = !DILocation(line: 474, column: 19, scope: !699)
!929 = !DILocation(line: 474, column: 17, scope: !699)
!930 = !DILocation(line: 475, column: 7, scope: !699)
!931 = !DILocation(line: 477, column: 17, scope: !932)
!932 = distinct !DILexicalBlock(scope: !715, file: !3, line: 476, column: 5)
!933 = !DILocation(line: 477, column: 24, scope: !932)
!934 = !DILocation(line: 477, column: 7, scope: !932)
!935 = !DILocation(line: 478, column: 7, scope: !932)
!936 = !DILocation(line: 483, column: 7, scope: !713)
!937 = !DILocation(line: 484, column: 7, scope: !713)
!938 = !DILocation(line: 486, column: 15, scope: !713)
!939 = !DILocation(line: 486, column: 7, scope: !713)
!940 = !DILocation(line: 489, column: 25, scope: !713)
!941 = !DILocation(line: 489, column: 31, scope: !713)
!942 = !DILocation(line: 489, column: 11, scope: !713)
!943 = !DILocation(line: 490, column: 24, scope: !713)
!944 = !DILocation(line: 490, column: 62, scope: !713)
!945 = !DILocation(line: 490, column: 55, scope: !713)
!946 = !DILocation(line: 490, column: 7, scope: !713)
!947 = !DILocation(line: 496, column: 7, scope: !717)
!948 = !DILocation(line: 500, column: 7, scope: !717)
!949 = !DILocation(line: 502, column: 7, scope: !717)
!950 = !DILocation(line: 506, column: 7, scope: !717)
!951 = !DILocation(line: 507, column: 22, scope: !717)
!952 = !DILocation(line: 506, column: 16, scope: !717)
!953 = !DILocalVariable(name: "sigterm", arg: 1, scope: !954, file: !3, line: 358, type: !21)
!954 = distinct !DISubprogram(name: "block_cleanup", scope: !3, file: !3, line: 358, type: !955, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !958)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !21, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!958 = !{!953, !959, !960}
!959 = !DILocalVariable(name: "old_set", arg: 2, scope: !954, file: !3, line: 358, type: !957)
!960 = !DILocalVariable(name: "block_set", scope: !954, file: !3, line: 360, type: !720)
!961 = !DILocation(line: 358, column: 20, scope: !954, inlinedAt: !962)
!962 = distinct !DILocation(line: 507, column: 7, scope: !717)
!963 = !DILocation(line: 358, column: 39, scope: !954, inlinedAt: !962)
!964 = !DILocation(line: 360, column: 3, scope: !954, inlinedAt: !962)
!965 = !DILocation(line: 360, column: 12, scope: !954, inlinedAt: !962)
!966 = !DILocation(line: 361, column: 3, scope: !954, inlinedAt: !962)
!967 = !DILocation(line: 362, column: 3, scope: !954, inlinedAt: !962)
!968 = !DILocation(line: 363, column: 3, scope: !954, inlinedAt: !962)
!969 = !DILocation(line: 364, column: 3, scope: !954, inlinedAt: !962)
!970 = !DILocation(line: 365, column: 3, scope: !954, inlinedAt: !962)
!971 = !DILocation(line: 366, column: 3, scope: !954, inlinedAt: !962)
!972 = !DILocation(line: 367, column: 3, scope: !954, inlinedAt: !962)
!973 = !DILocation(line: 368, column: 7, scope: !974, inlinedAt: !962)
!974 = distinct !DILexicalBlock(scope: !954, file: !3, line: 368, column: 7)
!975 = !DILocation(line: 368, column: 52, scope: !974, inlinedAt: !962)
!976 = !DILocation(line: 368, column: 7, scope: !954, inlinedAt: !962)
!977 = !DILocation(line: 369, column: 15, scope: !974, inlinedAt: !962)
!978 = !DILocation(line: 369, column: 22, scope: !974, inlinedAt: !962)
!979 = !DILocation(line: 369, column: 5, scope: !974, inlinedAt: !962)
!980 = !DILocation(line: 370, column: 1, scope: !954, inlinedAt: !962)
!981 = !DILocation(line: 509, column: 38, scope: !717)
!982 = !DILocation(line: 496, column: 11, scope: !717)
!983 = !DILocation(line: 509, column: 29, scope: !717)
!984 = !DILocation(line: 495, column: 13, scope: !717)
!985 = !DILocation(line: 509, column: 72, scope: !717)
!986 = !DILocation(line: 509, column: 7, scope: !717)
!987 = !DILocation(line: 510, column: 9, scope: !717)
!988 = distinct !{!988, !986, !989}
!989 = !DILocation(line: 510, column: 33, scope: !717)
!990 = !DILocation(line: 512, column: 23, scope: !735)
!991 = !DILocation(line: 512, column: 11, scope: !717)
!992 = !DILocation(line: 515, column: 21, scope: !993)
!993 = distinct !DILexicalBlock(scope: !735, file: !3, line: 513, column: 9)
!994 = !DILocation(line: 515, column: 28, scope: !993)
!995 = !DILocation(line: 515, column: 11, scope: !993)
!996 = !DILocation(line: 516, column: 18, scope: !993)
!997 = !DILocation(line: 517, column: 9, scope: !993)
!998 = !DILocation(line: 520, column: 15, scope: !733)
!999 = !DILocation(line: 520, column: 15, scope: !734)
!1000 = !DILocation(line: 521, column: 22, scope: !733)
!1001 = !DILocation(line: 521, column: 20, scope: !733)
!1002 = !DILocation(line: 521, column: 13, scope: !733)
!1003 = !DILocation(line: 522, column: 20, scope: !732)
!1004 = !DILocation(line: 522, column: 20, scope: !733)
!1005 = !DILocation(line: 524, column: 19, scope: !731)
!1006 = !DILocation(line: 525, column: 19, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !731, file: !3, line: 525, column: 19)
!1008 = !DILocation(line: 525, column: 19, scope: !731)
!1009 = !DILocation(line: 526, column: 30, scope: !1007)
!1010 = !DILocation(line: 526, column: 17, scope: !1007)
!1011 = !DILocation(line: 527, column: 30, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !731, file: !3, line: 527, column: 19)
!1013 = !DILocation(line: 388, column: 7, scope: !1014, inlinedAt: !1018)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 388, column: 7)
!1015 = distinct !DISubprogram(name: "disable_core_dumps", scope: !3, file: !3, line: 385, type: !1016, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !77)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!37}
!1018 = distinct !DILocation(line: 527, column: 33, scope: !1012)
!1019 = !DILocation(line: 388, column: 34, scope: !1014, inlinedAt: !1018)
!1020 = !DILocation(line: 388, column: 7, scope: !1015, inlinedAt: !1018)
!1021 = !DILocation(line: 401, column: 13, scope: !1015, inlinedAt: !1018)
!1022 = !DILocation(line: 401, column: 20, scope: !1015, inlinedAt: !1018)
!1023 = !DILocation(line: 401, column: 3, scope: !1015, inlinedAt: !1018)
!1024 = !DILocation(line: 527, column: 19, scope: !731)
!1025 = !DILocation(line: 530, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 528, column: 17)
!1027 = !DILocation(line: 531, column: 19, scope: !1026)
!1028 = !DILocation(line: 532, column: 19, scope: !1026)
!1029 = !DILocation(line: 533, column: 17, scope: !1026)
!1030 = !DILocation(line: 534, column: 28, scope: !731)
!1031 = !DILocation(line: 534, column: 22, scope: !731)
!1032 = !DILocation(line: 535, column: 13, scope: !731)
!1033 = !DILocation(line: 539, column: 28, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !732, file: !3, line: 537, column: 13)
!1035 = !DILocation(line: 539, column: 67, scope: !1034)
!1036 = !DILocation(line: 539, column: 15, scope: !1034)
!1037 = !DILocation(line: 540, column: 22, scope: !1034)
!1038 = !DILocation(line: 544, column: 21, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !717, file: !3, line: 544, column: 11)
!1040 = !DILocation(line: 544, column: 11, scope: !717)
!1041 = !DILocation(line: 545, column: 16, scope: !1039)
!1042 = !DILocation(line: 545, column: 9, scope: !1039)
!1043 = !DILocation(line: 546, column: 14, scope: !717)
!1044 = !DILocation(line: 547, column: 5, scope: !714)
!1045 = !DILocation(line: 548, column: 1, scope: !699)
!1046 = distinct !DISubprogram(name: "parse_duration", scope: !3, file: !3, line: 306, type: !1047, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!34, !45}
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(name: "str", arg: 1, scope: !1046, file: !3, line: 306, type: !45)
!1051 = !DILocalVariable(name: "duration", scope: !1046, file: !3, line: 308, type: !34)
!1052 = !DILocalVariable(name: "ep", scope: !1046, file: !3, line: 309, type: !45)
!1053 = !DILocation(line: 306, column: 29, scope: !1046)
!1054 = !DILocation(line: 308, column: 3, scope: !1046)
!1055 = !DILocation(line: 309, column: 3, scope: !1046)
!1056 = !DILocation(line: 308, column: 10, scope: !1046)
!1057 = !DILocation(line: 309, column: 15, scope: !1046)
!1058 = !DILocation(line: 311, column: 10, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 311, column: 7)
!1060 = !DILocation(line: 311, column: 50, scope: !1059)
!1061 = !DILocation(line: 311, column: 53, scope: !1059)
!1062 = !DILocation(line: 311, column: 59, scope: !1059)
!1063 = !DILocation(line: 313, column: 18, scope: !1059)
!1064 = !DILocation(line: 313, column: 15, scope: !1059)
!1065 = !DILocation(line: 313, column: 7, scope: !1059)
!1066 = !DILocation(line: 315, column: 7, scope: !1059)
!1067 = !DILocation(line: 315, column: 12, scope: !1059)
!1068 = !DILocation(line: 315, column: 11, scope: !1059)
!1069 = !DILocation(line: 315, column: 15, scope: !1059)
!1070 = !DILocation(line: 315, column: 23, scope: !1059)
!1071 = !DILocation(line: 315, column: 18, scope: !1059)
!1072 = !DILocation(line: 317, column: 7, scope: !1059)
!1073 = !DILocalVariable(name: "x", arg: 1, scope: !1074, file: !3, line: 277, type: !1077)
!1074 = distinct !DISubprogram(name: "apply_time_suffix", scope: !3, file: !3, line: 277, type: !1075, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1078)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!37, !1077, !14}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!1078 = !{!1073, !1079, !1080}
!1079 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1074, file: !3, line: 277, type: !14)
!1080 = !DILocalVariable(name: "multiplier", scope: !1074, file: !3, line: 279, type: !21)
!1081 = !DILocation(line: 277, column: 28, scope: !1074, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 317, column: 11, scope: !1059)
!1083 = !DILocation(line: 277, column: 36, scope: !1074, inlinedAt: !1082)
!1084 = !DILocation(line: 281, column: 11, scope: !1074, inlinedAt: !1082)
!1085 = !DILocation(line: 281, column: 3, scope: !1074, inlinedAt: !1082)
!1086 = !DILocation(line: 279, column: 7, scope: !1074, inlinedAt: !1082)
!1087 = !DILocation(line: 289, column: 7, scope: !1088, inlinedAt: !1082)
!1088 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 282, column: 5)
!1089 = !DILocation(line: 292, column: 7, scope: !1088, inlinedAt: !1082)
!1090 = !DILocation(line: 295, column: 7, scope: !1088, inlinedAt: !1082)
!1091 = !DILocation(line: 319, column: 20, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 318, column: 5)
!1093 = !DILocation(line: 319, column: 51, scope: !1092)
!1094 = !DILocation(line: 319, column: 7, scope: !1092)
!1095 = !DILocation(line: 320, column: 7, scope: !1092)
!1096 = !DILocation(line: 300, column: 6, scope: !1074, inlinedAt: !1082)
!1097 = !DILocation(line: 324, column: 1, scope: !1046)
!1098 = !DILocation(line: 323, column: 3, scope: !1046)
!1099 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 177, type: !19, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1100)
!1100 = !{!1101, !1102}
!1101 = !DILocalVariable(name: "sig", arg: 1, scope: !1099, file: !3, line: 177, type: !21)
!1102 = !DILocalVariable(name: "saved_errno", scope: !1103, file: !3, line: 188, type: !21)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 187, column: 9)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 186, column: 11)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 185, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 184, column: 7)
!1107 = !DILocation(line: 177, column: 14, scope: !1099)
!1108 = !DILocation(line: 179, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 179, column: 7)
!1110 = !DILocation(line: 179, column: 7, scope: !1099)
!1111 = !DILocation(line: 182, column: 13, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 180, column: 5)
!1113 = !DILocation(line: 183, column: 5, scope: !1112)
!1114 = !DILocation(line: 184, column: 7, scope: !1106)
!1115 = !DILocation(line: 184, column: 7, scope: !1099)
!1116 = !DILocation(line: 186, column: 11, scope: !1104)
!1117 = !DILocation(line: 186, column: 11, scope: !1105)
!1118 = !DILocation(line: 188, column: 29, scope: !1103)
!1119 = !DILocation(line: 188, column: 15, scope: !1103)
!1120 = !DILocation(line: 190, column: 23, scope: !1103)
!1121 = !DILocation(line: 191, column: 11, scope: !1103)
!1122 = !DILocation(line: 192, column: 22, scope: !1103)
!1123 = !DILocation(line: 193, column: 17, scope: !1103)
!1124 = !DILocation(line: 199, column: 17, scope: !1105)
!1125 = !DILocation(line: 163, column: 13, scope: !1126, inlinedAt: !1133)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 163, column: 7)
!1127 = distinct !DISubprogram(name: "send_sig", scope: !3, file: !3, line: 154, type: !1128, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1130)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!21, !28, !21}
!1130 = !{!1131, !1132}
!1131 = !DILocalVariable(name: "where", arg: 1, scope: !1127, file: !3, line: 154, type: !28)
!1132 = !DILocalVariable(name: "sig", arg: 2, scope: !1127, file: !3, line: 154, type: !21)
!1133 = distinct !DILocation(line: 199, column: 7, scope: !1105)
!1134 = !DILocation(line: 163, column: 7, scope: !1127, inlinedAt: !1133)
!1135 = !DILocation(line: 164, column: 5, scope: !1126, inlinedAt: !1133)
!1136 = !DILocation(line: 165, column: 10, scope: !1127, inlinedAt: !1133)
!1137 = !DILocation(line: 203, column: 11, scope: !1105)
!1138 = !DILocation(line: 164, column: 5, scope: !1126, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 205, column: 11, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 204, column: 9)
!1141 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 203, column: 11)
!1142 = !DILocation(line: 165, column: 10, scope: !1127, inlinedAt: !1139)
!1143 = !DILocation(line: 206, column: 30, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 206, column: 15)
!1145 = !DILocation(line: 208, column: 25, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 207, column: 13)
!1147 = !DILocation(line: 163, column: 13, scope: !1126, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 208, column: 15, scope: !1146)
!1149 = !DILocation(line: 163, column: 7, scope: !1127, inlinedAt: !1148)
!1150 = !DILocation(line: 164, column: 5, scope: !1126, inlinedAt: !1148)
!1151 = !DILocation(line: 165, column: 10, scope: !1127, inlinedAt: !1148)
!1152 = !DILocation(line: 164, column: 5, scope: !1126, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 209, column: 15, scope: !1146)
!1154 = !DILocation(line: 165, column: 10, scope: !1127, inlinedAt: !1153)
!1155 = !DILocation(line: 210, column: 13, scope: !1146)
!1156 = !DILocation(line: 214, column: 16, scope: !1106)
!1157 = !DILocation(line: 214, column: 5, scope: !1106)
!1158 = !DILocation(line: 215, column: 1, scope: !1099)
!1159 = distinct !DISubprogram(name: "chld", scope: !3, file: !3, line: 171, type: !19, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1160 = !{!1161}
!1161 = !DILocalVariable(name: "sig", arg: 1, scope: !1159, file: !3, line: 171, type: !21)
!1162 = !DILocation(line: 171, column: 11, scope: !1159)
!1163 = !DILocation(line: 173, column: 1, scope: !1159)
!1164 = distinct !DISubprogram(name: "unblock_signal", scope: !3, file: !3, line: 373, type: !19, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1165)
!1165 = !{!1166, !1167}
!1166 = !DILocalVariable(name: "sig", arg: 1, scope: !1164, file: !3, line: 373, type: !21)
!1167 = !DILocalVariable(name: "unblock_set", scope: !1164, file: !3, line: 375, type: !720)
!1168 = !DILocation(line: 373, column: 21, scope: !1164)
!1169 = !DILocation(line: 375, column: 3, scope: !1164)
!1170 = !DILocation(line: 375, column: 12, scope: !1164)
!1171 = !DILocation(line: 376, column: 3, scope: !1164)
!1172 = !DILocation(line: 377, column: 3, scope: !1164)
!1173 = !DILocation(line: 378, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 378, column: 7)
!1175 = !DILocation(line: 378, column: 53, scope: !1174)
!1176 = !DILocation(line: 378, column: 7, scope: !1164)
!1177 = !DILocation(line: 379, column: 15, scope: !1174)
!1178 = !DILocation(line: 379, column: 22, scope: !1174)
!1179 = !DILocation(line: 379, column: 5, scope: !1174)
!1180 = !DILocation(line: 380, column: 1, scope: !1164)
!1181 = distinct !DISubprogram(name: "settimeout", scope: !3, file: !3, line: 111, type: !1182, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !34, !37}
!1184 = !{!1185, !1186, !1187, !1194, !1200, !1204, !1205}
!1185 = !DILocalVariable(name: "duration", arg: 1, scope: !1181, file: !3, line: 111, type: !34)
!1186 = !DILocalVariable(name: "warn", arg: 2, scope: !1181, file: !3, line: 111, type: !37)
!1187 = !DILocalVariable(name: "ts", scope: !1181, file: !3, line: 122, type: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1189, line: 8, size: 128, elements: !1190)
!1189 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1188, file: !1189, line: 10, baseType: !604, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1188, file: !1189, line: 11, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !31, line: 184, baseType: !605)
!1194 = !DILocalVariable(name: "its", scope: !1181, file: !3, line: 123, type: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1196, line: 8, size: 256, elements: !1197)
!1196 = !DIFile(filename: "/usr/include/bits/types/struct_itimerspec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1195, file: !1196, line: 10, baseType: !1188, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1195, file: !1196, line: 11, baseType: !1188, size: 128, offset: 128)
!1200 = !DILocalVariable(name: "timerid", scope: !1181, file: !3, line: 124, type: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1202, line: 7, baseType: !1203)
!1202 = !DIFile(filename: "/usr/include/bits/types/timer_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !31, line: 159, baseType: !15)
!1204 = !DILocalVariable(name: "timeint", scope: !1181, file: !3, line: 140, type: !191)
!1205 = !DILocalVariable(name: "duration_floor", scope: !1206, file: !3, line: 145, type: !191)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 144, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 141, column: 7)
!1208 = !DILocation(line: 111, column: 20, scope: !1181)
!1209 = !DILocation(line: 111, column: 35, scope: !1181)
!1210 = !DILocation(line: 122, column: 19, scope: !1181)
!1211 = !DILocation(line: 122, column: 24, scope: !1181)
!1212 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1213 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!1214 = !DILocation(line: 123, column: 3, scope: !1181)
!1215 = !DILocation(line: 123, column: 37, scope: !1181)
!1216 = !DILocation(line: 123, column: 29, scope: !1181)
!1217 = !DILocation(line: 124, column: 3, scope: !1181)
!1218 = !DILocation(line: 124, column: 11, scope: !1181)
!1219 = !DILocation(line: 125, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 125, column: 7)
!1221 = !DILocation(line: 125, column: 53, scope: !1220)
!1222 = !DILocation(line: 125, column: 7, scope: !1181)
!1223 = !DILocation(line: 127, column: 26, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 127, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 126, column: 5)
!1226 = !DILocation(line: 123, column: 21, scope: !1181)
!1227 = !DILocation(line: 127, column: 11, scope: !1224)
!1228 = !DILocation(line: 127, column: 50, scope: !1224)
!1229 = !DILocation(line: 127, column: 11, scope: !1225)
!1230 = !DILocation(line: 131, column: 15, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 130, column: 9)
!1232 = !DILocation(line: 132, column: 23, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 131, column: 15)
!1234 = !DILocation(line: 132, column: 30, scope: !1233)
!1235 = !DILocation(line: 132, column: 13, scope: !1233)
!1236 = !DILocation(line: 133, column: 25, scope: !1231)
!1237 = !DILocation(line: 133, column: 11, scope: !1231)
!1238 = !DILocation(line: 135, column: 5, scope: !1225)
!1239 = !DILocation(line: 136, column: 17, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 136, column: 12)
!1241 = !DILocation(line: 136, column: 20, scope: !1240)
!1242 = !DILocation(line: 136, column: 26, scope: !1240)
!1243 = !DILocation(line: 136, column: 12, scope: !1220)
!1244 = !DILocation(line: 137, column: 22, scope: !1240)
!1245 = !DILocation(line: 137, column: 5, scope: !1240)
!1246 = !DILocation(line: 141, column: 16, scope: !1207)
!1247 = !DILocation(line: 141, column: 7, scope: !1181)
!1248 = !DILocation(line: 145, column: 37, scope: !1206)
!1249 = !DILocation(line: 145, column: 20, scope: !1206)
!1250 = !DILocation(line: 146, column: 35, scope: !1206)
!1251 = !DILocation(line: 146, column: 50, scope: !1206)
!1252 = !DILocation(line: 146, column: 32, scope: !1206)
!1253 = !DILocation(line: 140, column: 16, scope: !1181)
!1254 = !DILocation(line: 148, column: 3, scope: !1181)
!1255 = !DILocation(line: 149, column: 1, scope: !1181)
!1256 = distinct !DISubprogram(name: "operand2sig", scope: !592, file: !592, line: 36, type: !1257, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!21, !45, !13}
!1259 = !{!1260, !1261, !1262, !1263, !1266, !1267, !1268, !1270}
!1260 = !DILocalVariable(name: "operand", arg: 1, scope: !1256, file: !592, line: 36, type: !45)
!1261 = !DILocalVariable(name: "signame", arg: 2, scope: !1256, file: !592, line: 36, type: !13)
!1262 = !DILocalVariable(name: "signum", scope: !1256, file: !592, line: 38, type: !21)
!1263 = !DILocalVariable(name: "endp", scope: !1264, file: !592, line: 53, type: !13)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !592, line: 41, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1256, file: !592, line: 40, column: 7)
!1266 = !DILocalVariable(name: "l", scope: !1264, file: !592, line: 54, type: !605)
!1267 = !DILocalVariable(name: "i", scope: !1264, file: !592, line: 55, type: !21)
!1268 = !DILocalVariable(name: "upcased", scope: !1269, file: !592, line: 63, type: !13)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !592, line: 60, column: 5)
!1270 = !DILocalVariable(name: "p", scope: !1269, file: !592, line: 64, type: !13)
!1271 = !DILocation(line: 36, column: 26, scope: !1256)
!1272 = !DILocation(line: 36, column: 41, scope: !1256)
!1273 = !DILocation(line: 38, column: 3, scope: !1256)
!1274 = !DILocation(line: 40, column: 7, scope: !1265)
!1275 = !DILocation(line: 40, column: 7, scope: !1256)
!1276 = !DILocation(line: 53, column: 7, scope: !1264)
!1277 = !DILocation(line: 54, column: 21, scope: !1264)
!1278 = !DILocation(line: 54, column: 27, scope: !1264)
!1279 = !DILocation(line: 53, column: 13, scope: !1264)
!1280 = !DILocation(line: 54, column: 32, scope: !1264)
!1281 = !DILocation(line: 54, column: 16, scope: !1264)
!1282 = !DILocation(line: 55, column: 15, scope: !1264)
!1283 = !DILocation(line: 55, column: 11, scope: !1264)
!1284 = !DILocation(line: 56, column: 28, scope: !1264)
!1285 = !DILocation(line: 56, column: 25, scope: !1264)
!1286 = !DILocation(line: 56, column: 33, scope: !1264)
!1287 = !DILocation(line: 56, column: 36, scope: !1264)
!1288 = !DILocation(line: 56, column: 42, scope: !1264)
!1289 = !DILocation(line: 56, column: 45, scope: !1264)
!1290 = !DILocation(line: 56, column: 51, scope: !1264)
!1291 = !DILocation(line: 56, column: 54, scope: !1264)
!1292 = !DILocation(line: 56, column: 56, scope: !1264)
!1293 = !DILocation(line: 56, column: 17, scope: !1264)
!1294 = !DILocation(line: 57, column: 19, scope: !1264)
!1295 = !DILocation(line: 38, column: 7, scope: !1256)
!1296 = !DILocation(line: 56, column: 14, scope: !1264)
!1297 = !DILocation(line: 58, column: 5, scope: !1265)
!1298 = !DILocation(line: 58, column: 5, scope: !1264)
!1299 = !DILocation(line: 63, column: 23, scope: !1269)
!1300 = !DILocation(line: 63, column: 13, scope: !1269)
!1301 = !DILocation(line: 64, column: 13, scope: !1269)
!1302 = !DILocation(line: 65, column: 25, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !592, line: 65, column: 7)
!1304 = distinct !DILexicalBlock(scope: !1269, file: !592, line: 65, column: 7)
!1305 = !DILocation(line: 65, column: 7, scope: !1304)
!1306 = !DILocation(line: 66, column: 51, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !592, line: 66, column: 13)
!1308 = !DILocation(line: 66, column: 13, scope: !1307)
!1309 = !DILocation(line: 66, column: 13, scope: !1303)
!1310 = !DILocation(line: 67, column: 14, scope: !1307)
!1311 = !DILocation(line: 67, column: 11, scope: !1307)
!1312 = !DILocation(line: 65, column: 30, scope: !1303)
!1313 = distinct !{!1313, !1305, !1314}
!1314 = !DILocation(line: 67, column: 23, scope: !1304)
!1315 = !DILocation(line: 71, column: 13, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1269, file: !592, line: 71, column: 11)
!1317 = !DILocation(line: 71, column: 40, scope: !1316)
!1318 = !DILocation(line: 72, column: 13, scope: !1316)
!1319 = !DILocation(line: 72, column: 17, scope: !1316)
!1320 = !DILocation(line: 72, column: 28, scope: !1316)
!1321 = !DILocation(line: 72, column: 35, scope: !1316)
!1322 = !DILocation(line: 72, column: 38, scope: !1316)
!1323 = !DILocation(line: 72, column: 49, scope: !1316)
!1324 = !DILocation(line: 72, column: 56, scope: !1316)
!1325 = !DILocation(line: 72, column: 59, scope: !1316)
!1326 = !DILocation(line: 72, column: 70, scope: !1316)
!1327 = !DILocation(line: 73, column: 17, scope: !1316)
!1328 = !DILocation(line: 73, column: 37, scope: !1316)
!1329 = !DILocation(line: 73, column: 20, scope: !1316)
!1330 = !DILocation(line: 73, column: 51, scope: !1316)
!1331 = !DILocation(line: 71, column: 11, scope: !1269)
!1332 = !DILocation(line: 74, column: 16, scope: !1316)
!1333 = !DILocation(line: 74, column: 9, scope: !1316)
!1334 = !DILocation(line: 76, column: 7, scope: !1269)
!1335 = !DILocation(line: 79, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1256, file: !592, line: 79, column: 7)
!1337 = !DILocation(line: 79, column: 14, scope: !1336)
!1338 = !DILocation(line: 79, column: 18, scope: !1336)
!1339 = !DILocation(line: 79, column: 21, scope: !1336)
!1340 = !DILocation(line: 79, column: 47, scope: !1336)
!1341 = !DILocation(line: 79, column: 7, scope: !1256)
!1342 = !DILocation(line: 81, column: 20, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1336, file: !592, line: 80, column: 5)
!1344 = !DILocation(line: 81, column: 45, scope: !1343)
!1345 = !DILocation(line: 81, column: 7, scope: !1343)
!1346 = !DILocation(line: 82, column: 7, scope: !1343)
!1347 = !DILocation(line: 85, column: 10, scope: !1256)
!1348 = !DILocation(line: 85, column: 3, scope: !1256)
!1349 = !DILocation(line: 86, column: 1, scope: !1256)
!1350 = distinct !DISubprogram(name: "c_strtod", scope: !108, file: !108, line: 66, type: !1351, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!34, !45, !702}
!1353 = !{!1354, !1355, !1356, !1357}
!1354 = !DILocalVariable(name: "nptr", arg: 1, scope: !1350, file: !108, line: 66, type: !45)
!1355 = !DILocalVariable(name: "endptr", arg: 2, scope: !1350, file: !108, line: 66, type: !702)
!1356 = !DILocalVariable(name: "r", scope: !1350, file: !108, line: 68, type: !34)
!1357 = !DILocalVariable(name: "locale", scope: !1350, file: !108, line: 72, type: !84)
!1358 = !DILocation(line: 66, column: 23, scope: !1350)
!1359 = !DILocation(line: 66, column: 36, scope: !1350)
!1360 = !DILocation(line: 58, column: 8, scope: !1361, inlinedAt: !1365)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !108, line: 58, column: 7)
!1362 = distinct !DISubprogram(name: "c_locale", scope: !108, file: !108, line: 56, type: !1363, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !77)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!84}
!1365 = distinct !DILocation(line: 72, column: 21, scope: !1350)
!1366 = !DILocation(line: 58, column: 7, scope: !1362, inlinedAt: !1365)
!1367 = !DILocation(line: 59, column: 22, scope: !1361, inlinedAt: !1365)
!1368 = !DILocation(line: 59, column: 20, scope: !1361, inlinedAt: !1365)
!1369 = !DILocation(line: 59, column: 5, scope: !1361, inlinedAt: !1365)
!1370 = !DILocation(line: 60, column: 10, scope: !1362, inlinedAt: !1365)
!1371 = !DILocation(line: 72, column: 12, scope: !1350)
!1372 = !DILocation(line: 73, column: 8, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1350, file: !108, line: 73, column: 7)
!1374 = !DILocation(line: 73, column: 7, scope: !1350)
!1375 = !DILocation(line: 75, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !108, line: 75, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !108, line: 74, column: 5)
!1378 = !DILocation(line: 75, column: 11, scope: !1377)
!1379 = !DILocation(line: 76, column: 17, scope: !1376)
!1380 = !DILocation(line: 76, column: 9, scope: !1376)
!1381 = !DILocation(line: 80, column: 7, scope: !1350)
!1382 = !DILocation(line: 68, column: 10, scope: !1350)
!1383 = !DILocation(line: 111, column: 3, scope: !1350)
!1384 = !DILocation(line: 112, column: 1, scope: !1350)
!1385 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !117, file: !117, line: 41, type: !43, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1386)
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "file", arg: 1, scope: !1385, file: !117, line: 41, type: !45)
!1388 = !DILocation(line: 41, column: 41, scope: !1385)
!1389 = !DILocation(line: 43, column: 13, scope: !1385)
!1390 = !DILocation(line: 44, column: 1, scope: !1385)
!1391 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !117, file: !117, line: 78, type: !1392, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !37}
!1394 = !{!1395}
!1395 = !DILocalVariable(name: "ignore", arg: 1, scope: !1391, file: !117, line: 78, type: !37)
!1396 = !DILocation(line: 78, column: 37, scope: !1391)
!1397 = !DILocation(line: 80, column: 16, scope: !1391)
!1398 = !{!1399, !1399, i64 0}
!1399 = !{!"_Bool", !668, i64 0}
!1400 = !DILocation(line: 81, column: 1, scope: !1391)
!1401 = distinct !DISubprogram(name: "close_stdout", scope: !117, file: !117, line: 107, type: !675, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1402)
!1402 = !{!1403}
!1403 = !DILocalVariable(name: "write_error", scope: !1404, file: !117, line: 112, type: !45)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !117, line: 111, column: 5)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !117, line: 109, column: 7)
!1406 = !DILocation(line: 109, column: 21, scope: !1405)
!1407 = !DILocation(line: 109, column: 7, scope: !1405)
!1408 = !DILocation(line: 109, column: 29, scope: !1405)
!1409 = !DILocation(line: 110, column: 7, scope: !1405)
!1410 = !DILocation(line: 110, column: 12, scope: !1405)
!1411 = !{i8 0, i8 2}
!1412 = !DILocation(line: 114, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !117, line: 113, column: 11)
!1414 = !DILocation(line: 110, column: 25, scope: !1405)
!1415 = !DILocation(line: 110, column: 28, scope: !1405)
!1416 = !DILocation(line: 110, column: 34, scope: !1405)
!1417 = !DILocation(line: 109, column: 7, scope: !1401)
!1418 = !DILocation(line: 112, column: 33, scope: !1404)
!1419 = !DILocation(line: 112, column: 19, scope: !1404)
!1420 = !DILocation(line: 113, column: 11, scope: !1413)
!1421 = !DILocation(line: 113, column: 11, scope: !1404)
!1422 = !DILocation(line: 114, column: 36, scope: !1413)
!1423 = !DILocation(line: 114, column: 9, scope: !1413)
!1424 = !DILocation(line: 117, column: 9, scope: !1413)
!1425 = !DILocation(line: 119, column: 14, scope: !1404)
!1426 = !DILocation(line: 119, column: 7, scope: !1404)
!1427 = !DILocation(line: 122, column: 22, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1401, file: !117, line: 122, column: 8)
!1429 = !DILocation(line: 122, column: 8, scope: !1428)
!1430 = !DILocation(line: 122, column: 30, scope: !1428)
!1431 = !DILocation(line: 122, column: 8, scope: !1401)
!1432 = !DILocation(line: 123, column: 13, scope: !1428)
!1433 = !DILocation(line: 123, column: 6, scope: !1428)
!1434 = !DILocation(line: 124, column: 1, scope: !1401)
!1435 = distinct !DISubprogram(name: "dtotimespec", scope: !1436, file: !1436, line: 30, type: !1437, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1443)
!1436 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !34}
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1189, line: 8, size: 128, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1439, file: !1189, line: 10, baseType: !604, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1439, file: !1189, line: 11, baseType: !1193, size: 64, offset: 64)
!1443 = !{!1444, !1445, !1449, !1450}
!1444 = !DILocalVariable(name: "sec", arg: 1, scope: !1435, file: !1436, line: 30, type: !34)
!1445 = !DILocalVariable(name: "s", scope: !1446, file: !1436, line: 38, type: !602)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !1436, line: 37, column: 5)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !1436, line: 34, column: 12)
!1448 = distinct !DILexicalBlock(scope: !1435, file: !1436, line: 32, column: 7)
!1449 = !DILocalVariable(name: "frac", scope: !1446, file: !1436, line: 39, type: !34)
!1450 = !DILocalVariable(name: "ns", scope: !1446, file: !1436, line: 40, type: !605)
!1451 = !DILocation(line: 30, column: 21, scope: !1435)
!1452 = !DILocation(line: 32, column: 32, scope: !1448)
!1453 = !DILocation(line: 32, column: 7, scope: !1435)
!1454 = !DILocation(line: 34, column: 19, scope: !1447)
!1455 = !DILocation(line: 34, column: 12, scope: !1448)
!1456 = !DILocation(line: 38, column: 18, scope: !1446)
!1457 = !DILocation(line: 38, column: 14, scope: !1446)
!1458 = !DILocation(line: 39, column: 50, scope: !1446)
!1459 = !DILocation(line: 39, column: 48, scope: !1446)
!1460 = !DILocation(line: 39, column: 41, scope: !1446)
!1461 = !DILocation(line: 39, column: 14, scope: !1446)
!1462 = !DILocation(line: 40, column: 17, scope: !1446)
!1463 = !DILocation(line: 40, column: 12, scope: !1446)
!1464 = !DILocation(line: 41, column: 13, scope: !1446)
!1465 = !DILocation(line: 41, column: 16, scope: !1446)
!1466 = !DILocation(line: 41, column: 10, scope: !1446)
!1467 = !DILocation(line: 42, column: 15, scope: !1446)
!1468 = !DILocation(line: 42, column: 9, scope: !1446)
!1469 = !DILocation(line: 43, column: 10, scope: !1446)
!1470 = !DILocation(line: 45, column: 14, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1446, file: !1436, line: 45, column: 11)
!1472 = !DILocation(line: 48, column: 14, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1471, file: !1436, line: 46, column: 9)
!1474 = !DILocation(line: 45, column: 11, scope: !1446)
!1475 = !DILocalVariable(name: "s", arg: 1, scope: !1476, file: !598, line: 41, type: !602)
!1476 = distinct !DISubprogram(name: "make_timespec", scope: !598, file: !598, line: 41, type: !1477, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!1439, !602, !605}
!1479 = !{!1475, !1480, !1481}
!1480 = !DILocalVariable(name: "ns", arg: 2, scope: !1476, file: !598, line: 41, type: !605)
!1481 = !DILocalVariable(name: "r", scope: !1476, file: !598, line: 43, type: !1439)
!1482 = !DILocation(line: 41, column: 23, scope: !1476, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 51, column: 14, scope: !1446)
!1484 = !DILocation(line: 41, column: 35, scope: !1476, inlinedAt: !1483)
!1485 = !DILocation(line: 43, column: 19, scope: !1476, inlinedAt: !1483)
!1486 = !DILocation(line: 47, column: 1, scope: !1476, inlinedAt: !1483)
!1487 = !DILocation(line: 53, column: 1, scope: !1435)
!1488 = distinct !DISubprogram(name: "set_program_name", scope: !131, file: !131, line: 39, type: !43, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DILocalVariable(name: "argv0", arg: 1, scope: !1488, file: !131, line: 39, type: !45)
!1491 = !DILocalVariable(name: "slash", scope: !1488, file: !131, line: 46, type: !45)
!1492 = !DILocalVariable(name: "base", scope: !1488, file: !131, line: 47, type: !45)
!1493 = !DILocation(line: 39, column: 31, scope: !1488)
!1494 = !DILocation(line: 51, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !131, line: 51, column: 7)
!1496 = !DILocation(line: 51, column: 7, scope: !1488)
!1497 = !DILocation(line: 55, column: 14, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !131, line: 52, column: 5)
!1499 = !DILocation(line: 54, column: 7, scope: !1498)
!1500 = !DILocation(line: 56, column: 7, scope: !1498)
!1501 = !DILocation(line: 59, column: 11, scope: !1488)
!1502 = !DILocation(line: 46, column: 15, scope: !1488)
!1503 = !DILocation(line: 60, column: 17, scope: !1488)
!1504 = !DILocation(line: 60, column: 33, scope: !1488)
!1505 = !DILocation(line: 60, column: 11, scope: !1488)
!1506 = !DILocation(line: 47, column: 15, scope: !1488)
!1507 = !DILocation(line: 61, column: 12, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1488, file: !131, line: 61, column: 7)
!1509 = !DILocation(line: 61, column: 20, scope: !1508)
!1510 = !DILocation(line: 61, column: 25, scope: !1508)
!1511 = !DILocation(line: 61, column: 42, scope: !1508)
!1512 = !DILocation(line: 61, column: 28, scope: !1508)
!1513 = !DILocation(line: 61, column: 61, scope: !1508)
!1514 = !DILocation(line: 61, column: 7, scope: !1488)
!1515 = !DILocation(line: 64, column: 11, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !131, line: 64, column: 11)
!1517 = distinct !DILexicalBlock(scope: !1508, file: !131, line: 62, column: 5)
!1518 = !DILocation(line: 64, column: 36, scope: !1516)
!1519 = !DILocation(line: 64, column: 11, scope: !1517)
!1520 = !DILocation(line: 66, column: 24, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !131, line: 65, column: 9)
!1522 = !DILocation(line: 70, column: 41, scope: !1521)
!1523 = !DILocation(line: 72, column: 9, scope: !1521)
!1524 = !DILocation(line: 84, column: 16, scope: !1488)
!1525 = !DILocation(line: 90, column: 27, scope: !1488)
!1526 = !DILocation(line: 92, column: 1, scope: !1488)
!1527 = distinct !DISubprogram(name: "clone_quoting_options", scope: !178, file: !178, line: 114, type: !1528, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1531)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1530, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1531 = !{!1532, !1533, !1534}
!1532 = !DILocalVariable(name: "o", arg: 1, scope: !1527, file: !178, line: 114, type: !1530)
!1533 = !DILocalVariable(name: "e", scope: !1527, file: !178, line: 116, type: !21)
!1534 = !DILocalVariable(name: "p", scope: !1527, file: !178, line: 117, type: !1530)
!1535 = !DILocation(line: 114, column: 48, scope: !1527)
!1536 = !DILocation(line: 116, column: 11, scope: !1527)
!1537 = !DILocation(line: 116, column: 7, scope: !1527)
!1538 = !DILocation(line: 117, column: 40, scope: !1527)
!1539 = !DILocation(line: 117, column: 31, scope: !1527)
!1540 = !DILocation(line: 117, column: 27, scope: !1527)
!1541 = !DILocation(line: 119, column: 9, scope: !1527)
!1542 = !DILocation(line: 120, column: 3, scope: !1527)
!1543 = distinct !DISubprogram(name: "get_quoting_style", scope: !178, file: !178, line: 125, type: !1544, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1548)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!137, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1548 = !{!1549}
!1549 = !DILocalVariable(name: "o", arg: 1, scope: !1543, file: !178, line: 125, type: !1546)
!1550 = !DILocation(line: 125, column: 50, scope: !1543)
!1551 = !DILocation(line: 127, column: 11, scope: !1543)
!1552 = !DILocation(line: 127, column: 46, scope: !1543)
!1553 = !{!1554, !668, i64 0}
!1554 = !{!"quoting_options", !668, i64 0, !753, i64 4, !668, i64 8, !667, i64 40, !667, i64 48}
!1555 = !DILocation(line: 127, column: 3, scope: !1543)
!1556 = distinct !DISubprogram(name: "set_quoting_style", scope: !178, file: !178, line: 133, type: !1557, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1530, !137}
!1559 = !{!1560, !1561}
!1560 = !DILocalVariable(name: "o", arg: 1, scope: !1556, file: !178, line: 133, type: !1530)
!1561 = !DILocalVariable(name: "s", arg: 2, scope: !1556, file: !178, line: 133, type: !137)
!1562 = !DILocation(line: 133, column: 44, scope: !1556)
!1563 = !DILocation(line: 133, column: 66, scope: !1556)
!1564 = !DILocation(line: 135, column: 4, scope: !1556)
!1565 = !DILocation(line: 135, column: 39, scope: !1556)
!1566 = !DILocation(line: 135, column: 45, scope: !1556)
!1567 = !DILocation(line: 136, column: 1, scope: !1556)
!1568 = distinct !DISubprogram(name: "set_char_quoting", scope: !178, file: !178, line: 144, type: !1569, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!21, !1530, !14, !21}
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1578, !1579}
!1572 = !DILocalVariable(name: "o", arg: 1, scope: !1568, file: !178, line: 144, type: !1530)
!1573 = !DILocalVariable(name: "c", arg: 2, scope: !1568, file: !178, line: 144, type: !14)
!1574 = !DILocalVariable(name: "i", arg: 3, scope: !1568, file: !178, line: 144, type: !21)
!1575 = !DILocalVariable(name: "uc", scope: !1568, file: !178, line: 146, type: !587)
!1576 = !DILocalVariable(name: "p", scope: !1568, file: !178, line: 147, type: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1578 = !DILocalVariable(name: "shift", scope: !1568, file: !178, line: 149, type: !21)
!1579 = !DILocalVariable(name: "r", scope: !1568, file: !178, line: 150, type: !21)
!1580 = !DILocation(line: 144, column: 43, scope: !1568)
!1581 = !DILocation(line: 144, column: 51, scope: !1568)
!1582 = !DILocation(line: 144, column: 58, scope: !1568)
!1583 = !DILocation(line: 146, column: 17, scope: !1568)
!1584 = !DILocation(line: 148, column: 6, scope: !1568)
!1585 = !DILocation(line: 148, column: 62, scope: !1568)
!1586 = !DILocation(line: 148, column: 57, scope: !1568)
!1587 = !DILocation(line: 147, column: 17, scope: !1568)
!1588 = !DILocation(line: 149, column: 18, scope: !1568)
!1589 = !DILocation(line: 149, column: 15, scope: !1568)
!1590 = !DILocation(line: 149, column: 7, scope: !1568)
!1591 = !DILocation(line: 150, column: 12, scope: !1568)
!1592 = !DILocation(line: 150, column: 15, scope: !1568)
!1593 = !DILocation(line: 150, column: 25, scope: !1568)
!1594 = !DILocation(line: 150, column: 7, scope: !1568)
!1595 = !DILocation(line: 151, column: 13, scope: !1568)
!1596 = !DILocation(line: 151, column: 18, scope: !1568)
!1597 = !DILocation(line: 151, column: 23, scope: !1568)
!1598 = !DILocation(line: 151, column: 6, scope: !1568)
!1599 = !DILocation(line: 152, column: 3, scope: !1568)
!1600 = distinct !DISubprogram(name: "set_quoting_flags", scope: !178, file: !178, line: 160, type: !1601, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!21, !1530, !21}
!1603 = !{!1604, !1605, !1606}
!1604 = !DILocalVariable(name: "o", arg: 1, scope: !1600, file: !178, line: 160, type: !1530)
!1605 = !DILocalVariable(name: "i", arg: 2, scope: !1600, file: !178, line: 160, type: !21)
!1606 = !DILocalVariable(name: "r", scope: !1600, file: !178, line: 162, type: !21)
!1607 = !DILocation(line: 160, column: 44, scope: !1600)
!1608 = !DILocation(line: 160, column: 51, scope: !1600)
!1609 = !DILocation(line: 163, column: 8, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1600, file: !178, line: 163, column: 7)
!1611 = !DILocation(line: 163, column: 7, scope: !1600)
!1612 = !DILocation(line: 165, column: 10, scope: !1600)
!1613 = !{!1554, !753, i64 4}
!1614 = !DILocation(line: 162, column: 7, scope: !1600)
!1615 = !DILocation(line: 166, column: 12, scope: !1600)
!1616 = !DILocation(line: 167, column: 3, scope: !1600)
!1617 = distinct !DISubprogram(name: "set_custom_quoting", scope: !178, file: !178, line: 171, type: !1618, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1530, !45, !45}
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "o", arg: 1, scope: !1617, file: !178, line: 171, type: !1530)
!1622 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1617, file: !178, line: 172, type: !45)
!1623 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1617, file: !178, line: 172, type: !45)
!1624 = !DILocation(line: 171, column: 45, scope: !1617)
!1625 = !DILocation(line: 172, column: 33, scope: !1617)
!1626 = !DILocation(line: 172, column: 57, scope: !1617)
!1627 = !DILocation(line: 174, column: 8, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1617, file: !178, line: 174, column: 7)
!1629 = !DILocation(line: 174, column: 7, scope: !1617)
!1630 = !DILocation(line: 176, column: 6, scope: !1617)
!1631 = !DILocation(line: 176, column: 12, scope: !1617)
!1632 = !DILocation(line: 177, column: 8, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1617, file: !178, line: 177, column: 7)
!1634 = !DILocation(line: 177, column: 23, scope: !1633)
!1635 = !DILocation(line: 177, column: 19, scope: !1633)
!1636 = !DILocation(line: 178, column: 5, scope: !1633)
!1637 = !DILocation(line: 179, column: 6, scope: !1617)
!1638 = !DILocation(line: 179, column: 17, scope: !1617)
!1639 = !{!1554, !667, i64 40}
!1640 = !DILocation(line: 180, column: 6, scope: !1617)
!1641 = !DILocation(line: 180, column: 18, scope: !1617)
!1642 = !{!1554, !667, i64 48}
!1643 = !DILocation(line: 181, column: 1, scope: !1617)
!1644 = distinct !DISubprogram(name: "quotearg_buffer", scope: !178, file: !178, line: 776, type: !1645, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!172, !13, !172, !45, !172, !1546}
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1648 = !DILocalVariable(name: "buffer", arg: 1, scope: !1644, file: !178, line: 776, type: !13)
!1649 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1644, file: !178, line: 776, type: !172)
!1650 = !DILocalVariable(name: "arg", arg: 3, scope: !1644, file: !178, line: 777, type: !45)
!1651 = !DILocalVariable(name: "argsize", arg: 4, scope: !1644, file: !178, line: 777, type: !172)
!1652 = !DILocalVariable(name: "o", arg: 5, scope: !1644, file: !178, line: 778, type: !1546)
!1653 = !DILocalVariable(name: "p", scope: !1644, file: !178, line: 780, type: !1546)
!1654 = !DILocalVariable(name: "e", scope: !1644, file: !178, line: 781, type: !21)
!1655 = !DILocalVariable(name: "r", scope: !1644, file: !178, line: 782, type: !172)
!1656 = !DILocation(line: 776, column: 24, scope: !1644)
!1657 = !DILocation(line: 776, column: 39, scope: !1644)
!1658 = !DILocation(line: 777, column: 30, scope: !1644)
!1659 = !DILocation(line: 777, column: 42, scope: !1644)
!1660 = !DILocation(line: 778, column: 48, scope: !1644)
!1661 = !DILocation(line: 780, column: 37, scope: !1644)
!1662 = !DILocation(line: 780, column: 33, scope: !1644)
!1663 = !DILocation(line: 781, column: 11, scope: !1644)
!1664 = !DILocation(line: 781, column: 7, scope: !1644)
!1665 = !DILocation(line: 783, column: 43, scope: !1644)
!1666 = !DILocation(line: 783, column: 53, scope: !1644)
!1667 = !DILocation(line: 783, column: 60, scope: !1644)
!1668 = !DILocation(line: 784, column: 43, scope: !1644)
!1669 = !DILocation(line: 784, column: 58, scope: !1644)
!1670 = !DILocation(line: 782, column: 14, scope: !1644)
!1671 = !DILocation(line: 782, column: 10, scope: !1644)
!1672 = !DILocation(line: 785, column: 9, scope: !1644)
!1673 = !DILocation(line: 786, column: 3, scope: !1644)
!1674 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !178, file: !178, line: 248, type: !1675, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !1679)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!172, !13, !172, !45, !172, !137, !21, !1677, !45, !45}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1704, !1705, !1706, !1707, !1708, !1711, !1712, !1730, !1733, !1734, !1741}
!1680 = !DILocalVariable(name: "buffer", arg: 1, scope: !1674, file: !178, line: 248, type: !13)
!1681 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1674, file: !178, line: 248, type: !172)
!1682 = !DILocalVariable(name: "arg", arg: 3, scope: !1674, file: !178, line: 249, type: !45)
!1683 = !DILocalVariable(name: "argsize", arg: 4, scope: !1674, file: !178, line: 249, type: !172)
!1684 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1674, file: !178, line: 250, type: !137)
!1685 = !DILocalVariable(name: "flags", arg: 6, scope: !1674, file: !178, line: 250, type: !21)
!1686 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1674, file: !178, line: 251, type: !1677)
!1687 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1674, file: !178, line: 252, type: !45)
!1688 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1674, file: !178, line: 253, type: !45)
!1689 = !DILocalVariable(name: "i", scope: !1674, file: !178, line: 255, type: !172)
!1690 = !DILocalVariable(name: "len", scope: !1674, file: !178, line: 256, type: !172)
!1691 = !DILocalVariable(name: "orig_buffersize", scope: !1674, file: !178, line: 257, type: !172)
!1692 = !DILocalVariable(name: "quote_string", scope: !1674, file: !178, line: 258, type: !45)
!1693 = !DILocalVariable(name: "quote_string_len", scope: !1674, file: !178, line: 259, type: !172)
!1694 = !DILocalVariable(name: "backslash_escapes", scope: !1674, file: !178, line: 260, type: !37)
!1695 = !DILocalVariable(name: "unibyte_locale", scope: !1674, file: !178, line: 261, type: !37)
!1696 = !DILocalVariable(name: "elide_outer_quotes", scope: !1674, file: !178, line: 262, type: !37)
!1697 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1674, file: !178, line: 263, type: !37)
!1698 = !DILocalVariable(name: "encountered_single_quote", scope: !1674, file: !178, line: 264, type: !37)
!1699 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1674, file: !178, line: 265, type: !37)
!1700 = !DILocalVariable(name: "c", scope: !1701, file: !178, line: 394, type: !587)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !178, line: 393, column: 5)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !178, line: 392, column: 3)
!1703 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 392, column: 3)
!1704 = !DILocalVariable(name: "esc", scope: !1701, file: !178, line: 395, type: !587)
!1705 = !DILocalVariable(name: "is_right_quote", scope: !1701, file: !178, line: 396, type: !37)
!1706 = !DILocalVariable(name: "escaping", scope: !1701, file: !178, line: 397, type: !37)
!1707 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1701, file: !178, line: 398, type: !37)
!1708 = !DILocalVariable(name: "m", scope: !1709, file: !178, line: 602, type: !172)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 600, column: 11)
!1710 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 418, column: 9)
!1711 = !DILocalVariable(name: "printable", scope: !1709, file: !178, line: 604, type: !37)
!1712 = !DILocalVariable(name: "mbstate", scope: !1713, file: !178, line: 613, type: !1715)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !178, line: 612, column: 15)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !178, line: 606, column: 17)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1716, line: 6, baseType: !1717)
!1716 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1718, line: 21, baseType: !1719)
!1718 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1718, line: 13, size: 64, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1719, file: !1718, line: 15, baseType: !21, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1719, file: !1718, line: 20, baseType: !1723, size: 32, offset: 32)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1718, line: 16, size: 32, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1723, file: !1718, line: 18, baseType: !191, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1723, file: !1718, line: 19, baseType: !1727, size: 32)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !1728)
!1728 = !{!1729}
!1729 = !DISubrange(count: 4)
!1730 = !DILocalVariable(name: "w", scope: !1731, file: !178, line: 623, type: !1732)
!1731 = distinct !DILexicalBlock(scope: !1713, file: !178, line: 622, column: 19)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !173, line: 90, baseType: !21)
!1733 = !DILocalVariable(name: "bytes", scope: !1731, file: !178, line: 624, type: !172)
!1734 = !DILocalVariable(name: "j", scope: !1735, file: !178, line: 649, type: !172)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !178, line: 648, column: 27)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !178, line: 646, column: 29)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !178, line: 641, column: 23)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !178, line: 633, column: 30)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !178, line: 628, column: 30)
!1740 = distinct !DILexicalBlock(scope: !1731, file: !178, line: 626, column: 25)
!1741 = !DILocalVariable(name: "ilim", scope: !1742, file: !178, line: 676, type: !172)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !178, line: 673, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1709, file: !178, line: 672, column: 17)
!1744 = !DILocation(line: 248, column: 33, scope: !1674)
!1745 = !DILocation(line: 248, column: 48, scope: !1674)
!1746 = !DILocation(line: 249, column: 39, scope: !1674)
!1747 = !DILocation(line: 249, column: 51, scope: !1674)
!1748 = !DILocation(line: 250, column: 46, scope: !1674)
!1749 = !DILocation(line: 250, column: 65, scope: !1674)
!1750 = !DILocation(line: 251, column: 47, scope: !1674)
!1751 = !DILocation(line: 252, column: 39, scope: !1674)
!1752 = !DILocation(line: 253, column: 39, scope: !1674)
!1753 = !DILocation(line: 256, column: 10, scope: !1674)
!1754 = !DILocation(line: 257, column: 10, scope: !1674)
!1755 = !DILocation(line: 258, column: 15, scope: !1674)
!1756 = !DILocation(line: 259, column: 10, scope: !1674)
!1757 = !DILocation(line: 260, column: 8, scope: !1674)
!1758 = !DILocation(line: 261, column: 25, scope: !1674)
!1759 = !DILocation(line: 261, column: 36, scope: !1674)
!1760 = !DILocation(line: 262, column: 8, scope: !1674)
!1761 = !DILocation(line: 263, column: 8, scope: !1674)
!1762 = !DILocation(line: 264, column: 8, scope: !1674)
!1763 = !DILocation(line: 265, column: 8, scope: !1674)
!1764 = !DILocation(line: 265, column: 3, scope: !1674)
!1765 = !DILocation(line: 308, column: 3, scope: !1674)
!1766 = !DILocation(line: 315, column: 11, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 309, column: 5)
!1768 = !DILocation(line: 315, column: 12, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1767, file: !178, line: 315, column: 11)
!1770 = !DILocation(line: 316, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !178, line: 316, column: 9)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !178, line: 316, column: 9)
!1773 = !DILocation(line: 316, column: 9, scope: !1772)
!1774 = !DILocation(line: 354, column: 26, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !178, line: 332, column: 11)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !178, line: 331, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1767, file: !178, line: 330, column: 7)
!1778 = !DILocation(line: 355, column: 27, scope: !1775)
!1779 = !DILocation(line: 356, column: 11, scope: !1775)
!1780 = !DILocation(line: 357, column: 14, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !178, line: 357, column: 13)
!1782 = !DILocation(line: 357, column: 13, scope: !1777)
!1783 = !DILocation(line: 358, column: 43, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !178, line: 358, column: 11)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !178, line: 358, column: 11)
!1786 = !DILocation(line: 358, column: 11, scope: !1785)
!1787 = !DILocation(line: 359, column: 13, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !178, line: 359, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !178, line: 359, column: 13)
!1790 = !DILocation(line: 359, column: 13, scope: !1789)
!1791 = !DILocation(line: 358, column: 70, scope: !1784)
!1792 = distinct !{!1792, !1786, !1793}
!1793 = !DILocation(line: 359, column: 13, scope: !1785)
!1794 = !DILocation(line: 362, column: 28, scope: !1777)
!1795 = !DILocation(line: 364, column: 7, scope: !1767)
!1796 = !DILocation(line: 367, column: 7, scope: !1767)
!1797 = !DILocation(line: 370, column: 7, scope: !1767)
!1798 = !DILocation(line: 373, column: 12, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1767, file: !178, line: 373, column: 11)
!1800 = !DILocation(line: 373, column: 11, scope: !1767)
!1801 = !DILocation(line: 378, column: 12, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1767, file: !178, line: 378, column: 11)
!1803 = !DILocation(line: 378, column: 11, scope: !1767)
!1804 = !DILocation(line: 379, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !178, line: 379, column: 9)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !178, line: 379, column: 9)
!1807 = !DILocation(line: 379, column: 9, scope: !1806)
!1808 = !DILocation(line: 386, column: 7, scope: !1767)
!1809 = !DILocation(line: 389, column: 7, scope: !1767)
!1810 = !DILocation(line: 255, column: 10, scope: !1674)
!1811 = !DILocation(line: 392, column: 8, scope: !1703)
!1812 = !DILocation(line: 392, column: 27, scope: !1702)
!1813 = !DILocation(line: 392, column: 19, scope: !1702)
!1814 = !DILocation(line: 392, column: 60, scope: !1702)
!1815 = !DILocation(line: 392, column: 3, scope: !1703)
!1816 = !DILocation(line: 392, column: 41, scope: !1702)
!1817 = !DILocation(line: 392, column: 48, scope: !1702)
!1818 = !DILocation(line: 396, column: 12, scope: !1701)
!1819 = !DILocation(line: 397, column: 12, scope: !1701)
!1820 = !DILocation(line: 398, column: 12, scope: !1701)
!1821 = !DILocation(line: 401, column: 11, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 400, column: 11)
!1823 = !DILocation(line: 403, column: 17, scope: !1822)
!1824 = !DILocation(line: 404, column: 39, scope: !1822)
!1825 = !DILocation(line: 408, column: 32, scope: !1822)
!1826 = !DILocation(line: 404, column: 19, scope: !1822)
!1827 = !DILocation(line: 404, column: 15, scope: !1822)
!1828 = !DILocation(line: 409, column: 11, scope: !1822)
!1829 = !DILocation(line: 409, column: 26, scope: !1822)
!1830 = !DILocation(line: 409, column: 14, scope: !1822)
!1831 = !DILocation(line: 409, column: 63, scope: !1822)
!1832 = !DILocation(line: 400, column: 11, scope: !1701)
!1833 = !DILocation(line: 416, column: 11, scope: !1701)
!1834 = !DILocation(line: 394, column: 21, scope: !1701)
!1835 = !DILocation(line: 417, column: 7, scope: !1701)
!1836 = !DILocation(line: 420, column: 15, scope: !1710)
!1837 = !DILocation(line: 422, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !178, line: 422, column: 15)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !178, line: 421, column: 13)
!1840 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 420, column: 15)
!1841 = !DILocation(line: 422, column: 15, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !178, line: 422, column: 15)
!1843 = !DILocation(line: 422, column: 15, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !178, line: 422, column: 15)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !178, line: 422, column: 15)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !178, line: 422, column: 15)
!1847 = !DILocation(line: 422, column: 15, scope: !1845)
!1848 = !DILocation(line: 422, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !178, line: 422, column: 15)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !178, line: 422, column: 15)
!1851 = !DILocation(line: 422, column: 15, scope: !1850)
!1852 = !DILocation(line: 422, column: 15, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !178, line: 422, column: 15)
!1854 = distinct !DILexicalBlock(scope: !1846, file: !178, line: 422, column: 15)
!1855 = !DILocation(line: 422, column: 15, scope: !1854)
!1856 = !DILocation(line: 422, column: 15, scope: !1846)
!1857 = !DILocation(line: 422, column: 15, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !178, line: 422, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1838, file: !178, line: 422, column: 15)
!1860 = !DILocation(line: 422, column: 15, scope: !1859)
!1861 = !DILocation(line: 430, column: 19, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1839, file: !178, line: 429, column: 19)
!1863 = !DILocation(line: 430, column: 24, scope: !1862)
!1864 = !DILocation(line: 430, column: 28, scope: !1862)
!1865 = !DILocation(line: 430, column: 38, scope: !1862)
!1866 = !DILocation(line: 430, column: 48, scope: !1862)
!1867 = !DILocation(line: 430, column: 59, scope: !1862)
!1868 = !DILocation(line: 432, column: 19, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !178, line: 432, column: 19)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !178, line: 432, column: 19)
!1871 = distinct !DILexicalBlock(scope: !1862, file: !178, line: 431, column: 17)
!1872 = !DILocation(line: 432, column: 19, scope: !1870)
!1873 = !DILocation(line: 433, column: 19, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !178, line: 433, column: 19)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !178, line: 433, column: 19)
!1876 = !DILocation(line: 433, column: 19, scope: !1875)
!1877 = !DILocation(line: 434, column: 17, scope: !1871)
!1878 = !DILocation(line: 441, column: 20, scope: !1840)
!1879 = !DILocation(line: 446, column: 11, scope: !1710)
!1880 = !DILocation(line: 449, column: 19, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 447, column: 13)
!1882 = !DILocation(line: 455, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1881, file: !178, line: 454, column: 19)
!1884 = !DILocation(line: 455, column: 24, scope: !1883)
!1885 = !DILocation(line: 455, column: 28, scope: !1883)
!1886 = !DILocation(line: 455, column: 38, scope: !1883)
!1887 = !DILocation(line: 455, column: 47, scope: !1883)
!1888 = !DILocation(line: 455, column: 41, scope: !1883)
!1889 = !DILocation(line: 455, column: 52, scope: !1883)
!1890 = !DILocation(line: 454, column: 19, scope: !1881)
!1891 = !DILocation(line: 456, column: 25, scope: !1883)
!1892 = !DILocation(line: 456, column: 17, scope: !1883)
!1893 = !DILocation(line: 463, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1883, file: !178, line: 457, column: 19)
!1895 = !DILocation(line: 467, column: 21, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !178, line: 467, column: 21)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !178, line: 467, column: 21)
!1898 = !DILocation(line: 467, column: 21, scope: !1897)
!1899 = !DILocation(line: 468, column: 21, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !178, line: 468, column: 21)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !178, line: 468, column: 21)
!1902 = !DILocation(line: 468, column: 21, scope: !1901)
!1903 = !DILocation(line: 469, column: 21, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !178, line: 469, column: 21)
!1905 = distinct !DILexicalBlock(scope: !1894, file: !178, line: 469, column: 21)
!1906 = !DILocation(line: 469, column: 21, scope: !1905)
!1907 = !DILocation(line: 470, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !178, line: 470, column: 21)
!1909 = distinct !DILexicalBlock(scope: !1894, file: !178, line: 470, column: 21)
!1910 = !DILocation(line: 470, column: 21, scope: !1909)
!1911 = !DILocation(line: 471, column: 21, scope: !1894)
!1912 = !DILocation(line: 395, column: 21, scope: !1701)
!1913 = !DILocation(line: 484, column: 31, scope: !1710)
!1914 = !DILocation(line: 485, column: 31, scope: !1710)
!1915 = !DILocation(line: 487, column: 31, scope: !1710)
!1916 = !DILocation(line: 488, column: 31, scope: !1710)
!1917 = !DILocation(line: 489, column: 31, scope: !1710)
!1918 = !DILocation(line: 492, column: 15, scope: !1710)
!1919 = !DILocation(line: 494, column: 19, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !178, line: 493, column: 13)
!1921 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 492, column: 15)
!1922 = !DILocation(line: 501, column: 33, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 501, column: 15)
!1924 = !DILocation(line: 506, column: 15, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 505, column: 15)
!1926 = !DILocation(line: 510, column: 15, scope: !1710)
!1927 = !DILocation(line: 518, column: 26, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 518, column: 15)
!1929 = !DILocation(line: 518, column: 15, scope: !1710)
!1930 = !DILocation(line: 518, column: 40, scope: !1928)
!1931 = !DILocation(line: 518, column: 47, scope: !1928)
!1932 = !DILocation(line: 522, column: 17, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 522, column: 15)
!1934 = !DILocation(line: 518, column: 18, scope: !1928)
!1935 = !DILocation(line: 518, column: 65, scope: !1928)
!1936 = !DILocation(line: 522, column: 15, scope: !1710)
!1937 = !DILocation(line: 526, column: 11, scope: !1710)
!1938 = !DILocation(line: 541, column: 15, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 540, column: 15)
!1940 = !DILocation(line: 548, column: 15, scope: !1710)
!1941 = !DILocation(line: 550, column: 19, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !178, line: 549, column: 13)
!1943 = distinct !DILexicalBlock(scope: !1710, file: !178, line: 548, column: 15)
!1944 = !DILocation(line: 553, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !178, line: 553, column: 19)
!1946 = !DILocation(line: 553, column: 35, scope: !1945)
!1947 = !DILocation(line: 553, column: 30, scope: !1945)
!1948 = !DILocation(line: 562, column: 15, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !178, line: 562, column: 15)
!1950 = distinct !DILexicalBlock(scope: !1942, file: !178, line: 562, column: 15)
!1951 = !DILocation(line: 562, column: 15, scope: !1950)
!1952 = !DILocation(line: 563, column: 15, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !178, line: 563, column: 15)
!1954 = distinct !DILexicalBlock(scope: !1942, file: !178, line: 563, column: 15)
!1955 = !DILocation(line: 563, column: 15, scope: !1954)
!1956 = !DILocation(line: 564, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !178, line: 564, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1942, file: !178, line: 564, column: 15)
!1959 = !DILocation(line: 564, column: 15, scope: !1958)
!1960 = !DILocation(line: 566, column: 13, scope: !1942)
!1961 = !DILocation(line: 606, column: 17, scope: !1709)
!1962 = !DILocation(line: 602, column: 20, scope: !1709)
!1963 = !DILocation(line: 609, column: 29, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1714, file: !178, line: 607, column: 15)
!1965 = !{!1966, !1966, i64 0}
!1966 = !{!"short", !668, i64 0}
!1967 = !DILocation(line: 609, column: 27, scope: !1964)
!1968 = !DILocation(line: 604, column: 18, scope: !1709)
!1969 = !DILocation(line: 610, column: 15, scope: !1964)
!1970 = !DILocation(line: 613, column: 17, scope: !1713)
!1971 = !DILocation(line: 614, column: 17, scope: !1713)
!1972 = !DILocation(line: 618, column: 29, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1713, file: !178, line: 618, column: 21)
!1974 = !DILocation(line: 618, column: 21, scope: !1713)
!1975 = !DILocation(line: 619, column: 29, scope: !1973)
!1976 = !DILocation(line: 619, column: 19, scope: !1973)
!1977 = !DILocation(line: 621, column: 17, scope: !1713)
!1978 = distinct !{!1978, !1977, !1979}
!1979 = !DILocation(line: 667, column: 44, scope: !1713)
!1980 = !DILocation(line: 623, column: 21, scope: !1731)
!1981 = !DILocation(line: 624, column: 56, scope: !1731)
!1982 = !DILocation(line: 624, column: 50, scope: !1731)
!1983 = !DILocation(line: 625, column: 53, scope: !1731)
!1984 = !DILocation(line: 613, column: 27, scope: !1713)
!1985 = !DILocation(line: 623, column: 29, scope: !1731)
!1986 = !DILocation(line: 624, column: 36, scope: !1731)
!1987 = !DILocation(line: 624, column: 28, scope: !1731)
!1988 = !DILocation(line: 626, column: 25, scope: !1731)
!1989 = !DILocation(line: 636, column: 38, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1738, file: !178, line: 634, column: 23)
!1991 = !DILocation(line: 636, column: 48, scope: !1990)
!1992 = !DILocation(line: 636, column: 51, scope: !1990)
!1993 = !DILocation(line: 636, column: 25, scope: !1990)
!1994 = !DILocation(line: 637, column: 28, scope: !1990)
!1995 = !DILocation(line: 636, column: 34, scope: !1990)
!1996 = distinct !{!1996, !1993, !1994}
!1997 = !DILocation(line: 650, column: 43, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !178, line: 650, column: 29)
!1999 = distinct !DILexicalBlock(scope: !1735, file: !178, line: 650, column: 29)
!2000 = !DILocation(line: 647, column: 29, scope: !1736)
!2001 = !DILocation(line: 649, column: 36, scope: !1735)
!2002 = !DILocation(line: 651, column: 49, scope: !1998)
!2003 = !DILocation(line: 651, column: 39, scope: !1998)
!2004 = !DILocation(line: 651, column: 31, scope: !1998)
!2005 = !DILocation(line: 650, column: 53, scope: !1998)
!2006 = !DILocation(line: 650, column: 29, scope: !1999)
!2007 = distinct !{!2007, !2006, !2008}
!2008 = !DILocation(line: 659, column: 33, scope: !1999)
!2009 = !DILocation(line: 666, column: 19, scope: !1713)
!2010 = !DILocation(line: 662, column: 41, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1737, file: !178, line: 662, column: 29)
!2012 = !DILocation(line: 662, column: 31, scope: !2011)
!2013 = !DILocation(line: 662, column: 29, scope: !1737)
!2014 = !DILocation(line: 664, column: 27, scope: !1737)
!2015 = !DILocation(line: 667, column: 26, scope: !1713)
!2016 = !DILocation(line: 667, column: 24, scope: !1713)
!2017 = !DILocation(line: 666, column: 19, scope: !1731)
!2018 = !DILocation(line: 668, column: 15, scope: !1714)
!2019 = !DILocation(line: 670, column: 40, scope: !1709)
!2020 = !DILocation(line: 672, column: 19, scope: !1743)
!2021 = !DILocation(line: 672, column: 45, scope: !1743)
!2022 = !DILocation(line: 672, column: 23, scope: !1743)
!2023 = !DILocation(line: 676, column: 33, scope: !1742)
!2024 = !DILocation(line: 676, column: 24, scope: !1742)
!2025 = !DILocation(line: 678, column: 17, scope: !1742)
!2026 = !DILocation(line: 680, column: 43, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !178, line: 680, column: 25)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !178, line: 679, column: 19)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !178, line: 678, column: 17)
!2030 = distinct !DILexicalBlock(scope: !1742, file: !178, line: 678, column: 17)
!2031 = !DILocation(line: 682, column: 25, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !178, line: 682, column: 25)
!2033 = distinct !DILexicalBlock(scope: !2027, file: !178, line: 681, column: 23)
!2034 = !DILocation(line: 682, column: 25, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !178, line: 682, column: 25)
!2036 = !DILocation(line: 682, column: 25, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !178, line: 682, column: 25)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !178, line: 682, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !178, line: 682, column: 25)
!2040 = !DILocation(line: 682, column: 25, scope: !2038)
!2041 = !DILocation(line: 682, column: 25, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !178, line: 682, column: 25)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !178, line: 682, column: 25)
!2044 = !DILocation(line: 682, column: 25, scope: !2043)
!2045 = !DILocation(line: 682, column: 25, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !178, line: 682, column: 25)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !178, line: 682, column: 25)
!2048 = !DILocation(line: 682, column: 25, scope: !2047)
!2049 = !DILocation(line: 682, column: 25, scope: !2039)
!2050 = !DILocation(line: 682, column: 25, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !178, line: 682, column: 25)
!2052 = distinct !DILexicalBlock(scope: !2032, file: !178, line: 682, column: 25)
!2053 = !DILocation(line: 682, column: 25, scope: !2052)
!2054 = !DILocation(line: 683, column: 25, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !178, line: 683, column: 25)
!2056 = distinct !DILexicalBlock(scope: !2033, file: !178, line: 683, column: 25)
!2057 = !DILocation(line: 683, column: 25, scope: !2056)
!2058 = !DILocation(line: 684, column: 25, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !178, line: 684, column: 25)
!2060 = distinct !DILexicalBlock(scope: !2033, file: !178, line: 684, column: 25)
!2061 = !DILocation(line: 684, column: 25, scope: !2060)
!2062 = !DILocation(line: 685, column: 38, scope: !2033)
!2063 = !DILocation(line: 685, column: 33, scope: !2033)
!2064 = !DILocation(line: 686, column: 23, scope: !2033)
!2065 = !DILocation(line: 687, column: 30, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2027, file: !178, line: 687, column: 30)
!2067 = !DILocation(line: 687, column: 30, scope: !2027)
!2068 = !DILocation(line: 689, column: 25, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !178, line: 689, column: 25)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !178, line: 689, column: 25)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !178, line: 688, column: 23)
!2072 = !DILocation(line: 689, column: 25, scope: !2070)
!2073 = !DILocation(line: 691, column: 23, scope: !2071)
!2074 = !DILocation(line: 692, column: 35, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2028, file: !178, line: 692, column: 25)
!2076 = !DILocation(line: 692, column: 30, scope: !2075)
!2077 = !DILocation(line: 692, column: 25, scope: !2028)
!2078 = !DILocation(line: 694, column: 21, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !178, line: 694, column: 21)
!2080 = distinct !DILexicalBlock(scope: !2028, file: !178, line: 694, column: 21)
!2081 = !DILocation(line: 694, column: 21, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !178, line: 694, column: 21)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !178, line: 694, column: 21)
!2084 = distinct !DILexicalBlock(scope: !2079, file: !178, line: 694, column: 21)
!2085 = !DILocation(line: 694, column: 21, scope: !2083)
!2086 = !DILocation(line: 694, column: 21, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !178, line: 694, column: 21)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !178, line: 694, column: 21)
!2089 = !DILocation(line: 694, column: 21, scope: !2088)
!2090 = !DILocation(line: 694, column: 21, scope: !2084)
!2091 = !DILocation(line: 695, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !178, line: 695, column: 21)
!2093 = distinct !DILexicalBlock(scope: !2028, file: !178, line: 695, column: 21)
!2094 = !DILocation(line: 695, column: 21, scope: !2093)
!2095 = !DILocation(line: 696, column: 25, scope: !2028)
!2096 = !DILocation(line: 678, column: 17, scope: !2029)
!2097 = distinct !{!2097, !2098, !2099}
!2098 = !DILocation(line: 678, column: 17, scope: !2030)
!2099 = !DILocation(line: 697, column: 19, scope: !2030)
!2100 = !DILocation(line: 704, column: 34, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 704, column: 11)
!2102 = !DILocation(line: 706, column: 14, scope: !2101)
!2103 = !DILocation(line: 707, column: 14, scope: !2101)
!2104 = !DILocation(line: 707, column: 35, scope: !2101)
!2105 = !DILocation(line: 707, column: 17, scope: !2101)
!2106 = !DILocation(line: 707, column: 53, scope: !2101)
!2107 = !DILocation(line: 707, column: 47, scope: !2101)
!2108 = !DILocation(line: 707, column: 65, scope: !2101)
!2109 = !DILocation(line: 708, column: 15, scope: !2101)
!2110 = !DILocation(line: 708, column: 11, scope: !2101)
!2111 = !DILocation(line: 704, column: 11, scope: !1701)
!2112 = !DILocation(line: 712, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 712, column: 7)
!2114 = !DILocation(line: 712, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !178, line: 712, column: 7)
!2116 = !DILocation(line: 712, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !178, line: 712, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !178, line: 712, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !178, line: 712, column: 7)
!2120 = !DILocation(line: 712, column: 7, scope: !2118)
!2121 = !DILocation(line: 712, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !178, line: 712, column: 7)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !178, line: 712, column: 7)
!2124 = !DILocation(line: 712, column: 7, scope: !2123)
!2125 = !DILocation(line: 712, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !178, line: 712, column: 7)
!2127 = distinct !DILexicalBlock(scope: !2119, file: !178, line: 712, column: 7)
!2128 = !DILocation(line: 712, column: 7, scope: !2127)
!2129 = !DILocation(line: 712, column: 7, scope: !2119)
!2130 = !DILocation(line: 712, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !178, line: 712, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2113, file: !178, line: 712, column: 7)
!2133 = !DILocation(line: 712, column: 7, scope: !2132)
!2134 = !DILocation(line: 715, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !178, line: 715, column: 7)
!2136 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 715, column: 7)
!2137 = !DILocation(line: 715, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !178, line: 715, column: 7)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !178, line: 715, column: 7)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !178, line: 715, column: 7)
!2141 = !DILocation(line: 715, column: 7, scope: !2139)
!2142 = !DILocation(line: 715, column: 7, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !178, line: 715, column: 7)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !178, line: 715, column: 7)
!2145 = !DILocation(line: 715, column: 7, scope: !2144)
!2146 = !DILocation(line: 715, column: 7, scope: !2140)
!2147 = !DILocation(line: 716, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !178, line: 716, column: 7)
!2149 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 716, column: 7)
!2150 = !DILocation(line: 716, column: 7, scope: !2149)
!2151 = !DILocation(line: 718, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1701, file: !178, line: 718, column: 11)
!2153 = !DILocation(line: 718, column: 11, scope: !1701)
!2154 = !DILocation(line: 720, column: 5, scope: !1702)
!2155 = !DILocation(line: 392, column: 75, scope: !1702)
!2156 = !DILocation(line: 392, column: 3, scope: !1702)
!2157 = distinct !{!2157, !1815, !2158}
!2158 = !DILocation(line: 720, column: 5, scope: !1703)
!2159 = !DILocation(line: 722, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 722, column: 7)
!2161 = !DILocation(line: 722, column: 16, scope: !2160)
!2162 = !DILocation(line: 730, column: 51, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 730, column: 7)
!2164 = !DILocation(line: 731, column: 10, scope: !2163)
!2165 = !DILocation(line: 733, column: 11, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !178, line: 733, column: 11)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !178, line: 732, column: 5)
!2168 = !DILocation(line: 733, column: 11, scope: !2167)
!2169 = !DILocation(line: 734, column: 16, scope: !2166)
!2170 = !DILocation(line: 734, column: 9, scope: !2166)
!2171 = !DILocation(line: 738, column: 18, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2166, file: !178, line: 738, column: 16)
!2173 = !DILocation(line: 738, column: 32, scope: !2172)
!2174 = !DILocation(line: 738, column: 29, scope: !2172)
!2175 = !DILocation(line: 747, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 747, column: 7)
!2177 = !DILocation(line: 747, column: 20, scope: !2176)
!2178 = !DILocation(line: 748, column: 12, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !178, line: 748, column: 5)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !178, line: 748, column: 5)
!2181 = !DILocation(line: 748, column: 5, scope: !2180)
!2182 = !DILocation(line: 749, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !178, line: 749, column: 7)
!2184 = distinct !DILexicalBlock(scope: !2179, file: !178, line: 749, column: 7)
!2185 = !DILocation(line: 749, column: 7, scope: !2184)
!2186 = !DILocation(line: 748, column: 39, scope: !2179)
!2187 = distinct !{!2187, !2181, !2188}
!2188 = !DILocation(line: 749, column: 7, scope: !2180)
!2189 = !DILocation(line: 751, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 751, column: 7)
!2191 = !DILocation(line: 751, column: 7, scope: !1674)
!2192 = !DILocation(line: 752, column: 5, scope: !2190)
!2193 = !DILocation(line: 752, column: 17, scope: !2190)
!2194 = !DILocation(line: 758, column: 21, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1674, file: !178, line: 758, column: 7)
!2196 = !DILocation(line: 758, column: 54, scope: !2195)
!2197 = !DILocation(line: 758, column: 51, scope: !2195)
!2198 = !DILocation(line: 762, column: 42, scope: !1674)
!2199 = !DILocation(line: 760, column: 10, scope: !1674)
!2200 = !DILocation(line: 760, column: 3, scope: !1674)
!2201 = !DILocation(line: 764, column: 1, scope: !1674)
!2202 = distinct !DISubprogram(name: "gettext_quote", scope: !178, file: !178, line: 199, type: !2203, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!45, !45, !137}
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DILocalVariable(name: "msgid", arg: 1, scope: !2202, file: !178, line: 199, type: !45)
!2207 = !DILocalVariable(name: "s", arg: 2, scope: !2202, file: !178, line: 199, type: !137)
!2208 = !DILocalVariable(name: "translation", scope: !2202, file: !178, line: 201, type: !45)
!2209 = !DILocalVariable(name: "locale_code", scope: !2202, file: !178, line: 202, type: !45)
!2210 = !DILocation(line: 199, column: 28, scope: !2202)
!2211 = !DILocation(line: 199, column: 54, scope: !2202)
!2212 = !DILocation(line: 201, column: 29, scope: !2202)
!2213 = !DILocation(line: 201, column: 15, scope: !2202)
!2214 = !DILocation(line: 204, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2202, file: !178, line: 204, column: 7)
!2216 = !DILocation(line: 204, column: 7, scope: !2202)
!2217 = !DILocation(line: 225, column: 17, scope: !2202)
!2218 = !DILocation(line: 202, column: 15, scope: !2202)
!2219 = !DILocalVariable(name: "s2", arg: 2, scope: !2220, file: !2221, line: 160, type: !45)
!2220 = distinct !DISubprogram(name: "strcaseeq0", scope: !2221, file: !2221, line: 160, type: !2222, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2224)
!2221 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!21, !45, !45, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!2224 = !{!2225, !2219, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2225 = !DILocalVariable(name: "s1", arg: 1, scope: !2220, file: !2221, line: 160, type: !45)
!2226 = !DILocalVariable(name: "s20", arg: 3, scope: !2220, file: !2221, line: 160, type: !14)
!2227 = !DILocalVariable(name: "s21", arg: 4, scope: !2220, file: !2221, line: 160, type: !14)
!2228 = !DILocalVariable(name: "s22", arg: 5, scope: !2220, file: !2221, line: 160, type: !14)
!2229 = !DILocalVariable(name: "s23", arg: 6, scope: !2220, file: !2221, line: 160, type: !14)
!2230 = !DILocalVariable(name: "s24", arg: 7, scope: !2220, file: !2221, line: 160, type: !14)
!2231 = !DILocalVariable(name: "s25", arg: 8, scope: !2220, file: !2221, line: 160, type: !14)
!2232 = !DILocalVariable(name: "s26", arg: 9, scope: !2220, file: !2221, line: 160, type: !14)
!2233 = !DILocalVariable(name: "s27", arg: 10, scope: !2220, file: !2221, line: 160, type: !14)
!2234 = !DILocalVariable(name: "s28", arg: 11, scope: !2220, file: !2221, line: 160, type: !14)
!2235 = !DILocation(line: 160, column: 41, scope: !2220, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 226, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2202, file: !178, line: 226, column: 7)
!2238 = !DILocation(line: 160, column: 120, scope: !2220, inlinedAt: !2236)
!2239 = !DILocation(line: 160, column: 130, scope: !2220, inlinedAt: !2236)
!2240 = !DILocation(line: 162, column: 7, scope: !2241, inlinedAt: !2236)
!2241 = distinct !DILexicalBlock(scope: !2220, file: !2221, line: 162, column: 7)
!2242 = !DILocalVariable(name: "s2", arg: 2, scope: !2243, file: !2221, line: 146, type: !45)
!2243 = distinct !DISubprogram(name: "strcaseeq1", scope: !2221, file: !2221, line: 146, type: !2244, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!21, !45, !45, !14, !14, !14, !14, !14, !14, !14, !14}
!2246 = !{!2247, !2242, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2247 = !DILocalVariable(name: "s1", arg: 1, scope: !2243, file: !2221, line: 146, type: !45)
!2248 = !DILocalVariable(name: "s21", arg: 3, scope: !2243, file: !2221, line: 146, type: !14)
!2249 = !DILocalVariable(name: "s22", arg: 4, scope: !2243, file: !2221, line: 146, type: !14)
!2250 = !DILocalVariable(name: "s23", arg: 5, scope: !2243, file: !2221, line: 146, type: !14)
!2251 = !DILocalVariable(name: "s24", arg: 6, scope: !2243, file: !2221, line: 146, type: !14)
!2252 = !DILocalVariable(name: "s25", arg: 7, scope: !2243, file: !2221, line: 146, type: !14)
!2253 = !DILocalVariable(name: "s26", arg: 8, scope: !2243, file: !2221, line: 146, type: !14)
!2254 = !DILocalVariable(name: "s27", arg: 9, scope: !2243, file: !2221, line: 146, type: !14)
!2255 = !DILocalVariable(name: "s28", arg: 10, scope: !2243, file: !2221, line: 146, type: !14)
!2256 = !DILocation(line: 146, column: 41, scope: !2243, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 167, column: 16, scope: !2258, inlinedAt: !2236)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !2221, line: 164, column: 11)
!2259 = distinct !DILexicalBlock(scope: !2241, file: !2221, line: 163, column: 5)
!2260 = !DILocation(line: 146, column: 110, scope: !2243, inlinedAt: !2257)
!2261 = !DILocation(line: 146, column: 120, scope: !2243, inlinedAt: !2257)
!2262 = !DILocation(line: 148, column: 7, scope: !2263, inlinedAt: !2257)
!2263 = distinct !DILexicalBlock(scope: !2243, file: !2221, line: 148, column: 7)
!2264 = !DILocalVariable(name: "s2", arg: 2, scope: !2265, file: !2221, line: 132, type: !45)
!2265 = distinct !DISubprogram(name: "strcaseeq2", scope: !2221, file: !2221, line: 132, type: !2266, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!21, !45, !45, !14, !14, !14, !14, !14, !14, !14}
!2268 = !{!2269, !2264, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2269 = !DILocalVariable(name: "s1", arg: 1, scope: !2265, file: !2221, line: 132, type: !45)
!2270 = !DILocalVariable(name: "s22", arg: 3, scope: !2265, file: !2221, line: 132, type: !14)
!2271 = !DILocalVariable(name: "s23", arg: 4, scope: !2265, file: !2221, line: 132, type: !14)
!2272 = !DILocalVariable(name: "s24", arg: 5, scope: !2265, file: !2221, line: 132, type: !14)
!2273 = !DILocalVariable(name: "s25", arg: 6, scope: !2265, file: !2221, line: 132, type: !14)
!2274 = !DILocalVariable(name: "s26", arg: 7, scope: !2265, file: !2221, line: 132, type: !14)
!2275 = !DILocalVariable(name: "s27", arg: 8, scope: !2265, file: !2221, line: 132, type: !14)
!2276 = !DILocalVariable(name: "s28", arg: 9, scope: !2265, file: !2221, line: 132, type: !14)
!2277 = !DILocation(line: 132, column: 41, scope: !2265, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 153, column: 16, scope: !2279, inlinedAt: !2257)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2221, line: 150, column: 11)
!2280 = distinct !DILexicalBlock(scope: !2263, file: !2221, line: 149, column: 5)
!2281 = !DILocation(line: 132, column: 100, scope: !2265, inlinedAt: !2278)
!2282 = !DILocation(line: 132, column: 110, scope: !2265, inlinedAt: !2278)
!2283 = !DILocation(line: 134, column: 7, scope: !2284, inlinedAt: !2278)
!2284 = distinct !DILexicalBlock(scope: !2265, file: !2221, line: 134, column: 7)
!2285 = !DILocalVariable(name: "s2", arg: 2, scope: !2286, file: !2221, line: 118, type: !45)
!2286 = distinct !DISubprogram(name: "strcaseeq3", scope: !2221, file: !2221, line: 118, type: !2287, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!21, !45, !45, !14, !14, !14, !14, !14, !14}
!2289 = !{!2290, !2285, !2291, !2292, !2293, !2294, !2295, !2296}
!2290 = !DILocalVariable(name: "s1", arg: 1, scope: !2286, file: !2221, line: 118, type: !45)
!2291 = !DILocalVariable(name: "s23", arg: 3, scope: !2286, file: !2221, line: 118, type: !14)
!2292 = !DILocalVariable(name: "s24", arg: 4, scope: !2286, file: !2221, line: 118, type: !14)
!2293 = !DILocalVariable(name: "s25", arg: 5, scope: !2286, file: !2221, line: 118, type: !14)
!2294 = !DILocalVariable(name: "s26", arg: 6, scope: !2286, file: !2221, line: 118, type: !14)
!2295 = !DILocalVariable(name: "s27", arg: 7, scope: !2286, file: !2221, line: 118, type: !14)
!2296 = !DILocalVariable(name: "s28", arg: 8, scope: !2286, file: !2221, line: 118, type: !14)
!2297 = !DILocation(line: 118, column: 41, scope: !2286, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 139, column: 16, scope: !2299, inlinedAt: !2278)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !2221, line: 136, column: 11)
!2300 = distinct !DILexicalBlock(scope: !2284, file: !2221, line: 135, column: 5)
!2301 = !DILocation(line: 118, column: 90, scope: !2286, inlinedAt: !2298)
!2302 = !DILocation(line: 118, column: 100, scope: !2286, inlinedAt: !2298)
!2303 = !DILocation(line: 120, column: 7, scope: !2304, inlinedAt: !2298)
!2304 = distinct !DILexicalBlock(scope: !2286, file: !2221, line: 120, column: 7)
!2305 = !DILocation(line: 120, column: 7, scope: !2286, inlinedAt: !2298)
!2306 = !DILocalVariable(name: "s2", arg: 2, scope: !2307, file: !2221, line: 104, type: !45)
!2307 = distinct !DISubprogram(name: "strcaseeq4", scope: !2221, file: !2221, line: 104, type: !2308, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!21, !45, !45, !14, !14, !14, !14, !14}
!2310 = !{!2311, !2306, !2312, !2313, !2314, !2315, !2316}
!2311 = !DILocalVariable(name: "s1", arg: 1, scope: !2307, file: !2221, line: 104, type: !45)
!2312 = !DILocalVariable(name: "s24", arg: 3, scope: !2307, file: !2221, line: 104, type: !14)
!2313 = !DILocalVariable(name: "s25", arg: 4, scope: !2307, file: !2221, line: 104, type: !14)
!2314 = !DILocalVariable(name: "s26", arg: 5, scope: !2307, file: !2221, line: 104, type: !14)
!2315 = !DILocalVariable(name: "s27", arg: 6, scope: !2307, file: !2221, line: 104, type: !14)
!2316 = !DILocalVariable(name: "s28", arg: 7, scope: !2307, file: !2221, line: 104, type: !14)
!2317 = !DILocation(line: 104, column: 41, scope: !2307, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 125, column: 16, scope: !2319, inlinedAt: !2298)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !2221, line: 122, column: 11)
!2320 = distinct !DILexicalBlock(scope: !2304, file: !2221, line: 121, column: 5)
!2321 = !DILocation(line: 104, column: 80, scope: !2307, inlinedAt: !2318)
!2322 = !DILocation(line: 104, column: 90, scope: !2307, inlinedAt: !2318)
!2323 = !DILocation(line: 106, column: 7, scope: !2324, inlinedAt: !2318)
!2324 = distinct !DILexicalBlock(scope: !2307, file: !2221, line: 106, column: 7)
!2325 = !DILocation(line: 106, column: 7, scope: !2307, inlinedAt: !2318)
!2326 = !DILocalVariable(name: "s2", arg: 2, scope: !2327, file: !2221, line: 90, type: !45)
!2327 = distinct !DISubprogram(name: "strcaseeq5", scope: !2221, file: !2221, line: 90, type: !2328, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!21, !45, !45, !14, !14, !14, !14}
!2330 = !{!2331, !2326, !2332, !2333, !2334, !2335}
!2331 = !DILocalVariable(name: "s1", arg: 1, scope: !2327, file: !2221, line: 90, type: !45)
!2332 = !DILocalVariable(name: "s25", arg: 3, scope: !2327, file: !2221, line: 90, type: !14)
!2333 = !DILocalVariable(name: "s26", arg: 4, scope: !2327, file: !2221, line: 90, type: !14)
!2334 = !DILocalVariable(name: "s27", arg: 5, scope: !2327, file: !2221, line: 90, type: !14)
!2335 = !DILocalVariable(name: "s28", arg: 6, scope: !2327, file: !2221, line: 90, type: !14)
!2336 = !DILocation(line: 90, column: 41, scope: !2327, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 111, column: 16, scope: !2338, inlinedAt: !2318)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !2221, line: 108, column: 11)
!2339 = distinct !DILexicalBlock(scope: !2324, file: !2221, line: 107, column: 5)
!2340 = !DILocation(line: 90, column: 70, scope: !2327, inlinedAt: !2337)
!2341 = !DILocation(line: 90, column: 80, scope: !2327, inlinedAt: !2337)
!2342 = !DILocation(line: 92, column: 7, scope: !2343, inlinedAt: !2337)
!2343 = distinct !DILexicalBlock(scope: !2327, file: !2221, line: 92, column: 7)
!2344 = !DILocation(line: 92, column: 7, scope: !2327, inlinedAt: !2337)
!2345 = !DILocation(line: 227, column: 12, scope: !2237)
!2346 = !DILocation(line: 227, column: 21, scope: !2237)
!2347 = !DILocation(line: 227, column: 5, scope: !2237)
!2348 = !DILocation(line: 146, column: 41, scope: !2243, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 167, column: 16, scope: !2258, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 228, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2202, file: !178, line: 228, column: 7)
!2352 = !DILocation(line: 146, column: 110, scope: !2243, inlinedAt: !2349)
!2353 = !DILocation(line: 146, column: 120, scope: !2243, inlinedAt: !2349)
!2354 = !DILocation(line: 148, column: 7, scope: !2263, inlinedAt: !2349)
!2355 = !DILocation(line: 132, column: 41, scope: !2265, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 153, column: 16, scope: !2279, inlinedAt: !2349)
!2357 = !DILocation(line: 132, column: 100, scope: !2265, inlinedAt: !2356)
!2358 = !DILocation(line: 132, column: 110, scope: !2265, inlinedAt: !2356)
!2359 = !DILocation(line: 134, column: 7, scope: !2284, inlinedAt: !2356)
!2360 = !DILocation(line: 134, column: 7, scope: !2265, inlinedAt: !2356)
!2361 = !DILocation(line: 118, column: 41, scope: !2286, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 139, column: 16, scope: !2299, inlinedAt: !2356)
!2363 = !DILocation(line: 118, column: 90, scope: !2286, inlinedAt: !2362)
!2364 = !DILocation(line: 118, column: 100, scope: !2286, inlinedAt: !2362)
!2365 = !DILocation(line: 120, column: 7, scope: !2304, inlinedAt: !2362)
!2366 = !DILocation(line: 120, column: 7, scope: !2286, inlinedAt: !2362)
!2367 = !DILocation(line: 104, column: 41, scope: !2307, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 125, column: 16, scope: !2319, inlinedAt: !2362)
!2369 = !DILocation(line: 104, column: 80, scope: !2307, inlinedAt: !2368)
!2370 = !DILocation(line: 104, column: 90, scope: !2307, inlinedAt: !2368)
!2371 = !DILocation(line: 106, column: 7, scope: !2324, inlinedAt: !2368)
!2372 = !DILocation(line: 106, column: 7, scope: !2307, inlinedAt: !2368)
!2373 = !DILocation(line: 90, column: 41, scope: !2327, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 111, column: 16, scope: !2338, inlinedAt: !2368)
!2375 = !DILocation(line: 90, column: 70, scope: !2327, inlinedAt: !2374)
!2376 = !DILocation(line: 90, column: 80, scope: !2327, inlinedAt: !2374)
!2377 = !DILocation(line: 92, column: 7, scope: !2343, inlinedAt: !2374)
!2378 = !DILocation(line: 92, column: 7, scope: !2327, inlinedAt: !2374)
!2379 = !DILocalVariable(name: "s2", arg: 2, scope: !2380, file: !2221, line: 76, type: !45)
!2380 = distinct !DISubprogram(name: "strcaseeq6", scope: !2221, file: !2221, line: 76, type: !2381, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!21, !45, !45, !14, !14, !14}
!2383 = !{!2384, !2379, !2385, !2386, !2387}
!2384 = !DILocalVariable(name: "s1", arg: 1, scope: !2380, file: !2221, line: 76, type: !45)
!2385 = !DILocalVariable(name: "s26", arg: 3, scope: !2380, file: !2221, line: 76, type: !14)
!2386 = !DILocalVariable(name: "s27", arg: 4, scope: !2380, file: !2221, line: 76, type: !14)
!2387 = !DILocalVariable(name: "s28", arg: 5, scope: !2380, file: !2221, line: 76, type: !14)
!2388 = !DILocation(line: 76, column: 41, scope: !2380, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 97, column: 16, scope: !2390, inlinedAt: !2374)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !2221, line: 94, column: 11)
!2391 = distinct !DILexicalBlock(scope: !2343, file: !2221, line: 93, column: 5)
!2392 = !DILocation(line: 76, column: 60, scope: !2380, inlinedAt: !2389)
!2393 = !DILocation(line: 76, column: 70, scope: !2380, inlinedAt: !2389)
!2394 = !DILocation(line: 78, column: 7, scope: !2395, inlinedAt: !2389)
!2395 = distinct !DILexicalBlock(scope: !2380, file: !2221, line: 78, column: 7)
!2396 = !DILocation(line: 78, column: 7, scope: !2380, inlinedAt: !2389)
!2397 = !DILocalVariable(name: "s2", arg: 2, scope: !2398, file: !2221, line: 62, type: !45)
!2398 = distinct !DISubprogram(name: "strcaseeq7", scope: !2221, file: !2221, line: 62, type: !2399, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!21, !45, !45, !14, !14}
!2401 = !{!2402, !2397, !2403, !2404}
!2402 = !DILocalVariable(name: "s1", arg: 1, scope: !2398, file: !2221, line: 62, type: !45)
!2403 = !DILocalVariable(name: "s27", arg: 3, scope: !2398, file: !2221, line: 62, type: !14)
!2404 = !DILocalVariable(name: "s28", arg: 4, scope: !2398, file: !2221, line: 62, type: !14)
!2405 = !DILocation(line: 62, column: 41, scope: !2398, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 83, column: 16, scope: !2407, inlinedAt: !2389)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !2221, line: 80, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2395, file: !2221, line: 79, column: 5)
!2409 = !DILocation(line: 62, column: 50, scope: !2398, inlinedAt: !2406)
!2410 = !DILocation(line: 62, column: 60, scope: !2398, inlinedAt: !2406)
!2411 = !DILocation(line: 64, column: 7, scope: !2412, inlinedAt: !2406)
!2412 = distinct !DILexicalBlock(scope: !2398, file: !2221, line: 64, column: 7)
!2413 = !DILocation(line: 228, column: 7, scope: !2202)
!2414 = !DILocation(line: 229, column: 12, scope: !2351)
!2415 = !DILocation(line: 229, column: 21, scope: !2351)
!2416 = !DILocation(line: 229, column: 5, scope: !2351)
!2417 = !DILocation(line: 231, column: 13, scope: !2202)
!2418 = !DILocation(line: 231, column: 11, scope: !2202)
!2419 = !DILocation(line: 231, column: 3, scope: !2202)
!2420 = !DILocation(line: 232, column: 1, scope: !2202)
!2421 = distinct !DISubprogram(name: "quotearg_alloc", scope: !178, file: !178, line: 791, type: !2422, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!13, !45, !172, !1546}
!2424 = !{!2425, !2426, !2427}
!2425 = !DILocalVariable(name: "arg", arg: 1, scope: !2421, file: !178, line: 791, type: !45)
!2426 = !DILocalVariable(name: "argsize", arg: 2, scope: !2421, file: !178, line: 791, type: !172)
!2427 = !DILocalVariable(name: "o", arg: 3, scope: !2421, file: !178, line: 792, type: !1546)
!2428 = !DILocation(line: 791, column: 29, scope: !2421)
!2429 = !DILocation(line: 791, column: 41, scope: !2421)
!2430 = !DILocation(line: 792, column: 47, scope: !2421)
!2431 = !DILocalVariable(name: "arg", arg: 1, scope: !2432, file: !178, line: 804, type: !45)
!2432 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !178, file: !178, line: 804, type: !2433, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!13, !45, !172, !622, !1546}
!2435 = !{!2431, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2436 = !DILocalVariable(name: "argsize", arg: 2, scope: !2432, file: !178, line: 804, type: !172)
!2437 = !DILocalVariable(name: "size", arg: 3, scope: !2432, file: !178, line: 804, type: !622)
!2438 = !DILocalVariable(name: "o", arg: 4, scope: !2432, file: !178, line: 805, type: !1546)
!2439 = !DILocalVariable(name: "p", scope: !2432, file: !178, line: 807, type: !1546)
!2440 = !DILocalVariable(name: "e", scope: !2432, file: !178, line: 808, type: !21)
!2441 = !DILocalVariable(name: "flags", scope: !2432, file: !178, line: 810, type: !21)
!2442 = !DILocalVariable(name: "bufsize", scope: !2432, file: !178, line: 811, type: !172)
!2443 = !DILocalVariable(name: "buf", scope: !2432, file: !178, line: 815, type: !13)
!2444 = !DILocation(line: 804, column: 33, scope: !2432, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 794, column: 10, scope: !2421)
!2446 = !DILocation(line: 804, column: 45, scope: !2432, inlinedAt: !2445)
!2447 = !DILocation(line: 804, column: 62, scope: !2432, inlinedAt: !2445)
!2448 = !DILocation(line: 805, column: 51, scope: !2432, inlinedAt: !2445)
!2449 = !DILocation(line: 807, column: 37, scope: !2432, inlinedAt: !2445)
!2450 = !DILocation(line: 807, column: 33, scope: !2432, inlinedAt: !2445)
!2451 = !DILocation(line: 808, column: 11, scope: !2432, inlinedAt: !2445)
!2452 = !DILocation(line: 808, column: 7, scope: !2432, inlinedAt: !2445)
!2453 = !DILocation(line: 810, column: 18, scope: !2432, inlinedAt: !2445)
!2454 = !DILocation(line: 810, column: 24, scope: !2432, inlinedAt: !2445)
!2455 = !DILocation(line: 810, column: 7, scope: !2432, inlinedAt: !2445)
!2456 = !DILocation(line: 811, column: 69, scope: !2432, inlinedAt: !2445)
!2457 = !DILocation(line: 812, column: 53, scope: !2432, inlinedAt: !2445)
!2458 = !DILocation(line: 813, column: 49, scope: !2432, inlinedAt: !2445)
!2459 = !DILocation(line: 814, column: 49, scope: !2432, inlinedAt: !2445)
!2460 = !DILocation(line: 811, column: 20, scope: !2432, inlinedAt: !2445)
!2461 = !DILocation(line: 814, column: 62, scope: !2432, inlinedAt: !2445)
!2462 = !DILocation(line: 811, column: 10, scope: !2432, inlinedAt: !2445)
!2463 = !DILocalVariable(name: "n", arg: 1, scope: !2464, file: !618, line: 220, type: !172)
!2464 = distinct !DISubprogram(name: "xcharalloc", scope: !618, file: !618, line: 220, type: !2465, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!13, !172}
!2467 = !{!2463}
!2468 = !DILocation(line: 220, column: 20, scope: !2464, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 815, column: 15, scope: !2432, inlinedAt: !2445)
!2470 = !DILocation(line: 222, column: 10, scope: !2464, inlinedAt: !2469)
!2471 = !DILocation(line: 815, column: 9, scope: !2432, inlinedAt: !2445)
!2472 = !DILocation(line: 816, column: 60, scope: !2432, inlinedAt: !2445)
!2473 = !DILocation(line: 818, column: 32, scope: !2432, inlinedAt: !2445)
!2474 = !DILocation(line: 818, column: 47, scope: !2432, inlinedAt: !2445)
!2475 = !DILocation(line: 816, column: 3, scope: !2432, inlinedAt: !2445)
!2476 = !DILocation(line: 819, column: 9, scope: !2432, inlinedAt: !2445)
!2477 = !DILocation(line: 794, column: 3, scope: !2421)
!2478 = !DILocation(line: 804, column: 33, scope: !2432)
!2479 = !DILocation(line: 804, column: 45, scope: !2432)
!2480 = !DILocation(line: 804, column: 62, scope: !2432)
!2481 = !DILocation(line: 805, column: 51, scope: !2432)
!2482 = !DILocation(line: 807, column: 37, scope: !2432)
!2483 = !DILocation(line: 807, column: 33, scope: !2432)
!2484 = !DILocation(line: 808, column: 11, scope: !2432)
!2485 = !DILocation(line: 808, column: 7, scope: !2432)
!2486 = !DILocation(line: 810, column: 18, scope: !2432)
!2487 = !DILocation(line: 810, column: 27, scope: !2432)
!2488 = !DILocation(line: 810, column: 24, scope: !2432)
!2489 = !DILocation(line: 810, column: 7, scope: !2432)
!2490 = !DILocation(line: 811, column: 69, scope: !2432)
!2491 = !DILocation(line: 812, column: 53, scope: !2432)
!2492 = !DILocation(line: 813, column: 49, scope: !2432)
!2493 = !DILocation(line: 814, column: 49, scope: !2432)
!2494 = !DILocation(line: 811, column: 20, scope: !2432)
!2495 = !DILocation(line: 814, column: 62, scope: !2432)
!2496 = !DILocation(line: 811, column: 10, scope: !2432)
!2497 = !DILocation(line: 220, column: 20, scope: !2464, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 815, column: 15, scope: !2432)
!2499 = !DILocation(line: 222, column: 10, scope: !2464, inlinedAt: !2498)
!2500 = !DILocation(line: 815, column: 9, scope: !2432)
!2501 = !DILocation(line: 816, column: 60, scope: !2432)
!2502 = !DILocation(line: 818, column: 32, scope: !2432)
!2503 = !DILocation(line: 818, column: 47, scope: !2432)
!2504 = !DILocation(line: 816, column: 3, scope: !2432)
!2505 = !DILocation(line: 819, column: 9, scope: !2432)
!2506 = !DILocation(line: 820, column: 7, scope: !2432)
!2507 = !DILocation(line: 821, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2432, file: !178, line: 820, column: 7)
!2509 = !{!2510, !2510, i64 0}
!2510 = !{!"long", !668, i64 0}
!2511 = !DILocation(line: 821, column: 5, scope: !2508)
!2512 = !DILocation(line: 822, column: 3, scope: !2432)
!2513 = distinct !DISubprogram(name: "quotearg_free", scope: !178, file: !178, line: 840, type: !675, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2514)
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "sv", scope: !2513, file: !178, line: 842, type: !205)
!2516 = !DILocalVariable(name: "i", scope: !2513, file: !178, line: 843, type: !21)
!2517 = !DILocation(line: 842, column: 24, scope: !2513)
!2518 = !DILocation(line: 842, column: 19, scope: !2513)
!2519 = !DILocation(line: 843, column: 7, scope: !2513)
!2520 = !DILocation(line: 844, column: 19, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !178, line: 844, column: 3)
!2522 = distinct !DILexicalBlock(scope: !2513, file: !178, line: 844, column: 3)
!2523 = !DILocation(line: 844, column: 17, scope: !2521)
!2524 = !DILocation(line: 844, column: 3, scope: !2522)
!2525 = !DILocation(line: 845, column: 17, scope: !2521)
!2526 = !{!2527, !667, i64 8}
!2527 = !{!"slotvec", !2510, i64 0, !667, i64 8}
!2528 = !DILocation(line: 845, column: 5, scope: !2521)
!2529 = !DILocation(line: 844, column: 28, scope: !2521)
!2530 = distinct !{!2530, !2524, !2531}
!2531 = !DILocation(line: 845, column: 20, scope: !2522)
!2532 = !DILocation(line: 846, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2513, file: !178, line: 846, column: 7)
!2534 = !DILocation(line: 846, column: 17, scope: !2533)
!2535 = !DILocation(line: 846, column: 7, scope: !2513)
!2536 = !DILocation(line: 848, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !178, line: 847, column: 5)
!2538 = !DILocation(line: 849, column: 21, scope: !2537)
!2539 = !{!2527, !2510, i64 0}
!2540 = !DILocation(line: 850, column: 20, scope: !2537)
!2541 = !DILocation(line: 851, column: 5, scope: !2537)
!2542 = !DILocation(line: 852, column: 10, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2513, file: !178, line: 852, column: 7)
!2544 = !DILocation(line: 852, column: 7, scope: !2513)
!2545 = !DILocation(line: 854, column: 13, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !178, line: 853, column: 5)
!2547 = !DILocation(line: 854, column: 7, scope: !2546)
!2548 = !DILocation(line: 855, column: 15, scope: !2546)
!2549 = !DILocation(line: 856, column: 5, scope: !2546)
!2550 = !DILocation(line: 857, column: 10, scope: !2513)
!2551 = !DILocation(line: 858, column: 1, scope: !2513)
!2552 = distinct !DISubprogram(name: "quotearg_n", scope: !178, file: !178, line: 922, type: !2553, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!13, !21, !45}
!2555 = !{!2556, !2557}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2552, file: !178, line: 922, type: !21)
!2557 = !DILocalVariable(name: "arg", arg: 2, scope: !2552, file: !178, line: 922, type: !45)
!2558 = !DILocation(line: 922, column: 17, scope: !2552)
!2559 = !DILocation(line: 922, column: 32, scope: !2552)
!2560 = !DILocation(line: 924, column: 10, scope: !2552)
!2561 = !DILocation(line: 924, column: 3, scope: !2552)
!2562 = distinct !DISubprogram(name: "quotearg_n_options", scope: !178, file: !178, line: 869, type: !2563, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!13, !21, !45, !172, !1546}
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571, !2572, !2575, !2577, !2578, !2579}
!2566 = !DILocalVariable(name: "n", arg: 1, scope: !2562, file: !178, line: 869, type: !21)
!2567 = !DILocalVariable(name: "arg", arg: 2, scope: !2562, file: !178, line: 869, type: !45)
!2568 = !DILocalVariable(name: "argsize", arg: 3, scope: !2562, file: !178, line: 869, type: !172)
!2569 = !DILocalVariable(name: "options", arg: 4, scope: !2562, file: !178, line: 870, type: !1546)
!2570 = !DILocalVariable(name: "e", scope: !2562, file: !178, line: 872, type: !21)
!2571 = !DILocalVariable(name: "sv", scope: !2562, file: !178, line: 874, type: !205)
!2572 = !DILocalVariable(name: "preallocated", scope: !2573, file: !178, line: 881, type: !37)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !178, line: 880, column: 5)
!2574 = distinct !DILexicalBlock(scope: !2562, file: !178, line: 879, column: 7)
!2575 = !DILocalVariable(name: "size", scope: !2576, file: !178, line: 894, type: !172)
!2576 = distinct !DILexicalBlock(scope: !2562, file: !178, line: 893, column: 3)
!2577 = !DILocalVariable(name: "val", scope: !2576, file: !178, line: 895, type: !13)
!2578 = !DILocalVariable(name: "flags", scope: !2576, file: !178, line: 897, type: !21)
!2579 = !DILocalVariable(name: "qsize", scope: !2576, file: !178, line: 898, type: !172)
!2580 = !DILocation(line: 869, column: 25, scope: !2562)
!2581 = !DILocation(line: 869, column: 40, scope: !2562)
!2582 = !DILocation(line: 869, column: 52, scope: !2562)
!2583 = !DILocation(line: 870, column: 51, scope: !2562)
!2584 = !DILocation(line: 872, column: 11, scope: !2562)
!2585 = !DILocation(line: 872, column: 7, scope: !2562)
!2586 = !DILocation(line: 874, column: 24, scope: !2562)
!2587 = !DILocation(line: 874, column: 19, scope: !2562)
!2588 = !DILocation(line: 876, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2562, file: !178, line: 876, column: 7)
!2590 = !DILocation(line: 876, column: 7, scope: !2562)
!2591 = !DILocation(line: 877, column: 5, scope: !2589)
!2592 = !DILocation(line: 879, column: 7, scope: !2574)
!2593 = !DILocation(line: 879, column: 14, scope: !2574)
!2594 = !DILocation(line: 879, column: 7, scope: !2562)
!2595 = !DILocation(line: 881, column: 31, scope: !2573)
!2596 = !DILocation(line: 883, column: 67, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2573, file: !178, line: 883, column: 11)
!2598 = !DILocation(line: 883, column: 11, scope: !2573)
!2599 = !DILocation(line: 884, column: 9, scope: !2597)
!2600 = !DILocation(line: 886, column: 32, scope: !2573)
!2601 = !DILocation(line: 886, column: 61, scope: !2573)
!2602 = !DILocation(line: 886, column: 58, scope: !2573)
!2603 = !DILocation(line: 886, column: 66, scope: !2573)
!2604 = !DILocation(line: 886, column: 22, scope: !2573)
!2605 = !DILocation(line: 886, column: 15, scope: !2573)
!2606 = !DILocation(line: 887, column: 11, scope: !2573)
!2607 = !DILocation(line: 888, column: 15, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2573, file: !178, line: 887, column: 11)
!2609 = !{i64 0, i64 8, !2509, i64 8, i64 8, !666}
!2610 = !DILocation(line: 888, column: 9, scope: !2608)
!2611 = !DILocation(line: 889, column: 20, scope: !2573)
!2612 = !DILocation(line: 889, column: 18, scope: !2573)
!2613 = !DILocation(line: 889, column: 7, scope: !2573)
!2614 = !DILocation(line: 889, column: 38, scope: !2573)
!2615 = !DILocation(line: 889, column: 31, scope: !2573)
!2616 = !DILocation(line: 889, column: 48, scope: !2573)
!2617 = !DILocation(line: 890, column: 14, scope: !2573)
!2618 = !DILocation(line: 891, column: 5, scope: !2573)
!2619 = !DILocation(line: 894, column: 19, scope: !2576)
!2620 = !DILocation(line: 894, column: 25, scope: !2576)
!2621 = !DILocation(line: 894, column: 12, scope: !2576)
!2622 = !DILocation(line: 895, column: 23, scope: !2576)
!2623 = !DILocation(line: 895, column: 11, scope: !2576)
!2624 = !DILocation(line: 897, column: 26, scope: !2576)
!2625 = !DILocation(line: 897, column: 32, scope: !2576)
!2626 = !DILocation(line: 897, column: 9, scope: !2576)
!2627 = !DILocation(line: 899, column: 55, scope: !2576)
!2628 = !DILocation(line: 900, column: 46, scope: !2576)
!2629 = !DILocation(line: 901, column: 55, scope: !2576)
!2630 = !DILocation(line: 902, column: 55, scope: !2576)
!2631 = !DILocation(line: 898, column: 20, scope: !2576)
!2632 = !DILocation(line: 898, column: 12, scope: !2576)
!2633 = !DILocation(line: 904, column: 14, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2576, file: !178, line: 904, column: 9)
!2635 = !DILocation(line: 904, column: 9, scope: !2576)
!2636 = !DILocation(line: 906, column: 35, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2634, file: !178, line: 905, column: 7)
!2638 = !DILocation(line: 906, column: 20, scope: !2637)
!2639 = !DILocation(line: 907, column: 17, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !178, line: 907, column: 13)
!2641 = !DILocation(line: 907, column: 13, scope: !2637)
!2642 = !DILocation(line: 908, column: 11, scope: !2640)
!2643 = !DILocation(line: 220, column: 20, scope: !2464, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 909, column: 27, scope: !2637)
!2645 = !DILocation(line: 222, column: 10, scope: !2464, inlinedAt: !2644)
!2646 = !DILocation(line: 909, column: 19, scope: !2637)
!2647 = !DILocation(line: 910, column: 69, scope: !2637)
!2648 = !DILocation(line: 912, column: 44, scope: !2637)
!2649 = !DILocation(line: 913, column: 44, scope: !2637)
!2650 = !DILocation(line: 910, column: 9, scope: !2637)
!2651 = !DILocation(line: 914, column: 7, scope: !2637)
!2652 = !DILocation(line: 916, column: 11, scope: !2576)
!2653 = !DILocation(line: 917, column: 5, scope: !2576)
!2654 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !178, file: !178, line: 928, type: !2655, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!13, !21, !45, !172}
!2657 = !{!2658, !2659, !2660}
!2658 = !DILocalVariable(name: "n", arg: 1, scope: !2654, file: !178, line: 928, type: !21)
!2659 = !DILocalVariable(name: "arg", arg: 2, scope: !2654, file: !178, line: 928, type: !45)
!2660 = !DILocalVariable(name: "argsize", arg: 3, scope: !2654, file: !178, line: 928, type: !172)
!2661 = !DILocation(line: 928, column: 21, scope: !2654)
!2662 = !DILocation(line: 928, column: 36, scope: !2654)
!2663 = !DILocation(line: 928, column: 48, scope: !2654)
!2664 = !DILocation(line: 930, column: 10, scope: !2654)
!2665 = !DILocation(line: 930, column: 3, scope: !2654)
!2666 = distinct !DISubprogram(name: "quotearg", scope: !178, file: !178, line: 934, type: !2667, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!13, !45}
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !178, line: 934, type: !45)
!2671 = !DILocation(line: 934, column: 23, scope: !2666)
!2672 = !DILocation(line: 922, column: 17, scope: !2552, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 936, column: 10, scope: !2666)
!2674 = !DILocation(line: 922, column: 32, scope: !2552, inlinedAt: !2673)
!2675 = !DILocation(line: 924, column: 10, scope: !2552, inlinedAt: !2673)
!2676 = !DILocation(line: 936, column: 3, scope: !2666)
!2677 = distinct !DISubprogram(name: "quotearg_mem", scope: !178, file: !178, line: 940, type: !2678, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!13, !45, !172}
!2680 = !{!2681, !2682}
!2681 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !178, line: 940, type: !45)
!2682 = !DILocalVariable(name: "argsize", arg: 2, scope: !2677, file: !178, line: 940, type: !172)
!2683 = !DILocation(line: 940, column: 27, scope: !2677)
!2684 = !DILocation(line: 940, column: 39, scope: !2677)
!2685 = !DILocation(line: 928, column: 21, scope: !2654, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 942, column: 10, scope: !2677)
!2687 = !DILocation(line: 928, column: 36, scope: !2654, inlinedAt: !2686)
!2688 = !DILocation(line: 928, column: 48, scope: !2654, inlinedAt: !2686)
!2689 = !DILocation(line: 930, column: 10, scope: !2654, inlinedAt: !2686)
!2690 = !DILocation(line: 942, column: 3, scope: !2677)
!2691 = distinct !DISubprogram(name: "quotearg_n_style", scope: !178, file: !178, line: 946, type: !2692, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!13, !21, !137, !45}
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DILocalVariable(name: "n", arg: 1, scope: !2691, file: !178, line: 946, type: !21)
!2696 = !DILocalVariable(name: "s", arg: 2, scope: !2691, file: !178, line: 946, type: !137)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2691, file: !178, line: 946, type: !45)
!2698 = !DILocalVariable(name: "o", scope: !2691, file: !178, line: 948, type: !1547)
!2699 = !DILocalVariable(name: "o", scope: !2700, file: !178, line: 187, type: !185)
!2700 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !178, file: !178, line: 185, type: !2701, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!185, !137}
!2703 = !{!2704, !2699}
!2704 = !DILocalVariable(name: "style", arg: 1, scope: !2700, file: !178, line: 185, type: !137)
!2705 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2706 = !DILocation(line: 187, column: 26, scope: !2700, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 948, column: 36, scope: !2691)
!2708 = !DILocation(line: 946, column: 23, scope: !2691)
!2709 = !DILocation(line: 946, column: 45, scope: !2691)
!2710 = !DILocation(line: 946, column: 60, scope: !2691)
!2711 = !DILocation(line: 948, column: 3, scope: !2691)
!2712 = !DILocation(line: 948, column: 32, scope: !2691)
!2713 = !DILocation(line: 185, column: 48, scope: !2700, inlinedAt: !2707)
!2714 = !DILocation(line: 187, column: 3, scope: !2700, inlinedAt: !2707)
!2715 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2716 = !DILocation(line: 188, column: 13, scope: !2717, inlinedAt: !2707)
!2717 = distinct !DILexicalBlock(scope: !2700, file: !178, line: 188, column: 7)
!2718 = !DILocation(line: 188, column: 7, scope: !2700, inlinedAt: !2707)
!2719 = !DILocation(line: 189, column: 5, scope: !2717, inlinedAt: !2707)
!2720 = !{!2721}
!2721 = distinct !{!2721, !2722, !"quoting_options_from_style: argument 0"}
!2722 = distinct !{!2722, !"quoting_options_from_style"}
!2723 = !DILocation(line: 191, column: 10, scope: !2700, inlinedAt: !2707)
!2724 = !DILocation(line: 192, column: 1, scope: !2700, inlinedAt: !2707)
!2725 = !DILocation(line: 949, column: 10, scope: !2691)
!2726 = !DILocation(line: 950, column: 1, scope: !2691)
!2727 = !DILocation(line: 949, column: 3, scope: !2691)
!2728 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !178, file: !178, line: 953, type: !2729, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!13, !21, !137, !45, !172}
!2731 = !{!2732, !2733, !2734, !2735, !2736}
!2732 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !178, line: 953, type: !21)
!2733 = !DILocalVariable(name: "s", arg: 2, scope: !2728, file: !178, line: 953, type: !137)
!2734 = !DILocalVariable(name: "arg", arg: 3, scope: !2728, file: !178, line: 954, type: !45)
!2735 = !DILocalVariable(name: "argsize", arg: 4, scope: !2728, file: !178, line: 954, type: !172)
!2736 = !DILocalVariable(name: "o", scope: !2728, file: !178, line: 956, type: !1547)
!2737 = !DILocation(line: 187, column: 26, scope: !2700, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 956, column: 36, scope: !2728)
!2739 = !DILocation(line: 953, column: 27, scope: !2728)
!2740 = !DILocation(line: 953, column: 49, scope: !2728)
!2741 = !DILocation(line: 954, column: 35, scope: !2728)
!2742 = !DILocation(line: 954, column: 47, scope: !2728)
!2743 = !DILocation(line: 956, column: 3, scope: !2728)
!2744 = !DILocation(line: 956, column: 32, scope: !2728)
!2745 = !DILocation(line: 185, column: 48, scope: !2700, inlinedAt: !2738)
!2746 = !DILocation(line: 187, column: 3, scope: !2700, inlinedAt: !2738)
!2747 = !DILocation(line: 188, column: 13, scope: !2717, inlinedAt: !2738)
!2748 = !DILocation(line: 188, column: 7, scope: !2700, inlinedAt: !2738)
!2749 = !DILocation(line: 189, column: 5, scope: !2717, inlinedAt: !2738)
!2750 = !{!2751}
!2751 = distinct !{!2751, !2752, !"quoting_options_from_style: argument 0"}
!2752 = distinct !{!2752, !"quoting_options_from_style"}
!2753 = !DILocation(line: 191, column: 10, scope: !2700, inlinedAt: !2738)
!2754 = !DILocation(line: 192, column: 1, scope: !2700, inlinedAt: !2738)
!2755 = !DILocation(line: 957, column: 10, scope: !2728)
!2756 = !DILocation(line: 958, column: 1, scope: !2728)
!2757 = !DILocation(line: 957, column: 3, scope: !2728)
!2758 = distinct !DISubprogram(name: "quotearg_style", scope: !178, file: !178, line: 961, type: !2759, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!13, !137, !45}
!2761 = !{!2762, !2763}
!2762 = !DILocalVariable(name: "s", arg: 1, scope: !2758, file: !178, line: 961, type: !137)
!2763 = !DILocalVariable(name: "arg", arg: 2, scope: !2758, file: !178, line: 961, type: !45)
!2764 = !DILocation(line: 187, column: 26, scope: !2700, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 948, column: 36, scope: !2691, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 963, column: 10, scope: !2758)
!2767 = !DILocation(line: 961, column: 36, scope: !2758)
!2768 = !DILocation(line: 961, column: 51, scope: !2758)
!2769 = !DILocation(line: 946, column: 23, scope: !2691, inlinedAt: !2766)
!2770 = !DILocation(line: 946, column: 45, scope: !2691, inlinedAt: !2766)
!2771 = !DILocation(line: 946, column: 60, scope: !2691, inlinedAt: !2766)
!2772 = !DILocation(line: 948, column: 3, scope: !2691, inlinedAt: !2766)
!2773 = !DILocation(line: 948, column: 32, scope: !2691, inlinedAt: !2766)
!2774 = !DILocation(line: 185, column: 48, scope: !2700, inlinedAt: !2765)
!2775 = !DILocation(line: 187, column: 3, scope: !2700, inlinedAt: !2765)
!2776 = !DILocation(line: 188, column: 13, scope: !2717, inlinedAt: !2765)
!2777 = !DILocation(line: 188, column: 7, scope: !2700, inlinedAt: !2765)
!2778 = !DILocation(line: 189, column: 5, scope: !2717, inlinedAt: !2765)
!2779 = !{!2780}
!2780 = distinct !{!2780, !2781, !"quoting_options_from_style: argument 0"}
!2781 = distinct !{!2781, !"quoting_options_from_style"}
!2782 = !DILocation(line: 191, column: 10, scope: !2700, inlinedAt: !2765)
!2783 = !DILocation(line: 192, column: 1, scope: !2700, inlinedAt: !2765)
!2784 = !DILocation(line: 949, column: 10, scope: !2691, inlinedAt: !2766)
!2785 = !DILocation(line: 950, column: 1, scope: !2691, inlinedAt: !2766)
!2786 = !DILocation(line: 963, column: 3, scope: !2758)
!2787 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !178, file: !178, line: 967, type: !2788, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!13, !137, !45, !172}
!2790 = !{!2791, !2792, !2793}
!2791 = !DILocalVariable(name: "s", arg: 1, scope: !2787, file: !178, line: 967, type: !137)
!2792 = !DILocalVariable(name: "arg", arg: 2, scope: !2787, file: !178, line: 967, type: !45)
!2793 = !DILocalVariable(name: "argsize", arg: 3, scope: !2787, file: !178, line: 967, type: !172)
!2794 = !DILocation(line: 187, column: 26, scope: !2700, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 956, column: 36, scope: !2728, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 969, column: 10, scope: !2787)
!2797 = !DILocation(line: 967, column: 40, scope: !2787)
!2798 = !DILocation(line: 967, column: 55, scope: !2787)
!2799 = !DILocation(line: 967, column: 67, scope: !2787)
!2800 = !DILocation(line: 953, column: 27, scope: !2728, inlinedAt: !2796)
!2801 = !DILocation(line: 953, column: 49, scope: !2728, inlinedAt: !2796)
!2802 = !DILocation(line: 954, column: 35, scope: !2728, inlinedAt: !2796)
!2803 = !DILocation(line: 954, column: 47, scope: !2728, inlinedAt: !2796)
!2804 = !DILocation(line: 956, column: 3, scope: !2728, inlinedAt: !2796)
!2805 = !DILocation(line: 956, column: 32, scope: !2728, inlinedAt: !2796)
!2806 = !DILocation(line: 185, column: 48, scope: !2700, inlinedAt: !2795)
!2807 = !DILocation(line: 187, column: 3, scope: !2700, inlinedAt: !2795)
!2808 = !DILocation(line: 188, column: 13, scope: !2717, inlinedAt: !2795)
!2809 = !DILocation(line: 188, column: 7, scope: !2700, inlinedAt: !2795)
!2810 = !DILocation(line: 189, column: 5, scope: !2717, inlinedAt: !2795)
!2811 = !{!2812}
!2812 = distinct !{!2812, !2813, !"quoting_options_from_style: argument 0"}
!2813 = distinct !{!2813, !"quoting_options_from_style"}
!2814 = !DILocation(line: 191, column: 10, scope: !2700, inlinedAt: !2795)
!2815 = !DILocation(line: 192, column: 1, scope: !2700, inlinedAt: !2795)
!2816 = !DILocation(line: 957, column: 10, scope: !2728, inlinedAt: !2796)
!2817 = !DILocation(line: 958, column: 1, scope: !2728, inlinedAt: !2796)
!2818 = !DILocation(line: 969, column: 3, scope: !2787)
!2819 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !178, file: !178, line: 973, type: !2820, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!13, !45, !172, !14}
!2822 = !{!2823, !2824, !2825, !2826}
!2823 = !DILocalVariable(name: "arg", arg: 1, scope: !2819, file: !178, line: 973, type: !45)
!2824 = !DILocalVariable(name: "argsize", arg: 2, scope: !2819, file: !178, line: 973, type: !172)
!2825 = !DILocalVariable(name: "ch", arg: 3, scope: !2819, file: !178, line: 973, type: !14)
!2826 = !DILocalVariable(name: "options", scope: !2819, file: !178, line: 975, type: !185)
!2827 = !DILocation(line: 973, column: 32, scope: !2819)
!2828 = !DILocation(line: 973, column: 44, scope: !2819)
!2829 = !DILocation(line: 973, column: 58, scope: !2819)
!2830 = !DILocation(line: 975, column: 3, scope: !2819)
!2831 = !DILocation(line: 976, column: 13, scope: !2819)
!2832 = !{i64 0, i64 4, !898, i64 4, i64 4, !752, i64 8, i64 32, !898, i64 40, i64 8, !666, i64 48, i64 8, !666}
!2833 = !DILocation(line: 975, column: 26, scope: !2819)
!2834 = !DILocation(line: 144, column: 43, scope: !1568, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 977, column: 3, scope: !2819)
!2836 = !DILocation(line: 144, column: 51, scope: !1568, inlinedAt: !2835)
!2837 = !DILocation(line: 144, column: 58, scope: !1568, inlinedAt: !2835)
!2838 = !DILocation(line: 146, column: 17, scope: !1568, inlinedAt: !2835)
!2839 = !DILocation(line: 148, column: 62, scope: !1568, inlinedAt: !2835)
!2840 = !DILocation(line: 148, column: 57, scope: !1568, inlinedAt: !2835)
!2841 = !DILocation(line: 147, column: 17, scope: !1568, inlinedAt: !2835)
!2842 = !DILocation(line: 149, column: 18, scope: !1568, inlinedAt: !2835)
!2843 = !DILocation(line: 149, column: 15, scope: !1568, inlinedAt: !2835)
!2844 = !DILocation(line: 149, column: 7, scope: !1568, inlinedAt: !2835)
!2845 = !DILocation(line: 150, column: 12, scope: !1568, inlinedAt: !2835)
!2846 = !DILocation(line: 150, column: 15, scope: !1568, inlinedAt: !2835)
!2847 = !DILocation(line: 150, column: 25, scope: !1568, inlinedAt: !2835)
!2848 = !DILocation(line: 150, column: 7, scope: !1568, inlinedAt: !2835)
!2849 = !DILocation(line: 151, column: 18, scope: !1568, inlinedAt: !2835)
!2850 = !DILocation(line: 151, column: 23, scope: !1568, inlinedAt: !2835)
!2851 = !DILocation(line: 151, column: 6, scope: !1568, inlinedAt: !2835)
!2852 = !DILocation(line: 978, column: 10, scope: !2819)
!2853 = !DILocation(line: 979, column: 1, scope: !2819)
!2854 = !DILocation(line: 978, column: 3, scope: !2819)
!2855 = distinct !DISubprogram(name: "quotearg_char", scope: !178, file: !178, line: 982, type: !2856, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!13, !45, !14}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "arg", arg: 1, scope: !2855, file: !178, line: 982, type: !45)
!2860 = !DILocalVariable(name: "ch", arg: 2, scope: !2855, file: !178, line: 982, type: !14)
!2861 = !DILocation(line: 982, column: 28, scope: !2855)
!2862 = !DILocation(line: 982, column: 38, scope: !2855)
!2863 = !DILocation(line: 973, column: 32, scope: !2819, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 984, column: 10, scope: !2855)
!2865 = !DILocation(line: 973, column: 44, scope: !2819, inlinedAt: !2864)
!2866 = !DILocation(line: 973, column: 58, scope: !2819, inlinedAt: !2864)
!2867 = !DILocation(line: 975, column: 3, scope: !2819, inlinedAt: !2864)
!2868 = !DILocation(line: 976, column: 13, scope: !2819, inlinedAt: !2864)
!2869 = !DILocation(line: 975, column: 26, scope: !2819, inlinedAt: !2864)
!2870 = !DILocation(line: 144, column: 43, scope: !1568, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 977, column: 3, scope: !2819, inlinedAt: !2864)
!2872 = !DILocation(line: 144, column: 51, scope: !1568, inlinedAt: !2871)
!2873 = !DILocation(line: 144, column: 58, scope: !1568, inlinedAt: !2871)
!2874 = !DILocation(line: 146, column: 17, scope: !1568, inlinedAt: !2871)
!2875 = !DILocation(line: 148, column: 62, scope: !1568, inlinedAt: !2871)
!2876 = !DILocation(line: 148, column: 57, scope: !1568, inlinedAt: !2871)
!2877 = !DILocation(line: 147, column: 17, scope: !1568, inlinedAt: !2871)
!2878 = !DILocation(line: 149, column: 18, scope: !1568, inlinedAt: !2871)
!2879 = !DILocation(line: 149, column: 15, scope: !1568, inlinedAt: !2871)
!2880 = !DILocation(line: 149, column: 7, scope: !1568, inlinedAt: !2871)
!2881 = !DILocation(line: 150, column: 12, scope: !1568, inlinedAt: !2871)
!2882 = !DILocation(line: 150, column: 15, scope: !1568, inlinedAt: !2871)
!2883 = !DILocation(line: 150, column: 25, scope: !1568, inlinedAt: !2871)
!2884 = !DILocation(line: 150, column: 7, scope: !1568, inlinedAt: !2871)
!2885 = !DILocation(line: 151, column: 18, scope: !1568, inlinedAt: !2871)
!2886 = !DILocation(line: 151, column: 23, scope: !1568, inlinedAt: !2871)
!2887 = !DILocation(line: 151, column: 6, scope: !1568, inlinedAt: !2871)
!2888 = !DILocation(line: 978, column: 10, scope: !2819, inlinedAt: !2864)
!2889 = !DILocation(line: 979, column: 1, scope: !2819, inlinedAt: !2864)
!2890 = !DILocation(line: 984, column: 3, scope: !2855)
!2891 = distinct !DISubprogram(name: "quotearg_colon", scope: !178, file: !178, line: 988, type: !2667, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2892)
!2892 = !{!2893}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2891, file: !178, line: 988, type: !45)
!2894 = !DILocation(line: 988, column: 29, scope: !2891)
!2895 = !DILocation(line: 982, column: 28, scope: !2855, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 990, column: 10, scope: !2891)
!2897 = !DILocation(line: 982, column: 38, scope: !2855, inlinedAt: !2896)
!2898 = !DILocation(line: 973, column: 32, scope: !2819, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 984, column: 10, scope: !2855, inlinedAt: !2896)
!2900 = !DILocation(line: 973, column: 44, scope: !2819, inlinedAt: !2899)
!2901 = !DILocation(line: 973, column: 58, scope: !2819, inlinedAt: !2899)
!2902 = !DILocation(line: 975, column: 3, scope: !2819, inlinedAt: !2899)
!2903 = !DILocation(line: 976, column: 13, scope: !2819, inlinedAt: !2899)
!2904 = !DILocation(line: 975, column: 26, scope: !2819, inlinedAt: !2899)
!2905 = !DILocation(line: 144, column: 43, scope: !1568, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 977, column: 3, scope: !2819, inlinedAt: !2899)
!2907 = !DILocation(line: 144, column: 51, scope: !1568, inlinedAt: !2906)
!2908 = !DILocation(line: 144, column: 58, scope: !1568, inlinedAt: !2906)
!2909 = !DILocation(line: 146, column: 17, scope: !1568, inlinedAt: !2906)
!2910 = !DILocation(line: 148, column: 57, scope: !1568, inlinedAt: !2906)
!2911 = !DILocation(line: 147, column: 17, scope: !1568, inlinedAt: !2906)
!2912 = !DILocation(line: 149, column: 7, scope: !1568, inlinedAt: !2906)
!2913 = !DILocation(line: 150, column: 12, scope: !1568, inlinedAt: !2906)
!2914 = !DILocation(line: 151, column: 6, scope: !1568, inlinedAt: !2906)
!2915 = !DILocation(line: 978, column: 10, scope: !2819, inlinedAt: !2899)
!2916 = !DILocation(line: 979, column: 1, scope: !2819, inlinedAt: !2899)
!2917 = !DILocation(line: 990, column: 3, scope: !2891)
!2918 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !178, file: !178, line: 994, type: !2678, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2919)
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2918, file: !178, line: 994, type: !45)
!2921 = !DILocalVariable(name: "argsize", arg: 2, scope: !2918, file: !178, line: 994, type: !172)
!2922 = !DILocation(line: 994, column: 33, scope: !2918)
!2923 = !DILocation(line: 994, column: 45, scope: !2918)
!2924 = !DILocation(line: 973, column: 32, scope: !2819, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 996, column: 10, scope: !2918)
!2926 = !DILocation(line: 973, column: 44, scope: !2819, inlinedAt: !2925)
!2927 = !DILocation(line: 973, column: 58, scope: !2819, inlinedAt: !2925)
!2928 = !DILocation(line: 975, column: 3, scope: !2819, inlinedAt: !2925)
!2929 = !DILocation(line: 976, column: 13, scope: !2819, inlinedAt: !2925)
!2930 = !DILocation(line: 975, column: 26, scope: !2819, inlinedAt: !2925)
!2931 = !DILocation(line: 144, column: 43, scope: !1568, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 977, column: 3, scope: !2819, inlinedAt: !2925)
!2933 = !DILocation(line: 144, column: 51, scope: !1568, inlinedAt: !2932)
!2934 = !DILocation(line: 144, column: 58, scope: !1568, inlinedAt: !2932)
!2935 = !DILocation(line: 146, column: 17, scope: !1568, inlinedAt: !2932)
!2936 = !DILocation(line: 148, column: 57, scope: !1568, inlinedAt: !2932)
!2937 = !DILocation(line: 147, column: 17, scope: !1568, inlinedAt: !2932)
!2938 = !DILocation(line: 149, column: 7, scope: !1568, inlinedAt: !2932)
!2939 = !DILocation(line: 150, column: 12, scope: !1568, inlinedAt: !2932)
!2940 = !DILocation(line: 151, column: 6, scope: !1568, inlinedAt: !2932)
!2941 = !DILocation(line: 978, column: 10, scope: !2819, inlinedAt: !2925)
!2942 = !DILocation(line: 979, column: 1, scope: !2819, inlinedAt: !2925)
!2943 = !DILocation(line: 996, column: 3, scope: !2918)
!2944 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !178, file: !178, line: 1000, type: !2692, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2945)
!2945 = !{!2946, !2947, !2948, !2949}
!2946 = !DILocalVariable(name: "n", arg: 1, scope: !2944, file: !178, line: 1000, type: !21)
!2947 = !DILocalVariable(name: "s", arg: 2, scope: !2944, file: !178, line: 1000, type: !137)
!2948 = !DILocalVariable(name: "arg", arg: 3, scope: !2944, file: !178, line: 1000, type: !45)
!2949 = !DILocalVariable(name: "options", scope: !2944, file: !178, line: 1002, type: !185)
!2950 = !DILocation(line: 187, column: 26, scope: !2700, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1003, column: 13, scope: !2944)
!2952 = !DILocation(line: 1000, column: 29, scope: !2944)
!2953 = !DILocation(line: 1000, column: 51, scope: !2944)
!2954 = !DILocation(line: 1000, column: 66, scope: !2944)
!2955 = !DILocation(line: 1002, column: 3, scope: !2944)
!2956 = !DILocation(line: 185, column: 48, scope: !2700, inlinedAt: !2951)
!2957 = !DILocation(line: 187, column: 3, scope: !2700, inlinedAt: !2951)
!2958 = !DILocation(line: 188, column: 13, scope: !2717, inlinedAt: !2951)
!2959 = !DILocation(line: 188, column: 7, scope: !2700, inlinedAt: !2951)
!2960 = !DILocation(line: 189, column: 5, scope: !2717, inlinedAt: !2951)
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"quoting_options_from_style: argument 0"}
!2963 = distinct !{!2963, !"quoting_options_from_style"}
!2964 = !DILocation(line: 191, column: 10, scope: !2700, inlinedAt: !2951)
!2965 = !DILocation(line: 192, column: 1, scope: !2700, inlinedAt: !2951)
!2966 = !DILocation(line: 1003, column: 13, scope: !2944)
!2967 = !DILocation(line: 1002, column: 26, scope: !2944)
!2968 = !DILocation(line: 144, column: 43, scope: !1568, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1004, column: 3, scope: !2944)
!2970 = !DILocation(line: 144, column: 51, scope: !1568, inlinedAt: !2969)
!2971 = !DILocation(line: 144, column: 58, scope: !1568, inlinedAt: !2969)
!2972 = !DILocation(line: 146, column: 17, scope: !1568, inlinedAt: !2969)
!2973 = !DILocation(line: 148, column: 57, scope: !1568, inlinedAt: !2969)
!2974 = !DILocation(line: 147, column: 17, scope: !1568, inlinedAt: !2969)
!2975 = !DILocation(line: 149, column: 7, scope: !1568, inlinedAt: !2969)
!2976 = !DILocation(line: 150, column: 12, scope: !1568, inlinedAt: !2969)
!2977 = !DILocation(line: 151, column: 6, scope: !1568, inlinedAt: !2969)
!2978 = !DILocation(line: 1005, column: 10, scope: !2944)
!2979 = !DILocation(line: 1006, column: 1, scope: !2944)
!2980 = !DILocation(line: 1005, column: 3, scope: !2944)
!2981 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !178, file: !178, line: 1009, type: !2982, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!13, !21, !45, !45, !45}
!2984 = !{!2985, !2986, !2987, !2988}
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2981, file: !178, line: 1009, type: !21)
!2986 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2981, file: !178, line: 1009, type: !45)
!2987 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2981, file: !178, line: 1010, type: !45)
!2988 = !DILocalVariable(name: "arg", arg: 4, scope: !2981, file: !178, line: 1010, type: !45)
!2989 = !DILocation(line: 1009, column: 24, scope: !2981)
!2990 = !DILocation(line: 1009, column: 39, scope: !2981)
!2991 = !DILocation(line: 1010, column: 32, scope: !2981)
!2992 = !DILocation(line: 1010, column: 57, scope: !2981)
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !178, line: 1017, type: !21)
!2994 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !178, file: !178, line: 1017, type: !2995, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!13, !21, !45, !45, !45, !172}
!2997 = !{!2993, !2998, !2999, !3000, !3001, !3002}
!2998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2994, file: !178, line: 1017, type: !45)
!2999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2994, file: !178, line: 1018, type: !45)
!3000 = !DILocalVariable(name: "arg", arg: 4, scope: !2994, file: !178, line: 1019, type: !45)
!3001 = !DILocalVariable(name: "argsize", arg: 5, scope: !2994, file: !178, line: 1019, type: !172)
!3002 = !DILocalVariable(name: "o", scope: !2994, file: !178, line: 1021, type: !185)
!3003 = !DILocation(line: 1017, column: 28, scope: !2994, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 1012, column: 10, scope: !2981)
!3005 = !DILocation(line: 1017, column: 43, scope: !2994, inlinedAt: !3004)
!3006 = !DILocation(line: 1018, column: 36, scope: !2994, inlinedAt: !3004)
!3007 = !DILocation(line: 1019, column: 36, scope: !2994, inlinedAt: !3004)
!3008 = !DILocation(line: 1019, column: 48, scope: !2994, inlinedAt: !3004)
!3009 = !DILocation(line: 1021, column: 3, scope: !2994, inlinedAt: !3004)
!3010 = !DILocation(line: 1021, column: 30, scope: !2994, inlinedAt: !3004)
!3011 = !DILocation(line: 1021, column: 26, scope: !2994, inlinedAt: !3004)
!3012 = !DILocation(line: 171, column: 45, scope: !1617, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 1022, column: 3, scope: !2994, inlinedAt: !3004)
!3014 = !DILocation(line: 172, column: 33, scope: !1617, inlinedAt: !3013)
!3015 = !DILocation(line: 172, column: 57, scope: !1617, inlinedAt: !3013)
!3016 = !DILocation(line: 176, column: 6, scope: !1617, inlinedAt: !3013)
!3017 = !DILocation(line: 176, column: 12, scope: !1617, inlinedAt: !3013)
!3018 = !DILocation(line: 177, column: 8, scope: !1633, inlinedAt: !3013)
!3019 = !DILocation(line: 177, column: 23, scope: !1633, inlinedAt: !3013)
!3020 = !DILocation(line: 177, column: 19, scope: !1633, inlinedAt: !3013)
!3021 = !DILocation(line: 178, column: 5, scope: !1633, inlinedAt: !3013)
!3022 = !DILocation(line: 179, column: 6, scope: !1617, inlinedAt: !3013)
!3023 = !DILocation(line: 179, column: 17, scope: !1617, inlinedAt: !3013)
!3024 = !DILocation(line: 180, column: 6, scope: !1617, inlinedAt: !3013)
!3025 = !DILocation(line: 180, column: 18, scope: !1617, inlinedAt: !3013)
!3026 = !DILocation(line: 1023, column: 10, scope: !2994, inlinedAt: !3004)
!3027 = !DILocation(line: 1024, column: 1, scope: !2994, inlinedAt: !3004)
!3028 = !DILocation(line: 1012, column: 3, scope: !2981)
!3029 = !DILocation(line: 1017, column: 28, scope: !2994)
!3030 = !DILocation(line: 1017, column: 43, scope: !2994)
!3031 = !DILocation(line: 1018, column: 36, scope: !2994)
!3032 = !DILocation(line: 1019, column: 36, scope: !2994)
!3033 = !DILocation(line: 1019, column: 48, scope: !2994)
!3034 = !DILocation(line: 1021, column: 3, scope: !2994)
!3035 = !DILocation(line: 1021, column: 30, scope: !2994)
!3036 = !DILocation(line: 1021, column: 26, scope: !2994)
!3037 = !DILocation(line: 171, column: 45, scope: !1617, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1022, column: 3, scope: !2994)
!3039 = !DILocation(line: 172, column: 33, scope: !1617, inlinedAt: !3038)
!3040 = !DILocation(line: 172, column: 57, scope: !1617, inlinedAt: !3038)
!3041 = !DILocation(line: 176, column: 6, scope: !1617, inlinedAt: !3038)
!3042 = !DILocation(line: 176, column: 12, scope: !1617, inlinedAt: !3038)
!3043 = !DILocation(line: 177, column: 8, scope: !1633, inlinedAt: !3038)
!3044 = !DILocation(line: 177, column: 23, scope: !1633, inlinedAt: !3038)
!3045 = !DILocation(line: 177, column: 19, scope: !1633, inlinedAt: !3038)
!3046 = !DILocation(line: 178, column: 5, scope: !1633, inlinedAt: !3038)
!3047 = !DILocation(line: 179, column: 6, scope: !1617, inlinedAt: !3038)
!3048 = !DILocation(line: 179, column: 17, scope: !1617, inlinedAt: !3038)
!3049 = !DILocation(line: 180, column: 6, scope: !1617, inlinedAt: !3038)
!3050 = !DILocation(line: 180, column: 18, scope: !1617, inlinedAt: !3038)
!3051 = !DILocation(line: 1023, column: 10, scope: !2994)
!3052 = !DILocation(line: 1024, column: 1, scope: !2994)
!3053 = !DILocation(line: 1023, column: 3, scope: !2994)
!3054 = distinct !DISubprogram(name: "quotearg_custom", scope: !178, file: !178, line: 1027, type: !3055, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!13, !45, !45, !45}
!3057 = !{!3058, !3059, !3060}
!3058 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3054, file: !178, line: 1027, type: !45)
!3059 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3054, file: !178, line: 1027, type: !45)
!3060 = !DILocalVariable(name: "arg", arg: 3, scope: !3054, file: !178, line: 1028, type: !45)
!3061 = !DILocation(line: 1027, column: 30, scope: !3054)
!3062 = !DILocation(line: 1027, column: 54, scope: !3054)
!3063 = !DILocation(line: 1028, column: 30, scope: !3054)
!3064 = !DILocation(line: 1009, column: 24, scope: !2981, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1030, column: 10, scope: !3054)
!3066 = !DILocation(line: 1009, column: 39, scope: !2981, inlinedAt: !3065)
!3067 = !DILocation(line: 1010, column: 32, scope: !2981, inlinedAt: !3065)
!3068 = !DILocation(line: 1010, column: 57, scope: !2981, inlinedAt: !3065)
!3069 = !DILocation(line: 1017, column: 28, scope: !2994, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1012, column: 10, scope: !2981, inlinedAt: !3065)
!3071 = !DILocation(line: 1017, column: 43, scope: !2994, inlinedAt: !3070)
!3072 = !DILocation(line: 1018, column: 36, scope: !2994, inlinedAt: !3070)
!3073 = !DILocation(line: 1019, column: 36, scope: !2994, inlinedAt: !3070)
!3074 = !DILocation(line: 1019, column: 48, scope: !2994, inlinedAt: !3070)
!3075 = !DILocation(line: 1021, column: 3, scope: !2994, inlinedAt: !3070)
!3076 = !DILocation(line: 1021, column: 30, scope: !2994, inlinedAt: !3070)
!3077 = !DILocation(line: 1021, column: 26, scope: !2994, inlinedAt: !3070)
!3078 = !DILocation(line: 171, column: 45, scope: !1617, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1022, column: 3, scope: !2994, inlinedAt: !3070)
!3080 = !DILocation(line: 172, column: 33, scope: !1617, inlinedAt: !3079)
!3081 = !DILocation(line: 172, column: 57, scope: !1617, inlinedAt: !3079)
!3082 = !DILocation(line: 176, column: 6, scope: !1617, inlinedAt: !3079)
!3083 = !DILocation(line: 176, column: 12, scope: !1617, inlinedAt: !3079)
!3084 = !DILocation(line: 177, column: 8, scope: !1633, inlinedAt: !3079)
!3085 = !DILocation(line: 177, column: 23, scope: !1633, inlinedAt: !3079)
!3086 = !DILocation(line: 177, column: 19, scope: !1633, inlinedAt: !3079)
!3087 = !DILocation(line: 178, column: 5, scope: !1633, inlinedAt: !3079)
!3088 = !DILocation(line: 179, column: 6, scope: !1617, inlinedAt: !3079)
!3089 = !DILocation(line: 179, column: 17, scope: !1617, inlinedAt: !3079)
!3090 = !DILocation(line: 180, column: 6, scope: !1617, inlinedAt: !3079)
!3091 = !DILocation(line: 180, column: 18, scope: !1617, inlinedAt: !3079)
!3092 = !DILocation(line: 1023, column: 10, scope: !2994, inlinedAt: !3070)
!3093 = !DILocation(line: 1024, column: 1, scope: !2994, inlinedAt: !3070)
!3094 = !DILocation(line: 1030, column: 3, scope: !3054)
!3095 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !178, file: !178, line: 1034, type: !3096, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!13, !45, !45, !45, !172}
!3098 = !{!3099, !3100, !3101, !3102}
!3099 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3095, file: !178, line: 1034, type: !45)
!3100 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3095, file: !178, line: 1034, type: !45)
!3101 = !DILocalVariable(name: "arg", arg: 3, scope: !3095, file: !178, line: 1035, type: !45)
!3102 = !DILocalVariable(name: "argsize", arg: 4, scope: !3095, file: !178, line: 1035, type: !172)
!3103 = !DILocation(line: 1034, column: 34, scope: !3095)
!3104 = !DILocation(line: 1034, column: 58, scope: !3095)
!3105 = !DILocation(line: 1035, column: 34, scope: !3095)
!3106 = !DILocation(line: 1035, column: 46, scope: !3095)
!3107 = !DILocation(line: 1017, column: 28, scope: !2994, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 1037, column: 10, scope: !3095)
!3109 = !DILocation(line: 1017, column: 43, scope: !2994, inlinedAt: !3108)
!3110 = !DILocation(line: 1018, column: 36, scope: !2994, inlinedAt: !3108)
!3111 = !DILocation(line: 1019, column: 36, scope: !2994, inlinedAt: !3108)
!3112 = !DILocation(line: 1019, column: 48, scope: !2994, inlinedAt: !3108)
!3113 = !DILocation(line: 1021, column: 3, scope: !2994, inlinedAt: !3108)
!3114 = !DILocation(line: 1021, column: 30, scope: !2994, inlinedAt: !3108)
!3115 = !DILocation(line: 1021, column: 26, scope: !2994, inlinedAt: !3108)
!3116 = !DILocation(line: 171, column: 45, scope: !1617, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1022, column: 3, scope: !2994, inlinedAt: !3108)
!3118 = !DILocation(line: 172, column: 33, scope: !1617, inlinedAt: !3117)
!3119 = !DILocation(line: 172, column: 57, scope: !1617, inlinedAt: !3117)
!3120 = !DILocation(line: 176, column: 6, scope: !1617, inlinedAt: !3117)
!3121 = !DILocation(line: 176, column: 12, scope: !1617, inlinedAt: !3117)
!3122 = !DILocation(line: 177, column: 8, scope: !1633, inlinedAt: !3117)
!3123 = !DILocation(line: 177, column: 23, scope: !1633, inlinedAt: !3117)
!3124 = !DILocation(line: 177, column: 19, scope: !1633, inlinedAt: !3117)
!3125 = !DILocation(line: 178, column: 5, scope: !1633, inlinedAt: !3117)
!3126 = !DILocation(line: 179, column: 6, scope: !1617, inlinedAt: !3117)
!3127 = !DILocation(line: 179, column: 17, scope: !1617, inlinedAt: !3117)
!3128 = !DILocation(line: 180, column: 6, scope: !1617, inlinedAt: !3117)
!3129 = !DILocation(line: 180, column: 18, scope: !1617, inlinedAt: !3117)
!3130 = !DILocation(line: 1023, column: 10, scope: !2994, inlinedAt: !3108)
!3131 = !DILocation(line: 1024, column: 1, scope: !2994, inlinedAt: !3108)
!3132 = !DILocation(line: 1037, column: 3, scope: !3095)
!3133 = distinct !DISubprogram(name: "quote_n_mem", scope: !178, file: !178, line: 1052, type: !3134, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!45, !21, !45, !172}
!3136 = !{!3137, !3138, !3139}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !178, line: 1052, type: !21)
!3138 = !DILocalVariable(name: "arg", arg: 2, scope: !3133, file: !178, line: 1052, type: !45)
!3139 = !DILocalVariable(name: "argsize", arg: 3, scope: !3133, file: !178, line: 1052, type: !172)
!3140 = !DILocation(line: 1052, column: 18, scope: !3133)
!3141 = !DILocation(line: 1052, column: 33, scope: !3133)
!3142 = !DILocation(line: 1052, column: 45, scope: !3133)
!3143 = !DILocation(line: 1054, column: 10, scope: !3133)
!3144 = !DILocation(line: 1054, column: 3, scope: !3133)
!3145 = distinct !DISubprogram(name: "quote_mem", scope: !178, file: !178, line: 1058, type: !3146, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!45, !45, !172}
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3145, file: !178, line: 1058, type: !45)
!3150 = !DILocalVariable(name: "argsize", arg: 2, scope: !3145, file: !178, line: 1058, type: !172)
!3151 = !DILocation(line: 1058, column: 24, scope: !3145)
!3152 = !DILocation(line: 1058, column: 36, scope: !3145)
!3153 = !DILocation(line: 1052, column: 18, scope: !3133, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1060, column: 10, scope: !3145)
!3155 = !DILocation(line: 1052, column: 33, scope: !3133, inlinedAt: !3154)
!3156 = !DILocation(line: 1052, column: 45, scope: !3133, inlinedAt: !3154)
!3157 = !DILocation(line: 1054, column: 10, scope: !3133, inlinedAt: !3154)
!3158 = !DILocation(line: 1060, column: 3, scope: !3145)
!3159 = distinct !DISubprogram(name: "quote_n", scope: !178, file: !178, line: 1064, type: !3160, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!45, !21, !45}
!3162 = !{!3163, !3164}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !178, line: 1064, type: !21)
!3164 = !DILocalVariable(name: "arg", arg: 2, scope: !3159, file: !178, line: 1064, type: !45)
!3165 = !DILocation(line: 1064, column: 14, scope: !3159)
!3166 = !DILocation(line: 1064, column: 29, scope: !3159)
!3167 = !DILocation(line: 1052, column: 18, scope: !3133, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1066, column: 10, scope: !3159)
!3169 = !DILocation(line: 1052, column: 33, scope: !3133, inlinedAt: !3168)
!3170 = !DILocation(line: 1052, column: 45, scope: !3133, inlinedAt: !3168)
!3171 = !DILocation(line: 1054, column: 10, scope: !3133, inlinedAt: !3168)
!3172 = !DILocation(line: 1066, column: 3, scope: !3159)
!3173 = distinct !DISubprogram(name: "quote", scope: !178, file: !178, line: 1070, type: !3174, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !134, variables: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!45, !45}
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "arg", arg: 1, scope: !3173, file: !178, line: 1070, type: !45)
!3178 = !DILocation(line: 1070, column: 20, scope: !3173)
!3179 = !DILocation(line: 1064, column: 14, scope: !3159, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1072, column: 10, scope: !3173)
!3181 = !DILocation(line: 1064, column: 29, scope: !3159, inlinedAt: !3180)
!3182 = !DILocation(line: 1052, column: 18, scope: !3133, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1066, column: 10, scope: !3159, inlinedAt: !3180)
!3184 = !DILocation(line: 1052, column: 33, scope: !3133, inlinedAt: !3183)
!3185 = !DILocation(line: 1052, column: 45, scope: !3133, inlinedAt: !3183)
!3186 = !DILocation(line: 1054, column: 10, scope: !3133, inlinedAt: !3183)
!3187 = !DILocation(line: 1072, column: 3, scope: !3173)
!3188 = distinct !DISubprogram(name: "version_etc_arn", scope: !610, file: !610, line: 62, type: !3189, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3244)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !3191, !45, !45, !45, !3243, !172}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3193, line: 7, baseType: !3194)
!3193 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3195, line: 241, size: 1728, elements: !3196)
!3195 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3217, !3218, !3219, !3220, !3222, !3223, !3224, !3228, !3231, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3194, file: !3195, line: 242, baseType: !21, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3194, file: !3195, line: 247, baseType: !13, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3194, file: !3195, line: 248, baseType: !13, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3194, file: !3195, line: 249, baseType: !13, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3194, file: !3195, line: 250, baseType: !13, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3194, file: !3195, line: 251, baseType: !13, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3194, file: !3195, line: 252, baseType: !13, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3194, file: !3195, line: 253, baseType: !13, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3194, file: !3195, line: 254, baseType: !13, size: 64, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3194, file: !3195, line: 256, baseType: !13, size: 64, offset: 576)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3194, file: !3195, line: 257, baseType: !13, size: 64, offset: 640)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3194, file: !3195, line: 258, baseType: !13, size: 64, offset: 704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3194, file: !3195, line: 260, baseType: !3210, size: 64, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3195, line: 156, size: 192, elements: !3212)
!3212 = !{!3213, !3214, !3216}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3211, file: !3195, line: 157, baseType: !3210, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3211, file: !3195, line: 158, baseType: !3215, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3211, file: !3195, line: 162, baseType: !21, size: 32, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3194, file: !3195, line: 262, baseType: !3215, size: 64, offset: 832)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3194, file: !3195, line: 264, baseType: !21, size: 32, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3194, file: !3195, line: 268, baseType: !21, size: 32, offset: 928)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3194, file: !3195, line: 270, baseType: !3221, size: 64, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !31, line: 140, baseType: !605)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3194, file: !3195, line: 274, baseType: !100, size: 16, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3194, file: !3195, line: 275, baseType: !22, size: 8, offset: 1040)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3194, file: !3195, line: 276, baseType: !3225, size: 8, offset: 1048)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !3226)
!3226 = !{!3227}
!3227 = !DISubrange(count: 1)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3194, file: !3195, line: 280, baseType: !3229, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3195, line: 150, baseType: null)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3194, file: !3195, line: 289, baseType: !3232, size: 64, offset: 1152)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !31, line: 141, baseType: !605)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3194, file: !3195, line: 297, baseType: !15, size: 64, offset: 1216)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3194, file: !3195, line: 298, baseType: !15, size: 64, offset: 1280)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3194, file: !3195, line: 299, baseType: !15, size: 64, offset: 1344)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3194, file: !3195, line: 300, baseType: !15, size: 64, offset: 1408)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3194, file: !3195, line: 302, baseType: !172, size: 64, offset: 1472)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3194, file: !3195, line: 303, baseType: !21, size: 32, offset: 1536)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3194, file: !3195, line: 305, baseType: !3240, size: 160, offset: 1568)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !3241)
!3241 = !{!3242}
!3242 = !DISubrange(count: 20)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250}
!3245 = !DILocalVariable(name: "stream", arg: 1, scope: !3188, file: !610, line: 62, type: !3191)
!3246 = !DILocalVariable(name: "command_name", arg: 2, scope: !3188, file: !610, line: 63, type: !45)
!3247 = !DILocalVariable(name: "package", arg: 3, scope: !3188, file: !610, line: 63, type: !45)
!3248 = !DILocalVariable(name: "version", arg: 4, scope: !3188, file: !610, line: 64, type: !45)
!3249 = !DILocalVariable(name: "authors", arg: 5, scope: !3188, file: !610, line: 65, type: !3243)
!3250 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3188, file: !610, line: 65, type: !172)
!3251 = !DILocation(line: 62, column: 24, scope: !3188)
!3252 = !DILocation(line: 63, column: 30, scope: !3188)
!3253 = !DILocation(line: 63, column: 56, scope: !3188)
!3254 = !DILocation(line: 64, column: 30, scope: !3188)
!3255 = !DILocation(line: 65, column: 39, scope: !3188)
!3256 = !DILocation(line: 65, column: 55, scope: !3188)
!3257 = !DILocation(line: 67, column: 7, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3188, file: !610, line: 67, column: 7)
!3259 = !DILocation(line: 67, column: 7, scope: !3188)
!3260 = !DILocation(line: 68, column: 5, scope: !3258)
!3261 = !DILocation(line: 70, column: 5, scope: !3258)
!3262 = !DILocation(line: 84, column: 3, scope: !3188)
!3263 = !DILocation(line: 86, column: 3, scope: !3188)
!3264 = !DILocation(line: 95, column: 3, scope: !3188)
!3265 = !DILocation(line: 99, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3188, file: !610, line: 96, column: 5)
!3267 = !DILocation(line: 102, column: 7, scope: !3266)
!3268 = !DILocation(line: 103, column: 7, scope: !3266)
!3269 = !DILocation(line: 106, column: 7, scope: !3266)
!3270 = !DILocation(line: 107, column: 7, scope: !3266)
!3271 = !DILocation(line: 110, column: 7, scope: !3266)
!3272 = !DILocation(line: 112, column: 7, scope: !3266)
!3273 = !DILocation(line: 117, column: 7, scope: !3266)
!3274 = !DILocation(line: 119, column: 7, scope: !3266)
!3275 = !DILocation(line: 124, column: 7, scope: !3266)
!3276 = !DILocation(line: 126, column: 7, scope: !3266)
!3277 = !DILocation(line: 131, column: 7, scope: !3266)
!3278 = !DILocation(line: 134, column: 7, scope: !3266)
!3279 = !DILocation(line: 139, column: 7, scope: !3266)
!3280 = !DILocation(line: 142, column: 7, scope: !3266)
!3281 = !DILocation(line: 147, column: 7, scope: !3266)
!3282 = !DILocation(line: 151, column: 7, scope: !3266)
!3283 = !DILocation(line: 156, column: 7, scope: !3266)
!3284 = !DILocation(line: 160, column: 7, scope: !3266)
!3285 = !DILocation(line: 167, column: 7, scope: !3266)
!3286 = !DILocation(line: 171, column: 7, scope: !3266)
!3287 = !DILocation(line: 173, column: 1, scope: !3188)
!3288 = distinct !DISubprogram(name: "version_etc_ar", scope: !610, file: !610, line: 180, type: !3289, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3191, !45, !45, !45, !3243}
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3297}
!3292 = !DILocalVariable(name: "stream", arg: 1, scope: !3288, file: !610, line: 180, type: !3191)
!3293 = !DILocalVariable(name: "command_name", arg: 2, scope: !3288, file: !610, line: 181, type: !45)
!3294 = !DILocalVariable(name: "package", arg: 3, scope: !3288, file: !610, line: 181, type: !45)
!3295 = !DILocalVariable(name: "version", arg: 4, scope: !3288, file: !610, line: 182, type: !45)
!3296 = !DILocalVariable(name: "authors", arg: 5, scope: !3288, file: !610, line: 182, type: !3243)
!3297 = !DILocalVariable(name: "n_authors", scope: !3288, file: !610, line: 184, type: !172)
!3298 = !DILocation(line: 180, column: 23, scope: !3288)
!3299 = !DILocation(line: 181, column: 29, scope: !3288)
!3300 = !DILocation(line: 181, column: 55, scope: !3288)
!3301 = !DILocation(line: 182, column: 29, scope: !3288)
!3302 = !DILocation(line: 182, column: 59, scope: !3288)
!3303 = !DILocation(line: 184, column: 10, scope: !3288)
!3304 = !DILocation(line: 186, column: 8, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3288, file: !610, line: 186, column: 3)
!3306 = !DILocation(line: 186, column: 23, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3305, file: !610, line: 186, column: 3)
!3308 = !DILocation(line: 186, column: 3, scope: !3305)
!3309 = !DILocation(line: 186, column: 52, scope: !3307)
!3310 = distinct !{!3310, !3308, !3311}
!3311 = !DILocation(line: 187, column: 5, scope: !3305)
!3312 = !DILocation(line: 188, column: 3, scope: !3288)
!3313 = !DILocation(line: 189, column: 1, scope: !3288)
!3314 = distinct !DISubprogram(name: "version_etc_va", scope: !610, file: !610, line: 196, type: !3315, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3324)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !3191, !45, !45, !45, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !607, line: 189, size: 192, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3318, file: !607, line: 189, baseType: !191, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3318, file: !607, line: 189, baseType: !191, size: 32, offset: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3318, file: !607, line: 189, baseType: !15, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3318, file: !607, line: 189, baseType: !15, size: 64, offset: 128)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331}
!3325 = !DILocalVariable(name: "stream", arg: 1, scope: !3314, file: !610, line: 196, type: !3191)
!3326 = !DILocalVariable(name: "command_name", arg: 2, scope: !3314, file: !610, line: 197, type: !45)
!3327 = !DILocalVariable(name: "package", arg: 3, scope: !3314, file: !610, line: 197, type: !45)
!3328 = !DILocalVariable(name: "version", arg: 4, scope: !3314, file: !610, line: 198, type: !45)
!3329 = !DILocalVariable(name: "authors", arg: 5, scope: !3314, file: !610, line: 198, type: !3317)
!3330 = !DILocalVariable(name: "n_authors", scope: !3314, file: !610, line: 200, type: !172)
!3331 = !DILocalVariable(name: "authtab", scope: !3314, file: !610, line: 201, type: !3332)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !181)
!3333 = !DILocation(line: 196, column: 23, scope: !3314)
!3334 = !DILocation(line: 197, column: 29, scope: !3314)
!3335 = !DILocation(line: 197, column: 55, scope: !3314)
!3336 = !DILocation(line: 198, column: 29, scope: !3314)
!3337 = !DILocation(line: 198, column: 46, scope: !3314)
!3338 = !DILocation(line: 201, column: 3, scope: !3314)
!3339 = !DILocation(line: 201, column: 15, scope: !3314)
!3340 = !DILocation(line: 200, column: 10, scope: !3314)
!3341 = !DILocation(line: 205, column: 35, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !610, line: 203, column: 3)
!3343 = distinct !DILexicalBlock(scope: !3314, file: !610, line: 203, column: 3)
!3344 = !DILocation(line: 205, column: 14, scope: !3342)
!3345 = !DILocation(line: 205, column: 33, scope: !3342)
!3346 = !DILocation(line: 205, column: 67, scope: !3342)
!3347 = !DILocation(line: 203, column: 3, scope: !3343)
!3348 = !DILocation(line: 208, column: 3, scope: !3314)
!3349 = !DILocation(line: 210, column: 1, scope: !3314)
!3350 = distinct !DISubprogram(name: "version_etc", scope: !610, file: !610, line: 227, type: !3351, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !3191, !45, !45, !45, null}
!3353 = !{!3354, !3355, !3356, !3357, !3358}
!3354 = !DILocalVariable(name: "stream", arg: 1, scope: !3350, file: !610, line: 227, type: !3191)
!3355 = !DILocalVariable(name: "command_name", arg: 2, scope: !3350, file: !610, line: 228, type: !45)
!3356 = !DILocalVariable(name: "package", arg: 3, scope: !3350, file: !610, line: 228, type: !45)
!3357 = !DILocalVariable(name: "version", arg: 4, scope: !3350, file: !610, line: 229, type: !45)
!3358 = !DILocalVariable(name: "authors", scope: !3350, file: !610, line: 231, type: !3359)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3360, line: 46, baseType: !3361)
!3360 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3362, line: 48, baseType: !3363)
!3362 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !607, line: 231, baseType: !3364)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3318, size: 192, elements: !3226)
!3365 = !DILocation(line: 227, column: 20, scope: !3350)
!3366 = !DILocation(line: 228, column: 26, scope: !3350)
!3367 = !DILocation(line: 228, column: 52, scope: !3350)
!3368 = !DILocation(line: 229, column: 26, scope: !3350)
!3369 = !DILocation(line: 231, column: 3, scope: !3350)
!3370 = !DILocation(line: 231, column: 11, scope: !3350)
!3371 = !DILocation(line: 233, column: 3, scope: !3350)
!3372 = !DILocation(line: 234, column: 3, scope: !3350)
!3373 = !DILocation(line: 235, column: 3, scope: !3350)
!3374 = !DILocation(line: 236, column: 1, scope: !3350)
!3375 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !610, file: !610, line: 239, type: !675, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !77)
!3376 = !DILocation(line: 245, column: 3, scope: !3375)
!3377 = !DILocation(line: 251, column: 3, scope: !3375)
!3378 = !DILocation(line: 256, column: 3, scope: !3375)
!3379 = !DILocation(line: 258, column: 1, scope: !3375)
!3380 = distinct !DISubprogram(name: "xnmalloc", scope: !618, file: !618, line: 105, type: !3381, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!15, !172, !172}
!3383 = !{!3384, !3385}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !618, line: 105, type: !172)
!3385 = !DILocalVariable(name: "s", arg: 2, scope: !3380, file: !618, line: 105, type: !172)
!3386 = !DILocation(line: 105, column: 18, scope: !3380)
!3387 = !DILocation(line: 105, column: 28, scope: !3380)
!3388 = !DILocation(line: 107, column: 7, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3380, file: !618, line: 107, column: 7)
!3390 = !DILocation(line: 107, column: 7, scope: !3380)
!3391 = !DILocation(line: 108, column: 5, scope: !3389)
!3392 = !DILocation(line: 109, column: 21, scope: !3380)
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !3395, line: 39, type: !172)
!3394 = distinct !DISubprogram(name: "xmalloc", scope: !3395, file: !3395, line: 39, type: !3396, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3398)
!3395 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!15, !172}
!3398 = !{!3393, !3399}
!3399 = !DILocalVariable(name: "p", scope: !3394, file: !3395, line: 41, type: !15)
!3400 = !DILocation(line: 39, column: 17, scope: !3394, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 109, column: 10, scope: !3380)
!3402 = !DILocation(line: 41, column: 13, scope: !3394, inlinedAt: !3401)
!3403 = !DILocation(line: 41, column: 9, scope: !3394, inlinedAt: !3401)
!3404 = !DILocation(line: 42, column: 8, scope: !3405, inlinedAt: !3401)
!3405 = distinct !DILexicalBlock(scope: !3394, file: !3395, line: 42, column: 7)
!3406 = !DILocation(line: 42, column: 15, scope: !3405, inlinedAt: !3401)
!3407 = !DILocation(line: 42, column: 10, scope: !3405, inlinedAt: !3401)
!3408 = !DILocation(line: 43, column: 5, scope: !3405, inlinedAt: !3401)
!3409 = !DILocation(line: 109, column: 3, scope: !3380)
!3410 = !DILocation(line: 39, column: 17, scope: !3394)
!3411 = !DILocation(line: 41, column: 13, scope: !3394)
!3412 = !DILocation(line: 41, column: 9, scope: !3394)
!3413 = !DILocation(line: 42, column: 8, scope: !3405)
!3414 = !DILocation(line: 42, column: 15, scope: !3405)
!3415 = !DILocation(line: 42, column: 10, scope: !3405)
!3416 = !DILocation(line: 43, column: 5, scope: !3405)
!3417 = !DILocation(line: 44, column: 3, scope: !3394)
!3418 = distinct !DISubprogram(name: "xnrealloc", scope: !618, file: !618, line: 118, type: !3419, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!15, !15, !172, !172}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3418, file: !618, line: 118, type: !15)
!3423 = !DILocalVariable(name: "n", arg: 2, scope: !3418, file: !618, line: 118, type: !172)
!3424 = !DILocalVariable(name: "s", arg: 3, scope: !3418, file: !618, line: 118, type: !172)
!3425 = !DILocation(line: 118, column: 18, scope: !3418)
!3426 = !DILocation(line: 118, column: 28, scope: !3418)
!3427 = !DILocation(line: 118, column: 38, scope: !3418)
!3428 = !DILocation(line: 120, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3418, file: !618, line: 120, column: 7)
!3430 = !DILocation(line: 120, column: 7, scope: !3418)
!3431 = !DILocation(line: 121, column: 5, scope: !3429)
!3432 = !DILocation(line: 122, column: 25, scope: !3418)
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3434, file: !3395, line: 51, type: !15)
!3434 = distinct !DISubprogram(name: "xrealloc", scope: !3395, file: !3395, line: 51, type: !3435, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!15, !15, !172}
!3437 = !{!3433, !3438}
!3438 = !DILocalVariable(name: "n", arg: 2, scope: !3434, file: !3395, line: 51, type: !172)
!3439 = !DILocation(line: 51, column: 17, scope: !3434, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 122, column: 10, scope: !3418)
!3441 = !DILocation(line: 51, column: 27, scope: !3434, inlinedAt: !3440)
!3442 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3440)
!3443 = distinct !DILexicalBlock(scope: !3434, file: !3395, line: 53, column: 7)
!3444 = !DILocation(line: 53, column: 13, scope: !3443, inlinedAt: !3440)
!3445 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3440)
!3446 = !DILocation(line: 57, column: 7, scope: !3447, inlinedAt: !3440)
!3447 = distinct !DILexicalBlock(scope: !3443, file: !3395, line: 54, column: 5)
!3448 = !DILocation(line: 58, column: 7, scope: !3447, inlinedAt: !3440)
!3449 = !DILocation(line: 61, column: 7, scope: !3434, inlinedAt: !3440)
!3450 = !DILocation(line: 62, column: 8, scope: !3451, inlinedAt: !3440)
!3451 = distinct !DILexicalBlock(scope: !3434, file: !3395, line: 62, column: 7)
!3452 = !DILocation(line: 62, column: 13, scope: !3451, inlinedAt: !3440)
!3453 = !DILocation(line: 62, column: 10, scope: !3451, inlinedAt: !3440)
!3454 = !DILocation(line: 63, column: 5, scope: !3451, inlinedAt: !3440)
!3455 = !DILocation(line: 122, column: 3, scope: !3418)
!3456 = !DILocation(line: 51, column: 17, scope: !3434)
!3457 = !DILocation(line: 51, column: 27, scope: !3434)
!3458 = !DILocation(line: 53, column: 8, scope: !3443)
!3459 = !DILocation(line: 53, column: 13, scope: !3443)
!3460 = !DILocation(line: 53, column: 10, scope: !3443)
!3461 = !DILocation(line: 57, column: 7, scope: !3447)
!3462 = !DILocation(line: 58, column: 7, scope: !3447)
!3463 = !DILocation(line: 61, column: 7, scope: !3434)
!3464 = !DILocation(line: 62, column: 8, scope: !3451)
!3465 = !DILocation(line: 62, column: 13, scope: !3451)
!3466 = !DILocation(line: 62, column: 10, scope: !3451)
!3467 = !DILocation(line: 63, column: 5, scope: !3451)
!3468 = !DILocation(line: 65, column: 1, scope: !3434)
!3469 = !DILocation(line: 180, column: 19, scope: !619)
!3470 = !DILocation(line: 180, column: 30, scope: !619)
!3471 = !DILocation(line: 180, column: 41, scope: !619)
!3472 = !DILocation(line: 182, column: 14, scope: !619)
!3473 = !DILocation(line: 182, column: 10, scope: !619)
!3474 = !DILocation(line: 184, column: 9, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !619, file: !618, line: 184, column: 7)
!3476 = !DILocation(line: 184, column: 7, scope: !619)
!3477 = !DILocation(line: 186, column: 13, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !618, line: 186, column: 11)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !618, line: 185, column: 5)
!3480 = !DILocation(line: 186, column: 11, scope: !3479)
!3481 = !DILocation(line: 194, column: 30, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3478, file: !618, line: 187, column: 9)
!3483 = !DILocation(line: 195, column: 16, scope: !3482)
!3484 = !DILocation(line: 195, column: 13, scope: !3482)
!3485 = !DILocation(line: 196, column: 9, scope: !3482)
!3486 = !DILocation(line: 204, column: 69, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !618, line: 204, column: 11)
!3488 = distinct !DILexicalBlock(scope: !3475, file: !618, line: 199, column: 5)
!3489 = !DILocation(line: 205, column: 11, scope: !3487)
!3490 = !DILocation(line: 204, column: 11, scope: !3488)
!3491 = !DILocation(line: 206, column: 9, scope: !3487)
!3492 = !DILocation(line: 210, column: 7, scope: !619)
!3493 = !DILocation(line: 211, column: 25, scope: !619)
!3494 = !DILocation(line: 51, column: 17, scope: !3434, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 211, column: 10, scope: !619)
!3496 = !DILocation(line: 51, column: 27, scope: !3434, inlinedAt: !3495)
!3497 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3495)
!3498 = !DILocation(line: 207, column: 14, scope: !3488)
!3499 = !DILocation(line: 207, column: 18, scope: !3488)
!3500 = !DILocation(line: 207, column: 9, scope: !3488)
!3501 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3495)
!3502 = !DILocation(line: 57, column: 7, scope: !3447, inlinedAt: !3495)
!3503 = !DILocation(line: 58, column: 7, scope: !3447, inlinedAt: !3495)
!3504 = !DILocation(line: 61, column: 7, scope: !3434, inlinedAt: !3495)
!3505 = !DILocation(line: 62, column: 8, scope: !3451, inlinedAt: !3495)
!3506 = !DILocation(line: 62, column: 13, scope: !3451, inlinedAt: !3495)
!3507 = !DILocation(line: 62, column: 10, scope: !3451, inlinedAt: !3495)
!3508 = !DILocation(line: 63, column: 5, scope: !3451, inlinedAt: !3495)
!3509 = !DILocation(line: 211, column: 3, scope: !619)
!3510 = distinct !DISubprogram(name: "xcharalloc", scope: !618, file: !618, line: 220, type: !2465, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3511)
!3511 = !{!3512}
!3512 = !DILocalVariable(name: "n", arg: 1, scope: !3510, file: !618, line: 220, type: !172)
!3513 = !DILocation(line: 220, column: 20, scope: !3510)
!3514 = !DILocation(line: 39, column: 17, scope: !3394, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 222, column: 10, scope: !3510)
!3516 = !DILocation(line: 41, column: 13, scope: !3394, inlinedAt: !3515)
!3517 = !DILocation(line: 41, column: 9, scope: !3394, inlinedAt: !3515)
!3518 = !DILocation(line: 42, column: 8, scope: !3405, inlinedAt: !3515)
!3519 = !DILocation(line: 42, column: 15, scope: !3405, inlinedAt: !3515)
!3520 = !DILocation(line: 42, column: 10, scope: !3405, inlinedAt: !3515)
!3521 = !DILocation(line: 43, column: 5, scope: !3405, inlinedAt: !3515)
!3522 = !DILocation(line: 222, column: 3, scope: !3510)
!3523 = distinct !DISubprogram(name: "x2realloc", scope: !3395, file: !3395, line: 74, type: !3524, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!15, !15, !622}
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "p", arg: 1, scope: !3523, file: !3395, line: 74, type: !15)
!3528 = !DILocalVariable(name: "pn", arg: 2, scope: !3523, file: !3395, line: 74, type: !622)
!3529 = !DILocation(line: 74, column: 18, scope: !3523)
!3530 = !DILocation(line: 74, column: 29, scope: !3523)
!3531 = !DILocation(line: 180, column: 19, scope: !619, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 76, column: 10, scope: !3523)
!3533 = !DILocation(line: 180, column: 30, scope: !619, inlinedAt: !3532)
!3534 = !DILocation(line: 180, column: 41, scope: !619, inlinedAt: !3532)
!3535 = !DILocation(line: 182, column: 14, scope: !619, inlinedAt: !3532)
!3536 = !DILocation(line: 182, column: 10, scope: !619, inlinedAt: !3532)
!3537 = !DILocation(line: 184, column: 9, scope: !3475, inlinedAt: !3532)
!3538 = !DILocation(line: 184, column: 7, scope: !619, inlinedAt: !3532)
!3539 = !DILocation(line: 186, column: 13, scope: !3478, inlinedAt: !3532)
!3540 = !DILocation(line: 186, column: 11, scope: !3479, inlinedAt: !3532)
!3541 = !DILocation(line: 210, column: 7, scope: !619, inlinedAt: !3532)
!3542 = !DILocation(line: 51, column: 17, scope: !3434, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 211, column: 10, scope: !619, inlinedAt: !3532)
!3544 = !DILocation(line: 51, column: 27, scope: !3434, inlinedAt: !3543)
!3545 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3543)
!3546 = !DILocation(line: 205, column: 11, scope: !3487, inlinedAt: !3532)
!3547 = !DILocation(line: 204, column: 11, scope: !3488, inlinedAt: !3532)
!3548 = !DILocation(line: 206, column: 9, scope: !3487, inlinedAt: !3532)
!3549 = !DILocation(line: 207, column: 14, scope: !3488, inlinedAt: !3532)
!3550 = !DILocation(line: 207, column: 18, scope: !3488, inlinedAt: !3532)
!3551 = !DILocation(line: 207, column: 9, scope: !3488, inlinedAt: !3532)
!3552 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3543)
!3553 = !DILocation(line: 57, column: 7, scope: !3447, inlinedAt: !3543)
!3554 = !DILocation(line: 58, column: 7, scope: !3447, inlinedAt: !3543)
!3555 = !DILocation(line: 61, column: 7, scope: !3434, inlinedAt: !3543)
!3556 = !DILocation(line: 62, column: 8, scope: !3451, inlinedAt: !3543)
!3557 = !DILocation(line: 62, column: 13, scope: !3451, inlinedAt: !3543)
!3558 = !DILocation(line: 62, column: 10, scope: !3451, inlinedAt: !3543)
!3559 = !DILocation(line: 63, column: 5, scope: !3451, inlinedAt: !3543)
!3560 = !DILocation(line: 76, column: 3, scope: !3523)
!3561 = distinct !DISubprogram(name: "xzalloc", scope: !3395, file: !3395, line: 84, type: !3396, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3562)
!3562 = !{!3563}
!3563 = !DILocalVariable(name: "s", arg: 1, scope: !3561, file: !3395, line: 84, type: !172)
!3564 = !DILocation(line: 84, column: 17, scope: !3561)
!3565 = !DILocation(line: 39, column: 17, scope: !3394, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 86, column: 18, scope: !3561)
!3567 = !DILocation(line: 41, column: 13, scope: !3394, inlinedAt: !3566)
!3568 = !DILocation(line: 41, column: 9, scope: !3394, inlinedAt: !3566)
!3569 = !DILocation(line: 42, column: 8, scope: !3405, inlinedAt: !3566)
!3570 = !DILocation(line: 42, column: 15, scope: !3405, inlinedAt: !3566)
!3571 = !DILocation(line: 42, column: 10, scope: !3405, inlinedAt: !3566)
!3572 = !DILocation(line: 43, column: 5, scope: !3405, inlinedAt: !3566)
!3573 = !DILocation(line: 86, column: 10, scope: !3561)
!3574 = !DILocation(line: 86, column: 3, scope: !3561)
!3575 = distinct !DISubprogram(name: "xcalloc", scope: !3395, file: !3395, line: 93, type: !3381, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3576)
!3576 = !{!3577, !3578, !3579}
!3577 = !DILocalVariable(name: "n", arg: 1, scope: !3575, file: !3395, line: 93, type: !172)
!3578 = !DILocalVariable(name: "s", arg: 2, scope: !3575, file: !3395, line: 93, type: !172)
!3579 = !DILocalVariable(name: "p", scope: !3575, file: !3395, line: 95, type: !15)
!3580 = !DILocation(line: 93, column: 17, scope: !3575)
!3581 = !DILocation(line: 93, column: 27, scope: !3575)
!3582 = !DILocation(line: 100, column: 7, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3575, file: !3395, line: 100, column: 7)
!3584 = !DILocation(line: 101, column: 7, scope: !3583)
!3585 = !DILocation(line: 101, column: 18, scope: !3583)
!3586 = !DILocation(line: 95, column: 9, scope: !3575)
!3587 = !DILocation(line: 101, column: 16, scope: !3583)
!3588 = !DILocation(line: 100, column: 7, scope: !3575)
!3589 = !DILocation(line: 102, column: 5, scope: !3583)
!3590 = !DILocation(line: 103, column: 3, scope: !3575)
!3591 = distinct !DISubprogram(name: "xmemdup", scope: !3395, file: !3395, line: 111, type: !3592, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3596)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!15, !3594, !172}
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3596 = !{!3597, !3598}
!3597 = !DILocalVariable(name: "p", arg: 1, scope: !3591, file: !3395, line: 111, type: !3594)
!3598 = !DILocalVariable(name: "s", arg: 2, scope: !3591, file: !3395, line: 111, type: !172)
!3599 = !DILocation(line: 111, column: 22, scope: !3591)
!3600 = !DILocation(line: 111, column: 32, scope: !3591)
!3601 = !DILocation(line: 39, column: 17, scope: !3394, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 113, column: 18, scope: !3591)
!3603 = !DILocation(line: 41, column: 13, scope: !3394, inlinedAt: !3602)
!3604 = !DILocation(line: 41, column: 9, scope: !3394, inlinedAt: !3602)
!3605 = !DILocation(line: 42, column: 8, scope: !3405, inlinedAt: !3602)
!3606 = !DILocation(line: 42, column: 15, scope: !3405, inlinedAt: !3602)
!3607 = !DILocation(line: 42, column: 10, scope: !3405, inlinedAt: !3602)
!3608 = !DILocation(line: 43, column: 5, scope: !3405, inlinedAt: !3602)
!3609 = !DILocation(line: 113, column: 10, scope: !3591)
!3610 = !DILocation(line: 113, column: 3, scope: !3591)
!3611 = distinct !DISubprogram(name: "xstrdup", scope: !3395, file: !3395, line: 119, type: !2667, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3612)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "string", arg: 1, scope: !3611, file: !3395, line: 119, type: !45)
!3614 = !DILocation(line: 119, column: 22, scope: !3611)
!3615 = !DILocation(line: 121, column: 27, scope: !3611)
!3616 = !DILocation(line: 121, column: 43, scope: !3611)
!3617 = !DILocation(line: 111, column: 22, scope: !3591, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 121, column: 10, scope: !3611)
!3619 = !DILocation(line: 111, column: 32, scope: !3591, inlinedAt: !3618)
!3620 = !DILocation(line: 39, column: 17, scope: !3394, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 113, column: 18, scope: !3591, inlinedAt: !3618)
!3622 = !DILocation(line: 41, column: 13, scope: !3394, inlinedAt: !3621)
!3623 = !DILocation(line: 41, column: 9, scope: !3394, inlinedAt: !3621)
!3624 = !DILocation(line: 42, column: 8, scope: !3405, inlinedAt: !3621)
!3625 = !DILocation(line: 42, column: 15, scope: !3405, inlinedAt: !3621)
!3626 = !DILocation(line: 42, column: 10, scope: !3405, inlinedAt: !3621)
!3627 = !DILocation(line: 43, column: 5, scope: !3405, inlinedAt: !3621)
!3628 = !DILocation(line: 113, column: 10, scope: !3591, inlinedAt: !3618)
!3629 = !DILocation(line: 121, column: 3, scope: !3611)
!3630 = distinct !DISubprogram(name: "xalloc_die", scope: !3631, file: !3631, line: 32, type: !675, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !631, variables: !77)
!3631 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3632 = !DILocation(line: 34, column: 10, scope: !3630)
!3633 = !DILocation(line: 34, column: 33, scope: !3630)
!3634 = !DILocation(line: 34, column: 3, scope: !3630)
!3635 = !DILocation(line: 40, column: 3, scope: !3630)
!3636 = distinct !DISubprogram(name: "xstrtod", scope: !3637, file: !3637, line: 44, type: !3638, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !633, variables: !3642)
!3637 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!37, !45, !3640, !1077, !3641}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3643 = !DILocalVariable(name: "str", arg: 1, scope: !3636, file: !3637, line: 44, type: !45)
!3644 = !DILocalVariable(name: "ptr", arg: 2, scope: !3636, file: !3637, line: 44, type: !3640)
!3645 = !DILocalVariable(name: "result", arg: 3, scope: !3636, file: !3637, line: 44, type: !1077)
!3646 = !DILocalVariable(name: "convert", arg: 4, scope: !3636, file: !3637, line: 45, type: !3641)
!3647 = !DILocalVariable(name: "val", scope: !3636, file: !3637, line: 47, type: !34)
!3648 = !DILocalVariable(name: "terminator", scope: !3636, file: !3637, line: 48, type: !13)
!3649 = !DILocalVariable(name: "ok", scope: !3636, file: !3637, line: 49, type: !37)
!3650 = !DILocation(line: 44, column: 22, scope: !3636)
!3651 = !DILocation(line: 44, column: 40, scope: !3636)
!3652 = !DILocation(line: 44, column: 53, scope: !3636)
!3653 = !DILocation(line: 45, column: 19, scope: !3636)
!3654 = !DILocation(line: 48, column: 3, scope: !3636)
!3655 = !DILocation(line: 49, column: 8, scope: !3636)
!3656 = !DILocation(line: 51, column: 3, scope: !3636)
!3657 = !DILocation(line: 51, column: 9, scope: !3636)
!3658 = !DILocation(line: 48, column: 9, scope: !3636)
!3659 = !DILocation(line: 52, column: 9, scope: !3636)
!3660 = !DILocation(line: 47, column: 10, scope: !3636)
!3661 = !DILocation(line: 55, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3636, file: !3637, line: 55, column: 7)
!3663 = !DILocation(line: 55, column: 18, scope: !3662)
!3664 = !DILocation(line: 55, column: 25, scope: !3662)
!3665 = !DILocation(line: 55, column: 33, scope: !3662)
!3666 = !DILocation(line: 55, column: 41, scope: !3662)
!3667 = !DILocation(line: 55, column: 44, scope: !3662)
!3668 = !DILocation(line: 55, column: 56, scope: !3662)
!3669 = !DILocation(line: 55, column: 7, scope: !3636)
!3670 = !DILocation(line: 62, column: 15, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3637, line: 62, column: 11)
!3672 = distinct !DILexicalBlock(scope: !3662, file: !3637, line: 58, column: 5)
!3673 = !DILocation(line: 62, column: 20, scope: !3671)
!3674 = !DILocation(line: 62, column: 23, scope: !3671)
!3675 = !DILocation(line: 62, column: 29, scope: !3671)
!3676 = !DILocation(line: 62, column: 11, scope: !3672)
!3677 = !DILocation(line: 66, column: 11, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3636, file: !3637, line: 66, column: 7)
!3679 = !DILocation(line: 66, column: 7, scope: !3636)
!3680 = !DIExpression(DW_OP_deref)
!3681 = !DILocation(line: 67, column: 10, scope: !3678)
!3682 = !DILocation(line: 67, column: 5, scope: !3678)
!3683 = !DILocation(line: 69, column: 11, scope: !3636)
!3684 = !DILocation(line: 71, column: 1, scope: !3636)
!3685 = !DILocation(line: 70, column: 3, scope: !3636)
!3686 = distinct !DISubprogram(name: "rpl_calloc", scope: !3687, file: !3687, line: 42, type: !3381, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !3688)
!3687 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3686, file: !3687, line: 42, type: !172)
!3690 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !3687, line: 42, type: !172)
!3691 = !DILocalVariable(name: "result", scope: !3686, file: !3687, line: 44, type: !15)
!3692 = !DILocalVariable(name: "bytes", scope: !3693, file: !3687, line: 56, type: !172)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3687, line: 53, column: 5)
!3694 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 47, column: 7)
!3695 = !DILocation(line: 42, column: 20, scope: !3686)
!3696 = !DILocation(line: 42, column: 30, scope: !3686)
!3697 = !DILocation(line: 47, column: 9, scope: !3694)
!3698 = !DILocation(line: 47, column: 19, scope: !3694)
!3699 = !DILocation(line: 47, column: 14, scope: !3694)
!3700 = !DILocation(line: 56, column: 24, scope: !3693)
!3701 = !DILocation(line: 56, column: 14, scope: !3693)
!3702 = !DILocation(line: 57, column: 17, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3693, file: !3687, line: 57, column: 11)
!3704 = !DILocation(line: 57, column: 21, scope: !3703)
!3705 = !DILocation(line: 57, column: 11, scope: !3693)
!3706 = !DILocation(line: 59, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3703, file: !3687, line: 58, column: 9)
!3708 = !DILocation(line: 59, column: 17, scope: !3707)
!3709 = !DILocation(line: 65, column: 12, scope: !3686)
!3710 = !DILocation(line: 44, column: 9, scope: !3686)
!3711 = !DILocation(line: 72, column: 3, scope: !3686)
!3712 = !DILocation(line: 73, column: 1, scope: !3686)
!3713 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3714, file: !3714, line: 334, type: !3715, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !3729)
!3714 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!172, !3717, !45, !172, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1716, line: 6, baseType: !3720)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1718, line: 21, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1718, line: 13, size: 64, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3721, file: !1718, line: 15, baseType: !21, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3721, file: !1718, line: 20, baseType: !3725, size: 32, offset: 32)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3721, file: !1718, line: 16, size: 32, elements: !3726)
!3726 = !{!3727, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3725, file: !1718, line: 18, baseType: !191, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3725, file: !1718, line: 19, baseType: !1727, size: 32)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3730 = !DILocalVariable(name: "pwc", arg: 1, scope: !3713, file: !3714, line: 334, type: !3717)
!3731 = !DILocalVariable(name: "s", arg: 2, scope: !3713, file: !3714, line: 334, type: !45)
!3732 = !DILocalVariable(name: "n", arg: 3, scope: !3713, file: !3714, line: 334, type: !172)
!3733 = !DILocalVariable(name: "ps", arg: 4, scope: !3713, file: !3714, line: 334, type: !3718)
!3734 = !DILocalVariable(name: "ret", scope: !3713, file: !3714, line: 336, type: !172)
!3735 = !DILocalVariable(name: "wc", scope: !3713, file: !3714, line: 337, type: !1732)
!3736 = !DILocalVariable(name: "uc", scope: !3737, file: !3714, line: 398, type: !587)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !3714, line: 397, column: 5)
!3738 = distinct !DILexicalBlock(scope: !3713, file: !3714, line: 396, column: 7)
!3739 = !DILocation(line: 334, column: 23, scope: !3713)
!3740 = !DILocation(line: 334, column: 40, scope: !3713)
!3741 = !DILocation(line: 334, column: 50, scope: !3713)
!3742 = !DILocation(line: 334, column: 64, scope: !3713)
!3743 = !DILocation(line: 337, column: 3, scope: !3713)
!3744 = !DILocation(line: 353, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3713, file: !3714, line: 353, column: 7)
!3746 = !DILocation(line: 353, column: 7, scope: !3713)
!3747 = !DILocation(line: 388, column: 9, scope: !3713)
!3748 = !DILocation(line: 336, column: 10, scope: !3713)
!3749 = !DILocation(line: 396, column: 19, scope: !3738)
!3750 = !DILocation(line: 396, column: 31, scope: !3738)
!3751 = !DILocation(line: 396, column: 26, scope: !3738)
!3752 = !DILocation(line: 396, column: 41, scope: !3738)
!3753 = !DILocation(line: 396, column: 7, scope: !3713)
!3754 = !DILocation(line: 398, column: 26, scope: !3737)
!3755 = !DILocation(line: 398, column: 21, scope: !3737)
!3756 = !DILocation(line: 399, column: 14, scope: !3737)
!3757 = !DILocation(line: 399, column: 12, scope: !3737)
!3758 = !DILocation(line: 405, column: 1, scope: !3713)
!3759 = distinct !DISubprogram(name: "str2sig", scope: !233, file: !233, line: 304, type: !3760, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!21, !45, !71}
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "signame", arg: 1, scope: !3759, file: !233, line: 304, type: !45)
!3764 = !DILocalVariable(name: "signum", arg: 2, scope: !3759, file: !233, line: 304, type: !71)
!3765 = !DILocation(line: 304, column: 22, scope: !3759)
!3766 = !DILocation(line: 304, column: 36, scope: !3759)
!3767 = !DILocalVariable(name: "signame", arg: 1, scope: !3768, file: !233, line: 261, type: !45)
!3768 = distinct !DISubprogram(name: "str2signum", scope: !233, file: !233, line: 261, type: !3769, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!21, !45}
!3771 = !{!3767, !3772, !3775, !3776, !3778, !3780, !3781, !3782, !3785}
!3772 = !DILocalVariable(name: "endp", scope: !3773, file: !233, line: 265, type: !13)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !233, line: 264, column: 5)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !233, line: 263, column: 7)
!3775 = !DILocalVariable(name: "n", scope: !3773, file: !233, line: 266, type: !605)
!3776 = !DILocalVariable(name: "i", scope: !3777, file: !233, line: 272, type: !191)
!3777 = distinct !DILexicalBlock(scope: !3774, file: !233, line: 271, column: 5)
!3778 = !DILocalVariable(name: "endp", scope: !3779, file: !233, line: 278, type: !13)
!3779 = distinct !DILexicalBlock(scope: !3777, file: !233, line: 277, column: 7)
!3780 = !DILocalVariable(name: "rtmin", scope: !3779, file: !233, line: 279, type: !21)
!3781 = !DILocalVariable(name: "rtmax", scope: !3779, file: !233, line: 280, type: !21)
!3782 = !DILocalVariable(name: "n", scope: !3783, file: !233, line: 284, type: !605)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !233, line: 283, column: 11)
!3784 = distinct !DILexicalBlock(scope: !3779, file: !233, line: 282, column: 13)
!3785 = !DILocalVariable(name: "n", scope: !3786, file: !233, line: 290, type: !605)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !233, line: 289, column: 11)
!3787 = distinct !DILexicalBlock(scope: !3784, file: !233, line: 288, column: 18)
!3788 = !DILocation(line: 261, column: 25, scope: !3768, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 306, column: 13, scope: !3759)
!3790 = !DILocation(line: 263, column: 7, scope: !3774, inlinedAt: !3789)
!3791 = !DILocation(line: 263, column: 7, scope: !3768, inlinedAt: !3789)
!3792 = !DILocation(line: 274, column: 21, scope: !3793, inlinedAt: !3789)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !233, line: 274, column: 13)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !233, line: 273, column: 7)
!3795 = distinct !DILexicalBlock(scope: !3777, file: !233, line: 273, column: 7)
!3796 = !DILocation(line: 265, column: 7, scope: !3773, inlinedAt: !3789)
!3797 = !DILocation(line: 265, column: 13, scope: !3773, inlinedAt: !3789)
!3798 = !DILocation(line: 266, column: 20, scope: !3773, inlinedAt: !3789)
!3799 = !DILocation(line: 266, column: 16, scope: !3773, inlinedAt: !3789)
!3800 = !DILocation(line: 267, column: 14, scope: !3801, inlinedAt: !3789)
!3801 = distinct !DILexicalBlock(scope: !3773, file: !233, line: 267, column: 11)
!3802 = !DILocation(line: 267, column: 13, scope: !3801, inlinedAt: !3789)
!3803 = !DILocation(line: 267, column: 24, scope: !3801, inlinedAt: !3789)
!3804 = !DILocation(line: 268, column: 16, scope: !3801, inlinedAt: !3789)
!3805 = !DILocation(line: 267, column: 19, scope: !3801, inlinedAt: !3789)
!3806 = !DILocation(line: 269, column: 5, scope: !3774, inlinedAt: !3789)
!3807 = !DILocation(line: 273, column: 21, scope: !3794, inlinedAt: !3789)
!3808 = !DILocation(line: 273, column: 7, scope: !3795, inlinedAt: !3789)
!3809 = distinct !{!3809, !3810, !3811}
!3810 = !DILocation(line: 273, column: 7, scope: !3795)
!3811 = !DILocation(line: 275, column: 35, scope: !3795)
!3812 = !DILocation(line: 272, column: 20, scope: !3777, inlinedAt: !3789)
!3813 = !DILocation(line: 274, column: 13, scope: !3793, inlinedAt: !3789)
!3814 = !DILocation(line: 274, column: 53, scope: !3793, inlinedAt: !3789)
!3815 = !DILocation(line: 273, column: 41, scope: !3794, inlinedAt: !3789)
!3816 = !DILocation(line: 274, column: 13, scope: !3794, inlinedAt: !3789)
!3817 = !DILocation(line: 275, column: 35, scope: !3793, inlinedAt: !3789)
!3818 = !{!3819, !753, i64 0}
!3819 = !{!"numname", !753, i64 0, !668, i64 4}
!3820 = !DILocation(line: 278, column: 9, scope: !3779, inlinedAt: !3789)
!3821 = !DILocation(line: 279, column: 21, scope: !3779, inlinedAt: !3789)
!3822 = !DILocation(line: 279, column: 13, scope: !3779, inlinedAt: !3789)
!3823 = !DILocation(line: 280, column: 21, scope: !3779, inlinedAt: !3789)
!3824 = !DILocation(line: 280, column: 13, scope: !3779, inlinedAt: !3789)
!3825 = !DILocation(line: 282, column: 15, scope: !3784, inlinedAt: !3789)
!3826 = !DILocation(line: 282, column: 23, scope: !3784, inlinedAt: !3789)
!3827 = !DILocation(line: 282, column: 26, scope: !3784, inlinedAt: !3789)
!3828 = !DILocation(line: 282, column: 56, scope: !3784, inlinedAt: !3789)
!3829 = !DILocation(line: 282, column: 13, scope: !3779, inlinedAt: !3789)
!3830 = !DILocation(line: 284, column: 42, scope: !3783, inlinedAt: !3789)
!3831 = !DILocation(line: 278, column: 15, scope: !3779, inlinedAt: !3789)
!3832 = !DILocation(line: 284, column: 26, scope: !3783, inlinedAt: !3789)
!3833 = !DILocation(line: 284, column: 22, scope: !3783, inlinedAt: !3789)
!3834 = !DILocation(line: 285, column: 20, scope: !3835, inlinedAt: !3789)
!3835 = distinct !DILexicalBlock(scope: !3783, file: !233, line: 285, column: 17)
!3836 = !DILocation(line: 285, column: 19, scope: !3835, inlinedAt: !3789)
!3837 = !DILocation(line: 285, column: 30, scope: !3835, inlinedAt: !3789)
!3838 = !DILocation(line: 285, column: 25, scope: !3835, inlinedAt: !3789)
!3839 = !DILocation(line: 285, column: 49, scope: !3835, inlinedAt: !3789)
!3840 = !DILocation(line: 285, column: 43, scope: !3835, inlinedAt: !3789)
!3841 = !DILocation(line: 285, column: 40, scope: !3835, inlinedAt: !3789)
!3842 = !DILocation(line: 285, column: 17, scope: !3783, inlinedAt: !3789)
!3843 = !DILocation(line: 288, column: 20, scope: !3787, inlinedAt: !3789)
!3844 = !DILocation(line: 288, column: 28, scope: !3787, inlinedAt: !3789)
!3845 = !DILocation(line: 288, column: 31, scope: !3787, inlinedAt: !3789)
!3846 = !DILocation(line: 288, column: 61, scope: !3787, inlinedAt: !3789)
!3847 = !DILocation(line: 288, column: 18, scope: !3784, inlinedAt: !3789)
!3848 = !DILocation(line: 290, column: 42, scope: !3786, inlinedAt: !3789)
!3849 = !DILocation(line: 290, column: 26, scope: !3786, inlinedAt: !3789)
!3850 = !DILocation(line: 290, column: 22, scope: !3786, inlinedAt: !3789)
!3851 = !DILocation(line: 291, column: 20, scope: !3852, inlinedAt: !3789)
!3852 = distinct !DILexicalBlock(scope: !3786, file: !233, line: 291, column: 17)
!3853 = !DILocation(line: 291, column: 19, scope: !3852, inlinedAt: !3789)
!3854 = !DILocation(line: 291, column: 25, scope: !3852, inlinedAt: !3789)
!3855 = !DILocation(line: 291, column: 34, scope: !3852, inlinedAt: !3789)
!3856 = !DILocation(line: 291, column: 28, scope: !3852, inlinedAt: !3789)
!3857 = !DILocation(line: 291, column: 42, scope: !3852, inlinedAt: !3789)
!3858 = !DILocation(line: 291, column: 52, scope: !3852, inlinedAt: !3789)
!3859 = !DILocation(line: 291, column: 47, scope: !3852, inlinedAt: !3789)
!3860 = !DILocation(line: 294, column: 7, scope: !3777, inlinedAt: !3789)
!3861 = !DILocation(line: 297, column: 3, scope: !3768, inlinedAt: !3789)
!3862 = !DILocation(line: 306, column: 11, scope: !3759)
!3863 = !DILocation(line: 307, column: 10, scope: !3759)
!3864 = !DILocation(line: 307, column: 3, scope: !3759)
!3865 = distinct !DISubprogram(name: "sig2str", scope: !233, file: !233, line: 315, type: !3866, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!21, !21, !13}
!3868 = !{!3869, !3870, !3871, !3872, !3874, !3875, !3876}
!3869 = !DILocalVariable(name: "signum", arg: 1, scope: !3865, file: !233, line: 315, type: !21)
!3870 = !DILocalVariable(name: "signame", arg: 2, scope: !3865, file: !233, line: 315, type: !13)
!3871 = !DILocalVariable(name: "i", scope: !3865, file: !233, line: 317, type: !191)
!3872 = !DILocalVariable(name: "rtmin", scope: !3873, file: !233, line: 326, type: !21)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !233, line: 325, column: 3)
!3874 = !DILocalVariable(name: "rtmax", scope: !3873, file: !233, line: 327, type: !21)
!3875 = !DILocalVariable(name: "base", scope: !3873, file: !233, line: 328, type: !21)
!3876 = !DILocalVariable(name: "delta", scope: !3873, file: !233, line: 328, type: !21)
!3877 = !DILocation(line: 315, column: 14, scope: !3865)
!3878 = !DILocation(line: 315, column: 28, scope: !3865)
!3879 = !DILocation(line: 317, column: 16, scope: !3865)
!3880 = !DILocation(line: 318, column: 3, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3865, file: !233, line: 318, column: 3)
!3882 = !DILocation(line: 318, column: 37, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3881, file: !233, line: 318, column: 3)
!3884 = !DILocation(line: 318, column: 15, scope: !3883)
!3885 = !DILocation(line: 319, column: 26, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3883, file: !233, line: 319, column: 9)
!3887 = !DILocation(line: 319, column: 30, scope: !3886)
!3888 = !DILocation(line: 319, column: 9, scope: !3883)
!3889 = !DILocation(line: 321, column: 26, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3886, file: !233, line: 320, column: 7)
!3891 = !DILocalVariable(name: "__dest", arg: 1, scope: !3892, file: !3893, line: 88, type: !3896)
!3892 = distinct !DISubprogram(name: "strcpy", scope: !3893, file: !3893, line: 88, type: !3894, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3898)
!3893 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!13, !3896, !3897}
!3896 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!3897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!3898 = !{!3891, !3899}
!3899 = !DILocalVariable(name: "__src", arg: 2, scope: !3892, file: !3893, line: 88, type: !3897)
!3900 = !DILocation(line: 88, column: 1, scope: !3892, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 321, column: 9, scope: !3890)
!3902 = !DILocation(line: 90, column: 49, scope: !3892, inlinedAt: !3901)
!3903 = !DILocation(line: 90, column: 10, scope: !3892, inlinedAt: !3901)
!3904 = !DILocation(line: 322, column: 9, scope: !3890)
!3905 = !DILocation(line: 326, column: 17, scope: !3873)
!3906 = !DILocation(line: 326, column: 9, scope: !3873)
!3907 = !DILocation(line: 327, column: 17, scope: !3873)
!3908 = !DILocation(line: 327, column: 9, scope: !3873)
!3909 = !DILocation(line: 330, column: 18, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3873, file: !233, line: 330, column: 9)
!3911 = !DILocation(line: 330, column: 38, scope: !3910)
!3912 = !DILocation(line: 330, column: 28, scope: !3910)
!3913 = !DILocation(line: 333, column: 34, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3873, file: !233, line: 333, column: 9)
!3915 = !DILocation(line: 333, column: 43, scope: !3914)
!3916 = !DILocation(line: 333, column: 25, scope: !3914)
!3917 = !DILocation(line: 333, column: 16, scope: !3914)
!3918 = !DILocation(line: 333, column: 9, scope: !3873)
!3919 = !DILocation(line: 335, column: 9, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3914, file: !233, line: 334, column: 7)
!3921 = !DILocation(line: 328, column: 9, scope: !3873)
!3922 = !DILocation(line: 337, column: 7, scope: !3920)
!3923 = !DILocation(line: 340, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3914, file: !233, line: 339, column: 7)
!3925 = !DILocation(line: 344, column: 20, scope: !3873)
!3926 = !DILocation(line: 328, column: 15, scope: !3873)
!3927 = !DILocation(line: 345, column: 15, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3873, file: !233, line: 345, column: 9)
!3929 = !DILocation(line: 345, column: 9, scope: !3873)
!3930 = !DILocation(line: 346, column: 7, scope: !3928)
!3931 = !DILocation(line: 349, column: 1, scope: !3865)
!3932 = !DILocation(line: 318, column: 17, scope: !3883)
!3933 = distinct !{!3933, !3880, !3934}
!3934 = !DILocation(line: 323, column: 7, scope: !3881)
!3935 = distinct !DISubprogram(name: "close_stream", scope: !3936, file: !3936, line: 56, type: !3937, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !640, variables: !3979)
!3936 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!21, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3193, line: 7, baseType: !3941)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3195, line: 241, size: 1728, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3941, file: !3195, line: 242, baseType: !21, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3941, file: !3195, line: 247, baseType: !13, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3941, file: !3195, line: 248, baseType: !13, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3941, file: !3195, line: 249, baseType: !13, size: 64, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3941, file: !3195, line: 250, baseType: !13, size: 64, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3941, file: !3195, line: 251, baseType: !13, size: 64, offset: 320)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3941, file: !3195, line: 252, baseType: !13, size: 64, offset: 384)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3941, file: !3195, line: 253, baseType: !13, size: 64, offset: 448)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3941, file: !3195, line: 254, baseType: !13, size: 64, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3941, file: !3195, line: 256, baseType: !13, size: 64, offset: 576)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3941, file: !3195, line: 257, baseType: !13, size: 64, offset: 640)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3941, file: !3195, line: 258, baseType: !13, size: 64, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3941, file: !3195, line: 260, baseType: !3956, size: 64, offset: 768)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3195, line: 156, size: 192, elements: !3958)
!3958 = !{!3959, !3960, !3962}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3957, file: !3195, line: 157, baseType: !3956, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3957, file: !3195, line: 158, baseType: !3961, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3957, file: !3195, line: 162, baseType: !21, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3941, file: !3195, line: 262, baseType: !3961, size: 64, offset: 832)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3941, file: !3195, line: 264, baseType: !21, size: 32, offset: 896)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3941, file: !3195, line: 268, baseType: !21, size: 32, offset: 928)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3941, file: !3195, line: 270, baseType: !3221, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3941, file: !3195, line: 274, baseType: !100, size: 16, offset: 1024)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3941, file: !3195, line: 275, baseType: !22, size: 8, offset: 1040)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3941, file: !3195, line: 276, baseType: !3225, size: 8, offset: 1048)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3941, file: !3195, line: 280, baseType: !3229, size: 64, offset: 1088)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3941, file: !3195, line: 289, baseType: !3232, size: 64, offset: 1152)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3941, file: !3195, line: 297, baseType: !15, size: 64, offset: 1216)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3941, file: !3195, line: 298, baseType: !15, size: 64, offset: 1280)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3941, file: !3195, line: 299, baseType: !15, size: 64, offset: 1344)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3941, file: !3195, line: 300, baseType: !15, size: 64, offset: 1408)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3941, file: !3195, line: 302, baseType: !172, size: 64, offset: 1472)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3941, file: !3195, line: 303, baseType: !21, size: 32, offset: 1536)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3941, file: !3195, line: 305, baseType: !3240, size: 160, offset: 1568)
!3979 = !{!3980, !3981, !3983, !3984}
!3980 = !DILocalVariable(name: "stream", arg: 1, scope: !3935, file: !3936, line: 56, type: !3939)
!3981 = !DILocalVariable(name: "some_pending", scope: !3935, file: !3936, line: 58, type: !3982)
!3982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3983 = !DILocalVariable(name: "prev_fail", scope: !3935, file: !3936, line: 59, type: !3982)
!3984 = !DILocalVariable(name: "fclose_fail", scope: !3935, file: !3936, line: 60, type: !3982)
!3985 = !DILocation(line: 56, column: 21, scope: !3935)
!3986 = !DILocation(line: 58, column: 30, scope: !3935)
!3987 = !DILocalVariable(name: "__stream", arg: 1, scope: !3988, file: !3989, line: 132, type: !3939)
!3988 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3989, file: !3989, line: 132, type: !3937, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !640, variables: !3990)
!3989 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3990 = !{!3987}
!3991 = !DILocation(line: 132, column: 1, scope: !3988, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 59, column: 27, scope: !3935)
!3993 = !DILocation(line: 134, column: 10, scope: !3988, inlinedAt: !3992)
!3994 = !{!3995, !753, i64 0}
!3995 = !{!"_IO_FILE", !753, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !667, i64 104, !753, i64 112, !753, i64 116, !2510, i64 120, !1966, i64 128, !668, i64 130, !668, i64 131, !667, i64 136, !2510, i64 144, !667, i64 152, !667, i64 160, !667, i64 168, !667, i64 176, !2510, i64 184, !753, i64 192, !668, i64 196}
!3996 = !DILocation(line: 59, column: 43, scope: !3935)
!3997 = !DILocation(line: 60, column: 29, scope: !3935)
!3998 = !DILocation(line: 60, column: 45, scope: !3935)
!3999 = !DILocation(line: 70, column: 17, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3935, file: !3936, line: 70, column: 7)
!4001 = !DILocation(line: 58, column: 50, scope: !3935)
!4002 = !DILocation(line: 70, column: 33, scope: !4000)
!4003 = !DILocation(line: 70, column: 53, scope: !4000)
!4004 = !DILocation(line: 70, column: 59, scope: !4000)
!4005 = !DILocation(line: 70, column: 7, scope: !3935)
!4006 = !DILocation(line: 72, column: 11, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4000, file: !3936, line: 71, column: 5)
!4008 = !DILocation(line: 73, column: 9, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4007, file: !3936, line: 72, column: 11)
!4010 = !DILocation(line: 73, column: 15, scope: !4009)
!4011 = !DILocation(line: 78, column: 1, scope: !3935)
!4012 = distinct !DISubprogram(name: "hard_locale", scope: !4013, file: !4013, line: 38, type: !4014, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !4016)
!4013 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!37, !21}
!4016 = !{!4017, !4018, !4019}
!4017 = !DILocalVariable(name: "category", arg: 1, scope: !4012, file: !4013, line: 38, type: !21)
!4018 = !DILocalVariable(name: "hard", scope: !4012, file: !4013, line: 40, type: !37)
!4019 = !DILocalVariable(name: "p", scope: !4012, file: !4013, line: 41, type: !45)
!4020 = !DILocation(line: 38, column: 18, scope: !4012)
!4021 = !DILocation(line: 40, column: 8, scope: !4012)
!4022 = !DILocation(line: 41, column: 19, scope: !4012)
!4023 = !DILocation(line: 41, column: 15, scope: !4012)
!4024 = !DILocation(line: 43, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4012, file: !4013, line: 43, column: 7)
!4026 = !DILocation(line: 43, column: 7, scope: !4012)
!4027 = !DILocation(line: 47, column: 15, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !4013, line: 47, column: 15)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !4013, line: 46, column: 9)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !4013, line: 45, column: 11)
!4031 = distinct !DILexicalBlock(scope: !4025, file: !4013, line: 44, column: 5)
!4032 = !DILocation(line: 47, column: 31, scope: !4028)
!4033 = !DILocation(line: 47, column: 36, scope: !4028)
!4034 = !DILocation(line: 47, column: 39, scope: !4028)
!4035 = !DILocation(line: 47, column: 59, scope: !4028)
!4036 = !DILocation(line: 47, column: 15, scope: !4029)
!4037 = !DILocation(line: 48, column: 13, scope: !4028)
!4038 = !DILocation(line: 71, column: 3, scope: !4012)
!4039 = distinct !DISubprogram(name: "locale_charset", scope: !589, file: !589, line: 393, type: !4040, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !244, variables: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!45}
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "codeset", scope: !4039, file: !589, line: 395, type: !45)
!4044 = !DILocalVariable(name: "aliases", scope: !4039, file: !589, line: 396, type: !45)
!4045 = !DILocalVariable(name: "buf1", scope: !4046, file: !589, line: 196, type: !4113)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !589, line: 194, column: 21)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !589, line: 193, column: 19)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !589, line: 193, column: 19)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !589, line: 188, column: 17)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !589, line: 181, column: 19)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !589, line: 177, column: 13)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !589, line: 173, column: 15)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !589, line: 161, column: 9)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !589, line: 157, column: 11)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !589, line: 130, column: 5)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !589, line: 129, column: 7)
!4057 = distinct !DISubprogram(name: "get_charset_aliases", scope: !589, file: !589, line: 124, type: !4040, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !244, variables: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4065, !4066, !4067, !4068, !4109, !4110, !4111, !4045, !4112, !4116, !4117, !4118}
!4059 = !DILocalVariable(name: "cp", scope: !4057, file: !589, line: 126, type: !45)
!4060 = !DILocalVariable(name: "dir", scope: !4055, file: !589, line: 132, type: !45)
!4061 = !DILocalVariable(name: "base", scope: !4055, file: !589, line: 133, type: !45)
!4062 = !DILocalVariable(name: "file_name", scope: !4055, file: !589, line: 134, type: !13)
!4063 = !DILocalVariable(name: "dir_len", scope: !4064, file: !589, line: 144, type: !172)
!4064 = distinct !DILexicalBlock(scope: !4055, file: !589, line: 143, column: 7)
!4065 = !DILocalVariable(name: "base_len", scope: !4064, file: !589, line: 145, type: !172)
!4066 = !DILocalVariable(name: "add_slash", scope: !4064, file: !589, line: 146, type: !21)
!4067 = !DILocalVariable(name: "fd", scope: !4053, file: !589, line: 162, type: !21)
!4068 = !DILocalVariable(name: "fp", scope: !4051, file: !589, line: 178, type: !4069)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3193, line: 7, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3195, line: 241, size: 1728, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4071, file: !3195, line: 242, baseType: !21, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4071, file: !3195, line: 247, baseType: !13, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4071, file: !3195, line: 248, baseType: !13, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4071, file: !3195, line: 249, baseType: !13, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4071, file: !3195, line: 250, baseType: !13, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4071, file: !3195, line: 251, baseType: !13, size: 64, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4071, file: !3195, line: 252, baseType: !13, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4071, file: !3195, line: 253, baseType: !13, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4071, file: !3195, line: 254, baseType: !13, size: 64, offset: 512)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4071, file: !3195, line: 256, baseType: !13, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4071, file: !3195, line: 257, baseType: !13, size: 64, offset: 640)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4071, file: !3195, line: 258, baseType: !13, size: 64, offset: 704)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4071, file: !3195, line: 260, baseType: !4086, size: 64, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3195, line: 156, size: 192, elements: !4088)
!4088 = !{!4089, !4090, !4092}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4087, file: !3195, line: 157, baseType: !4086, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4087, file: !3195, line: 158, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4087, file: !3195, line: 162, baseType: !21, size: 32, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4071, file: !3195, line: 262, baseType: !4091, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4071, file: !3195, line: 264, baseType: !21, size: 32, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4071, file: !3195, line: 268, baseType: !21, size: 32, offset: 928)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4071, file: !3195, line: 270, baseType: !3221, size: 64, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4071, file: !3195, line: 274, baseType: !100, size: 16, offset: 1024)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4071, file: !3195, line: 275, baseType: !22, size: 8, offset: 1040)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4071, file: !3195, line: 276, baseType: !3225, size: 8, offset: 1048)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4071, file: !3195, line: 280, baseType: !3229, size: 64, offset: 1088)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4071, file: !3195, line: 289, baseType: !3232, size: 64, offset: 1152)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4071, file: !3195, line: 297, baseType: !15, size: 64, offset: 1216)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4071, file: !3195, line: 298, baseType: !15, size: 64, offset: 1280)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4071, file: !3195, line: 299, baseType: !15, size: 64, offset: 1344)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4071, file: !3195, line: 300, baseType: !15, size: 64, offset: 1408)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4071, file: !3195, line: 302, baseType: !172, size: 64, offset: 1472)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4071, file: !3195, line: 303, baseType: !21, size: 32, offset: 1536)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4071, file: !3195, line: 305, baseType: !3240, size: 160, offset: 1568)
!4109 = !DILocalVariable(name: "res_ptr", scope: !4049, file: !589, line: 190, type: !13)
!4110 = !DILocalVariable(name: "res_size", scope: !4049, file: !589, line: 191, type: !172)
!4111 = !DILocalVariable(name: "c", scope: !4046, file: !589, line: 195, type: !21)
!4112 = !DILocalVariable(name: "buf2", scope: !4046, file: !589, line: 197, type: !4113)
!4113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 408, elements: !4114)
!4114 = !{!4115}
!4115 = !DISubrange(count: 51)
!4116 = !DILocalVariable(name: "l1", scope: !4046, file: !589, line: 198, type: !172)
!4117 = !DILocalVariable(name: "l2", scope: !4046, file: !589, line: 198, type: !172)
!4118 = !DILocalVariable(name: "old_res_ptr", scope: !4046, file: !589, line: 199, type: !13)
!4119 = !DILocation(line: 196, column: 28, scope: !4046, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 589, column: 18, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4039, file: !589, line: 589, column: 3)
!4122 = !DILocation(line: 197, column: 28, scope: !4046, inlinedAt: !4120)
!4123 = !DILocation(line: 403, column: 13, scope: !4039)
!4124 = !DILocation(line: 395, column: 15, scope: !4039)
!4125 = !DILocation(line: 584, column: 15, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4039, file: !589, line: 584, column: 7)
!4127 = !DILocation(line: 584, column: 7, scope: !4039)
!4128 = !DILocation(line: 128, column: 8, scope: !4057, inlinedAt: !4120)
!4129 = !DILocation(line: 126, column: 15, scope: !4057, inlinedAt: !4120)
!4130 = !DILocation(line: 129, column: 10, scope: !4056, inlinedAt: !4120)
!4131 = !DILocation(line: 129, column: 7, scope: !4057, inlinedAt: !4120)
!4132 = !DILocation(line: 138, column: 13, scope: !4055, inlinedAt: !4120)
!4133 = !DILocation(line: 132, column: 19, scope: !4055, inlinedAt: !4120)
!4134 = !DILocation(line: 139, column: 15, scope: !4135, inlinedAt: !4120)
!4135 = distinct !DILexicalBlock(scope: !4055, file: !589, line: 139, column: 11)
!4136 = !DILocation(line: 139, column: 23, scope: !4135, inlinedAt: !4120)
!4137 = !DILocation(line: 139, column: 26, scope: !4135, inlinedAt: !4120)
!4138 = !DILocation(line: 139, column: 33, scope: !4135, inlinedAt: !4120)
!4139 = !DILocation(line: 139, column: 11, scope: !4055, inlinedAt: !4120)
!4140 = !DILocation(line: 140, column: 9, scope: !4135, inlinedAt: !4120)
!4141 = !DILocation(line: 144, column: 26, scope: !4064, inlinedAt: !4120)
!4142 = !DILocation(line: 144, column: 16, scope: !4064, inlinedAt: !4120)
!4143 = !DILocation(line: 145, column: 16, scope: !4064, inlinedAt: !4120)
!4144 = !DILocation(line: 146, column: 34, scope: !4064, inlinedAt: !4120)
!4145 = !DILocation(line: 146, column: 38, scope: !4064, inlinedAt: !4120)
!4146 = !DILocation(line: 146, column: 42, scope: !4064, inlinedAt: !4120)
!4147 = !DILocation(line: 147, column: 48, scope: !4064, inlinedAt: !4120)
!4148 = !DILocation(line: 147, column: 46, scope: !4064, inlinedAt: !4120)
!4149 = !DILocation(line: 147, column: 69, scope: !4064, inlinedAt: !4120)
!4150 = !DILocation(line: 147, column: 30, scope: !4064, inlinedAt: !4120)
!4151 = !DILocation(line: 134, column: 13, scope: !4055, inlinedAt: !4120)
!4152 = !DILocation(line: 148, column: 13, scope: !4064, inlinedAt: !4120)
!4153 = !DILocation(line: 150, column: 13, scope: !4154, inlinedAt: !4120)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !589, line: 149, column: 11)
!4155 = distinct !DILexicalBlock(scope: !4064, file: !589, line: 148, column: 13)
!4156 = !DILocation(line: 151, column: 17, scope: !4154, inlinedAt: !4120)
!4157 = !DILocation(line: 152, column: 34, scope: !4158, inlinedAt: !4120)
!4158 = distinct !DILexicalBlock(scope: !4154, file: !589, line: 151, column: 17)
!4159 = !DILocation(line: 153, column: 41, scope: !4154, inlinedAt: !4120)
!4160 = !DILocation(line: 153, column: 13, scope: !4154, inlinedAt: !4120)
!4161 = !DILocation(line: 157, column: 11, scope: !4055, inlinedAt: !4120)
!4162 = !DILocation(line: 171, column: 16, scope: !4053, inlinedAt: !4120)
!4163 = !DILocation(line: 162, column: 15, scope: !4053, inlinedAt: !4120)
!4164 = !DILocation(line: 173, column: 18, scope: !4052, inlinedAt: !4120)
!4165 = !DILocation(line: 173, column: 15, scope: !4053, inlinedAt: !4120)
!4166 = !DILocation(line: 180, column: 20, scope: !4051, inlinedAt: !4120)
!4167 = !DILocation(line: 178, column: 21, scope: !4051, inlinedAt: !4120)
!4168 = !DILocation(line: 181, column: 22, scope: !4050, inlinedAt: !4120)
!4169 = !DILocation(line: 181, column: 19, scope: !4051, inlinedAt: !4120)
!4170 = !DILocation(line: 184, column: 19, scope: !4171, inlinedAt: !4120)
!4171 = distinct !DILexicalBlock(scope: !4050, file: !589, line: 182, column: 17)
!4172 = !DILocation(line: 186, column: 17, scope: !4171, inlinedAt: !4120)
!4173 = !DILocation(line: 190, column: 25, scope: !4049, inlinedAt: !4120)
!4174 = !DILocation(line: 191, column: 26, scope: !4049, inlinedAt: !4120)
!4175 = !DILocation(line: 193, column: 19, scope: !4049, inlinedAt: !4120)
!4176 = !DILocation(line: 196, column: 23, scope: !4046, inlinedAt: !4120)
!4177 = !DILocation(line: 197, column: 23, scope: !4046, inlinedAt: !4120)
!4178 = !DILocalVariable(name: "__fp", arg: 1, scope: !4179, file: !3989, line: 63, type: !4069)
!4179 = distinct !DISubprogram(name: "getc_unlocked", scope: !3989, file: !3989, line: 63, type: !4180, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !244, variables: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!21, !4069}
!4182 = !{!4178}
!4183 = !DILocation(line: 63, column: 22, scope: !4179, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 201, column: 27, scope: !4046, inlinedAt: !4120)
!4185 = !DILocation(line: 65, column: 10, scope: !4179, inlinedAt: !4184)
!4186 = !{!3995, !667, i64 8}
!4187 = !{!3995, !667, i64 16}
!4188 = !{!"branch_weights", i32 2000, i32 1}
!4189 = !DILocation(line: 195, column: 27, scope: !4046, inlinedAt: !4120)
!4190 = !DILocation(line: 202, column: 27, scope: !4046, inlinedAt: !4120)
!4191 = distinct !{!4191, !4192, !4195}
!4192 = !DILocation(line: 209, column: 27, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4194, file: !589, line: 207, column: 25)
!4194 = distinct !DILexicalBlock(scope: !4046, file: !589, line: 206, column: 27)
!4195 = !DILocation(line: 211, column: 58, scope: !4193)
!4196 = !DILocation(line: 65, column: 10, scope: !4179, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 210, column: 33, scope: !4193, inlinedAt: !4120)
!4198 = !DILocation(line: 63, column: 22, scope: !4179, inlinedAt: !4197)
!4199 = !DILocation(line: 210, column: 29, scope: !4193, inlinedAt: !4120)
!4200 = distinct !{!4200, !4201, !4202}
!4201 = !DILocation(line: 193, column: 19, scope: !4048)
!4202 = !DILocation(line: 241, column: 21, scope: !4048)
!4203 = !DILocation(line: 216, column: 23, scope: !4046, inlinedAt: !4120)
!4204 = !DILocation(line: 217, column: 27, scope: !4205, inlinedAt: !4120)
!4205 = distinct !DILexicalBlock(scope: !4046, file: !589, line: 217, column: 27)
!4206 = !DILocation(line: 217, column: 64, scope: !4205, inlinedAt: !4120)
!4207 = !DILocation(line: 217, column: 27, scope: !4046, inlinedAt: !4120)
!4208 = !DILocation(line: 219, column: 28, scope: !4046, inlinedAt: !4120)
!4209 = !DILocation(line: 198, column: 30, scope: !4046, inlinedAt: !4120)
!4210 = !DILocation(line: 220, column: 28, scope: !4046, inlinedAt: !4120)
!4211 = !DILocation(line: 198, column: 34, scope: !4046, inlinedAt: !4120)
!4212 = !DILocation(line: 199, column: 29, scope: !4046, inlinedAt: !4120)
!4213 = !DILocation(line: 222, column: 36, scope: !4214, inlinedAt: !4120)
!4214 = distinct !DILexicalBlock(scope: !4046, file: !589, line: 222, column: 27)
!4215 = !DILocation(line: 222, column: 27, scope: !4046, inlinedAt: !4120)
!4216 = !DILocation(line: 225, column: 63, scope: !4217, inlinedAt: !4120)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !589, line: 223, column: 25)
!4218 = !DILocation(line: 225, column: 46, scope: !4217, inlinedAt: !4120)
!4219 = !DILocation(line: 226, column: 25, scope: !4217, inlinedAt: !4120)
!4220 = !DILocation(line: 229, column: 36, scope: !4221, inlinedAt: !4120)
!4221 = distinct !DILexicalBlock(scope: !4214, file: !589, line: 228, column: 25)
!4222 = !DILocation(line: 230, column: 73, scope: !4221, inlinedAt: !4120)
!4223 = !DILocation(line: 230, column: 46, scope: !4221, inlinedAt: !4120)
!4224 = !DILocation(line: 232, column: 35, scope: !4225, inlinedAt: !4120)
!4225 = distinct !DILexicalBlock(scope: !4046, file: !589, line: 232, column: 27)
!4226 = !DILocation(line: 232, column: 27, scope: !4046, inlinedAt: !4120)
!4227 = !DILocation(line: 236, column: 27, scope: !4228, inlinedAt: !4120)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !589, line: 233, column: 25)
!4229 = !DILocation(line: 237, column: 27, scope: !4228, inlinedAt: !4120)
!4230 = !DILocation(line: 241, column: 21, scope: !4047, inlinedAt: !4120)
!4231 = !DILocation(line: 239, column: 39, scope: !4046, inlinedAt: !4120)
!4232 = !DILocation(line: 239, column: 50, scope: !4046, inlinedAt: !4120)
!4233 = !DILocation(line: 239, column: 61, scope: !4046, inlinedAt: !4120)
!4234 = !DILocalVariable(name: "__dest", arg: 1, scope: !4235, file: !3893, line: 88, type: !3896)
!4235 = distinct !DISubprogram(name: "strcpy", scope: !3893, file: !3893, line: 88, type: !3894, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !244, variables: !4236)
!4236 = !{!4234, !4237}
!4237 = !DILocalVariable(name: "__src", arg: 2, scope: !4235, file: !3893, line: 88, type: !3897)
!4238 = !DILocation(line: 88, column: 1, scope: !4235, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 239, column: 23, scope: !4046, inlinedAt: !4120)
!4240 = !DILocation(line: 90, column: 49, scope: !4235, inlinedAt: !4239)
!4241 = !DILocation(line: 90, column: 10, scope: !4235, inlinedAt: !4239)
!4242 = !DILocation(line: 88, column: 1, scope: !4235, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 240, column: 23, scope: !4046, inlinedAt: !4120)
!4244 = !DILocation(line: 90, column: 49, scope: !4235, inlinedAt: !4243)
!4245 = !DILocation(line: 90, column: 10, scope: !4235, inlinedAt: !4243)
!4246 = !DILocation(line: 193, column: 19, scope: !4047, inlinedAt: !4120)
!4247 = !DILocation(line: 242, column: 19, scope: !4049, inlinedAt: !4120)
!4248 = !DILocation(line: 243, column: 32, scope: !4249, inlinedAt: !4120)
!4249 = distinct !DILexicalBlock(scope: !4049, file: !589, line: 243, column: 23)
!4250 = !DILocation(line: 243, column: 23, scope: !4049, inlinedAt: !4120)
!4251 = !DILocation(line: 247, column: 33, scope: !4252, inlinedAt: !4120)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !589, line: 246, column: 21)
!4253 = !DILocation(line: 247, column: 45, scope: !4252, inlinedAt: !4120)
!4254 = !DILocation(line: 253, column: 11, scope: !4053, inlinedAt: !4120)
!4255 = !DILocation(line: 377, column: 23, scope: !4055, inlinedAt: !4120)
!4256 = !DILocation(line: 378, column: 5, scope: !4055, inlinedAt: !4120)
!4257 = !DILocation(line: 396, column: 15, scope: !4039)
!4258 = !DILocation(line: 590, column: 8, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4121, file: !589, line: 589, column: 3)
!4260 = !DILocation(line: 590, column: 17, scope: !4259)
!4261 = !DILocation(line: 589, column: 3, scope: !4121)
!4262 = !DILocation(line: 592, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4259, file: !589, line: 592, column: 9)
!4264 = !DILocation(line: 592, column: 35, scope: !4263)
!4265 = !DILocation(line: 593, column: 9, scope: !4263)
!4266 = !DILocation(line: 593, column: 24, scope: !4263)
!4267 = !DILocation(line: 593, column: 31, scope: !4263)
!4268 = !DILocation(line: 593, column: 34, scope: !4263)
!4269 = !DILocation(line: 593, column: 45, scope: !4263)
!4270 = !DILocation(line: 592, column: 9, scope: !4259)
!4271 = !DILocation(line: 595, column: 29, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4263, file: !589, line: 594, column: 7)
!4273 = !DILocation(line: 595, column: 27, scope: !4272)
!4274 = !DILocation(line: 595, column: 46, scope: !4272)
!4275 = !DILocation(line: 596, column: 9, scope: !4272)
!4276 = !DILocation(line: 591, column: 19, scope: !4259)
!4277 = !DILocation(line: 591, column: 36, scope: !4259)
!4278 = !DILocation(line: 591, column: 16, scope: !4259)
!4279 = !DILocation(line: 591, column: 52, scope: !4259)
!4280 = !DILocation(line: 591, column: 69, scope: !4259)
!4281 = !DILocation(line: 591, column: 49, scope: !4259)
!4282 = distinct !{!4282, !4261, !4283}
!4283 = !DILocation(line: 597, column: 7, scope: !4121)
!4284 = !DILocation(line: 602, column: 7, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4039, file: !589, line: 602, column: 7)
!4286 = !DILocation(line: 602, column: 18, scope: !4285)
!4287 = !DILocation(line: 602, column: 7, scope: !4039)
!4288 = !DILocation(line: 612, column: 3, scope: !4039)
!4289 = distinct !DISubprogram(name: "rpl_fclose", scope: !4290, file: !4290, line: 56, type: !4291, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !4333)
!4290 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!21, !4293}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3193, line: 7, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3195, line: 241, size: 1728, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4295, file: !3195, line: 242, baseType: !21, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4295, file: !3195, line: 247, baseType: !13, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4295, file: !3195, line: 248, baseType: !13, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4295, file: !3195, line: 249, baseType: !13, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4295, file: !3195, line: 250, baseType: !13, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4295, file: !3195, line: 251, baseType: !13, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4295, file: !3195, line: 252, baseType: !13, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4295, file: !3195, line: 253, baseType: !13, size: 64, offset: 448)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4295, file: !3195, line: 254, baseType: !13, size: 64, offset: 512)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4295, file: !3195, line: 256, baseType: !13, size: 64, offset: 576)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4295, file: !3195, line: 257, baseType: !13, size: 64, offset: 640)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4295, file: !3195, line: 258, baseType: !13, size: 64, offset: 704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4295, file: !3195, line: 260, baseType: !4310, size: 64, offset: 768)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3195, line: 156, size: 192, elements: !4312)
!4312 = !{!4313, !4314, !4316}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4311, file: !3195, line: 157, baseType: !4310, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4311, file: !3195, line: 158, baseType: !4315, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4311, file: !3195, line: 162, baseType: !21, size: 32, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4295, file: !3195, line: 262, baseType: !4315, size: 64, offset: 832)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4295, file: !3195, line: 264, baseType: !21, size: 32, offset: 896)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4295, file: !3195, line: 268, baseType: !21, size: 32, offset: 928)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4295, file: !3195, line: 270, baseType: !3221, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4295, file: !3195, line: 274, baseType: !100, size: 16, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4295, file: !3195, line: 275, baseType: !22, size: 8, offset: 1040)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4295, file: !3195, line: 276, baseType: !3225, size: 8, offset: 1048)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4295, file: !3195, line: 280, baseType: !3229, size: 64, offset: 1088)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4295, file: !3195, line: 289, baseType: !3232, size: 64, offset: 1152)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4295, file: !3195, line: 297, baseType: !15, size: 64, offset: 1216)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4295, file: !3195, line: 298, baseType: !15, size: 64, offset: 1280)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4295, file: !3195, line: 299, baseType: !15, size: 64, offset: 1344)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4295, file: !3195, line: 300, baseType: !15, size: 64, offset: 1408)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4295, file: !3195, line: 302, baseType: !172, size: 64, offset: 1472)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4295, file: !3195, line: 303, baseType: !21, size: 32, offset: 1536)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4295, file: !3195, line: 305, baseType: !3240, size: 160, offset: 1568)
!4333 = !{!4334, !4335, !4336, !4337}
!4334 = !DILocalVariable(name: "fp", arg: 1, scope: !4289, file: !4290, line: 56, type: !4293)
!4335 = !DILocalVariable(name: "saved_errno", scope: !4289, file: !4290, line: 58, type: !21)
!4336 = !DILocalVariable(name: "fd", scope: !4289, file: !4290, line: 59, type: !21)
!4337 = !DILocalVariable(name: "result", scope: !4289, file: !4290, line: 60, type: !21)
!4338 = !DILocation(line: 56, column: 19, scope: !4289)
!4339 = !DILocation(line: 58, column: 7, scope: !4289)
!4340 = !DILocation(line: 60, column: 7, scope: !4289)
!4341 = !DILocation(line: 63, column: 8, scope: !4289)
!4342 = !DILocation(line: 59, column: 7, scope: !4289)
!4343 = !DILocation(line: 64, column: 10, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4289, file: !4290, line: 64, column: 7)
!4345 = !DILocation(line: 64, column: 7, scope: !4289)
!4346 = !DILocation(line: 65, column: 12, scope: !4344)
!4347 = !DILocation(line: 65, column: 5, scope: !4344)
!4348 = !DILocation(line: 70, column: 9, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4289, file: !4290, line: 70, column: 7)
!4350 = !DILocation(line: 70, column: 23, scope: !4349)
!4351 = !DILocation(line: 70, column: 33, scope: !4349)
!4352 = !DILocation(line: 70, column: 26, scope: !4349)
!4353 = !DILocation(line: 70, column: 59, scope: !4349)
!4354 = !DILocation(line: 71, column: 7, scope: !4349)
!4355 = !DILocation(line: 71, column: 10, scope: !4349)
!4356 = !DILocation(line: 70, column: 7, scope: !4289)
!4357 = !DILocation(line: 98, column: 12, scope: !4289)
!4358 = !DILocation(line: 103, column: 7, scope: !4289)
!4359 = !DILocation(line: 72, column: 19, scope: !4349)
!4360 = !DILocation(line: 103, column: 19, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4289, file: !4290, line: 103, column: 7)
!4362 = !DILocation(line: 105, column: 13, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4361, file: !4290, line: 104, column: 5)
!4364 = !DILocation(line: 107, column: 5, scope: !4363)
!4365 = !DILocation(line: 110, column: 1, scope: !4289)
!4366 = distinct !DISubprogram(name: "rpl_fflush", scope: !4367, file: !4367, line: 127, type: !4368, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !4410)
!4367 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!21, !4370}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3193, line: 7, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3195, line: 241, size: 1728, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4372, file: !3195, line: 242, baseType: !21, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4372, file: !3195, line: 247, baseType: !13, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4372, file: !3195, line: 248, baseType: !13, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4372, file: !3195, line: 249, baseType: !13, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4372, file: !3195, line: 250, baseType: !13, size: 64, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4372, file: !3195, line: 251, baseType: !13, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4372, file: !3195, line: 252, baseType: !13, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4372, file: !3195, line: 253, baseType: !13, size: 64, offset: 448)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4372, file: !3195, line: 254, baseType: !13, size: 64, offset: 512)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4372, file: !3195, line: 256, baseType: !13, size: 64, offset: 576)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4372, file: !3195, line: 257, baseType: !13, size: 64, offset: 640)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4372, file: !3195, line: 258, baseType: !13, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4372, file: !3195, line: 260, baseType: !4387, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3195, line: 156, size: 192, elements: !4389)
!4389 = !{!4390, !4391, !4393}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4388, file: !3195, line: 157, baseType: !4387, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4388, file: !3195, line: 158, baseType: !4392, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4388, file: !3195, line: 162, baseType: !21, size: 32, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4372, file: !3195, line: 262, baseType: !4392, size: 64, offset: 832)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4372, file: !3195, line: 264, baseType: !21, size: 32, offset: 896)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4372, file: !3195, line: 268, baseType: !21, size: 32, offset: 928)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4372, file: !3195, line: 270, baseType: !3221, size: 64, offset: 960)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4372, file: !3195, line: 274, baseType: !100, size: 16, offset: 1024)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4372, file: !3195, line: 275, baseType: !22, size: 8, offset: 1040)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4372, file: !3195, line: 276, baseType: !3225, size: 8, offset: 1048)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4372, file: !3195, line: 280, baseType: !3229, size: 64, offset: 1088)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4372, file: !3195, line: 289, baseType: !3232, size: 64, offset: 1152)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4372, file: !3195, line: 297, baseType: !15, size: 64, offset: 1216)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4372, file: !3195, line: 298, baseType: !15, size: 64, offset: 1280)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4372, file: !3195, line: 299, baseType: !15, size: 64, offset: 1344)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4372, file: !3195, line: 300, baseType: !15, size: 64, offset: 1408)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4372, file: !3195, line: 302, baseType: !172, size: 64, offset: 1472)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4372, file: !3195, line: 303, baseType: !21, size: 32, offset: 1536)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4372, file: !3195, line: 305, baseType: !3240, size: 160, offset: 1568)
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "stream", arg: 1, scope: !4366, file: !4367, line: 127, type: !4370)
!4412 = !DILocation(line: 127, column: 19, scope: !4366)
!4413 = !DILocation(line: 148, column: 14, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4366, file: !4367, line: 148, column: 7)
!4415 = !DILocation(line: 148, column: 22, scope: !4414)
!4416 = !DILocation(line: 148, column: 27, scope: !4414)
!4417 = !DILocation(line: 148, column: 7, scope: !4366)
!4418 = !DILocation(line: 149, column: 12, scope: !4414)
!4419 = !DILocation(line: 149, column: 5, scope: !4414)
!4420 = !DILocalVariable(name: "fp", arg: 1, scope: !4421, file: !4367, line: 40, type: !4370)
!4421 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4367, file: !4367, line: 40, type: !4422, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !4370}
!4424 = !{!4420}
!4425 = !DILocation(line: 40, column: 48, scope: !4421, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 153, column: 3, scope: !4366)
!4427 = !DILocation(line: 42, column: 11, scope: !4428, inlinedAt: !4426)
!4428 = distinct !DILexicalBlock(scope: !4421, file: !4367, line: 42, column: 7)
!4429 = !DILocation(line: 42, column: 18, scope: !4428, inlinedAt: !4426)
!4430 = !DILocation(line: 42, column: 7, scope: !4421, inlinedAt: !4426)
!4431 = !DILocation(line: 44, column: 5, scope: !4428, inlinedAt: !4426)
!4432 = !DILocation(line: 155, column: 10, scope: !4366)
!4433 = !DILocation(line: 155, column: 3, scope: !4366)
!4434 = !DILocation(line: 229, column: 1, scope: !4366)
!4435 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4436, file: !4436, line: 28, type: !4437, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !4480)
!4436 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!21, !4439, !4479, !21}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3193, line: 7, baseType: !4441)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3195, line: 241, size: 1728, elements: !4442)
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4441, file: !3195, line: 242, baseType: !21, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4441, file: !3195, line: 247, baseType: !13, size: 64, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4441, file: !3195, line: 248, baseType: !13, size: 64, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4441, file: !3195, line: 249, baseType: !13, size: 64, offset: 192)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4441, file: !3195, line: 250, baseType: !13, size: 64, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4441, file: !3195, line: 251, baseType: !13, size: 64, offset: 320)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4441, file: !3195, line: 252, baseType: !13, size: 64, offset: 384)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4441, file: !3195, line: 253, baseType: !13, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4441, file: !3195, line: 254, baseType: !13, size: 64, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4441, file: !3195, line: 256, baseType: !13, size: 64, offset: 576)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4441, file: !3195, line: 257, baseType: !13, size: 64, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4441, file: !3195, line: 258, baseType: !13, size: 64, offset: 704)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4441, file: !3195, line: 260, baseType: !4456, size: 64, offset: 768)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3195, line: 156, size: 192, elements: !4458)
!4458 = !{!4459, !4460, !4462}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4457, file: !3195, line: 157, baseType: !4456, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4457, file: !3195, line: 158, baseType: !4461, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4457, file: !3195, line: 162, baseType: !21, size: 32, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4441, file: !3195, line: 262, baseType: !4461, size: 64, offset: 832)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4441, file: !3195, line: 264, baseType: !21, size: 32, offset: 896)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4441, file: !3195, line: 268, baseType: !21, size: 32, offset: 928)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4441, file: !3195, line: 270, baseType: !3221, size: 64, offset: 960)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4441, file: !3195, line: 274, baseType: !100, size: 16, offset: 1024)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4441, file: !3195, line: 275, baseType: !22, size: 8, offset: 1040)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4441, file: !3195, line: 276, baseType: !3225, size: 8, offset: 1048)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4441, file: !3195, line: 280, baseType: !3229, size: 64, offset: 1088)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4441, file: !3195, line: 289, baseType: !3232, size: 64, offset: 1152)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4441, file: !3195, line: 297, baseType: !15, size: 64, offset: 1216)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4441, file: !3195, line: 298, baseType: !15, size: 64, offset: 1280)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4441, file: !3195, line: 299, baseType: !15, size: 64, offset: 1344)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4441, file: !3195, line: 300, baseType: !15, size: 64, offset: 1408)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4441, file: !3195, line: 302, baseType: !172, size: 64, offset: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4441, file: !3195, line: 303, baseType: !21, size: 32, offset: 1536)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4441, file: !3195, line: 305, baseType: !3240, size: 160, offset: 1568)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3360, line: 57, baseType: !3221)
!4480 = !{!4481, !4482, !4483, !4484}
!4481 = !DILocalVariable(name: "fp", arg: 1, scope: !4435, file: !4436, line: 28, type: !4439)
!4482 = !DILocalVariable(name: "offset", arg: 2, scope: !4435, file: !4436, line: 28, type: !4479)
!4483 = !DILocalVariable(name: "whence", arg: 3, scope: !4435, file: !4436, line: 28, type: !21)
!4484 = !DILocalVariable(name: "pos", scope: !4485, file: !4436, line: 116, type: !4479)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !4436, line: 112, column: 5)
!4486 = distinct !DILexicalBlock(scope: !4435, file: !4436, line: 51, column: 7)
!4487 = !DILocation(line: 28, column: 15, scope: !4435)
!4488 = !DILocation(line: 28, column: 25, scope: !4435)
!4489 = !DILocation(line: 28, column: 37, scope: !4435)
!4490 = !DILocation(line: 51, column: 11, scope: !4486)
!4491 = !DILocation(line: 51, column: 31, scope: !4486)
!4492 = !DILocation(line: 51, column: 24, scope: !4486)
!4493 = !DILocation(line: 52, column: 7, scope: !4486)
!4494 = !DILocation(line: 52, column: 14, scope: !4486)
!4495 = !{!3995, !667, i64 40}
!4496 = !DILocation(line: 52, column: 35, scope: !4486)
!4497 = !{!3995, !667, i64 32}
!4498 = !DILocation(line: 52, column: 28, scope: !4486)
!4499 = !DILocation(line: 53, column: 7, scope: !4486)
!4500 = !DILocation(line: 53, column: 14, scope: !4486)
!4501 = !{!3995, !667, i64 72}
!4502 = !DILocation(line: 53, column: 28, scope: !4486)
!4503 = !DILocation(line: 51, column: 7, scope: !4435)
!4504 = !DILocation(line: 116, column: 26, scope: !4485)
!4505 = !DILocation(line: 116, column: 19, scope: !4485)
!4506 = !DILocation(line: 116, column: 13, scope: !4485)
!4507 = !DILocation(line: 117, column: 15, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4485, file: !4436, line: 117, column: 11)
!4509 = !DILocation(line: 117, column: 11, scope: !4485)
!4510 = !DILocation(line: 127, column: 11, scope: !4485)
!4511 = !DILocation(line: 127, column: 18, scope: !4485)
!4512 = !DILocation(line: 128, column: 11, scope: !4485)
!4513 = !DILocation(line: 128, column: 19, scope: !4485)
!4514 = !{!3995, !2510, i64 144}
!4515 = !DILocation(line: 159, column: 7, scope: !4485)
!4516 = !DILocation(line: 161, column: 10, scope: !4435)
!4517 = !DILocation(line: 161, column: 3, scope: !4435)
!4518 = !DILocation(line: 162, column: 1, scope: !4435)
