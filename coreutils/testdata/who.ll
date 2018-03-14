; ModuleID = 'coreutils-8.27/src/who.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: %s [OPTION]... [ FILE | ARG1 ARG2 ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print information about users who are currently logged in.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [195 x i8] c"\0A  -a, --all         same as -b -d --login -p -r -t -T -u\0A  -b, --boot        time of last system boot\0A  -d, --dead        print dead processes\0A  -H, --heading     print line of column headings\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"  -l, --login       print system login processes\0A\00", align 1
@.str.5 = private unnamed_addr constant [187 x i8] c"      --lookup      attempt to canonicalize hostnames via DNS\0A  -m                only hostname and user associated with stdin\0A  -p, --process     print active processes spawned by init\0A\00", align 1
@.str.6 = private unnamed_addr constant [223 x i8] c"  -q, --count       all login names and number of users logged on\0A  -r, --runlevel    print current runlevel\0A  -s, --short       print only name, line, and time (default)\0A  -t, --time        print last system clock change\0A\00", align 1
@.str.7 = private unnamed_addr constant [163 x i8] c"  -T, -w, --mesg    add user's message status as +, - or ?\0A  -u, --users       list users logged in\0A      --message     same as -T\0A      --writable    same as -T\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [125 x i8] c"\0AIf FILE is not specified, use %s.  %s as FILE is common.\0AIf ARG1 ARG2 given, -m presumed: 'am i' or 'mom likes' are usual.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"abdlmpqrstuwHT\00", align 1
@longopts = internal constant [18 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@need_boottime = internal unnamed_addr global i1 false, align 1
@need_deadprocs = internal unnamed_addr global i1 false, align 1
@need_login = internal unnamed_addr global i1 false, align 1
@need_initspawn = internal unnamed_addr global i1 false, align 1
@need_runlevel = internal unnamed_addr global i1 false, align 1
@need_clockchange = internal unnamed_addr global i1 false, align 1
@need_users = internal unnamed_addr global i1 false, align 1
@include_mesg = internal unnamed_addr global i1 false, align 1
@include_idle = internal unnamed_addr global i1 false, align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@do_lookup = internal unnamed_addr global i1 false, align 1
@short_output = internal unnamed_addr global i1 false, align 1
@short_list = internal unnamed_addr global i1 false, align 1
@my_line_only = internal unnamed_addr global i1 false, align 1
@include_heading = internal unnamed_addr global i1 false, align 1
@include_exit = internal unnamed_addr global i1 false, align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !66
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !70
@optind = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"\0A# users=%lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@idle_string.now = internal global i64 -9223372036854775808, align 8, !dbg !235
@.str.80 = private unnamed_addr constant [30 x i8] c"seconds_idle / (60 * 60) < 24\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"src/who.c\00", align 1
@__PRETTY_FUNCTION__.idle_string = private unnamed_addr constant [40 x i8] c"const char *idle_string(time_t, time_t)\00", align 1
@idle_string.idle_hhmm = internal global [6 x i8] zeroinitializer, align 1, !dbg !246
@.str.82 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c" old \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"  .  \00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  ?\00", align 1
@print_user.hostlen = internal unnamed_addr global i64 0, align 8, !dbg !231
@print_user.hoststr = internal unnamed_addr global i8* null, align 8, !dbg !125
@.str.77 = private unnamed_addr constant [8 x i8] c"(%s:%s)\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !251
@print_runlevel.runlevline = internal unnamed_addr global i8* null, align 8, !dbg !278
@.str.84 = private unnamed_addr constant [10 x i8] c"run-level\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s %c\00", align 1
@print_runlevel.comment = internal unnamed_addr global i8* null, align 8, !dbg !288
@.str.86 = private unnamed_addr constant [6 x i8] c"last=\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"system boot\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"clock change\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@print_deadprocs.exitstr = internal unnamed_addr global i8* null, align 8, !dbg !290
@.str.92 = private unnamed_addr constant [6 x i8] c"term=\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"exit=\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"%s%d %s%d\00", align 1
@print_line.mesg = internal global [3 x i8] c" x\00", align 1, !dbg !93
@.str.69 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c" %10s\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c" %-12s\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"   .\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"%-8.*s%s %-12.*s %-*s%s%s %-8s%s\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"heading\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), align 8, !dbg !309
@.str.25 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@last_cherror = internal global i32 0, align 4, !dbg !315
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !320
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !358
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !363
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !366
@.str.95 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !373
@.str.103 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.108, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.109, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.110, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.115, i32 0, i32 0), i8* null], align 16, !dbg !380
@.str.106 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.108 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.109 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.110 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.111 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.112 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.113 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.114 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.115 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !407
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !414
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !424
@.str.11.116 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.118 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.119 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.120 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.121 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.122 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !428
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !435
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !426
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !437
@.str.129 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.130 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.131 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.132 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.133 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.134 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.135 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.136 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.137 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.138 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.139 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.140 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.141 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.142 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.145 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.149 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.150 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !443
@.str.1.161 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !452
@.str.3.176 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.177 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.178 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.179 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.180 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !865 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !869, metadata !870), !dbg !871
  %2 = icmp eq i32 %0, 0, !dbg !872
  br i1 %2, label %8, label %3, !dbg !874

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !875, !tbaa !877
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !875
  %6 = load i8*, i8** @program_name, align 8, !dbg !875, !tbaa !877
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !875
  br label %53, !dbg !875

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !881
  %10 = load i8*, i8** @program_name, align 8, !dbg !881, !tbaa !877
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !881
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !883
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !883, !tbaa !877
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !883
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !884
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !884, !tbaa !877
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !884
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !885
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !885, !tbaa !877
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !885
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !886
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !886, !tbaa !877
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !886
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !887
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !887, !tbaa !877
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !887
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !888
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !888, !tbaa !877
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !888
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !889
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !889, !tbaa !877
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !889
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !890
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !890, !tbaa !877
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !890
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !891
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !891
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !81, metadata !870) #11, !dbg !892
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !81, metadata !870) #11, !dbg !892
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !894
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !894
  %40 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !895
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !89, metadata !870) #11, !dbg !896
  %41 = icmp eq i8* %40, null, !dbg !897
  br i1 %41, label %48, label %42, !dbg !899

; <label>:42:                                     ; preds = %8
  %43 = tail call i32 @strncmp(i8* nonnull %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #14, !dbg !900
  %44 = icmp eq i32 %43, 0, !dbg !900
  br i1 %44, label %48, label %45, !dbg !901

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !902
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !902
  br label %48, !dbg !904

; <label>:48:                                     ; preds = %8, %42, %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !905
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !905
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !906
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #11, !dbg !906
  br label %53

; <label>:53:                                     ; preds = %48, %3
  tail call void @exit(i32 %0) #15, !dbg !907
  unreachable, !dbg !907
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !908 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !913, metadata !870), !dbg !917
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !914, metadata !870), !dbg !918
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !916, metadata !870), !dbg !919
  %3 = load i8*, i8** %1, align 8, !dbg !920, !tbaa !877
  tail call void @set_program_name(i8* %3) #11, !dbg !921
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !922
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !923
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !924
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !925
  br label %8, !dbg !926

; <label>:8:                                      ; preds = %29, %2
  %9 = phi i8 [ 1, %2 ], [ %31, %29 ]
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !916, metadata !870), !dbg !919
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !927
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !915, metadata !870), !dbg !928
  switch i32 %10, label %28 [
    i32 -1, label %32
    i32 97, label %11
    i32 98, label %29
    i32 100, label %12
    i32 72, label %13
    i32 108, label %14
    i32 109, label %15
    i32 112, label %16
    i32 113, label %17
    i32 114, label %18
    i32 115, label %19
    i32 116, label %20
    i32 84, label %21
    i32 119, label %21
    i32 117, label %22
    i32 128, label %23
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !926

; <label>:11:                                     ; preds = %8
  store i1 true, i1* @need_boottime, align 1
  store i1 true, i1* @need_deadprocs, align 1
  store i1 true, i1* @need_login, align 1
  store i1 true, i1* @need_initspawn, align 1
  store i1 true, i1* @need_runlevel, align 1
  store i1 true, i1* @need_clockchange, align 1
  store i1 true, i1* @need_users, align 1
  store i1 true, i1* @include_mesg, align 1
  store i1 true, i1* @include_idle, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !929

; <label>:12:                                     ; preds = %8
  store i1 true, i1* @need_deadprocs, align 1
  store i1 true, i1* @include_idle, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !932

; <label>:13:                                     ; preds = %8
  br label %29, !dbg !933

; <label>:14:                                     ; preds = %8
  store i1 true, i1* @need_login, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !934

; <label>:15:                                     ; preds = %8
  br label %29, !dbg !935

; <label>:16:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !936

; <label>:17:                                     ; preds = %8
  br label %29, !dbg !937

; <label>:18:                                     ; preds = %8
  store i1 true, i1* @need_runlevel, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !938

; <label>:19:                                     ; preds = %8
  br label %29, !dbg !939

; <label>:20:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !940

; <label>:21:                                     ; preds = %8, %8
  br label %29, !dbg !941

; <label>:22:                                     ; preds = %8
  store i1 true, i1* @need_users, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !916, metadata !870), !dbg !919
  br label %29, !dbg !942

; <label>:23:                                     ; preds = %8
  br label %29, !dbg !943

; <label>:24:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !944
  unreachable, !dbg !944

; <label>:25:                                     ; preds = %8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !945, !tbaa !877
  %27 = load i8*, i8** @Version, align 8, !dbg !945, !tbaa !877
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #11, !dbg !945
  tail call void @exit(i32 0) #15, !dbg !945
  unreachable, !dbg !945

; <label>:28:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !946
  unreachable, !dbg !946

; <label>:29:                                     ; preds = %8, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %30 = phi i1* [ @do_lookup, %23 ], [ @include_idle, %22 ], [ @include_mesg, %21 ], [ @need_clockchange, %20 ], [ @short_output, %19 ], [ @include_idle, %18 ], [ @short_list, %17 ], [ @need_initspawn, %16 ], [ @my_line_only, %15 ], [ @include_idle, %14 ], [ @include_heading, %13 ], [ @include_exit, %12 ], [ @include_exit, %11 ], [ @need_boottime, %8 ]
  %31 = phi i8 [ %9, %23 ], [ 0, %22 ], [ %9, %21 ], [ 0, %20 ], [ %9, %19 ], [ 0, %18 ], [ %9, %17 ], [ 0, %16 ], [ %9, %15 ], [ 0, %14 ], [ %9, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %8 ]
  store i1 true, i1* %30, align 1
  tail call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !916, metadata !870), !dbg !919
  br label %8, !dbg !926, !llvm.loop !947

; <label>:32:                                     ; preds = %8
  %33 = and i8 %9, 1, !dbg !949
  %34 = icmp eq i8 %33, 0, !dbg !949
  br i1 %34, label %36, label %35, !dbg !951

; <label>:35:                                     ; preds = %32
  store i1 true, i1* @need_users, align 1
  store i1 true, i1* @short_output, align 1
  br label %36, !dbg !952

; <label>:36:                                     ; preds = %32, %35
  %37 = load i1, i1* @include_exit, align 1
  br i1 %37, label %38, label %39, !dbg !954

; <label>:38:                                     ; preds = %36
  store i1 false, i1* @short_output, align 1
  br label %39, !dbg !955

; <label>:39:                                     ; preds = %38, %36
  %40 = tail call zeroext i1 @hard_locale(i32 2) #11, !dbg !958
  %41 = select i1 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), !dbg !960
  %42 = select i1 %40, i32 16, i32 12, !dbg !960
  store i8* %41, i8** @time_format, align 8, !tbaa !877
  store i32 %42, i32* @time_format_width, align 4, !tbaa !961
  %43 = load i32, i32* @optind, align 4, !dbg !963, !tbaa !961
  %44 = sub nsw i32 %0, %43, !dbg !964
  switch i32 %44, label %51 [
    i32 2, label %45
    i32 -1, label %46
    i32 0, label %46
    i32 1, label %47
  ], !dbg !965

; <label>:45:                                     ; preds = %39
  store i1 true, i1* @my_line_only, align 1
  br label %46, !dbg !966

; <label>:46:                                     ; preds = %39, %39, %45
  tail call fastcc void @who(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 1), !dbg !968
  br label %59, !dbg !969

; <label>:47:                                     ; preds = %39
  %48 = sext i32 %43 to i64, !dbg !970
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !970
  %50 = load i8*, i8** %49, align 8, !dbg !970, !tbaa !877
  tail call fastcc void @who(i8* %50, i32 0), !dbg !971
  br label %59, !dbg !972

; <label>:51:                                     ; preds = %39
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !973
  %53 = load i32, i32* @optind, align 4, !dbg !974, !tbaa !961
  %54 = add nsw i32 %53, 2, !dbg !975
  %55 = sext i32 %54 to i64, !dbg !976
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !976
  %57 = load i8*, i8** %56, align 8, !dbg !976, !tbaa !877
  %58 = tail call i8* @quote(i8* %57) #11, !dbg !977
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %58) #11, !dbg !978
  tail call void @usage(i32 1) #16, !dbg !979
  unreachable, !dbg !979

; <label>:59:                                     ; preds = %47, %46
  ret i32 0, !dbg !980
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @who(i8*, i32) unnamed_addr #6 !dbg !981 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca [7 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %11, metadata !212, metadata !870), !dbg !990
  %12 = alloca [38 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [38 x i8]* %12, metadata !214, metadata !870), !dbg !1006
  %13 = alloca [12 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !219, metadata !870), !dbg !1007
  %14 = alloca [257 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [257 x i8]* %14, metadata !223, metadata !870), !dbg !1008
  %15 = alloca i64, align 8
  %16 = alloca %struct.utmpx*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !985, metadata !870), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !986, metadata !870), !dbg !1010
  %17 = bitcast i64* %15 to i8*, !dbg !1011
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #11, !dbg !1011
  %18 = bitcast %struct.utmpx** %16 to i8*, !dbg !1012
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1012
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !987, metadata !870), !dbg !1013
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %16, i64 0, metadata !988, metadata !870), !dbg !1014
  %19 = call i32 @read_utmp(i8* %0, i64* nonnull %15, %struct.utmpx** nonnull %16, i32 %1) #11, !dbg !1015
  %20 = icmp eq i32 %19, 0, !dbg !1017
  br i1 %20, label %25, label %21, !dbg !1018

; <label>:21:                                     ; preds = %2
  %22 = tail call i32* @__errno_location() #17, !dbg !1019
  %23 = load i32, i32* %22, align 4, !dbg !1019, !tbaa !961
  %24 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1019
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* %24) #11, !dbg !1019
  unreachable, !dbg !1019

; <label>:25:                                     ; preds = %2
  %26 = load i1, i1* @short_list, align 1
  %27 = load i64, i64* %15, align 8, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !987, metadata !870), !dbg !1013
  %28 = load %struct.utmpx*, %struct.utmpx** %16, align 8, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !988, metadata !870), !dbg !1014
  br i1 %26, label %29, label %58, !dbg !1022

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1023, metadata !870) #11, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1026, metadata !870) #11, !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1027, metadata !870) #11, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1023, metadata !870) #11, !dbg !1033
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i64 0, metadata !1028, metadata !870) #11, !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1027, metadata !870) #11, !dbg !1036
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1026, metadata !870) #11, !dbg !1035
  %30 = icmp eq i64 %27, 0, !dbg !1038
  br i1 %30, label %54, label %31, !dbg !1038

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !1039

; <label>:32:                                     ; preds = %31, %49
  %33 = phi i64 [ %37, %49 ], [ %27, %31 ]
  %34 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %31 ]
  %35 = phi i64 [ %50, %49 ], [ 0, %31 ]
  %36 = phi %struct.utmpx* [ %52, %49 ], [ %28, %31 ]
  %37 = add i64 %33, -1, !dbg !1039
  call void @llvm.dbg.value(metadata %struct.utmpx* %36, i64 0, metadata !1026, metadata !870) #11, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1027, metadata !870) #11, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1028, metadata !870) #11, !dbg !1037
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 0, i32 4, i64 0, !dbg !1040
  %39 = load i8, i8* %38, align 4, !dbg !1040, !tbaa !1041
  %40 = icmp eq i8 %39, 0, !dbg !1040
  br i1 %40, label %49, label %41, !dbg !1040

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 0, i32 0, !dbg !1040
  %43 = load i16, i16* %42, align 4, !dbg !1040, !tbaa !1042
  %44 = icmp eq i16 %43, 7, !dbg !1040
  br i1 %44, label %45, label %49, !dbg !1047

; <label>:45:                                     ; preds = %41
  %46 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %36) #11, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1029, metadata !870) #11, !dbg !1049
  %47 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* %34, i8* %46) #11, !dbg !1050
  call void @free(i8* %46) #11, !dbg !1051
  %48 = add i64 %35, 1, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1027, metadata !870) #11, !dbg !1036
  br label %49, !dbg !1053

; <label>:49:                                     ; preds = %45, %41, %32
  %50 = phi i64 [ %48, %45 ], [ %35, %41 ], [ %35, %32 ]
  %51 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %45 ], [ %34, %41 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1028, metadata !870) #11, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1027, metadata !870) #11, !dbg !1036
  %52 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 1, !dbg !1054
  call void @llvm.dbg.value(metadata %struct.utmpx* %52, i64 0, metadata !1026, metadata !870) #11, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1023, metadata !870) #11, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1028, metadata !870) #11, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1027, metadata !870) #11, !dbg !1036
  call void @llvm.dbg.value(metadata %struct.utmpx* %52, i64 0, metadata !1026, metadata !870) #11, !dbg !1035
  %53 = icmp eq i64 %37, 0, !dbg !1038
  br i1 %53, label %54, label %32, !dbg !1038, !llvm.loop !1055

; <label>:54:                                     ; preds = %49, %29
  %55 = phi i64 [ 0, %29 ], [ %50, %49 ]
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i32 5) #11, !dbg !1058
  %57 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i64 %55) #11, !dbg !1058
  br label %519, !dbg !1059

; <label>:58:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !296, metadata !870) #11, !dbg !1060
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1068, metadata !870) #11, !dbg !1073
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1075, metadata !870) #11, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1000, metadata !870) #11, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1001, metadata !870) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, i64 0, metadata !1003, metadata !870) #11, !dbg !1084
  %59 = load i1, i1* @include_heading, align 1
  br i1 %59, label %60, label %68, !dbg !1085

; <label>:60:                                     ; preds = %58
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 5) #11, !dbg !1086
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 5) #11, !dbg !1092
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #11, !dbg !1093
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 5) #11, !dbg !1094
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1095
  %66 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1096
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32 5) #11, !dbg !1097
  call fastcc void @print_line(i32 -1, i8* %61, i8 signext 32, i32 -1, i8* %62, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67) #11, !dbg !1098
  br label %68, !dbg !1099

; <label>:68:                                     ; preds = %60, %58
  %69 = load i1, i1* @my_line_only, align 1
  br i1 %69, label %70, label %78, !dbg !1100

; <label>:70:                                     ; preds = %68
  %71 = call i8* @ttyname(i32 0) #11, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1002, metadata !870) #11, !dbg !1104
  %72 = icmp eq i8* %71, null, !dbg !1105
  br i1 %72, label %519, label %73, !dbg !1107

; <label>:73:                                     ; preds = %70
  %74 = call i32 @strncmp(i8* nonnull %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 5) #14, !dbg !1108
  %75 = icmp eq i32 %74, 0, !dbg !1110
  %76 = getelementptr inbounds i8, i8* %71, i64 5, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !1002, metadata !870) #11, !dbg !1104
  %77 = select i1 %75, i8* %76, i8* %71, !dbg !1112
  br label %78, !dbg !1112

; <label>:78:                                     ; preds = %73, %68
  %79 = phi i8* [ undef, %68 ], [ %77, %73 ]
  call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1002, metadata !870) #11, !dbg !1104
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, i64 0, metadata !1003, metadata !870) #11, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1001, metadata !870) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1000, metadata !870) #11, !dbg !1082
  %80 = icmp eq i64 %27, 0, !dbg !1113
  br i1 %80, label %519, label %81, !dbg !1113

; <label>:81:                                     ; preds = %78
  %82 = bitcast %struct.stat* %10 to i8*
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %84 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 0
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 3
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 11, i32 0
  %88 = bitcast i64* %9 to i8*
  %89 = getelementptr inbounds [257 x i8], [257 x i8]* %14, i64 0, i64 0
  %90 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 5
  %91 = bitcast i64* %8 to i8*
  %92 = bitcast i64* %7 to i8*
  %93 = bitcast i64* %6 to i8*
  %94 = bitcast i64* %5 to i8*
  %95 = bitcast i64* %4 to i8*
  %96 = bitcast i64* %3 to i8*
  br label %97, !dbg !1113

; <label>:97:                                     ; preds = %515, %81
  %98 = phi i64 [ %27, %81 ], [ %101, %515 ]
  %99 = phi i64 [ -9223372036854775808, %81 ], [ %516, %515 ]
  %100 = phi %struct.utmpx* [ %28, %81 ], [ %517, %515 ]
  %101 = add i64 %98, -1, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1001, metadata !870) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1003, metadata !870) #11, !dbg !1084
  %102 = load i1, i1* @my_line_only, align 1
  br i1 %102, label %103, label %107, !dbg !1115

; <label>:103:                                    ; preds = %97
  %104 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 2, i64 0, !dbg !1116
  %105 = call i32 @strncmp(i8* %79, i8* %104, i64 32) #14, !dbg !1116
  %106 = icmp eq i32 %105, 0, !dbg !1116
  br i1 %106, label %107, label %507, !dbg !1117

; <label>:107:                                    ; preds = %103, %97
  %108 = load i1, i1* @need_users, align 1
  br i1 %108, label %109, label %283, !dbg !1118

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 4, i64 0, !dbg !1119
  %111 = load i8, i8* %110, align 4, !dbg !1119, !tbaa !1041
  %112 = icmp eq i8 %111, 0, !dbg !1119
  br i1 %112, label %283, label %113, !dbg !1119

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1119
  %115 = load i16, i16* %114, align 4, !dbg !1119, !tbaa !1042
  %116 = icmp eq i16 %115, 7, !dbg !1119
  br i1 %116, label %117, label %283, !dbg !1120

; <label>:117:                                    ; preds = %113
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !171, metadata !870) #11, !dbg !1121
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !172, metadata !870) #11, !dbg !1122
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %82) #11, !dbg !1123
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %83) #11, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %84) #11, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !218, metadata !870) #11, !dbg !1126
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1007
  %118 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 1, !dbg !1007
  %119 = load i32, i32* %118, align 4, !dbg !1007, !tbaa !1127
  %120 = sext i32 %119 to i64, !dbg !1007
  %121 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %85, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %120) #11, !dbg !1007
  %122 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 2, i64 0, !dbg !1128
  %123 = load i8, i8* %122, align 4, !dbg !1128, !tbaa !1041
  %124 = icmp eq i8 %123, 47, !dbg !1128
  br i1 %124, label %127, label %125, !dbg !1130

; <label>:125:                                    ; preds = %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 6, i32 1, i1 false) #11, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !218, metadata !870) #11, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !218, metadata !870) #11, !dbg !1126
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1132, metadata !1142) #11, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1139, metadata !870) #11, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !1140, metadata !870) #11, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !1140, metadata !870) #11, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1139, metadata !870) #11, !dbg !1145
  %126 = icmp eq i8 %123, 0, !dbg !1147
  br i1 %126, label %140, label %127, !dbg !1148

; <label>:127:                                    ; preds = %117, %125
  %128 = phi i8* [ %90, %125 ], [ %84, %117 ]
  %129 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 2, i64 32, !dbg !1149
  br label %130, !dbg !1148

; <label>:130:                                    ; preds = %137, %127
  %131 = phi i8* [ %122, %127 ], [ %134, %137 ]
  %132 = phi i8* [ %128, %127 ], [ %135, %137 ]
  %133 = phi i8 [ %123, %127 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1139, metadata !870) #11, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1140, metadata !870) #11, !dbg !1146
  %134 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !1140, metadata !870) #11, !dbg !1146
  %135 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1139, metadata !870) #11, !dbg !1145
  store i8 %133, i8* %132, align 1, !dbg !1152, !tbaa !1041, !alias.scope !1153, !noalias !1156
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1139, metadata !870) #11, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !1140, metadata !870) #11, !dbg !1146
  %136 = icmp ult i8* %134, %129, !dbg !1158
  br i1 %136, label %137, label %140, !dbg !1147, !llvm.loop !1159

; <label>:137:                                    ; preds = %130
  %138 = load i8, i8* %134, align 1, !dbg !1162, !tbaa !1041, !alias.scope !1156, !noalias !1153
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !1140, metadata !870) #11, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1139, metadata !870) #11, !dbg !1145
  %139 = icmp eq i8 %138, 0, !dbg !1147
  br i1 %139, label %140, label %130, !dbg !1148

; <label>:140:                                    ; preds = %137, %130, %125
  %141 = phi i8* [ %90, %125 ], [ %135, %130 ], [ %135, %137 ]
  store i8 0, i8* %141, align 1, !dbg !1163, !tbaa !1041, !alias.scope !1153, !noalias !1156
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !173, metadata !870) #11, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !1165, metadata !870) #11, !dbg !1173
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !1172, metadata !870) #11, !dbg !1173
  %142 = call i32 @__xstat(i32 1, i8* nonnull %84, %struct.stat* nonnull %10) #11, !dbg !1176
  %143 = icmp eq i32 %142, 0, !dbg !1177
  br i1 %143, label %144, label %183, !dbg !1178

; <label>:144:                                    ; preds = %140
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !173, metadata !870) #11, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !1179, metadata !870) #11, !dbg !1186
  %145 = load i32, i32* %86, align 8, !dbg !1189, !tbaa !1190
  %146 = trunc i32 %145 to i8, !dbg !1193
  %147 = lshr i8 %146, 3, !dbg !1193
  %148 = and i8 %147, 2, !dbg !1193
  %149 = xor i8 %148, 2, !dbg !1193
  %150 = add nuw nsw i8 %149, 43, !dbg !1193
  call void @llvm.dbg.value(metadata i8 %150, i64 0, metadata !211, metadata !870) #11, !dbg !1194
  %151 = load i64, i64* %87, align 8, !dbg !1195, !tbaa !1196
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !210, metadata !870) #11, !dbg !1197
  call void @llvm.dbg.value(metadata i8 %150, i64 0, metadata !211, metadata !870) #11, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !210, metadata !870) #11, !dbg !1197
  %152 = icmp eq i64 %151, 0, !dbg !1198
  br i1 %152, label %183, label %153, !dbg !1200

; <label>:153:                                    ; preds = %144
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !241, metadata !870) #11, !dbg !1201
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !242, metadata !870) #11, !dbg !1203
  %154 = load i64, i64* @idle_string.now, align 8, !dbg !1204, !tbaa !1020
  %155 = icmp eq i64 %154, -9223372036854775808, !dbg !1206
  br i1 %155, label %156, label %158, !dbg !1207

; <label>:156:                                    ; preds = %153
  %157 = call i64 @time(i64* nonnull @idle_string.now) #11, !dbg !1208
  br label %158, !dbg !1208

; <label>:158:                                    ; preds = %156, %153
  %159 = icmp sgt i64 %151, %99, !dbg !1209
  br i1 %159, label %160, label %178, !dbg !1210

; <label>:160:                                    ; preds = %158
  %161 = load i64, i64* @idle_string.now, align 8, !dbg !1211, !tbaa !1020
  %162 = add nsw i64 %161, -86400, !dbg !1212
  %163 = icmp sge i64 %162, %151, !dbg !1213
  %164 = icmp slt i64 %161, %151, !dbg !1214
  %165 = or i1 %164, %163, !dbg !1215
  br i1 %165, label %178, label %166, !dbg !1215

; <label>:166:                                    ; preds = %160
  %167 = sub nsw i64 %161, %151, !dbg !1216
  %168 = trunc i64 %167 to i32, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !243, metadata !870) #11, !dbg !1218
  %169 = icmp slt i32 %168, 60, !dbg !1219
  br i1 %169, label %180, label %170, !dbg !1221

; <label>:170:                                    ; preds = %166
  %171 = icmp slt i32 %168, 86400, !dbg !1222
  br i1 %171, label %173, label %172, !dbg !1226

; <label>:172:                                    ; preds = %170
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.idle_string, i64 0, i64 0)) #15, !dbg !1222
  unreachable, !dbg !1222

; <label>:173:                                    ; preds = %170
  %174 = udiv i32 %168, 3600
  %175 = urem i32 %168, 3600
  %176 = udiv i32 %175, 60, !dbg !1227
  %177 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), i32 1, i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 %174, i32 %176) #11, !dbg !1227
  br label %180, !dbg !1228

; <label>:178:                                    ; preds = %160, %158
  %179 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 5) #11, !dbg !1229
  br label %180, !dbg !1230

; <label>:180:                                    ; preds = %178, %173, %166
  %181 = phi i8* [ %179, %178 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), %173 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), %166 ]
  %182 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %83, i32 1, i64 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 6, i8* %181) #11, !dbg !1231
  br label %186, !dbg !1231

; <label>:183:                                    ; preds = %144, %140
  %184 = phi i8 [ %150, %144 ], [ 63, %140 ]
  %185 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %83, i32 1, i64 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #11, !dbg !1232
  br label %186

; <label>:186:                                    ; preds = %183, %180
  %187 = phi i8 [ %184, %183 ], [ %150, %180 ]
  %188 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 5, i64 0, !dbg !1233
  %189 = load i8, i8* %188, align 4, !dbg !1233, !tbaa !1041
  %190 = icmp eq i8 %189, 0, !dbg !1233
  br i1 %190, label %255, label %191, !dbg !1234

; <label>:191:                                    ; preds = %186
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %89) #11, !dbg !1235
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !229, metadata !870) #11, !dbg !1236
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !230, metadata !870) #11, !dbg !1237
  %192 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 5, i64 256, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1132, metadata !870) #11, !dbg !1240
  call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1139, metadata !870) #11, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !1140, metadata !870) #11, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !1140, metadata !870) #11, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1139, metadata !870) #11, !dbg !1241
  br label %193, !dbg !1243

; <label>:193:                                    ; preds = %200, %191
  %194 = phi i8* [ %188, %191 ], [ %197, %200 ]
  %195 = phi i8* [ %89, %191 ], [ %198, %200 ]
  %196 = phi i8 [ %189, %191 ], [ %201, %200 ]
  call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !1139, metadata !870) #11, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1140, metadata !870) #11, !dbg !1242
  %197 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1140, metadata !870) #11, !dbg !1242
  %198 = getelementptr inbounds i8, i8* %195, i64 1, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1139, metadata !870) #11, !dbg !1241
  store i8 %196, i8* %195, align 1, !dbg !1246, !tbaa !1041, !alias.scope !1247, !noalias !1250
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1139, metadata !870) #11, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1140, metadata !870) #11, !dbg !1242
  %199 = icmp ult i8* %197, %192, !dbg !1252
  br i1 %199, label %200, label %203, !dbg !1253, !llvm.loop !1159

; <label>:200:                                    ; preds = %193
  %201 = load i8, i8* %197, align 1, !dbg !1254, !tbaa !1041, !alias.scope !1250, !noalias !1247
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1140, metadata !870) #11, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1139, metadata !870) #11, !dbg !1241
  %202 = icmp eq i8 %201, 0, !dbg !1253
  br i1 %202, label %203, label %193, !dbg !1243

; <label>:203:                                    ; preds = %200, %193
  store i8 0, i8* %198, align 1, !dbg !1255, !tbaa !1041, !alias.scope !1247, !noalias !1250
  %204 = call i8* @strchr(i8* nonnull %89, i32 58) #14, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !230, metadata !870) #11, !dbg !1237
  %205 = icmp eq i8* %204, null, !dbg !1257
  br i1 %205, label %208, label %206, !dbg !1259

; <label>:206:                                    ; preds = %203
  %207 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %207, i64 0, metadata !230, metadata !870) #11, !dbg !1237
  store i8 0, i8* %204, align 1, !dbg !1261, !tbaa !1041
  br label %208, !dbg !1262

; <label>:208:                                    ; preds = %206, %203
  %209 = phi i8* [ %207, %206 ], [ null, %203 ]
  call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !230, metadata !870) #11, !dbg !1237
  %210 = load i8, i8* %89, align 16, !dbg !1263, !tbaa !1041
  %211 = icmp eq i8 %210, 0, !dbg !1263
  br i1 %211, label %216, label %212, !dbg !1265

; <label>:212:                                    ; preds = %208
  %213 = load i1, i1* @do_lookup, align 1
  br i1 %213, label %214, label %216, !dbg !1266

; <label>:214:                                    ; preds = %212
  %215 = call i8* @canon_host(i8* nonnull %89) #11, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !229, metadata !870) #11, !dbg !1236
  br label %216, !dbg !1269

; <label>:216:                                    ; preds = %214, %212, %208
  %217 = phi i8* [ %215, %214 ], [ null, %212 ], [ null, %208 ]
  call void @llvm.dbg.value(metadata i8* %217, i64 0, metadata !229, metadata !870) #11, !dbg !1236
  %218 = icmp eq i8* %217, null, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !229, metadata !870) #11, !dbg !1236
  %219 = select i1 %218, i8* %89, i8* %217, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !229, metadata !870) #11, !dbg !1236
  %220 = icmp eq i8* %209, null, !dbg !1273
  %221 = load i64, i64* @print_user.hostlen, align 8, !tbaa !1020
  %222 = call i64 @strlen(i8* %219) #14, !dbg !1275
  br i1 %220, label %238, label %223, !dbg !1278

; <label>:223:                                    ; preds = %216
  %224 = call i64 @strlen(i8* nonnull %209) #14, !dbg !1279
  %225 = add i64 %222, 4, !dbg !1280
  %226 = add i64 %225, %224, !dbg !1281
  %227 = icmp ult i64 %221, %226, !dbg !1282
  br i1 %227, label %230, label %228, !dbg !1283

; <label>:228:                                    ; preds = %223
  %229 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1284, !tbaa !877
  br label %234, !dbg !1283

; <label>:230:                                    ; preds = %223
  store i64 %226, i64* @print_user.hostlen, align 8, !dbg !1285, !tbaa !1020
  %231 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1287, !tbaa !877
  call void @free(i8* %231) #11, !dbg !1288
  %232 = load i64, i64* @print_user.hostlen, align 8, !dbg !1289, !tbaa !1020
  %233 = call noalias i8* @xmalloc(i64 %232) #11, !dbg !1290
  store i8* %233, i8** @print_user.hoststr, align 8, !dbg !1291, !tbaa !877
  br label %234, !dbg !1292

; <label>:234:                                    ; preds = %230, %228
  %235 = phi i8* [ %229, %228 ], [ %233, %230 ], !dbg !1284
  %236 = call i64 @llvm.objectsize.i64.p0i8(i8* %235, i1 false, i1 true) #11, !dbg !1284
  %237 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %235, i32 1, i64 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8* %219, i8* nonnull %209) #11, !dbg !1284
  br label %251, !dbg !1293

; <label>:238:                                    ; preds = %216
  %239 = add i64 %222, 3, !dbg !1294
  %240 = icmp ult i64 %221, %239, !dbg !1297
  br i1 %240, label %243, label %241, !dbg !1298

; <label>:241:                                    ; preds = %238
  %242 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1299, !tbaa !877
  br label %247, !dbg !1298

; <label>:243:                                    ; preds = %238
  store i64 %239, i64* @print_user.hostlen, align 8, !dbg !1300, !tbaa !1020
  %244 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1302, !tbaa !877
  call void @free(i8* %244) #11, !dbg !1303
  %245 = load i64, i64* @print_user.hostlen, align 8, !dbg !1304, !tbaa !1020
  %246 = call noalias i8* @xmalloc(i64 %245) #11, !dbg !1305
  store i8* %246, i8** @print_user.hoststr, align 8, !dbg !1306, !tbaa !877
  br label %247, !dbg !1307

; <label>:247:                                    ; preds = %243, %241
  %248 = phi i8* [ %242, %241 ], [ %246, %243 ], !dbg !1299
  %249 = call i64 @llvm.objectsize.i64.p0i8(i8* %248, i1 false, i1 true) #11, !dbg !1299
  %250 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %248, i32 1, i64 %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* %219) #11, !dbg !1299
  br label %251

; <label>:251:                                    ; preds = %247, %234
  %252 = icmp eq i8* %219, %89, !dbg !1308
  br i1 %252, label %254, label %253, !dbg !1310

; <label>:253:                                    ; preds = %251
  call void @free(i8* %219) #11, !dbg !1311
  br label %254, !dbg !1311

; <label>:254:                                    ; preds = %253, %251
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %89) #11, !dbg !1312
  br label %266, !dbg !1313

; <label>:255:                                    ; preds = %186
  %256 = load i64, i64* @print_user.hostlen, align 8, !dbg !1314, !tbaa !1020
  %257 = icmp eq i64 %256, 0, !dbg !1317
  br i1 %257, label %260, label %258, !dbg !1318

; <label>:258:                                    ; preds = %255
  %259 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1319, !tbaa !877
  br label %264, !dbg !1318

; <label>:260:                                    ; preds = %255
  store i64 1, i64* @print_user.hostlen, align 8, !dbg !1320, !tbaa !1020
  %261 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1322, !tbaa !877
  call void @free(i8* %261) #11, !dbg !1323
  %262 = load i64, i64* @print_user.hostlen, align 8, !dbg !1324, !tbaa !1020
  %263 = call noalias i8* @xmalloc(i64 %262) #11, !dbg !1325
  store i8* %263, i8** @print_user.hoststr, align 8, !dbg !1326, !tbaa !877
  br label %264, !dbg !1327

; <label>:264:                                    ; preds = %260, %258
  %265 = phi i8* [ %259, %258 ], [ %263, %260 ], !dbg !1319
  store i8 0, i8* %265, align 1, !dbg !1328, !tbaa !1041
  br label %266

; <label>:266:                                    ; preds = %264, %254
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1329
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #11, !dbg !1331
  %267 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1332
  %268 = load i32, i32* %267, align 4, !dbg !1332, !tbaa !1333
  %269 = sext i32 %268 to i64, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %269, i64 0, metadata !258, metadata !870) #11, !dbg !1334
  store i64 %269, i64* %9, align 8, !dbg !1334, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !258, metadata !870) #11, !dbg !1334
  %270 = call %struct.tm* @localtime(i64* nonnull %9) #11, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.tm* %270, i64 0, metadata !259, metadata !870) #11, !dbg !1336
  %271 = icmp eq %struct.tm* %270, null, !dbg !1337
  br i1 %271, label %275, label %272, !dbg !1339

; <label>:272:                                    ; preds = %266
  %273 = load i8*, i8** @time_format, align 8, !dbg !1340, !tbaa !877
  %274 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %273, %struct.tm* nonnull %270) #11, !dbg !1342
  br label %278, !dbg !1343

; <label>:275:                                    ; preds = %266
  %276 = load i64, i64* %9, align 8, !dbg !1344, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !258, metadata !870) #11, !dbg !1334
  %277 = call i8* @imaxtostr(i64 %276, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1345
  br label %278, !dbg !1353

; <label>:278:                                    ; preds = %275, %272
  %279 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %272 ], [ %277, %275 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #11, !dbg !1354
  %280 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1355, !tbaa !877
  %281 = icmp eq i8* %280, null, !dbg !1355
  %282 = select i1 %281, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %280, !dbg !1355
  call fastcc void @print_line(i32 32, i8* nonnull %110, i8 signext %187, i32 32, i8* nonnull %122, i8* %279, i8* nonnull %83, i8* nonnull %85, i8* %282, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1356
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %84) #11, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %83) #11, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %82) #11, !dbg !1357
  br label %507, !dbg !1358

; <label>:283:                                    ; preds = %113, %109, %107
  %284 = load i1, i1* @need_runlevel, align 1
  br i1 %284, label %285, label %339, !dbg !1359

; <label>:285:                                    ; preds = %283
  %286 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1360
  %287 = load i16, i16* %286, align 4, !dbg !1360, !tbaa !1042
  %288 = icmp eq i16 %287, 1, !dbg !1360
  br i1 %288, label %289, label %339, !dbg !1361

; <label>:289:                                    ; preds = %285
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !284, metadata !870) #11, !dbg !1362
  %290 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 1, !dbg !1364
  %291 = load i32, i32* %290, align 4, !dbg !1364, !tbaa !1127
  %292 = sdiv i32 %291, 256, !dbg !1365
  %293 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1366, !tbaa !877
  %294 = icmp eq i8* %293, null, !dbg !1366
  br i1 %294, label %295, label %300, !dbg !1368

; <label>:295:                                    ; preds = %289
  %296 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #11, !dbg !1369
  %297 = call i64 @strlen(i8* %296) #14, !dbg !1370
  %298 = add i64 %297, 3, !dbg !1371
  %299 = call noalias i8* @xmalloc(i64 %298) #11, !dbg !1372
  store i8* %299, i8** @print_runlevel.runlevline, align 8, !dbg !1373, !tbaa !877
  br label %300, !dbg !1374

; <label>:300:                                    ; preds = %295, %289
  %301 = phi i8* [ %293, %289 ], [ %299, %295 ], !dbg !1375
  %302 = call i64 @llvm.objectsize.i64.p0i8(i8* %301, i1 false, i1 true) #11, !dbg !1375
  %303 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #11, !dbg !1375
  %304 = and i32 %291, 255, !dbg !1375
  %305 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %301, i32 1, i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* %303, i32 %304) #11, !dbg !1375
  %306 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1376, !tbaa !877
  %307 = icmp eq i8* %306, null, !dbg !1376
  br i1 %307, label %308, label %313, !dbg !1378

; <label>:308:                                    ; preds = %300
  %309 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #11, !dbg !1379
  %310 = call i64 @strlen(i8* %309) #14, !dbg !1380
  %311 = add i64 %310, 2, !dbg !1381
  %312 = call noalias i8* @xmalloc(i64 %311) #11, !dbg !1382
  store i8* %312, i8** @print_runlevel.comment, align 8, !dbg !1383, !tbaa !877
  br label %313, !dbg !1384

; <label>:313:                                    ; preds = %308, %300
  %314 = phi i8* [ %306, %300 ], [ %312, %308 ], !dbg !1385
  %315 = call i64 @llvm.objectsize.i64.p0i8(i8* %314, i1 false, i1 true) #11, !dbg !1385
  %316 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #11, !dbg !1385
  %317 = and i32 %292, 255, !dbg !1385
  %318 = icmp eq i32 %317, 78, !dbg !1385
  %319 = select i1 %318, i32 83, i32 %317, !dbg !1385
  %320 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %314, i32 1, i64 %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %316, i32 %319) #11, !dbg !1385
  %321 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1386, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1387
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #11, !dbg !1389
  %322 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1390
  %323 = load i32, i32* %322, align 4, !dbg !1390, !tbaa !1333
  %324 = sext i32 %323 to i64, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %324, i64 0, metadata !258, metadata !870) #11, !dbg !1391
  store i64 %324, i64* %8, align 8, !dbg !1391, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !258, metadata !870) #11, !dbg !1391
  %325 = call %struct.tm* @localtime(i64* nonnull %8) #11, !dbg !1392
  call void @llvm.dbg.value(metadata %struct.tm* %325, i64 0, metadata !259, metadata !870) #11, !dbg !1393
  %326 = icmp eq %struct.tm* %325, null, !dbg !1394
  br i1 %326, label %330, label %327, !dbg !1395

; <label>:327:                                    ; preds = %313
  %328 = load i8*, i8** @time_format, align 8, !dbg !1396, !tbaa !877
  %329 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %328, %struct.tm* nonnull %325) #11, !dbg !1397
  br label %333, !dbg !1398

; <label>:330:                                    ; preds = %313
  %331 = load i64, i64* %8, align 8, !dbg !1399, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !258, metadata !870) #11, !dbg !1391
  %332 = call i8* @imaxtostr(i64 %331, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1400
  br label %333, !dbg !1402

; <label>:333:                                    ; preds = %330, %327
  %334 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %327 ], [ %332, %330 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #11, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %317, i64 0, metadata !1404, metadata !870) #11, !dbg !1410
  %335 = add nsw i32 %317, -32, !dbg !1412
  %336 = icmp ult i32 %335, 95, !dbg !1412
  %337 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1413
  %338 = select i1 %336, i8* %337, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1414
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %321, i8* %334, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %338, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1415
  br label %507, !dbg !1416

; <label>:339:                                    ; preds = %285, %283
  %340 = load i1, i1* @need_boottime, align 1
  br i1 %340, label %341, label %360, !dbg !1417

; <label>:341:                                    ; preds = %339
  %342 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1418
  %343 = load i16, i16* %342, align 4, !dbg !1418, !tbaa !1042
  %344 = icmp eq i16 %343, 2, !dbg !1418
  br i1 %344, label %345, label %360, !dbg !1419

; <label>:345:                                    ; preds = %341
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1420, metadata !870) #11, !dbg !1423
  %346 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i32 5) #11, !dbg !1425
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #11, !dbg !1428
  %347 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1429
  %348 = load i32, i32* %347, align 4, !dbg !1429, !tbaa !1333
  %349 = sext i32 %348 to i64, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %349, i64 0, metadata !258, metadata !870) #11, !dbg !1430
  store i64 %349, i64* %7, align 8, !dbg !1430, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !258, metadata !870) #11, !dbg !1430
  %350 = call %struct.tm* @localtime(i64* nonnull %7) #11, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.tm* %350, i64 0, metadata !259, metadata !870) #11, !dbg !1432
  %351 = icmp eq %struct.tm* %350, null, !dbg !1433
  br i1 %351, label %355, label %352, !dbg !1434

; <label>:352:                                    ; preds = %345
  %353 = load i8*, i8** @time_format, align 8, !dbg !1435, !tbaa !877
  %354 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %353, %struct.tm* nonnull %350) #11, !dbg !1436
  br label %358, !dbg !1437

; <label>:355:                                    ; preds = %345
  %356 = load i64, i64* %7, align 8, !dbg !1438, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !258, metadata !870) #11, !dbg !1430
  %357 = call i8* @imaxtostr(i64 %356, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1439
  br label %358, !dbg !1441

; <label>:358:                                    ; preds = %355, %352
  %359 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %352 ], [ %357, %355 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #11, !dbg !1442
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %346, i8* %359, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1443
  br label %507, !dbg !1444

; <label>:360:                                    ; preds = %341, %339
  %361 = load i1, i1* @need_clockchange, align 1
  br i1 %361, label %362, label %381, !dbg !1445

; <label>:362:                                    ; preds = %360
  %363 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1446
  %364 = load i16, i16* %363, align 4, !dbg !1446, !tbaa !1042
  %365 = icmp eq i16 %364, 3, !dbg !1446
  br i1 %365, label %366, label %381, !dbg !1447

; <label>:366:                                    ; preds = %362
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1448, metadata !870) #11, !dbg !1451
  %367 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), i32 5) #11, !dbg !1453
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1454
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %93) #11, !dbg !1456
  %368 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1457
  %369 = load i32, i32* %368, align 4, !dbg !1457, !tbaa !1333
  %370 = sext i32 %369 to i64, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !258, metadata !870) #11, !dbg !1458
  store i64 %370, i64* %6, align 8, !dbg !1458, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !258, metadata !870) #11, !dbg !1458
  %371 = call %struct.tm* @localtime(i64* nonnull %6) #11, !dbg !1459
  call void @llvm.dbg.value(metadata %struct.tm* %371, i64 0, metadata !259, metadata !870) #11, !dbg !1460
  %372 = icmp eq %struct.tm* %371, null, !dbg !1461
  br i1 %372, label %376, label %373, !dbg !1462

; <label>:373:                                    ; preds = %366
  %374 = load i8*, i8** @time_format, align 8, !dbg !1463, !tbaa !877
  %375 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %374, %struct.tm* nonnull %371) #11, !dbg !1464
  br label %379, !dbg !1465

; <label>:376:                                    ; preds = %366
  %377 = load i64, i64* %6, align 8, !dbg !1466, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %377, i64 0, metadata !258, metadata !870) #11, !dbg !1458
  %378 = call i8* @imaxtostr(i64 %377, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1467
  br label %379, !dbg !1469

; <label>:379:                                    ; preds = %376, %373
  %380 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %373 ], [ %378, %376 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %93) #11, !dbg !1470
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %367, i8* %380, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1471
  br label %507, !dbg !1472

; <label>:381:                                    ; preds = %362, %360
  %382 = load i1, i1* @need_initspawn, align 1
  br i1 %382, label %383, label %415, !dbg !1473

; <label>:383:                                    ; preds = %381
  %384 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1474
  %385 = load i16, i16* %384, align 4, !dbg !1474, !tbaa !1042
  %386 = icmp eq i16 %385, 5, !dbg !1474
  br i1 %386, label %387, label %415, !dbg !1475

; <label>:387:                                    ; preds = %383
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1078, metadata !870) #11, !dbg !1476
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1477, metadata !870) #11, !dbg !1483
  %388 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1485
  %389 = call i64 @strlen(i8* %388) #14, !dbg !1486
  %390 = add i64 %389, 5, !dbg !1487
  %391 = call noalias i8* @xmalloc(i64 %390) #11, !dbg !1488
  call void @llvm.dbg.value(metadata i8* %391, i64 0, metadata !1482, metadata !870) #11, !dbg !1489
  %392 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %391, i64 0, metadata !1491, metadata !870) #11, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %392, i64 0, metadata !1497, metadata !870) #11, !dbg !1498
  %393 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %391, i1 false, i1 true) #11, !dbg !1500
  %394 = call i8* @__strcpy_chk(i8* nonnull %391, i8* nonnull %392, i64 %393) #11, !dbg !1501
  %395 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 3, i64 0, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %391, i64 0, metadata !1503, metadata !870) #11, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %395, i64 0, metadata !1506, metadata !870) #11, !dbg !1508
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1507, metadata !870) #11, !dbg !1508
  %396 = call i8* @__strncat_chk(i8* nonnull %391, i8* nonnull %395, i64 4, i64 %393) #11, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %391, i64 0, metadata !1079, metadata !870) #11, !dbg !1511
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1080
  %397 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 1, !dbg !1080
  %398 = load i32, i32* %397, align 4, !dbg !1080, !tbaa !1127
  %399 = sext i32 %398 to i64, !dbg !1080
  %400 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %85, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %399) #11, !dbg !1080
  %401 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 2, i64 0, !dbg !1512
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1513
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #11, !dbg !1515
  %402 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1516
  %403 = load i32, i32* %402, align 4, !dbg !1516, !tbaa !1333
  %404 = sext i32 %403 to i64, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %404, i64 0, metadata !258, metadata !870) #11, !dbg !1517
  store i64 %404, i64* %5, align 8, !dbg !1517, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !258, metadata !870) #11, !dbg !1517
  %405 = call %struct.tm* @localtime(i64* nonnull %5) #11, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.tm* %405, i64 0, metadata !259, metadata !870) #11, !dbg !1519
  %406 = icmp eq %struct.tm* %405, null, !dbg !1520
  br i1 %406, label %410, label %407, !dbg !1521

; <label>:407:                                    ; preds = %387
  %408 = load i8*, i8** @time_format, align 8, !dbg !1522, !tbaa !877
  %409 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %408, %struct.tm* nonnull %405) #11, !dbg !1523
  br label %413, !dbg !1524

; <label>:410:                                    ; preds = %387
  %411 = load i64, i64* %5, align 8, !dbg !1525, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %411, i64 0, metadata !258, metadata !870) #11, !dbg !1517
  %412 = call i8* @imaxtostr(i64 %411, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1526
  br label %413, !dbg !1528

; <label>:413:                                    ; preds = %410, %407
  %414 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %407 ], [ %412, %410 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #11, !dbg !1529
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* %401, i8* %414, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %85, i8* %391, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1530
  call void @free(i8* %391) #11, !dbg !1531
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1532
  br label %507, !dbg !1533

; <label>:415:                                    ; preds = %383, %381
  %416 = load i1, i1* @need_login, align 1
  br i1 %416, label %417, label %450, !dbg !1534

; <label>:417:                                    ; preds = %415
  %418 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1535
  %419 = load i16, i16* %418, align 4, !dbg !1535, !tbaa !1042
  %420 = icmp eq i16 %419, 6, !dbg !1535
  br i1 %420, label %421, label %450, !dbg !1536

; <label>:421:                                    ; preds = %417
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1071, metadata !870) #11, !dbg !1537
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1477, metadata !870) #11, !dbg !1538
  %422 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1540
  %423 = call i64 @strlen(i8* %422) #14, !dbg !1541
  %424 = add i64 %423, 5, !dbg !1542
  %425 = call noalias i8* @xmalloc(i64 %424) #11, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !1482, metadata !870) #11, !dbg !1544
  %426 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !1491, metadata !870) #11, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %426, i64 0, metadata !1497, metadata !870) #11, !dbg !1546
  %427 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %425, i1 false, i1 true) #11, !dbg !1548
  %428 = call i8* @__strcpy_chk(i8* nonnull %425, i8* nonnull %426, i64 %427) #11, !dbg !1549
  %429 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 3, i64 0, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !1503, metadata !870) #11, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %429, i64 0, metadata !1506, metadata !870) #11, !dbg !1551
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1507, metadata !870) #11, !dbg !1551
  %430 = call i8* @__strncat_chk(i8* nonnull %425, i8* nonnull %429, i64 4, i64 %427) #11, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !1072, metadata !870) #11, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1073
  %431 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 1, !dbg !1073
  %432 = load i32, i32* %431, align 4, !dbg !1073, !tbaa !1127
  %433 = sext i32 %432 to i64, !dbg !1073
  %434 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %85, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %433) #11, !dbg !1073
  %435 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32 5) #11, !dbg !1555
  %436 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 2, i64 0, !dbg !1556
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %95) #11, !dbg !1559
  %437 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1560
  %438 = load i32, i32* %437, align 4, !dbg !1560, !tbaa !1333
  %439 = sext i32 %438 to i64, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %439, i64 0, metadata !258, metadata !870) #11, !dbg !1561
  store i64 %439, i64* %4, align 8, !dbg !1561, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !258, metadata !870) #11, !dbg !1561
  %440 = call %struct.tm* @localtime(i64* nonnull %4) #11, !dbg !1562
  call void @llvm.dbg.value(metadata %struct.tm* %440, i64 0, metadata !259, metadata !870) #11, !dbg !1563
  %441 = icmp eq %struct.tm* %440, null, !dbg !1564
  br i1 %441, label %445, label %442, !dbg !1565

; <label>:442:                                    ; preds = %421
  %443 = load i8*, i8** @time_format, align 8, !dbg !1566, !tbaa !877
  %444 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %443, %struct.tm* nonnull %440) #11, !dbg !1567
  br label %448, !dbg !1568

; <label>:445:                                    ; preds = %421
  %446 = load i64, i64* %4, align 8, !dbg !1569, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %446, i64 0, metadata !258, metadata !870) #11, !dbg !1561
  %447 = call i8* @imaxtostr(i64 %446, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1570
  br label %448, !dbg !1572

; <label>:448:                                    ; preds = %445, %442
  %449 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %442 ], [ %447, %445 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %95) #11, !dbg !1573
  call fastcc void @print_line(i32 -1, i8* %435, i8 signext 32, i32 32, i8* %436, i8* %449, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %85, i8* %425, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1574
  call void @free(i8* %425) #11, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1576
  br label %507, !dbg !1577

; <label>:450:                                    ; preds = %417, %415
  %451 = load i1, i1* @need_deadprocs, align 1
  br i1 %451, label %452, label %507, !dbg !1578

; <label>:452:                                    ; preds = %450
  %453 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1579
  %454 = load i16, i16* %453, align 4, !dbg !1579, !tbaa !1042
  %455 = icmp eq i16 %454, 8, !dbg !1579
  br i1 %455, label %456, label %507, !dbg !1580

; <label>:456:                                    ; preds = %452
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !294, metadata !870) #11, !dbg !1581
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !1477, metadata !870) #11, !dbg !1582
  %457 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1584
  %458 = call i64 @strlen(i8* %457) #14, !dbg !1585
  %459 = add i64 %458, 5, !dbg !1586
  %460 = call noalias i8* @xmalloc(i64 %459) #11, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %460, i64 0, metadata !1482, metadata !870) #11, !dbg !1588
  %461 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1589
  call void @llvm.dbg.value(metadata i8* %460, i64 0, metadata !1491, metadata !870) #11, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %461, i64 0, metadata !1497, metadata !870) #11, !dbg !1590
  %462 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %460, i1 false, i1 true) #11, !dbg !1592
  %463 = call i8* @__strcpy_chk(i8* nonnull %460, i8* nonnull %461, i64 %462) #11, !dbg !1593
  %464 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 3, i64 0, !dbg !1594
  call void @llvm.dbg.value(metadata i8* %460, i64 0, metadata !1503, metadata !870) #11, !dbg !1595
  call void @llvm.dbg.value(metadata i8* %464, i64 0, metadata !1506, metadata !870) #11, !dbg !1595
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1507, metadata !870) #11, !dbg !1595
  %465 = call i8* @__strncat_chk(i8* nonnull %460, i8* nonnull %464, i64 4, i64 %462) #11, !dbg !1597
  call void @llvm.dbg.value(metadata i8* %460, i64 0, metadata !295, metadata !870) #11, !dbg !1598
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1060
  %466 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 1, !dbg !1060
  %467 = load i32, i32* %466, align 4, !dbg !1060, !tbaa !1127
  %468 = sext i32 %467 to i64, !dbg !1060
  %469 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %85, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %468) #11, !dbg !1060
  %470 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1599, !tbaa !877
  %471 = icmp eq i8* %470, null, !dbg !1599
  br i1 %471, label %472, label %480, !dbg !1601

; <label>:472:                                    ; preds = %456
  %473 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #11, !dbg !1602
  %474 = call i64 @strlen(i8* %473) #14, !dbg !1603
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #11, !dbg !1604
  %476 = call i64 @strlen(i8* %475) #14, !dbg !1605
  %477 = add i64 %474, 14, !dbg !1606
  %478 = add i64 %477, %476, !dbg !1607
  %479 = call noalias i8* @xmalloc(i64 %478) #11, !dbg !1608
  store i8* %479, i8** @print_deadprocs.exitstr, align 8, !dbg !1609, !tbaa !877
  br label %480, !dbg !1610

; <label>:480:                                    ; preds = %472, %456
  %481 = phi i8* [ %470, %456 ], [ %479, %472 ], !dbg !1611
  %482 = call i64 @llvm.objectsize.i64.p0i8(i8* %481, i1 false, i1 true) #11, !dbg !1611
  %483 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #11, !dbg !1611
  %484 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 6, i32 0, !dbg !1611
  %485 = load i16, i16* %484, align 4, !dbg !1611, !tbaa !1612
  %486 = sext i16 %485 to i32, !dbg !1611
  %487 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #11, !dbg !1611
  %488 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 6, i32 1, !dbg !1611
  %489 = load i16, i16* %488, align 2, !dbg !1611, !tbaa !1613
  %490 = sext i16 %489 to i32, !dbg !1611
  %491 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %481, i32 1, i64 %482, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), i8* %483, i32 %486, i8* %487, i32 %490) #11, !dbg !1611
  %492 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 2, i64 0, !dbg !1614
  call void @llvm.dbg.value(metadata %struct.utmpx* %100, i64 0, metadata !257, metadata !870) #11, !dbg !1615
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %96) #11, !dbg !1617
  %493 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1618
  %494 = load i32, i32* %493, align 4, !dbg !1618, !tbaa !1333
  %495 = sext i32 %494 to i64, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %495, i64 0, metadata !258, metadata !870) #11, !dbg !1619
  store i64 %495, i64* %3, align 8, !dbg !1619, !tbaa !1020
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !258, metadata !870) #11, !dbg !1619
  %496 = call %struct.tm* @localtime(i64* nonnull %3) #11, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.tm* %496, i64 0, metadata !259, metadata !870) #11, !dbg !1621
  %497 = icmp eq %struct.tm* %496, null, !dbg !1622
  br i1 %497, label %501, label %498, !dbg !1623

; <label>:498:                                    ; preds = %480
  %499 = load i8*, i8** @time_format, align 8, !dbg !1624, !tbaa !877
  %500 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %499, %struct.tm* nonnull %496) #11, !dbg !1625
  br label %504, !dbg !1626

; <label>:501:                                    ; preds = %480
  %502 = load i64, i64* %3, align 8, !dbg !1627, !tbaa !1020
  call void @llvm.dbg.value(metadata i64 %502, i64 0, metadata !258, metadata !870) #11, !dbg !1619
  %503 = call i8* @imaxtostr(i64 %502, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1628
  br label %504, !dbg !1630

; <label>:504:                                    ; preds = %501, %498
  %505 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %498 ], [ %503, %501 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %96) #11, !dbg !1631
  %506 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1632, !tbaa !877
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* %492, i8* %505, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %85, i8* %460, i8* %506) #11, !dbg !1633
  call void @free(i8* %460) #11, !dbg !1634
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %85) #11, !dbg !1635
  br label %507, !dbg !1636

; <label>:507:                                    ; preds = %504, %452, %450, %448, %413, %379, %358, %333, %278, %103
  %508 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 0, !dbg !1637
  %509 = load i16, i16* %508, align 4, !dbg !1637, !tbaa !1042
  %510 = icmp eq i16 %509, 2, !dbg !1637
  br i1 %510, label %511, label %515, !dbg !1639

; <label>:511:                                    ; preds = %507
  %512 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 0, i32 8, i32 0, !dbg !1640
  %513 = load i32, i32* %512, align 4, !dbg !1640, !tbaa !1333
  %514 = sext i32 %513 to i64, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %514, i64 0, metadata !1003, metadata !870) #11, !dbg !1084
  br label %515, !dbg !1641

; <label>:515:                                    ; preds = %511, %507
  %516 = phi i64 [ %514, %511 ], [ %99, %507 ]
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1003, metadata !870) #11, !dbg !1084
  %517 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %100, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata %struct.utmpx* %517, i64 0, metadata !1001, metadata !870) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1003, metadata !870) #11, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.utmpx* %517, i64 0, metadata !1001, metadata !870) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1000, metadata !870) #11, !dbg !1082
  %518 = icmp eq i64 %101, 0, !dbg !1113
  br i1 %518, label %519, label %97, !dbg !1113, !llvm.loop !1643

; <label>:519:                                    ; preds = %515, %78, %70, %54
  %520 = bitcast %struct.utmpx** %16 to i8**, !dbg !1646
  %521 = load i8*, i8** %520, align 8, !dbg !1646, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.utmpx** %16, i64 0, metadata !988, metadata !1647), !dbg !1014
  call void @free(i8* %521) #11, !dbg !1648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #11, !dbg !1649
  ret void, !dbg !1649
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_line(i32, i8*, i8 signext, i32, i8*, i8*, i8*, i8*, i8*, i8*) unnamed_addr #6 !dbg !95 {
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [13 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !99, metadata !870), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !100, metadata !870), !dbg !1651
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !101, metadata !870), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !102, metadata !870), !dbg !1653
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !103, metadata !870), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !104, metadata !870), !dbg !1655
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !105, metadata !870), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !106, metadata !870), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !107, metadata !870), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !108, metadata !870), !dbg !1659
  %14 = bitcast i8** %11 to i8*, !dbg !1660
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #11, !dbg !1660
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !1661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #11, !dbg !1661
  tail call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !110, metadata !870), !dbg !1662
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0, !dbg !1663
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %16) #11, !dbg !1663
  tail call void @llvm.dbg.declare(metadata [13 x i8]* %13, metadata !114, metadata !870), !dbg !1664
  store i8 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 1), align 1, !dbg !1665, !tbaa !1041
  %17 = load i1, i1* @include_idle, align 1
  br i1 %17, label %18, label %25, !dbg !1666

; <label>:18:                                     ; preds = %10
  %19 = load i1, i1* @short_output, align 1
  br i1 %19, label %25, label %20, !dbg !1668

; <label>:20:                                     ; preds = %18
  %21 = tail call i64 @strlen(i8* %6) #14, !dbg !1669
  %22 = icmp ult i64 %21, 7, !dbg !1670
  br i1 %22, label %23, label %25, !dbg !1671

; <label>:23:                                     ; preds = %20
  %24 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %15, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i8* %6) #11, !dbg !1672
  br label %26, !dbg !1672

; <label>:25:                                     ; preds = %20, %18, %10
  store i8 0, i8* %15, align 1, !dbg !1673, !tbaa !1041
  br label %26

; <label>:26:                                     ; preds = %25, %23
  %27 = load i1, i1* @short_output, align 1
  br i1 %27, label %33, label %28, !dbg !1674

; <label>:28:                                     ; preds = %26
  %29 = call i64 @strlen(i8* %7) #14, !dbg !1676
  %30 = icmp ult i64 %29, 12, !dbg !1677
  br i1 %30, label %31, label %33, !dbg !1678

; <label>:31:                                     ; preds = %28
  %32 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %16, i32 1, i64 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %7) #11, !dbg !1679
  br label %34, !dbg !1679

; <label>:33:                                     ; preds = %28, %26
  store i8 0, i8* %16, align 1, !dbg !1680, !tbaa !1041
  br label %34

; <label>:34:                                     ; preds = %33, %31
  %35 = load i1, i1* @include_exit, align 1
  br i1 %35, label %36, label %41, !dbg !1681

; <label>:36:                                     ; preds = %34
  %37 = call i64 @strlen(i8* %9) #14, !dbg !1682
  %38 = icmp ult i64 %37, 12, !dbg !1682
  %39 = add i64 %37, 2, !dbg !1682
  %40 = select i1 %38, i64 14, i64 %39, !dbg !1682
  br label %41, !dbg !1681

; <label>:41:                                     ; preds = %34, %36
  %42 = phi i64 [ %40, %36 ], [ 1, %34 ], !dbg !1681
  %43 = call noalias i8* @xmalloc(i64 %42) #11, !dbg !1683
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !118, metadata !870), !dbg !1684
  %44 = load i1, i1* @include_exit, align 1
  br i1 %44, label %45, label %48, !dbg !1685

; <label>:45:                                     ; preds = %41
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false, i1 true), !dbg !1686
  %47 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %43, i32 1, i64 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* %9) #11, !dbg !1686
  br label %49, !dbg !1686

; <label>:48:                                     ; preds = %41
  store i8 0, i8* %43, align 1, !dbg !1688, !tbaa !1041
  br label %49

; <label>:49:                                     ; preds = %48, %45
  %50 = icmp eq i8* %1, null, !dbg !1689
  %51 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* %1, !dbg !1689
  %52 = load i1, i1* @include_mesg, align 1
  %53 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1689
  %54 = load i32, i32* @time_format_width, align 4, !dbg !1689, !tbaa !961
  call void @llvm.dbg.value(metadata i8** %11, i64 0, metadata !109, metadata !870), !dbg !1690
  %55 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 %0, i8* %51, i8* %53, i32 %3, i8* %4, i32 %54, i8* %5, i8* nonnull %15, i8* nonnull %16, i8* %8, i8* %43) #11, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !119, metadata !870), !dbg !1691
  %56 = icmp eq i32 %55, -1, !dbg !1692
  br i1 %56, label %57, label %58, !dbg !1694

; <label>:57:                                     ; preds = %49
  call void @xalloc_die() #15, !dbg !1695
  unreachable, !dbg !1695

; <label>:58:                                     ; preds = %49
  %59 = load i8*, i8** %11, align 8, !dbg !1696, !tbaa !877
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !109, metadata !870), !dbg !1690
  %60 = call i64 @strlen(i8* %59) #14, !dbg !1697
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !120, metadata !870), !dbg !1699
  br label %62, !dbg !1700

; <label>:62:                                     ; preds = %62, %58
  %63 = phi i8* [ %61, %58 ], [ %64, %62 ]
  call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !120, metadata !870), !dbg !1699
  %64 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !120, metadata !870), !dbg !1699
  %65 = load i8, i8* %64, align 1, !dbg !1702, !tbaa !1041
  %66 = icmp eq i8 %65, 32, !dbg !1703
  br i1 %66, label %62, label %67, !dbg !1700, !llvm.loop !1704

; <label>:67:                                     ; preds = %62
  store i8 0, i8* %63, align 1, !dbg !1706, !tbaa !1041
  %68 = load i8*, i8** %11, align 8, !dbg !1707, !tbaa !877
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !109, metadata !870), !dbg !1690
  %69 = call i32 @puts(i8* %68), !dbg !1708
  %70 = load i8*, i8** %11, align 8, !dbg !1709, !tbaa !877
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !109, metadata !870), !dbg !1690
  call void @free(i8* %70) #11, !dbg !1710
  call void @free(i8* %43) #11, !dbg !1711
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %16) #11, !dbg !1712
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #11, !dbg !1712
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #11, !dbg !1712
  ret void, !dbg !1712
}

; Function Attrs: nounwind
declare i8* @ttyname(i32) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host(i8*) local_unnamed_addr #6 !dbg !1713 {
  %2 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1717, metadata !870), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !327, metadata !870) #11, !dbg !1719
  tail call void @llvm.dbg.value(metadata i32* @last_cherror, i64 0, metadata !328, metadata !870) #11, !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !329, metadata !870) #11, !dbg !1722
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1723
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1723
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !330, metadata !870) #11, !dbg !1724
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1724, !tbaa !877
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1725, !tbaa !1726
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %2, i64 0, metadata !330, metadata !870) #11, !dbg !1724
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #11, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !357, metadata !870) #11, !dbg !1729
  %5 = icmp eq i32 %4, 0, !dbg !1730
  br i1 %5, label %6, label %17, !dbg !1732

; <label>:6:                                      ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1733, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, i64 0, metadata !330, metadata !870) #11, !dbg !1724
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1735
  %9 = load i8*, i8** %8, align 8, !dbg !1735, !tbaa !1736
  %10 = icmp eq i8* %9, null, !dbg !1733
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1733
  %12 = call noalias i8* @strdup(i8* %11) #11, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !329, metadata !870) #11, !dbg !1722
  %13 = icmp eq i8* %12, null, !dbg !1738
  br i1 %13, label %14, label %15, !dbg !1740

; <label>:14:                                     ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1741, !tbaa !961
  br label %15, !dbg !1742

; <label>:15:                                     ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1743, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, i64 0, metadata !330, metadata !870) #11, !dbg !1724
  call void @freeaddrinfo(%struct.addrinfo* %16) #11, !dbg !1744
  br label %18, !dbg !1745

; <label>:17:                                     ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1746, !tbaa !961
  br label %18, !dbg !1748

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ]
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !329, metadata !870) #11, !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1749
  ret i8* %19, !dbg !1750
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host_r(i8*, i32*) local_unnamed_addr #6 !dbg !322 {
  %3 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !327, metadata !870), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !328, metadata !870), !dbg !1752
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !329, metadata !870), !dbg !1753
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1754
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1754
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !330, metadata !870), !dbg !1755
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1755, !tbaa !877
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1756, !tbaa !1726
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %3, i64 0, metadata !330, metadata !870), !dbg !1755
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #11, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !357, metadata !870), !dbg !1758
  %6 = icmp eq i32 %5, 0, !dbg !1759
  br i1 %6, label %7, label %20, !dbg !1760

; <label>:7:                                      ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1761, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, i64 0, metadata !330, metadata !870), !dbg !1755
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1762
  %10 = load i8*, i8** %9, align 8, !dbg !1762, !tbaa !1736
  %11 = icmp eq i8* %10, null, !dbg !1761
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1761
  %13 = call noalias i8* @strdup(i8* %12) #11, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !329, metadata !870), !dbg !1753
  %14 = icmp eq i8* %13, null, !dbg !1764
  %15 = icmp ne i32* %1, null, !dbg !1765
  %16 = and i1 %15, %14, !dbg !1766
  br i1 %16, label %17, label %18, !dbg !1766

; <label>:17:                                     ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1767, !tbaa !961
  br label %18, !dbg !1768

; <label>:18:                                     ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1769, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, i64 0, metadata !330, metadata !870), !dbg !1755
  call void @freeaddrinfo(%struct.addrinfo* %19) #11, !dbg !1770
  br label %23, !dbg !1771

; <label>:20:                                     ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !1772
  br i1 %21, label %23, label %22, !dbg !1773

; <label>:22:                                     ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !1774, !tbaa !961
  br label %23, !dbg !1775

; <label>:23:                                     ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ]
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !329, metadata !870), !dbg !1753
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1776
  ret i8* %24, !dbg !1777
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @ch_strerror() local_unnamed_addr #6 !dbg !1778 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1781, !tbaa !961
  %2 = tail call i8* @gai_strerror(i32 %1) #11, !dbg !1782
  ret i8* %2, !dbg !1783
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1784 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1786, metadata !870), !dbg !1787
  store i8* %0, i8** @file_name, align 8, !dbg !1788, !tbaa !877
  ret void, !dbg !1789
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1790 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1794, metadata !870), !dbg !1795
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1796, !tbaa !1797
  ret void, !dbg !1799
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1800 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1805, !tbaa !877
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1806
  %3 = icmp eq i32 %2, 0, !dbg !1807
  br i1 %3, label %21, label %4, !dbg !1808

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1809, !tbaa !1797, !range !1810
  %6 = icmp eq i8 %5, 0, !dbg !1809
  %7 = tail call i32* @__errno_location() #17, !dbg !1811
  br i1 %6, label %11, label %8, !dbg !1813

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1814, !tbaa !961
  %10 = icmp eq i32 %9, 32, !dbg !1815
  br i1 %10, label %21, label %11, !dbg !1816

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !1817
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1802, metadata !870), !dbg !1818
  %13 = load i8*, i8** @file_name, align 8, !dbg !1819, !tbaa !877
  %14 = icmp eq i8* %13, null, !dbg !1819
  %15 = load i32, i32* %7, align 4, !tbaa !961
  br i1 %14, label %18, label %16, !dbg !1820

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1821
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1822
  br label %19, !dbg !1822

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #11, !dbg !1823
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1824, !tbaa !961
  tail call void @_exit(i32 %20) #15, !dbg !1825
  unreachable, !dbg !1825

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1826, !tbaa !877
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1828
  %24 = icmp eq i32 %23, 0, !dbg !1829
  br i1 %24, label %27, label %25, !dbg !1830

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1831, !tbaa !961
  tail call void @_exit(i32 %26) #15, !dbg !1832
  unreachable, !dbg !1832

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1833
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1834 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1837, metadata !870), !dbg !1840
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1838, metadata !870), !dbg !1841
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1839, metadata !870), !dbg !1843
  %3 = icmp eq i8* %2, null, !dbg !1844
  br i1 %3, label %11, label %4, !dbg !1846

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0)) #14, !dbg !1847
  %6 = icmp eq i32 %5, 0, !dbg !1852
  br i1 %6, label %10, label %7, !dbg !1853

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i64 0, i64 0)) #14, !dbg !1854
  %9 = icmp eq i32 %8, 0, !dbg !1855
  br i1 %9, label %10, label %11, !dbg !1856

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1838, metadata !870), !dbg !1841
  br label %11, !dbg !1857

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1858
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @imaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1859 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1864, metadata !870), !dbg !1867
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1865, metadata !870), !dbg !1868
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1869
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1866, metadata !870), !dbg !1870
  store i8 0, i8* %3, align 1, !dbg !1871, !tbaa !1041
  %4 = icmp slt i64 %0, 0, !dbg !1872
  br i1 %4, label %6, label %5, !dbg !1874, !llvm.loop !1875

; <label>:5:                                      ; preds = %2
  br label %19, !dbg !1879

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !1880

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1866, metadata !870), !dbg !1870
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1864, metadata !870), !dbg !1867
  %10 = srem i64 %8, 10, !dbg !1880
  %11 = sub nsw i64 48, %10, !dbg !1882
  %12 = trunc i64 %11 to i8, !dbg !1883
  %13 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !1884
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1866, metadata !870), !dbg !1870
  store i8 %12, i8* %13, align 1, !dbg !1885, !tbaa !1041
  %14 = sdiv i64 %8, 10, !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1864, metadata !870), !dbg !1867
  %15 = add i64 %8, 9, !dbg !1887
  %16 = icmp ugt i64 %15, 18, !dbg !1887
  br i1 %16, label %7, label %17, !dbg !1888, !llvm.loop !1889

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !1892
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1866, metadata !870), !dbg !1870
  store i8 45, i8* %18, align 1, !dbg !1893, !tbaa !1041
  br label %29, !dbg !1894

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1866, metadata !870), !dbg !1870
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1864, metadata !870), !dbg !1867
  %22 = srem i64 %20, 10, !dbg !1879
  %23 = add nsw i64 %22, 48, !dbg !1895
  %24 = trunc i64 %23 to i8, !dbg !1896
  %25 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1897
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1866, metadata !870), !dbg !1870
  store i8 %24, i8* %25, align 1, !dbg !1898, !tbaa !1041
  %26 = sdiv i64 %20, 10, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1864, metadata !870), !dbg !1867
  %27 = add i64 %20, 9, !dbg !1900
  %28 = icmp ugt i64 %27, 18, !dbg !1900
  br i1 %28, label %19, label %29, !dbg !1901, !llvm.loop !1875

; <label>:29:                                     ; preds = %19, %17
  %30 = phi i8* [ %18, %17 ], [ %25, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1866, metadata !870), !dbg !1870
  ret i8* %30, !dbg !1902
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1903 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1905, metadata !870), !dbg !1908
  %2 = icmp eq i8* %0, null, !dbg !1909
  br i1 %2, label %3, label %6, !dbg !1911

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1912, !tbaa !877
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.103, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1914
  tail call void @abort() #15, !dbg !1915
  unreachable, !dbg !1915

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1916
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1906, metadata !870), !dbg !1917
  %8 = icmp eq i8* %7, null, !dbg !1918
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1919
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1920
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1907, metadata !870), !dbg !1921
  %11 = ptrtoint i8* %10 to i64, !dbg !1922
  %12 = ptrtoint i8* %0 to i64, !dbg !1922
  %13 = sub i64 %11, %12, !dbg !1922
  %14 = icmp sgt i64 %13, 6, !dbg !1924
  br i1 %14, label %15, label %24, !dbg !1925

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1926
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.104, i64 0, i64 0), i64 7) #14, !dbg !1927
  %18 = icmp eq i32 %17, 0, !dbg !1928
  br i1 %18, label %19, label %24, !dbg !1929

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1905, metadata !870), !dbg !1908
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.105, i64 0, i64 0), i64 3) #14, !dbg !1930
  %21 = icmp eq i32 %20, 0, !dbg !1933
  br i1 %21, label %22, label %24, !dbg !1934

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1905, metadata !870), !dbg !1908
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1937, !tbaa !877
  br label %24, !dbg !1938

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1905, metadata !870), !dbg !1908
  store i8* %25, i8** @program_name, align 8, !dbg !1939, !tbaa !877
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1940, !tbaa !877
  ret void, !dbg !1941
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1942 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1947, metadata !870), !dbg !1950
  %2 = tail call i32* @__errno_location() #17, !dbg !1951
  %3 = load i32, i32* %2, align 4, !dbg !1951, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1948, metadata !870), !dbg !1952
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1953
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1953
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1953
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1954
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1949, metadata !870), !dbg !1955
  store i32 %3, i32* %2, align 4, !dbg !1956, !tbaa !961
  ret %struct.quoting_options* %8, !dbg !1957
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1958 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1964, metadata !870), !dbg !1965
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1966
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1966
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1967
  %5 = load i32, i32* %4, align 8, !dbg !1967, !tbaa !1968
  ret i32 %5, !dbg !1970
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1971 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1975, metadata !870), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1976, metadata !870), !dbg !1978
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1979
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1979
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1980
  store i32 %1, i32* %5, align 8, !dbg !1981, !tbaa !1968
  ret void, !dbg !1982
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1983 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1987, metadata !870), !dbg !1995
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1988, metadata !870), !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1989, metadata !870), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1990, metadata !870), !dbg !1998
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1999
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1999
  %6 = lshr i8 %1, 5, !dbg !2000
  %7 = zext i8 %6 to i64, !dbg !2000
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1991, metadata !870), !dbg !2002
  %9 = and i8 %1, 31, !dbg !2003
  %10 = zext i8 %9 to i32, !dbg !2004
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1993, metadata !870), !dbg !2005
  %11 = load i32, i32* %8, align 4, !dbg !2006, !tbaa !961
  %12 = lshr i32 %11, %10, !dbg !2007
  %13 = and i32 %12, 1, !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1994, metadata !870), !dbg !2009
  %14 = and i32 %2, 1, !dbg !2010
  %15 = xor i32 %13, %14, !dbg !2011
  %16 = shl i32 %15, %10, !dbg !2012
  %17 = xor i32 %16, %11, !dbg !2013
  store i32 %17, i32* %8, align 4, !dbg !2013, !tbaa !961
  ret i32 %13, !dbg !2014
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2015 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2019, metadata !870), !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2020, metadata !870), !dbg !2023
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2019, metadata !870), !dbg !2022
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2026
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2019, metadata !870), !dbg !2022
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2027
  %6 = load i32, i32* %5, align 4, !dbg !2027, !tbaa !2028
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2021, metadata !870), !dbg !2029
  store i32 %1, i32* %5, align 4, !dbg !2030, !tbaa !2028
  ret i32 %6, !dbg !2031
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2032 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2036, metadata !870), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !870), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2038, metadata !870), !dbg !2041
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !870), !dbg !2039
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !870), !dbg !2039
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2045
  store i32 10, i32* %6, align 8, !dbg !2046, !tbaa !1968
  %7 = icmp ne i8* %1, null, !dbg !2047
  %8 = icmp ne i8* %2, null, !dbg !2049
  %9 = and i1 %7, %8, !dbg !2050
  br i1 %9, label %11, label %10, !dbg !2050

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2051
  unreachable, !dbg !2051

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2052
  store i8* %1, i8** %12, align 8, !dbg !2053, !tbaa !2054
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2055
  store i8* %2, i8** %13, align 8, !dbg !2056, !tbaa !2057
  ret void, !dbg !2058
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2059 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2063, metadata !870), !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2064, metadata !870), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2065, metadata !870), !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2066, metadata !870), !dbg !2074
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2067, metadata !870), !dbg !2075
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2076
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2068, metadata !870), !dbg !2077
  %8 = tail call i32* @__errno_location() #17, !dbg !2078
  %9 = load i32, i32* %8, align 4, !dbg !2078, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2069, metadata !870), !dbg !2079
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2080
  %11 = load i32, i32* %10, align 8, !dbg !2080, !tbaa !1968
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2081
  %13 = load i32, i32* %12, align 4, !dbg !2081, !tbaa !2028
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2082
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2083
  %16 = load i8*, i8** %15, align 8, !dbg !2083, !tbaa !2054
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2084
  %18 = load i8*, i8** %17, align 8, !dbg !2084, !tbaa !2057
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2070, metadata !870), !dbg !2086
  store i32 %9, i32* %8, align 4, !dbg !2087, !tbaa !961
  ret i64 %19, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2089 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2095, metadata !870), !dbg !2156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2096, metadata !870), !dbg !2157
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2097, metadata !870), !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2098, metadata !870), !dbg !2159
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2099, metadata !870), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2100, metadata !870), !dbg !2161
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2101, metadata !870), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2102, metadata !870), !dbg !2163
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2103, metadata !870), !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !870), !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2106, metadata !870), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2107, metadata !870), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2108, metadata !870), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2109, metadata !870), !dbg !2169
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2170
  %14 = icmp eq i64 %13, 1, !dbg !2171
  %15 = lshr i32 %5, 1, !dbg !2172
  %16 = trunc i32 %15 to i8, !dbg !2172
  %17 = and i8 %16, 1, !dbg !2172
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2111, metadata !870), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !870), !dbg !2173
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2113, metadata !870), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2114, metadata !870), !dbg !2175
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2176

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2114, metadata !870), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2109, metadata !870), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2108, metadata !870), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2103, metadata !870), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2102, metadata !870), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2099, metadata !870), !dbg !2160
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
  ], !dbg !2177

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2099, metadata !870), !dbg !2160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2099, metadata !870), !dbg !2160
  br label %94, !dbg !2178

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2099, metadata !870), !dbg !2160
  %43 = and i8 %36, 1, !dbg !2180
  %44 = icmp eq i8 %43, 0, !dbg !2180
  br i1 %44, label %45, label %94, !dbg !2178

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2182
  br i1 %46, label %94, label %47, !dbg !2185

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2182, !tbaa !1041
  br label %94, !dbg !2182

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.116, i64 0, i64 0), i32 %28), !dbg !2186
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2102, metadata !870), !dbg !2163
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), i32 %28), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2103, metadata !870), !dbg !2164
  br label %51, !dbg !2191

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2103, metadata !870), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2102, metadata !870), !dbg !2163
  %54 = and i8 %36, 1, !dbg !2192
  %55 = icmp eq i8 %54, 0, !dbg !2192
  br i1 %55, label %56, label %72, !dbg !2194

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !870), !dbg !2165
  %57 = load i8, i8* %52, align 1, !dbg !2195, !tbaa !1041
  %58 = icmp eq i8 %57, 0, !dbg !2198
  br i1 %58, label %72, label %59, !dbg !2198

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2199

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2107, metadata !870), !dbg !2167
  %64 = icmp ult i64 %63, %40, !dbg !2199
  br i1 %64, label %65, label %67, !dbg !2202

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2199
  store i8 %61, i8* %66, align 1, !dbg !2199, !tbaa !1041
  br label %67, !dbg !2199

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2105, metadata !870), !dbg !2165
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2203
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2105, metadata !870), !dbg !2165
  %70 = load i8, i8* %69, align 1, !dbg !2195, !tbaa !1041
  %71 = icmp eq i8 %70, 0, !dbg !2198
  br i1 %71, label %72, label %60, !dbg !2198, !llvm.loop !2204

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !870), !dbg !2169
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2107, metadata !870), !dbg !2167
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2108, metadata !870), !dbg !2168
  br label %94, !dbg !2207

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !870), !dbg !2169
  br label %76, !dbg !2208

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2109, metadata !870), !dbg !2169
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2111, metadata !870), !dbg !2172
  br label %78, !dbg !2209

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2109, metadata !870), !dbg !2169
  %81 = and i8 %80, 1, !dbg !2210
  %82 = icmp eq i8 %81, 0, !dbg !2210
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !870), !dbg !2169
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2212
  br label %84, !dbg !2212

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2109, metadata !870), !dbg !2169
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2099, metadata !870), !dbg !2160
  %87 = and i8 %86, 1, !dbg !2213
  %88 = icmp eq i8 %87, 0, !dbg !2213
  br i1 %88, label %89, label %94, !dbg !2215

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2216
  br i1 %90, label %94, label %91, !dbg !2219

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2216, !tbaa !1041
  br label %94, !dbg !2216

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2111, metadata !870), !dbg !2172
  br label %94, !dbg !2220

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2221
  unreachable, !dbg !2221

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2111, metadata !870), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2109, metadata !870), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2108, metadata !870), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2103, metadata !870), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2102, metadata !870), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2099, metadata !870), !dbg !2160
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2104, metadata !870), !dbg !2222
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
  br label %122, !dbg !2223

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2114, metadata !870), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2104, metadata !870), !dbg !2222
  %131 = icmp eq i64 %126, -1, !dbg !2224
  br i1 %131, label %134, label %132, !dbg !2225

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2226
  br i1 %133, label %590, label %138, !dbg !2227

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2228
  %136 = load i8, i8* %135, align 1, !dbg !2228, !tbaa !1041
  %137 = icmp eq i8 %136, 0, !dbg !2229
  br i1 %137, label %590, label %138, !dbg !2227

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2120, metadata !870), !dbg !2230
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2121, metadata !870), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2122, metadata !870), !dbg !2232
  br i1 %108, label %139, label %154, !dbg !2233

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2235
  %141 = and i1 %109, %131, !dbg !2236
  br i1 %141, label %142, label %144, !dbg !2236

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2098, metadata !870), !dbg !2159
  br label %144, !dbg !2238

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2098, metadata !870), !dbg !2159
  %146 = icmp ugt i64 %140, %145, !dbg !2239
  br i1 %146, label %154, label %147, !dbg !2240

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2241
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2242
  %150 = icmp ne i32 %149, 0, !dbg !2243
  %151 = or i1 %150, %111, !dbg !2244
  %152 = xor i1 %150, true, !dbg !2244
  %153 = zext i1 %152 to i8, !dbg !2244
  br i1 %151, label %154, label %635, !dbg !2244

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2120, metadata !870), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2098, metadata !870), !dbg !2159
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2245
  %158 = load i8, i8* %157, align 1, !dbg !2245, !tbaa !1041
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2115, metadata !870), !dbg !2246
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
  ], !dbg !2247

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2248

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2249

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !870), !dbg !2231
  %162 = and i8 %127, 1, !dbg !2253
  %163 = icmp eq i8 %162, 0, !dbg !2253
  %164 = and i1 %113, %163, !dbg !2253
  br i1 %164, label %165, label %181, !dbg !2253

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2255
  br i1 %166, label %167, label %169, !dbg !2259

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2255
  store i8 39, i8* %168, align 1, !dbg !2255, !tbaa !1041
  br label %169, !dbg !2255

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2105, metadata !870), !dbg !2165
  %171 = icmp ult i64 %170, %130, !dbg !2260
  br i1 %171, label %172, label %174, !dbg !2263

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2260
  store i8 36, i8* %173, align 1, !dbg !2260, !tbaa !1041
  br label %174, !dbg !2260

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2105, metadata !870), !dbg !2165
  %176 = icmp ult i64 %175, %130, !dbg !2264
  br i1 %176, label %177, label %179, !dbg !2267

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2264
  store i8 39, i8* %178, align 1, !dbg !2264, !tbaa !1041
  br label %179, !dbg !2264

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !870), !dbg !2173
  br label %181, !dbg !2268

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2105, metadata !870), !dbg !2165
  %184 = icmp ult i64 %182, %130, !dbg !2269
  br i1 %184, label %185, label %187, !dbg !2272

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2269
  store i8 92, i8* %186, align 1, !dbg !2269, !tbaa !1041
  br label %187, !dbg !2269

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2105, metadata !870), !dbg !2165
  br i1 %105, label %189, label %470, !dbg !2273

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2275
  %191 = icmp ult i64 %190, %155, !dbg !2276
  br i1 %191, label %192, label %470, !dbg !2277

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2278
  %194 = load i8, i8* %193, align 1, !dbg !2278, !tbaa !1041
  %195 = add i8 %194, -48, !dbg !2279
  %196 = icmp ult i8 %195, 10, !dbg !2279
  br i1 %196, label %197, label %470, !dbg !2279

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2280
  br i1 %198, label %199, label %201, !dbg !2284

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2280
  store i8 48, i8* %200, align 1, !dbg !2280, !tbaa !1041
  br label %201, !dbg !2280

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2105, metadata !870), !dbg !2165
  %203 = icmp ult i64 %202, %130, !dbg !2285
  br i1 %203, label %204, label %206, !dbg !2288

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2285
  store i8 48, i8* %205, align 1, !dbg !2285, !tbaa !1041
  br label %206, !dbg !2285

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2105, metadata !870), !dbg !2165
  br label %470, !dbg !2289

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2290

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2291

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2292

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2294

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2296
  %214 = icmp ult i64 %213, %155, !dbg !2297
  br i1 %214, label %215, label %470, !dbg !2298

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2299
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2300
  %218 = load i8, i8* %217, align 1, !dbg !2300, !tbaa !1041
  %219 = icmp eq i8 %218, 63, !dbg !2301
  br i1 %219, label %220, label %470, !dbg !2302

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2303
  %222 = load i8, i8* %221, align 1, !dbg !2303, !tbaa !1041
  %223 = sext i8 %222 to i32, !dbg !2303
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
  ], !dbg !2304

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2305

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2104, metadata !870), !dbg !2222
  %226 = icmp ult i64 %124, %130, !dbg !2307
  br i1 %226, label %227, label %229, !dbg !2310

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2307
  store i8 63, i8* %228, align 1, !dbg !2307, !tbaa !1041
  br label %229, !dbg !2307

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2105, metadata !870), !dbg !2165
  %231 = icmp ult i64 %230, %130, !dbg !2311
  br i1 %231, label %232, label %234, !dbg !2314

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2311
  store i8 34, i8* %233, align 1, !dbg !2311, !tbaa !1041
  br label %234, !dbg !2311

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2105, metadata !870), !dbg !2165
  %236 = icmp ult i64 %235, %130, !dbg !2315
  br i1 %236, label %237, label %239, !dbg !2318

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2315
  store i8 34, i8* %238, align 1, !dbg !2315, !tbaa !1041
  br label %239, !dbg !2315

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2105, metadata !870), !dbg !2165
  %241 = icmp ult i64 %240, %130, !dbg !2319
  br i1 %241, label %242, label %244, !dbg !2322

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2319
  store i8 63, i8* %243, align 1, !dbg !2319, !tbaa !1041
  br label %244, !dbg !2319

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2105, metadata !870), !dbg !2165
  br label %470, !dbg !2323

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2119, metadata !870), !dbg !2324
  br label %256, !dbg !2325

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2119, metadata !870), !dbg !2324
  br label %256, !dbg !2326

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2119, metadata !870), !dbg !2324
  br label %254, !dbg !2327

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2119, metadata !870), !dbg !2324
  br label %254, !dbg !2328

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2119, metadata !870), !dbg !2324
  br label %256, !dbg !2329

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2119, metadata !870), !dbg !2324
  br i1 %113, label %252, label %253, !dbg !2330

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2331

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2334

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2119, metadata !870), !dbg !2324
  br i1 %117, label %256, label %635, !dbg !2336

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2119, metadata !870), !dbg !2324
  br i1 %104, label %497, label %470, !dbg !2338

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2339
  br i1 %259, label %260, label %265, !dbg !2341

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2342, !tbaa !1041
  %262 = icmp ne i8 %261, 0, !dbg !2343
  %263 = icmp ne i64 %123, 0, !dbg !2344
  %264 = or i1 %263, %262, !dbg !2346
  br i1 %264, label %470, label %271, !dbg !2346

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2347
  %267 = icmp ne i64 %123, 0, !dbg !2344
  %268 = or i1 %267, %266, !dbg !2341
  br i1 %268, label %470, label %271, !dbg !2341

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2344
  br i1 %270, label %271, label %470, !dbg !2348

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2122, metadata !870), !dbg !2232
  br label %272, !dbg !2349

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2122, metadata !870), !dbg !2232
  br i1 %117, label %470, label %635, !dbg !2350

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2122, metadata !870), !dbg !2232
  br i1 %113, label %275, label %470, !dbg !2352

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2353

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2356
  %278 = icmp ne i64 %125, 0, !dbg !2358
  %279 = or i1 %278, %277, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2096, metadata !870), !dbg !2157
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2359
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2106, metadata !870), !dbg !2166
  %282 = icmp ult i64 %124, %281, !dbg !2360
  br i1 %282, label %283, label %285, !dbg !2363

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2360
  store i8 39, i8* %284, align 1, !dbg !2360, !tbaa !1041
  br label %285, !dbg !2360

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2105, metadata !870), !dbg !2165
  %287 = icmp ult i64 %286, %281, !dbg !2364
  br i1 %287, label %288, label %290, !dbg !2367

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2364
  store i8 92, i8* %289, align 1, !dbg !2364, !tbaa !1041
  br label %290, !dbg !2364

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2105, metadata !870), !dbg !2165
  %292 = icmp ult i64 %291, %281, !dbg !2368
  br i1 %292, label %293, label %295, !dbg !2371

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2368
  store i8 39, i8* %294, align 1, !dbg !2368, !tbaa !1041
  br label %295, !dbg !2368

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !870), !dbg !2173
  br label %470, !dbg !2372

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2373

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2123, metadata !870), !dbg !2374
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2375
  %300 = load i16*, i16** %299, align 8, !dbg !2375, !tbaa !877
  %301 = zext i8 %158 to i64, !dbg !2375
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2375
  %303 = load i16, i16* %302, align 2, !dbg !2375, !tbaa !2377
  %304 = lshr i16 %303, 14, !dbg !2378
  %305 = trunc i16 %304 to i8, !dbg !2378
  %306 = and i8 %305, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2126, metadata !870), !dbg !2379
  br label %362, !dbg !2380

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2381
  store i64 0, i64* %10, align 8, !dbg !2382
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2126, metadata !870), !dbg !2379
  %308 = icmp eq i64 %155, -1, !dbg !2383
  br i1 %308, label %309, label %311, !dbg !2385

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2098, metadata !870), !dbg !2159
  br label %311, !dbg !2387

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2098, metadata !870), !dbg !2159
  br label %313, !dbg !2388, !llvm.loop !2389

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2126, metadata !870), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2391
  %316 = add i64 %314, %123, !dbg !2392
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2393
  %318 = sub i64 %312, %316, !dbg !2394
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2127, metadata !870), !dbg !2395
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2142, metadata !870), !dbg !2396
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2145, metadata !870), !dbg !2398
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2399

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !870), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2123, metadata !870), !dbg !2374
  %321 = icmp ugt i64 %312, %316, !dbg !2400
  br i1 %321, label %322, label %347, !dbg !2402

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2403

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2123, metadata !870), !dbg !2374
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2403
  %327 = load i8, i8* %326, align 1, !dbg !2403, !tbaa !1041
  %328 = icmp eq i8 %327, 0, !dbg !2402
  br i1 %328, label %347, label %329, !dbg !2404

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2123, metadata !870), !dbg !2374
  %331 = add i64 %330, %123, !dbg !2406
  %332 = icmp ult i64 %331, %312, !dbg !2400
  br i1 %332, label %323, label %347, !dbg !2402, !llvm.loop !2407

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2408
  %335 = and i1 %115, %334, !dbg !2411
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2146, metadata !870), !dbg !2412
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2146, metadata !870), !dbg !2412
  br i1 %335, label %336, label %350, !dbg !2411

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2413

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2146, metadata !870), !dbg !2412
  %339 = add i64 %338, %316, !dbg !2413
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2414
  %341 = load i8, i8* %340, align 1, !dbg !2414, !tbaa !1041
  %342 = sext i8 %341 to i32, !dbg !2414
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2415

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2146, metadata !870), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2146, metadata !870), !dbg !2412
  %345 = icmp ult i64 %344, %319, !dbg !2408
  br i1 %345, label %337, label %350, !dbg !2417, !llvm.loop !2418

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2420

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !870), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2420
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2421, !tbaa !961
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2142, metadata !870), !dbg !2396
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2423
  %353 = icmp eq i32 %352, 0, !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !870), !dbg !2379
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2424
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !870), !dbg !2379
  %355 = add i64 %319, %314, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !870), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2127, metadata !870), !dbg !2395
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2426
  %357 = icmp eq i32 %356, 0, !dbg !2427
  br i1 %357, label %313, label %358, !dbg !2428, !llvm.loop !2389

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2429
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !870), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2429
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2126, metadata !870), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2123, metadata !870), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2098, metadata !870), !dbg !2159
  %366 = and i8 %365, 1, !dbg !2430
  %367 = icmp ne i8 %366, 0, !dbg !2430
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2122, metadata !870), !dbg !2232
  %368 = icmp ult i64 %364, 2, !dbg !2431
  %369 = or i1 %367, %112, !dbg !2432
  %370 = and i1 %368, %369, !dbg !2433
  br i1 %370, label %470, label %371, !dbg !2433

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2153, metadata !870), !dbg !2435
  br label %373, !dbg !2436

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2121, metadata !870), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2120, metadata !870), !dbg !2230
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2104, metadata !870), !dbg !2222
  br i1 %369, label %426, label %380, !dbg !2437

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2442

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !870), !dbg !2231
  %382 = and i8 %376, 1, !dbg !2445
  %383 = icmp eq i8 %382, 0, !dbg !2445
  %384 = and i1 %113, %383, !dbg !2445
  br i1 %384, label %385, label %401, !dbg !2445

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2447
  br i1 %386, label %387, label %389, !dbg !2451

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2447
  store i8 39, i8* %388, align 1, !dbg !2447, !tbaa !1041
  br label %389, !dbg !2447

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2105, metadata !870), !dbg !2165
  %391 = icmp ult i64 %390, %130, !dbg !2452
  br i1 %391, label %392, label %394, !dbg !2455

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2452
  store i8 36, i8* %393, align 1, !dbg !2452, !tbaa !1041
  br label %394, !dbg !2452

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2105, metadata !870), !dbg !2165
  %396 = icmp ult i64 %395, %130, !dbg !2456
  br i1 %396, label %397, label %399, !dbg !2459

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2456
  store i8 39, i8* %398, align 1, !dbg !2456, !tbaa !1041
  br label %399, !dbg !2456

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !870), !dbg !2173
  br label %401, !dbg !2460

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2105, metadata !870), !dbg !2165
  %404 = icmp ult i64 %402, %130, !dbg !2461
  br i1 %404, label %405, label %407, !dbg !2464

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2461
  store i8 92, i8* %406, align 1, !dbg !2461, !tbaa !1041
  br label %407, !dbg !2461

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2105, metadata !870), !dbg !2165
  %409 = icmp ult i64 %408, %130, !dbg !2465
  br i1 %409, label %410, label %414, !dbg !2468

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2465
  %412 = or i8 %411, 48, !dbg !2465
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2465
  store i8 %412, i8* %413, align 1, !dbg !2465, !tbaa !1041
  br label %414, !dbg !2465

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2105, metadata !870), !dbg !2165
  %416 = icmp ult i64 %415, %130, !dbg !2469
  br i1 %416, label %417, label %422, !dbg !2472

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2469
  %419 = and i8 %418, 7, !dbg !2469
  %420 = or i8 %419, 48, !dbg !2469
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2469
  store i8 %420, i8* %421, align 1, !dbg !2469, !tbaa !1041
  br label %422, !dbg !2469

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2105, metadata !870), !dbg !2165
  %424 = and i8 %377, 7, !dbg !2473
  %425 = or i8 %424, 48, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2115, metadata !870), !dbg !2246
  br label %435, !dbg !2475

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2476
  %428 = icmp eq i8 %427, 0, !dbg !2476
  br i1 %428, label %435, label %429, !dbg !2478

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2479
  br i1 %430, label %431, label %433, !dbg !2483

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2479
  store i8 92, i8* %432, align 1, !dbg !2479, !tbaa !1041
  br label %433, !dbg !2479

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2120, metadata !870), !dbg !2230
  br label %435, !dbg !2484

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2121, metadata !870), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2120, metadata !870), !dbg !2230
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2105, metadata !870), !dbg !2165
  %441 = add i64 %374, 1, !dbg !2485
  %442 = icmp ugt i64 %372, %441, !dbg !2487
  br i1 %442, label %443, label %535, !dbg !2488

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2489
  %445 = icmp ne i8 %444, 0, !dbg !2489
  %446 = and i8 %440, 1, !dbg !2489
  %447 = icmp eq i8 %446, 0, !dbg !2489
  %448 = and i1 %445, %447, !dbg !2489
  br i1 %448, label %449, label %460, !dbg !2489

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2492
  br i1 %450, label %451, label %453, !dbg !2496

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2492
  store i8 39, i8* %452, align 1, !dbg !2492, !tbaa !1041
  br label %453, !dbg !2492

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2105, metadata !870), !dbg !2165
  %455 = icmp ult i64 %454, %130, !dbg !2497
  br i1 %455, label %456, label %458, !dbg !2500

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2497
  store i8 39, i8* %457, align 1, !dbg !2497, !tbaa !1041
  br label %458, !dbg !2497

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !870), !dbg !2173
  br label %460, !dbg !2501

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2105, metadata !870), !dbg !2165
  %463 = icmp ult i64 %461, %130, !dbg !2502
  br i1 %463, label %464, label %466, !dbg !2505

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2502
  store i8 %438, i8* %465, align 1, !dbg !2502, !tbaa !1041
  br label %466, !dbg !2502

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2104, metadata !870), !dbg !2222
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2506
  %469 = load i8, i8* %468, align 1, !dbg !2506, !tbaa !1041
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2115, metadata !870), !dbg !2246
  br label %373, !dbg !2507, !llvm.loop !2508

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2122, metadata !870), !dbg !2232
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2121, metadata !870), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2120, metadata !870), !dbg !2230
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2104, metadata !870), !dbg !2222
  br i1 %106, label %482, label %481, !dbg !2511

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2513

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2514

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2515
  %485 = zext i8 %484 to i64, !dbg !2515
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2516
  %487 = load i32, i32* %486, align 4, !dbg !2516, !tbaa !961
  %488 = and i8 %477, 31, !dbg !2517
  %489 = zext i8 %488 to i32, !dbg !2518
  %490 = shl i32 1, %489, !dbg !2519
  %491 = and i32 %487, %490, !dbg !2519
  %492 = icmp eq i32 %491, 0, !dbg !2519
  %493 = icmp eq i8 %156, 0, !dbg !2520
  %494 = and i1 %493, %492, !dbg !2521
  br i1 %494, label %535, label %497, !dbg !2521

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2520
  br i1 %496, label %535, label %497, !dbg !2522

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2122, metadata !870), !dbg !2232
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2104, metadata !870), !dbg !2222
  br i1 %111, label %507, label %635, !dbg !2523

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !870), !dbg !2231
  %508 = and i8 %502, 1, !dbg !2525
  %509 = icmp eq i8 %508, 0, !dbg !2525
  %510 = and i1 %113, %509, !dbg !2525
  br i1 %510, label %511, label %527, !dbg !2525

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2527
  br i1 %512, label %513, label %515, !dbg !2531

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2527
  store i8 39, i8* %514, align 1, !dbg !2527, !tbaa !1041
  br label %515, !dbg !2527

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2105, metadata !870), !dbg !2165
  %517 = icmp ult i64 %516, %506, !dbg !2532
  br i1 %517, label %518, label %520, !dbg !2535

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2532
  store i8 36, i8* %519, align 1, !dbg !2532, !tbaa !1041
  br label %520, !dbg !2532

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2105, metadata !870), !dbg !2165
  %522 = icmp ult i64 %521, %506, !dbg !2536
  br i1 %522, label %523, label %525, !dbg !2539

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2536
  store i8 39, i8* %524, align 1, !dbg !2536, !tbaa !1041
  br label %525, !dbg !2536

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !870), !dbg !2173
  br label %527, !dbg !2540

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2105, metadata !870), !dbg !2165
  %530 = icmp ult i64 %528, %506, !dbg !2541
  br i1 %530, label %531, label %533, !dbg !2544

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2541
  store i8 92, i8* %532, align 1, !dbg !2541, !tbaa !1041
  br label %533, !dbg !2541

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2122, metadata !870), !dbg !2232
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2121, metadata !870), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2104, metadata !870), !dbg !2222
  br label %562, !dbg !2545

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2122, metadata !870), !dbg !2232
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2121, metadata !870), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2115, metadata !870), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2104, metadata !870), !dbg !2222
  %546 = and i8 %540, 1, !dbg !2545
  %547 = icmp ne i8 %546, 0, !dbg !2545
  %548 = and i8 %543, 1, !dbg !2545
  %549 = icmp eq i8 %548, 0, !dbg !2545
  %550 = and i1 %547, %549, !dbg !2545
  br i1 %550, label %551, label %562, !dbg !2545

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2548
  br i1 %552, label %553, label %555, !dbg !2552

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2548
  store i8 39, i8* %554, align 1, !dbg !2548, !tbaa !1041
  br label %555, !dbg !2548

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2105, metadata !870), !dbg !2165
  %557 = icmp ult i64 %556, %545, !dbg !2553
  br i1 %557, label %558, label %560, !dbg !2556

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2553
  store i8 39, i8* %559, align 1, !dbg !2553, !tbaa !1041
  br label %560, !dbg !2553

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !870), !dbg !2173
  br label %562, !dbg !2557

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2105, metadata !870), !dbg !2165
  %572 = icmp ult i64 %570, %563, !dbg !2558
  br i1 %572, label %573, label %575, !dbg !2561

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2558
  store i8 %565, i8* %574, align 1, !dbg !2558, !tbaa !1041
  br label %575, !dbg !2558

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2105, metadata !870), !dbg !2165
  %577 = and i8 %564, 1, !dbg !2562
  %578 = icmp eq i8 %577, 0, !dbg !2562
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !870), !dbg !2175
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2564
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2114, metadata !870), !dbg !2175
  br label %580, !dbg !2565

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2114, metadata !870), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2113, metadata !870), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2112, metadata !870), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2098, metadata !870), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2106, metadata !870), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2104, metadata !870), !dbg !2222
  %589 = add i64 %581, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2104, metadata !870), !dbg !2222
  br label %122, !dbg !2567, !llvm.loop !2568

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2570
  %593 = and i1 %113, %592, !dbg !2572
  %594 = xor i1 %593, true, !dbg !2572
  %595 = or i1 %111, %594, !dbg !2572
  br i1 %595, label %596, label %635, !dbg !2572

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2573
  %598 = xor i1 %597, true, !dbg !2573
  %599 = and i8 %128, 1, !dbg !2575
  %600 = icmp eq i8 %599, 0, !dbg !2575
  %601 = or i1 %600, %598, !dbg !2573
  br i1 %601, label %611, label %602, !dbg !2573

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2576
  %604 = icmp eq i8 %603, 0, !dbg !2576
  br i1 %604, label %607, label %605, !dbg !2579

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2580
  br label %645, !dbg !2581

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2582
  %609 = icmp ne i64 %125, 0, !dbg !2584
  %610 = and i1 %609, %608, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !870), !dbg !2165
  br i1 %610, label %27, label %611, !dbg !2585

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2586
  %613 = and i1 %612, %111, !dbg !2588
  br i1 %613, label %614, label %630, !dbg !2588

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2105, metadata !870), !dbg !2165
  %615 = load i8, i8* %99, align 1, !dbg !2589, !tbaa !1041
  %616 = icmp eq i8 %615, 0, !dbg !2592
  br i1 %616, label %630, label %617, !dbg !2592

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2593

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2105, metadata !870), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2107, metadata !870), !dbg !2167
  %622 = icmp ult i64 %621, %130, !dbg !2593
  br i1 %622, label %623, label %625, !dbg !2596

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2593
  store i8 %619, i8* %624, align 1, !dbg !2593, !tbaa !1041
  br label %625, !dbg !2593

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2105, metadata !870), !dbg !2165
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2107, metadata !870), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2105, metadata !870), !dbg !2165
  %628 = load i8, i8* %627, align 1, !dbg !2589, !tbaa !1041
  %629 = icmp eq i8 %628, 0, !dbg !2592
  br i1 %629, label %630, label %618, !dbg !2592, !llvm.loop !2598

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2105, metadata !870), !dbg !2165
  %632 = icmp ult i64 %631, %130, !dbg !2600
  br i1 %632, label %633, label %645, !dbg !2602

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2603
  store i8 0, i8* %634, align 1, !dbg !2604, !tbaa !1041
  br label %645, !dbg !2603

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2096, metadata !870), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2098, metadata !870), !dbg !2159
  %639 = icmp ne i32 %636, 2, !dbg !2605
  %640 = icmp eq i8 %103, 0, !dbg !2607
  %641 = or i1 %639, %640, !dbg !2608
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2099, metadata !870), !dbg !2160
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2099, metadata !870), !dbg !2160
  %643 = and i32 %5, -3, !dbg !2609
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2610
  br label %645, !dbg !2611

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2612
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !870), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2618, metadata !870), !dbg !2622
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2623
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2619, metadata !870), !dbg !2624
  %4 = icmp eq i8* %3, %0, !dbg !2625
  br i1 %4, label %5, label %75, !dbg !2627

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2620, metadata !870), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2630, metadata !870), !dbg !2646
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2644, metadata !870), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2645, metadata !870), !dbg !2650
  %7 = load i8, i8* %6, align 1, !dbg !2651, !tbaa !1041
  %8 = sext i8 %7 to i32, !dbg !2651
  %9 = and i32 %8, -33, !dbg !2651
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2651

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2653, metadata !870), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2665, metadata !870), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2666, metadata !870), !dbg !2672
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2673
  %12 = load i8, i8* %11, align 1, !dbg !2673, !tbaa !1041
  %13 = sext i8 %12 to i32, !dbg !2673
  %14 = and i32 %13, -33, !dbg !2673
  %15 = icmp eq i32 %14, 84, !dbg !2673
  br i1 %15, label %16, label %72, !dbg !2673

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2675, metadata !870), !dbg !2688
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2686, metadata !870), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2687, metadata !870), !dbg !2693
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2694
  %18 = load i8, i8* %17, align 1, !dbg !2694, !tbaa !1041
  %19 = sext i8 %18 to i32, !dbg !2694
  %20 = and i32 %19, -33, !dbg !2694
  %21 = icmp eq i32 %20, 70, !dbg !2694
  br i1 %21, label %22, label %72, !dbg !2694

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2696, metadata !870), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2706, metadata !870), !dbg !2712
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2707, metadata !870), !dbg !2713
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2714
  %24 = load i8, i8* %23, align 1, !dbg !2714, !tbaa !1041
  %25 = icmp eq i8 %24, 45, !dbg !2714
  br i1 %25, label %26, label %72, !dbg !2716

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2717, metadata !870), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2726, metadata !870), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2727, metadata !870), !dbg !2733
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2734
  %28 = load i8, i8* %27, align 1, !dbg !2734, !tbaa !1041
  %29 = icmp eq i8 %28, 56, !dbg !2734
  br i1 %29, label %30, label %72, !dbg !2736

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2737, metadata !870), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2745, metadata !870), !dbg !2751
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2746, metadata !870), !dbg !2752
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2753
  %32 = load i8, i8* %31, align 1, !dbg !2753, !tbaa !1041
  %33 = icmp eq i8 %32, 0, !dbg !2753
  br i1 %33, label %34, label %72, !dbg !2755

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2756, !tbaa !1041
  %36 = icmp eq i8 %35, 96, !dbg !2757
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.119, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.120, i64 0, i64 0), !dbg !2756
  br label %75, !dbg !2758

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2653, metadata !870), !dbg !2759
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2665, metadata !870), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2666, metadata !870), !dbg !2764
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2765
  %40 = load i8, i8* %39, align 1, !dbg !2765, !tbaa !1041
  %41 = sext i8 %40 to i32, !dbg !2765
  %42 = and i32 %41, -33, !dbg !2765
  %43 = icmp eq i32 %42, 66, !dbg !2765
  br i1 %43, label %44, label %72, !dbg !2765

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2675, metadata !870), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2686, metadata !870), !dbg !2768
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2687, metadata !870), !dbg !2769
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2770
  %46 = load i8, i8* %45, align 1, !dbg !2770, !tbaa !1041
  %47 = icmp eq i8 %46, 49, !dbg !2770
  br i1 %47, label %48, label %72, !dbg !2771

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2696, metadata !870), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2706, metadata !870), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2707, metadata !870), !dbg !2775
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2776
  %50 = load i8, i8* %49, align 1, !dbg !2776, !tbaa !1041
  %51 = icmp eq i8 %50, 56, !dbg !2776
  br i1 %51, label %52, label %72, !dbg !2777

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2717, metadata !870), !dbg !2778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2726, metadata !870), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2727, metadata !870), !dbg !2781
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2782
  %54 = load i8, i8* %53, align 1, !dbg !2782, !tbaa !1041
  %55 = icmp eq i8 %54, 48, !dbg !2782
  br i1 %55, label %56, label %72, !dbg !2783

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2737, metadata !870), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2745, metadata !870), !dbg !2786
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2746, metadata !870), !dbg !2787
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2788
  %58 = load i8, i8* %57, align 1, !dbg !2788, !tbaa !1041
  %59 = icmp eq i8 %58, 51, !dbg !2788
  br i1 %59, label %60, label %72, !dbg !2789

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2790, metadata !870), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2797, metadata !870), !dbg !2803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2798, metadata !870), !dbg !2804
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2805
  %62 = load i8, i8* %61, align 1, !dbg !2805, !tbaa !1041
  %63 = icmp eq i8 %62, 48, !dbg !2805
  br i1 %63, label %64, label %72, !dbg !2807

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2808, metadata !870), !dbg !2816
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2814, metadata !870), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2815, metadata !870), !dbg !2821
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2822
  %66 = load i8, i8* %65, align 1, !dbg !2822, !tbaa !1041
  %67 = icmp eq i8 %66, 0, !dbg !2822
  br i1 %67, label %68, label %72, !dbg !2824

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2825, !tbaa !1041
  %70 = icmp eq i8 %69, 96, !dbg !2826
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.121, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.122, i64 0, i64 0), !dbg !2825
  br label %75, !dbg !2827

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2828
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), !dbg !2829
  br label %75, !dbg !2830

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2831
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2832 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2836, metadata !870), !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2837, metadata !870), !dbg !2840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2838, metadata !870), !dbg !2841
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2842, metadata !870) #11, !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2847, metadata !870) #11, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2848, metadata !870) #11, !dbg !2858
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2849, metadata !870) #11, !dbg !2859
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2860
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2850, metadata !870) #11, !dbg !2861
  %6 = tail call i32* @__errno_location() #17, !dbg !2862
  %7 = load i32, i32* %6, align 4, !dbg !2862, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2851, metadata !870) #11, !dbg !2863
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2864
  %9 = load i32, i32* %8, align 4, !dbg !2864, !tbaa !2028
  %10 = or i32 %9, 1, !dbg !2865
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2852, metadata !870) #11, !dbg !2866
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2867
  %12 = load i32, i32* %11, align 8, !dbg !2867, !tbaa !1968
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2868
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2869
  %15 = load i8*, i8** %14, align 8, !dbg !2869, !tbaa !2054
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2870
  %17 = load i8*, i8** %16, align 8, !dbg !2870, !tbaa !2057
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2871
  %19 = add i64 %18, 1, !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2853, metadata !870) #11, !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2874, metadata !870) #11, !dbg !2879
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2854, metadata !870) #11, !dbg !2882
  %21 = load i32, i32* %11, align 8, !dbg !2883, !tbaa !1968
  %22 = load i8*, i8** %14, align 8, !dbg !2884, !tbaa !2054
  %23 = load i8*, i8** %16, align 8, !dbg !2885, !tbaa !2057
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2886
  store i32 %7, i32* %6, align 4, !dbg !2887, !tbaa !961
  ret i8* %20, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2843 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2842, metadata !870), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2847, metadata !870), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2848, metadata !870), !dbg !2891
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2849, metadata !870), !dbg !2892
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2893
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2850, metadata !870), !dbg !2894
  %7 = tail call i32* @__errno_location() #17, !dbg !2895
  %8 = load i32, i32* %7, align 4, !dbg !2895, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2851, metadata !870), !dbg !2896
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2897
  %10 = load i32, i32* %9, align 4, !dbg !2897, !tbaa !2028
  %11 = icmp ne i64* %2, null, !dbg !2898
  %12 = xor i1 %11, true, !dbg !2898
  %13 = zext i1 %12 to i32, !dbg !2898
  %14 = or i32 %10, %13, !dbg !2899
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2852, metadata !870), !dbg !2900
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2901
  %16 = load i32, i32* %15, align 8, !dbg !2901, !tbaa !1968
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2902
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2903
  %19 = load i8*, i8** %18, align 8, !dbg !2903, !tbaa !2054
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2904
  %21 = load i8*, i8** %20, align 8, !dbg !2904, !tbaa !2057
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2905
  %23 = add i64 %22, 1, !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2853, metadata !870), !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2874, metadata !870) #11, !dbg !2908
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2854, metadata !870), !dbg !2911
  %25 = load i32, i32* %15, align 8, !dbg !2912, !tbaa !1968
  %26 = load i8*, i8** %18, align 8, !dbg !2913, !tbaa !2054
  %27 = load i8*, i8** %20, align 8, !dbg !2914, !tbaa !2057
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2915
  store i32 %8, i32* %7, align 4, !dbg !2916, !tbaa !961
  br i1 %11, label %29, label %30, !dbg !2917

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2918, !tbaa !1020
  br label %30, !dbg !2920

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2922 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2926, !tbaa !877
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2924, metadata !870), !dbg !2927
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2925, metadata !870), !dbg !2928
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2925, metadata !870), !dbg !2928
  %2 = load i32, i32* @nslots, align 4, !dbg !2929, !tbaa !961
  %3 = icmp sgt i32 %2, 1, !dbg !2932
  br i1 %3, label %4, label %13, !dbg !2933

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2934

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2925, metadata !870), !dbg !2928
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2934
  %8 = load i8*, i8** %7, align 8, !dbg !2934, !tbaa !2935
  tail call void @free(i8* %8) #11, !dbg !2937
  %9 = add nuw i64 %6, 1, !dbg !2938
  %10 = load i32, i32* @nslots, align 4, !dbg !2929, !tbaa !961
  %11 = sext i32 %10 to i64, !dbg !2932
  %12 = icmp slt i64 %9, %11, !dbg !2932
  br i1 %12, label %5, label %13, !dbg !2933, !llvm.loop !2939

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2941
  %15 = load i8*, i8** %14, align 8, !dbg !2941, !tbaa !2935
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2943
  br i1 %16, label %18, label %17, !dbg !2944

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2945
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2947, !tbaa !2948
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2949, !tbaa !2935
  br label %18, !dbg !2950

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2951
  br i1 %19, label %22, label %20, !dbg !2953

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2954
  tail call void @free(i8* %21) #11, !dbg !2956
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2957, !tbaa !877
  br label %22, !dbg !2958

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2959, !tbaa !961
  ret void, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2961 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2965, metadata !870), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2966, metadata !870), !dbg !2968
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2969
  ret i8* %3, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2971 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2975, metadata !870), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2976, metadata !870), !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2977, metadata !870), !dbg !2991
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2978, metadata !870), !dbg !2992
  %5 = tail call i32* @__errno_location() #17, !dbg !2993
  %6 = load i32, i32* %5, align 4, !dbg !2993, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2979, metadata !870), !dbg !2994
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2995, !tbaa !877
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2980, metadata !870), !dbg !2996
  %8 = icmp slt i32 %0, 0, !dbg !2997
  br i1 %8, label %9, label %10, !dbg !2999

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3000
  unreachable, !dbg !3000

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3001, !tbaa !961
  %12 = icmp sgt i32 %11, %0, !dbg !3002
  br i1 %12, label %34, label %13, !dbg !3003

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3004
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3005
  br i1 %15, label %16, label %17, !dbg !3007

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3008
  unreachable, !dbg !3008

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3009
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3009
  %20 = add nsw i32 %0, 1, !dbg !3010
  %21 = sext i32 %20 to i64, !dbg !3011
  %22 = shl nsw i64 %21, 4, !dbg !3012
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3013
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3013
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2980, metadata !870), !dbg !2996
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3014, !tbaa !877
  br i1 %14, label %25, label %26, !dbg !3015

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3016, !tbaa.struct !3018
  br label %26, !dbg !3019

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3020, !tbaa !961
  %28 = sext i32 %27 to i64, !dbg !3021
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3021
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3022
  %31 = sub nsw i32 %20, %27, !dbg !3023
  %32 = sext i32 %31 to i64, !dbg !3024
  %33 = shl nsw i64 %32, 4, !dbg !3025
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3022
  store i32 %20, i32* @nslots, align 4, !dbg !3026, !tbaa !961
  br label %34, !dbg !3027

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2980, metadata !870), !dbg !2996
  %36 = sext i32 %0 to i64, !dbg !3028
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3029
  %38 = load i64, i64* %37, align 8, !dbg !3029, !tbaa !2948
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2984, metadata !870), !dbg !3030
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3031
  %40 = load i8*, i8** %39, align 8, !dbg !3031, !tbaa !2935
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2986, metadata !870), !dbg !3032
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3033
  %42 = load i32, i32* %41, align 4, !dbg !3033, !tbaa !2028
  %43 = or i32 %42, 1, !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2987, metadata !870), !dbg !3035
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3036
  %45 = load i32, i32* %44, align 8, !dbg !3036, !tbaa !1968
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3037
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3038
  %48 = load i8*, i8** %47, align 8, !dbg !3038, !tbaa !2054
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3039
  %50 = load i8*, i8** %49, align 8, !dbg !3039, !tbaa !2057
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2988, metadata !870), !dbg !3041
  %52 = icmp ugt i64 %38, %51, !dbg !3042
  br i1 %52, label %63, label %53, !dbg !3044

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2984, metadata !870), !dbg !3030
  store i64 %54, i64* %37, align 8, !dbg !3047, !tbaa !2948
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3048
  br i1 %55, label %57, label %56, !dbg !3050

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3051
  br label %57, !dbg !3051

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2874, metadata !870) #11, !dbg !3052
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2986, metadata !870), !dbg !3032
  store i8* %58, i8** %39, align 8, !dbg !3055, !tbaa !2935
  %59 = load i32, i32* %44, align 8, !dbg !3056, !tbaa !1968
  %60 = load i8*, i8** %47, align 8, !dbg !3057, !tbaa !2054
  %61 = load i8*, i8** %49, align 8, !dbg !3058, !tbaa !2057
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3059
  br label %63, !dbg !3060

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2986, metadata !870), !dbg !3032
  store i32 %6, i32* %5, align 4, !dbg !3061, !tbaa !961
  ret i8* %64, !dbg !3062
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3063 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3067, metadata !870), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3068, metadata !870), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3069, metadata !870), !dbg !3072
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3073
  ret i8* %4, !dbg !3074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3077, metadata !870), !dbg !3078
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2965, metadata !870) #11, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2966, metadata !870) #11, !dbg !3081
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3082
  ret i8* %2, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3084 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3088, metadata !870), !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3089, metadata !870), !dbg !3091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3067, metadata !870) #11, !dbg !3092
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !870) #11, !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3069, metadata !870) #11, !dbg !3095
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3096
  ret i8* %3, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3098 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3106, metadata !3112), !dbg !3113
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3102, metadata !870), !dbg !3115
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3103, metadata !870), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3104, metadata !870), !dbg !3117
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3118
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3105, metadata !870), !dbg !3119
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3111, metadata !870) #11, !dbg !3120
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3121
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3121
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3106, metadata !870) #11, !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3113
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3113
  %8 = icmp eq i32 %1, 10, !dbg !3123
  br i1 %8, label %9, label %10, !dbg !3125

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3126, !noalias !3127
  unreachable, !dbg !3126

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3106, metadata !3122) #11, !dbg !3113
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3130
  store i32 %1, i32* %11, align 8, !dbg !3130, !alias.scope !3127
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3130
  %13 = bitcast i32* %12 to i8*, !dbg !3130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3130
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3131
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3105, metadata !870), !dbg !3119
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3133
  ret i8* %14, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3135 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3106, metadata !3112), !dbg !3144
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3139, metadata !870), !dbg !3146
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3140, metadata !870), !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3141, metadata !870), !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3142, metadata !870), !dbg !3149
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3143, metadata !870), !dbg !3151
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3111, metadata !870) #11, !dbg !3152
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3153
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3106, metadata !870) #11, !dbg !3144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3144
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3144
  %9 = icmp eq i32 %1, 10, !dbg !3154
  br i1 %9, label %10, label %11, !dbg !3155

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3156, !noalias !3157
  unreachable, !dbg !3156

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3106, metadata !3122) #11, !dbg !3144
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3160
  store i32 %1, i32* %12, align 8, !dbg !3160, !alias.scope !3157
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3160
  %14 = bitcast i32* %13 to i8*, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3143, metadata !870), !dbg !3151
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3163
  ret i8* %15, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3165 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3106, metadata !3112), !dbg !3171
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3169, metadata !870), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3170, metadata !870), !dbg !3175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3102, metadata !870) #11, !dbg !3176
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3103, metadata !870) #11, !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3104, metadata !870) #11, !dbg !3178
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3179
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3179
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3105, metadata !870) #11, !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3111, metadata !870) #11, !dbg !3181
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3182
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3182
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3106, metadata !870) #11, !dbg !3171
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3171
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3171
  %7 = icmp eq i32 %0, 10, !dbg !3183
  br i1 %7, label %8, label %9, !dbg !3184

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3185, !noalias !3186
  unreachable, !dbg !3185

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3171
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3189
  store i32 %0, i32* %10, align 8, !dbg !3189, !alias.scope !3186
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3189
  %12 = bitcast i32* %11 to i8*, !dbg !3189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3190
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3105, metadata !870) #11, !dbg !3180
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3191
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3192
  ret i8* %13, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3194 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3106, metadata !3112), !dbg !3201
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3198, metadata !870), !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3199, metadata !870), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3200, metadata !870), !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3139, metadata !870) #11, !dbg !3207
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3140, metadata !870) #11, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3141, metadata !870) #11, !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3142, metadata !870) #11, !dbg !3210
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3211
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3211
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3143, metadata !870) #11, !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3111, metadata !870) #11, !dbg !3213
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3214
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3214
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3106, metadata !870) #11, !dbg !3201
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3201
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3201
  %8 = icmp eq i32 %0, 10, !dbg !3215
  br i1 %8, label %9, label %10, !dbg !3216

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3217, !noalias !3218
  unreachable, !dbg !3217

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3201
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3221
  store i32 %0, i32* %11, align 8, !dbg !3221, !alias.scope !3218
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3221
  %13 = bitcast i32* %12 to i8*, !dbg !3221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3221
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3222
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3143, metadata !870) #11, !dbg !3212
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3224
  ret i8* %14, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3226 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !870), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3231, metadata !870), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3232, metadata !870), !dbg !3236
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3237
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3238, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3233, metadata !870), !dbg !3240
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1987, metadata !870), !dbg !3241
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1988, metadata !870), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !870), !dbg !3244
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1990, metadata !870), !dbg !3245
  %6 = lshr i8 %2, 5, !dbg !3246
  %7 = zext i8 %6 to i64, !dbg !3246
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3247
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1991, metadata !870), !dbg !3248
  %9 = and i8 %2, 31, !dbg !3249
  %10 = zext i8 %9 to i32, !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1993, metadata !870), !dbg !3251
  %11 = load i32, i32* %8, align 4, !dbg !3252, !tbaa !961
  %12 = lshr i32 %11, %10, !dbg !3253
  %13 = and i32 %12, 1, !dbg !3254
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1994, metadata !870), !dbg !3255
  %14 = xor i32 %13, 1, !dbg !3256
  %15 = shl i32 %14, %10, !dbg !3257
  %16 = xor i32 %15, %11, !dbg !3258
  store i32 %16, i32* %8, align 4, !dbg !3258, !tbaa !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3233, metadata !870), !dbg !3240
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3259
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3260
  ret i8* %17, !dbg !3261
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3262 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !870), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3267, metadata !870), !dbg !3269
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !870) #11, !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3231, metadata !870) #11, !dbg !3272
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3232, metadata !870) #11, !dbg !3273
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3274
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3275, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3233, metadata !870) #11, !dbg !3276
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1987, metadata !870) #11, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1988, metadata !870) #11, !dbg !3279
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !870) #11, !dbg !3280
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1990, metadata !870) #11, !dbg !3281
  %5 = lshr i8 %1, 5, !dbg !3282
  %6 = zext i8 %5 to i64, !dbg !3282
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3283
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1991, metadata !870) #11, !dbg !3284
  %8 = and i8 %1, 31, !dbg !3285
  %9 = zext i8 %8 to i32, !dbg !3286
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1993, metadata !870) #11, !dbg !3287
  %10 = load i32, i32* %7, align 4, !dbg !3288, !tbaa !961
  %11 = lshr i32 %10, %9, !dbg !3289
  %12 = and i32 %11, 1, !dbg !3290
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1994, metadata !870) #11, !dbg !3291
  %13 = xor i32 %12, 1, !dbg !3292
  %14 = shl i32 %13, %9, !dbg !3293
  %15 = xor i32 %14, %10, !dbg !3294
  store i32 %15, i32* %7, align 4, !dbg !3294, !tbaa !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3233, metadata !870) #11, !dbg !3276
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3295
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3296
  ret i8* %16, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3298 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3300, metadata !870), !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !870) #11, !dbg !3302
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3267, metadata !870) #11, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !870) #11, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3231, metadata !870) #11, !dbg !3307
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3232, metadata !870) #11, !dbg !3308
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3310, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3233, metadata !870) #11, !dbg !3311
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1987, metadata !870) #11, !dbg !3312
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1988, metadata !870) #11, !dbg !3314
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !870) #11, !dbg !3315
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1990, metadata !870) #11, !dbg !3316
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3317
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1991, metadata !870) #11, !dbg !3318
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1993, metadata !870) #11, !dbg !3319
  %5 = load i32, i32* %4, align 4, !dbg !3320, !tbaa !961
  %6 = or i32 %5, 67108864, !dbg !3321
  store i32 %6, i32* %4, align 4, !dbg !3321, !tbaa !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3233, metadata !870) #11, !dbg !3311
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3323
  ret i8* %7, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3325 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3327, metadata !870), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3328, metadata !870), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !870) #11, !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3231, metadata !870) #11, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3232, metadata !870) #11, !dbg !3334
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3335
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3336, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3233, metadata !870) #11, !dbg !3337
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1987, metadata !870) #11, !dbg !3338
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1988, metadata !870) #11, !dbg !3340
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !870) #11, !dbg !3341
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1990, metadata !870) #11, !dbg !3342
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3343
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1991, metadata !870) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1993, metadata !870) #11, !dbg !3345
  %6 = load i32, i32* %5, align 4, !dbg !3346, !tbaa !961
  %7 = or i32 %6, 67108864, !dbg !3347
  store i32 %7, i32* %5, align 4, !dbg !3347, !tbaa !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3233, metadata !870) #11, !dbg !3337
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3349
  ret i8* %8, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3351 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3106, metadata !3112), !dbg !3357
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3353, metadata !870), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3354, metadata !870), !dbg !3360
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3355, metadata !870), !dbg !3361
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3362
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3111, metadata !870) #11, !dbg !3363
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3364
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3364
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3106, metadata !870) #11, !dbg !3357
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3106, metadata !3122) #11, !dbg !3357
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3357
  %9 = icmp eq i32 %1, 10, !dbg !3365
  br i1 %9, label %10, label %11, !dbg !3366

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3367, !noalias !3368
  unreachable, !dbg !3367

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3106, metadata !3122) #11, !dbg !3357
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3371
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3372
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3373
  store i32 %1, i32* %13, align 8, !dbg !3373
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3373
  %15 = bitcast i32* %14 to i8*, !dbg !3373
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3373
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3356, metadata !870), !dbg !3374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1987, metadata !870), !dbg !3375
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1988, metadata !870), !dbg !3377
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !870), !dbg !3378
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1990, metadata !870), !dbg !3379
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3380
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1991, metadata !870), !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1993, metadata !870), !dbg !3382
  %17 = load i32, i32* %16, align 4, !dbg !3383, !tbaa !961
  %18 = or i32 %17, 67108864, !dbg !3384
  store i32 %18, i32* %16, align 4, !dbg !3384, !tbaa !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3356, metadata !870), !dbg !3374
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3385
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3386
  ret i8* %19, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3388 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3392, metadata !870), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3393, metadata !870), !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3394, metadata !870), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3395, metadata !870), !dbg !3399
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3400, metadata !870) #11, !dbg !3410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3405, metadata !870) #11, !dbg !3412
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3406, metadata !870) #11, !dbg !3413
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3407, metadata !870) #11, !dbg !3414
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3408, metadata !870) #11, !dbg !3415
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3417, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !870) #11, !dbg !3418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !870) #11, !dbg !3419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !870) #11, !dbg !3421
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2038, metadata !870) #11, !dbg !3422
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !870) #11, !dbg !3419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !870) #11, !dbg !3419
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3423
  store i32 10, i32* %7, align 8, !dbg !3424, !tbaa !1968
  %8 = icmp ne i8* %1, null, !dbg !3425
  %9 = icmp ne i8* %2, null, !dbg !3426
  %10 = and i1 %8, %9, !dbg !3427
  br i1 %10, label %12, label %11, !dbg !3427

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3428
  unreachable, !dbg !3428

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3429
  store i8* %1, i8** %13, align 8, !dbg !3430, !tbaa !2054
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3431
  store i8* %2, i8** %14, align 8, !dbg !3432, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !870) #11, !dbg !3418
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3434
  ret i8* %15, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3401 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3400, metadata !870), !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3405, metadata !870), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3406, metadata !870), !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3407, metadata !870), !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3408, metadata !870), !dbg !3440
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3442, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3409, metadata !870), !dbg !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2036, metadata !870) #11, !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !870) #11, !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2038, metadata !870) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !870) #11, !dbg !3444
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2036, metadata !870) #11, !dbg !3444
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3448
  store i32 10, i32* %8, align 8, !dbg !3449, !tbaa !1968
  %9 = icmp ne i8* %1, null, !dbg !3450
  %10 = icmp ne i8* %2, null, !dbg !3451
  %11 = and i1 %9, %10, !dbg !3452
  br i1 %11, label %13, label %12, !dbg !3452

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3453
  unreachable, !dbg !3453

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3454
  store i8* %1, i8** %14, align 8, !dbg !3455, !tbaa !2054
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3456
  store i8* %2, i8** %15, align 8, !dbg !3457, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3409, metadata !870), !dbg !3443
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3459
  ret i8* %16, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3461 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3465, metadata !870), !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3466, metadata !870), !dbg !3469
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3467, metadata !870), !dbg !3470
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3392, metadata !870) #11, !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3393, metadata !870) #11, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3394, metadata !870) #11, !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3395, metadata !870) #11, !dbg !3475
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3400, metadata !870) #11, !dbg !3476
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3405, metadata !870) #11, !dbg !3478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3406, metadata !870) #11, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3407, metadata !870) #11, !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3408, metadata !870) #11, !dbg !3481
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3482
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3483, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3409, metadata !870) #11, !dbg !3484
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2036, metadata !870) #11, !dbg !3485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2037, metadata !870) #11, !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2038, metadata !870) #11, !dbg !3488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !870) #11, !dbg !3485
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2036, metadata !870) #11, !dbg !3485
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3489
  store i32 10, i32* %6, align 8, !dbg !3490, !tbaa !1968
  %7 = icmp ne i8* %0, null, !dbg !3491
  %8 = icmp ne i8* %1, null, !dbg !3492
  %9 = and i1 %7, %8, !dbg !3493
  br i1 %9, label %11, label %10, !dbg !3493

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3494
  unreachable, !dbg !3494

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3495
  store i8* %0, i8** %12, align 8, !dbg !3496, !tbaa !2054
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3497
  store i8* %1, i8** %13, align 8, !dbg !3498, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3409, metadata !870) #11, !dbg !3484
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3500
  ret i8* %14, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3502 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3506, metadata !870), !dbg !3510
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3507, metadata !870), !dbg !3511
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3508, metadata !870), !dbg !3512
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3509, metadata !870), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3400, metadata !870) #11, !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3405, metadata !870) #11, !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3406, metadata !870) #11, !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3407, metadata !870) #11, !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3408, metadata !870) #11, !dbg !3519
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3520
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3521, !tbaa.struct !3239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !870) #11, !dbg !3522
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !870) #11, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2037, metadata !870) #11, !dbg !3525
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2038, metadata !870) #11, !dbg !3526
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !870) #11, !dbg !3523
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !870) #11, !dbg !3523
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3527
  store i32 10, i32* %7, align 8, !dbg !3528, !tbaa !1968
  %8 = icmp ne i8* %0, null, !dbg !3529
  %9 = icmp ne i8* %1, null, !dbg !3530
  %10 = and i1 %8, %9, !dbg !3531
  br i1 %10, label %12, label %11, !dbg !3531

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3532
  unreachable, !dbg !3532

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3533
  store i8* %0, i8** %13, align 8, !dbg !3534, !tbaa !2054
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3535
  store i8* %1, i8** %14, align 8, !dbg !3536, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !870) #11, !dbg !3522
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3537
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3538
  ret i8* %15, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3540 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3544, metadata !870), !dbg !3547
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3545, metadata !870), !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3546, metadata !870), !dbg !3549
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3550
  ret i8* %4, !dbg !3551
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3552 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3556, metadata !870), !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3557, metadata !870), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3544, metadata !870) #11, !dbg !3560
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3545, metadata !870) #11, !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3546, metadata !870) #11, !dbg !3563
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3564
  ret i8* %3, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3566 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3570, metadata !870), !dbg !3572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3571, metadata !870), !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3544, metadata !870) #11, !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3545, metadata !870) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3546, metadata !870) #11, !dbg !3577
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3578
  ret i8* %3, !dbg !3579
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3580 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3584, metadata !870), !dbg !3585
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3570, metadata !870) #11, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3571, metadata !870) #11, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3544, metadata !870) #11, !dbg !3589
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3545, metadata !870) #11, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3546, metadata !870) #11, !dbg !3592
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3593
  ret i8* %2, !dbg !3594
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3595 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3649, metadata !870), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3650, metadata !870), !dbg !3656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3651, metadata !870), !dbg !3657
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3652, metadata !870), !dbg !3658
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3653, metadata !870), !dbg !3659
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3654, metadata !870), !dbg !3660
  %7 = icmp eq i8* %1, null, !dbg !3661
  br i1 %7, label %10, label %8, !dbg !3663

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3664
  br label %12, !dbg !3664

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.130, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3665
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.131, i64 0, i64 0), i32 5) #11, !dbg !3666
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3666
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.132, i64 0, i64 0), i32 5) #11, !dbg !3667
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3667
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
  ], !dbg !3668

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3669
  unreachable, !dbg !3669

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.133, i64 0, i64 0), i32 5) #11, !dbg !3671
  %20 = load i8*, i8** %4, align 8, !dbg !3671, !tbaa !877
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3671
  br label %146, !dbg !3672

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.134, i64 0, i64 0), i32 5) #11, !dbg !3673
  %24 = load i8*, i8** %4, align 8, !dbg !3673, !tbaa !877
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3673
  %26 = load i8*, i8** %25, align 8, !dbg !3673, !tbaa !877
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3673
  br label %146, !dbg !3674

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.135, i64 0, i64 0), i32 5) #11, !dbg !3675
  %30 = load i8*, i8** %4, align 8, !dbg !3675, !tbaa !877
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3675
  %32 = load i8*, i8** %31, align 8, !dbg !3675, !tbaa !877
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3675
  %34 = load i8*, i8** %33, align 8, !dbg !3675, !tbaa !877
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3675
  br label %146, !dbg !3676

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.136, i64 0, i64 0), i32 5) #11, !dbg !3677
  %38 = load i8*, i8** %4, align 8, !dbg !3677, !tbaa !877
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3677
  %40 = load i8*, i8** %39, align 8, !dbg !3677, !tbaa !877
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3677
  %42 = load i8*, i8** %41, align 8, !dbg !3677, !tbaa !877
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3677
  %44 = load i8*, i8** %43, align 8, !dbg !3677, !tbaa !877
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3677
  br label %146, !dbg !3678

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.137, i64 0, i64 0), i32 5) #11, !dbg !3679
  %48 = load i8*, i8** %4, align 8, !dbg !3679, !tbaa !877
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3679
  %50 = load i8*, i8** %49, align 8, !dbg !3679, !tbaa !877
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3679
  %52 = load i8*, i8** %51, align 8, !dbg !3679, !tbaa !877
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3679
  %54 = load i8*, i8** %53, align 8, !dbg !3679, !tbaa !877
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3679
  %56 = load i8*, i8** %55, align 8, !dbg !3679, !tbaa !877
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3679
  br label %146, !dbg !3680

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.138, i64 0, i64 0), i32 5) #11, !dbg !3681
  %60 = load i8*, i8** %4, align 8, !dbg !3681, !tbaa !877
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3681
  %62 = load i8*, i8** %61, align 8, !dbg !3681, !tbaa !877
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3681
  %64 = load i8*, i8** %63, align 8, !dbg !3681, !tbaa !877
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3681
  %66 = load i8*, i8** %65, align 8, !dbg !3681, !tbaa !877
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3681
  %68 = load i8*, i8** %67, align 8, !dbg !3681, !tbaa !877
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3681
  %70 = load i8*, i8** %69, align 8, !dbg !3681, !tbaa !877
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3681
  br label %146, !dbg !3682

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.139, i64 0, i64 0), i32 5) #11, !dbg !3683
  %74 = load i8*, i8** %4, align 8, !dbg !3683, !tbaa !877
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3683
  %76 = load i8*, i8** %75, align 8, !dbg !3683, !tbaa !877
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3683
  %78 = load i8*, i8** %77, align 8, !dbg !3683, !tbaa !877
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3683
  %80 = load i8*, i8** %79, align 8, !dbg !3683, !tbaa !877
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3683
  %82 = load i8*, i8** %81, align 8, !dbg !3683, !tbaa !877
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3683
  %84 = load i8*, i8** %83, align 8, !dbg !3683, !tbaa !877
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3683
  %86 = load i8*, i8** %85, align 8, !dbg !3683, !tbaa !877
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3683
  br label %146, !dbg !3684

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.140, i64 0, i64 0), i32 5) #11, !dbg !3685
  %90 = load i8*, i8** %4, align 8, !dbg !3685, !tbaa !877
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3685
  %92 = load i8*, i8** %91, align 8, !dbg !3685, !tbaa !877
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3685
  %94 = load i8*, i8** %93, align 8, !dbg !3685, !tbaa !877
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3685
  %96 = load i8*, i8** %95, align 8, !dbg !3685, !tbaa !877
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3685
  %98 = load i8*, i8** %97, align 8, !dbg !3685, !tbaa !877
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3685
  %100 = load i8*, i8** %99, align 8, !dbg !3685, !tbaa !877
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3685
  %102 = load i8*, i8** %101, align 8, !dbg !3685, !tbaa !877
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3685
  %104 = load i8*, i8** %103, align 8, !dbg !3685, !tbaa !877
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3685
  br label %146, !dbg !3686

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.141, i64 0, i64 0), i32 5) #11, !dbg !3687
  %108 = load i8*, i8** %4, align 8, !dbg !3687, !tbaa !877
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3687
  %110 = load i8*, i8** %109, align 8, !dbg !3687, !tbaa !877
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3687
  %112 = load i8*, i8** %111, align 8, !dbg !3687, !tbaa !877
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3687
  %114 = load i8*, i8** %113, align 8, !dbg !3687, !tbaa !877
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3687
  %116 = load i8*, i8** %115, align 8, !dbg !3687, !tbaa !877
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3687
  %118 = load i8*, i8** %117, align 8, !dbg !3687, !tbaa !877
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3687
  %120 = load i8*, i8** %119, align 8, !dbg !3687, !tbaa !877
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3687
  %122 = load i8*, i8** %121, align 8, !dbg !3687, !tbaa !877
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3687
  %124 = load i8*, i8** %123, align 8, !dbg !3687, !tbaa !877
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3687
  br label %146, !dbg !3688

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.142, i64 0, i64 0), i32 5) #11, !dbg !3689
  %128 = load i8*, i8** %4, align 8, !dbg !3689, !tbaa !877
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3689
  %130 = load i8*, i8** %129, align 8, !dbg !3689, !tbaa !877
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3689
  %132 = load i8*, i8** %131, align 8, !dbg !3689, !tbaa !877
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3689
  %134 = load i8*, i8** %133, align 8, !dbg !3689, !tbaa !877
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3689
  %136 = load i8*, i8** %135, align 8, !dbg !3689, !tbaa !877
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3689
  %138 = load i8*, i8** %137, align 8, !dbg !3689, !tbaa !877
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3689
  %140 = load i8*, i8** %139, align 8, !dbg !3689, !tbaa !877
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3689
  %142 = load i8*, i8** %141, align 8, !dbg !3689, !tbaa !877
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3689
  %144 = load i8*, i8** %143, align 8, !dbg !3689, !tbaa !877
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3689
  br label %146, !dbg !3690

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3691
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3692 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3696, metadata !870), !dbg !3702
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3697, metadata !870), !dbg !3703
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3698, metadata !870), !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3699, metadata !870), !dbg !3705
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3700, metadata !870), !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3701, metadata !870), !dbg !3707
  br label %6, !dbg !3708

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3701, metadata !870), !dbg !3707
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3710
  %9 = load i8*, i8** %8, align 8, !dbg !3710, !tbaa !877
  %10 = icmp eq i8* %9, null, !dbg !3712
  %11 = add i64 %7, 1, !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3701, metadata !870), !dbg !3707
  br i1 %10, label %12, label %6, !dbg !3712, !llvm.loop !3714

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3716
  ret void, !dbg !3717
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3718 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3729, metadata !870), !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3730, metadata !870), !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3731, metadata !870), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3732, metadata !870), !dbg !3740
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3733, metadata !870), !dbg !3741
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3742
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3742
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3735, metadata !870), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %11 = load i32, i32* %8, align 8, !dbg !3745
  %12 = icmp ult i32 %11, 41, !dbg !3745
  br i1 %12, label %13, label %18, !dbg !3745

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3745
  %15 = sext i32 %11 to i64, !dbg !3745
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3745
  %17 = add i32 %11, 8, !dbg !3745
  store i32 %17, i32* %8, align 8, !dbg !3745
  br label %21, !dbg !3745

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3745
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3745
  store i8* %20, i8** %10, align 8, !dbg !3745
  br label %21, !dbg !3745

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3745
  %25 = load i8*, i8** %24, align 8, !dbg !3745
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3748
  store i8* %25, i8** %26, align 16, !dbg !3749, !tbaa !877
  %27 = icmp eq i8* %25, null, !dbg !3750
  br i1 %27, label %30, label %28, !dbg !3751

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %29 = icmp ult i32 %22, 41, !dbg !3745
  br i1 %29, label %35, label %32, !dbg !3745

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3752
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3753
  ret void, !dbg !3753

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3745
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3745
  store i8* %34, i8** %10, align 8, !dbg !3745
  br label %40, !dbg !3745

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3745
  %37 = sext i32 %22 to i64, !dbg !3745
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3745
  %39 = add i32 %22, 8, !dbg !3745
  store i32 %39, i32* %8, align 8, !dbg !3745
  br label %40, !dbg !3745

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3745
  %44 = load i8*, i8** %43, align 8, !dbg !3745
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3748
  store i8* %44, i8** %45, align 8, !dbg !3749, !tbaa !877
  %46 = icmp eq i8* %44, null, !dbg !3750
  br i1 %46, label %30, label %47, !dbg !3751

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %48 = icmp ult i32 %41, 41, !dbg !3745
  br i1 %48, label %52, label %49, !dbg !3745

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3745
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3745
  store i8* %51, i8** %10, align 8, !dbg !3745
  br label %57, !dbg !3745

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3745
  %54 = sext i32 %41 to i64, !dbg !3745
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3745
  %56 = add i32 %41, 8, !dbg !3745
  store i32 %56, i32* %8, align 8, !dbg !3745
  br label %57, !dbg !3745

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3745
  %61 = load i8*, i8** %60, align 8, !dbg !3745
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3748
  store i8* %61, i8** %62, align 16, !dbg !3749, !tbaa !877
  %63 = icmp eq i8* %61, null, !dbg !3750
  br i1 %63, label %30, label %64, !dbg !3751

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %65 = icmp ult i32 %58, 41, !dbg !3745
  br i1 %65, label %69, label %66, !dbg !3745

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3745
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3745
  store i8* %68, i8** %10, align 8, !dbg !3745
  br label %74, !dbg !3745

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3745
  %71 = sext i32 %58 to i64, !dbg !3745
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3745
  %73 = add i32 %58, 8, !dbg !3745
  store i32 %73, i32* %8, align 8, !dbg !3745
  br label %74, !dbg !3745

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3745
  %78 = load i8*, i8** %77, align 8, !dbg !3745
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3748
  store i8* %78, i8** %79, align 8, !dbg !3749, !tbaa !877
  %80 = icmp eq i8* %78, null, !dbg !3750
  br i1 %80, label %30, label %81, !dbg !3751

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %82 = icmp ult i32 %75, 41, !dbg !3745
  br i1 %82, label %86, label %83, !dbg !3745

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3745
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3745
  store i8* %85, i8** %10, align 8, !dbg !3745
  br label %91, !dbg !3745

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3745
  %88 = sext i32 %75 to i64, !dbg !3745
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3745
  %90 = add i32 %75, 8, !dbg !3745
  store i32 %90, i32* %8, align 8, !dbg !3745
  br label %91, !dbg !3745

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3745
  %95 = load i8*, i8** %94, align 8, !dbg !3745
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3748
  store i8* %95, i8** %96, align 16, !dbg !3749, !tbaa !877
  %97 = icmp eq i8* %95, null, !dbg !3750
  br i1 %97, label %30, label %98, !dbg !3751

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %99 = icmp ult i32 %92, 41, !dbg !3745
  br i1 %99, label %103, label %100, !dbg !3745

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3745
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3745
  store i8* %102, i8** %10, align 8, !dbg !3745
  br label %108, !dbg !3745

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3745
  %105 = sext i32 %92 to i64, !dbg !3745
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3745
  %107 = add i32 %92, 8, !dbg !3745
  store i32 %107, i32* %8, align 8, !dbg !3745
  br label %108, !dbg !3745

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3745
  %111 = load i8*, i8** %110, align 8, !dbg !3745
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3748
  store i8* %111, i8** %112, align 8, !dbg !3749, !tbaa !877
  %113 = icmp eq i8* %111, null, !dbg !3750
  br i1 %113, label %30, label %114, !dbg !3751

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %115 = load i8*, i8** %10, align 8, !dbg !3745
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3745
  store i8* %116, i8** %10, align 8, !dbg !3745
  %117 = bitcast i8* %115 to i8**, !dbg !3745
  %118 = load i8*, i8** %117, align 8, !dbg !3745
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3748
  store i8* %118, i8** %119, align 16, !dbg !3749, !tbaa !877
  %120 = icmp eq i8* %118, null, !dbg !3750
  br i1 %120, label %30, label %121, !dbg !3751

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %122 = load i8*, i8** %10, align 8, !dbg !3745
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3745
  store i8* %123, i8** %10, align 8, !dbg !3745
  %124 = bitcast i8* %122 to i8**, !dbg !3745
  %125 = load i8*, i8** %124, align 8, !dbg !3745
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3748
  store i8* %125, i8** %126, align 8, !dbg !3749, !tbaa !877
  %127 = icmp eq i8* %125, null, !dbg !3750
  br i1 %127, label %30, label %128, !dbg !3751

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %129 = load i8*, i8** %10, align 8, !dbg !3745
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3745
  store i8* %130, i8** %10, align 8, !dbg !3745
  %131 = bitcast i8* %129 to i8**, !dbg !3745
  %132 = load i8*, i8** %131, align 8, !dbg !3745
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3748
  store i8* %132, i8** %133, align 16, !dbg !3749, !tbaa !877
  %134 = icmp eq i8* %132, null, !dbg !3750
  br i1 %134, label %30, label %135, !dbg !3751

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3734, metadata !870), !dbg !3744
  %136 = load i8*, i8** %10, align 8, !dbg !3745
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3745
  store i8* %137, i8** %10, align 8, !dbg !3745
  %138 = bitcast i8* %136 to i8**, !dbg !3745
  %139 = load i8*, i8** %138, align 8, !dbg !3745
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3748
  store i8* %139, i8** %140, align 8, !dbg !3749, !tbaa !877
  %141 = icmp eq i8* %139, null, !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3734, metadata !870), !dbg !3744
  %142 = select i1 %141, i64 9, i64 10, !dbg !3751
  br label %30, !dbg !3751
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3754 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3758, metadata !870), !dbg !3769
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3759, metadata !870), !dbg !3770
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3760, metadata !870), !dbg !3771
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3761, metadata !870), !dbg !3772
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3773
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3773
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3762, metadata !870), !dbg !3774
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3775
  call void @llvm.va_start(i8* nonnull %6), !dbg !3775
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3776
  call void @llvm.va_end(i8* nonnull %6), !dbg !3777
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3778
  ret void, !dbg !3778
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3779 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.145, i64 0, i64 0), i32 5) #11, !dbg !3780
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.146, i64 0, i64 0)) #11, !dbg !3780
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.147, i64 0, i64 0), i32 5) #11, !dbg !3781
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.148, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.149, i64 0, i64 0)) #11, !dbg !3781
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.150, i64 0, i64 0), i32 5) #11, !dbg !3782
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3782, !tbaa !877
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3782
  ret void, !dbg !3783
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3784 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3788, metadata !870), !dbg !3790
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3789, metadata !870), !dbg !3791
  %3 = udiv i64 9223372036854775807, %1, !dbg !3792
  %4 = icmp ult i64 %3, %0, !dbg !3792
  br i1 %4, label %5, label %6, !dbg !3794

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3795
  unreachable, !dbg !3795

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3796
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3797, metadata !870) #11, !dbg !3804
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3806
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3803, metadata !870) #11, !dbg !3807
  %9 = icmp eq i8* %8, null, !dbg !3808
  %10 = icmp ne i64 %7, 0, !dbg !3810
  %11 = and i1 %10, %9, !dbg !3811
  br i1 %11, label %12, label %13, !dbg !3811

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3812
  unreachable, !dbg !3812

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3813
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3798 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3797, metadata !870), !dbg !3814
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3803, metadata !870), !dbg !3816
  %3 = icmp eq i8* %2, null, !dbg !3817
  %4 = icmp ne i64 %0, 0, !dbg !3818
  %5 = and i1 %4, %3, !dbg !3819
  br i1 %5, label %6, label %7, !dbg !3819

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3820
  unreachable, !dbg !3820

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3821
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3822 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3826, metadata !870), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3827, metadata !870), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3828, metadata !870), !dbg !3831
  %4 = udiv i64 9223372036854775807, %2, !dbg !3832
  %5 = icmp ult i64 %4, %1, !dbg !3832
  br i1 %5, label %6, label %7, !dbg !3834

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3835
  unreachable, !dbg !3835

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3836
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !870) #11, !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3842, metadata !870) #11, !dbg !3845
  %9 = icmp eq i64 %8, 0, !dbg !3846
  %10 = icmp ne i8* %0, null, !dbg !3848
  %11 = and i1 %10, %9, !dbg !3849
  br i1 %11, label %12, label %13, !dbg !3849

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3850
  br label %19, !dbg !3852

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3853
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3837, metadata !870) #11, !dbg !3843
  %15 = icmp eq i8* %14, null, !dbg !3854
  %16 = icmp ne i64 %8, 0, !dbg !3856
  %17 = and i1 %16, %15, !dbg !3857
  br i1 %17, label %18, label %19, !dbg !3857

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3858
  unreachable, !dbg !3858

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3859
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3838 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !870), !dbg !3860
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3842, metadata !870), !dbg !3861
  %3 = icmp eq i64 %1, 0, !dbg !3862
  %4 = icmp ne i8* %0, null, !dbg !3863
  %5 = and i1 %4, %3, !dbg !3864
  br i1 %5, label %6, label %7, !dbg !3864

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3865
  br label %13, !dbg !3866

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3867
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3837, metadata !870), !dbg !3860
  %9 = icmp eq i8* %8, null, !dbg !3868
  %10 = icmp ne i64 %1, 0, !dbg !3869
  %11 = and i1 %10, %9, !dbg !3870
  br i1 %11, label %12, label %13, !dbg !3870

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3871
  unreachable, !dbg !3871

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3872
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !821 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !826, metadata !870), !dbg !3873
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !827, metadata !870), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !828, metadata !870), !dbg !3875
  %4 = load i64, i64* %1, align 8, !dbg !3876, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !829, metadata !870), !dbg !3877
  %5 = icmp eq i8* %0, null, !dbg !3878
  br i1 %5, label %6, label %13, !dbg !3880

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3881
  br i1 %7, label %8, label %17, !dbg !3884

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !829, metadata !870), !dbg !3877
  %10 = icmp ugt i64 %2, 128, !dbg !3887
  %11 = zext i1 %10 to i64, !dbg !3887
  %12 = add nuw nsw i64 %9, %11, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !829, metadata !870), !dbg !3877
  br label %17, !dbg !3889

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3890
  %15 = icmp ugt i64 %14, %4, !dbg !3893
  br i1 %15, label %20, label %16, !dbg !3894

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3895
  unreachable, !dbg !3895

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !829, metadata !870), !dbg !3877
  store i64 %18, i64* %1, align 8, !dbg !3896, !tbaa !1020
  %19 = mul i64 %18, %2, !dbg !3897
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !870) #11, !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3842, metadata !870) #11, !dbg !3900
  br label %27, !dbg !3901

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3902
  %22 = add i64 %4, 1, !dbg !3903
  %23 = add i64 %22, %21, !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !829, metadata !870), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !829, metadata !870), !dbg !3877
  store i64 %23, i64* %1, align 8, !dbg !3896, !tbaa !1020
  %24 = mul i64 %23, %2, !dbg !3897
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !870) #11, !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3842, metadata !870) #11, !dbg !3900
  %25 = icmp eq i64 %24, 0, !dbg !3905
  br i1 %25, label %26, label %27, !dbg !3901

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3906
  br label %34, !dbg !3907

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3908
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3837, metadata !870) #11, !dbg !3898
  %30 = icmp eq i8* %29, null, !dbg !3909
  %31 = icmp ne i64 %28, 0, !dbg !3910
  %32 = and i1 %31, %30, !dbg !3911
  br i1 %32, label %33, label %34, !dbg !3911

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3912
  unreachable, !dbg !3912

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3913
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3914 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3916, metadata !870), !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3797, metadata !870) #11, !dbg !3918
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3803, metadata !870) #11, !dbg !3921
  %3 = icmp eq i8* %2, null, !dbg !3922
  %4 = icmp ne i64 %0, 0, !dbg !3923
  %5 = and i1 %4, %3, !dbg !3924
  br i1 %5, label %6, label %7, !dbg !3924

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3925
  unreachable, !dbg !3925

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3926
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3927 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3931, metadata !870), !dbg !3933
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3932, metadata !870), !dbg !3934
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !826, metadata !870) #11, !dbg !3935
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !827, metadata !870) #11, !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !828, metadata !870) #11, !dbg !3938
  %3 = load i64, i64* %1, align 8, !dbg !3939, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !829, metadata !870) #11, !dbg !3940
  %4 = icmp eq i8* %0, null, !dbg !3941
  br i1 %4, label %5, label %8, !dbg !3942

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3943
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !829, metadata !870) #11, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !829, metadata !870) #11, !dbg !3940
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3944
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !829, metadata !870) #11, !dbg !3940
  store i64 %7, i64* %1, align 8, !dbg !3945, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !870) #11, !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3842, metadata !870) #11, !dbg !3948
  br label %17, !dbg !3949

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3950
  br i1 %9, label %11, label %10, !dbg !3951

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3952
  unreachable, !dbg !3952

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3953
  %13 = add i64 %3, 1, !dbg !3954
  %14 = add i64 %13, %12, !dbg !3955
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !829, metadata !870) #11, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !829, metadata !870) #11, !dbg !3940
  store i64 %14, i64* %1, align 8, !dbg !3945, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !870) #11, !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3842, metadata !870) #11, !dbg !3948
  %15 = icmp eq i64 %14, 0, !dbg !3956
  br i1 %15, label %16, label %17, !dbg !3949

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3957
  br label %24, !dbg !3958

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3837, metadata !870) #11, !dbg !3946
  %20 = icmp eq i8* %19, null, !dbg !3960
  %21 = icmp ne i64 %18, 0, !dbg !3961
  %22 = and i1 %21, %20, !dbg !3962
  br i1 %22, label %23, label %24, !dbg !3962

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3963
  unreachable, !dbg !3963

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3964
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3965 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3967, metadata !870), !dbg !3968
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3797, metadata !870) #11, !dbg !3969
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3971
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3803, metadata !870) #11, !dbg !3972
  %3 = icmp eq i8* %2, null, !dbg !3973
  %4 = icmp ne i64 %0, 0, !dbg !3974
  %5 = and i1 %4, %3, !dbg !3975
  br i1 %5, label %6, label %7, !dbg !3975

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3976
  unreachable, !dbg !3976

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3977
  ret i8* %2, !dbg !3978
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3979 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3981, metadata !870), !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3982, metadata !870), !dbg !3985
  %3 = udiv i64 9223372036854775807, %1, !dbg !3986
  %4 = icmp ult i64 %3, %0, !dbg !3986
  br i1 %4, label %8, label %5, !dbg !3988

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3983, metadata !870), !dbg !3990
  %7 = icmp eq i8* %6, null, !dbg !3991
  br i1 %7, label %8, label %9, !dbg !3992

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3993
  unreachable, !dbg !3993

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3994
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3995 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4001, metadata !870), !dbg !4003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4002, metadata !870), !dbg !4004
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3797, metadata !870) #11, !dbg !4005
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4007
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3803, metadata !870) #11, !dbg !4008
  %4 = icmp eq i8* %3, null, !dbg !4009
  %5 = icmp ne i64 %1, 0, !dbg !4010
  %6 = and i1 %5, %4, !dbg !4011
  br i1 %6, label %7, label %8, !dbg !4011

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4012
  unreachable, !dbg !4012

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4013
  ret i8* %3, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4015 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !870), !dbg !4018
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4019
  %3 = add i64 %2, 1, !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4001, metadata !870) #11, !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4002, metadata !870) #11, !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3797, metadata !870) #11, !dbg !4024
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4026
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3803, metadata !870) #11, !dbg !4027
  %5 = icmp eq i8* %4, null, !dbg !4028
  %6 = icmp ne i64 %3, 0, !dbg !4029
  %7 = and i1 %6, %5, !dbg !4030
  br i1 %7, label %8, label %9, !dbg !4030

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4031
  unreachable, !dbg !4031

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4032
  ret i8* %4, !dbg !4033
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4034 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4036, !tbaa !961
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.161, i64 0, i64 0), i32 5) #11, !dbg !4037
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i64 0, i64 0), i8* %2) #11, !dbg !4038
  tail call void @abort() #15, !dbg !4039
  unreachable, !dbg !4039
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4040 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4043, metadata !870), !dbg !4049
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4044, metadata !870), !dbg !4050
  %3 = icmp eq i64 %0, 0, !dbg !4051
  %4 = icmp eq i64 %1, 0, !dbg !4052
  %5 = or i1 %3, %4, !dbg !4053
  br i1 %5, label %12, label %6, !dbg !4053

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4046, metadata !870), !dbg !4055
  %8 = udiv i64 %7, %1, !dbg !4056
  %9 = icmp eq i64 %8, %0, !dbg !4058
  br i1 %9, label %12, label %10, !dbg !4059

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4060
  store i32 12, i32* %11, align 4, !dbg !4062, !tbaa !961
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4043, metadata !870), !dbg !4049
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4044, metadata !870), !dbg !4050
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4045, metadata !870), !dbg !4064
  br label %16, !dbg !4065

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4066
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4067 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4084, metadata !870), !dbg !4093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4085, metadata !870), !dbg !4094
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4086, metadata !870), !dbg !4095
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4087, metadata !870), !dbg !4096
  %6 = bitcast i32* %5 to i8*, !dbg !4097
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4097
  %7 = icmp eq i32* %0, null, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4084, metadata !870), !dbg !4093
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4100
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4084, metadata !870), !dbg !4093
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4088, metadata !870), !dbg !4102
  %10 = icmp ugt i64 %9, -3, !dbg !4103
  %11 = icmp ne i64 %2, 0, !dbg !4104
  %12 = and i1 %11, %10, !dbg !4105
  br i1 %12, label %13, label %18, !dbg !4105

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4106
  br i1 %14, label %18, label %15, !dbg !4107

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4108, !tbaa !1041
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4090, metadata !870), !dbg !4109
  %17 = zext i8 %16 to i32, !dbg !4110
  store i32 %17, i32* %8, align 4, !dbg !4111, !tbaa !961
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4112
  ret i64 %19, !dbg !4112
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 !dbg !4113 {
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !4142, metadata !870), !dbg !4145
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !4146
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4144, metadata !870), !dbg !4147
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4148
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4149, metadata !870) #11, !dbg !4154
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4152, metadata !870) #11, !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !4153, metadata !870) #11, !dbg !4154
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !4156
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !4157
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4158
  store i8 0, i8* %6, align 1, !dbg !4159, !tbaa !1041
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !4160
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4143, metadata !870), !dbg !4162
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4143, metadata !870), !dbg !4162
  %8 = icmp sgt i64 %7, 0, !dbg !4163
  br i1 %8, label %9, label %18, !dbg !4165

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !4166
  br label %11, !dbg !4165

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %10, %9 ], [ %13, %16 ]
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4143, metadata !870), !dbg !4162
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !4167
  %14 = load i8, i8* %13, align 1, !dbg !4167, !tbaa !1041
  %15 = icmp eq i8 %14, 32, !dbg !4168
  br i1 %15, label %16, label %18, !dbg !4169

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4143, metadata !870), !dbg !4162
  store i8 0, i8* %13, align 1, !dbg !4170, !tbaa !1041
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4143, metadata !870), !dbg !4162
  %17 = icmp ult i8* %2, %13, !dbg !4163
  br i1 %17, label %11, label %18, !dbg !4165, !llvm.loop !4171

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !4173
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 !dbg !4174 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4180, metadata !870), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4181, metadata !870), !dbg !4189
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %2, i64 0, metadata !4182, metadata !870), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4183, metadata !870), !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4184, metadata !870), !dbg !4192
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4185, metadata !870), !dbg !4193
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4186, metadata !870), !dbg !4194
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !4195
  tail call void @setutxent() #11, !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4184, metadata !870), !dbg !4192
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4186, metadata !870), !dbg !4194
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !4197
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %6, i64 0, metadata !4187, metadata !870), !dbg !4198
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4199
  br i1 %7, label %77, label %8, !dbg !4200

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !4200

; <label>:13:                                     ; preds = %8, %70
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %70 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %70 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %70 ]
  %17 = phi i8* [ null, %8 ], [ %72, %70 ]
  %18 = phi i64 [ 0, %8 ], [ %71, %70 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %14, i64 0, metadata !4201, metadata !870) #11, !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4206, metadata !870) #11, !dbg !4211
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %16, i64 0, metadata !4186, metadata !870), !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4184, metadata !870), !dbg !4192
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4212
  %20 = load i8, i8* %19, align 4, !dbg !4212, !tbaa !1041
  %21 = icmp eq i8 %20, 0, !dbg !4212
  br i1 %21, label %26, label %22, !dbg !4212

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4212
  %24 = load i16, i16* %23, align 4, !dbg !4212, !tbaa !1042
  %25 = icmp eq i16 %24, 7, !dbg !4212
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ]
  %28 = or i1 %10, %27, !dbg !4213
  br i1 %28, label %29, label %70, !dbg !4213

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !4215
  %31 = or i1 %12, %30, !dbg !4215
  br i1 %31, label %43, label %32, !dbg !4215

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4217
  %34 = load i32, i32* %33, align 4, !dbg !4217, !tbaa !1127
  %35 = icmp sgt i32 %34, 0, !dbg !4218
  br i1 %35, label %36, label %43, !dbg !4219

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !4220
  %38 = icmp slt i32 %37, 0, !dbg !4221
  br i1 %38, label %39, label %43, !dbg !4222

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !4223
  %41 = load i32, i32* %40, align 4, !dbg !4223, !tbaa !961
  %42 = icmp eq i32 %41, 3, !dbg !4224
  br i1 %42, label %70, label %43, !dbg !4225

; <label>:43:                                     ; preds = %39, %36, %32, %29
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4185, metadata !870), !dbg !4193
  %44 = icmp eq i64 %15, %18, !dbg !4226
  br i1 %44, label %45, label %62, !dbg !4229

; <label>:45:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !846, metadata !870) #11, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 384, i64 0, metadata !848, metadata !870) #11, !dbg !4232
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !849, metadata !870) #11, !dbg !4233
  %46 = icmp eq i8* %17, null, !dbg !4234
  br i1 %46, label %47, label %50, !dbg !4236

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !849, metadata !870) #11, !dbg !4233
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !849, metadata !870) #11, !dbg !4233
  %49 = select i1 %48, i64 1, i64 %15, !dbg !4240
  br label %57, !dbg !4240

; <label>:50:                                     ; preds = %45
  %51 = icmp ult i64 %15, 16012798675095096, !dbg !4241
  br i1 %51, label %53, label %52, !dbg !4244

; <label>:52:                                     ; preds = %50
  tail call void @xalloc_die() #15, !dbg !4245
  unreachable, !dbg !4245

; <label>:53:                                     ; preds = %50
  %54 = lshr i64 %15, 1, !dbg !4246
  %55 = add i64 %15, 1, !dbg !4247
  %56 = add i64 %55, %54, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !849, metadata !870) #11, !dbg !4233
  br label %57

; <label>:57:                                     ; preds = %47, %53
  %58 = phi i64 [ %56, %53 ], [ %49, %47 ]
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !849, metadata !870) #11, !dbg !4233
  %59 = mul i64 %58, 384, !dbg !4249
  %60 = tail call i8* @xrealloc(i8* %17, i64 %59) #11, !dbg !4250
  %61 = bitcast i8* %60 to %struct.utmpx*, !dbg !4251
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %61, i64 0, metadata !4186, metadata !870), !dbg !4194
  br label %62, !dbg !4252

; <label>:62:                                     ; preds = %57, %43
  %63 = phi i64 [ %58, %57 ], [ %18, %43 ]
  %64 = phi i8* [ %60, %57 ], [ %17, %43 ]
  %65 = phi %struct.utmpx* [ %61, %57 ], [ %16, %43 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %65, i64 0, metadata !4186, metadata !870), !dbg !4194
  %66 = add i64 %15, 1, !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !4184, metadata !870), !dbg !4192
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !4254
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !4255
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !4255
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 384, i32 4, i1 false), !dbg !4255, !tbaa.struct !4256
  br label %70, !dbg !4257

; <label>:70:                                     ; preds = %39, %26, %62
  %71 = phi i64 [ %63, %62 ], [ %18, %26 ], [ %18, %39 ]
  %72 = phi i8* [ %64, %62 ], [ %17, %26 ], [ %17, %39 ]
  %73 = phi %struct.utmpx* [ %65, %62 ], [ %16, %26 ], [ %16, %39 ]
  %74 = phi i64 [ %66, %62 ], [ %15, %26 ], [ %15, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4184, metadata !870), !dbg !4192
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %73, i64 0, metadata !4186, metadata !870), !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4184, metadata !870), !dbg !4192
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %73, i64 0, metadata !4186, metadata !870), !dbg !4194
  %75 = tail call %struct.utmpx* @getutxent() #11, !dbg !4197
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %75, i64 0, metadata !4187, metadata !870), !dbg !4198
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !4199
  br i1 %76, label %77, label %13, !dbg !4200, !llvm.loop !4258

; <label>:77:                                     ; preds = %70, %4
  %78 = phi i8* [ null, %4 ], [ %72, %70 ]
  %79 = phi i64 [ 0, %4 ], [ %74, %70 ]
  tail call void @endutxent() #11, !dbg !4260
  store i64 %79, i64* %1, align 8, !dbg !4261, !tbaa !1020
  %80 = bitcast %struct.utmpx** %2 to i8**, !dbg !4262
  store i8* %78, i8** %80, align 8, !dbg !4262, !tbaa !877
  ret i32 0, !dbg !4263
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4309, metadata !870), !dbg !4314
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4315
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4316, metadata !870), !dbg !4320
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4322
  %4 = load i32, i32* %3, align 8, !dbg !4322, !tbaa !4323
  %5 = and i32 %4, 32, !dbg !4322
  %6 = icmp eq i32 %5, 0, !dbg !4325
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4326
  %8 = icmp ne i32 %7, 0, !dbg !4327
  br i1 %6, label %9, label %19, !dbg !4328

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4330
  %11 = xor i1 %8, true, !dbg !4331
  %12 = or i1 %10, %11, !dbg !4331
  %13 = sext i1 %8 to i32, !dbg !4331
  br i1 %12, label %22, label %14, !dbg !4331

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4332
  %16 = load i32, i32* %15, align 4, !dbg !4332, !tbaa !961
  %17 = icmp ne i32 %16, 9, !dbg !4333
  %18 = sext i1 %17 to i32, !dbg !4334
  br label %22, !dbg !4334

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4335

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4337
  store i32 0, i32* %21, align 4, !dbg !4339, !tbaa !961
  br label %22, !dbg !4337

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4340
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4341 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4345, metadata !870), !dbg !4419
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4412, metadata !870), !dbg !4422
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4423
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4343, metadata !870), !dbg !4424
  %4 = icmp eq i8* %3, null, !dbg !4425
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), i8* %3, !dbg !4427
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4343, metadata !870), !dbg !4424
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4428, !tbaa !877
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4359, metadata !870) #11, !dbg !4429
  %7 = icmp eq i8* %6, null, !dbg !4430
  br i1 %7, label %8, label %123, !dbg !4431

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.176, i64 0, i64 0)) #11, !dbg !4432
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4360, metadata !870) #11, !dbg !4433
  %10 = icmp eq i8* %9, null, !dbg !4434
  br i1 %10, label %14, label %11, !dbg !4436

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4437, !tbaa !1041
  %13 = icmp eq i8 %12, 0, !dbg !4438
  br i1 %13, label %14, label %15, !dbg !4439

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4440

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.177, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4360, metadata !870) #11, !dbg !4433
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4441
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4363, metadata !870) #11, !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4365, metadata !870) #11, !dbg !4443
  %18 = icmp eq i64 %17, 0, !dbg !4444
  br i1 %18, label %24, label %19, !dbg !4445

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4446
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4446
  %22 = load i8, i8* %21, align 1, !dbg !4446, !tbaa !1041
  %23 = icmp ne i8 %22, 47, !dbg !4446
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4447
  %27 = add i64 %17, 14, !dbg !4448
  %28 = add i64 %27, %26, !dbg !4449
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4450
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4362, metadata !870) #11, !dbg !4451
  %30 = icmp eq i8* %29, null, !dbg !4452
  br i1 %30, label %121, label %31, !dbg !4452

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4453
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4456

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4457, !tbaa !1041
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4459
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.178, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4460
  br label %37, !dbg !4461

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4459
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.178, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4460
  br label %37, !dbg !4461

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4462
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4367, metadata !870) #11, !dbg !4463
  %39 = icmp slt i32 %38, 0, !dbg !4464
  br i1 %39, label %119, label %40, !dbg !4465

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.179, i64 0, i64 0)) #11, !dbg !4466
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4368, metadata !870) #11, !dbg !4467
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4468
  br i1 %42, label %43, label %45, !dbg !4469

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4470
  br label %119, !dbg !4472

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4409, metadata !870) #11, !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4475

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4476

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4409, metadata !870) #11, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4476
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4477
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4478, metadata !870) #11, !dbg !4483
  %54 = load i8*, i8** %48, align 8, !dbg !4485, !tbaa !4486
  %55 = load i8*, i8** %49, align 8, !dbg !4485, !tbaa !4487
  %56 = icmp ult i8* %54, %55, !dbg !4485
  br i1 %56, label %59, label %57, !dbg !4485, !prof !4488

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4485
  br label %63, !dbg !4485

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4485
  store i8* %60, i8** %48, align 8, !dbg !4485, !tbaa !4486
  %61 = load i8, i8* %54, align 1, !dbg !4485, !tbaa !1041
  %62 = zext i8 %61 to i32, !dbg !4485
  br label %63, !dbg !4485

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4485
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4411, metadata !870) #11, !dbg !4489
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4490, !llvm.loop !4491

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4496

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4478, metadata !870) #11, !dbg !4498
  %67 = load i8*, i8** %48, align 8, !dbg !4496, !tbaa !4486
  %68 = load i8*, i8** %49, align 8, !dbg !4496, !tbaa !4487
  %69 = icmp ult i8* %67, %68, !dbg !4496
  br i1 %69, label %72, label %70, !dbg !4496, !prof !4488

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4496
  br label %76, !dbg !4496

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4496
  store i8* %73, i8** %48, align 8, !dbg !4496, !tbaa !4486
  %74 = load i8, i8* %67, align 1, !dbg !4496, !tbaa !1041
  %75 = zext i8 %74 to i32, !dbg !4496
  br label %76, !dbg !4496

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4496
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4411, metadata !870) #11, !dbg !4489
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4499, !llvm.loop !4500

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4503
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.180, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4504
  %81 = icmp slt i32 %80, 2, !dbg !4506
  br i1 %81, label %112, label %82, !dbg !4507

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4416, metadata !870) #11, !dbg !4509
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4417, metadata !870) #11, !dbg !4511
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4418, metadata !870) #11, !dbg !4512
  %85 = icmp eq i64 %51, 0, !dbg !4513
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4515

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  %90 = add i64 %87, 2, !dbg !4516
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4518
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4409, metadata !870) #11, !dbg !4473
  br label %96, !dbg !4519

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  %94 = add i64 %93, 1, !dbg !4522
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4523
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4409, metadata !870) #11, !dbg !4473
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4409, metadata !870) #11, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  %99 = icmp eq i8* %98, null, !dbg !4524
  br i1 %99, label %100, label %102, !dbg !4526

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  call void @free(i8* %52) #11, !dbg !4527
  br label %112, !dbg !4529

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4530
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4530
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4531
  %104 = xor i64 %84, -1, !dbg !4532
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4532
  %106 = xor i64 %83, -1, !dbg !4533
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4533
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4534, metadata !870) #11, !dbg !4538
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4537, metadata !870) #11, !dbg !4538
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4540
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4541
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4534, metadata !870) #11, !dbg !4542
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4537, metadata !870) #11, !dbg !4542
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4544
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4545
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4409, metadata !870) #11, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4410, metadata !870) #11, !dbg !4474
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4530
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4530
  br label %50, !dbg !4546, !llvm.loop !4500

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4530
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4530
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4547
  %116 = icmp eq i64 %113, 0, !dbg !4548
  br i1 %116, label %119, label %117, !dbg !4550

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4551
  store i8 0, i8* %118, align 1, !dbg !4553, !tbaa !1041
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4359, metadata !870) #11, !dbg !4429
  call void @free(i8* %29) #11, !dbg !4554
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4359, metadata !870) #11, !dbg !4429
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4555, !tbaa !877
  br label %123, !dbg !4556

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4359, metadata !870) #11, !dbg !4429
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4344, metadata !870), !dbg !4557
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4344, metadata !870), !dbg !4557
  %125 = load i8, i8* %124, align 1, !dbg !4558, !tbaa !1041
  %126 = icmp eq i8 %125, 0, !dbg !4560
  br i1 %126, label %152, label %127, !dbg !4561

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4562

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4344, metadata !870), !dbg !4557
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4562
  %132 = icmp eq i32 %131, 0, !dbg !4564
  br i1 %132, label %139, label %133, !dbg !4565

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4566
  br i1 %134, label %135, label %143, !dbg !4567

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4568
  %137 = load i8, i8* %136, align 1, !dbg !4568, !tbaa !1041
  %138 = icmp eq i8 %137, 0, !dbg !4569
  br i1 %138, label %139, label %143, !dbg !4570

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4571
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4573
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4574
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4343, metadata !870), !dbg !4424
  br label %152, !dbg !4575

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4576
  %145 = add i64 %144, 1, !dbg !4577
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4578
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4344, metadata !870), !dbg !4557
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4579
  %148 = add i64 %147, 1, !dbg !4580
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4581
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4344, metadata !870), !dbg !4557
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4344, metadata !870), !dbg !4557
  %150 = load i8, i8* %149, align 1, !dbg !4558, !tbaa !1041
  %151 = icmp eq i8 %150, 0, !dbg !4560
  br i1 %151, label %152, label %128, !dbg !4561, !llvm.loop !4582

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4343, metadata !870), !dbg !4424
  %154 = load i8, i8* %153, align 1, !dbg !4584, !tbaa !1041
  %155 = icmp eq i8 %154, 0, !dbg !4586
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i8* %153, !dbg !4587
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4343, metadata !870), !dbg !4424
  ret i8* %156, !dbg !4588
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4589 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4634, metadata !870), !dbg !4638
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4635, metadata !870), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4637, metadata !870), !dbg !4640
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4636, metadata !870), !dbg !4642
  %3 = icmp slt i32 %2, 0, !dbg !4643
  br i1 %3, label %4, label %6, !dbg !4645

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4646
  br label %24, !dbg !4647

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4648
  %8 = icmp eq i32 %7, 0, !dbg !4648
  br i1 %8, label %13, label %9, !dbg !4650

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4651
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4652
  %12 = icmp eq i64 %11, -1, !dbg !4653
  br i1 %12, label %16, label %13, !dbg !4654

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4655
  %15 = icmp eq i32 %14, 0, !dbg !4655
  br i1 %15, label %16, label %18, !dbg !4656

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4635, metadata !870), !dbg !4639
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4657
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4637, metadata !870), !dbg !4640
  br label %24, !dbg !4658

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4659
  %20 = load i32, i32* %19, align 4, !dbg !4659, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4635, metadata !870), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4635, metadata !870), !dbg !4639
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4657
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4637, metadata !870), !dbg !4640
  %22 = icmp eq i32 %20, 0, !dbg !4660
  br i1 %22, label %24, label %23, !dbg !4658

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4662, !tbaa !961
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4637, metadata !870), !dbg !4640
  br label %24, !dbg !4664

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4665
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4666 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4711, metadata !870), !dbg !4712
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4713
  br i1 %2, label %6, label %3, !dbg !4715

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4716
  %5 = icmp eq i32 %4, 0, !dbg !4716
  br i1 %5, label %6, label %8, !dbg !4717

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4718
  br label %17, !dbg !4719

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4720, metadata !870) #11, !dbg !4725
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4727
  %10 = load i32, i32* %9, align 8, !dbg !4727, !tbaa !4323
  %11 = and i32 %10, 256, !dbg !4729
  %12 = icmp eq i32 %11, 0, !dbg !4729
  br i1 %12, label %15, label %13, !dbg !4730

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4731
  br label %15, !dbg !4731

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4732
  br label %17, !dbg !4733

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4734
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4735 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4781, metadata !870), !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4782, metadata !870), !dbg !4788
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4783, metadata !870), !dbg !4789
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4790
  %5 = load i8*, i8** %4, align 8, !dbg !4790, !tbaa !4487
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4791
  %7 = load i8*, i8** %6, align 8, !dbg !4791, !tbaa !4486
  %8 = icmp eq i8* %5, %7, !dbg !4792
  br i1 %8, label %9, label %28, !dbg !4793

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4794
  %11 = load i8*, i8** %10, align 8, !dbg !4794, !tbaa !4795
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4796
  %13 = load i8*, i8** %12, align 8, !dbg !4796, !tbaa !4797
  %14 = icmp eq i8* %11, %13, !dbg !4798
  br i1 %14, label %15, label %28, !dbg !4799

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4800
  %17 = load i8*, i8** %16, align 8, !dbg !4800, !tbaa !4801
  %18 = icmp eq i8* %17, null, !dbg !4802
  br i1 %18, label %19, label %28, !dbg !4803

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4804
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4805
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4784, metadata !870), !dbg !4806
  %22 = icmp eq i64 %21, -1, !dbg !4807
  br i1 %22, label %30, label %23, !dbg !4809

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4810
  %25 = load i32, i32* %24, align 8, !dbg !4811, !tbaa !4323
  %26 = and i32 %25, -17, !dbg !4811
  store i32 %26, i32* %24, align 8, !dbg !4811, !tbaa !4323
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4812
  store i64 %21, i64* %27, align 8, !dbg !4813, !tbaa !4814
  br label %30, !dbg !4815

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4816
  br label %30, !dbg !4817

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4818
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
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !311, !317, !360, !368, !800, !802, !375, !382, !808, !445, !816, !833, !835, !837, !840, !851, !454, !853, !855, !857}
!llvm.ident = !{!859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859, !859}
!llvm.module.flags = !{!860, !861, !862, !863, !864}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 162, type: !297, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !34)
!3 = !DIFile(filename: "src/who.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9}
!8 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!9 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !11, line: 32, size: 32, elements: !12)
!11 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!13 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!14 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!15 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!16 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!17 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!18 = !DIEnumerator(name: "c_quoting_style", value: 5)
!19 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!20 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!21 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!22 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!23 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!24 = !{!25, !27, !28, !32, !33}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !29, line: 7, baseType: !30)
!29 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !31, line: 148, baseType: !32)
!31 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !{!35, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !70, !73, !0, !93, !125, !231, !235, !246, !251, !278, !288, !290}
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "do_lookup", scope: !2, file: !3, line: 102, type: !37, isLocal: true, isDefinition: true)
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "short_list", scope: !2, file: !3, line: 107, type: !37, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41)
!41 = distinct !DIGlobalVariable(name: "short_output", scope: !2, file: !3, line: 110, type: !37, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43)
!43 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 115, type: !37, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 118, type: !37, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "include_mesg", scope: !2, file: !3, line: 122, type: !37, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "include_exit", scope: !2, file: !3, line: 125, type: !37, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51)
!51 = distinct !DIGlobalVariable(name: "need_boottime", scope: !2, file: !3, line: 128, type: !37, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "need_deadprocs", scope: !2, file: !3, line: 131, type: !37, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "need_login", scope: !2, file: !3, line: 134, type: !37, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "need_initspawn", scope: !2, file: !3, line: 137, type: !37, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "need_clockchange", scope: !2, file: !3, line: 140, type: !37, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "need_runlevel", scope: !2, file: !3, line: 143, type: !37, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "need_users", scope: !2, file: !3, line: 146, type: !37, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "my_line_only", scope: !2, file: !3, line: 149, type: !37, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 153, type: !68, isLocal: true, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 154, type: !72, isLocal: true, isDefinition: true)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "infomap", scope: !75, file: !76, line: 632, type: !90, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 630, type: !77, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !79)
!76 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !DISubroutineType(types: !78)
!78 = !{null, !68}
!79 = !{!80, !81, !82, !89}
!80 = !DILocalVariable(name: "program", arg: 1, scope: !75, file: !76, line: 630, type: !68)
!81 = !DILocalVariable(name: "node", scope: !75, file: !76, line: 642, type: !68)
!82 = !DILocalVariable(name: "map_prog", scope: !75, file: !76, line: 643, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !75, file: !76, line: 632, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !85, file: !76, line: 632, baseType: !68, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !85, file: !76, line: 632, baseType: !68, size: 64, offset: 64)
!89 = !DILocalVariable(name: "lc_messages", scope: !75, file: !76, line: 655, type: !68)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 896, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 7)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "mesg", scope: !95, file: !3, line: 249, type: !122, isLocal: true, isDefinition: true)
!95 = distinct !DISubprogram(name: "print_line", scope: !3, file: !3, line: 244, type: !96, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !72, !68, !69, !72, !68, !68, !68, !68, !68, !68}
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !114, !118, !119, !120}
!99 = !DILocalVariable(name: "userlen", arg: 1, scope: !95, file: !3, line: 244, type: !72)
!100 = !DILocalVariable(name: "user", arg: 2, scope: !95, file: !3, line: 244, type: !68)
!101 = !DILocalVariable(name: "state", arg: 3, scope: !95, file: !3, line: 244, type: !69)
!102 = !DILocalVariable(name: "linelen", arg: 4, scope: !95, file: !3, line: 245, type: !72)
!103 = !DILocalVariable(name: "line", arg: 5, scope: !95, file: !3, line: 245, type: !68)
!104 = !DILocalVariable(name: "time_str", arg: 6, scope: !95, file: !3, line: 246, type: !68)
!105 = !DILocalVariable(name: "idle", arg: 7, scope: !95, file: !3, line: 246, type: !68)
!106 = !DILocalVariable(name: "pid", arg: 8, scope: !95, file: !3, line: 246, type: !68)
!107 = !DILocalVariable(name: "comment", arg: 9, scope: !95, file: !3, line: 247, type: !68)
!108 = !DILocalVariable(name: "exitstr", arg: 10, scope: !95, file: !3, line: 247, type: !68)
!109 = !DILocalVariable(name: "buf", scope: !95, file: !3, line: 250, type: !25)
!110 = !DILocalVariable(name: "x_idle", scope: !95, file: !3, line: 251, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 8)
!114 = !DILocalVariable(name: "x_pid", scope: !95, file: !3, line: 252, type: !115)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 104, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 13)
!118 = !DILocalVariable(name: "x_exitstr", scope: !95, file: !3, line: 253, type: !25)
!119 = !DILocalVariable(name: "err", scope: !95, file: !3, line: 254, type: !72)
!120 = !DILocalVariable(name: "p", scope: !121, file: !3, line: 303, type: !25)
!121 = distinct !DILexicalBlock(scope: !95, file: !3, line: 301, column: 3)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "hoststr", scope: !127, file: !3, line: 339, type: !25, isLocal: true, isDefinition: true)
!127 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !128, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !170)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !28}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !134, line: 55, size: 3072, elements: !135)
!134 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!136, !137, !139, !143, !147, !148, !152, !157, !159, !164, !166}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !133, file: !134, line: 57, baseType: !33, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !133, file: !134, line: 58, baseType: !138, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !31, line: 142, baseType: !72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !133, file: !134, line: 59, baseType: !140, size: 256, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !133, file: !134, line: 60, baseType: !144, size: 32, offset: 320)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 4)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !133, file: !134, line: 61, baseType: !140, size: 256, offset: 352)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !133, file: !134, line: 62, baseType: !149, size: 2048, offset: 608)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !133, file: !134, line: 63, baseType: !153, size: 32, offset: 2656)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !134, line: 42, size: 32, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !153, file: !134, line: 45, baseType: !33, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !153, file: !134, line: 46, baseType: !33, size: 16, offset: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !133, file: !134, line: 70, baseType: !158, size: 32, offset: 2688)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !31, line: 40, baseType: !72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !133, file: !134, line: 75, baseType: !160, size: 64, offset: 2720)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !134, line: 71, size: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !160, file: !134, line: 73, baseType: !158, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !160, file: !134, line: 74, baseType: !158, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !133, file: !134, line: 80, baseType: !165, size: 128, offset: 2784)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !145)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !133, file: !134, line: 81, baseType: !167, size: 160, offset: 2912)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 20)
!170 = !{!171, !172, !173, !210, !211, !212, !214, !218, !219, !223, !229, !230}
!171 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !127, file: !3, line: 333, type: !130)
!172 = !DILocalVariable(name: "boottime", arg: 2, scope: !127, file: !3, line: 333, type: !28)
!173 = !DILocalVariable(name: "stats", scope: !127, file: !3, line: 335, type: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !175, line: 46, size: 1152, elements: !176)
!175 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !{!177, !180, !182, !184, !187, !189, !191, !192, !193, !195, !197, !199, !206, !207, !208}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !174, file: !175, line: 48, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !31, line: 133, baseType: !179)
!179 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !174, file: !175, line: 53, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !31, line: 136, baseType: !179)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !174, file: !175, line: 61, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !31, line: 139, baseType: !179)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !174, file: !175, line: 62, baseType: !185, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !31, line: 138, baseType: !186)
!186 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !174, file: !175, line: 64, baseType: !188, size: 32, offset: 224)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !31, line: 134, baseType: !186)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !174, file: !175, line: 65, baseType: !190, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !31, line: 135, baseType: !186)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !174, file: !175, line: 67, baseType: !72, size: 32, offset: 288)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !174, file: !175, line: 69, baseType: !178, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !174, file: !175, line: 74, baseType: !194, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !31, line: 140, baseType: !32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !174, file: !175, line: 78, baseType: !196, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !31, line: 162, baseType: !32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !174, file: !175, line: 80, baseType: !198, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !31, line: 167, baseType: !32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !174, file: !175, line: 91, baseType: !200, size: 128, offset: 576)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !201, line: 8, size: 128, elements: !202)
!201 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !200, file: !201, line: 10, baseType: !30, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !200, file: !201, line: 11, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !31, line: 184, baseType: !32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !174, file: !175, line: 92, baseType: !200, size: 128, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !174, file: !175, line: 93, baseType: !200, size: 128, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !174, file: !175, line: 106, baseType: !209, size: 192, offset: 960)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !123)
!210 = !DILocalVariable(name: "last_change", scope: !127, file: !3, line: 336, type: !28)
!211 = !DILocalVariable(name: "mesg", scope: !127, file: !3, line: 337, type: !26)
!212 = !DILocalVariable(name: "idlestr", scope: !127, file: !3, line: 338, type: !213)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 56, elements: !91)
!214 = !DILocalVariable(name: "line", scope: !127, file: !3, line: 347, type: !215)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 304, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 38)
!218 = !DILocalVariable(name: "p", scope: !127, file: !3, line: 348, type: !25)
!219 = !DILocalVariable(name: "pidstr", scope: !127, file: !3, line: 349, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 12)
!223 = !DILocalVariable(name: "ut_host", scope: !224, file: !3, line: 377, type: !226)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 376, column: 5)
!225 = distinct !DILexicalBlock(scope: !127, file: !3, line: 375, column: 7)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 257)
!229 = !DILocalVariable(name: "host", scope: !224, file: !3, line: 378, type: !25)
!230 = !DILocalVariable(name: "display", scope: !224, file: !3, line: 379, type: !25)
!231 = !DIGlobalVariableExpression(var: !232)
!232 = distinct !DIGlobalVariable(name: "hostlen", scope: !127, file: !3, line: 341, type: !233, isLocal: true, isDefinition: true)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !234, line: 62, baseType: !179)
!234 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "now", scope: !237, file: !3, line: 190, type: !28, isLocal: true, isDefinition: true)
!237 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 188, type: !238, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!68, !28, !28}
!240 = !{!241, !242, !243}
!241 = !DILocalVariable(name: "when", arg: 1, scope: !237, file: !3, line: 188, type: !28)
!242 = !DILocalVariable(name: "boottime", arg: 2, scope: !237, file: !3, line: 188, type: !28)
!243 = !DILocalVariable(name: "seconds_idle", scope: !244, file: !3, line: 197, type: !72)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 196, column: 5)
!245 = distinct !DILexicalBlock(scope: !237, file: !3, line: 195, column: 7)
!246 = !DIGlobalVariableExpression(var: !247)
!247 = distinct !DIGlobalVariable(name: "idle_hhmm", scope: !237, file: !3, line: 202, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 6)
!251 = !DIGlobalVariableExpression(var: !252)
!252 = distinct !DIGlobalVariable(name: "buf", scope: !253, file: !3, line: 220, type: !275, isLocal: true, isDefinition: true)
!253 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 218, type: !254, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!68, !130}
!256 = !{!257, !258, !259}
!257 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !253, file: !3, line: 218, type: !130)
!258 = !DILocalVariable(name: "t", scope: !253, file: !3, line: 228, type: !28)
!259 = !DILocalVariable(name: "tmp", scope: !253, file: !3, line: 229, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !262, line: 7, size: 448, elements: !263)
!262 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !261, file: !262, line: 9, baseType: !72, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !261, file: !262, line: 10, baseType: !72, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !261, file: !262, line: 11, baseType: !72, size: 32, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !261, file: !262, line: 12, baseType: !72, size: 32, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !261, file: !262, line: 13, baseType: !72, size: 32, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !261, file: !262, line: 14, baseType: !72, size: 32, offset: 160)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !261, file: !262, line: 15, baseType: !72, size: 32, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !261, file: !262, line: 16, baseType: !72, size: 32, offset: 224)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !261, file: !262, line: 17, baseType: !72, size: 32, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !261, file: !262, line: 20, baseType: !32, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !261, file: !262, line: 21, baseType: !68, size: 64, offset: 384)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 264, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 33)
!278 = !DIGlobalVariableExpression(var: !279)
!279 = distinct !DIGlobalVariable(name: "runlevline", scope: !280, file: !3, line: 515, type: !25, isLocal: true, isDefinition: true)
!280 = distinct !DISubprogram(name: "print_runlevel", scope: !3, file: !3, line: 513, type: !281, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !130}
!283 = !{!284, !285, !287}
!284 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !280, file: !3, line: 513, type: !130)
!285 = !DILocalVariable(name: "last", scope: !280, file: !3, line: 516, type: !286)
!286 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!287 = !DILocalVariable(name: "curr", scope: !280, file: !3, line: 517, type: !286)
!288 = !DIGlobalVariableExpression(var: !289)
!289 = distinct !DIGlobalVariable(name: "comment", scope: !280, file: !3, line: 515, type: !25, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291)
!291 = distinct !DIGlobalVariable(name: "exitstr", scope: !292, file: !3, line: 460, type: !25, isLocal: true, isDefinition: true)
!292 = distinct !DISubprogram(name: "print_deadprocs", scope: !3, file: !3, line: 458, type: !281, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !293)
!293 = !{!294, !295, !296}
!294 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !292, file: !3, line: 458, type: !130)
!295 = !DILocalVariable(name: "comment", scope: !292, file: !3, line: 461, type: !25)
!296 = !DILocalVariable(name: "pidstr", scope: !292, file: !3, line: 462, type: !220)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 4608, elements: !307)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !300, line: 50, size: 256, elements: !301)
!300 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!301 = !{!302, !303, !304, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 52, baseType: !68, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !299, file: !300, line: 55, baseType: !72, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !299, file: !300, line: 56, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !299, file: !300, line: 57, baseType: !72, size: 32, offset: 192)
!307 = !{!308}
!308 = !DISubrange(count: 18)
!309 = !DIGlobalVariableExpression(var: !310)
!310 = distinct !DIGlobalVariable(name: "Version", scope: !311, file: !312, line: 2, type: !68, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, globals: !314)
!312 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!313 = !{}
!314 = !{!309}
!315 = !DIGlobalVariableExpression(var: !316)
!316 = distinct !DIGlobalVariable(name: "last_cherror", scope: !317, file: !323, line: 28, type: !72, isLocal: true, isDefinition: true)
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, globals: !319)
!318 = !DIFile(filename: "./lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!319 = !{!320, !315}
!320 = !DIGlobalVariableExpression(var: !321)
!321 = distinct !DIGlobalVariable(name: "hints", scope: !322, file: !323, line: 63, type: !332, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "canon_host_r", scope: !323, file: !323, line: 60, type: !324, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !326)
!323 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!324 = !DISubroutineType(types: !325)
!325 = !{!25, !68, !305}
!326 = !{!327, !328, !329, !330, !357}
!327 = !DILocalVariable(name: "host", arg: 1, scope: !322, file: !323, line: 60, type: !68)
!328 = !DILocalVariable(name: "cherror", arg: 2, scope: !322, file: !323, line: 60, type: !305)
!329 = !DILocalVariable(name: "retval", scope: !322, file: !323, line: 62, type: !25)
!330 = !DILocalVariable(name: "res", scope: !322, file: !323, line: 64, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !333, line: 565, size: 384, elements: !334)
!333 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!334 = !{!335, !336, !337, !338, !339, !343, !355, !356}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !332, file: !333, line: 567, baseType: !72, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !332, file: !333, line: 568, baseType: !72, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !332, file: !333, line: 569, baseType: !72, size: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !332, file: !333, line: 570, baseType: !72, size: 32, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !332, file: !333, line: 571, baseType: !340, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !341, line: 33, baseType: !342)
!341 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !31, line: 198, baseType: !186)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !332, file: !333, line: 572, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !341, line: 174, size: 128, elements: !346)
!346 = !{!347, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !345, file: !341, line: 176, baseType: !348, size: 16)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !349, line: 28, baseType: !350)
!349 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!350 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !345, file: !341, line: 177, baseType: !352, size: 112, offset: 16)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 112, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 14)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !332, file: !333, line: 573, baseType: !25, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !332, file: !333, line: 574, baseType: !331, size: 64, offset: 320)
!357 = !DILocalVariable(name: "status", scope: !322, file: !323, line: 65, type: !72)
!358 = !DIGlobalVariableExpression(var: !359)
!359 = distinct !DIGlobalVariable(name: "file_name", scope: !360, file: !365, line: 36, type: !68, isLocal: true, isDefinition: true)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, globals: !362)
!361 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!362 = !{!358, !363}
!363 = !DIGlobalVariableExpression(var: !364)
!364 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !360, file: !365, line: 46, type: !37, isLocal: true, isDefinition: true)
!365 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!366 = !DIGlobalVariableExpression(var: !367)
!367 = distinct !DIGlobalVariable(name: "exit_failure", scope: !368, file: !371, line: 24, type: !372, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, globals: !370)
!369 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!370 = !{!366}
!371 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!372 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!373 = !DIGlobalVariableExpression(var: !374)
!374 = distinct !DIGlobalVariable(name: "program_name", scope: !375, file: !379, line: 33, type: !68, isLocal: false, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !377, globals: !378)
!376 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!377 = !{!27, !25}
!378 = !{!373}
!379 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!380 = !DIGlobalVariableExpression(var: !381)
!381 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !382, file: !409, line: 77, type: !439, isLocal: false, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !384, retainedTypes: !405, globals: !406)
!383 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!384 = !{!10, !385, !390}
!385 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !11, line: 242, size: 32, elements: !386)
!386 = !{!387, !388, !389}
!387 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!388 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!389 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 46, size: 32, elements: !392)
!391 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!393 = !DIEnumerator(name: "_ISupper", value: 256)
!394 = !DIEnumerator(name: "_ISlower", value: 512)
!395 = !DIEnumerator(name: "_ISalpha", value: 1024)
!396 = !DIEnumerator(name: "_ISdigit", value: 2048)
!397 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!398 = !DIEnumerator(name: "_ISspace", value: 8192)
!399 = !DIEnumerator(name: "_ISprint", value: 16384)
!400 = !DIEnumerator(name: "_ISgraph", value: 32768)
!401 = !DIEnumerator(name: "_ISblank", value: 1)
!402 = !DIEnumerator(name: "_IScntrl", value: 2)
!403 = !DIEnumerator(name: "_ISpunct", value: 4)
!404 = !DIEnumerator(name: "_ISalnum", value: 8)
!405 = !{!72, !350, !233, !25}
!406 = !{!380, !407, !414, !424, !426, !428, !435, !437}
!407 = !DIGlobalVariableExpression(var: !408)
!408 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !382, file: !409, line: 93, type: !410, isLocal: false, isDefinition: true)
!409 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 320, elements: !412)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!412 = !{!413}
!413 = !DISubrange(count: 10)
!414 = !DIGlobalVariableExpression(var: !415)
!415 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !382, file: !409, line: 1043, type: !416, isLocal: false, isDefinition: true)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !409, line: 57, size: 448, elements: !417)
!417 = !{!418, !419, !420, !422, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !416, file: !409, line: 60, baseType: !10, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !409, line: 63, baseType: !72, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !416, file: !409, line: 67, baseType: !421, size: 256, offset: 64)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 256, elements: !112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !416, file: !409, line: 70, baseType: !68, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !416, file: !409, line: 73, baseType: !68, size: 64, offset: 384)
!424 = !DIGlobalVariableExpression(var: !425)
!425 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !382, file: !409, line: 108, type: !416, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427)
!427 = distinct !DIGlobalVariable(name: "slot0", scope: !382, file: !409, line: 834, type: !149, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429)
!429 = distinct !DIGlobalVariable(name: "slotvec", scope: !382, file: !409, line: 837, type: !430, isLocal: true, isDefinition: true)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !409, line: 826, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !431, file: !409, line: 828, baseType: !233, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !431, file: !409, line: 829, baseType: !25, size: 64, offset: 64)
!435 = !DIGlobalVariableExpression(var: !436)
!436 = distinct !DIGlobalVariable(name: "nslots", scope: !382, file: !409, line: 835, type: !72, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438)
!438 = distinct !DIGlobalVariable(name: "slotvec0", scope: !382, file: !409, line: 836, type: !431, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 704, elements: !441)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!441 = !{!442}
!442 = !DISubrange(count: 11)
!443 = !DIGlobalVariableExpression(var: !444)
!444 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !445, file: !448, line: 26, type: !449, isLocal: false, isDefinition: true)
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, globals: !447)
!446 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!447 = !{!443}
!448 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 47)
!452 = !DIGlobalVariableExpression(var: !453)
!453 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !454, file: !798, line: 120, type: !799, isLocal: true, isDefinition: true)
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !456, retainedTypes: !795, globals: !797)
!455 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!456 = !{!457}
!457 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !458, line: 41, size: 32, elements: !459)
!458 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!460 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!461 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!462 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!463 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!464 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!465 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!466 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!467 = !DIEnumerator(name: "DAY_1", value: 131079)
!468 = !DIEnumerator(name: "DAY_2", value: 131080)
!469 = !DIEnumerator(name: "DAY_3", value: 131081)
!470 = !DIEnumerator(name: "DAY_4", value: 131082)
!471 = !DIEnumerator(name: "DAY_5", value: 131083)
!472 = !DIEnumerator(name: "DAY_6", value: 131084)
!473 = !DIEnumerator(name: "DAY_7", value: 131085)
!474 = !DIEnumerator(name: "ABMON_1", value: 131086)
!475 = !DIEnumerator(name: "ABMON_2", value: 131087)
!476 = !DIEnumerator(name: "ABMON_3", value: 131088)
!477 = !DIEnumerator(name: "ABMON_4", value: 131089)
!478 = !DIEnumerator(name: "ABMON_5", value: 131090)
!479 = !DIEnumerator(name: "ABMON_6", value: 131091)
!480 = !DIEnumerator(name: "ABMON_7", value: 131092)
!481 = !DIEnumerator(name: "ABMON_8", value: 131093)
!482 = !DIEnumerator(name: "ABMON_9", value: 131094)
!483 = !DIEnumerator(name: "ABMON_10", value: 131095)
!484 = !DIEnumerator(name: "ABMON_11", value: 131096)
!485 = !DIEnumerator(name: "ABMON_12", value: 131097)
!486 = !DIEnumerator(name: "MON_1", value: 131098)
!487 = !DIEnumerator(name: "MON_2", value: 131099)
!488 = !DIEnumerator(name: "MON_3", value: 131100)
!489 = !DIEnumerator(name: "MON_4", value: 131101)
!490 = !DIEnumerator(name: "MON_5", value: 131102)
!491 = !DIEnumerator(name: "MON_6", value: 131103)
!492 = !DIEnumerator(name: "MON_7", value: 131104)
!493 = !DIEnumerator(name: "MON_8", value: 131105)
!494 = !DIEnumerator(name: "MON_9", value: 131106)
!495 = !DIEnumerator(name: "MON_10", value: 131107)
!496 = !DIEnumerator(name: "MON_11", value: 131108)
!497 = !DIEnumerator(name: "MON_12", value: 131109)
!498 = !DIEnumerator(name: "AM_STR", value: 131110)
!499 = !DIEnumerator(name: "PM_STR", value: 131111)
!500 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!501 = !DIEnumerator(name: "D_FMT", value: 131113)
!502 = !DIEnumerator(name: "T_FMT", value: 131114)
!503 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!504 = !DIEnumerator(name: "ERA", value: 131116)
!505 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!506 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!507 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!508 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!509 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!510 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!511 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!512 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!513 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!514 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!515 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!516 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!517 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!518 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!519 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!520 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!521 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!522 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!523 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!524 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!525 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!526 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!527 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!528 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!529 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!530 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!531 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!532 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!533 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!534 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!535 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!536 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!537 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!538 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!539 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!540 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!541 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!542 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!543 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!544 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!545 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!546 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!547 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!548 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!549 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!550 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!551 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!552 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!553 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!554 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!555 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!556 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!557 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!558 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!559 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!560 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!561 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!562 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!563 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!564 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!565 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!566 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!567 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!568 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!569 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!570 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!571 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!572 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!573 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!574 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!575 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!576 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!577 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!578 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!579 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!580 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!581 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!582 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!583 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!584 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!585 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!586 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!587 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!588 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!589 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!590 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!591 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!592 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!593 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!594 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!595 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!596 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!597 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!598 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!599 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!600 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!601 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!602 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!603 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!604 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!605 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!606 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!607 = !DIEnumerator(name: "CODESET", value: 14)
!608 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!609 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!610 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!611 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!612 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!613 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!614 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!615 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!616 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!617 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!618 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!619 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!620 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!621 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!622 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!623 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!624 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!625 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!633 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!634 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!635 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!636 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!637 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!638 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!639 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!640 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!641 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!642 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!643 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!644 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!645 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!646 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!647 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!649 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!653 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!654 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!655 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!656 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!657 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!658 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!659 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!660 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!661 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!662 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!663 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!664 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!665 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!666 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!667 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!668 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!669 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!670 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!671 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!672 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!673 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!674 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!675 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!676 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!677 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!678 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!679 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!680 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!681 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!682 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!683 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!684 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!685 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!686 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!687 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!688 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!689 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!690 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!691 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!692 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!693 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!694 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!695 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!696 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!697 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!698 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!699 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!700 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!701 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!702 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!703 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!704 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!705 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!706 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!707 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!708 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!709 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!710 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!711 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!712 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!713 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!714 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!715 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!716 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!717 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!718 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!719 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!720 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!721 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!722 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!723 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!724 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!725 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!726 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!727 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!728 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!729 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!730 = !DIEnumerator(name: "THOUSEP", value: 65537)
!731 = !DIEnumerator(name: "__GROUPING", value: 65538)
!732 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!733 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!734 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!735 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!736 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!737 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!738 = !DIEnumerator(name: "__YESSTR", value: 327682)
!739 = !DIEnumerator(name: "__NOSTR", value: 327683)
!740 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!741 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!742 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!743 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!744 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!745 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!746 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!747 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!748 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!749 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!750 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!751 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!752 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!753 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!754 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!755 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!756 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!757 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!758 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!759 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!760 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!761 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!762 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!763 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!764 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!765 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!766 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!767 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!768 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!769 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!770 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!771 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!772 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!773 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!774 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!775 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!776 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!777 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!778 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!779 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!780 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!781 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!782 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!783 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!784 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!785 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!786 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!787 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!788 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!789 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!790 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!791 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!792 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!793 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!794 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!795 = !{!27, !25, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!797 = !{!452}
!798 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!799 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!800 = distinct !DICompileUnit(language: DW_LANG_C99, file: !801, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313)
!801 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!802 = distinct !DICompileUnit(language: DW_LANG_C99, file: !803, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !804)
!803 = !DIFile(filename: "./lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !806, line: 111, baseType: !807)
!806 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !31, line: 61, baseType: !32)
!808 = distinct !DICompileUnit(language: DW_LANG_C99, file: !809, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !810, retainedTypes: !815)
!809 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!810 = !{!811}
!811 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !812, line: 41, size: 32, elements: !813)
!812 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!813 = !{!814}
!814 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!815 = !{!27}
!816 = distinct !DICompileUnit(language: DW_LANG_C99, file: !817, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !818, retainedTypes: !832)
!817 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!818 = !{!819}
!819 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !821, file: !820, line: 192, size: 32, elements: !830)
!820 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!821 = distinct !DISubprogram(name: "x2nrealloc", scope: !820, file: !820, line: 180, type: !822, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !825)
!822 = !DISubroutineType(types: !823)
!823 = !{!27, !27, !824, !233}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!825 = !{!826, !827, !828, !829}
!826 = !DILocalVariable(name: "p", arg: 1, scope: !821, file: !820, line: 180, type: !27)
!827 = !DILocalVariable(name: "pn", arg: 2, scope: !821, file: !820, line: 180, type: !824)
!828 = !DILocalVariable(name: "s", arg: 3, scope: !821, file: !820, line: 180, type: !233)
!829 = !DILocalVariable(name: "n", scope: !821, file: !820, line: 182, type: !233)
!830 = !{!831}
!831 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!832 = !{!233, !25, !27}
!833 = distinct !DICompileUnit(language: DW_LANG_C99, file: !834, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313)
!834 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!835 = distinct !DICompileUnit(language: DW_LANG_C99, file: !836, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !815)
!836 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!837 = distinct !DICompileUnit(language: DW_LANG_C99, file: !838, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !839)
!838 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!839 = !{!233}
!840 = distinct !DICompileUnit(language: DW_LANG_C99, file: !841, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !842, retainedTypes: !850)
!841 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!842 = !{!5, !843}
!843 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !844, file: !820, line: 192, size: 32, elements: !830)
!844 = distinct !DISubprogram(name: "x2nrealloc", scope: !820, file: !820, line: 180, type: !822, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !840, variables: !845)
!845 = !{!846, !847, !848, !849}
!846 = !DILocalVariable(name: "p", arg: 1, scope: !844, file: !820, line: 180, type: !27)
!847 = !DILocalVariable(name: "pn", arg: 2, scope: !844, file: !820, line: 180, type: !824)
!848 = !DILocalVariable(name: "s", arg: 3, scope: !844, file: !820, line: 180, type: !233)
!849 = !DILocalVariable(name: "n", scope: !844, file: !820, line: 182, type: !233)
!850 = !{!25, !27}
!851 = distinct !DICompileUnit(language: DW_LANG_C99, file: !852, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313)
!852 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!853 = distinct !DICompileUnit(language: DW_LANG_C99, file: !854, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313)
!854 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!855 = distinct !DICompileUnit(language: DW_LANG_C99, file: !856, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !815)
!856 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!857 = distinct !DICompileUnit(language: DW_LANG_C99, file: !858, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !815)
!858 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!859 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!860 = !{i32 2, !"Dwarf Version", i32 4}
!861 = !{i32 2, !"Debug Info Version", i32 3}
!862 = !{i32 1, !"wchar_size", i32 4}
!863 = !{i32 7, !"PIC Level", i32 2}
!864 = !{i32 7, !"PIE Level", i32 2}
!865 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 637, type: !866, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !72}
!868 = !{!869}
!869 = !DILocalVariable(name: "status", arg: 1, scope: !865, file: !3, line: 637, type: !72)
!870 = !DIExpression()
!871 = !DILocation(line: 637, column: 12, scope: !865)
!872 = !DILocation(line: 639, column: 14, scope: !873)
!873 = distinct !DILexicalBlock(scope: !865, file: !3, line: 639, column: 7)
!874 = !DILocation(line: 639, column: 7, scope: !865)
!875 = !DILocation(line: 640, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 640, column: 5)
!877 = !{!878, !878, i64 0}
!878 = !{!"any pointer", !879, i64 0}
!879 = !{!"omnipotent char", !880, i64 0}
!880 = !{!"Simple C/C++ TBAA"}
!881 = !DILocation(line: 643, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !873, file: !3, line: 642, column: 5)
!883 = !DILocation(line: 644, column: 7, scope: !882)
!884 = !DILocation(line: 647, column: 7, scope: !882)
!885 = !DILocation(line: 654, column: 7, scope: !882)
!886 = !DILocation(line: 657, column: 7, scope: !882)
!887 = !DILocation(line: 662, column: 7, scope: !882)
!888 = !DILocation(line: 668, column: 7, scope: !882)
!889 = !DILocation(line: 674, column: 7, scope: !882)
!890 = !DILocation(line: 675, column: 7, scope: !882)
!891 = !DILocation(line: 676, column: 7, scope: !882)
!892 = !DILocation(line: 642, column: 15, scope: !75, inlinedAt: !893)
!893 = distinct !DILocation(line: 681, column: 7, scope: !882)
!894 = !DILocation(line: 651, column: 3, scope: !75, inlinedAt: !893)
!895 = !DILocation(line: 655, column: 29, scope: !75, inlinedAt: !893)
!896 = !DILocation(line: 655, column: 15, scope: !75, inlinedAt: !893)
!897 = !DILocation(line: 656, column: 7, scope: !898, inlinedAt: !893)
!898 = distinct !DILexicalBlock(scope: !75, file: !76, line: 656, column: 7)
!899 = !DILocation(line: 656, column: 19, scope: !898, inlinedAt: !893)
!900 = !DILocation(line: 656, column: 22, scope: !898, inlinedAt: !893)
!901 = !DILocation(line: 656, column: 7, scope: !75, inlinedAt: !893)
!902 = !DILocation(line: 662, column: 7, scope: !903, inlinedAt: !893)
!903 = distinct !DILexicalBlock(scope: !898, file: !76, line: 657, column: 5)
!904 = !DILocation(line: 664, column: 5, scope: !903, inlinedAt: !893)
!905 = !DILocation(line: 665, column: 3, scope: !75, inlinedAt: !893)
!906 = !DILocation(line: 667, column: 3, scope: !75, inlinedAt: !893)
!907 = !DILocation(line: 683, column: 3, scope: !865)
!908 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 687, type: !909, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !912)
!909 = !DISubroutineType(types: !910)
!910 = !{!72, !72, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!912 = !{!913, !914, !915, !916}
!913 = !DILocalVariable(name: "argc", arg: 1, scope: !908, file: !3, line: 687, type: !72)
!914 = !DILocalVariable(name: "argv", arg: 2, scope: !908, file: !3, line: 687, type: !911)
!915 = !DILocalVariable(name: "optc", scope: !908, file: !3, line: 689, type: !72)
!916 = !DILocalVariable(name: "assumptions", scope: !908, file: !3, line: 690, type: !37)
!917 = !DILocation(line: 687, column: 11, scope: !908)
!918 = !DILocation(line: 687, column: 24, scope: !908)
!919 = !DILocation(line: 690, column: 8, scope: !908)
!920 = !DILocation(line: 693, column: 21, scope: !908)
!921 = !DILocation(line: 693, column: 3, scope: !908)
!922 = !DILocation(line: 694, column: 3, scope: !908)
!923 = !DILocation(line: 695, column: 3, scope: !908)
!924 = !DILocation(line: 696, column: 3, scope: !908)
!925 = !DILocation(line: 698, column: 3, scope: !908)
!926 = !DILocation(line: 700, column: 3, scope: !908)
!927 = !DILocation(line: 700, column: 18, scope: !908)
!928 = !DILocation(line: 689, column: 7, scope: !908)
!929 = !DILocation(line: 717, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 704, column: 9)
!931 = distinct !DILexicalBlock(scope: !908, file: !3, line: 702, column: 5)
!932 = !DILocation(line: 729, column: 11, scope: !930)
!933 = !DILocation(line: 733, column: 11, scope: !930)
!934 = !DILocation(line: 739, column: 11, scope: !930)
!935 = !DILocation(line: 743, column: 11, scope: !930)
!936 = !DILocation(line: 748, column: 11, scope: !930)
!937 = !DILocation(line: 752, column: 11, scope: !930)
!938 = !DILocation(line: 758, column: 11, scope: !930)
!939 = !DILocation(line: 762, column: 11, scope: !930)
!940 = !DILocation(line: 767, column: 11, scope: !930)
!941 = !DILocation(line: 772, column: 11, scope: !930)
!942 = !DILocation(line: 778, column: 11, scope: !930)
!943 = !DILocation(line: 782, column: 11, scope: !930)
!944 = !DILocation(line: 784, column: 9, scope: !930)
!945 = !DILocation(line: 786, column: 9, scope: !930)
!946 = !DILocation(line: 789, column: 11, scope: !930)
!947 = distinct !{!947, !926, !948}
!948 = !DILocation(line: 791, column: 5, scope: !908)
!949 = !DILocation(line: 793, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !908, file: !3, line: 793, column: 7)
!951 = !DILocation(line: 793, column: 7, scope: !908)
!952 = !DILocation(line: 797, column: 5, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !3, line: 794, column: 5)
!954 = !DILocation(line: 799, column: 7, scope: !908)
!955 = !DILocation(line: 802, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 800, column: 5)
!957 = distinct !DILexicalBlock(scope: !908, file: !3, line: 799, column: 7)
!958 = !DILocation(line: 804, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !908, file: !3, line: 804, column: 7)
!960 = !DILocation(line: 804, column: 7, scope: !908)
!961 = !{!962, !962, i64 0}
!962 = !{!"int", !879, i64 0}
!963 = !DILocation(line: 815, column: 18, scope: !908)
!964 = !DILocation(line: 815, column: 16, scope: !908)
!965 = !DILocation(line: 815, column: 3, scope: !908)
!966 = !DILocation(line: 818, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !908, file: !3, line: 816, column: 5)
!968 = !DILocation(line: 822, column: 7, scope: !967)
!969 = !DILocation(line: 823, column: 7, scope: !967)
!970 = !DILocation(line: 826, column: 12, scope: !967)
!971 = !DILocation(line: 826, column: 7, scope: !967)
!972 = !DILocation(line: 827, column: 7, scope: !967)
!973 = !DILocation(line: 830, column: 20, scope: !967)
!974 = !DILocation(line: 830, column: 55, scope: !967)
!975 = !DILocation(line: 830, column: 62, scope: !967)
!976 = !DILocation(line: 830, column: 50, scope: !967)
!977 = !DILocation(line: 830, column: 43, scope: !967)
!978 = !DILocation(line: 830, column: 7, scope: !967)
!979 = !DILocation(line: 831, column: 7, scope: !967)
!980 = !DILocation(line: 834, column: 3, scope: !908)
!981 = distinct !DISubprogram(name: "who", scope: !3, file: !3, line: 620, type: !982, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !68, !72}
!984 = !{!985, !986, !987, !988}
!985 = !DILocalVariable(name: "filename", arg: 1, scope: !981, file: !3, line: 620, type: !68)
!986 = !DILocalVariable(name: "options", arg: 2, scope: !981, file: !3, line: 620, type: !72)
!987 = !DILocalVariable(name: "n_users", scope: !981, file: !3, line: 622, type: !233)
!988 = !DILocalVariable(name: "utmp_buf", scope: !981, file: !3, line: 623, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!990 = !DILocation(line: 338, column: 8, scope: !127, inlinedAt: !991)
!991 = distinct !DILocation(line: 592, column: 13, scope: !992, inlinedAt: !1004)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 591, column: 15)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 590, column: 9)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 587, column: 11)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 586, column: 5)
!996 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 568, type: !997, isLocal: true, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !233, !130}
!999 = !{!1000, !1001, !1002, !1003}
!1000 = !DILocalVariable(name: "n", arg: 1, scope: !996, file: !3, line: 568, type: !233)
!1001 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !996, file: !3, line: 568, type: !130)
!1002 = !DILocalVariable(name: "ttyname_b", scope: !996, file: !3, line: 570, type: !25)
!1003 = !DILocalVariable(name: "boottime", scope: !996, file: !3, line: 571, type: !28)
!1004 = distinct !DILocation(line: 631, column: 5, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !981, file: !3, line: 628, column: 7)
!1006 = !DILocation(line: 347, column: 8, scope: !127, inlinedAt: !991)
!1007 = !DILocation(line: 349, column: 3, scope: !127, inlinedAt: !991)
!1008 = !DILocation(line: 377, column: 12, scope: !224, inlinedAt: !991)
!1009 = !DILocation(line: 620, column: 18, scope: !981)
!1010 = !DILocation(line: 620, column: 32, scope: !981)
!1011 = !DILocation(line: 622, column: 3, scope: !981)
!1012 = !DILocation(line: 623, column: 3, scope: !981)
!1013 = !DILocation(line: 622, column: 10, scope: !981)
!1014 = !DILocation(line: 623, column: 16, scope: !981)
!1015 = !DILocation(line: 625, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !981, file: !3, line: 625, column: 7)
!1017 = !DILocation(line: 625, column: 58, scope: !1016)
!1018 = !DILocation(line: 625, column: 7, scope: !981)
!1019 = !DILocation(line: 626, column: 5, scope: !1016)
!1020 = !{!1021, !1021, i64 0}
!1021 = !{!"long", !879, i64 0}
!1022 = !DILocation(line: 628, column: 7, scope: !981)
!1023 = !DILocalVariable(name: "n", arg: 1, scope: !1024, file: !3, line: 536, type: !233)
!1024 = distinct !DISubprogram(name: "list_entries_who", scope: !3, file: !3, line: 536, type: !997, isLocal: true, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1025)
!1025 = !{!1023, !1026, !1027, !1028, !1029}
!1026 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1024, file: !3, line: 536, type: !130)
!1027 = !DILocalVariable(name: "entries", scope: !1024, file: !3, line: 538, type: !179)
!1028 = !DILocalVariable(name: "separator", scope: !1024, file: !3, line: 539, type: !68)
!1029 = !DILocalVariable(name: "trimmed_name", scope: !1030, file: !3, line: 545, type: !25)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 544, column: 9)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 543, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 542, column: 5)
!1033 = !DILocation(line: 536, column: 26, scope: !1024, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 629, column: 5, scope: !1005)
!1035 = !DILocation(line: 536, column: 48, scope: !1024, inlinedAt: !1034)
!1036 = !DILocation(line: 538, column: 21, scope: !1024, inlinedAt: !1034)
!1037 = !DILocation(line: 539, column: 15, scope: !1024, inlinedAt: !1034)
!1038 = !DILocation(line: 541, column: 3, scope: !1024, inlinedAt: !1034)
!1039 = !DILocation(line: 541, column: 11, scope: !1024, inlinedAt: !1034)
!1040 = !DILocation(line: 543, column: 11, scope: !1031, inlinedAt: !1034)
!1041 = !{!879, !879, i64 0}
!1042 = !{!1043, !1044, i64 0}
!1043 = !{!"utmpx", !1044, i64 0, !962, i64 4, !879, i64 8, !879, i64 40, !879, i64 44, !879, i64 76, !1045, i64 332, !962, i64 336, !1046, i64 340, !879, i64 348, !879, i64 364}
!1044 = !{!"short", !879, i64 0}
!1045 = !{!"__exit_status", !1044, i64 0, !1044, i64 2}
!1046 = !{!"", !962, i64 0, !962, i64 4}
!1047 = !DILocation(line: 543, column: 11, scope: !1032, inlinedAt: !1034)
!1048 = !DILocation(line: 547, column: 26, scope: !1030, inlinedAt: !1034)
!1049 = !DILocation(line: 545, column: 17, scope: !1030, inlinedAt: !1034)
!1050 = !DILocation(line: 549, column: 11, scope: !1030, inlinedAt: !1034)
!1051 = !DILocation(line: 550, column: 11, scope: !1030, inlinedAt: !1034)
!1052 = !DILocation(line: 552, column: 18, scope: !1030, inlinedAt: !1034)
!1053 = !DILocation(line: 553, column: 9, scope: !1030, inlinedAt: !1034)
!1054 = !DILocation(line: 554, column: 15, scope: !1032, inlinedAt: !1034)
!1055 = distinct !{!1055, !1056, !1057}
!1056 = !DILocation(line: 541, column: 3, scope: !1024)
!1057 = !DILocation(line: 555, column: 5, scope: !1024)
!1058 = !DILocation(line: 556, column: 3, scope: !1024, inlinedAt: !1034)
!1059 = !DILocation(line: 629, column: 5, scope: !1005)
!1060 = !DILocation(line: 462, column: 3, scope: !292, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 607, column: 13, scope: !1062, inlinedAt: !1004)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 606, column: 20)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 604, column: 20)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 602, column: 20)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 600, column: 20)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 595, column: 20)
!1067 = distinct !DILexicalBlock(scope: !992, file: !3, line: 593, column: 20)
!1068 = !DILocalVariable(name: "pidstr", scope: !1069, file: !3, line: 484, type: !220)
!1069 = distinct !DISubprogram(name: "print_login", scope: !3, file: !3, line: 481, type: !281, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1070)
!1070 = !{!1071, !1072, !1068}
!1071 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1069, file: !3, line: 481, type: !130)
!1072 = !DILocalVariable(name: "comment", scope: !1069, file: !3, line: 483, type: !25)
!1073 = !DILocation(line: 484, column: 3, scope: !1069, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 605, column: 13, scope: !1063, inlinedAt: !1004)
!1075 = !DILocalVariable(name: "pidstr", scope: !1076, file: !3, line: 497, type: !220)
!1076 = distinct !DISubprogram(name: "print_initspawn", scope: !3, file: !3, line: 494, type: !281, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1077)
!1077 = !{!1078, !1079, !1075}
!1078 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1076, file: !3, line: 494, type: !130)
!1079 = !DILocalVariable(name: "comment", scope: !1076, file: !3, line: 496, type: !25)
!1080 = !DILocation(line: 497, column: 3, scope: !1076, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 603, column: 13, scope: !1064, inlinedAt: !1004)
!1082 = !DILocation(line: 568, column: 22, scope: !996, inlinedAt: !1004)
!1083 = !DILocation(line: 568, column: 44, scope: !996, inlinedAt: !1004)
!1084 = !DILocation(line: 571, column: 10, scope: !996, inlinedAt: !1004)
!1085 = !DILocation(line: 573, column: 7, scope: !996, inlinedAt: !1004)
!1086 = !DILocation(line: 562, column: 19, scope: !1087, inlinedAt: !1090)
!1087 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 560, type: !1088, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !313)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null}
!1090 = distinct !DILocation(line: 574, column: 5, scope: !1091, inlinedAt: !1004)
!1091 = distinct !DILexicalBlock(scope: !996, file: !3, line: 573, column: 7)
!1092 = !DILocation(line: 562, column: 39, scope: !1087, inlinedAt: !1090)
!1093 = !DILocation(line: 562, column: 50, scope: !1087, inlinedAt: !1090)
!1094 = !DILocation(line: 562, column: 61, scope: !1087, inlinedAt: !1090)
!1095 = !DILocation(line: 563, column: 15, scope: !1087, inlinedAt: !1090)
!1096 = !DILocation(line: 563, column: 25, scope: !1087, inlinedAt: !1090)
!1097 = !DILocation(line: 563, column: 39, scope: !1087, inlinedAt: !1090)
!1098 = !DILocation(line: 562, column: 3, scope: !1087, inlinedAt: !1090)
!1099 = !DILocation(line: 574, column: 5, scope: !1091, inlinedAt: !1004)
!1100 = !DILocation(line: 576, column: 7, scope: !996, inlinedAt: !1004)
!1101 = !DILocation(line: 578, column: 19, scope: !1102, inlinedAt: !1004)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 577, column: 5)
!1103 = distinct !DILexicalBlock(scope: !996, file: !3, line: 576, column: 7)
!1104 = !DILocation(line: 570, column: 9, scope: !996, inlinedAt: !1004)
!1105 = !DILocation(line: 579, column: 12, scope: !1106, inlinedAt: !1004)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 579, column: 11)
!1107 = !DILocation(line: 579, column: 11, scope: !1102, inlinedAt: !1004)
!1108 = !DILocation(line: 581, column: 11, scope: !1109, inlinedAt: !1004)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 581, column: 11)
!1110 = !DILocation(line: 581, column: 64, scope: !1109, inlinedAt: !1004)
!1111 = !DILocation(line: 582, column: 19, scope: !1109, inlinedAt: !1004)
!1112 = !DILocation(line: 581, column: 11, scope: !1102, inlinedAt: !1004)
!1113 = !DILocation(line: 585, column: 3, scope: !996, inlinedAt: !1004)
!1114 = !DILocation(line: 585, column: 11, scope: !996, inlinedAt: !1004)
!1115 = !DILocation(line: 588, column: 11, scope: !994, inlinedAt: !1004)
!1116 = !DILocation(line: 588, column: 14, scope: !994, inlinedAt: !1004)
!1117 = !DILocation(line: 587, column: 11, scope: !995, inlinedAt: !1004)
!1118 = !DILocation(line: 591, column: 26, scope: !992, inlinedAt: !1004)
!1119 = !DILocation(line: 591, column: 29, scope: !992, inlinedAt: !1004)
!1120 = !DILocation(line: 591, column: 15, scope: !993, inlinedAt: !1004)
!1121 = !DILocation(line: 333, column: 32, scope: !127, inlinedAt: !991)
!1122 = !DILocation(line: 333, column: 49, scope: !127, inlinedAt: !991)
!1123 = !DILocation(line: 335, column: 3, scope: !127, inlinedAt: !991)
!1124 = !DILocation(line: 338, column: 3, scope: !127, inlinedAt: !991)
!1125 = !DILocation(line: 347, column: 3, scope: !127, inlinedAt: !991)
!1126 = !DILocation(line: 348, column: 9, scope: !127, inlinedAt: !991)
!1127 = !{!1043, !962, i64 4}
!1128 = !DILocation(line: 354, column: 10, scope: !1129, inlinedAt: !991)
!1129 = distinct !DILexicalBlock(scope: !127, file: !3, line: 354, column: 8)
!1130 = !DILocation(line: 354, column: 8, scope: !127, inlinedAt: !991)
!1131 = !DILocation(line: 355, column: 9, scope: !1129, inlinedAt: !991)
!1132 = !DILocalVariable(name: "src_end", scope: !1133, file: !76, line: 739, type: !68)
!1133 = distinct !DISubprogram(name: "stzncpy", scope: !76, file: !76, line: 737, type: !1134, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1138)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!25, !1136, !1137, !233}
!1136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!1137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!1138 = !{!1139, !1140, !1141, !1132}
!1139 = !DILocalVariable(name: "dest", arg: 1, scope: !1133, file: !76, line: 737, type: !1136)
!1140 = !DILocalVariable(name: "src", arg: 2, scope: !1133, file: !76, line: 737, type: !1137)
!1141 = !DILocalVariable(name: "len", arg: 3, scope: !1133, file: !76, line: 737, type: !233)
!1142 = !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)
!1143 = !DILocation(line: 739, column: 15, scope: !1133, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 356, column: 3, scope: !127, inlinedAt: !991)
!1145 = !DILocation(line: 737, column: 25, scope: !1133, inlinedAt: !1144)
!1146 = !DILocation(line: 737, column: 52, scope: !1133, inlinedAt: !1144)
!1147 = !DILocation(line: 740, column: 24, scope: !1133, inlinedAt: !1144)
!1148 = !DILocation(line: 740, column: 3, scope: !1133, inlinedAt: !1144)
!1149 = !DILocation(line: 739, column: 29, scope: !1133, inlinedAt: !1144)
!1150 = !DILocation(line: 741, column: 19, scope: !1133, inlinedAt: !1144)
!1151 = !DILocation(line: 741, column: 10, scope: !1133, inlinedAt: !1144)
!1152 = !DILocation(line: 741, column: 13, scope: !1133, inlinedAt: !1144)
!1153 = !{!1154}
!1154 = distinct !{!1154, !1155, !"stzncpy: argument 0"}
!1155 = distinct !{!1155, !"stzncpy"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1155, !"stzncpy: argument 1"}
!1158 = !DILocation(line: 740, column: 14, scope: !1133, inlinedAt: !1144)
!1159 = distinct !{!1159, !1160, !1161}
!1160 = !DILocation(line: 740, column: 3, scope: !1133)
!1161 = !DILocation(line: 741, column: 19, scope: !1133)
!1162 = !DILocation(line: 740, column: 27, scope: !1133, inlinedAt: !1144)
!1163 = !DILocation(line: 742, column: 9, scope: !1133, inlinedAt: !1144)
!1164 = !DILocation(line: 335, column: 15, scope: !127, inlinedAt: !991)
!1165 = !DILocalVariable(name: "__path", arg: 1, scope: !1166, file: !1167, line: 449, type: !68)
!1166 = distinct !DISubprogram(name: "stat", scope: !1167, file: !1167, line: 449, type: !1168, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1171)
!1167 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!72, !68, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1171 = !{!1165, !1172}
!1172 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1166, file: !1167, line: 449, type: !1170)
!1173 = !DILocation(line: 449, column: 1, scope: !1166, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 358, column: 7, scope: !1175, inlinedAt: !991)
!1175 = distinct !DILexicalBlock(scope: !127, file: !3, line: 358, column: 7)
!1176 = !DILocation(line: 451, column: 10, scope: !1166, inlinedAt: !1174)
!1177 = !DILocation(line: 358, column: 27, scope: !1175, inlinedAt: !991)
!1178 = !DILocation(line: 358, column: 7, scope: !127, inlinedAt: !991)
!1179 = !DILocalVariable(name: "pstat", arg: 1, scope: !1180, file: !3, line: 317, type: !1183)
!1180 = distinct !DISubprogram(name: "is_tty_writable", scope: !3, file: !3, line: 317, type: !1181, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1185)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!37, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!1185 = !{!1179}
!1186 = !DILocation(line: 317, column: 37, scope: !1180, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 360, column: 14, scope: !1188, inlinedAt: !991)
!1188 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 359, column: 5)
!1189 = !DILocation(line: 327, column: 17, scope: !1180, inlinedAt: !1187)
!1190 = !{!1191, !962, i64 24}
!1191 = !{!"stat", !1021, i64 0, !1021, i64 8, !1021, i64 16, !962, i64 24, !962, i64 28, !962, i64 32, !962, i64 36, !1021, i64 40, !1021, i64 48, !1021, i64 56, !1021, i64 64, !1192, i64 72, !1192, i64 88, !1192, i64 104, !879, i64 120}
!1192 = !{!"timespec", !1021, i64 0, !1021, i64 8}
!1193 = !DILocation(line: 360, column: 14, scope: !1188, inlinedAt: !991)
!1194 = !DILocation(line: 337, column: 8, scope: !127, inlinedAt: !991)
!1195 = !DILocation(line: 361, column: 27, scope: !1188, inlinedAt: !991)
!1196 = !{!1191, !1021, i64 72}
!1197 = !DILocation(line: 336, column: 10, scope: !127, inlinedAt: !991)
!1198 = !DILocation(line: 369, column: 7, scope: !1199, inlinedAt: !991)
!1199 = distinct !DILexicalBlock(scope: !127, file: !3, line: 369, column: 7)
!1200 = !DILocation(line: 369, column: 7, scope: !127, inlinedAt: !991)
!1201 = !DILocation(line: 188, column: 21, scope: !237, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 370, column: 5, scope: !1199, inlinedAt: !991)
!1203 = !DILocation(line: 188, column: 34, scope: !237, inlinedAt: !1202)
!1204 = !DILocation(line: 192, column: 7, scope: !1205, inlinedAt: !1202)
!1205 = distinct !DILexicalBlock(scope: !237, file: !3, line: 192, column: 7)
!1206 = !DILocation(line: 192, column: 11, scope: !1205, inlinedAt: !1202)
!1207 = !DILocation(line: 192, column: 7, scope: !237, inlinedAt: !1202)
!1208 = !DILocation(line: 193, column: 5, scope: !1205, inlinedAt: !1202)
!1209 = !DILocation(line: 195, column: 16, scope: !245, inlinedAt: !1202)
!1210 = !DILocation(line: 195, column: 23, scope: !245, inlinedAt: !1202)
!1211 = !DILocation(line: 195, column: 26, scope: !245, inlinedAt: !1202)
!1212 = !DILocation(line: 195, column: 30, scope: !245, inlinedAt: !1202)
!1213 = !DILocation(line: 195, column: 45, scope: !245, inlinedAt: !1202)
!1214 = !DILocation(line: 195, column: 60, scope: !245, inlinedAt: !1202)
!1215 = !DILocation(line: 195, column: 52, scope: !245, inlinedAt: !1202)
!1216 = !DILocation(line: 197, column: 30, scope: !244, inlinedAt: !1202)
!1217 = !DILocation(line: 197, column: 26, scope: !244, inlinedAt: !1202)
!1218 = !DILocation(line: 197, column: 11, scope: !244, inlinedAt: !1202)
!1219 = !DILocation(line: 198, column: 24, scope: !1220, inlinedAt: !1202)
!1220 = distinct !DILexicalBlock(scope: !244, file: !3, line: 198, column: 11)
!1221 = !DILocation(line: 198, column: 11, scope: !244, inlinedAt: !1202)
!1222 = !DILocation(line: 205, column: 11, scope: !1223, inlinedAt: !1202)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 205, column: 11)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 205, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 201, column: 9)
!1226 = !DILocation(line: 205, column: 11, scope: !1224, inlinedAt: !1202)
!1227 = !DILocation(line: 206, column: 11, scope: !1225, inlinedAt: !1202)
!1228 = !DILocation(line: 209, column: 11, scope: !1225, inlinedAt: !1202)
!1229 = !DILocation(line: 213, column: 10, scope: !237, inlinedAt: !1202)
!1230 = !DILocation(line: 213, column: 3, scope: !237, inlinedAt: !1202)
!1231 = !DILocation(line: 370, column: 5, scope: !1199, inlinedAt: !991)
!1232 = !DILocation(line: 372, column: 5, scope: !1199, inlinedAt: !991)
!1233 = !DILocation(line: 375, column: 7, scope: !225, inlinedAt: !991)
!1234 = !DILocation(line: 375, column: 7, scope: !127, inlinedAt: !991)
!1235 = !DILocation(line: 377, column: 7, scope: !224, inlinedAt: !991)
!1236 = !DILocation(line: 378, column: 13, scope: !224, inlinedAt: !991)
!1237 = !DILocation(line: 379, column: 13, scope: !224, inlinedAt: !991)
!1238 = !DILocation(line: 739, column: 29, scope: !1133, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 382, column: 7, scope: !224, inlinedAt: !991)
!1240 = !DILocation(line: 739, column: 15, scope: !1133, inlinedAt: !1239)
!1241 = !DILocation(line: 737, column: 25, scope: !1133, inlinedAt: !1239)
!1242 = !DILocation(line: 737, column: 52, scope: !1133, inlinedAt: !1239)
!1243 = !DILocation(line: 740, column: 3, scope: !1133, inlinedAt: !1239)
!1244 = !DILocation(line: 741, column: 19, scope: !1133, inlinedAt: !1239)
!1245 = !DILocation(line: 741, column: 10, scope: !1133, inlinedAt: !1239)
!1246 = !DILocation(line: 741, column: 13, scope: !1133, inlinedAt: !1239)
!1247 = !{!1248}
!1248 = distinct !{!1248, !1249, !"stzncpy: argument 0"}
!1249 = distinct !{!1249, !"stzncpy"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1249, !"stzncpy: argument 1"}
!1252 = !DILocation(line: 740, column: 14, scope: !1133, inlinedAt: !1239)
!1253 = !DILocation(line: 740, column: 24, scope: !1133, inlinedAt: !1239)
!1254 = !DILocation(line: 740, column: 27, scope: !1133, inlinedAt: !1239)
!1255 = !DILocation(line: 742, column: 9, scope: !1133, inlinedAt: !1239)
!1256 = !DILocation(line: 385, column: 17, scope: !224, inlinedAt: !991)
!1257 = !DILocation(line: 386, column: 11, scope: !1258, inlinedAt: !991)
!1258 = distinct !DILexicalBlock(scope: !224, file: !3, line: 386, column: 11)
!1259 = !DILocation(line: 386, column: 11, scope: !224, inlinedAt: !991)
!1260 = !DILocation(line: 387, column: 17, scope: !1258, inlinedAt: !991)
!1261 = !DILocation(line: 387, column: 20, scope: !1258, inlinedAt: !991)
!1262 = !DILocation(line: 387, column: 9, scope: !1258, inlinedAt: !991)
!1263 = !DILocation(line: 389, column: 11, scope: !1264, inlinedAt: !991)
!1264 = distinct !DILexicalBlock(scope: !224, file: !3, line: 389, column: 11)
!1265 = !DILocation(line: 389, column: 20, scope: !1264, inlinedAt: !991)
!1266 = !DILocation(line: 389, column: 11, scope: !224, inlinedAt: !991)
!1267 = !DILocation(line: 392, column: 18, scope: !1268, inlinedAt: !991)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 390, column: 9)
!1269 = !DILocation(line: 393, column: 9, scope: !1268, inlinedAt: !991)
!1270 = !DILocation(line: 395, column: 13, scope: !1271, inlinedAt: !991)
!1271 = distinct !DILexicalBlock(scope: !224, file: !3, line: 395, column: 11)
!1272 = !DILocation(line: 395, column: 11, scope: !224, inlinedAt: !991)
!1273 = !DILocation(line: 398, column: 11, scope: !1274, inlinedAt: !991)
!1274 = distinct !DILexicalBlock(scope: !224, file: !3, line: 398, column: 11)
!1275 = !DILocation(line: 400, column: 25, scope: !1276, inlinedAt: !991)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 400, column: 15)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 399, column: 9)
!1278 = !DILocation(line: 398, column: 11, scope: !224, inlinedAt: !991)
!1279 = !DILocation(line: 400, column: 41, scope: !1276, inlinedAt: !991)
!1280 = !DILocation(line: 400, column: 39, scope: !1276, inlinedAt: !991)
!1281 = !DILocation(line: 400, column: 58, scope: !1276, inlinedAt: !991)
!1282 = !DILocation(line: 400, column: 23, scope: !1276, inlinedAt: !991)
!1283 = !DILocation(line: 400, column: 15, scope: !1277, inlinedAt: !991)
!1284 = !DILocation(line: 406, column: 11, scope: !1277, inlinedAt: !991)
!1285 = !DILocation(line: 402, column: 23, scope: !1286, inlinedAt: !991)
!1286 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 401, column: 13)
!1287 = !DILocation(line: 403, column: 21, scope: !1286, inlinedAt: !991)
!1288 = !DILocation(line: 403, column: 15, scope: !1286, inlinedAt: !991)
!1289 = !DILocation(line: 404, column: 34, scope: !1286, inlinedAt: !991)
!1290 = !DILocation(line: 404, column: 25, scope: !1286, inlinedAt: !991)
!1291 = !DILocation(line: 404, column: 23, scope: !1286, inlinedAt: !991)
!1292 = !DILocation(line: 405, column: 13, scope: !1286, inlinedAt: !991)
!1293 = !DILocation(line: 407, column: 9, scope: !1277, inlinedAt: !991)
!1294 = !DILocation(line: 410, column: 39, scope: !1295, inlinedAt: !991)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 410, column: 15)
!1296 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 409, column: 9)
!1297 = !DILocation(line: 410, column: 23, scope: !1295, inlinedAt: !991)
!1298 = !DILocation(line: 410, column: 15, scope: !1296, inlinedAt: !991)
!1299 = !DILocation(line: 416, column: 11, scope: !1296, inlinedAt: !991)
!1300 = !DILocation(line: 412, column: 23, scope: !1301, inlinedAt: !991)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 411, column: 13)
!1302 = !DILocation(line: 413, column: 21, scope: !1301, inlinedAt: !991)
!1303 = !DILocation(line: 413, column: 15, scope: !1301, inlinedAt: !991)
!1304 = !DILocation(line: 414, column: 34, scope: !1301, inlinedAt: !991)
!1305 = !DILocation(line: 414, column: 25, scope: !1301, inlinedAt: !991)
!1306 = !DILocation(line: 414, column: 23, scope: !1301, inlinedAt: !991)
!1307 = !DILocation(line: 415, column: 13, scope: !1301, inlinedAt: !991)
!1308 = !DILocation(line: 419, column: 16, scope: !1309, inlinedAt: !991)
!1309 = distinct !DILexicalBlock(scope: !224, file: !3, line: 419, column: 11)
!1310 = !DILocation(line: 419, column: 11, scope: !224, inlinedAt: !991)
!1311 = !DILocation(line: 420, column: 9, scope: !1309, inlinedAt: !991)
!1312 = !DILocation(line: 421, column: 5, scope: !225, inlinedAt: !991)
!1313 = !DILocation(line: 421, column: 5, scope: !224, inlinedAt: !991)
!1314 = !DILocation(line: 424, column: 11, scope: !1315, inlinedAt: !991)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 424, column: 11)
!1316 = distinct !DILexicalBlock(scope: !225, file: !3, line: 423, column: 5)
!1317 = !DILocation(line: 424, column: 19, scope: !1315, inlinedAt: !991)
!1318 = !DILocation(line: 424, column: 11, scope: !1316, inlinedAt: !991)
!1319 = !DILocation(line: 430, column: 8, scope: !1316, inlinedAt: !991)
!1320 = !DILocation(line: 426, column: 19, scope: !1321, inlinedAt: !991)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 425, column: 9)
!1322 = !DILocation(line: 427, column: 17, scope: !1321, inlinedAt: !991)
!1323 = !DILocation(line: 427, column: 11, scope: !1321, inlinedAt: !991)
!1324 = !DILocation(line: 428, column: 30, scope: !1321, inlinedAt: !991)
!1325 = !DILocation(line: 428, column: 21, scope: !1321, inlinedAt: !991)
!1326 = !DILocation(line: 428, column: 19, scope: !1321, inlinedAt: !991)
!1327 = !DILocation(line: 429, column: 9, scope: !1321, inlinedAt: !991)
!1328 = !DILocation(line: 430, column: 16, scope: !1316, inlinedAt: !991)
!1329 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 436, column: 15, scope: !127, inlinedAt: !991)
!1331 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1330)
!1332 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1330)
!1333 = !{!1043, !962, i64 340}
!1334 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1330)
!1335 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1330)
!1336 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1330)
!1337 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1330)
!1338 = distinct !DILexicalBlock(scope: !253, file: !3, line: 231, column: 7)
!1339 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1330)
!1340 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1330)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 232, column: 5)
!1342 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1330)
!1343 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1330)
!1344 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1330)
!1345 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1352)
!1346 = distinct !DISubprogram(name: "timetostr", scope: !76, file: !76, line: 686, type: !1347, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!25, !28, !25}
!1349 = !{!1350, !1351}
!1350 = !DILocalVariable(name: "t", arg: 1, scope: !1346, file: !76, line: 686, type: !28)
!1351 = !DILocalVariable(name: "buf", arg: 2, scope: !1346, file: !76, line: 686, type: !25)
!1352 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1330)
!1353 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1330)
!1354 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1330)
!1355 = !DILocation(line: 437, column: 15, scope: !127, inlinedAt: !991)
!1356 = !DILocation(line: 434, column: 3, scope: !127, inlinedAt: !991)
!1357 = !DILocation(line: 438, column: 1, scope: !127, inlinedAt: !991)
!1358 = !DILocation(line: 592, column: 13, scope: !992, inlinedAt: !1004)
!1359 = !DILocation(line: 593, column: 34, scope: !1067, inlinedAt: !1004)
!1360 = !DILocation(line: 593, column: 37, scope: !1067, inlinedAt: !1004)
!1361 = !DILocation(line: 593, column: 20, scope: !992, inlinedAt: !1004)
!1362 = !DILocation(line: 513, column: 36, scope: !280, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 594, column: 13, scope: !1067, inlinedAt: !1004)
!1364 = !DILocation(line: 516, column: 24, scope: !280, inlinedAt: !1363)
!1365 = !DILocation(line: 516, column: 42, scope: !280, inlinedAt: !1363)
!1366 = !DILocation(line: 519, column: 8, scope: !1367, inlinedAt: !1363)
!1367 = distinct !DILexicalBlock(scope: !280, file: !3, line: 519, column: 7)
!1368 = !DILocation(line: 519, column: 7, scope: !280, inlinedAt: !1363)
!1369 = !DILocation(line: 520, column: 35, scope: !1367, inlinedAt: !1363)
!1370 = !DILocation(line: 520, column: 27, scope: !1367, inlinedAt: !1363)
!1371 = !DILocation(line: 520, column: 51, scope: !1367, inlinedAt: !1363)
!1372 = !DILocation(line: 520, column: 18, scope: !1367, inlinedAt: !1363)
!1373 = !DILocation(line: 520, column: 16, scope: !1367, inlinedAt: !1363)
!1374 = !DILocation(line: 520, column: 5, scope: !1367, inlinedAt: !1363)
!1375 = !DILocation(line: 521, column: 3, scope: !280, inlinedAt: !1363)
!1376 = !DILocation(line: 523, column: 8, scope: !1377, inlinedAt: !1363)
!1377 = distinct !DILexicalBlock(scope: !280, file: !3, line: 523, column: 7)
!1378 = !DILocation(line: 523, column: 7, scope: !280, inlinedAt: !1363)
!1379 = !DILocation(line: 524, column: 32, scope: !1377, inlinedAt: !1363)
!1380 = !DILocation(line: 524, column: 24, scope: !1377, inlinedAt: !1363)
!1381 = !DILocation(line: 524, column: 44, scope: !1377, inlinedAt: !1363)
!1382 = !DILocation(line: 524, column: 15, scope: !1377, inlinedAt: !1363)
!1383 = !DILocation(line: 524, column: 13, scope: !1377, inlinedAt: !1363)
!1384 = !DILocation(line: 524, column: 5, scope: !1377, inlinedAt: !1363)
!1385 = !DILocation(line: 525, column: 3, scope: !280, inlinedAt: !1363)
!1386 = !DILocation(line: 527, column: 32, scope: !280, inlinedAt: !1363)
!1387 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 527, column: 44, scope: !280, inlinedAt: !1363)
!1389 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1388)
!1390 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1388)
!1391 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1388)
!1392 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1388)
!1393 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1388)
!1394 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1388)
!1395 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1388)
!1396 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1388)
!1397 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1388)
!1398 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1388)
!1399 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1388)
!1400 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1388)
!1402 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1388)
!1403 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1388)
!1404 = !DILocalVariable(name: "c", arg: 1, scope: !1405, file: !1406, line: 272, type: !72)
!1405 = distinct !DISubprogram(name: "c_isprint", scope: !1406, file: !1406, line: 272, type: !1407, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1409)
!1406 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!37, !72}
!1409 = !{!1404}
!1410 = !DILocation(line: 272, column: 16, scope: !1405, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 528, column: 23, scope: !280, inlinedAt: !1363)
!1412 = !DILocation(line: 274, column: 3, scope: !1405, inlinedAt: !1411)
!1413 = !DILocation(line: 528, column: 42, scope: !280, inlinedAt: !1363)
!1414 = !DILocation(line: 528, column: 23, scope: !280, inlinedAt: !1363)
!1415 = !DILocation(line: 527, column: 3, scope: !280, inlinedAt: !1363)
!1416 = !DILocation(line: 594, column: 13, scope: !1067, inlinedAt: !1004)
!1417 = !DILocation(line: 595, column: 34, scope: !1066, inlinedAt: !1004)
!1418 = !DILocation(line: 595, column: 37, scope: !1066, inlinedAt: !1004)
!1419 = !DILocation(line: 595, column: 20, scope: !1067, inlinedAt: !1004)
!1420 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1421, file: !3, line: 441, type: !130)
!1421 = distinct !DISubprogram(name: "print_boottime", scope: !3, file: !3, line: 441, type: !281, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1422)
!1422 = !{!1420}
!1423 = !DILocation(line: 441, column: 36, scope: !1421, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 596, column: 13, scope: !1066, inlinedAt: !1004)
!1425 = !DILocation(line: 443, column: 32, scope: !1421, inlinedAt: !1424)
!1426 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 444, column: 15, scope: !1421, inlinedAt: !1424)
!1428 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1427)
!1429 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1427)
!1430 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1427)
!1431 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1427)
!1432 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1427)
!1433 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1427)
!1434 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1427)
!1435 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1427)
!1436 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1427)
!1437 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1427)
!1438 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1427)
!1439 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1427)
!1441 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1427)
!1442 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1427)
!1443 = !DILocation(line: 443, column: 3, scope: !1421, inlinedAt: !1424)
!1444 = !DILocation(line: 596, column: 13, scope: !1066, inlinedAt: !1004)
!1445 = !DILocation(line: 600, column: 37, scope: !1065, inlinedAt: !1004)
!1446 = !DILocation(line: 600, column: 40, scope: !1065, inlinedAt: !1004)
!1447 = !DILocation(line: 600, column: 20, scope: !1066, inlinedAt: !1004)
!1448 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1449, file: !3, line: 505, type: !130)
!1449 = distinct !DISubprogram(name: "print_clockchange", scope: !3, file: !3, line: 505, type: !281, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1450)
!1450 = !{!1448}
!1451 = !DILocation(line: 505, column: 39, scope: !1449, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 601, column: 13, scope: !1065, inlinedAt: !1004)
!1453 = !DILocation(line: 508, column: 32, scope: !1449, inlinedAt: !1452)
!1454 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 509, column: 15, scope: !1449, inlinedAt: !1452)
!1456 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1455)
!1457 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1455)
!1458 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1455)
!1459 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1455)
!1460 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1455)
!1461 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1455)
!1462 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1455)
!1463 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1455)
!1464 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1455)
!1465 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1455)
!1466 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1455)
!1467 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1455)
!1469 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1455)
!1470 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1455)
!1471 = !DILocation(line: 508, column: 3, scope: !1449, inlinedAt: !1452)
!1472 = !DILocation(line: 601, column: 13, scope: !1065, inlinedAt: !1004)
!1473 = !DILocation(line: 602, column: 35, scope: !1064, inlinedAt: !1004)
!1474 = !DILocation(line: 602, column: 38, scope: !1064, inlinedAt: !1004)
!1475 = !DILocation(line: 602, column: 20, scope: !1065, inlinedAt: !1004)
!1476 = !DILocation(line: 494, column: 37, scope: !1076, inlinedAt: !1081)
!1477 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1478, file: !3, line: 448, type: !130)
!1478 = distinct !DISubprogram(name: "make_id_equals_comment", scope: !3, file: !3, line: 448, type: !1479, isLocal: true, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!25, !130}
!1481 = !{!1477, !1482}
!1482 = !DILocalVariable(name: "comment", scope: !1478, file: !3, line: 450, type: !25)
!1483 = !DILocation(line: 448, column: 44, scope: !1478, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 496, column: 19, scope: !1076, inlinedAt: !1081)
!1485 = !DILocation(line: 450, column: 36, scope: !1478, inlinedAt: !1484)
!1486 = !DILocation(line: 450, column: 28, scope: !1478, inlinedAt: !1484)
!1487 = !DILocation(line: 450, column: 72, scope: !1478, inlinedAt: !1484)
!1488 = !DILocation(line: 450, column: 19, scope: !1478, inlinedAt: !1484)
!1489 = !DILocation(line: 450, column: 9, scope: !1478, inlinedAt: !1484)
!1490 = !DILocation(line: 452, column: 20, scope: !1478, inlinedAt: !1484)
!1491 = !DILocalVariable(name: "__dest", arg: 1, scope: !1492, file: !1493, line: 88, type: !1136)
!1492 = distinct !DISubprogram(name: "strcpy", scope: !1493, file: !1493, line: 88, type: !1494, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1496)
!1493 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!25, !1136, !1137}
!1496 = !{!1491, !1497}
!1497 = !DILocalVariable(name: "__src", arg: 2, scope: !1492, file: !1493, line: 88, type: !1137)
!1498 = !DILocation(line: 88, column: 1, scope: !1492, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 452, column: 3, scope: !1478, inlinedAt: !1484)
!1500 = !DILocation(line: 90, column: 49, scope: !1492, inlinedAt: !1499)
!1501 = !DILocation(line: 90, column: 10, scope: !1492, inlinedAt: !1499)
!1502 = !DILocation(line: 453, column: 21, scope: !1478, inlinedAt: !1484)
!1503 = !DILocalVariable(name: "__dest", arg: 1, scope: !1504, file: !1493, line: 133, type: !1136)
!1504 = distinct !DISubprogram(name: "strncat", scope: !1493, file: !1493, line: 133, type: !1134, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1505)
!1505 = !{!1503, !1506, !1507}
!1506 = !DILocalVariable(name: "__src", arg: 2, scope: !1504, file: !1493, line: 133, type: !1137)
!1507 = !DILocalVariable(name: "__len", arg: 3, scope: !1504, file: !1493, line: 133, type: !233)
!1508 = !DILocation(line: 133, column: 1, scope: !1504, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 453, column: 3, scope: !1478, inlinedAt: !1484)
!1510 = !DILocation(line: 136, column: 10, scope: !1504, inlinedAt: !1509)
!1511 = !DILocation(line: 496, column: 9, scope: !1076, inlinedAt: !1081)
!1512 = !DILocation(line: 499, column: 54, scope: !1076, inlinedAt: !1081)
!1513 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 500, column: 15, scope: !1076, inlinedAt: !1081)
!1515 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1514)
!1516 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1514)
!1517 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1514)
!1518 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1514)
!1519 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1514)
!1520 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1514)
!1521 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1514)
!1522 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1514)
!1523 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1514)
!1524 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1514)
!1525 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1514)
!1526 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1514)
!1528 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1514)
!1529 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1514)
!1530 = !DILocation(line: 499, column: 3, scope: !1076, inlinedAt: !1081)
!1531 = !DILocation(line: 501, column: 3, scope: !1076, inlinedAt: !1081)
!1532 = !DILocation(line: 502, column: 1, scope: !1076, inlinedAt: !1081)
!1533 = !DILocation(line: 603, column: 13, scope: !1064, inlinedAt: !1004)
!1534 = !DILocation(line: 604, column: 31, scope: !1063, inlinedAt: !1004)
!1535 = !DILocation(line: 604, column: 34, scope: !1063, inlinedAt: !1004)
!1536 = !DILocation(line: 604, column: 20, scope: !1064, inlinedAt: !1004)
!1537 = !DILocation(line: 481, column: 33, scope: !1069, inlinedAt: !1074)
!1538 = !DILocation(line: 448, column: 44, scope: !1478, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 483, column: 19, scope: !1069, inlinedAt: !1074)
!1540 = !DILocation(line: 450, column: 36, scope: !1478, inlinedAt: !1539)
!1541 = !DILocation(line: 450, column: 28, scope: !1478, inlinedAt: !1539)
!1542 = !DILocation(line: 450, column: 72, scope: !1478, inlinedAt: !1539)
!1543 = !DILocation(line: 450, column: 19, scope: !1478, inlinedAt: !1539)
!1544 = !DILocation(line: 450, column: 9, scope: !1478, inlinedAt: !1539)
!1545 = !DILocation(line: 452, column: 20, scope: !1478, inlinedAt: !1539)
!1546 = !DILocation(line: 88, column: 1, scope: !1492, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 452, column: 3, scope: !1478, inlinedAt: !1539)
!1548 = !DILocation(line: 90, column: 49, scope: !1492, inlinedAt: !1547)
!1549 = !DILocation(line: 90, column: 10, scope: !1492, inlinedAt: !1547)
!1550 = !DILocation(line: 453, column: 21, scope: !1478, inlinedAt: !1539)
!1551 = !DILocation(line: 133, column: 1, scope: !1504, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 453, column: 3, scope: !1478, inlinedAt: !1539)
!1553 = !DILocation(line: 136, column: 10, scope: !1504, inlinedAt: !1552)
!1554 = !DILocation(line: 483, column: 9, scope: !1069, inlinedAt: !1074)
!1555 = !DILocation(line: 488, column: 19, scope: !1069, inlinedAt: !1074)
!1556 = !DILocation(line: 488, column: 62, scope: !1069, inlinedAt: !1074)
!1557 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 489, column: 15, scope: !1069, inlinedAt: !1074)
!1559 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1558)
!1560 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1558)
!1561 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1558)
!1562 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1558)
!1563 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1558)
!1564 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1558)
!1565 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1558)
!1566 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1558)
!1567 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1558)
!1568 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1558)
!1569 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1558)
!1570 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1558)
!1572 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1558)
!1573 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1558)
!1574 = !DILocation(line: 488, column: 3, scope: !1069, inlinedAt: !1074)
!1575 = !DILocation(line: 490, column: 3, scope: !1069, inlinedAt: !1074)
!1576 = !DILocation(line: 491, column: 1, scope: !1069, inlinedAt: !1074)
!1577 = !DILocation(line: 605, column: 13, scope: !1063, inlinedAt: !1004)
!1578 = !DILocation(line: 606, column: 35, scope: !1062, inlinedAt: !1004)
!1579 = !DILocation(line: 606, column: 38, scope: !1062, inlinedAt: !1004)
!1580 = !DILocation(line: 606, column: 20, scope: !1063, inlinedAt: !1004)
!1581 = !DILocation(line: 458, column: 37, scope: !292, inlinedAt: !1061)
!1582 = !DILocation(line: 448, column: 44, scope: !1478, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 461, column: 19, scope: !292, inlinedAt: !1061)
!1584 = !DILocation(line: 450, column: 36, scope: !1478, inlinedAt: !1583)
!1585 = !DILocation(line: 450, column: 28, scope: !1478, inlinedAt: !1583)
!1586 = !DILocation(line: 450, column: 72, scope: !1478, inlinedAt: !1583)
!1587 = !DILocation(line: 450, column: 19, scope: !1478, inlinedAt: !1583)
!1588 = !DILocation(line: 450, column: 9, scope: !1478, inlinedAt: !1583)
!1589 = !DILocation(line: 452, column: 20, scope: !1478, inlinedAt: !1583)
!1590 = !DILocation(line: 88, column: 1, scope: !1492, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 452, column: 3, scope: !1478, inlinedAt: !1583)
!1592 = !DILocation(line: 90, column: 49, scope: !1492, inlinedAt: !1591)
!1593 = !DILocation(line: 90, column: 10, scope: !1492, inlinedAt: !1591)
!1594 = !DILocation(line: 453, column: 21, scope: !1478, inlinedAt: !1583)
!1595 = !DILocation(line: 133, column: 1, scope: !1504, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 453, column: 3, scope: !1478, inlinedAt: !1583)
!1597 = !DILocation(line: 136, column: 10, scope: !1504, inlinedAt: !1596)
!1598 = !DILocation(line: 461, column: 9, scope: !292, inlinedAt: !1061)
!1599 = !DILocation(line: 464, column: 8, scope: !1600, inlinedAt: !1061)
!1600 = distinct !DILexicalBlock(scope: !292, file: !3, line: 464, column: 7)
!1601 = !DILocation(line: 464, column: 7, scope: !292, inlinedAt: !1061)
!1602 = !DILocation(line: 465, column: 32, scope: !1600, inlinedAt: !1061)
!1603 = !DILocation(line: 465, column: 24, scope: !1600, inlinedAt: !1061)
!1604 = !DILocation(line: 467, column: 34, scope: !1600, inlinedAt: !1061)
!1605 = !DILocation(line: 467, column: 26, scope: !1600, inlinedAt: !1061)
!1606 = !DILocation(line: 467, column: 24, scope: !1600, inlinedAt: !1061)
!1607 = !DILocation(line: 469, column: 24, scope: !1600, inlinedAt: !1061)
!1608 = !DILocation(line: 465, column: 15, scope: !1600, inlinedAt: !1061)
!1609 = !DILocation(line: 465, column: 13, scope: !1600, inlinedAt: !1061)
!1610 = !DILocation(line: 465, column: 5, scope: !1600, inlinedAt: !1061)
!1611 = !DILocation(line: 470, column: 3, scope: !292, inlinedAt: !1061)
!1612 = !{!1043, !1044, i64 332}
!1613 = !{!1043, !1044, i64 334}
!1614 = !DILocation(line: 475, column: 54, scope: !292, inlinedAt: !1061)
!1615 = !DILocation(line: 218, column: 33, scope: !253, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 476, column: 15, scope: !292, inlinedAt: !1061)
!1617 = !DILocation(line: 228, column: 3, scope: !253, inlinedAt: !1616)
!1618 = !DILocation(line: 228, column: 14, scope: !253, inlinedAt: !1616)
!1619 = !DILocation(line: 228, column: 10, scope: !253, inlinedAt: !1616)
!1620 = !DILocation(line: 229, column: 20, scope: !253, inlinedAt: !1616)
!1621 = !DILocation(line: 229, column: 14, scope: !253, inlinedAt: !1616)
!1622 = !DILocation(line: 231, column: 7, scope: !1338, inlinedAt: !1616)
!1623 = !DILocation(line: 231, column: 7, scope: !253, inlinedAt: !1616)
!1624 = !DILocation(line: 233, column: 34, scope: !1341, inlinedAt: !1616)
!1625 = !DILocation(line: 233, column: 7, scope: !1341, inlinedAt: !1616)
!1626 = !DILocation(line: 234, column: 7, scope: !1341, inlinedAt: !1616)
!1627 = !DILocation(line: 237, column: 23, scope: !1338, inlinedAt: !1616)
!1628 = !DILocation(line: 689, column: 13, scope: !1346, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 237, column: 12, scope: !1338, inlinedAt: !1616)
!1630 = !DILocation(line: 237, column: 5, scope: !1338, inlinedAt: !1616)
!1631 = !DILocation(line: 238, column: 1, scope: !253, inlinedAt: !1616)
!1632 = !DILocation(line: 476, column: 60, scope: !292, inlinedAt: !1061)
!1633 = !DILocation(line: 475, column: 3, scope: !292, inlinedAt: !1061)
!1634 = !DILocation(line: 477, column: 3, scope: !292, inlinedAt: !1061)
!1635 = !DILocation(line: 478, column: 1, scope: !292, inlinedAt: !1061)
!1636 = !DILocation(line: 607, column: 13, scope: !1062, inlinedAt: !1004)
!1637 = !DILocation(line: 610, column: 11, scope: !1638, inlinedAt: !1004)
!1638 = distinct !DILexicalBlock(scope: !995, file: !3, line: 610, column: 11)
!1639 = !DILocation(line: 610, column: 11, scope: !995, inlinedAt: !1004)
!1640 = !DILocation(line: 611, column: 20, scope: !1638, inlinedAt: !1004)
!1641 = !DILocation(line: 611, column: 9, scope: !1638, inlinedAt: !1004)
!1642 = !DILocation(line: 613, column: 15, scope: !995, inlinedAt: !1004)
!1643 = distinct !{!1643, !1644, !1645}
!1644 = !DILocation(line: 585, column: 3, scope: !996)
!1645 = !DILocation(line: 614, column: 5, scope: !996)
!1646 = !DILocation(line: 633, column: 9, scope: !981)
!1647 = !DIExpression(DW_OP_deref)
!1648 = !DILocation(line: 633, column: 3, scope: !981)
!1649 = !DILocation(line: 634, column: 1, scope: !981)
!1650 = !DILocation(line: 244, column: 17, scope: !95)
!1651 = !DILocation(line: 244, column: 38, scope: !95)
!1652 = !DILocation(line: 244, column: 55, scope: !95)
!1653 = !DILocation(line: 245, column: 17, scope: !95)
!1654 = !DILocation(line: 245, column: 38, scope: !95)
!1655 = !DILocation(line: 246, column: 25, scope: !95)
!1656 = !DILocation(line: 246, column: 47, scope: !95)
!1657 = !DILocation(line: 246, column: 65, scope: !95)
!1658 = !DILocation(line: 247, column: 25, scope: !95)
!1659 = !DILocation(line: 247, column: 46, scope: !95)
!1660 = !DILocation(line: 250, column: 3, scope: !95)
!1661 = !DILocation(line: 251, column: 3, scope: !95)
!1662 = !DILocation(line: 251, column: 8, scope: !95)
!1663 = !DILocation(line: 252, column: 3, scope: !95)
!1664 = !DILocation(line: 252, column: 8, scope: !95)
!1665 = !DILocation(line: 256, column: 11, scope: !95)
!1666 = !DILocation(line: 258, column: 20, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !95, file: !3, line: 258, column: 7)
!1668 = !DILocation(line: 258, column: 37, scope: !1667)
!1669 = !DILocation(line: 258, column: 40, scope: !1667)
!1670 = !DILocation(line: 258, column: 54, scope: !1667)
!1671 = !DILocation(line: 258, column: 7, scope: !95)
!1672 = !DILocation(line: 259, column: 5, scope: !1667)
!1673 = !DILocation(line: 261, column: 13, scope: !1667)
!1674 = !DILocation(line: 263, column: 21, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !95, file: !3, line: 263, column: 7)
!1676 = !DILocation(line: 263, column: 24, scope: !1675)
!1677 = !DILocation(line: 263, column: 37, scope: !1675)
!1678 = !DILocation(line: 263, column: 7, scope: !95)
!1679 = !DILocation(line: 264, column: 5, scope: !1675)
!1680 = !DILocation(line: 266, column: 12, scope: !1675)
!1681 = !DILocation(line: 268, column: 24, scope: !95)
!1682 = !DILocation(line: 268, column: 43, scope: !95)
!1683 = !DILocation(line: 268, column: 15, scope: !95)
!1684 = !DILocation(line: 253, column: 9, scope: !95)
!1685 = !DILocation(line: 269, column: 7, scope: !95)
!1686 = !DILocation(line: 270, column: 5, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !95, file: !3, line: 269, column: 7)
!1688 = !DILocation(line: 272, column: 16, scope: !1687)
!1689 = !DILocation(line: 274, column: 9, scope: !95)
!1690 = !DILocation(line: 250, column: 9, scope: !95)
!1691 = !DILocation(line: 254, column: 7, scope: !95)
!1692 = !DILocation(line: 298, column: 11, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !95, file: !3, line: 298, column: 7)
!1694 = !DILocation(line: 298, column: 7, scope: !95)
!1695 = !DILocation(line: 299, column: 5, scope: !1693)
!1696 = !DILocation(line: 303, column: 15, scope: !121)
!1697 = !DILocation(line: 303, column: 21, scope: !121)
!1698 = !DILocation(line: 303, column: 19, scope: !121)
!1699 = !DILocation(line: 303, column: 11, scope: !121)
!1700 = !DILocation(line: 304, column: 5, scope: !121)
!1701 = !DILocation(line: 304, column: 13, scope: !121)
!1702 = !DILocation(line: 304, column: 12, scope: !121)
!1703 = !DILocation(line: 304, column: 17, scope: !121)
!1704 = distinct !{!1704, !1700, !1705}
!1705 = !DILocation(line: 305, column: 18, scope: !121)
!1706 = !DILocation(line: 306, column: 14, scope: !121)
!1707 = !DILocation(line: 309, column: 9, scope: !95)
!1708 = !DILocation(line: 309, column: 3, scope: !95)
!1709 = !DILocation(line: 310, column: 9, scope: !95)
!1710 = !DILocation(line: 310, column: 3, scope: !95)
!1711 = !DILocation(line: 311, column: 3, scope: !95)
!1712 = !DILocation(line: 312, column: 1, scope: !95)
!1713 = distinct !DISubprogram(name: "canon_host", scope: !323, file: !323, line: 33, type: !1714, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!25, !68}
!1716 = !{!1717}
!1717 = !DILocalVariable(name: "host", arg: 1, scope: !1713, file: !323, line: 33, type: !68)
!1718 = !DILocation(line: 33, column: 25, scope: !1713)
!1719 = !DILocation(line: 60, column: 27, scope: !322, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 35, column: 10, scope: !1713)
!1721 = !DILocation(line: 60, column: 38, scope: !322, inlinedAt: !1720)
!1722 = !DILocation(line: 62, column: 9, scope: !322, inlinedAt: !1720)
!1723 = !DILocation(line: 64, column: 3, scope: !322, inlinedAt: !1720)
!1724 = !DILocation(line: 64, column: 20, scope: !322, inlinedAt: !1720)
!1725 = !DILocation(line: 67, column: 18, scope: !322, inlinedAt: !1720)
!1726 = !{!1727, !962, i64 0}
!1727 = !{!"addrinfo", !962, i64 0, !962, i64 4, !962, i64 8, !962, i64 12, !962, i64 16, !878, i64 24, !878, i64 32, !878, i64 40}
!1728 = !DILocation(line: 68, column: 12, scope: !322, inlinedAt: !1720)
!1729 = !DILocation(line: 65, column: 7, scope: !322, inlinedAt: !1720)
!1730 = !DILocation(line: 69, column: 8, scope: !1731, inlinedAt: !1720)
!1731 = distinct !DILexicalBlock(scope: !322, file: !323, line: 69, column: 7)
!1732 = !DILocation(line: 69, column: 7, scope: !322, inlinedAt: !1720)
!1733 = !DILocation(line: 74, column: 24, scope: !1734, inlinedAt: !1720)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !323, line: 70, column: 5)
!1735 = !DILocation(line: 74, column: 29, scope: !1734, inlinedAt: !1720)
!1736 = !{!1727, !878, i64 32}
!1737 = !DILocation(line: 74, column: 16, scope: !1734, inlinedAt: !1720)
!1738 = !DILocation(line: 75, column: 12, scope: !1739, inlinedAt: !1720)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !323, line: 75, column: 11)
!1740 = !DILocation(line: 75, column: 19, scope: !1739, inlinedAt: !1720)
!1741 = !DILocation(line: 76, column: 18, scope: !1739, inlinedAt: !1720)
!1742 = !DILocation(line: 76, column: 9, scope: !1739, inlinedAt: !1720)
!1743 = !DILocation(line: 77, column: 21, scope: !1734, inlinedAt: !1720)
!1744 = !DILocation(line: 77, column: 7, scope: !1734, inlinedAt: !1720)
!1745 = !DILocation(line: 78, column: 5, scope: !1734, inlinedAt: !1720)
!1746 = !DILocation(line: 80, column: 14, scope: !1747, inlinedAt: !1720)
!1747 = distinct !DILexicalBlock(scope: !1731, file: !323, line: 79, column: 12)
!1748 = !DILocation(line: 80, column: 5, scope: !1747, inlinedAt: !1720)
!1749 = !DILocation(line: 83, column: 1, scope: !322, inlinedAt: !1720)
!1750 = !DILocation(line: 35, column: 3, scope: !1713)
!1751 = !DILocation(line: 60, column: 27, scope: !322)
!1752 = !DILocation(line: 60, column: 38, scope: !322)
!1753 = !DILocation(line: 62, column: 9, scope: !322)
!1754 = !DILocation(line: 64, column: 3, scope: !322)
!1755 = !DILocation(line: 64, column: 20, scope: !322)
!1756 = !DILocation(line: 67, column: 18, scope: !322)
!1757 = !DILocation(line: 68, column: 12, scope: !322)
!1758 = !DILocation(line: 65, column: 7, scope: !322)
!1759 = !DILocation(line: 69, column: 8, scope: !1731)
!1760 = !DILocation(line: 69, column: 7, scope: !322)
!1761 = !DILocation(line: 74, column: 24, scope: !1734)
!1762 = !DILocation(line: 74, column: 29, scope: !1734)
!1763 = !DILocation(line: 74, column: 16, scope: !1734)
!1764 = !DILocation(line: 75, column: 12, scope: !1739)
!1765 = !DILocation(line: 75, column: 22, scope: !1739)
!1766 = !DILocation(line: 75, column: 19, scope: !1739)
!1767 = !DILocation(line: 76, column: 18, scope: !1739)
!1768 = !DILocation(line: 76, column: 9, scope: !1739)
!1769 = !DILocation(line: 77, column: 21, scope: !1734)
!1770 = !DILocation(line: 77, column: 7, scope: !1734)
!1771 = !DILocation(line: 78, column: 5, scope: !1734)
!1772 = !DILocation(line: 79, column: 12, scope: !1747)
!1773 = !DILocation(line: 79, column: 12, scope: !1731)
!1774 = !DILocation(line: 80, column: 14, scope: !1747)
!1775 = !DILocation(line: 80, column: 5, scope: !1747)
!1776 = !DILocation(line: 83, column: 1, scope: !322)
!1777 = !DILocation(line: 82, column: 3, scope: !322)
!1778 = distinct !DISubprogram(name: "ch_strerror", scope: !323, file: !323, line: 87, type: !1779, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !313)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!68}
!1781 = !DILocation(line: 89, column: 24, scope: !1778)
!1782 = !DILocation(line: 89, column: 10, scope: !1778)
!1783 = !DILocation(line: 89, column: 3, scope: !1778)
!1784 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !365, file: !365, line: 41, type: !77, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !360, variables: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "file", arg: 1, scope: !1784, file: !365, line: 41, type: !68)
!1787 = !DILocation(line: 41, column: 41, scope: !1784)
!1788 = !DILocation(line: 43, column: 13, scope: !1784)
!1789 = !DILocation(line: 44, column: 1, scope: !1784)
!1790 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !365, file: !365, line: 78, type: !1791, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !360, variables: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !37}
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "ignore", arg: 1, scope: !1790, file: !365, line: 78, type: !37)
!1795 = !DILocation(line: 78, column: 37, scope: !1790)
!1796 = !DILocation(line: 80, column: 16, scope: !1790)
!1797 = !{!1798, !1798, i64 0}
!1798 = !{!"_Bool", !879, i64 0}
!1799 = !DILocation(line: 81, column: 1, scope: !1790)
!1800 = distinct !DISubprogram(name: "close_stdout", scope: !365, file: !365, line: 107, type: !1088, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !360, variables: !1801)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "write_error", scope: !1803, file: !365, line: 112, type: !68)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !365, line: 111, column: 5)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !365, line: 109, column: 7)
!1805 = !DILocation(line: 109, column: 21, scope: !1804)
!1806 = !DILocation(line: 109, column: 7, scope: !1804)
!1807 = !DILocation(line: 109, column: 29, scope: !1804)
!1808 = !DILocation(line: 110, column: 7, scope: !1804)
!1809 = !DILocation(line: 110, column: 12, scope: !1804)
!1810 = !{i8 0, i8 2}
!1811 = !DILocation(line: 114, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1803, file: !365, line: 113, column: 11)
!1813 = !DILocation(line: 110, column: 25, scope: !1804)
!1814 = !DILocation(line: 110, column: 28, scope: !1804)
!1815 = !DILocation(line: 110, column: 34, scope: !1804)
!1816 = !DILocation(line: 109, column: 7, scope: !1800)
!1817 = !DILocation(line: 112, column: 33, scope: !1803)
!1818 = !DILocation(line: 112, column: 19, scope: !1803)
!1819 = !DILocation(line: 113, column: 11, scope: !1812)
!1820 = !DILocation(line: 113, column: 11, scope: !1803)
!1821 = !DILocation(line: 114, column: 36, scope: !1812)
!1822 = !DILocation(line: 114, column: 9, scope: !1812)
!1823 = !DILocation(line: 117, column: 9, scope: !1812)
!1824 = !DILocation(line: 119, column: 14, scope: !1803)
!1825 = !DILocation(line: 119, column: 7, scope: !1803)
!1826 = !DILocation(line: 122, column: 22, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1800, file: !365, line: 122, column: 8)
!1828 = !DILocation(line: 122, column: 8, scope: !1827)
!1829 = !DILocation(line: 122, column: 30, scope: !1827)
!1830 = !DILocation(line: 122, column: 8, scope: !1800)
!1831 = !DILocation(line: 123, column: 13, scope: !1827)
!1832 = !DILocation(line: 123, column: 6, scope: !1827)
!1833 = !DILocation(line: 124, column: 1, scope: !1800)
!1834 = distinct !DISubprogram(name: "hard_locale", scope: !1835, file: !1835, line: 38, type: !1407, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !800, variables: !1836)
!1835 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "category", arg: 1, scope: !1834, file: !1835, line: 38, type: !72)
!1838 = !DILocalVariable(name: "hard", scope: !1834, file: !1835, line: 40, type: !37)
!1839 = !DILocalVariable(name: "p", scope: !1834, file: !1835, line: 41, type: !68)
!1840 = !DILocation(line: 38, column: 18, scope: !1834)
!1841 = !DILocation(line: 40, column: 8, scope: !1834)
!1842 = !DILocation(line: 41, column: 19, scope: !1834)
!1843 = !DILocation(line: 41, column: 15, scope: !1834)
!1844 = !DILocation(line: 43, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1834, file: !1835, line: 43, column: 7)
!1846 = !DILocation(line: 43, column: 7, scope: !1834)
!1847 = !DILocation(line: 47, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1835, line: 47, column: 15)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !1835, line: 46, column: 9)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1835, line: 45, column: 11)
!1851 = distinct !DILexicalBlock(scope: !1845, file: !1835, line: 44, column: 5)
!1852 = !DILocation(line: 47, column: 31, scope: !1848)
!1853 = !DILocation(line: 47, column: 36, scope: !1848)
!1854 = !DILocation(line: 47, column: 39, scope: !1848)
!1855 = !DILocation(line: 47, column: 59, scope: !1848)
!1856 = !DILocation(line: 47, column: 15, scope: !1849)
!1857 = !DILocation(line: 48, column: 13, scope: !1848)
!1858 = !DILocation(line: 71, column: 3, scope: !1834)
!1859 = distinct !DISubprogram(name: "imaxtostr", scope: !1860, file: !1860, line: 36, type: !1861, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !802, variables: !1863)
!1860 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!25, !805, !25}
!1863 = !{!1864, !1865, !1866}
!1864 = !DILocalVariable(name: "i", arg: 1, scope: !1859, file: !1860, line: 36, type: !805)
!1865 = !DILocalVariable(name: "buf", arg: 2, scope: !1859, file: !1860, line: 36, type: !25)
!1866 = !DILocalVariable(name: "p", scope: !1859, file: !1860, line: 38, type: !25)
!1867 = !DILocation(line: 36, column: 19, scope: !1859)
!1868 = !DILocation(line: 36, column: 28, scope: !1859)
!1869 = !DILocation(line: 38, column: 17, scope: !1859)
!1870 = !DILocation(line: 38, column: 9, scope: !1859)
!1871 = !DILocation(line: 39, column: 6, scope: !1859)
!1872 = !DILocation(line: 41, column: 9, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1859, file: !1860, line: 41, column: 7)
!1874 = !DILocation(line: 41, column: 7, scope: !1859)
!1875 = distinct !{!1875, !1876, !1878}
!1876 = !DILocation(line: 51, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !1860, line: 50, column: 5)
!1878 = !DILocation(line: 53, column: 28, scope: !1877)
!1879 = !DILocation(line: 52, column: 24, scope: !1877)
!1880 = !DILocation(line: 44, column: 24, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1873, file: !1860, line: 42, column: 5)
!1882 = !DILocation(line: 44, column: 20, scope: !1881)
!1883 = !DILocation(line: 44, column: 16, scope: !1881)
!1884 = !DILocation(line: 44, column: 10, scope: !1881)
!1885 = !DILocation(line: 44, column: 14, scope: !1881)
!1886 = !DILocation(line: 45, column: 17, scope: !1881)
!1887 = !DILocation(line: 45, column: 24, scope: !1881)
!1888 = !DILocation(line: 44, column: 9, scope: !1881)
!1889 = distinct !{!1889, !1890, !1891}
!1890 = !DILocation(line: 43, column: 7, scope: !1881)
!1891 = !DILocation(line: 45, column: 28, scope: !1881)
!1892 = !DILocation(line: 47, column: 8, scope: !1881)
!1893 = !DILocation(line: 47, column: 12, scope: !1881)
!1894 = !DILocation(line: 48, column: 5, scope: !1881)
!1895 = !DILocation(line: 52, column: 20, scope: !1877)
!1896 = !DILocation(line: 52, column: 16, scope: !1877)
!1897 = !DILocation(line: 52, column: 10, scope: !1877)
!1898 = !DILocation(line: 52, column: 14, scope: !1877)
!1899 = !DILocation(line: 53, column: 17, scope: !1877)
!1900 = !DILocation(line: 53, column: 24, scope: !1877)
!1901 = !DILocation(line: 52, column: 9, scope: !1877)
!1902 = !DILocation(line: 56, column: 3, scope: !1859)
!1903 = distinct !DISubprogram(name: "set_program_name", scope: !379, file: !379, line: 39, type: !77, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !375, variables: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "argv0", arg: 1, scope: !1903, file: !379, line: 39, type: !68)
!1906 = !DILocalVariable(name: "slash", scope: !1903, file: !379, line: 46, type: !68)
!1907 = !DILocalVariable(name: "base", scope: !1903, file: !379, line: 47, type: !68)
!1908 = !DILocation(line: 39, column: 31, scope: !1903)
!1909 = !DILocation(line: 51, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !379, line: 51, column: 7)
!1911 = !DILocation(line: 51, column: 7, scope: !1903)
!1912 = !DILocation(line: 55, column: 14, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !379, line: 52, column: 5)
!1914 = !DILocation(line: 54, column: 7, scope: !1913)
!1915 = !DILocation(line: 56, column: 7, scope: !1913)
!1916 = !DILocation(line: 59, column: 11, scope: !1903)
!1917 = !DILocation(line: 46, column: 15, scope: !1903)
!1918 = !DILocation(line: 60, column: 17, scope: !1903)
!1919 = !DILocation(line: 60, column: 33, scope: !1903)
!1920 = !DILocation(line: 60, column: 11, scope: !1903)
!1921 = !DILocation(line: 47, column: 15, scope: !1903)
!1922 = !DILocation(line: 61, column: 12, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1903, file: !379, line: 61, column: 7)
!1924 = !DILocation(line: 61, column: 20, scope: !1923)
!1925 = !DILocation(line: 61, column: 25, scope: !1923)
!1926 = !DILocation(line: 61, column: 42, scope: !1923)
!1927 = !DILocation(line: 61, column: 28, scope: !1923)
!1928 = !DILocation(line: 61, column: 61, scope: !1923)
!1929 = !DILocation(line: 61, column: 7, scope: !1903)
!1930 = !DILocation(line: 64, column: 11, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !379, line: 64, column: 11)
!1932 = distinct !DILexicalBlock(scope: !1923, file: !379, line: 62, column: 5)
!1933 = !DILocation(line: 64, column: 36, scope: !1931)
!1934 = !DILocation(line: 64, column: 11, scope: !1932)
!1935 = !DILocation(line: 66, column: 24, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !379, line: 65, column: 9)
!1937 = !DILocation(line: 70, column: 41, scope: !1936)
!1938 = !DILocation(line: 72, column: 9, scope: !1936)
!1939 = !DILocation(line: 84, column: 16, scope: !1903)
!1940 = !DILocation(line: 90, column: 27, scope: !1903)
!1941 = !DILocation(line: 92, column: 1, scope: !1903)
!1942 = distinct !DISubprogram(name: "clone_quoting_options", scope: !409, file: !409, line: 114, type: !1943, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !1946)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1946 = !{!1947, !1948, !1949}
!1947 = !DILocalVariable(name: "o", arg: 1, scope: !1942, file: !409, line: 114, type: !1945)
!1948 = !DILocalVariable(name: "e", scope: !1942, file: !409, line: 116, type: !72)
!1949 = !DILocalVariable(name: "p", scope: !1942, file: !409, line: 117, type: !1945)
!1950 = !DILocation(line: 114, column: 48, scope: !1942)
!1951 = !DILocation(line: 116, column: 11, scope: !1942)
!1952 = !DILocation(line: 116, column: 7, scope: !1942)
!1953 = !DILocation(line: 117, column: 40, scope: !1942)
!1954 = !DILocation(line: 117, column: 31, scope: !1942)
!1955 = !DILocation(line: 117, column: 27, scope: !1942)
!1956 = !DILocation(line: 119, column: 9, scope: !1942)
!1957 = !DILocation(line: 120, column: 3, scope: !1942)
!1958 = distinct !DISubprogram(name: "get_quoting_style", scope: !409, file: !409, line: 125, type: !1959, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !1963)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!10, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!1963 = !{!1964}
!1964 = !DILocalVariable(name: "o", arg: 1, scope: !1958, file: !409, line: 125, type: !1961)
!1965 = !DILocation(line: 125, column: 50, scope: !1958)
!1966 = !DILocation(line: 127, column: 11, scope: !1958)
!1967 = !DILocation(line: 127, column: 46, scope: !1958)
!1968 = !{!1969, !879, i64 0}
!1969 = !{!"quoting_options", !879, i64 0, !962, i64 4, !879, i64 8, !878, i64 40, !878, i64 48}
!1970 = !DILocation(line: 127, column: 3, scope: !1958)
!1971 = distinct !DISubprogram(name: "set_quoting_style", scope: !409, file: !409, line: 133, type: !1972, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1945, !10}
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "o", arg: 1, scope: !1971, file: !409, line: 133, type: !1945)
!1976 = !DILocalVariable(name: "s", arg: 2, scope: !1971, file: !409, line: 133, type: !10)
!1977 = !DILocation(line: 133, column: 44, scope: !1971)
!1978 = !DILocation(line: 133, column: 66, scope: !1971)
!1979 = !DILocation(line: 135, column: 4, scope: !1971)
!1980 = !DILocation(line: 135, column: 39, scope: !1971)
!1981 = !DILocation(line: 135, column: 45, scope: !1971)
!1982 = !DILocation(line: 136, column: 1, scope: !1971)
!1983 = distinct !DISubprogram(name: "set_char_quoting", scope: !409, file: !409, line: 144, type: !1984, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!72, !1945, !26, !72}
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1993, !1994}
!1987 = !DILocalVariable(name: "o", arg: 1, scope: !1983, file: !409, line: 144, type: !1945)
!1988 = !DILocalVariable(name: "c", arg: 2, scope: !1983, file: !409, line: 144, type: !26)
!1989 = !DILocalVariable(name: "i", arg: 3, scope: !1983, file: !409, line: 144, type: !72)
!1990 = !DILocalVariable(name: "uc", scope: !1983, file: !409, line: 146, type: !286)
!1991 = !DILocalVariable(name: "p", scope: !1983, file: !409, line: 147, type: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1993 = !DILocalVariable(name: "shift", scope: !1983, file: !409, line: 149, type: !72)
!1994 = !DILocalVariable(name: "r", scope: !1983, file: !409, line: 150, type: !72)
!1995 = !DILocation(line: 144, column: 43, scope: !1983)
!1996 = !DILocation(line: 144, column: 51, scope: !1983)
!1997 = !DILocation(line: 144, column: 58, scope: !1983)
!1998 = !DILocation(line: 146, column: 17, scope: !1983)
!1999 = !DILocation(line: 148, column: 6, scope: !1983)
!2000 = !DILocation(line: 148, column: 62, scope: !1983)
!2001 = !DILocation(line: 148, column: 57, scope: !1983)
!2002 = !DILocation(line: 147, column: 17, scope: !1983)
!2003 = !DILocation(line: 149, column: 18, scope: !1983)
!2004 = !DILocation(line: 149, column: 15, scope: !1983)
!2005 = !DILocation(line: 149, column: 7, scope: !1983)
!2006 = !DILocation(line: 150, column: 12, scope: !1983)
!2007 = !DILocation(line: 150, column: 15, scope: !1983)
!2008 = !DILocation(line: 150, column: 25, scope: !1983)
!2009 = !DILocation(line: 150, column: 7, scope: !1983)
!2010 = !DILocation(line: 151, column: 13, scope: !1983)
!2011 = !DILocation(line: 151, column: 18, scope: !1983)
!2012 = !DILocation(line: 151, column: 23, scope: !1983)
!2013 = !DILocation(line: 151, column: 6, scope: !1983)
!2014 = !DILocation(line: 152, column: 3, scope: !1983)
!2015 = distinct !DISubprogram(name: "set_quoting_flags", scope: !409, file: !409, line: 160, type: !2016, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!72, !1945, !72}
!2018 = !{!2019, !2020, !2021}
!2019 = !DILocalVariable(name: "o", arg: 1, scope: !2015, file: !409, line: 160, type: !1945)
!2020 = !DILocalVariable(name: "i", arg: 2, scope: !2015, file: !409, line: 160, type: !72)
!2021 = !DILocalVariable(name: "r", scope: !2015, file: !409, line: 162, type: !72)
!2022 = !DILocation(line: 160, column: 44, scope: !2015)
!2023 = !DILocation(line: 160, column: 51, scope: !2015)
!2024 = !DILocation(line: 163, column: 8, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2015, file: !409, line: 163, column: 7)
!2026 = !DILocation(line: 163, column: 7, scope: !2015)
!2027 = !DILocation(line: 165, column: 10, scope: !2015)
!2028 = !{!1969, !962, i64 4}
!2029 = !DILocation(line: 162, column: 7, scope: !2015)
!2030 = !DILocation(line: 166, column: 12, scope: !2015)
!2031 = !DILocation(line: 167, column: 3, scope: !2015)
!2032 = distinct !DISubprogram(name: "set_custom_quoting", scope: !409, file: !409, line: 171, type: !2033, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1945, !68, !68}
!2035 = !{!2036, !2037, !2038}
!2036 = !DILocalVariable(name: "o", arg: 1, scope: !2032, file: !409, line: 171, type: !1945)
!2037 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2032, file: !409, line: 172, type: !68)
!2038 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2032, file: !409, line: 172, type: !68)
!2039 = !DILocation(line: 171, column: 45, scope: !2032)
!2040 = !DILocation(line: 172, column: 33, scope: !2032)
!2041 = !DILocation(line: 172, column: 57, scope: !2032)
!2042 = !DILocation(line: 174, column: 8, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2032, file: !409, line: 174, column: 7)
!2044 = !DILocation(line: 174, column: 7, scope: !2032)
!2045 = !DILocation(line: 176, column: 6, scope: !2032)
!2046 = !DILocation(line: 176, column: 12, scope: !2032)
!2047 = !DILocation(line: 177, column: 8, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2032, file: !409, line: 177, column: 7)
!2049 = !DILocation(line: 177, column: 23, scope: !2048)
!2050 = !DILocation(line: 177, column: 19, scope: !2048)
!2051 = !DILocation(line: 178, column: 5, scope: !2048)
!2052 = !DILocation(line: 179, column: 6, scope: !2032)
!2053 = !DILocation(line: 179, column: 17, scope: !2032)
!2054 = !{!1969, !878, i64 40}
!2055 = !DILocation(line: 180, column: 6, scope: !2032)
!2056 = !DILocation(line: 180, column: 18, scope: !2032)
!2057 = !{!1969, !878, i64 48}
!2058 = !DILocation(line: 181, column: 1, scope: !2032)
!2059 = distinct !DISubprogram(name: "quotearg_buffer", scope: !409, file: !409, line: 776, type: !2060, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!233, !25, !233, !68, !233, !1961}
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2063 = !DILocalVariable(name: "buffer", arg: 1, scope: !2059, file: !409, line: 776, type: !25)
!2064 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2059, file: !409, line: 776, type: !233)
!2065 = !DILocalVariable(name: "arg", arg: 3, scope: !2059, file: !409, line: 777, type: !68)
!2066 = !DILocalVariable(name: "argsize", arg: 4, scope: !2059, file: !409, line: 777, type: !233)
!2067 = !DILocalVariable(name: "o", arg: 5, scope: !2059, file: !409, line: 778, type: !1961)
!2068 = !DILocalVariable(name: "p", scope: !2059, file: !409, line: 780, type: !1961)
!2069 = !DILocalVariable(name: "e", scope: !2059, file: !409, line: 781, type: !72)
!2070 = !DILocalVariable(name: "r", scope: !2059, file: !409, line: 782, type: !233)
!2071 = !DILocation(line: 776, column: 24, scope: !2059)
!2072 = !DILocation(line: 776, column: 39, scope: !2059)
!2073 = !DILocation(line: 777, column: 30, scope: !2059)
!2074 = !DILocation(line: 777, column: 42, scope: !2059)
!2075 = !DILocation(line: 778, column: 48, scope: !2059)
!2076 = !DILocation(line: 780, column: 37, scope: !2059)
!2077 = !DILocation(line: 780, column: 33, scope: !2059)
!2078 = !DILocation(line: 781, column: 11, scope: !2059)
!2079 = !DILocation(line: 781, column: 7, scope: !2059)
!2080 = !DILocation(line: 783, column: 43, scope: !2059)
!2081 = !DILocation(line: 783, column: 53, scope: !2059)
!2082 = !DILocation(line: 783, column: 60, scope: !2059)
!2083 = !DILocation(line: 784, column: 43, scope: !2059)
!2084 = !DILocation(line: 784, column: 58, scope: !2059)
!2085 = !DILocation(line: 782, column: 14, scope: !2059)
!2086 = !DILocation(line: 782, column: 10, scope: !2059)
!2087 = !DILocation(line: 785, column: 9, scope: !2059)
!2088 = !DILocation(line: 786, column: 3, scope: !2059)
!2089 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !409, file: !409, line: 248, type: !2090, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2094)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!233, !25, !233, !68, !233, !10, !72, !2092, !68, !68}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2119, !2120, !2121, !2122, !2123, !2126, !2127, !2142, !2145, !2146, !2153}
!2095 = !DILocalVariable(name: "buffer", arg: 1, scope: !2089, file: !409, line: 248, type: !25)
!2096 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2089, file: !409, line: 248, type: !233)
!2097 = !DILocalVariable(name: "arg", arg: 3, scope: !2089, file: !409, line: 249, type: !68)
!2098 = !DILocalVariable(name: "argsize", arg: 4, scope: !2089, file: !409, line: 249, type: !233)
!2099 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2089, file: !409, line: 250, type: !10)
!2100 = !DILocalVariable(name: "flags", arg: 6, scope: !2089, file: !409, line: 250, type: !72)
!2101 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2089, file: !409, line: 251, type: !2092)
!2102 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2089, file: !409, line: 252, type: !68)
!2103 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2089, file: !409, line: 253, type: !68)
!2104 = !DILocalVariable(name: "i", scope: !2089, file: !409, line: 255, type: !233)
!2105 = !DILocalVariable(name: "len", scope: !2089, file: !409, line: 256, type: !233)
!2106 = !DILocalVariable(name: "orig_buffersize", scope: !2089, file: !409, line: 257, type: !233)
!2107 = !DILocalVariable(name: "quote_string", scope: !2089, file: !409, line: 258, type: !68)
!2108 = !DILocalVariable(name: "quote_string_len", scope: !2089, file: !409, line: 259, type: !233)
!2109 = !DILocalVariable(name: "backslash_escapes", scope: !2089, file: !409, line: 260, type: !37)
!2110 = !DILocalVariable(name: "unibyte_locale", scope: !2089, file: !409, line: 261, type: !37)
!2111 = !DILocalVariable(name: "elide_outer_quotes", scope: !2089, file: !409, line: 262, type: !37)
!2112 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2089, file: !409, line: 263, type: !37)
!2113 = !DILocalVariable(name: "encountered_single_quote", scope: !2089, file: !409, line: 264, type: !37)
!2114 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2089, file: !409, line: 265, type: !37)
!2115 = !DILocalVariable(name: "c", scope: !2116, file: !409, line: 394, type: !286)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !409, line: 393, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !409, line: 392, column: 3)
!2118 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 392, column: 3)
!2119 = !DILocalVariable(name: "esc", scope: !2116, file: !409, line: 395, type: !286)
!2120 = !DILocalVariable(name: "is_right_quote", scope: !2116, file: !409, line: 396, type: !37)
!2121 = !DILocalVariable(name: "escaping", scope: !2116, file: !409, line: 397, type: !37)
!2122 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2116, file: !409, line: 398, type: !37)
!2123 = !DILocalVariable(name: "m", scope: !2124, file: !409, line: 602, type: !233)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 600, column: 11)
!2125 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 418, column: 9)
!2126 = !DILocalVariable(name: "printable", scope: !2124, file: !409, line: 604, type: !37)
!2127 = !DILocalVariable(name: "mbstate", scope: !2128, file: !409, line: 613, type: !2130)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !409, line: 612, column: 15)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !409, line: 606, column: 17)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2131, line: 6, baseType: !2132)
!2131 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2133, line: 21, baseType: !2134)
!2133 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2133, line: 13, size: 64, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2134, file: !2133, line: 15, baseType: !72, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2134, file: !2133, line: 20, baseType: !2138, size: 32, offset: 32)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2134, file: !2133, line: 16, size: 32, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2138, file: !2133, line: 18, baseType: !186, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2138, file: !2133, line: 19, baseType: !144, size: 32)
!2142 = !DILocalVariable(name: "w", scope: !2143, file: !409, line: 623, type: !2144)
!2143 = distinct !DILexicalBlock(scope: !2128, file: !409, line: 622, column: 19)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !234, line: 90, baseType: !72)
!2145 = !DILocalVariable(name: "bytes", scope: !2143, file: !409, line: 624, type: !233)
!2146 = !DILocalVariable(name: "j", scope: !2147, file: !409, line: 649, type: !233)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !409, line: 648, column: 27)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !409, line: 646, column: 29)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !409, line: 641, column: 23)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !409, line: 633, column: 30)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !409, line: 628, column: 30)
!2152 = distinct !DILexicalBlock(scope: !2143, file: !409, line: 626, column: 25)
!2153 = !DILocalVariable(name: "ilim", scope: !2154, file: !409, line: 676, type: !233)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !409, line: 673, column: 15)
!2155 = distinct !DILexicalBlock(scope: !2124, file: !409, line: 672, column: 17)
!2156 = !DILocation(line: 248, column: 33, scope: !2089)
!2157 = !DILocation(line: 248, column: 48, scope: !2089)
!2158 = !DILocation(line: 249, column: 39, scope: !2089)
!2159 = !DILocation(line: 249, column: 51, scope: !2089)
!2160 = !DILocation(line: 250, column: 46, scope: !2089)
!2161 = !DILocation(line: 250, column: 65, scope: !2089)
!2162 = !DILocation(line: 251, column: 47, scope: !2089)
!2163 = !DILocation(line: 252, column: 39, scope: !2089)
!2164 = !DILocation(line: 253, column: 39, scope: !2089)
!2165 = !DILocation(line: 256, column: 10, scope: !2089)
!2166 = !DILocation(line: 257, column: 10, scope: !2089)
!2167 = !DILocation(line: 258, column: 15, scope: !2089)
!2168 = !DILocation(line: 259, column: 10, scope: !2089)
!2169 = !DILocation(line: 260, column: 8, scope: !2089)
!2170 = !DILocation(line: 261, column: 25, scope: !2089)
!2171 = !DILocation(line: 261, column: 36, scope: !2089)
!2172 = !DILocation(line: 262, column: 8, scope: !2089)
!2173 = !DILocation(line: 263, column: 8, scope: !2089)
!2174 = !DILocation(line: 264, column: 8, scope: !2089)
!2175 = !DILocation(line: 265, column: 8, scope: !2089)
!2176 = !DILocation(line: 265, column: 3, scope: !2089)
!2177 = !DILocation(line: 308, column: 3, scope: !2089)
!2178 = !DILocation(line: 315, column: 11, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 309, column: 5)
!2180 = !DILocation(line: 315, column: 12, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2179, file: !409, line: 315, column: 11)
!2182 = !DILocation(line: 316, column: 9, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !409, line: 316, column: 9)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !409, line: 316, column: 9)
!2185 = !DILocation(line: 316, column: 9, scope: !2184)
!2186 = !DILocation(line: 354, column: 26, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !409, line: 332, column: 11)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !409, line: 331, column: 13)
!2189 = distinct !DILexicalBlock(scope: !2179, file: !409, line: 330, column: 7)
!2190 = !DILocation(line: 355, column: 27, scope: !2187)
!2191 = !DILocation(line: 356, column: 11, scope: !2187)
!2192 = !DILocation(line: 357, column: 14, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !409, line: 357, column: 13)
!2194 = !DILocation(line: 357, column: 13, scope: !2189)
!2195 = !DILocation(line: 358, column: 43, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !409, line: 358, column: 11)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !409, line: 358, column: 11)
!2198 = !DILocation(line: 358, column: 11, scope: !2197)
!2199 = !DILocation(line: 359, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !409, line: 359, column: 13)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !409, line: 359, column: 13)
!2202 = !DILocation(line: 359, column: 13, scope: !2201)
!2203 = !DILocation(line: 358, column: 70, scope: !2196)
!2204 = distinct !{!2204, !2198, !2205}
!2205 = !DILocation(line: 359, column: 13, scope: !2197)
!2206 = !DILocation(line: 362, column: 28, scope: !2189)
!2207 = !DILocation(line: 364, column: 7, scope: !2179)
!2208 = !DILocation(line: 367, column: 7, scope: !2179)
!2209 = !DILocation(line: 370, column: 7, scope: !2179)
!2210 = !DILocation(line: 373, column: 12, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2179, file: !409, line: 373, column: 11)
!2212 = !DILocation(line: 373, column: 11, scope: !2179)
!2213 = !DILocation(line: 378, column: 12, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2179, file: !409, line: 378, column: 11)
!2215 = !DILocation(line: 378, column: 11, scope: !2179)
!2216 = !DILocation(line: 379, column: 9, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !409, line: 379, column: 9)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !409, line: 379, column: 9)
!2219 = !DILocation(line: 379, column: 9, scope: !2218)
!2220 = !DILocation(line: 386, column: 7, scope: !2179)
!2221 = !DILocation(line: 389, column: 7, scope: !2179)
!2222 = !DILocation(line: 255, column: 10, scope: !2089)
!2223 = !DILocation(line: 392, column: 8, scope: !2118)
!2224 = !DILocation(line: 392, column: 27, scope: !2117)
!2225 = !DILocation(line: 392, column: 19, scope: !2117)
!2226 = !DILocation(line: 392, column: 60, scope: !2117)
!2227 = !DILocation(line: 392, column: 3, scope: !2118)
!2228 = !DILocation(line: 392, column: 41, scope: !2117)
!2229 = !DILocation(line: 392, column: 48, scope: !2117)
!2230 = !DILocation(line: 396, column: 12, scope: !2116)
!2231 = !DILocation(line: 397, column: 12, scope: !2116)
!2232 = !DILocation(line: 398, column: 12, scope: !2116)
!2233 = !DILocation(line: 401, column: 11, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 400, column: 11)
!2235 = !DILocation(line: 403, column: 17, scope: !2234)
!2236 = !DILocation(line: 404, column: 39, scope: !2234)
!2237 = !DILocation(line: 408, column: 32, scope: !2234)
!2238 = !DILocation(line: 404, column: 19, scope: !2234)
!2239 = !DILocation(line: 404, column: 15, scope: !2234)
!2240 = !DILocation(line: 409, column: 11, scope: !2234)
!2241 = !DILocation(line: 409, column: 26, scope: !2234)
!2242 = !DILocation(line: 409, column: 14, scope: !2234)
!2243 = !DILocation(line: 409, column: 63, scope: !2234)
!2244 = !DILocation(line: 400, column: 11, scope: !2116)
!2245 = !DILocation(line: 416, column: 11, scope: !2116)
!2246 = !DILocation(line: 394, column: 21, scope: !2116)
!2247 = !DILocation(line: 417, column: 7, scope: !2116)
!2248 = !DILocation(line: 420, column: 15, scope: !2125)
!2249 = !DILocation(line: 422, column: 15, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !409, line: 422, column: 15)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !409, line: 421, column: 13)
!2252 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 420, column: 15)
!2253 = !DILocation(line: 422, column: 15, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !409, line: 422, column: 15)
!2255 = !DILocation(line: 422, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !409, line: 422, column: 15)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !409, line: 422, column: 15)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !409, line: 422, column: 15)
!2259 = !DILocation(line: 422, column: 15, scope: !2257)
!2260 = !DILocation(line: 422, column: 15, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !409, line: 422, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !409, line: 422, column: 15)
!2263 = !DILocation(line: 422, column: 15, scope: !2262)
!2264 = !DILocation(line: 422, column: 15, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !409, line: 422, column: 15)
!2266 = distinct !DILexicalBlock(scope: !2258, file: !409, line: 422, column: 15)
!2267 = !DILocation(line: 422, column: 15, scope: !2266)
!2268 = !DILocation(line: 422, column: 15, scope: !2258)
!2269 = !DILocation(line: 422, column: 15, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !409, line: 422, column: 15)
!2271 = distinct !DILexicalBlock(scope: !2250, file: !409, line: 422, column: 15)
!2272 = !DILocation(line: 422, column: 15, scope: !2271)
!2273 = !DILocation(line: 430, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2251, file: !409, line: 429, column: 19)
!2275 = !DILocation(line: 430, column: 24, scope: !2274)
!2276 = !DILocation(line: 430, column: 28, scope: !2274)
!2277 = !DILocation(line: 430, column: 38, scope: !2274)
!2278 = !DILocation(line: 430, column: 48, scope: !2274)
!2279 = !DILocation(line: 430, column: 59, scope: !2274)
!2280 = !DILocation(line: 432, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !409, line: 432, column: 19)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !409, line: 432, column: 19)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !409, line: 431, column: 17)
!2284 = !DILocation(line: 432, column: 19, scope: !2282)
!2285 = !DILocation(line: 433, column: 19, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !409, line: 433, column: 19)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !409, line: 433, column: 19)
!2288 = !DILocation(line: 433, column: 19, scope: !2287)
!2289 = !DILocation(line: 434, column: 17, scope: !2283)
!2290 = !DILocation(line: 441, column: 20, scope: !2252)
!2291 = !DILocation(line: 446, column: 11, scope: !2125)
!2292 = !DILocation(line: 449, column: 19, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 447, column: 13)
!2294 = !DILocation(line: 455, column: 19, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2293, file: !409, line: 454, column: 19)
!2296 = !DILocation(line: 455, column: 24, scope: !2295)
!2297 = !DILocation(line: 455, column: 28, scope: !2295)
!2298 = !DILocation(line: 455, column: 38, scope: !2295)
!2299 = !DILocation(line: 455, column: 47, scope: !2295)
!2300 = !DILocation(line: 455, column: 41, scope: !2295)
!2301 = !DILocation(line: 455, column: 52, scope: !2295)
!2302 = !DILocation(line: 454, column: 19, scope: !2293)
!2303 = !DILocation(line: 456, column: 25, scope: !2295)
!2304 = !DILocation(line: 456, column: 17, scope: !2295)
!2305 = !DILocation(line: 463, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2295, file: !409, line: 457, column: 19)
!2307 = !DILocation(line: 467, column: 21, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !409, line: 467, column: 21)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !409, line: 467, column: 21)
!2310 = !DILocation(line: 467, column: 21, scope: !2309)
!2311 = !DILocation(line: 468, column: 21, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !409, line: 468, column: 21)
!2313 = distinct !DILexicalBlock(scope: !2306, file: !409, line: 468, column: 21)
!2314 = !DILocation(line: 468, column: 21, scope: !2313)
!2315 = !DILocation(line: 469, column: 21, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !409, line: 469, column: 21)
!2317 = distinct !DILexicalBlock(scope: !2306, file: !409, line: 469, column: 21)
!2318 = !DILocation(line: 469, column: 21, scope: !2317)
!2319 = !DILocation(line: 470, column: 21, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !409, line: 470, column: 21)
!2321 = distinct !DILexicalBlock(scope: !2306, file: !409, line: 470, column: 21)
!2322 = !DILocation(line: 470, column: 21, scope: !2321)
!2323 = !DILocation(line: 471, column: 21, scope: !2306)
!2324 = !DILocation(line: 395, column: 21, scope: !2116)
!2325 = !DILocation(line: 484, column: 31, scope: !2125)
!2326 = !DILocation(line: 485, column: 31, scope: !2125)
!2327 = !DILocation(line: 487, column: 31, scope: !2125)
!2328 = !DILocation(line: 488, column: 31, scope: !2125)
!2329 = !DILocation(line: 489, column: 31, scope: !2125)
!2330 = !DILocation(line: 492, column: 15, scope: !2125)
!2331 = !DILocation(line: 494, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !409, line: 493, column: 13)
!2333 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 492, column: 15)
!2334 = !DILocation(line: 501, column: 33, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 501, column: 15)
!2336 = !DILocation(line: 506, column: 15, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 505, column: 15)
!2338 = !DILocation(line: 510, column: 15, scope: !2125)
!2339 = !DILocation(line: 518, column: 26, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 518, column: 15)
!2341 = !DILocation(line: 518, column: 15, scope: !2125)
!2342 = !DILocation(line: 518, column: 40, scope: !2340)
!2343 = !DILocation(line: 518, column: 47, scope: !2340)
!2344 = !DILocation(line: 522, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 522, column: 15)
!2346 = !DILocation(line: 518, column: 18, scope: !2340)
!2347 = !DILocation(line: 518, column: 65, scope: !2340)
!2348 = !DILocation(line: 522, column: 15, scope: !2125)
!2349 = !DILocation(line: 526, column: 11, scope: !2125)
!2350 = !DILocation(line: 541, column: 15, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 540, column: 15)
!2352 = !DILocation(line: 548, column: 15, scope: !2125)
!2353 = !DILocation(line: 550, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !409, line: 549, column: 13)
!2355 = distinct !DILexicalBlock(scope: !2125, file: !409, line: 548, column: 15)
!2356 = !DILocation(line: 553, column: 19, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !409, line: 553, column: 19)
!2358 = !DILocation(line: 553, column: 35, scope: !2357)
!2359 = !DILocation(line: 553, column: 30, scope: !2357)
!2360 = !DILocation(line: 562, column: 15, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !409, line: 562, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2354, file: !409, line: 562, column: 15)
!2363 = !DILocation(line: 562, column: 15, scope: !2362)
!2364 = !DILocation(line: 563, column: 15, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !409, line: 563, column: 15)
!2366 = distinct !DILexicalBlock(scope: !2354, file: !409, line: 563, column: 15)
!2367 = !DILocation(line: 563, column: 15, scope: !2366)
!2368 = !DILocation(line: 564, column: 15, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !409, line: 564, column: 15)
!2370 = distinct !DILexicalBlock(scope: !2354, file: !409, line: 564, column: 15)
!2371 = !DILocation(line: 564, column: 15, scope: !2370)
!2372 = !DILocation(line: 566, column: 13, scope: !2354)
!2373 = !DILocation(line: 606, column: 17, scope: !2124)
!2374 = !DILocation(line: 602, column: 20, scope: !2124)
!2375 = !DILocation(line: 609, column: 29, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2129, file: !409, line: 607, column: 15)
!2377 = !{!1044, !1044, i64 0}
!2378 = !DILocation(line: 609, column: 27, scope: !2376)
!2379 = !DILocation(line: 604, column: 18, scope: !2124)
!2380 = !DILocation(line: 610, column: 15, scope: !2376)
!2381 = !DILocation(line: 613, column: 17, scope: !2128)
!2382 = !DILocation(line: 614, column: 17, scope: !2128)
!2383 = !DILocation(line: 618, column: 29, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2128, file: !409, line: 618, column: 21)
!2385 = !DILocation(line: 618, column: 21, scope: !2128)
!2386 = !DILocation(line: 619, column: 29, scope: !2384)
!2387 = !DILocation(line: 619, column: 19, scope: !2384)
!2388 = !DILocation(line: 621, column: 17, scope: !2128)
!2389 = distinct !{!2389, !2388, !2390}
!2390 = !DILocation(line: 667, column: 44, scope: !2128)
!2391 = !DILocation(line: 623, column: 21, scope: !2143)
!2392 = !DILocation(line: 624, column: 56, scope: !2143)
!2393 = !DILocation(line: 624, column: 50, scope: !2143)
!2394 = !DILocation(line: 625, column: 53, scope: !2143)
!2395 = !DILocation(line: 613, column: 27, scope: !2128)
!2396 = !DILocation(line: 623, column: 29, scope: !2143)
!2397 = !DILocation(line: 624, column: 36, scope: !2143)
!2398 = !DILocation(line: 624, column: 28, scope: !2143)
!2399 = !DILocation(line: 626, column: 25, scope: !2143)
!2400 = !DILocation(line: 636, column: 38, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2150, file: !409, line: 634, column: 23)
!2402 = !DILocation(line: 636, column: 48, scope: !2401)
!2403 = !DILocation(line: 636, column: 51, scope: !2401)
!2404 = !DILocation(line: 636, column: 25, scope: !2401)
!2405 = !DILocation(line: 637, column: 28, scope: !2401)
!2406 = !DILocation(line: 636, column: 34, scope: !2401)
!2407 = distinct !{!2407, !2404, !2405}
!2408 = !DILocation(line: 650, column: 43, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !409, line: 650, column: 29)
!2410 = distinct !DILexicalBlock(scope: !2147, file: !409, line: 650, column: 29)
!2411 = !DILocation(line: 647, column: 29, scope: !2148)
!2412 = !DILocation(line: 649, column: 36, scope: !2147)
!2413 = !DILocation(line: 651, column: 49, scope: !2409)
!2414 = !DILocation(line: 651, column: 39, scope: !2409)
!2415 = !DILocation(line: 651, column: 31, scope: !2409)
!2416 = !DILocation(line: 650, column: 53, scope: !2409)
!2417 = !DILocation(line: 650, column: 29, scope: !2410)
!2418 = distinct !{!2418, !2417, !2419}
!2419 = !DILocation(line: 659, column: 33, scope: !2410)
!2420 = !DILocation(line: 666, column: 19, scope: !2128)
!2421 = !DILocation(line: 662, column: 41, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2149, file: !409, line: 662, column: 29)
!2423 = !DILocation(line: 662, column: 31, scope: !2422)
!2424 = !DILocation(line: 662, column: 29, scope: !2149)
!2425 = !DILocation(line: 664, column: 27, scope: !2149)
!2426 = !DILocation(line: 667, column: 26, scope: !2128)
!2427 = !DILocation(line: 667, column: 24, scope: !2128)
!2428 = !DILocation(line: 666, column: 19, scope: !2143)
!2429 = !DILocation(line: 668, column: 15, scope: !2129)
!2430 = !DILocation(line: 670, column: 40, scope: !2124)
!2431 = !DILocation(line: 672, column: 19, scope: !2155)
!2432 = !DILocation(line: 672, column: 45, scope: !2155)
!2433 = !DILocation(line: 672, column: 23, scope: !2155)
!2434 = !DILocation(line: 676, column: 33, scope: !2154)
!2435 = !DILocation(line: 676, column: 24, scope: !2154)
!2436 = !DILocation(line: 678, column: 17, scope: !2154)
!2437 = !DILocation(line: 680, column: 43, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !409, line: 680, column: 25)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !409, line: 679, column: 19)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !409, line: 678, column: 17)
!2441 = distinct !DILexicalBlock(scope: !2154, file: !409, line: 678, column: 17)
!2442 = !DILocation(line: 682, column: 25, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !409, line: 682, column: 25)
!2444 = distinct !DILexicalBlock(scope: !2438, file: !409, line: 681, column: 23)
!2445 = !DILocation(line: 682, column: 25, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !409, line: 682, column: 25)
!2447 = !DILocation(line: 682, column: 25, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !409, line: 682, column: 25)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !409, line: 682, column: 25)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !409, line: 682, column: 25)
!2451 = !DILocation(line: 682, column: 25, scope: !2449)
!2452 = !DILocation(line: 682, column: 25, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !409, line: 682, column: 25)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !409, line: 682, column: 25)
!2455 = !DILocation(line: 682, column: 25, scope: !2454)
!2456 = !DILocation(line: 682, column: 25, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !409, line: 682, column: 25)
!2458 = distinct !DILexicalBlock(scope: !2450, file: !409, line: 682, column: 25)
!2459 = !DILocation(line: 682, column: 25, scope: !2458)
!2460 = !DILocation(line: 682, column: 25, scope: !2450)
!2461 = !DILocation(line: 682, column: 25, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !409, line: 682, column: 25)
!2463 = distinct !DILexicalBlock(scope: !2443, file: !409, line: 682, column: 25)
!2464 = !DILocation(line: 682, column: 25, scope: !2463)
!2465 = !DILocation(line: 683, column: 25, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !409, line: 683, column: 25)
!2467 = distinct !DILexicalBlock(scope: !2444, file: !409, line: 683, column: 25)
!2468 = !DILocation(line: 683, column: 25, scope: !2467)
!2469 = !DILocation(line: 684, column: 25, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !409, line: 684, column: 25)
!2471 = distinct !DILexicalBlock(scope: !2444, file: !409, line: 684, column: 25)
!2472 = !DILocation(line: 684, column: 25, scope: !2471)
!2473 = !DILocation(line: 685, column: 38, scope: !2444)
!2474 = !DILocation(line: 685, column: 33, scope: !2444)
!2475 = !DILocation(line: 686, column: 23, scope: !2444)
!2476 = !DILocation(line: 687, column: 30, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2438, file: !409, line: 687, column: 30)
!2478 = !DILocation(line: 687, column: 30, scope: !2438)
!2479 = !DILocation(line: 689, column: 25, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !409, line: 689, column: 25)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !409, line: 689, column: 25)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !409, line: 688, column: 23)
!2483 = !DILocation(line: 689, column: 25, scope: !2481)
!2484 = !DILocation(line: 691, column: 23, scope: !2482)
!2485 = !DILocation(line: 692, column: 35, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2439, file: !409, line: 692, column: 25)
!2487 = !DILocation(line: 692, column: 30, scope: !2486)
!2488 = !DILocation(line: 692, column: 25, scope: !2439)
!2489 = !DILocation(line: 694, column: 21, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !409, line: 694, column: 21)
!2491 = distinct !DILexicalBlock(scope: !2439, file: !409, line: 694, column: 21)
!2492 = !DILocation(line: 694, column: 21, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !409, line: 694, column: 21)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !409, line: 694, column: 21)
!2495 = distinct !DILexicalBlock(scope: !2490, file: !409, line: 694, column: 21)
!2496 = !DILocation(line: 694, column: 21, scope: !2494)
!2497 = !DILocation(line: 694, column: 21, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !409, line: 694, column: 21)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !409, line: 694, column: 21)
!2500 = !DILocation(line: 694, column: 21, scope: !2499)
!2501 = !DILocation(line: 694, column: 21, scope: !2495)
!2502 = !DILocation(line: 695, column: 21, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !409, line: 695, column: 21)
!2504 = distinct !DILexicalBlock(scope: !2439, file: !409, line: 695, column: 21)
!2505 = !DILocation(line: 695, column: 21, scope: !2504)
!2506 = !DILocation(line: 696, column: 25, scope: !2439)
!2507 = !DILocation(line: 678, column: 17, scope: !2440)
!2508 = distinct !{!2508, !2509, !2510}
!2509 = !DILocation(line: 678, column: 17, scope: !2441)
!2510 = !DILocation(line: 697, column: 19, scope: !2441)
!2511 = !DILocation(line: 704, column: 34, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 704, column: 11)
!2513 = !DILocation(line: 706, column: 14, scope: !2512)
!2514 = !DILocation(line: 707, column: 14, scope: !2512)
!2515 = !DILocation(line: 707, column: 35, scope: !2512)
!2516 = !DILocation(line: 707, column: 17, scope: !2512)
!2517 = !DILocation(line: 707, column: 53, scope: !2512)
!2518 = !DILocation(line: 707, column: 47, scope: !2512)
!2519 = !DILocation(line: 707, column: 65, scope: !2512)
!2520 = !DILocation(line: 708, column: 15, scope: !2512)
!2521 = !DILocation(line: 708, column: 11, scope: !2512)
!2522 = !DILocation(line: 704, column: 11, scope: !2116)
!2523 = !DILocation(line: 712, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 712, column: 7)
!2525 = !DILocation(line: 712, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2524, file: !409, line: 712, column: 7)
!2527 = !DILocation(line: 712, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !409, line: 712, column: 7)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !409, line: 712, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2526, file: !409, line: 712, column: 7)
!2531 = !DILocation(line: 712, column: 7, scope: !2529)
!2532 = !DILocation(line: 712, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !409, line: 712, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !409, line: 712, column: 7)
!2535 = !DILocation(line: 712, column: 7, scope: !2534)
!2536 = !DILocation(line: 712, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !409, line: 712, column: 7)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !409, line: 712, column: 7)
!2539 = !DILocation(line: 712, column: 7, scope: !2538)
!2540 = !DILocation(line: 712, column: 7, scope: !2530)
!2541 = !DILocation(line: 712, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !409, line: 712, column: 7)
!2543 = distinct !DILexicalBlock(scope: !2524, file: !409, line: 712, column: 7)
!2544 = !DILocation(line: 712, column: 7, scope: !2543)
!2545 = !DILocation(line: 715, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !409, line: 715, column: 7)
!2547 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 715, column: 7)
!2548 = !DILocation(line: 715, column: 7, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !409, line: 715, column: 7)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !409, line: 715, column: 7)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !409, line: 715, column: 7)
!2552 = !DILocation(line: 715, column: 7, scope: !2550)
!2553 = !DILocation(line: 715, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !409, line: 715, column: 7)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !409, line: 715, column: 7)
!2556 = !DILocation(line: 715, column: 7, scope: !2555)
!2557 = !DILocation(line: 715, column: 7, scope: !2551)
!2558 = !DILocation(line: 716, column: 7, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !409, line: 716, column: 7)
!2560 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 716, column: 7)
!2561 = !DILocation(line: 716, column: 7, scope: !2560)
!2562 = !DILocation(line: 718, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2116, file: !409, line: 718, column: 11)
!2564 = !DILocation(line: 718, column: 11, scope: !2116)
!2565 = !DILocation(line: 720, column: 5, scope: !2117)
!2566 = !DILocation(line: 392, column: 75, scope: !2117)
!2567 = !DILocation(line: 392, column: 3, scope: !2117)
!2568 = distinct !{!2568, !2227, !2569}
!2569 = !DILocation(line: 720, column: 5, scope: !2118)
!2570 = !DILocation(line: 722, column: 11, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 722, column: 7)
!2572 = !DILocation(line: 722, column: 16, scope: !2571)
!2573 = !DILocation(line: 730, column: 51, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 730, column: 7)
!2575 = !DILocation(line: 731, column: 10, scope: !2574)
!2576 = !DILocation(line: 733, column: 11, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !409, line: 733, column: 11)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !409, line: 732, column: 5)
!2579 = !DILocation(line: 733, column: 11, scope: !2578)
!2580 = !DILocation(line: 734, column: 16, scope: !2577)
!2581 = !DILocation(line: 734, column: 9, scope: !2577)
!2582 = !DILocation(line: 738, column: 18, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2577, file: !409, line: 738, column: 16)
!2584 = !DILocation(line: 738, column: 32, scope: !2583)
!2585 = !DILocation(line: 738, column: 29, scope: !2583)
!2586 = !DILocation(line: 747, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 747, column: 7)
!2588 = !DILocation(line: 747, column: 20, scope: !2587)
!2589 = !DILocation(line: 748, column: 12, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !409, line: 748, column: 5)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !409, line: 748, column: 5)
!2592 = !DILocation(line: 748, column: 5, scope: !2591)
!2593 = !DILocation(line: 749, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !409, line: 749, column: 7)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !409, line: 749, column: 7)
!2596 = !DILocation(line: 749, column: 7, scope: !2595)
!2597 = !DILocation(line: 748, column: 39, scope: !2590)
!2598 = distinct !{!2598, !2592, !2599}
!2599 = !DILocation(line: 749, column: 7, scope: !2591)
!2600 = !DILocation(line: 751, column: 11, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 751, column: 7)
!2602 = !DILocation(line: 751, column: 7, scope: !2089)
!2603 = !DILocation(line: 752, column: 5, scope: !2601)
!2604 = !DILocation(line: 752, column: 17, scope: !2601)
!2605 = !DILocation(line: 758, column: 21, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2089, file: !409, line: 758, column: 7)
!2607 = !DILocation(line: 758, column: 54, scope: !2606)
!2608 = !DILocation(line: 758, column: 51, scope: !2606)
!2609 = !DILocation(line: 762, column: 42, scope: !2089)
!2610 = !DILocation(line: 760, column: 10, scope: !2089)
!2611 = !DILocation(line: 760, column: 3, scope: !2089)
!2612 = !DILocation(line: 764, column: 1, scope: !2089)
!2613 = distinct !DISubprogram(name: "gettext_quote", scope: !409, file: !409, line: 199, type: !2614, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!68, !68, !10}
!2616 = !{!2617, !2618, !2619, !2620}
!2617 = !DILocalVariable(name: "msgid", arg: 1, scope: !2613, file: !409, line: 199, type: !68)
!2618 = !DILocalVariable(name: "s", arg: 2, scope: !2613, file: !409, line: 199, type: !10)
!2619 = !DILocalVariable(name: "translation", scope: !2613, file: !409, line: 201, type: !68)
!2620 = !DILocalVariable(name: "locale_code", scope: !2613, file: !409, line: 202, type: !68)
!2621 = !DILocation(line: 199, column: 28, scope: !2613)
!2622 = !DILocation(line: 199, column: 54, scope: !2613)
!2623 = !DILocation(line: 201, column: 29, scope: !2613)
!2624 = !DILocation(line: 201, column: 15, scope: !2613)
!2625 = !DILocation(line: 204, column: 19, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2613, file: !409, line: 204, column: 7)
!2627 = !DILocation(line: 204, column: 7, scope: !2613)
!2628 = !DILocation(line: 225, column: 17, scope: !2613)
!2629 = !DILocation(line: 202, column: 15, scope: !2613)
!2630 = !DILocalVariable(name: "s2", arg: 2, scope: !2631, file: !2632, line: 160, type: !68)
!2631 = distinct !DISubprogram(name: "strcaseeq0", scope: !2632, file: !2632, line: 160, type: !2633, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2635)
!2632 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!72, !68, !68, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2635 = !{!2636, !2630, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2636 = !DILocalVariable(name: "s1", arg: 1, scope: !2631, file: !2632, line: 160, type: !68)
!2637 = !DILocalVariable(name: "s20", arg: 3, scope: !2631, file: !2632, line: 160, type: !26)
!2638 = !DILocalVariable(name: "s21", arg: 4, scope: !2631, file: !2632, line: 160, type: !26)
!2639 = !DILocalVariable(name: "s22", arg: 5, scope: !2631, file: !2632, line: 160, type: !26)
!2640 = !DILocalVariable(name: "s23", arg: 6, scope: !2631, file: !2632, line: 160, type: !26)
!2641 = !DILocalVariable(name: "s24", arg: 7, scope: !2631, file: !2632, line: 160, type: !26)
!2642 = !DILocalVariable(name: "s25", arg: 8, scope: !2631, file: !2632, line: 160, type: !26)
!2643 = !DILocalVariable(name: "s26", arg: 9, scope: !2631, file: !2632, line: 160, type: !26)
!2644 = !DILocalVariable(name: "s27", arg: 10, scope: !2631, file: !2632, line: 160, type: !26)
!2645 = !DILocalVariable(name: "s28", arg: 11, scope: !2631, file: !2632, line: 160, type: !26)
!2646 = !DILocation(line: 160, column: 41, scope: !2631, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 226, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2613, file: !409, line: 226, column: 7)
!2649 = !DILocation(line: 160, column: 120, scope: !2631, inlinedAt: !2647)
!2650 = !DILocation(line: 160, column: 130, scope: !2631, inlinedAt: !2647)
!2651 = !DILocation(line: 162, column: 7, scope: !2652, inlinedAt: !2647)
!2652 = distinct !DILexicalBlock(scope: !2631, file: !2632, line: 162, column: 7)
!2653 = !DILocalVariable(name: "s2", arg: 2, scope: !2654, file: !2632, line: 146, type: !68)
!2654 = distinct !DISubprogram(name: "strcaseeq1", scope: !2632, file: !2632, line: 146, type: !2655, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!72, !68, !68, !26, !26, !26, !26, !26, !26, !26, !26}
!2657 = !{!2658, !2653, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2658 = !DILocalVariable(name: "s1", arg: 1, scope: !2654, file: !2632, line: 146, type: !68)
!2659 = !DILocalVariable(name: "s21", arg: 3, scope: !2654, file: !2632, line: 146, type: !26)
!2660 = !DILocalVariable(name: "s22", arg: 4, scope: !2654, file: !2632, line: 146, type: !26)
!2661 = !DILocalVariable(name: "s23", arg: 5, scope: !2654, file: !2632, line: 146, type: !26)
!2662 = !DILocalVariable(name: "s24", arg: 6, scope: !2654, file: !2632, line: 146, type: !26)
!2663 = !DILocalVariable(name: "s25", arg: 7, scope: !2654, file: !2632, line: 146, type: !26)
!2664 = !DILocalVariable(name: "s26", arg: 8, scope: !2654, file: !2632, line: 146, type: !26)
!2665 = !DILocalVariable(name: "s27", arg: 9, scope: !2654, file: !2632, line: 146, type: !26)
!2666 = !DILocalVariable(name: "s28", arg: 10, scope: !2654, file: !2632, line: 146, type: !26)
!2667 = !DILocation(line: 146, column: 41, scope: !2654, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 167, column: 16, scope: !2669, inlinedAt: !2647)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !2632, line: 164, column: 11)
!2670 = distinct !DILexicalBlock(scope: !2652, file: !2632, line: 163, column: 5)
!2671 = !DILocation(line: 146, column: 110, scope: !2654, inlinedAt: !2668)
!2672 = !DILocation(line: 146, column: 120, scope: !2654, inlinedAt: !2668)
!2673 = !DILocation(line: 148, column: 7, scope: !2674, inlinedAt: !2668)
!2674 = distinct !DILexicalBlock(scope: !2654, file: !2632, line: 148, column: 7)
!2675 = !DILocalVariable(name: "s2", arg: 2, scope: !2676, file: !2632, line: 132, type: !68)
!2676 = distinct !DISubprogram(name: "strcaseeq2", scope: !2632, file: !2632, line: 132, type: !2677, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!72, !68, !68, !26, !26, !26, !26, !26, !26, !26}
!2679 = !{!2680, !2675, !2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2680 = !DILocalVariable(name: "s1", arg: 1, scope: !2676, file: !2632, line: 132, type: !68)
!2681 = !DILocalVariable(name: "s22", arg: 3, scope: !2676, file: !2632, line: 132, type: !26)
!2682 = !DILocalVariable(name: "s23", arg: 4, scope: !2676, file: !2632, line: 132, type: !26)
!2683 = !DILocalVariable(name: "s24", arg: 5, scope: !2676, file: !2632, line: 132, type: !26)
!2684 = !DILocalVariable(name: "s25", arg: 6, scope: !2676, file: !2632, line: 132, type: !26)
!2685 = !DILocalVariable(name: "s26", arg: 7, scope: !2676, file: !2632, line: 132, type: !26)
!2686 = !DILocalVariable(name: "s27", arg: 8, scope: !2676, file: !2632, line: 132, type: !26)
!2687 = !DILocalVariable(name: "s28", arg: 9, scope: !2676, file: !2632, line: 132, type: !26)
!2688 = !DILocation(line: 132, column: 41, scope: !2676, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 153, column: 16, scope: !2690, inlinedAt: !2668)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !2632, line: 150, column: 11)
!2691 = distinct !DILexicalBlock(scope: !2674, file: !2632, line: 149, column: 5)
!2692 = !DILocation(line: 132, column: 100, scope: !2676, inlinedAt: !2689)
!2693 = !DILocation(line: 132, column: 110, scope: !2676, inlinedAt: !2689)
!2694 = !DILocation(line: 134, column: 7, scope: !2695, inlinedAt: !2689)
!2695 = distinct !DILexicalBlock(scope: !2676, file: !2632, line: 134, column: 7)
!2696 = !DILocalVariable(name: "s2", arg: 2, scope: !2697, file: !2632, line: 118, type: !68)
!2697 = distinct !DISubprogram(name: "strcaseeq3", scope: !2632, file: !2632, line: 118, type: !2698, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!72, !68, !68, !26, !26, !26, !26, !26, !26}
!2700 = !{!2701, !2696, !2702, !2703, !2704, !2705, !2706, !2707}
!2701 = !DILocalVariable(name: "s1", arg: 1, scope: !2697, file: !2632, line: 118, type: !68)
!2702 = !DILocalVariable(name: "s23", arg: 3, scope: !2697, file: !2632, line: 118, type: !26)
!2703 = !DILocalVariable(name: "s24", arg: 4, scope: !2697, file: !2632, line: 118, type: !26)
!2704 = !DILocalVariable(name: "s25", arg: 5, scope: !2697, file: !2632, line: 118, type: !26)
!2705 = !DILocalVariable(name: "s26", arg: 6, scope: !2697, file: !2632, line: 118, type: !26)
!2706 = !DILocalVariable(name: "s27", arg: 7, scope: !2697, file: !2632, line: 118, type: !26)
!2707 = !DILocalVariable(name: "s28", arg: 8, scope: !2697, file: !2632, line: 118, type: !26)
!2708 = !DILocation(line: 118, column: 41, scope: !2697, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 139, column: 16, scope: !2710, inlinedAt: !2689)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !2632, line: 136, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2695, file: !2632, line: 135, column: 5)
!2712 = !DILocation(line: 118, column: 90, scope: !2697, inlinedAt: !2709)
!2713 = !DILocation(line: 118, column: 100, scope: !2697, inlinedAt: !2709)
!2714 = !DILocation(line: 120, column: 7, scope: !2715, inlinedAt: !2709)
!2715 = distinct !DILexicalBlock(scope: !2697, file: !2632, line: 120, column: 7)
!2716 = !DILocation(line: 120, column: 7, scope: !2697, inlinedAt: !2709)
!2717 = !DILocalVariable(name: "s2", arg: 2, scope: !2718, file: !2632, line: 104, type: !68)
!2718 = distinct !DISubprogram(name: "strcaseeq4", scope: !2632, file: !2632, line: 104, type: !2719, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!72, !68, !68, !26, !26, !26, !26, !26}
!2721 = !{!2722, !2717, !2723, !2724, !2725, !2726, !2727}
!2722 = !DILocalVariable(name: "s1", arg: 1, scope: !2718, file: !2632, line: 104, type: !68)
!2723 = !DILocalVariable(name: "s24", arg: 3, scope: !2718, file: !2632, line: 104, type: !26)
!2724 = !DILocalVariable(name: "s25", arg: 4, scope: !2718, file: !2632, line: 104, type: !26)
!2725 = !DILocalVariable(name: "s26", arg: 5, scope: !2718, file: !2632, line: 104, type: !26)
!2726 = !DILocalVariable(name: "s27", arg: 6, scope: !2718, file: !2632, line: 104, type: !26)
!2727 = !DILocalVariable(name: "s28", arg: 7, scope: !2718, file: !2632, line: 104, type: !26)
!2728 = !DILocation(line: 104, column: 41, scope: !2718, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 125, column: 16, scope: !2730, inlinedAt: !2709)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !2632, line: 122, column: 11)
!2731 = distinct !DILexicalBlock(scope: !2715, file: !2632, line: 121, column: 5)
!2732 = !DILocation(line: 104, column: 80, scope: !2718, inlinedAt: !2729)
!2733 = !DILocation(line: 104, column: 90, scope: !2718, inlinedAt: !2729)
!2734 = !DILocation(line: 106, column: 7, scope: !2735, inlinedAt: !2729)
!2735 = distinct !DILexicalBlock(scope: !2718, file: !2632, line: 106, column: 7)
!2736 = !DILocation(line: 106, column: 7, scope: !2718, inlinedAt: !2729)
!2737 = !DILocalVariable(name: "s2", arg: 2, scope: !2738, file: !2632, line: 90, type: !68)
!2738 = distinct !DISubprogram(name: "strcaseeq5", scope: !2632, file: !2632, line: 90, type: !2739, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!72, !68, !68, !26, !26, !26, !26}
!2741 = !{!2742, !2737, !2743, !2744, !2745, !2746}
!2742 = !DILocalVariable(name: "s1", arg: 1, scope: !2738, file: !2632, line: 90, type: !68)
!2743 = !DILocalVariable(name: "s25", arg: 3, scope: !2738, file: !2632, line: 90, type: !26)
!2744 = !DILocalVariable(name: "s26", arg: 4, scope: !2738, file: !2632, line: 90, type: !26)
!2745 = !DILocalVariable(name: "s27", arg: 5, scope: !2738, file: !2632, line: 90, type: !26)
!2746 = !DILocalVariable(name: "s28", arg: 6, scope: !2738, file: !2632, line: 90, type: !26)
!2747 = !DILocation(line: 90, column: 41, scope: !2738, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 111, column: 16, scope: !2749, inlinedAt: !2729)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !2632, line: 108, column: 11)
!2750 = distinct !DILexicalBlock(scope: !2735, file: !2632, line: 107, column: 5)
!2751 = !DILocation(line: 90, column: 70, scope: !2738, inlinedAt: !2748)
!2752 = !DILocation(line: 90, column: 80, scope: !2738, inlinedAt: !2748)
!2753 = !DILocation(line: 92, column: 7, scope: !2754, inlinedAt: !2748)
!2754 = distinct !DILexicalBlock(scope: !2738, file: !2632, line: 92, column: 7)
!2755 = !DILocation(line: 92, column: 7, scope: !2738, inlinedAt: !2748)
!2756 = !DILocation(line: 227, column: 12, scope: !2648)
!2757 = !DILocation(line: 227, column: 21, scope: !2648)
!2758 = !DILocation(line: 227, column: 5, scope: !2648)
!2759 = !DILocation(line: 146, column: 41, scope: !2654, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 167, column: 16, scope: !2669, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 228, column: 7, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2613, file: !409, line: 228, column: 7)
!2763 = !DILocation(line: 146, column: 110, scope: !2654, inlinedAt: !2760)
!2764 = !DILocation(line: 146, column: 120, scope: !2654, inlinedAt: !2760)
!2765 = !DILocation(line: 148, column: 7, scope: !2674, inlinedAt: !2760)
!2766 = !DILocation(line: 132, column: 41, scope: !2676, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 153, column: 16, scope: !2690, inlinedAt: !2760)
!2768 = !DILocation(line: 132, column: 100, scope: !2676, inlinedAt: !2767)
!2769 = !DILocation(line: 132, column: 110, scope: !2676, inlinedAt: !2767)
!2770 = !DILocation(line: 134, column: 7, scope: !2695, inlinedAt: !2767)
!2771 = !DILocation(line: 134, column: 7, scope: !2676, inlinedAt: !2767)
!2772 = !DILocation(line: 118, column: 41, scope: !2697, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 139, column: 16, scope: !2710, inlinedAt: !2767)
!2774 = !DILocation(line: 118, column: 90, scope: !2697, inlinedAt: !2773)
!2775 = !DILocation(line: 118, column: 100, scope: !2697, inlinedAt: !2773)
!2776 = !DILocation(line: 120, column: 7, scope: !2715, inlinedAt: !2773)
!2777 = !DILocation(line: 120, column: 7, scope: !2697, inlinedAt: !2773)
!2778 = !DILocation(line: 104, column: 41, scope: !2718, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 125, column: 16, scope: !2730, inlinedAt: !2773)
!2780 = !DILocation(line: 104, column: 80, scope: !2718, inlinedAt: !2779)
!2781 = !DILocation(line: 104, column: 90, scope: !2718, inlinedAt: !2779)
!2782 = !DILocation(line: 106, column: 7, scope: !2735, inlinedAt: !2779)
!2783 = !DILocation(line: 106, column: 7, scope: !2718, inlinedAt: !2779)
!2784 = !DILocation(line: 90, column: 41, scope: !2738, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 111, column: 16, scope: !2749, inlinedAt: !2779)
!2786 = !DILocation(line: 90, column: 70, scope: !2738, inlinedAt: !2785)
!2787 = !DILocation(line: 90, column: 80, scope: !2738, inlinedAt: !2785)
!2788 = !DILocation(line: 92, column: 7, scope: !2754, inlinedAt: !2785)
!2789 = !DILocation(line: 92, column: 7, scope: !2738, inlinedAt: !2785)
!2790 = !DILocalVariable(name: "s2", arg: 2, scope: !2791, file: !2632, line: 76, type: !68)
!2791 = distinct !DISubprogram(name: "strcaseeq6", scope: !2632, file: !2632, line: 76, type: !2792, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!72, !68, !68, !26, !26, !26}
!2794 = !{!2795, !2790, !2796, !2797, !2798}
!2795 = !DILocalVariable(name: "s1", arg: 1, scope: !2791, file: !2632, line: 76, type: !68)
!2796 = !DILocalVariable(name: "s26", arg: 3, scope: !2791, file: !2632, line: 76, type: !26)
!2797 = !DILocalVariable(name: "s27", arg: 4, scope: !2791, file: !2632, line: 76, type: !26)
!2798 = !DILocalVariable(name: "s28", arg: 5, scope: !2791, file: !2632, line: 76, type: !26)
!2799 = !DILocation(line: 76, column: 41, scope: !2791, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 97, column: 16, scope: !2801, inlinedAt: !2785)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !2632, line: 94, column: 11)
!2802 = distinct !DILexicalBlock(scope: !2754, file: !2632, line: 93, column: 5)
!2803 = !DILocation(line: 76, column: 60, scope: !2791, inlinedAt: !2800)
!2804 = !DILocation(line: 76, column: 70, scope: !2791, inlinedAt: !2800)
!2805 = !DILocation(line: 78, column: 7, scope: !2806, inlinedAt: !2800)
!2806 = distinct !DILexicalBlock(scope: !2791, file: !2632, line: 78, column: 7)
!2807 = !DILocation(line: 78, column: 7, scope: !2791, inlinedAt: !2800)
!2808 = !DILocalVariable(name: "s2", arg: 2, scope: !2809, file: !2632, line: 62, type: !68)
!2809 = distinct !DISubprogram(name: "strcaseeq7", scope: !2632, file: !2632, line: 62, type: !2810, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!72, !68, !68, !26, !26}
!2812 = !{!2813, !2808, !2814, !2815}
!2813 = !DILocalVariable(name: "s1", arg: 1, scope: !2809, file: !2632, line: 62, type: !68)
!2814 = !DILocalVariable(name: "s27", arg: 3, scope: !2809, file: !2632, line: 62, type: !26)
!2815 = !DILocalVariable(name: "s28", arg: 4, scope: !2809, file: !2632, line: 62, type: !26)
!2816 = !DILocation(line: 62, column: 41, scope: !2809, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 83, column: 16, scope: !2818, inlinedAt: !2800)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !2632, line: 80, column: 11)
!2819 = distinct !DILexicalBlock(scope: !2806, file: !2632, line: 79, column: 5)
!2820 = !DILocation(line: 62, column: 50, scope: !2809, inlinedAt: !2817)
!2821 = !DILocation(line: 62, column: 60, scope: !2809, inlinedAt: !2817)
!2822 = !DILocation(line: 64, column: 7, scope: !2823, inlinedAt: !2817)
!2823 = distinct !DILexicalBlock(scope: !2809, file: !2632, line: 64, column: 7)
!2824 = !DILocation(line: 228, column: 7, scope: !2613)
!2825 = !DILocation(line: 229, column: 12, scope: !2762)
!2826 = !DILocation(line: 229, column: 21, scope: !2762)
!2827 = !DILocation(line: 229, column: 5, scope: !2762)
!2828 = !DILocation(line: 231, column: 13, scope: !2613)
!2829 = !DILocation(line: 231, column: 11, scope: !2613)
!2830 = !DILocation(line: 231, column: 3, scope: !2613)
!2831 = !DILocation(line: 232, column: 1, scope: !2613)
!2832 = distinct !DISubprogram(name: "quotearg_alloc", scope: !409, file: !409, line: 791, type: !2833, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!25, !68, !233, !1961}
!2835 = !{!2836, !2837, !2838}
!2836 = !DILocalVariable(name: "arg", arg: 1, scope: !2832, file: !409, line: 791, type: !68)
!2837 = !DILocalVariable(name: "argsize", arg: 2, scope: !2832, file: !409, line: 791, type: !233)
!2838 = !DILocalVariable(name: "o", arg: 3, scope: !2832, file: !409, line: 792, type: !1961)
!2839 = !DILocation(line: 791, column: 29, scope: !2832)
!2840 = !DILocation(line: 791, column: 41, scope: !2832)
!2841 = !DILocation(line: 792, column: 47, scope: !2832)
!2842 = !DILocalVariable(name: "arg", arg: 1, scope: !2843, file: !409, line: 804, type: !68)
!2843 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !409, file: !409, line: 804, type: !2844, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!25, !68, !233, !824, !1961}
!2846 = !{!2842, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854}
!2847 = !DILocalVariable(name: "argsize", arg: 2, scope: !2843, file: !409, line: 804, type: !233)
!2848 = !DILocalVariable(name: "size", arg: 3, scope: !2843, file: !409, line: 804, type: !824)
!2849 = !DILocalVariable(name: "o", arg: 4, scope: !2843, file: !409, line: 805, type: !1961)
!2850 = !DILocalVariable(name: "p", scope: !2843, file: !409, line: 807, type: !1961)
!2851 = !DILocalVariable(name: "e", scope: !2843, file: !409, line: 808, type: !72)
!2852 = !DILocalVariable(name: "flags", scope: !2843, file: !409, line: 810, type: !72)
!2853 = !DILocalVariable(name: "bufsize", scope: !2843, file: !409, line: 811, type: !233)
!2854 = !DILocalVariable(name: "buf", scope: !2843, file: !409, line: 815, type: !25)
!2855 = !DILocation(line: 804, column: 33, scope: !2843, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 794, column: 10, scope: !2832)
!2857 = !DILocation(line: 804, column: 45, scope: !2843, inlinedAt: !2856)
!2858 = !DILocation(line: 804, column: 62, scope: !2843, inlinedAt: !2856)
!2859 = !DILocation(line: 805, column: 51, scope: !2843, inlinedAt: !2856)
!2860 = !DILocation(line: 807, column: 37, scope: !2843, inlinedAt: !2856)
!2861 = !DILocation(line: 807, column: 33, scope: !2843, inlinedAt: !2856)
!2862 = !DILocation(line: 808, column: 11, scope: !2843, inlinedAt: !2856)
!2863 = !DILocation(line: 808, column: 7, scope: !2843, inlinedAt: !2856)
!2864 = !DILocation(line: 810, column: 18, scope: !2843, inlinedAt: !2856)
!2865 = !DILocation(line: 810, column: 24, scope: !2843, inlinedAt: !2856)
!2866 = !DILocation(line: 810, column: 7, scope: !2843, inlinedAt: !2856)
!2867 = !DILocation(line: 811, column: 69, scope: !2843, inlinedAt: !2856)
!2868 = !DILocation(line: 812, column: 53, scope: !2843, inlinedAt: !2856)
!2869 = !DILocation(line: 813, column: 49, scope: !2843, inlinedAt: !2856)
!2870 = !DILocation(line: 814, column: 49, scope: !2843, inlinedAt: !2856)
!2871 = !DILocation(line: 811, column: 20, scope: !2843, inlinedAt: !2856)
!2872 = !DILocation(line: 814, column: 62, scope: !2843, inlinedAt: !2856)
!2873 = !DILocation(line: 811, column: 10, scope: !2843, inlinedAt: !2856)
!2874 = !DILocalVariable(name: "n", arg: 1, scope: !2875, file: !820, line: 220, type: !233)
!2875 = distinct !DISubprogram(name: "xcharalloc", scope: !820, file: !820, line: 220, type: !2876, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!25, !233}
!2878 = !{!2874}
!2879 = !DILocation(line: 220, column: 20, scope: !2875, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 815, column: 15, scope: !2843, inlinedAt: !2856)
!2881 = !DILocation(line: 222, column: 10, scope: !2875, inlinedAt: !2880)
!2882 = !DILocation(line: 815, column: 9, scope: !2843, inlinedAt: !2856)
!2883 = !DILocation(line: 816, column: 60, scope: !2843, inlinedAt: !2856)
!2884 = !DILocation(line: 818, column: 32, scope: !2843, inlinedAt: !2856)
!2885 = !DILocation(line: 818, column: 47, scope: !2843, inlinedAt: !2856)
!2886 = !DILocation(line: 816, column: 3, scope: !2843, inlinedAt: !2856)
!2887 = !DILocation(line: 819, column: 9, scope: !2843, inlinedAt: !2856)
!2888 = !DILocation(line: 794, column: 3, scope: !2832)
!2889 = !DILocation(line: 804, column: 33, scope: !2843)
!2890 = !DILocation(line: 804, column: 45, scope: !2843)
!2891 = !DILocation(line: 804, column: 62, scope: !2843)
!2892 = !DILocation(line: 805, column: 51, scope: !2843)
!2893 = !DILocation(line: 807, column: 37, scope: !2843)
!2894 = !DILocation(line: 807, column: 33, scope: !2843)
!2895 = !DILocation(line: 808, column: 11, scope: !2843)
!2896 = !DILocation(line: 808, column: 7, scope: !2843)
!2897 = !DILocation(line: 810, column: 18, scope: !2843)
!2898 = !DILocation(line: 810, column: 27, scope: !2843)
!2899 = !DILocation(line: 810, column: 24, scope: !2843)
!2900 = !DILocation(line: 810, column: 7, scope: !2843)
!2901 = !DILocation(line: 811, column: 69, scope: !2843)
!2902 = !DILocation(line: 812, column: 53, scope: !2843)
!2903 = !DILocation(line: 813, column: 49, scope: !2843)
!2904 = !DILocation(line: 814, column: 49, scope: !2843)
!2905 = !DILocation(line: 811, column: 20, scope: !2843)
!2906 = !DILocation(line: 814, column: 62, scope: !2843)
!2907 = !DILocation(line: 811, column: 10, scope: !2843)
!2908 = !DILocation(line: 220, column: 20, scope: !2875, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 815, column: 15, scope: !2843)
!2910 = !DILocation(line: 222, column: 10, scope: !2875, inlinedAt: !2909)
!2911 = !DILocation(line: 815, column: 9, scope: !2843)
!2912 = !DILocation(line: 816, column: 60, scope: !2843)
!2913 = !DILocation(line: 818, column: 32, scope: !2843)
!2914 = !DILocation(line: 818, column: 47, scope: !2843)
!2915 = !DILocation(line: 816, column: 3, scope: !2843)
!2916 = !DILocation(line: 819, column: 9, scope: !2843)
!2917 = !DILocation(line: 820, column: 7, scope: !2843)
!2918 = !DILocation(line: 821, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2843, file: !409, line: 820, column: 7)
!2920 = !DILocation(line: 821, column: 5, scope: !2919)
!2921 = !DILocation(line: 822, column: 3, scope: !2843)
!2922 = distinct !DISubprogram(name: "quotearg_free", scope: !409, file: !409, line: 840, type: !1088, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2923)
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "sv", scope: !2922, file: !409, line: 842, type: !430)
!2925 = !DILocalVariable(name: "i", scope: !2922, file: !409, line: 843, type: !72)
!2926 = !DILocation(line: 842, column: 24, scope: !2922)
!2927 = !DILocation(line: 842, column: 19, scope: !2922)
!2928 = !DILocation(line: 843, column: 7, scope: !2922)
!2929 = !DILocation(line: 844, column: 19, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !409, line: 844, column: 3)
!2931 = distinct !DILexicalBlock(scope: !2922, file: !409, line: 844, column: 3)
!2932 = !DILocation(line: 844, column: 17, scope: !2930)
!2933 = !DILocation(line: 844, column: 3, scope: !2931)
!2934 = !DILocation(line: 845, column: 17, scope: !2930)
!2935 = !{!2936, !878, i64 8}
!2936 = !{!"slotvec", !1021, i64 0, !878, i64 8}
!2937 = !DILocation(line: 845, column: 5, scope: !2930)
!2938 = !DILocation(line: 844, column: 28, scope: !2930)
!2939 = distinct !{!2939, !2933, !2940}
!2940 = !DILocation(line: 845, column: 20, scope: !2931)
!2941 = !DILocation(line: 846, column: 13, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2922, file: !409, line: 846, column: 7)
!2943 = !DILocation(line: 846, column: 17, scope: !2942)
!2944 = !DILocation(line: 846, column: 7, scope: !2922)
!2945 = !DILocation(line: 848, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !409, line: 847, column: 5)
!2947 = !DILocation(line: 849, column: 21, scope: !2946)
!2948 = !{!2936, !1021, i64 0}
!2949 = !DILocation(line: 850, column: 20, scope: !2946)
!2950 = !DILocation(line: 851, column: 5, scope: !2946)
!2951 = !DILocation(line: 852, column: 10, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2922, file: !409, line: 852, column: 7)
!2953 = !DILocation(line: 852, column: 7, scope: !2922)
!2954 = !DILocation(line: 854, column: 13, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !409, line: 853, column: 5)
!2956 = !DILocation(line: 854, column: 7, scope: !2955)
!2957 = !DILocation(line: 855, column: 15, scope: !2955)
!2958 = !DILocation(line: 856, column: 5, scope: !2955)
!2959 = !DILocation(line: 857, column: 10, scope: !2922)
!2960 = !DILocation(line: 858, column: 1, scope: !2922)
!2961 = distinct !DISubprogram(name: "quotearg_n", scope: !409, file: !409, line: 922, type: !2962, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!25, !72, !68}
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "n", arg: 1, scope: !2961, file: !409, line: 922, type: !72)
!2966 = !DILocalVariable(name: "arg", arg: 2, scope: !2961, file: !409, line: 922, type: !68)
!2967 = !DILocation(line: 922, column: 17, scope: !2961)
!2968 = !DILocation(line: 922, column: 32, scope: !2961)
!2969 = !DILocation(line: 924, column: 10, scope: !2961)
!2970 = !DILocation(line: 924, column: 3, scope: !2961)
!2971 = distinct !DISubprogram(name: "quotearg_n_options", scope: !409, file: !409, line: 869, type: !2972, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!25, !72, !68, !233, !1961}
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2984, !2986, !2987, !2988}
!2975 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !409, line: 869, type: !72)
!2976 = !DILocalVariable(name: "arg", arg: 2, scope: !2971, file: !409, line: 869, type: !68)
!2977 = !DILocalVariable(name: "argsize", arg: 3, scope: !2971, file: !409, line: 869, type: !233)
!2978 = !DILocalVariable(name: "options", arg: 4, scope: !2971, file: !409, line: 870, type: !1961)
!2979 = !DILocalVariable(name: "e", scope: !2971, file: !409, line: 872, type: !72)
!2980 = !DILocalVariable(name: "sv", scope: !2971, file: !409, line: 874, type: !430)
!2981 = !DILocalVariable(name: "preallocated", scope: !2982, file: !409, line: 881, type: !37)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !409, line: 880, column: 5)
!2983 = distinct !DILexicalBlock(scope: !2971, file: !409, line: 879, column: 7)
!2984 = !DILocalVariable(name: "size", scope: !2985, file: !409, line: 894, type: !233)
!2985 = distinct !DILexicalBlock(scope: !2971, file: !409, line: 893, column: 3)
!2986 = !DILocalVariable(name: "val", scope: !2985, file: !409, line: 895, type: !25)
!2987 = !DILocalVariable(name: "flags", scope: !2985, file: !409, line: 897, type: !72)
!2988 = !DILocalVariable(name: "qsize", scope: !2985, file: !409, line: 898, type: !233)
!2989 = !DILocation(line: 869, column: 25, scope: !2971)
!2990 = !DILocation(line: 869, column: 40, scope: !2971)
!2991 = !DILocation(line: 869, column: 52, scope: !2971)
!2992 = !DILocation(line: 870, column: 51, scope: !2971)
!2993 = !DILocation(line: 872, column: 11, scope: !2971)
!2994 = !DILocation(line: 872, column: 7, scope: !2971)
!2995 = !DILocation(line: 874, column: 24, scope: !2971)
!2996 = !DILocation(line: 874, column: 19, scope: !2971)
!2997 = !DILocation(line: 876, column: 9, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2971, file: !409, line: 876, column: 7)
!2999 = !DILocation(line: 876, column: 7, scope: !2971)
!3000 = !DILocation(line: 877, column: 5, scope: !2998)
!3001 = !DILocation(line: 879, column: 7, scope: !2983)
!3002 = !DILocation(line: 879, column: 14, scope: !2983)
!3003 = !DILocation(line: 879, column: 7, scope: !2971)
!3004 = !DILocation(line: 881, column: 31, scope: !2982)
!3005 = !DILocation(line: 883, column: 67, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2982, file: !409, line: 883, column: 11)
!3007 = !DILocation(line: 883, column: 11, scope: !2982)
!3008 = !DILocation(line: 884, column: 9, scope: !3006)
!3009 = !DILocation(line: 886, column: 32, scope: !2982)
!3010 = !DILocation(line: 886, column: 61, scope: !2982)
!3011 = !DILocation(line: 886, column: 58, scope: !2982)
!3012 = !DILocation(line: 886, column: 66, scope: !2982)
!3013 = !DILocation(line: 886, column: 22, scope: !2982)
!3014 = !DILocation(line: 886, column: 15, scope: !2982)
!3015 = !DILocation(line: 887, column: 11, scope: !2982)
!3016 = !DILocation(line: 888, column: 15, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2982, file: !409, line: 887, column: 11)
!3018 = !{i64 0, i64 8, !1020, i64 8, i64 8, !877}
!3019 = !DILocation(line: 888, column: 9, scope: !3017)
!3020 = !DILocation(line: 889, column: 20, scope: !2982)
!3021 = !DILocation(line: 889, column: 18, scope: !2982)
!3022 = !DILocation(line: 889, column: 7, scope: !2982)
!3023 = !DILocation(line: 889, column: 38, scope: !2982)
!3024 = !DILocation(line: 889, column: 31, scope: !2982)
!3025 = !DILocation(line: 889, column: 48, scope: !2982)
!3026 = !DILocation(line: 890, column: 14, scope: !2982)
!3027 = !DILocation(line: 891, column: 5, scope: !2982)
!3028 = !DILocation(line: 894, column: 19, scope: !2985)
!3029 = !DILocation(line: 894, column: 25, scope: !2985)
!3030 = !DILocation(line: 894, column: 12, scope: !2985)
!3031 = !DILocation(line: 895, column: 23, scope: !2985)
!3032 = !DILocation(line: 895, column: 11, scope: !2985)
!3033 = !DILocation(line: 897, column: 26, scope: !2985)
!3034 = !DILocation(line: 897, column: 32, scope: !2985)
!3035 = !DILocation(line: 897, column: 9, scope: !2985)
!3036 = !DILocation(line: 899, column: 55, scope: !2985)
!3037 = !DILocation(line: 900, column: 46, scope: !2985)
!3038 = !DILocation(line: 901, column: 55, scope: !2985)
!3039 = !DILocation(line: 902, column: 55, scope: !2985)
!3040 = !DILocation(line: 898, column: 20, scope: !2985)
!3041 = !DILocation(line: 898, column: 12, scope: !2985)
!3042 = !DILocation(line: 904, column: 14, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2985, file: !409, line: 904, column: 9)
!3044 = !DILocation(line: 904, column: 9, scope: !2985)
!3045 = !DILocation(line: 906, column: 35, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !409, line: 905, column: 7)
!3047 = !DILocation(line: 906, column: 20, scope: !3046)
!3048 = !DILocation(line: 907, column: 17, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !409, line: 907, column: 13)
!3050 = !DILocation(line: 907, column: 13, scope: !3046)
!3051 = !DILocation(line: 908, column: 11, scope: !3049)
!3052 = !DILocation(line: 220, column: 20, scope: !2875, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 909, column: 27, scope: !3046)
!3054 = !DILocation(line: 222, column: 10, scope: !2875, inlinedAt: !3053)
!3055 = !DILocation(line: 909, column: 19, scope: !3046)
!3056 = !DILocation(line: 910, column: 69, scope: !3046)
!3057 = !DILocation(line: 912, column: 44, scope: !3046)
!3058 = !DILocation(line: 913, column: 44, scope: !3046)
!3059 = !DILocation(line: 910, column: 9, scope: !3046)
!3060 = !DILocation(line: 914, column: 7, scope: !3046)
!3061 = !DILocation(line: 916, column: 11, scope: !2985)
!3062 = !DILocation(line: 917, column: 5, scope: !2985)
!3063 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !409, file: !409, line: 928, type: !3064, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!25, !72, !68, !233}
!3066 = !{!3067, !3068, !3069}
!3067 = !DILocalVariable(name: "n", arg: 1, scope: !3063, file: !409, line: 928, type: !72)
!3068 = !DILocalVariable(name: "arg", arg: 2, scope: !3063, file: !409, line: 928, type: !68)
!3069 = !DILocalVariable(name: "argsize", arg: 3, scope: !3063, file: !409, line: 928, type: !233)
!3070 = !DILocation(line: 928, column: 21, scope: !3063)
!3071 = !DILocation(line: 928, column: 36, scope: !3063)
!3072 = !DILocation(line: 928, column: 48, scope: !3063)
!3073 = !DILocation(line: 930, column: 10, scope: !3063)
!3074 = !DILocation(line: 930, column: 3, scope: !3063)
!3075 = distinct !DISubprogram(name: "quotearg", scope: !409, file: !409, line: 934, type: !1714, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3076)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !409, line: 934, type: !68)
!3078 = !DILocation(line: 934, column: 23, scope: !3075)
!3079 = !DILocation(line: 922, column: 17, scope: !2961, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 936, column: 10, scope: !3075)
!3081 = !DILocation(line: 922, column: 32, scope: !2961, inlinedAt: !3080)
!3082 = !DILocation(line: 924, column: 10, scope: !2961, inlinedAt: !3080)
!3083 = !DILocation(line: 936, column: 3, scope: !3075)
!3084 = distinct !DISubprogram(name: "quotearg_mem", scope: !409, file: !409, line: 940, type: !3085, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!25, !68, !233}
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "arg", arg: 1, scope: !3084, file: !409, line: 940, type: !68)
!3089 = !DILocalVariable(name: "argsize", arg: 2, scope: !3084, file: !409, line: 940, type: !233)
!3090 = !DILocation(line: 940, column: 27, scope: !3084)
!3091 = !DILocation(line: 940, column: 39, scope: !3084)
!3092 = !DILocation(line: 928, column: 21, scope: !3063, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 942, column: 10, scope: !3084)
!3094 = !DILocation(line: 928, column: 36, scope: !3063, inlinedAt: !3093)
!3095 = !DILocation(line: 928, column: 48, scope: !3063, inlinedAt: !3093)
!3096 = !DILocation(line: 930, column: 10, scope: !3063, inlinedAt: !3093)
!3097 = !DILocation(line: 942, column: 3, scope: !3084)
!3098 = distinct !DISubprogram(name: "quotearg_n_style", scope: !409, file: !409, line: 946, type: !3099, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!25, !72, !10, !68}
!3101 = !{!3102, !3103, !3104, !3105}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3098, file: !409, line: 946, type: !72)
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3098, file: !409, line: 946, type: !10)
!3104 = !DILocalVariable(name: "arg", arg: 3, scope: !3098, file: !409, line: 946, type: !68)
!3105 = !DILocalVariable(name: "o", scope: !3098, file: !409, line: 948, type: !1962)
!3106 = !DILocalVariable(name: "o", scope: !3107, file: !409, line: 187, type: !416)
!3107 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !409, file: !409, line: 185, type: !3108, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!416, !10}
!3110 = !{!3111, !3106}
!3111 = !DILocalVariable(name: "style", arg: 1, scope: !3107, file: !409, line: 185, type: !10)
!3112 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3113 = !DILocation(line: 187, column: 26, scope: !3107, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 948, column: 36, scope: !3098)
!3115 = !DILocation(line: 946, column: 23, scope: !3098)
!3116 = !DILocation(line: 946, column: 45, scope: !3098)
!3117 = !DILocation(line: 946, column: 60, scope: !3098)
!3118 = !DILocation(line: 948, column: 3, scope: !3098)
!3119 = !DILocation(line: 948, column: 32, scope: !3098)
!3120 = !DILocation(line: 185, column: 48, scope: !3107, inlinedAt: !3114)
!3121 = !DILocation(line: 187, column: 3, scope: !3107, inlinedAt: !3114)
!3122 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3123 = !DILocation(line: 188, column: 13, scope: !3124, inlinedAt: !3114)
!3124 = distinct !DILexicalBlock(scope: !3107, file: !409, line: 188, column: 7)
!3125 = !DILocation(line: 188, column: 7, scope: !3107, inlinedAt: !3114)
!3126 = !DILocation(line: 189, column: 5, scope: !3124, inlinedAt: !3114)
!3127 = !{!3128}
!3128 = distinct !{!3128, !3129, !"quoting_options_from_style: argument 0"}
!3129 = distinct !{!3129, !"quoting_options_from_style"}
!3130 = !DILocation(line: 191, column: 10, scope: !3107, inlinedAt: !3114)
!3131 = !DILocation(line: 192, column: 1, scope: !3107, inlinedAt: !3114)
!3132 = !DILocation(line: 949, column: 10, scope: !3098)
!3133 = !DILocation(line: 950, column: 1, scope: !3098)
!3134 = !DILocation(line: 949, column: 3, scope: !3098)
!3135 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !409, file: !409, line: 953, type: !3136, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!25, !72, !10, !68, !233}
!3138 = !{!3139, !3140, !3141, !3142, !3143}
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3135, file: !409, line: 953, type: !72)
!3140 = !DILocalVariable(name: "s", arg: 2, scope: !3135, file: !409, line: 953, type: !10)
!3141 = !DILocalVariable(name: "arg", arg: 3, scope: !3135, file: !409, line: 954, type: !68)
!3142 = !DILocalVariable(name: "argsize", arg: 4, scope: !3135, file: !409, line: 954, type: !233)
!3143 = !DILocalVariable(name: "o", scope: !3135, file: !409, line: 956, type: !1962)
!3144 = !DILocation(line: 187, column: 26, scope: !3107, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 956, column: 36, scope: !3135)
!3146 = !DILocation(line: 953, column: 27, scope: !3135)
!3147 = !DILocation(line: 953, column: 49, scope: !3135)
!3148 = !DILocation(line: 954, column: 35, scope: !3135)
!3149 = !DILocation(line: 954, column: 47, scope: !3135)
!3150 = !DILocation(line: 956, column: 3, scope: !3135)
!3151 = !DILocation(line: 956, column: 32, scope: !3135)
!3152 = !DILocation(line: 185, column: 48, scope: !3107, inlinedAt: !3145)
!3153 = !DILocation(line: 187, column: 3, scope: !3107, inlinedAt: !3145)
!3154 = !DILocation(line: 188, column: 13, scope: !3124, inlinedAt: !3145)
!3155 = !DILocation(line: 188, column: 7, scope: !3107, inlinedAt: !3145)
!3156 = !DILocation(line: 189, column: 5, scope: !3124, inlinedAt: !3145)
!3157 = !{!3158}
!3158 = distinct !{!3158, !3159, !"quoting_options_from_style: argument 0"}
!3159 = distinct !{!3159, !"quoting_options_from_style"}
!3160 = !DILocation(line: 191, column: 10, scope: !3107, inlinedAt: !3145)
!3161 = !DILocation(line: 192, column: 1, scope: !3107, inlinedAt: !3145)
!3162 = !DILocation(line: 957, column: 10, scope: !3135)
!3163 = !DILocation(line: 958, column: 1, scope: !3135)
!3164 = !DILocation(line: 957, column: 3, scope: !3135)
!3165 = distinct !DISubprogram(name: "quotearg_style", scope: !409, file: !409, line: 961, type: !3166, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!25, !10, !68}
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "s", arg: 1, scope: !3165, file: !409, line: 961, type: !10)
!3170 = !DILocalVariable(name: "arg", arg: 2, scope: !3165, file: !409, line: 961, type: !68)
!3171 = !DILocation(line: 187, column: 26, scope: !3107, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 948, column: 36, scope: !3098, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 963, column: 10, scope: !3165)
!3174 = !DILocation(line: 961, column: 36, scope: !3165)
!3175 = !DILocation(line: 961, column: 51, scope: !3165)
!3176 = !DILocation(line: 946, column: 23, scope: !3098, inlinedAt: !3173)
!3177 = !DILocation(line: 946, column: 45, scope: !3098, inlinedAt: !3173)
!3178 = !DILocation(line: 946, column: 60, scope: !3098, inlinedAt: !3173)
!3179 = !DILocation(line: 948, column: 3, scope: !3098, inlinedAt: !3173)
!3180 = !DILocation(line: 948, column: 32, scope: !3098, inlinedAt: !3173)
!3181 = !DILocation(line: 185, column: 48, scope: !3107, inlinedAt: !3172)
!3182 = !DILocation(line: 187, column: 3, scope: !3107, inlinedAt: !3172)
!3183 = !DILocation(line: 188, column: 13, scope: !3124, inlinedAt: !3172)
!3184 = !DILocation(line: 188, column: 7, scope: !3107, inlinedAt: !3172)
!3185 = !DILocation(line: 189, column: 5, scope: !3124, inlinedAt: !3172)
!3186 = !{!3187}
!3187 = distinct !{!3187, !3188, !"quoting_options_from_style: argument 0"}
!3188 = distinct !{!3188, !"quoting_options_from_style"}
!3189 = !DILocation(line: 191, column: 10, scope: !3107, inlinedAt: !3172)
!3190 = !DILocation(line: 192, column: 1, scope: !3107, inlinedAt: !3172)
!3191 = !DILocation(line: 949, column: 10, scope: !3098, inlinedAt: !3173)
!3192 = !DILocation(line: 950, column: 1, scope: !3098, inlinedAt: !3173)
!3193 = !DILocation(line: 963, column: 3, scope: !3165)
!3194 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !409, file: !409, line: 967, type: !3195, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!25, !10, !68, !233}
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "s", arg: 1, scope: !3194, file: !409, line: 967, type: !10)
!3199 = !DILocalVariable(name: "arg", arg: 2, scope: !3194, file: !409, line: 967, type: !68)
!3200 = !DILocalVariable(name: "argsize", arg: 3, scope: !3194, file: !409, line: 967, type: !233)
!3201 = !DILocation(line: 187, column: 26, scope: !3107, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 956, column: 36, scope: !3135, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 969, column: 10, scope: !3194)
!3204 = !DILocation(line: 967, column: 40, scope: !3194)
!3205 = !DILocation(line: 967, column: 55, scope: !3194)
!3206 = !DILocation(line: 967, column: 67, scope: !3194)
!3207 = !DILocation(line: 953, column: 27, scope: !3135, inlinedAt: !3203)
!3208 = !DILocation(line: 953, column: 49, scope: !3135, inlinedAt: !3203)
!3209 = !DILocation(line: 954, column: 35, scope: !3135, inlinedAt: !3203)
!3210 = !DILocation(line: 954, column: 47, scope: !3135, inlinedAt: !3203)
!3211 = !DILocation(line: 956, column: 3, scope: !3135, inlinedAt: !3203)
!3212 = !DILocation(line: 956, column: 32, scope: !3135, inlinedAt: !3203)
!3213 = !DILocation(line: 185, column: 48, scope: !3107, inlinedAt: !3202)
!3214 = !DILocation(line: 187, column: 3, scope: !3107, inlinedAt: !3202)
!3215 = !DILocation(line: 188, column: 13, scope: !3124, inlinedAt: !3202)
!3216 = !DILocation(line: 188, column: 7, scope: !3107, inlinedAt: !3202)
!3217 = !DILocation(line: 189, column: 5, scope: !3124, inlinedAt: !3202)
!3218 = !{!3219}
!3219 = distinct !{!3219, !3220, !"quoting_options_from_style: argument 0"}
!3220 = distinct !{!3220, !"quoting_options_from_style"}
!3221 = !DILocation(line: 191, column: 10, scope: !3107, inlinedAt: !3202)
!3222 = !DILocation(line: 192, column: 1, scope: !3107, inlinedAt: !3202)
!3223 = !DILocation(line: 957, column: 10, scope: !3135, inlinedAt: !3203)
!3224 = !DILocation(line: 958, column: 1, scope: !3135, inlinedAt: !3203)
!3225 = !DILocation(line: 969, column: 3, scope: !3194)
!3226 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !409, file: !409, line: 973, type: !3227, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!25, !68, !233, !26}
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DILocalVariable(name: "arg", arg: 1, scope: !3226, file: !409, line: 973, type: !68)
!3231 = !DILocalVariable(name: "argsize", arg: 2, scope: !3226, file: !409, line: 973, type: !233)
!3232 = !DILocalVariable(name: "ch", arg: 3, scope: !3226, file: !409, line: 973, type: !26)
!3233 = !DILocalVariable(name: "options", scope: !3226, file: !409, line: 975, type: !416)
!3234 = !DILocation(line: 973, column: 32, scope: !3226)
!3235 = !DILocation(line: 973, column: 44, scope: !3226)
!3236 = !DILocation(line: 973, column: 58, scope: !3226)
!3237 = !DILocation(line: 975, column: 3, scope: !3226)
!3238 = !DILocation(line: 976, column: 13, scope: !3226)
!3239 = !{i64 0, i64 4, !1041, i64 4, i64 4, !961, i64 8, i64 32, !1041, i64 40, i64 8, !877, i64 48, i64 8, !877}
!3240 = !DILocation(line: 975, column: 26, scope: !3226)
!3241 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 977, column: 3, scope: !3226)
!3243 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3242)
!3244 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3242)
!3245 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3242)
!3246 = !DILocation(line: 148, column: 62, scope: !1983, inlinedAt: !3242)
!3247 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3242)
!3248 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3242)
!3249 = !DILocation(line: 149, column: 18, scope: !1983, inlinedAt: !3242)
!3250 = !DILocation(line: 149, column: 15, scope: !1983, inlinedAt: !3242)
!3251 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3242)
!3252 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3242)
!3253 = !DILocation(line: 150, column: 15, scope: !1983, inlinedAt: !3242)
!3254 = !DILocation(line: 150, column: 25, scope: !1983, inlinedAt: !3242)
!3255 = !DILocation(line: 150, column: 7, scope: !1983, inlinedAt: !3242)
!3256 = !DILocation(line: 151, column: 18, scope: !1983, inlinedAt: !3242)
!3257 = !DILocation(line: 151, column: 23, scope: !1983, inlinedAt: !3242)
!3258 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3242)
!3259 = !DILocation(line: 978, column: 10, scope: !3226)
!3260 = !DILocation(line: 979, column: 1, scope: !3226)
!3261 = !DILocation(line: 978, column: 3, scope: !3226)
!3262 = distinct !DISubprogram(name: "quotearg_char", scope: !409, file: !409, line: 982, type: !3263, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!25, !68, !26}
!3265 = !{!3266, !3267}
!3266 = !DILocalVariable(name: "arg", arg: 1, scope: !3262, file: !409, line: 982, type: !68)
!3267 = !DILocalVariable(name: "ch", arg: 2, scope: !3262, file: !409, line: 982, type: !26)
!3268 = !DILocation(line: 982, column: 28, scope: !3262)
!3269 = !DILocation(line: 982, column: 38, scope: !3262)
!3270 = !DILocation(line: 973, column: 32, scope: !3226, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 984, column: 10, scope: !3262)
!3272 = !DILocation(line: 973, column: 44, scope: !3226, inlinedAt: !3271)
!3273 = !DILocation(line: 973, column: 58, scope: !3226, inlinedAt: !3271)
!3274 = !DILocation(line: 975, column: 3, scope: !3226, inlinedAt: !3271)
!3275 = !DILocation(line: 976, column: 13, scope: !3226, inlinedAt: !3271)
!3276 = !DILocation(line: 975, column: 26, scope: !3226, inlinedAt: !3271)
!3277 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 977, column: 3, scope: !3226, inlinedAt: !3271)
!3279 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3278)
!3280 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3278)
!3281 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3278)
!3282 = !DILocation(line: 148, column: 62, scope: !1983, inlinedAt: !3278)
!3283 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3278)
!3284 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3278)
!3285 = !DILocation(line: 149, column: 18, scope: !1983, inlinedAt: !3278)
!3286 = !DILocation(line: 149, column: 15, scope: !1983, inlinedAt: !3278)
!3287 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3278)
!3288 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3278)
!3289 = !DILocation(line: 150, column: 15, scope: !1983, inlinedAt: !3278)
!3290 = !DILocation(line: 150, column: 25, scope: !1983, inlinedAt: !3278)
!3291 = !DILocation(line: 150, column: 7, scope: !1983, inlinedAt: !3278)
!3292 = !DILocation(line: 151, column: 18, scope: !1983, inlinedAt: !3278)
!3293 = !DILocation(line: 151, column: 23, scope: !1983, inlinedAt: !3278)
!3294 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3278)
!3295 = !DILocation(line: 978, column: 10, scope: !3226, inlinedAt: !3271)
!3296 = !DILocation(line: 979, column: 1, scope: !3226, inlinedAt: !3271)
!3297 = !DILocation(line: 984, column: 3, scope: !3262)
!3298 = distinct !DISubprogram(name: "quotearg_colon", scope: !409, file: !409, line: 988, type: !1714, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "arg", arg: 1, scope: !3298, file: !409, line: 988, type: !68)
!3301 = !DILocation(line: 988, column: 29, scope: !3298)
!3302 = !DILocation(line: 982, column: 28, scope: !3262, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 990, column: 10, scope: !3298)
!3304 = !DILocation(line: 982, column: 38, scope: !3262, inlinedAt: !3303)
!3305 = !DILocation(line: 973, column: 32, scope: !3226, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 984, column: 10, scope: !3262, inlinedAt: !3303)
!3307 = !DILocation(line: 973, column: 44, scope: !3226, inlinedAt: !3306)
!3308 = !DILocation(line: 973, column: 58, scope: !3226, inlinedAt: !3306)
!3309 = !DILocation(line: 975, column: 3, scope: !3226, inlinedAt: !3306)
!3310 = !DILocation(line: 976, column: 13, scope: !3226, inlinedAt: !3306)
!3311 = !DILocation(line: 975, column: 26, scope: !3226, inlinedAt: !3306)
!3312 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 977, column: 3, scope: !3226, inlinedAt: !3306)
!3314 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3313)
!3315 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3313)
!3316 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3313)
!3317 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3313)
!3318 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3313)
!3319 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3313)
!3320 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3313)
!3321 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3313)
!3322 = !DILocation(line: 978, column: 10, scope: !3226, inlinedAt: !3306)
!3323 = !DILocation(line: 979, column: 1, scope: !3226, inlinedAt: !3306)
!3324 = !DILocation(line: 990, column: 3, scope: !3298)
!3325 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !409, file: !409, line: 994, type: !3085, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3326)
!3326 = !{!3327, !3328}
!3327 = !DILocalVariable(name: "arg", arg: 1, scope: !3325, file: !409, line: 994, type: !68)
!3328 = !DILocalVariable(name: "argsize", arg: 2, scope: !3325, file: !409, line: 994, type: !233)
!3329 = !DILocation(line: 994, column: 33, scope: !3325)
!3330 = !DILocation(line: 994, column: 45, scope: !3325)
!3331 = !DILocation(line: 973, column: 32, scope: !3226, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 996, column: 10, scope: !3325)
!3333 = !DILocation(line: 973, column: 44, scope: !3226, inlinedAt: !3332)
!3334 = !DILocation(line: 973, column: 58, scope: !3226, inlinedAt: !3332)
!3335 = !DILocation(line: 975, column: 3, scope: !3226, inlinedAt: !3332)
!3336 = !DILocation(line: 976, column: 13, scope: !3226, inlinedAt: !3332)
!3337 = !DILocation(line: 975, column: 26, scope: !3226, inlinedAt: !3332)
!3338 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 977, column: 3, scope: !3226, inlinedAt: !3332)
!3340 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3339)
!3341 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3339)
!3342 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3339)
!3343 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3339)
!3344 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3339)
!3345 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3339)
!3346 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3339)
!3347 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3339)
!3348 = !DILocation(line: 978, column: 10, scope: !3226, inlinedAt: !3332)
!3349 = !DILocation(line: 979, column: 1, scope: !3226, inlinedAt: !3332)
!3350 = !DILocation(line: 996, column: 3, scope: !3325)
!3351 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !409, file: !409, line: 1000, type: !3099, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3352)
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3351, file: !409, line: 1000, type: !72)
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3351, file: !409, line: 1000, type: !10)
!3355 = !DILocalVariable(name: "arg", arg: 3, scope: !3351, file: !409, line: 1000, type: !68)
!3356 = !DILocalVariable(name: "options", scope: !3351, file: !409, line: 1002, type: !416)
!3357 = !DILocation(line: 187, column: 26, scope: !3107, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 1003, column: 13, scope: !3351)
!3359 = !DILocation(line: 1000, column: 29, scope: !3351)
!3360 = !DILocation(line: 1000, column: 51, scope: !3351)
!3361 = !DILocation(line: 1000, column: 66, scope: !3351)
!3362 = !DILocation(line: 1002, column: 3, scope: !3351)
!3363 = !DILocation(line: 185, column: 48, scope: !3107, inlinedAt: !3358)
!3364 = !DILocation(line: 187, column: 3, scope: !3107, inlinedAt: !3358)
!3365 = !DILocation(line: 188, column: 13, scope: !3124, inlinedAt: !3358)
!3366 = !DILocation(line: 188, column: 7, scope: !3107, inlinedAt: !3358)
!3367 = !DILocation(line: 189, column: 5, scope: !3124, inlinedAt: !3358)
!3368 = !{!3369}
!3369 = distinct !{!3369, !3370, !"quoting_options_from_style: argument 0"}
!3370 = distinct !{!3370, !"quoting_options_from_style"}
!3371 = !DILocation(line: 191, column: 10, scope: !3107, inlinedAt: !3358)
!3372 = !DILocation(line: 192, column: 1, scope: !3107, inlinedAt: !3358)
!3373 = !DILocation(line: 1003, column: 13, scope: !3351)
!3374 = !DILocation(line: 1002, column: 26, scope: !3351)
!3375 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1004, column: 3, scope: !3351)
!3377 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3376)
!3378 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3376)
!3379 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3376)
!3380 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3376)
!3381 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3376)
!3382 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3376)
!3383 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3376)
!3384 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3376)
!3385 = !DILocation(line: 1005, column: 10, scope: !3351)
!3386 = !DILocation(line: 1006, column: 1, scope: !3351)
!3387 = !DILocation(line: 1005, column: 3, scope: !3351)
!3388 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !409, file: !409, line: 1009, type: !3389, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!25, !72, !68, !68, !68}
!3391 = !{!3392, !3393, !3394, !3395}
!3392 = !DILocalVariable(name: "n", arg: 1, scope: !3388, file: !409, line: 1009, type: !72)
!3393 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3388, file: !409, line: 1009, type: !68)
!3394 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3388, file: !409, line: 1010, type: !68)
!3395 = !DILocalVariable(name: "arg", arg: 4, scope: !3388, file: !409, line: 1010, type: !68)
!3396 = !DILocation(line: 1009, column: 24, scope: !3388)
!3397 = !DILocation(line: 1009, column: 39, scope: !3388)
!3398 = !DILocation(line: 1010, column: 32, scope: !3388)
!3399 = !DILocation(line: 1010, column: 57, scope: !3388)
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !409, line: 1017, type: !72)
!3401 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !409, file: !409, line: 1017, type: !3402, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!25, !72, !68, !68, !68, !233}
!3404 = !{!3400, !3405, !3406, !3407, !3408, !3409}
!3405 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3401, file: !409, line: 1017, type: !68)
!3406 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3401, file: !409, line: 1018, type: !68)
!3407 = !DILocalVariable(name: "arg", arg: 4, scope: !3401, file: !409, line: 1019, type: !68)
!3408 = !DILocalVariable(name: "argsize", arg: 5, scope: !3401, file: !409, line: 1019, type: !233)
!3409 = !DILocalVariable(name: "o", scope: !3401, file: !409, line: 1021, type: !416)
!3410 = !DILocation(line: 1017, column: 28, scope: !3401, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 1012, column: 10, scope: !3388)
!3412 = !DILocation(line: 1017, column: 43, scope: !3401, inlinedAt: !3411)
!3413 = !DILocation(line: 1018, column: 36, scope: !3401, inlinedAt: !3411)
!3414 = !DILocation(line: 1019, column: 36, scope: !3401, inlinedAt: !3411)
!3415 = !DILocation(line: 1019, column: 48, scope: !3401, inlinedAt: !3411)
!3416 = !DILocation(line: 1021, column: 3, scope: !3401, inlinedAt: !3411)
!3417 = !DILocation(line: 1021, column: 30, scope: !3401, inlinedAt: !3411)
!3418 = !DILocation(line: 1021, column: 26, scope: !3401, inlinedAt: !3411)
!3419 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 1022, column: 3, scope: !3401, inlinedAt: !3411)
!3421 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3420)
!3422 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3420)
!3423 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3420)
!3424 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3420)
!3425 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3420)
!3426 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3420)
!3427 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3420)
!3428 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3420)
!3429 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3420)
!3430 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3420)
!3431 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3420)
!3432 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3420)
!3433 = !DILocation(line: 1023, column: 10, scope: !3401, inlinedAt: !3411)
!3434 = !DILocation(line: 1024, column: 1, scope: !3401, inlinedAt: !3411)
!3435 = !DILocation(line: 1012, column: 3, scope: !3388)
!3436 = !DILocation(line: 1017, column: 28, scope: !3401)
!3437 = !DILocation(line: 1017, column: 43, scope: !3401)
!3438 = !DILocation(line: 1018, column: 36, scope: !3401)
!3439 = !DILocation(line: 1019, column: 36, scope: !3401)
!3440 = !DILocation(line: 1019, column: 48, scope: !3401)
!3441 = !DILocation(line: 1021, column: 3, scope: !3401)
!3442 = !DILocation(line: 1021, column: 30, scope: !3401)
!3443 = !DILocation(line: 1021, column: 26, scope: !3401)
!3444 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1022, column: 3, scope: !3401)
!3446 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3445)
!3447 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3445)
!3448 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3445)
!3449 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3445)
!3450 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3445)
!3451 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3445)
!3452 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3445)
!3453 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3445)
!3454 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3445)
!3455 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3445)
!3456 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3445)
!3457 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3445)
!3458 = !DILocation(line: 1023, column: 10, scope: !3401)
!3459 = !DILocation(line: 1024, column: 1, scope: !3401)
!3460 = !DILocation(line: 1023, column: 3, scope: !3401)
!3461 = distinct !DISubprogram(name: "quotearg_custom", scope: !409, file: !409, line: 1027, type: !3462, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!25, !68, !68, !68}
!3464 = !{!3465, !3466, !3467}
!3465 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3461, file: !409, line: 1027, type: !68)
!3466 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3461, file: !409, line: 1027, type: !68)
!3467 = !DILocalVariable(name: "arg", arg: 3, scope: !3461, file: !409, line: 1028, type: !68)
!3468 = !DILocation(line: 1027, column: 30, scope: !3461)
!3469 = !DILocation(line: 1027, column: 54, scope: !3461)
!3470 = !DILocation(line: 1028, column: 30, scope: !3461)
!3471 = !DILocation(line: 1009, column: 24, scope: !3388, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1030, column: 10, scope: !3461)
!3473 = !DILocation(line: 1009, column: 39, scope: !3388, inlinedAt: !3472)
!3474 = !DILocation(line: 1010, column: 32, scope: !3388, inlinedAt: !3472)
!3475 = !DILocation(line: 1010, column: 57, scope: !3388, inlinedAt: !3472)
!3476 = !DILocation(line: 1017, column: 28, scope: !3401, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 1012, column: 10, scope: !3388, inlinedAt: !3472)
!3478 = !DILocation(line: 1017, column: 43, scope: !3401, inlinedAt: !3477)
!3479 = !DILocation(line: 1018, column: 36, scope: !3401, inlinedAt: !3477)
!3480 = !DILocation(line: 1019, column: 36, scope: !3401, inlinedAt: !3477)
!3481 = !DILocation(line: 1019, column: 48, scope: !3401, inlinedAt: !3477)
!3482 = !DILocation(line: 1021, column: 3, scope: !3401, inlinedAt: !3477)
!3483 = !DILocation(line: 1021, column: 30, scope: !3401, inlinedAt: !3477)
!3484 = !DILocation(line: 1021, column: 26, scope: !3401, inlinedAt: !3477)
!3485 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 1022, column: 3, scope: !3401, inlinedAt: !3477)
!3487 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3486)
!3488 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3486)
!3489 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3486)
!3490 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3486)
!3491 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3486)
!3492 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3486)
!3493 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3486)
!3494 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3486)
!3495 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3486)
!3496 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3486)
!3497 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3486)
!3498 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3486)
!3499 = !DILocation(line: 1023, column: 10, scope: !3401, inlinedAt: !3477)
!3500 = !DILocation(line: 1024, column: 1, scope: !3401, inlinedAt: !3477)
!3501 = !DILocation(line: 1030, column: 3, scope: !3461)
!3502 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !409, file: !409, line: 1034, type: !3503, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!25, !68, !68, !68, !233}
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3502, file: !409, line: 1034, type: !68)
!3507 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3502, file: !409, line: 1034, type: !68)
!3508 = !DILocalVariable(name: "arg", arg: 3, scope: !3502, file: !409, line: 1035, type: !68)
!3509 = !DILocalVariable(name: "argsize", arg: 4, scope: !3502, file: !409, line: 1035, type: !233)
!3510 = !DILocation(line: 1034, column: 34, scope: !3502)
!3511 = !DILocation(line: 1034, column: 58, scope: !3502)
!3512 = !DILocation(line: 1035, column: 34, scope: !3502)
!3513 = !DILocation(line: 1035, column: 46, scope: !3502)
!3514 = !DILocation(line: 1017, column: 28, scope: !3401, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 1037, column: 10, scope: !3502)
!3516 = !DILocation(line: 1017, column: 43, scope: !3401, inlinedAt: !3515)
!3517 = !DILocation(line: 1018, column: 36, scope: !3401, inlinedAt: !3515)
!3518 = !DILocation(line: 1019, column: 36, scope: !3401, inlinedAt: !3515)
!3519 = !DILocation(line: 1019, column: 48, scope: !3401, inlinedAt: !3515)
!3520 = !DILocation(line: 1021, column: 3, scope: !3401, inlinedAt: !3515)
!3521 = !DILocation(line: 1021, column: 30, scope: !3401, inlinedAt: !3515)
!3522 = !DILocation(line: 1021, column: 26, scope: !3401, inlinedAt: !3515)
!3523 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 1022, column: 3, scope: !3401, inlinedAt: !3515)
!3525 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3524)
!3526 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3524)
!3527 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3524)
!3528 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3524)
!3529 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3524)
!3530 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3524)
!3531 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3524)
!3532 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3524)
!3533 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3524)
!3534 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3524)
!3535 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3524)
!3536 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3524)
!3537 = !DILocation(line: 1023, column: 10, scope: !3401, inlinedAt: !3515)
!3538 = !DILocation(line: 1024, column: 1, scope: !3401, inlinedAt: !3515)
!3539 = !DILocation(line: 1037, column: 3, scope: !3502)
!3540 = distinct !DISubprogram(name: "quote_n_mem", scope: !409, file: !409, line: 1052, type: !3541, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!68, !72, !68, !233}
!3543 = !{!3544, !3545, !3546}
!3544 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !409, line: 1052, type: !72)
!3545 = !DILocalVariable(name: "arg", arg: 2, scope: !3540, file: !409, line: 1052, type: !68)
!3546 = !DILocalVariable(name: "argsize", arg: 3, scope: !3540, file: !409, line: 1052, type: !233)
!3547 = !DILocation(line: 1052, column: 18, scope: !3540)
!3548 = !DILocation(line: 1052, column: 33, scope: !3540)
!3549 = !DILocation(line: 1052, column: 45, scope: !3540)
!3550 = !DILocation(line: 1054, column: 10, scope: !3540)
!3551 = !DILocation(line: 1054, column: 3, scope: !3540)
!3552 = distinct !DISubprogram(name: "quote_mem", scope: !409, file: !409, line: 1058, type: !3553, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!68, !68, !233}
!3555 = !{!3556, !3557}
!3556 = !DILocalVariable(name: "arg", arg: 1, scope: !3552, file: !409, line: 1058, type: !68)
!3557 = !DILocalVariable(name: "argsize", arg: 2, scope: !3552, file: !409, line: 1058, type: !233)
!3558 = !DILocation(line: 1058, column: 24, scope: !3552)
!3559 = !DILocation(line: 1058, column: 36, scope: !3552)
!3560 = !DILocation(line: 1052, column: 18, scope: !3540, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 1060, column: 10, scope: !3552)
!3562 = !DILocation(line: 1052, column: 33, scope: !3540, inlinedAt: !3561)
!3563 = !DILocation(line: 1052, column: 45, scope: !3540, inlinedAt: !3561)
!3564 = !DILocation(line: 1054, column: 10, scope: !3540, inlinedAt: !3561)
!3565 = !DILocation(line: 1060, column: 3, scope: !3552)
!3566 = distinct !DISubprogram(name: "quote_n", scope: !409, file: !409, line: 1064, type: !3567, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!68, !72, !68}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "n", arg: 1, scope: !3566, file: !409, line: 1064, type: !72)
!3571 = !DILocalVariable(name: "arg", arg: 2, scope: !3566, file: !409, line: 1064, type: !68)
!3572 = !DILocation(line: 1064, column: 14, scope: !3566)
!3573 = !DILocation(line: 1064, column: 29, scope: !3566)
!3574 = !DILocation(line: 1052, column: 18, scope: !3540, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1066, column: 10, scope: !3566)
!3576 = !DILocation(line: 1052, column: 33, scope: !3540, inlinedAt: !3575)
!3577 = !DILocation(line: 1052, column: 45, scope: !3540, inlinedAt: !3575)
!3578 = !DILocation(line: 1054, column: 10, scope: !3540, inlinedAt: !3575)
!3579 = !DILocation(line: 1066, column: 3, scope: !3566)
!3580 = distinct !DISubprogram(name: "quote", scope: !409, file: !409, line: 1070, type: !3581, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !382, variables: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!68, !68}
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "arg", arg: 1, scope: !3580, file: !409, line: 1070, type: !68)
!3585 = !DILocation(line: 1070, column: 20, scope: !3580)
!3586 = !DILocation(line: 1064, column: 14, scope: !3566, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1072, column: 10, scope: !3580)
!3588 = !DILocation(line: 1064, column: 29, scope: !3566, inlinedAt: !3587)
!3589 = !DILocation(line: 1052, column: 18, scope: !3540, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 1066, column: 10, scope: !3566, inlinedAt: !3587)
!3591 = !DILocation(line: 1052, column: 33, scope: !3540, inlinedAt: !3590)
!3592 = !DILocation(line: 1052, column: 45, scope: !3540, inlinedAt: !3590)
!3593 = !DILocation(line: 1054, column: 10, scope: !3540, inlinedAt: !3590)
!3594 = !DILocation(line: 1072, column: 3, scope: !3580)
!3595 = distinct !DISubprogram(name: "version_etc_arn", scope: !812, file: !812, line: 62, type: !3596, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !808, variables: !3648)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3598, !68, !68, !68, !3647, !233}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3600, line: 7, baseType: !3601)
!3600 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3602, line: 241, size: 1728, elements: !3603)
!3602 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3624, !3625, !3626, !3627, !3628, !3629, !3631, !3635, !3638, !3640, !3641, !3642, !3643, !3644, !3645, !3646}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3601, file: !3602, line: 242, baseType: !72, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3601, file: !3602, line: 247, baseType: !25, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3601, file: !3602, line: 248, baseType: !25, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3601, file: !3602, line: 249, baseType: !25, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3601, file: !3602, line: 250, baseType: !25, size: 64, offset: 256)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3601, file: !3602, line: 251, baseType: !25, size: 64, offset: 320)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3601, file: !3602, line: 252, baseType: !25, size: 64, offset: 384)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3601, file: !3602, line: 253, baseType: !25, size: 64, offset: 448)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3601, file: !3602, line: 254, baseType: !25, size: 64, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3601, file: !3602, line: 256, baseType: !25, size: 64, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3601, file: !3602, line: 257, baseType: !25, size: 64, offset: 640)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3601, file: !3602, line: 258, baseType: !25, size: 64, offset: 704)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3601, file: !3602, line: 260, baseType: !3617, size: 64, offset: 768)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3602, line: 156, size: 192, elements: !3619)
!3619 = !{!3620, !3621, !3623}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3618, file: !3602, line: 157, baseType: !3617, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3618, file: !3602, line: 158, baseType: !3622, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3618, file: !3602, line: 162, baseType: !72, size: 32, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3601, file: !3602, line: 262, baseType: !3622, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3601, file: !3602, line: 264, baseType: !72, size: 32, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3601, file: !3602, line: 268, baseType: !72, size: 32, offset: 928)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3601, file: !3602, line: 270, baseType: !194, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3601, file: !3602, line: 274, baseType: !350, size: 16, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3601, file: !3602, line: 275, baseType: !3630, size: 8, offset: 1040)
!3630 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3601, file: !3602, line: 276, baseType: !3632, size: 8, offset: 1048)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !3633)
!3633 = !{!3634}
!3634 = !DISubrange(count: 1)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3601, file: !3602, line: 280, baseType: !3636, size: 64, offset: 1088)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3602, line: 150, baseType: null)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3601, file: !3602, line: 289, baseType: !3639, size: 64, offset: 1152)
!3639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !31, line: 141, baseType: !32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3601, file: !3602, line: 297, baseType: !27, size: 64, offset: 1216)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3601, file: !3602, line: 298, baseType: !27, size: 64, offset: 1280)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3601, file: !3602, line: 299, baseType: !27, size: 64, offset: 1344)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3601, file: !3602, line: 300, baseType: !27, size: 64, offset: 1408)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3601, file: !3602, line: 302, baseType: !233, size: 64, offset: 1472)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3601, file: !3602, line: 303, baseType: !72, size: 32, offset: 1536)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3601, file: !3602, line: 305, baseType: !167, size: 160, offset: 1568)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654}
!3649 = !DILocalVariable(name: "stream", arg: 1, scope: !3595, file: !812, line: 62, type: !3598)
!3650 = !DILocalVariable(name: "command_name", arg: 2, scope: !3595, file: !812, line: 63, type: !68)
!3651 = !DILocalVariable(name: "package", arg: 3, scope: !3595, file: !812, line: 63, type: !68)
!3652 = !DILocalVariable(name: "version", arg: 4, scope: !3595, file: !812, line: 64, type: !68)
!3653 = !DILocalVariable(name: "authors", arg: 5, scope: !3595, file: !812, line: 65, type: !3647)
!3654 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3595, file: !812, line: 65, type: !233)
!3655 = !DILocation(line: 62, column: 24, scope: !3595)
!3656 = !DILocation(line: 63, column: 30, scope: !3595)
!3657 = !DILocation(line: 63, column: 56, scope: !3595)
!3658 = !DILocation(line: 64, column: 30, scope: !3595)
!3659 = !DILocation(line: 65, column: 39, scope: !3595)
!3660 = !DILocation(line: 65, column: 55, scope: !3595)
!3661 = !DILocation(line: 67, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3595, file: !812, line: 67, column: 7)
!3663 = !DILocation(line: 67, column: 7, scope: !3595)
!3664 = !DILocation(line: 68, column: 5, scope: !3662)
!3665 = !DILocation(line: 70, column: 5, scope: !3662)
!3666 = !DILocation(line: 84, column: 3, scope: !3595)
!3667 = !DILocation(line: 86, column: 3, scope: !3595)
!3668 = !DILocation(line: 95, column: 3, scope: !3595)
!3669 = !DILocation(line: 99, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3595, file: !812, line: 96, column: 5)
!3671 = !DILocation(line: 102, column: 7, scope: !3670)
!3672 = !DILocation(line: 103, column: 7, scope: !3670)
!3673 = !DILocation(line: 106, column: 7, scope: !3670)
!3674 = !DILocation(line: 107, column: 7, scope: !3670)
!3675 = !DILocation(line: 110, column: 7, scope: !3670)
!3676 = !DILocation(line: 112, column: 7, scope: !3670)
!3677 = !DILocation(line: 117, column: 7, scope: !3670)
!3678 = !DILocation(line: 119, column: 7, scope: !3670)
!3679 = !DILocation(line: 124, column: 7, scope: !3670)
!3680 = !DILocation(line: 126, column: 7, scope: !3670)
!3681 = !DILocation(line: 131, column: 7, scope: !3670)
!3682 = !DILocation(line: 134, column: 7, scope: !3670)
!3683 = !DILocation(line: 139, column: 7, scope: !3670)
!3684 = !DILocation(line: 142, column: 7, scope: !3670)
!3685 = !DILocation(line: 147, column: 7, scope: !3670)
!3686 = !DILocation(line: 151, column: 7, scope: !3670)
!3687 = !DILocation(line: 156, column: 7, scope: !3670)
!3688 = !DILocation(line: 160, column: 7, scope: !3670)
!3689 = !DILocation(line: 167, column: 7, scope: !3670)
!3690 = !DILocation(line: 171, column: 7, scope: !3670)
!3691 = !DILocation(line: 173, column: 1, scope: !3595)
!3692 = distinct !DISubprogram(name: "version_etc_ar", scope: !812, file: !812, line: 180, type: !3693, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !808, variables: !3695)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{null, !3598, !68, !68, !68, !3647}
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701}
!3696 = !DILocalVariable(name: "stream", arg: 1, scope: !3692, file: !812, line: 180, type: !3598)
!3697 = !DILocalVariable(name: "command_name", arg: 2, scope: !3692, file: !812, line: 181, type: !68)
!3698 = !DILocalVariable(name: "package", arg: 3, scope: !3692, file: !812, line: 181, type: !68)
!3699 = !DILocalVariable(name: "version", arg: 4, scope: !3692, file: !812, line: 182, type: !68)
!3700 = !DILocalVariable(name: "authors", arg: 5, scope: !3692, file: !812, line: 182, type: !3647)
!3701 = !DILocalVariable(name: "n_authors", scope: !3692, file: !812, line: 184, type: !233)
!3702 = !DILocation(line: 180, column: 23, scope: !3692)
!3703 = !DILocation(line: 181, column: 29, scope: !3692)
!3704 = !DILocation(line: 181, column: 55, scope: !3692)
!3705 = !DILocation(line: 182, column: 29, scope: !3692)
!3706 = !DILocation(line: 182, column: 59, scope: !3692)
!3707 = !DILocation(line: 184, column: 10, scope: !3692)
!3708 = !DILocation(line: 186, column: 8, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3692, file: !812, line: 186, column: 3)
!3710 = !DILocation(line: 186, column: 23, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3709, file: !812, line: 186, column: 3)
!3712 = !DILocation(line: 186, column: 3, scope: !3709)
!3713 = !DILocation(line: 186, column: 52, scope: !3711)
!3714 = distinct !{!3714, !3712, !3715}
!3715 = !DILocation(line: 187, column: 5, scope: !3709)
!3716 = !DILocation(line: 188, column: 3, scope: !3692)
!3717 = !DILocation(line: 189, column: 1, scope: !3692)
!3718 = distinct !DISubprogram(name: "version_etc_va", scope: !812, file: !812, line: 196, type: !3719, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !808, variables: !3728)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3598, !68, !68, !68, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !809, line: 189, size: 192, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3722, file: !809, line: 189, baseType: !186, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3722, file: !809, line: 189, baseType: !186, size: 32, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3722, file: !809, line: 189, baseType: !27, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3722, file: !809, line: 189, baseType: !27, size: 64, offset: 128)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735}
!3729 = !DILocalVariable(name: "stream", arg: 1, scope: !3718, file: !812, line: 196, type: !3598)
!3730 = !DILocalVariable(name: "command_name", arg: 2, scope: !3718, file: !812, line: 197, type: !68)
!3731 = !DILocalVariable(name: "package", arg: 3, scope: !3718, file: !812, line: 197, type: !68)
!3732 = !DILocalVariable(name: "version", arg: 4, scope: !3718, file: !812, line: 198, type: !68)
!3733 = !DILocalVariable(name: "authors", arg: 5, scope: !3718, file: !812, line: 198, type: !3721)
!3734 = !DILocalVariable(name: "n_authors", scope: !3718, file: !812, line: 200, type: !233)
!3735 = !DILocalVariable(name: "authtab", scope: !3718, file: !812, line: 201, type: !3736)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !412)
!3737 = !DILocation(line: 196, column: 23, scope: !3718)
!3738 = !DILocation(line: 197, column: 29, scope: !3718)
!3739 = !DILocation(line: 197, column: 55, scope: !3718)
!3740 = !DILocation(line: 198, column: 29, scope: !3718)
!3741 = !DILocation(line: 198, column: 46, scope: !3718)
!3742 = !DILocation(line: 201, column: 3, scope: !3718)
!3743 = !DILocation(line: 201, column: 15, scope: !3718)
!3744 = !DILocation(line: 200, column: 10, scope: !3718)
!3745 = !DILocation(line: 205, column: 35, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !812, line: 203, column: 3)
!3747 = distinct !DILexicalBlock(scope: !3718, file: !812, line: 203, column: 3)
!3748 = !DILocation(line: 205, column: 14, scope: !3746)
!3749 = !DILocation(line: 205, column: 33, scope: !3746)
!3750 = !DILocation(line: 205, column: 67, scope: !3746)
!3751 = !DILocation(line: 203, column: 3, scope: !3747)
!3752 = !DILocation(line: 208, column: 3, scope: !3718)
!3753 = !DILocation(line: 210, column: 1, scope: !3718)
!3754 = distinct !DISubprogram(name: "version_etc", scope: !812, file: !812, line: 227, type: !3755, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !808, variables: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{null, !3598, !68, !68, !68, null}
!3757 = !{!3758, !3759, !3760, !3761, !3762}
!3758 = !DILocalVariable(name: "stream", arg: 1, scope: !3754, file: !812, line: 227, type: !3598)
!3759 = !DILocalVariable(name: "command_name", arg: 2, scope: !3754, file: !812, line: 228, type: !68)
!3760 = !DILocalVariable(name: "package", arg: 3, scope: !3754, file: !812, line: 228, type: !68)
!3761 = !DILocalVariable(name: "version", arg: 4, scope: !3754, file: !812, line: 229, type: !68)
!3762 = !DILocalVariable(name: "authors", scope: !3754, file: !812, line: 231, type: !3763)
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3764, line: 46, baseType: !3765)
!3764 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3766, line: 48, baseType: !3767)
!3766 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !809, line: 231, baseType: !3768)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3722, size: 192, elements: !3633)
!3769 = !DILocation(line: 227, column: 20, scope: !3754)
!3770 = !DILocation(line: 228, column: 26, scope: !3754)
!3771 = !DILocation(line: 228, column: 52, scope: !3754)
!3772 = !DILocation(line: 229, column: 26, scope: !3754)
!3773 = !DILocation(line: 231, column: 3, scope: !3754)
!3774 = !DILocation(line: 231, column: 11, scope: !3754)
!3775 = !DILocation(line: 233, column: 3, scope: !3754)
!3776 = !DILocation(line: 234, column: 3, scope: !3754)
!3777 = !DILocation(line: 235, column: 3, scope: !3754)
!3778 = !DILocation(line: 236, column: 1, scope: !3754)
!3779 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !812, file: !812, line: 239, type: !1088, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !808, variables: !313)
!3780 = !DILocation(line: 245, column: 3, scope: !3779)
!3781 = !DILocation(line: 251, column: 3, scope: !3779)
!3782 = !DILocation(line: 256, column: 3, scope: !3779)
!3783 = !DILocation(line: 258, column: 1, scope: !3779)
!3784 = distinct !DISubprogram(name: "xnmalloc", scope: !820, file: !820, line: 105, type: !3785, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!27, !233, !233}
!3787 = !{!3788, !3789}
!3788 = !DILocalVariable(name: "n", arg: 1, scope: !3784, file: !820, line: 105, type: !233)
!3789 = !DILocalVariable(name: "s", arg: 2, scope: !3784, file: !820, line: 105, type: !233)
!3790 = !DILocation(line: 105, column: 18, scope: !3784)
!3791 = !DILocation(line: 105, column: 28, scope: !3784)
!3792 = !DILocation(line: 107, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3784, file: !820, line: 107, column: 7)
!3794 = !DILocation(line: 107, column: 7, scope: !3784)
!3795 = !DILocation(line: 108, column: 5, scope: !3793)
!3796 = !DILocation(line: 109, column: 21, scope: !3784)
!3797 = !DILocalVariable(name: "n", arg: 1, scope: !3798, file: !3799, line: 39, type: !233)
!3798 = distinct !DISubprogram(name: "xmalloc", scope: !3799, file: !3799, line: 39, type: !3800, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3802)
!3799 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!27, !233}
!3802 = !{!3797, !3803}
!3803 = !DILocalVariable(name: "p", scope: !3798, file: !3799, line: 41, type: !27)
!3804 = !DILocation(line: 39, column: 17, scope: !3798, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 109, column: 10, scope: !3784)
!3806 = !DILocation(line: 41, column: 13, scope: !3798, inlinedAt: !3805)
!3807 = !DILocation(line: 41, column: 9, scope: !3798, inlinedAt: !3805)
!3808 = !DILocation(line: 42, column: 8, scope: !3809, inlinedAt: !3805)
!3809 = distinct !DILexicalBlock(scope: !3798, file: !3799, line: 42, column: 7)
!3810 = !DILocation(line: 42, column: 15, scope: !3809, inlinedAt: !3805)
!3811 = !DILocation(line: 42, column: 10, scope: !3809, inlinedAt: !3805)
!3812 = !DILocation(line: 43, column: 5, scope: !3809, inlinedAt: !3805)
!3813 = !DILocation(line: 109, column: 3, scope: !3784)
!3814 = !DILocation(line: 39, column: 17, scope: !3798)
!3815 = !DILocation(line: 41, column: 13, scope: !3798)
!3816 = !DILocation(line: 41, column: 9, scope: !3798)
!3817 = !DILocation(line: 42, column: 8, scope: !3809)
!3818 = !DILocation(line: 42, column: 15, scope: !3809)
!3819 = !DILocation(line: 42, column: 10, scope: !3809)
!3820 = !DILocation(line: 43, column: 5, scope: !3809)
!3821 = !DILocation(line: 44, column: 3, scope: !3798)
!3822 = distinct !DISubprogram(name: "xnrealloc", scope: !820, file: !820, line: 118, type: !3823, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!27, !27, !233, !233}
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "p", arg: 1, scope: !3822, file: !820, line: 118, type: !27)
!3827 = !DILocalVariable(name: "n", arg: 2, scope: !3822, file: !820, line: 118, type: !233)
!3828 = !DILocalVariable(name: "s", arg: 3, scope: !3822, file: !820, line: 118, type: !233)
!3829 = !DILocation(line: 118, column: 18, scope: !3822)
!3830 = !DILocation(line: 118, column: 28, scope: !3822)
!3831 = !DILocation(line: 118, column: 38, scope: !3822)
!3832 = !DILocation(line: 120, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3822, file: !820, line: 120, column: 7)
!3834 = !DILocation(line: 120, column: 7, scope: !3822)
!3835 = !DILocation(line: 121, column: 5, scope: !3833)
!3836 = !DILocation(line: 122, column: 25, scope: !3822)
!3837 = !DILocalVariable(name: "p", arg: 1, scope: !3838, file: !3799, line: 51, type: !27)
!3838 = distinct !DISubprogram(name: "xrealloc", scope: !3799, file: !3799, line: 51, type: !3839, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!27, !27, !233}
!3841 = !{!3837, !3842}
!3842 = !DILocalVariable(name: "n", arg: 2, scope: !3838, file: !3799, line: 51, type: !233)
!3843 = !DILocation(line: 51, column: 17, scope: !3838, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 122, column: 10, scope: !3822)
!3845 = !DILocation(line: 51, column: 27, scope: !3838, inlinedAt: !3844)
!3846 = !DILocation(line: 53, column: 8, scope: !3847, inlinedAt: !3844)
!3847 = distinct !DILexicalBlock(scope: !3838, file: !3799, line: 53, column: 7)
!3848 = !DILocation(line: 53, column: 13, scope: !3847, inlinedAt: !3844)
!3849 = !DILocation(line: 53, column: 10, scope: !3847, inlinedAt: !3844)
!3850 = !DILocation(line: 57, column: 7, scope: !3851, inlinedAt: !3844)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !3799, line: 54, column: 5)
!3852 = !DILocation(line: 58, column: 7, scope: !3851, inlinedAt: !3844)
!3853 = !DILocation(line: 61, column: 7, scope: !3838, inlinedAt: !3844)
!3854 = !DILocation(line: 62, column: 8, scope: !3855, inlinedAt: !3844)
!3855 = distinct !DILexicalBlock(scope: !3838, file: !3799, line: 62, column: 7)
!3856 = !DILocation(line: 62, column: 13, scope: !3855, inlinedAt: !3844)
!3857 = !DILocation(line: 62, column: 10, scope: !3855, inlinedAt: !3844)
!3858 = !DILocation(line: 63, column: 5, scope: !3855, inlinedAt: !3844)
!3859 = !DILocation(line: 122, column: 3, scope: !3822)
!3860 = !DILocation(line: 51, column: 17, scope: !3838)
!3861 = !DILocation(line: 51, column: 27, scope: !3838)
!3862 = !DILocation(line: 53, column: 8, scope: !3847)
!3863 = !DILocation(line: 53, column: 13, scope: !3847)
!3864 = !DILocation(line: 53, column: 10, scope: !3847)
!3865 = !DILocation(line: 57, column: 7, scope: !3851)
!3866 = !DILocation(line: 58, column: 7, scope: !3851)
!3867 = !DILocation(line: 61, column: 7, scope: !3838)
!3868 = !DILocation(line: 62, column: 8, scope: !3855)
!3869 = !DILocation(line: 62, column: 13, scope: !3855)
!3870 = !DILocation(line: 62, column: 10, scope: !3855)
!3871 = !DILocation(line: 63, column: 5, scope: !3855)
!3872 = !DILocation(line: 65, column: 1, scope: !3838)
!3873 = !DILocation(line: 180, column: 19, scope: !821)
!3874 = !DILocation(line: 180, column: 30, scope: !821)
!3875 = !DILocation(line: 180, column: 41, scope: !821)
!3876 = !DILocation(line: 182, column: 14, scope: !821)
!3877 = !DILocation(line: 182, column: 10, scope: !821)
!3878 = !DILocation(line: 184, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !821, file: !820, line: 184, column: 7)
!3880 = !DILocation(line: 184, column: 7, scope: !821)
!3881 = !DILocation(line: 186, column: 13, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !820, line: 186, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3879, file: !820, line: 185, column: 5)
!3884 = !DILocation(line: 186, column: 11, scope: !3883)
!3885 = !DILocation(line: 194, column: 30, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !820, line: 187, column: 9)
!3887 = !DILocation(line: 195, column: 16, scope: !3886)
!3888 = !DILocation(line: 195, column: 13, scope: !3886)
!3889 = !DILocation(line: 196, column: 9, scope: !3886)
!3890 = !DILocation(line: 204, column: 69, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !820, line: 204, column: 11)
!3892 = distinct !DILexicalBlock(scope: !3879, file: !820, line: 199, column: 5)
!3893 = !DILocation(line: 205, column: 11, scope: !3891)
!3894 = !DILocation(line: 204, column: 11, scope: !3892)
!3895 = !DILocation(line: 206, column: 9, scope: !3891)
!3896 = !DILocation(line: 210, column: 7, scope: !821)
!3897 = !DILocation(line: 211, column: 25, scope: !821)
!3898 = !DILocation(line: 51, column: 17, scope: !3838, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 211, column: 10, scope: !821)
!3900 = !DILocation(line: 51, column: 27, scope: !3838, inlinedAt: !3899)
!3901 = !DILocation(line: 53, column: 10, scope: !3847, inlinedAt: !3899)
!3902 = !DILocation(line: 207, column: 14, scope: !3892)
!3903 = !DILocation(line: 207, column: 18, scope: !3892)
!3904 = !DILocation(line: 207, column: 9, scope: !3892)
!3905 = !DILocation(line: 53, column: 8, scope: !3847, inlinedAt: !3899)
!3906 = !DILocation(line: 57, column: 7, scope: !3851, inlinedAt: !3899)
!3907 = !DILocation(line: 58, column: 7, scope: !3851, inlinedAt: !3899)
!3908 = !DILocation(line: 61, column: 7, scope: !3838, inlinedAt: !3899)
!3909 = !DILocation(line: 62, column: 8, scope: !3855, inlinedAt: !3899)
!3910 = !DILocation(line: 62, column: 13, scope: !3855, inlinedAt: !3899)
!3911 = !DILocation(line: 62, column: 10, scope: !3855, inlinedAt: !3899)
!3912 = !DILocation(line: 63, column: 5, scope: !3855, inlinedAt: !3899)
!3913 = !DILocation(line: 211, column: 3, scope: !821)
!3914 = distinct !DISubprogram(name: "xcharalloc", scope: !820, file: !820, line: 220, type: !2876, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3915)
!3915 = !{!3916}
!3916 = !DILocalVariable(name: "n", arg: 1, scope: !3914, file: !820, line: 220, type: !233)
!3917 = !DILocation(line: 220, column: 20, scope: !3914)
!3918 = !DILocation(line: 39, column: 17, scope: !3798, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 222, column: 10, scope: !3914)
!3920 = !DILocation(line: 41, column: 13, scope: !3798, inlinedAt: !3919)
!3921 = !DILocation(line: 41, column: 9, scope: !3798, inlinedAt: !3919)
!3922 = !DILocation(line: 42, column: 8, scope: !3809, inlinedAt: !3919)
!3923 = !DILocation(line: 42, column: 15, scope: !3809, inlinedAt: !3919)
!3924 = !DILocation(line: 42, column: 10, scope: !3809, inlinedAt: !3919)
!3925 = !DILocation(line: 43, column: 5, scope: !3809, inlinedAt: !3919)
!3926 = !DILocation(line: 222, column: 3, scope: !3914)
!3927 = distinct !DISubprogram(name: "x2realloc", scope: !3799, file: !3799, line: 74, type: !3928, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!27, !27, !824}
!3930 = !{!3931, !3932}
!3931 = !DILocalVariable(name: "p", arg: 1, scope: !3927, file: !3799, line: 74, type: !27)
!3932 = !DILocalVariable(name: "pn", arg: 2, scope: !3927, file: !3799, line: 74, type: !824)
!3933 = !DILocation(line: 74, column: 18, scope: !3927)
!3934 = !DILocation(line: 74, column: 29, scope: !3927)
!3935 = !DILocation(line: 180, column: 19, scope: !821, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 76, column: 10, scope: !3927)
!3937 = !DILocation(line: 180, column: 30, scope: !821, inlinedAt: !3936)
!3938 = !DILocation(line: 180, column: 41, scope: !821, inlinedAt: !3936)
!3939 = !DILocation(line: 182, column: 14, scope: !821, inlinedAt: !3936)
!3940 = !DILocation(line: 182, column: 10, scope: !821, inlinedAt: !3936)
!3941 = !DILocation(line: 184, column: 9, scope: !3879, inlinedAt: !3936)
!3942 = !DILocation(line: 184, column: 7, scope: !821, inlinedAt: !3936)
!3943 = !DILocation(line: 186, column: 13, scope: !3882, inlinedAt: !3936)
!3944 = !DILocation(line: 186, column: 11, scope: !3883, inlinedAt: !3936)
!3945 = !DILocation(line: 210, column: 7, scope: !821, inlinedAt: !3936)
!3946 = !DILocation(line: 51, column: 17, scope: !3838, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 211, column: 10, scope: !821, inlinedAt: !3936)
!3948 = !DILocation(line: 51, column: 27, scope: !3838, inlinedAt: !3947)
!3949 = !DILocation(line: 53, column: 10, scope: !3847, inlinedAt: !3947)
!3950 = !DILocation(line: 205, column: 11, scope: !3891, inlinedAt: !3936)
!3951 = !DILocation(line: 204, column: 11, scope: !3892, inlinedAt: !3936)
!3952 = !DILocation(line: 206, column: 9, scope: !3891, inlinedAt: !3936)
!3953 = !DILocation(line: 207, column: 14, scope: !3892, inlinedAt: !3936)
!3954 = !DILocation(line: 207, column: 18, scope: !3892, inlinedAt: !3936)
!3955 = !DILocation(line: 207, column: 9, scope: !3892, inlinedAt: !3936)
!3956 = !DILocation(line: 53, column: 8, scope: !3847, inlinedAt: !3947)
!3957 = !DILocation(line: 57, column: 7, scope: !3851, inlinedAt: !3947)
!3958 = !DILocation(line: 58, column: 7, scope: !3851, inlinedAt: !3947)
!3959 = !DILocation(line: 61, column: 7, scope: !3838, inlinedAt: !3947)
!3960 = !DILocation(line: 62, column: 8, scope: !3855, inlinedAt: !3947)
!3961 = !DILocation(line: 62, column: 13, scope: !3855, inlinedAt: !3947)
!3962 = !DILocation(line: 62, column: 10, scope: !3855, inlinedAt: !3947)
!3963 = !DILocation(line: 63, column: 5, scope: !3855, inlinedAt: !3947)
!3964 = !DILocation(line: 76, column: 3, scope: !3927)
!3965 = distinct !DISubprogram(name: "xzalloc", scope: !3799, file: !3799, line: 84, type: !3800, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3966)
!3966 = !{!3967}
!3967 = !DILocalVariable(name: "s", arg: 1, scope: !3965, file: !3799, line: 84, type: !233)
!3968 = !DILocation(line: 84, column: 17, scope: !3965)
!3969 = !DILocation(line: 39, column: 17, scope: !3798, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 86, column: 18, scope: !3965)
!3971 = !DILocation(line: 41, column: 13, scope: !3798, inlinedAt: !3970)
!3972 = !DILocation(line: 41, column: 9, scope: !3798, inlinedAt: !3970)
!3973 = !DILocation(line: 42, column: 8, scope: !3809, inlinedAt: !3970)
!3974 = !DILocation(line: 42, column: 15, scope: !3809, inlinedAt: !3970)
!3975 = !DILocation(line: 42, column: 10, scope: !3809, inlinedAt: !3970)
!3976 = !DILocation(line: 43, column: 5, scope: !3809, inlinedAt: !3970)
!3977 = !DILocation(line: 86, column: 10, scope: !3965)
!3978 = !DILocation(line: 86, column: 3, scope: !3965)
!3979 = distinct !DISubprogram(name: "xcalloc", scope: !3799, file: !3799, line: 93, type: !3785, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !3980)
!3980 = !{!3981, !3982, !3983}
!3981 = !DILocalVariable(name: "n", arg: 1, scope: !3979, file: !3799, line: 93, type: !233)
!3982 = !DILocalVariable(name: "s", arg: 2, scope: !3979, file: !3799, line: 93, type: !233)
!3983 = !DILocalVariable(name: "p", scope: !3979, file: !3799, line: 95, type: !27)
!3984 = !DILocation(line: 93, column: 17, scope: !3979)
!3985 = !DILocation(line: 93, column: 27, scope: !3979)
!3986 = !DILocation(line: 100, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3979, file: !3799, line: 100, column: 7)
!3988 = !DILocation(line: 101, column: 7, scope: !3987)
!3989 = !DILocation(line: 101, column: 18, scope: !3987)
!3990 = !DILocation(line: 95, column: 9, scope: !3979)
!3991 = !DILocation(line: 101, column: 16, scope: !3987)
!3992 = !DILocation(line: 100, column: 7, scope: !3979)
!3993 = !DILocation(line: 102, column: 5, scope: !3987)
!3994 = !DILocation(line: 103, column: 3, scope: !3979)
!3995 = distinct !DISubprogram(name: "xmemdup", scope: !3799, file: !3799, line: 111, type: !3996, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !4000)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!27, !3998, !233}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4000 = !{!4001, !4002}
!4001 = !DILocalVariable(name: "p", arg: 1, scope: !3995, file: !3799, line: 111, type: !3998)
!4002 = !DILocalVariable(name: "s", arg: 2, scope: !3995, file: !3799, line: 111, type: !233)
!4003 = !DILocation(line: 111, column: 22, scope: !3995)
!4004 = !DILocation(line: 111, column: 32, scope: !3995)
!4005 = !DILocation(line: 39, column: 17, scope: !3798, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 113, column: 18, scope: !3995)
!4007 = !DILocation(line: 41, column: 13, scope: !3798, inlinedAt: !4006)
!4008 = !DILocation(line: 41, column: 9, scope: !3798, inlinedAt: !4006)
!4009 = !DILocation(line: 42, column: 8, scope: !3809, inlinedAt: !4006)
!4010 = !DILocation(line: 42, column: 15, scope: !3809, inlinedAt: !4006)
!4011 = !DILocation(line: 42, column: 10, scope: !3809, inlinedAt: !4006)
!4012 = !DILocation(line: 43, column: 5, scope: !3809, inlinedAt: !4006)
!4013 = !DILocation(line: 113, column: 10, scope: !3995)
!4014 = !DILocation(line: 113, column: 3, scope: !3995)
!4015 = distinct !DISubprogram(name: "xstrdup", scope: !3799, file: !3799, line: 119, type: !1714, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !4016)
!4016 = !{!4017}
!4017 = !DILocalVariable(name: "string", arg: 1, scope: !4015, file: !3799, line: 119, type: !68)
!4018 = !DILocation(line: 119, column: 22, scope: !4015)
!4019 = !DILocation(line: 121, column: 27, scope: !4015)
!4020 = !DILocation(line: 121, column: 43, scope: !4015)
!4021 = !DILocation(line: 111, column: 22, scope: !3995, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 121, column: 10, scope: !4015)
!4023 = !DILocation(line: 111, column: 32, scope: !3995, inlinedAt: !4022)
!4024 = !DILocation(line: 39, column: 17, scope: !3798, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 113, column: 18, scope: !3995, inlinedAt: !4022)
!4026 = !DILocation(line: 41, column: 13, scope: !3798, inlinedAt: !4025)
!4027 = !DILocation(line: 41, column: 9, scope: !3798, inlinedAt: !4025)
!4028 = !DILocation(line: 42, column: 8, scope: !3809, inlinedAt: !4025)
!4029 = !DILocation(line: 42, column: 15, scope: !3809, inlinedAt: !4025)
!4030 = !DILocation(line: 42, column: 10, scope: !3809, inlinedAt: !4025)
!4031 = !DILocation(line: 43, column: 5, scope: !3809, inlinedAt: !4025)
!4032 = !DILocation(line: 113, column: 10, scope: !3995, inlinedAt: !4022)
!4033 = !DILocation(line: 121, column: 3, scope: !4015)
!4034 = distinct !DISubprogram(name: "xalloc_die", scope: !4035, file: !4035, line: 32, type: !1088, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !833, variables: !313)
!4035 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4036 = !DILocation(line: 34, column: 10, scope: !4034)
!4037 = !DILocation(line: 34, column: 33, scope: !4034)
!4038 = !DILocation(line: 34, column: 3, scope: !4034)
!4039 = !DILocation(line: 40, column: 3, scope: !4034)
!4040 = distinct !DISubprogram(name: "rpl_calloc", scope: !4041, file: !4041, line: 42, type: !3785, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !835, variables: !4042)
!4041 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4042 = !{!4043, !4044, !4045, !4046}
!4043 = !DILocalVariable(name: "n", arg: 1, scope: !4040, file: !4041, line: 42, type: !233)
!4044 = !DILocalVariable(name: "s", arg: 2, scope: !4040, file: !4041, line: 42, type: !233)
!4045 = !DILocalVariable(name: "result", scope: !4040, file: !4041, line: 44, type: !27)
!4046 = !DILocalVariable(name: "bytes", scope: !4047, file: !4041, line: 56, type: !233)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !4041, line: 53, column: 5)
!4048 = distinct !DILexicalBlock(scope: !4040, file: !4041, line: 47, column: 7)
!4049 = !DILocation(line: 42, column: 20, scope: !4040)
!4050 = !DILocation(line: 42, column: 30, scope: !4040)
!4051 = !DILocation(line: 47, column: 9, scope: !4048)
!4052 = !DILocation(line: 47, column: 19, scope: !4048)
!4053 = !DILocation(line: 47, column: 14, scope: !4048)
!4054 = !DILocation(line: 56, column: 24, scope: !4047)
!4055 = !DILocation(line: 56, column: 14, scope: !4047)
!4056 = !DILocation(line: 57, column: 17, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4047, file: !4041, line: 57, column: 11)
!4058 = !DILocation(line: 57, column: 21, scope: !4057)
!4059 = !DILocation(line: 57, column: 11, scope: !4047)
!4060 = !DILocation(line: 59, column: 11, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !4041, line: 58, column: 9)
!4062 = !DILocation(line: 59, column: 17, scope: !4061)
!4063 = !DILocation(line: 65, column: 12, scope: !4040)
!4064 = !DILocation(line: 44, column: 9, scope: !4040)
!4065 = !DILocation(line: 72, column: 3, scope: !4040)
!4066 = !DILocation(line: 73, column: 1, scope: !4040)
!4067 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4068, file: !4068, line: 334, type: !4069, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !837, variables: !4083)
!4068 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!233, !4071, !68, !233, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2131, line: 6, baseType: !4074)
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2133, line: 21, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2133, line: 13, size: 64, elements: !4076)
!4076 = !{!4077, !4078}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4075, file: !2133, line: 15, baseType: !72, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4075, file: !2133, line: 20, baseType: !4079, size: 32, offset: 32)
!4079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4075, file: !2133, line: 16, size: 32, elements: !4080)
!4080 = !{!4081, !4082}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4079, file: !2133, line: 18, baseType: !186, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4079, file: !2133, line: 19, baseType: !144, size: 32)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4084 = !DILocalVariable(name: "pwc", arg: 1, scope: !4067, file: !4068, line: 334, type: !4071)
!4085 = !DILocalVariable(name: "s", arg: 2, scope: !4067, file: !4068, line: 334, type: !68)
!4086 = !DILocalVariable(name: "n", arg: 3, scope: !4067, file: !4068, line: 334, type: !233)
!4087 = !DILocalVariable(name: "ps", arg: 4, scope: !4067, file: !4068, line: 334, type: !4072)
!4088 = !DILocalVariable(name: "ret", scope: !4067, file: !4068, line: 336, type: !233)
!4089 = !DILocalVariable(name: "wc", scope: !4067, file: !4068, line: 337, type: !2144)
!4090 = !DILocalVariable(name: "uc", scope: !4091, file: !4068, line: 398, type: !286)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !4068, line: 397, column: 5)
!4092 = distinct !DILexicalBlock(scope: !4067, file: !4068, line: 396, column: 7)
!4093 = !DILocation(line: 334, column: 23, scope: !4067)
!4094 = !DILocation(line: 334, column: 40, scope: !4067)
!4095 = !DILocation(line: 334, column: 50, scope: !4067)
!4096 = !DILocation(line: 334, column: 64, scope: !4067)
!4097 = !DILocation(line: 337, column: 3, scope: !4067)
!4098 = !DILocation(line: 353, column: 9, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4067, file: !4068, line: 353, column: 7)
!4100 = !DILocation(line: 353, column: 7, scope: !4067)
!4101 = !DILocation(line: 388, column: 9, scope: !4067)
!4102 = !DILocation(line: 336, column: 10, scope: !4067)
!4103 = !DILocation(line: 396, column: 19, scope: !4092)
!4104 = !DILocation(line: 396, column: 31, scope: !4092)
!4105 = !DILocation(line: 396, column: 26, scope: !4092)
!4106 = !DILocation(line: 396, column: 41, scope: !4092)
!4107 = !DILocation(line: 396, column: 7, scope: !4067)
!4108 = !DILocation(line: 398, column: 26, scope: !4091)
!4109 = !DILocation(line: 398, column: 21, scope: !4091)
!4110 = !DILocation(line: 399, column: 14, scope: !4091)
!4111 = !DILocation(line: 399, column: 12, scope: !4091)
!4112 = !DILocation(line: 405, column: 1, scope: !4067)
!4113 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !4114, file: !4114, line: 45, type: !4115, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !840, variables: !4141)
!4114 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!25, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !134, line: 55, size: 3072, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4133, !4134, !4139, !4140}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4120, file: !134, line: 57, baseType: !33, size: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4120, file: !134, line: 58, baseType: !138, size: 32, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4120, file: !134, line: 59, baseType: !140, size: 256, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4120, file: !134, line: 60, baseType: !144, size: 32, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4120, file: !134, line: 61, baseType: !140, size: 256, offset: 352)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4120, file: !134, line: 62, baseType: !149, size: 2048, offset: 608)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4120, file: !134, line: 63, baseType: !4129, size: 32, offset: 2656)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !134, line: 42, size: 32, elements: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4129, file: !134, line: 45, baseType: !33, size: 16)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4129, file: !134, line: 46, baseType: !33, size: 16, offset: 16)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4120, file: !134, line: 70, baseType: !158, size: 32, offset: 2688)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4120, file: !134, line: 75, baseType: !4135, size: 64, offset: 2720)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4120, file: !134, line: 71, size: 64, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4135, file: !134, line: 73, baseType: !158, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4135, file: !134, line: 74, baseType: !158, size: 32, offset: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4120, file: !134, line: 80, baseType: !165, size: 128, offset: 2784)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4120, file: !134, line: 81, baseType: !167, size: 160, offset: 2912)
!4141 = !{!4142, !4143, !4144}
!4142 = !DILocalVariable(name: "ut", arg: 1, scope: !4113, file: !4114, line: 45, type: !4117)
!4143 = !DILocalVariable(name: "p", scope: !4113, file: !4114, line: 47, type: !25)
!4144 = !DILocalVariable(name: "trimmed_name", scope: !4113, file: !4114, line: 47, type: !25)
!4145 = !DILocation(line: 45, column: 42, scope: !4113)
!4146 = !DILocation(line: 49, column: 18, scope: !4113)
!4147 = !DILocation(line: 47, column: 13, scope: !4113)
!4148 = !DILocation(line: 50, column: 26, scope: !4113)
!4149 = !DILocalVariable(name: "__dest", arg: 1, scope: !4150, file: !1493, line: 103, type: !1136)
!4150 = distinct !DISubprogram(name: "strncpy", scope: !1493, file: !1493, line: 103, type: !1134, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !840, variables: !4151)
!4151 = !{!4149, !4152, !4153}
!4152 = !DILocalVariable(name: "__src", arg: 2, scope: !4150, file: !1493, line: 103, type: !1137)
!4153 = !DILocalVariable(name: "__len", arg: 3, scope: !4150, file: !1493, line: 103, type: !233)
!4154 = !DILocation(line: 103, column: 1, scope: !4150, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 50, column: 3, scope: !4113)
!4156 = !DILocation(line: 106, column: 57, scope: !4150, inlinedAt: !4155)
!4157 = !DILocation(line: 106, column: 10, scope: !4150, inlinedAt: !4155)
!4158 = !DILocation(line: 54, column: 3, scope: !4113)
!4159 = !DILocation(line: 54, column: 39, scope: !4113)
!4160 = !DILocation(line: 55, column: 27, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4113, file: !4114, line: 55, column: 3)
!4162 = !DILocation(line: 47, column: 9, scope: !4113)
!4163 = !DILocation(line: 56, column: 21, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !4114, line: 55, column: 3)
!4165 = !DILocation(line: 56, column: 25, scope: !4164)
!4166 = !DILocation(line: 55, column: 25, scope: !4161)
!4167 = !DILocation(line: 56, column: 28, scope: !4164)
!4168 = !DILocation(line: 56, column: 34, scope: !4164)
!4169 = !DILocation(line: 55, column: 3, scope: !4161)
!4170 = !DILocation(line: 57, column: 13, scope: !4164)
!4171 = distinct !{!4171, !4169, !4172}
!4172 = !DILocation(line: 58, column: 5, scope: !4161)
!4173 = !DILocation(line: 59, column: 3, scope: !4113)
!4174 = distinct !DISubprogram(name: "read_utmp", scope: !4114, file: !4114, line: 88, type: !4175, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !840, variables: !4179)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!72, !68, !824, !4177, !72}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4179 = !{!4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187}
!4180 = !DILocalVariable(name: "file", arg: 1, scope: !4174, file: !4114, line: 88, type: !68)
!4181 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4174, file: !4114, line: 88, type: !824)
!4182 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4174, file: !4114, line: 88, type: !4177)
!4183 = !DILocalVariable(name: "options", arg: 4, scope: !4174, file: !4114, line: 89, type: !72)
!4184 = !DILocalVariable(name: "n_read", scope: !4174, file: !4114, line: 91, type: !233)
!4185 = !DILocalVariable(name: "n_alloc", scope: !4174, file: !4114, line: 92, type: !233)
!4186 = !DILocalVariable(name: "utmp", scope: !4174, file: !4114, line: 93, type: !4178)
!4187 = !DILocalVariable(name: "u", scope: !4174, file: !4114, line: 94, type: !4178)
!4188 = !DILocation(line: 88, column: 24, scope: !4174)
!4189 = !DILocation(line: 88, column: 38, scope: !4174)
!4190 = !DILocation(line: 88, column: 63, scope: !4174)
!4191 = !DILocation(line: 89, column: 16, scope: !4174)
!4192 = !DILocation(line: 91, column: 10, scope: !4174)
!4193 = !DILocation(line: 92, column: 10, scope: !4174)
!4194 = !DILocation(line: 93, column: 16, scope: !4174)
!4195 = !DILocation(line: 100, column: 3, scope: !4174)
!4196 = !DILocation(line: 102, column: 3, scope: !4174)
!4197 = !DILocation(line: 104, column: 15, scope: !4174)
!4198 = !DILocation(line: 94, column: 16, scope: !4174)
!4199 = !DILocation(line: 104, column: 32, scope: !4174)
!4200 = !DILocation(line: 104, column: 3, scope: !4174)
!4201 = !DILocalVariable(name: "u", arg: 1, scope: !4202, file: !4114, line: 65, type: !4117)
!4202 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !4114, file: !4114, line: 65, type: !4203, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !840, variables: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!37, !4117, !72}
!4205 = !{!4201, !4206, !4207}
!4206 = !DILocalVariable(name: "options", arg: 2, scope: !4202, file: !4114, line: 65, type: !72)
!4207 = !DILocalVariable(name: "user_proc", scope: !4202, file: !4114, line: 67, type: !37)
!4208 = !DILocation(line: 65, column: 42, scope: !4202, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 105, column: 9, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4174, file: !4114, line: 105, column: 9)
!4211 = !DILocation(line: 65, column: 49, scope: !4202, inlinedAt: !4209)
!4212 = !DILocation(line: 67, column: 20, scope: !4202, inlinedAt: !4209)
!4213 = !DILocation(line: 68, column: 42, scope: !4214, inlinedAt: !4209)
!4214 = distinct !DILexicalBlock(scope: !4202, file: !4114, line: 68, column: 7)
!4215 = !DILocation(line: 71, column: 7, scope: !4216, inlinedAt: !4209)
!4216 = distinct !DILexicalBlock(scope: !4202, file: !4114, line: 70, column: 7)
!4217 = !DILocation(line: 72, column: 14, scope: !4216, inlinedAt: !4209)
!4218 = !DILocation(line: 72, column: 12, scope: !4216, inlinedAt: !4209)
!4219 = !DILocation(line: 73, column: 7, scope: !4216, inlinedAt: !4209)
!4220 = !DILocation(line: 73, column: 11, scope: !4216, inlinedAt: !4209)
!4221 = !DILocation(line: 73, column: 32, scope: !4216, inlinedAt: !4209)
!4222 = !DILocation(line: 73, column: 36, scope: !4216, inlinedAt: !4209)
!4223 = !DILocation(line: 73, column: 39, scope: !4216, inlinedAt: !4209)
!4224 = !DILocation(line: 73, column: 45, scope: !4216, inlinedAt: !4209)
!4225 = !DILocation(line: 70, column: 7, scope: !4202, inlinedAt: !4209)
!4226 = !DILocation(line: 107, column: 20, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !4114, line: 107, column: 13)
!4228 = distinct !DILexicalBlock(scope: !4210, file: !4114, line: 106, column: 7)
!4229 = !DILocation(line: 107, column: 13, scope: !4228)
!4230 = !DILocation(line: 180, column: 19, scope: !844, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 108, column: 18, scope: !4227)
!4232 = !DILocation(line: 180, column: 41, scope: !844, inlinedAt: !4231)
!4233 = !DILocation(line: 182, column: 10, scope: !844, inlinedAt: !4231)
!4234 = !DILocation(line: 184, column: 9, scope: !4235, inlinedAt: !4231)
!4235 = distinct !DILexicalBlock(scope: !844, file: !820, line: 184, column: 7)
!4236 = !DILocation(line: 184, column: 7, scope: !844, inlinedAt: !4231)
!4237 = !DILocation(line: 186, column: 13, scope: !4238, inlinedAt: !4231)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !820, line: 186, column: 11)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !820, line: 185, column: 5)
!4240 = !DILocation(line: 186, column: 11, scope: !4239, inlinedAt: !4231)
!4241 = !DILocation(line: 205, column: 11, scope: !4242, inlinedAt: !4231)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !820, line: 204, column: 11)
!4243 = distinct !DILexicalBlock(scope: !4235, file: !820, line: 199, column: 5)
!4244 = !DILocation(line: 204, column: 11, scope: !4243, inlinedAt: !4231)
!4245 = !DILocation(line: 206, column: 9, scope: !4242, inlinedAt: !4231)
!4246 = !DILocation(line: 207, column: 14, scope: !4243, inlinedAt: !4231)
!4247 = !DILocation(line: 207, column: 18, scope: !4243, inlinedAt: !4231)
!4248 = !DILocation(line: 207, column: 9, scope: !4243, inlinedAt: !4231)
!4249 = !DILocation(line: 211, column: 25, scope: !844, inlinedAt: !4231)
!4250 = !DILocation(line: 211, column: 10, scope: !844, inlinedAt: !4231)
!4251 = !DILocation(line: 108, column: 18, scope: !4227)
!4252 = !DILocation(line: 108, column: 11, scope: !4227)
!4253 = !DILocation(line: 110, column: 20, scope: !4228)
!4254 = !DILocation(line: 110, column: 9, scope: !4228)
!4255 = !DILocation(line: 110, column: 26, scope: !4228)
!4256 = !{i64 0, i64 2, !2377, i64 4, i64 4, !961, i64 8, i64 32, !1041, i64 40, i64 4, !1041, i64 44, i64 32, !1041, i64 76, i64 256, !1041, i64 332, i64 2, !2377, i64 334, i64 2, !2377, i64 336, i64 4, !961, i64 340, i64 4, !961, i64 344, i64 4, !961, i64 348, i64 16, !1041, i64 364, i64 20, !1041}
!4257 = !DILocation(line: 111, column: 7, scope: !4228)
!4258 = distinct !{!4258, !4200, !4259}
!4259 = !DILocation(line: 111, column: 7, scope: !4174)
!4260 = !DILocation(line: 113, column: 3, scope: !4174)
!4261 = !DILocation(line: 115, column: 14, scope: !4174)
!4262 = !DILocation(line: 116, column: 13, scope: !4174)
!4263 = !DILocation(line: 118, column: 3, scope: !4174)
!4264 = distinct !DISubprogram(name: "close_stream", scope: !4265, file: !4265, line: 56, type: !4266, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !851, variables: !4308)
!4265 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!72, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3600, line: 7, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3602, line: 241, size: 1728, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4270, file: !3602, line: 242, baseType: !72, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4270, file: !3602, line: 247, baseType: !25, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4270, file: !3602, line: 248, baseType: !25, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4270, file: !3602, line: 249, baseType: !25, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4270, file: !3602, line: 250, baseType: !25, size: 64, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4270, file: !3602, line: 251, baseType: !25, size: 64, offset: 320)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4270, file: !3602, line: 252, baseType: !25, size: 64, offset: 384)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4270, file: !3602, line: 253, baseType: !25, size: 64, offset: 448)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4270, file: !3602, line: 254, baseType: !25, size: 64, offset: 512)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4270, file: !3602, line: 256, baseType: !25, size: 64, offset: 576)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4270, file: !3602, line: 257, baseType: !25, size: 64, offset: 640)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4270, file: !3602, line: 258, baseType: !25, size: 64, offset: 704)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4270, file: !3602, line: 260, baseType: !4285, size: 64, offset: 768)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3602, line: 156, size: 192, elements: !4287)
!4287 = !{!4288, !4289, !4291}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4286, file: !3602, line: 157, baseType: !4285, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4286, file: !3602, line: 158, baseType: !4290, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4286, file: !3602, line: 162, baseType: !72, size: 32, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4270, file: !3602, line: 262, baseType: !4290, size: 64, offset: 832)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4270, file: !3602, line: 264, baseType: !72, size: 32, offset: 896)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4270, file: !3602, line: 268, baseType: !72, size: 32, offset: 928)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4270, file: !3602, line: 270, baseType: !194, size: 64, offset: 960)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4270, file: !3602, line: 274, baseType: !350, size: 16, offset: 1024)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4270, file: !3602, line: 275, baseType: !3630, size: 8, offset: 1040)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4270, file: !3602, line: 276, baseType: !3632, size: 8, offset: 1048)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4270, file: !3602, line: 280, baseType: !3636, size: 64, offset: 1088)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4270, file: !3602, line: 289, baseType: !3639, size: 64, offset: 1152)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4270, file: !3602, line: 297, baseType: !27, size: 64, offset: 1216)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4270, file: !3602, line: 298, baseType: !27, size: 64, offset: 1280)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4270, file: !3602, line: 299, baseType: !27, size: 64, offset: 1344)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4270, file: !3602, line: 300, baseType: !27, size: 64, offset: 1408)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4270, file: !3602, line: 302, baseType: !233, size: 64, offset: 1472)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4270, file: !3602, line: 303, baseType: !72, size: 32, offset: 1536)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4270, file: !3602, line: 305, baseType: !167, size: 160, offset: 1568)
!4308 = !{!4309, !4310, !4312, !4313}
!4309 = !DILocalVariable(name: "stream", arg: 1, scope: !4264, file: !4265, line: 56, type: !4268)
!4310 = !DILocalVariable(name: "some_pending", scope: !4264, file: !4265, line: 58, type: !4311)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!4312 = !DILocalVariable(name: "prev_fail", scope: !4264, file: !4265, line: 59, type: !4311)
!4313 = !DILocalVariable(name: "fclose_fail", scope: !4264, file: !4265, line: 60, type: !4311)
!4314 = !DILocation(line: 56, column: 21, scope: !4264)
!4315 = !DILocation(line: 58, column: 30, scope: !4264)
!4316 = !DILocalVariable(name: "__stream", arg: 1, scope: !4317, file: !4318, line: 132, type: !4268)
!4317 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4318, file: !4318, line: 132, type: !4266, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !851, variables: !4319)
!4318 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4319 = !{!4316}
!4320 = !DILocation(line: 132, column: 1, scope: !4317, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 59, column: 27, scope: !4264)
!4322 = !DILocation(line: 134, column: 10, scope: !4317, inlinedAt: !4321)
!4323 = !{!4324, !962, i64 0}
!4324 = !{!"_IO_FILE", !962, i64 0, !878, i64 8, !878, i64 16, !878, i64 24, !878, i64 32, !878, i64 40, !878, i64 48, !878, i64 56, !878, i64 64, !878, i64 72, !878, i64 80, !878, i64 88, !878, i64 96, !878, i64 104, !962, i64 112, !962, i64 116, !1021, i64 120, !1044, i64 128, !879, i64 130, !879, i64 131, !878, i64 136, !1021, i64 144, !878, i64 152, !878, i64 160, !878, i64 168, !878, i64 176, !1021, i64 184, !962, i64 192, !879, i64 196}
!4325 = !DILocation(line: 59, column: 43, scope: !4264)
!4326 = !DILocation(line: 60, column: 29, scope: !4264)
!4327 = !DILocation(line: 60, column: 45, scope: !4264)
!4328 = !DILocation(line: 70, column: 17, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4264, file: !4265, line: 70, column: 7)
!4330 = !DILocation(line: 58, column: 50, scope: !4264)
!4331 = !DILocation(line: 70, column: 33, scope: !4329)
!4332 = !DILocation(line: 70, column: 53, scope: !4329)
!4333 = !DILocation(line: 70, column: 59, scope: !4329)
!4334 = !DILocation(line: 70, column: 7, scope: !4264)
!4335 = !DILocation(line: 72, column: 11, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4329, file: !4265, line: 71, column: 5)
!4337 = !DILocation(line: 73, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4336, file: !4265, line: 72, column: 11)
!4339 = !DILocation(line: 73, column: 15, scope: !4338)
!4340 = !DILocation(line: 78, column: 1, scope: !4264)
!4341 = distinct !DISubprogram(name: "locale_charset", scope: !798, file: !798, line: 393, type: !1779, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !454, variables: !4342)
!4342 = !{!4343, !4344}
!4343 = !DILocalVariable(name: "codeset", scope: !4341, file: !798, line: 395, type: !68)
!4344 = !DILocalVariable(name: "aliases", scope: !4341, file: !798, line: 396, type: !68)
!4345 = !DILocalVariable(name: "buf1", scope: !4346, file: !798, line: 196, type: !4413)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !798, line: 194, column: 21)
!4347 = distinct !DILexicalBlock(scope: !4348, file: !798, line: 193, column: 19)
!4348 = distinct !DILexicalBlock(scope: !4349, file: !798, line: 193, column: 19)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !798, line: 188, column: 17)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !798, line: 181, column: 19)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !798, line: 177, column: 13)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !798, line: 173, column: 15)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !798, line: 161, column: 9)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !798, line: 157, column: 11)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !798, line: 130, column: 5)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !798, line: 129, column: 7)
!4357 = distinct !DISubprogram(name: "get_charset_aliases", scope: !798, file: !798, line: 124, type: !1779, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !454, variables: !4358)
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4365, !4366, !4367, !4368, !4409, !4410, !4411, !4345, !4412, !4416, !4417, !4418}
!4359 = !DILocalVariable(name: "cp", scope: !4357, file: !798, line: 126, type: !68)
!4360 = !DILocalVariable(name: "dir", scope: !4355, file: !798, line: 132, type: !68)
!4361 = !DILocalVariable(name: "base", scope: !4355, file: !798, line: 133, type: !68)
!4362 = !DILocalVariable(name: "file_name", scope: !4355, file: !798, line: 134, type: !25)
!4363 = !DILocalVariable(name: "dir_len", scope: !4364, file: !798, line: 144, type: !233)
!4364 = distinct !DILexicalBlock(scope: !4355, file: !798, line: 143, column: 7)
!4365 = !DILocalVariable(name: "base_len", scope: !4364, file: !798, line: 145, type: !233)
!4366 = !DILocalVariable(name: "add_slash", scope: !4364, file: !798, line: 146, type: !72)
!4367 = !DILocalVariable(name: "fd", scope: !4353, file: !798, line: 162, type: !72)
!4368 = !DILocalVariable(name: "fp", scope: !4351, file: !798, line: 178, type: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3600, line: 7, baseType: !4371)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3602, line: 241, size: 1728, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4371, file: !3602, line: 242, baseType: !72, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4371, file: !3602, line: 247, baseType: !25, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4371, file: !3602, line: 248, baseType: !25, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4371, file: !3602, line: 249, baseType: !25, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4371, file: !3602, line: 250, baseType: !25, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4371, file: !3602, line: 251, baseType: !25, size: 64, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4371, file: !3602, line: 252, baseType: !25, size: 64, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4371, file: !3602, line: 253, baseType: !25, size: 64, offset: 448)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4371, file: !3602, line: 254, baseType: !25, size: 64, offset: 512)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4371, file: !3602, line: 256, baseType: !25, size: 64, offset: 576)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4371, file: !3602, line: 257, baseType: !25, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4371, file: !3602, line: 258, baseType: !25, size: 64, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4371, file: !3602, line: 260, baseType: !4386, size: 64, offset: 768)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3602, line: 156, size: 192, elements: !4388)
!4388 = !{!4389, !4390, !4392}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4387, file: !3602, line: 157, baseType: !4386, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4387, file: !3602, line: 158, baseType: !4391, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4387, file: !3602, line: 162, baseType: !72, size: 32, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4371, file: !3602, line: 262, baseType: !4391, size: 64, offset: 832)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4371, file: !3602, line: 264, baseType: !72, size: 32, offset: 896)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4371, file: !3602, line: 268, baseType: !72, size: 32, offset: 928)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4371, file: !3602, line: 270, baseType: !194, size: 64, offset: 960)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4371, file: !3602, line: 274, baseType: !350, size: 16, offset: 1024)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4371, file: !3602, line: 275, baseType: !3630, size: 8, offset: 1040)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4371, file: !3602, line: 276, baseType: !3632, size: 8, offset: 1048)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4371, file: !3602, line: 280, baseType: !3636, size: 64, offset: 1088)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4371, file: !3602, line: 289, baseType: !3639, size: 64, offset: 1152)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4371, file: !3602, line: 297, baseType: !27, size: 64, offset: 1216)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4371, file: !3602, line: 298, baseType: !27, size: 64, offset: 1280)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4371, file: !3602, line: 299, baseType: !27, size: 64, offset: 1344)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4371, file: !3602, line: 300, baseType: !27, size: 64, offset: 1408)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4371, file: !3602, line: 302, baseType: !233, size: 64, offset: 1472)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4371, file: !3602, line: 303, baseType: !72, size: 32, offset: 1536)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4371, file: !3602, line: 305, baseType: !167, size: 160, offset: 1568)
!4409 = !DILocalVariable(name: "res_ptr", scope: !4349, file: !798, line: 190, type: !25)
!4410 = !DILocalVariable(name: "res_size", scope: !4349, file: !798, line: 191, type: !233)
!4411 = !DILocalVariable(name: "c", scope: !4346, file: !798, line: 195, type: !72)
!4412 = !DILocalVariable(name: "buf2", scope: !4346, file: !798, line: 197, type: !4413)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 408, elements: !4414)
!4414 = !{!4415}
!4415 = !DISubrange(count: 51)
!4416 = !DILocalVariable(name: "l1", scope: !4346, file: !798, line: 198, type: !233)
!4417 = !DILocalVariable(name: "l2", scope: !4346, file: !798, line: 198, type: !233)
!4418 = !DILocalVariable(name: "old_res_ptr", scope: !4346, file: !798, line: 199, type: !25)
!4419 = !DILocation(line: 196, column: 28, scope: !4346, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 589, column: 18, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4341, file: !798, line: 589, column: 3)
!4422 = !DILocation(line: 197, column: 28, scope: !4346, inlinedAt: !4420)
!4423 = !DILocation(line: 403, column: 13, scope: !4341)
!4424 = !DILocation(line: 395, column: 15, scope: !4341)
!4425 = !DILocation(line: 584, column: 15, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4341, file: !798, line: 584, column: 7)
!4427 = !DILocation(line: 584, column: 7, scope: !4341)
!4428 = !DILocation(line: 128, column: 8, scope: !4357, inlinedAt: !4420)
!4429 = !DILocation(line: 126, column: 15, scope: !4357, inlinedAt: !4420)
!4430 = !DILocation(line: 129, column: 10, scope: !4356, inlinedAt: !4420)
!4431 = !DILocation(line: 129, column: 7, scope: !4357, inlinedAt: !4420)
!4432 = !DILocation(line: 138, column: 13, scope: !4355, inlinedAt: !4420)
!4433 = !DILocation(line: 132, column: 19, scope: !4355, inlinedAt: !4420)
!4434 = !DILocation(line: 139, column: 15, scope: !4435, inlinedAt: !4420)
!4435 = distinct !DILexicalBlock(scope: !4355, file: !798, line: 139, column: 11)
!4436 = !DILocation(line: 139, column: 23, scope: !4435, inlinedAt: !4420)
!4437 = !DILocation(line: 139, column: 26, scope: !4435, inlinedAt: !4420)
!4438 = !DILocation(line: 139, column: 33, scope: !4435, inlinedAt: !4420)
!4439 = !DILocation(line: 139, column: 11, scope: !4355, inlinedAt: !4420)
!4440 = !DILocation(line: 140, column: 9, scope: !4435, inlinedAt: !4420)
!4441 = !DILocation(line: 144, column: 26, scope: !4364, inlinedAt: !4420)
!4442 = !DILocation(line: 144, column: 16, scope: !4364, inlinedAt: !4420)
!4443 = !DILocation(line: 145, column: 16, scope: !4364, inlinedAt: !4420)
!4444 = !DILocation(line: 146, column: 34, scope: !4364, inlinedAt: !4420)
!4445 = !DILocation(line: 146, column: 38, scope: !4364, inlinedAt: !4420)
!4446 = !DILocation(line: 146, column: 42, scope: !4364, inlinedAt: !4420)
!4447 = !DILocation(line: 147, column: 48, scope: !4364, inlinedAt: !4420)
!4448 = !DILocation(line: 147, column: 46, scope: !4364, inlinedAt: !4420)
!4449 = !DILocation(line: 147, column: 69, scope: !4364, inlinedAt: !4420)
!4450 = !DILocation(line: 147, column: 30, scope: !4364, inlinedAt: !4420)
!4451 = !DILocation(line: 134, column: 13, scope: !4355, inlinedAt: !4420)
!4452 = !DILocation(line: 148, column: 13, scope: !4364, inlinedAt: !4420)
!4453 = !DILocation(line: 150, column: 13, scope: !4454, inlinedAt: !4420)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !798, line: 149, column: 11)
!4455 = distinct !DILexicalBlock(scope: !4364, file: !798, line: 148, column: 13)
!4456 = !DILocation(line: 151, column: 17, scope: !4454, inlinedAt: !4420)
!4457 = !DILocation(line: 152, column: 34, scope: !4458, inlinedAt: !4420)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !798, line: 151, column: 17)
!4459 = !DILocation(line: 153, column: 41, scope: !4454, inlinedAt: !4420)
!4460 = !DILocation(line: 153, column: 13, scope: !4454, inlinedAt: !4420)
!4461 = !DILocation(line: 157, column: 11, scope: !4355, inlinedAt: !4420)
!4462 = !DILocation(line: 171, column: 16, scope: !4353, inlinedAt: !4420)
!4463 = !DILocation(line: 162, column: 15, scope: !4353, inlinedAt: !4420)
!4464 = !DILocation(line: 173, column: 18, scope: !4352, inlinedAt: !4420)
!4465 = !DILocation(line: 173, column: 15, scope: !4353, inlinedAt: !4420)
!4466 = !DILocation(line: 180, column: 20, scope: !4351, inlinedAt: !4420)
!4467 = !DILocation(line: 178, column: 21, scope: !4351, inlinedAt: !4420)
!4468 = !DILocation(line: 181, column: 22, scope: !4350, inlinedAt: !4420)
!4469 = !DILocation(line: 181, column: 19, scope: !4351, inlinedAt: !4420)
!4470 = !DILocation(line: 184, column: 19, scope: !4471, inlinedAt: !4420)
!4471 = distinct !DILexicalBlock(scope: !4350, file: !798, line: 182, column: 17)
!4472 = !DILocation(line: 186, column: 17, scope: !4471, inlinedAt: !4420)
!4473 = !DILocation(line: 190, column: 25, scope: !4349, inlinedAt: !4420)
!4474 = !DILocation(line: 191, column: 26, scope: !4349, inlinedAt: !4420)
!4475 = !DILocation(line: 193, column: 19, scope: !4349, inlinedAt: !4420)
!4476 = !DILocation(line: 196, column: 23, scope: !4346, inlinedAt: !4420)
!4477 = !DILocation(line: 197, column: 23, scope: !4346, inlinedAt: !4420)
!4478 = !DILocalVariable(name: "__fp", arg: 1, scope: !4479, file: !4318, line: 63, type: !4369)
!4479 = distinct !DISubprogram(name: "getc_unlocked", scope: !4318, file: !4318, line: 63, type: !4480, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !454, variables: !4482)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!72, !4369}
!4482 = !{!4478}
!4483 = !DILocation(line: 63, column: 22, scope: !4479, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 201, column: 27, scope: !4346, inlinedAt: !4420)
!4485 = !DILocation(line: 65, column: 10, scope: !4479, inlinedAt: !4484)
!4486 = !{!4324, !878, i64 8}
!4487 = !{!4324, !878, i64 16}
!4488 = !{!"branch_weights", i32 2000, i32 1}
!4489 = !DILocation(line: 195, column: 27, scope: !4346, inlinedAt: !4420)
!4490 = !DILocation(line: 202, column: 27, scope: !4346, inlinedAt: !4420)
!4491 = distinct !{!4491, !4492, !4495}
!4492 = !DILocation(line: 209, column: 27, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !798, line: 207, column: 25)
!4494 = distinct !DILexicalBlock(scope: !4346, file: !798, line: 206, column: 27)
!4495 = !DILocation(line: 211, column: 58, scope: !4493)
!4496 = !DILocation(line: 65, column: 10, scope: !4479, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 210, column: 33, scope: !4493, inlinedAt: !4420)
!4498 = !DILocation(line: 63, column: 22, scope: !4479, inlinedAt: !4497)
!4499 = !DILocation(line: 210, column: 29, scope: !4493, inlinedAt: !4420)
!4500 = distinct !{!4500, !4501, !4502}
!4501 = !DILocation(line: 193, column: 19, scope: !4348)
!4502 = !DILocation(line: 241, column: 21, scope: !4348)
!4503 = !DILocation(line: 216, column: 23, scope: !4346, inlinedAt: !4420)
!4504 = !DILocation(line: 217, column: 27, scope: !4505, inlinedAt: !4420)
!4505 = distinct !DILexicalBlock(scope: !4346, file: !798, line: 217, column: 27)
!4506 = !DILocation(line: 217, column: 64, scope: !4505, inlinedAt: !4420)
!4507 = !DILocation(line: 217, column: 27, scope: !4346, inlinedAt: !4420)
!4508 = !DILocation(line: 219, column: 28, scope: !4346, inlinedAt: !4420)
!4509 = !DILocation(line: 198, column: 30, scope: !4346, inlinedAt: !4420)
!4510 = !DILocation(line: 220, column: 28, scope: !4346, inlinedAt: !4420)
!4511 = !DILocation(line: 198, column: 34, scope: !4346, inlinedAt: !4420)
!4512 = !DILocation(line: 199, column: 29, scope: !4346, inlinedAt: !4420)
!4513 = !DILocation(line: 222, column: 36, scope: !4514, inlinedAt: !4420)
!4514 = distinct !DILexicalBlock(scope: !4346, file: !798, line: 222, column: 27)
!4515 = !DILocation(line: 222, column: 27, scope: !4346, inlinedAt: !4420)
!4516 = !DILocation(line: 225, column: 63, scope: !4517, inlinedAt: !4420)
!4517 = distinct !DILexicalBlock(scope: !4514, file: !798, line: 223, column: 25)
!4518 = !DILocation(line: 225, column: 46, scope: !4517, inlinedAt: !4420)
!4519 = !DILocation(line: 226, column: 25, scope: !4517, inlinedAt: !4420)
!4520 = !DILocation(line: 229, column: 36, scope: !4521, inlinedAt: !4420)
!4521 = distinct !DILexicalBlock(scope: !4514, file: !798, line: 228, column: 25)
!4522 = !DILocation(line: 230, column: 73, scope: !4521, inlinedAt: !4420)
!4523 = !DILocation(line: 230, column: 46, scope: !4521, inlinedAt: !4420)
!4524 = !DILocation(line: 232, column: 35, scope: !4525, inlinedAt: !4420)
!4525 = distinct !DILexicalBlock(scope: !4346, file: !798, line: 232, column: 27)
!4526 = !DILocation(line: 232, column: 27, scope: !4346, inlinedAt: !4420)
!4527 = !DILocation(line: 236, column: 27, scope: !4528, inlinedAt: !4420)
!4528 = distinct !DILexicalBlock(scope: !4525, file: !798, line: 233, column: 25)
!4529 = !DILocation(line: 237, column: 27, scope: !4528, inlinedAt: !4420)
!4530 = !DILocation(line: 241, column: 21, scope: !4347, inlinedAt: !4420)
!4531 = !DILocation(line: 239, column: 39, scope: !4346, inlinedAt: !4420)
!4532 = !DILocation(line: 239, column: 50, scope: !4346, inlinedAt: !4420)
!4533 = !DILocation(line: 239, column: 61, scope: !4346, inlinedAt: !4420)
!4534 = !DILocalVariable(name: "__dest", arg: 1, scope: !4535, file: !1493, line: 88, type: !1136)
!4535 = distinct !DISubprogram(name: "strcpy", scope: !1493, file: !1493, line: 88, type: !1494, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !454, variables: !4536)
!4536 = !{!4534, !4537}
!4537 = !DILocalVariable(name: "__src", arg: 2, scope: !4535, file: !1493, line: 88, type: !1137)
!4538 = !DILocation(line: 88, column: 1, scope: !4535, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 239, column: 23, scope: !4346, inlinedAt: !4420)
!4540 = !DILocation(line: 90, column: 49, scope: !4535, inlinedAt: !4539)
!4541 = !DILocation(line: 90, column: 10, scope: !4535, inlinedAt: !4539)
!4542 = !DILocation(line: 88, column: 1, scope: !4535, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 240, column: 23, scope: !4346, inlinedAt: !4420)
!4544 = !DILocation(line: 90, column: 49, scope: !4535, inlinedAt: !4543)
!4545 = !DILocation(line: 90, column: 10, scope: !4535, inlinedAt: !4543)
!4546 = !DILocation(line: 193, column: 19, scope: !4347, inlinedAt: !4420)
!4547 = !DILocation(line: 242, column: 19, scope: !4349, inlinedAt: !4420)
!4548 = !DILocation(line: 243, column: 32, scope: !4549, inlinedAt: !4420)
!4549 = distinct !DILexicalBlock(scope: !4349, file: !798, line: 243, column: 23)
!4550 = !DILocation(line: 243, column: 23, scope: !4349, inlinedAt: !4420)
!4551 = !DILocation(line: 247, column: 33, scope: !4552, inlinedAt: !4420)
!4552 = distinct !DILexicalBlock(scope: !4549, file: !798, line: 246, column: 21)
!4553 = !DILocation(line: 247, column: 45, scope: !4552, inlinedAt: !4420)
!4554 = !DILocation(line: 253, column: 11, scope: !4353, inlinedAt: !4420)
!4555 = !DILocation(line: 377, column: 23, scope: !4355, inlinedAt: !4420)
!4556 = !DILocation(line: 378, column: 5, scope: !4355, inlinedAt: !4420)
!4557 = !DILocation(line: 396, column: 15, scope: !4341)
!4558 = !DILocation(line: 590, column: 8, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4421, file: !798, line: 589, column: 3)
!4560 = !DILocation(line: 590, column: 17, scope: !4559)
!4561 = !DILocation(line: 589, column: 3, scope: !4421)
!4562 = !DILocation(line: 592, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4559, file: !798, line: 592, column: 9)
!4564 = !DILocation(line: 592, column: 35, scope: !4563)
!4565 = !DILocation(line: 593, column: 9, scope: !4563)
!4566 = !DILocation(line: 593, column: 24, scope: !4563)
!4567 = !DILocation(line: 593, column: 31, scope: !4563)
!4568 = !DILocation(line: 593, column: 34, scope: !4563)
!4569 = !DILocation(line: 593, column: 45, scope: !4563)
!4570 = !DILocation(line: 592, column: 9, scope: !4559)
!4571 = !DILocation(line: 595, column: 29, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4563, file: !798, line: 594, column: 7)
!4573 = !DILocation(line: 595, column: 27, scope: !4572)
!4574 = !DILocation(line: 595, column: 46, scope: !4572)
!4575 = !DILocation(line: 596, column: 9, scope: !4572)
!4576 = !DILocation(line: 591, column: 19, scope: !4559)
!4577 = !DILocation(line: 591, column: 36, scope: !4559)
!4578 = !DILocation(line: 591, column: 16, scope: !4559)
!4579 = !DILocation(line: 591, column: 52, scope: !4559)
!4580 = !DILocation(line: 591, column: 69, scope: !4559)
!4581 = !DILocation(line: 591, column: 49, scope: !4559)
!4582 = distinct !{!4582, !4561, !4583}
!4583 = !DILocation(line: 597, column: 7, scope: !4421)
!4584 = !DILocation(line: 602, column: 7, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4341, file: !798, line: 602, column: 7)
!4586 = !DILocation(line: 602, column: 18, scope: !4585)
!4587 = !DILocation(line: 602, column: 7, scope: !4341)
!4588 = !DILocation(line: 612, column: 3, scope: !4341)
!4589 = distinct !DISubprogram(name: "rpl_fclose", scope: !4590, file: !4590, line: 56, type: !4591, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !853, variables: !4633)
!4590 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!72, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3600, line: 7, baseType: !4595)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3602, line: 241, size: 1728, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4595, file: !3602, line: 242, baseType: !72, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4595, file: !3602, line: 247, baseType: !25, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4595, file: !3602, line: 248, baseType: !25, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4595, file: !3602, line: 249, baseType: !25, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4595, file: !3602, line: 250, baseType: !25, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4595, file: !3602, line: 251, baseType: !25, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4595, file: !3602, line: 252, baseType: !25, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4595, file: !3602, line: 253, baseType: !25, size: 64, offset: 448)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4595, file: !3602, line: 254, baseType: !25, size: 64, offset: 512)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4595, file: !3602, line: 256, baseType: !25, size: 64, offset: 576)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4595, file: !3602, line: 257, baseType: !25, size: 64, offset: 640)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4595, file: !3602, line: 258, baseType: !25, size: 64, offset: 704)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4595, file: !3602, line: 260, baseType: !4610, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3602, line: 156, size: 192, elements: !4612)
!4612 = !{!4613, !4614, !4616}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4611, file: !3602, line: 157, baseType: !4610, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4611, file: !3602, line: 158, baseType: !4615, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4611, file: !3602, line: 162, baseType: !72, size: 32, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4595, file: !3602, line: 262, baseType: !4615, size: 64, offset: 832)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4595, file: !3602, line: 264, baseType: !72, size: 32, offset: 896)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4595, file: !3602, line: 268, baseType: !72, size: 32, offset: 928)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4595, file: !3602, line: 270, baseType: !194, size: 64, offset: 960)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4595, file: !3602, line: 274, baseType: !350, size: 16, offset: 1024)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4595, file: !3602, line: 275, baseType: !3630, size: 8, offset: 1040)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4595, file: !3602, line: 276, baseType: !3632, size: 8, offset: 1048)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4595, file: !3602, line: 280, baseType: !3636, size: 64, offset: 1088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4595, file: !3602, line: 289, baseType: !3639, size: 64, offset: 1152)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4595, file: !3602, line: 297, baseType: !27, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4595, file: !3602, line: 298, baseType: !27, size: 64, offset: 1280)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4595, file: !3602, line: 299, baseType: !27, size: 64, offset: 1344)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4595, file: !3602, line: 300, baseType: !27, size: 64, offset: 1408)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4595, file: !3602, line: 302, baseType: !233, size: 64, offset: 1472)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4595, file: !3602, line: 303, baseType: !72, size: 32, offset: 1536)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4595, file: !3602, line: 305, baseType: !167, size: 160, offset: 1568)
!4633 = !{!4634, !4635, !4636, !4637}
!4634 = !DILocalVariable(name: "fp", arg: 1, scope: !4589, file: !4590, line: 56, type: !4593)
!4635 = !DILocalVariable(name: "saved_errno", scope: !4589, file: !4590, line: 58, type: !72)
!4636 = !DILocalVariable(name: "fd", scope: !4589, file: !4590, line: 59, type: !72)
!4637 = !DILocalVariable(name: "result", scope: !4589, file: !4590, line: 60, type: !72)
!4638 = !DILocation(line: 56, column: 19, scope: !4589)
!4639 = !DILocation(line: 58, column: 7, scope: !4589)
!4640 = !DILocation(line: 60, column: 7, scope: !4589)
!4641 = !DILocation(line: 63, column: 8, scope: !4589)
!4642 = !DILocation(line: 59, column: 7, scope: !4589)
!4643 = !DILocation(line: 64, column: 10, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4589, file: !4590, line: 64, column: 7)
!4645 = !DILocation(line: 64, column: 7, scope: !4589)
!4646 = !DILocation(line: 65, column: 12, scope: !4644)
!4647 = !DILocation(line: 65, column: 5, scope: !4644)
!4648 = !DILocation(line: 70, column: 9, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4589, file: !4590, line: 70, column: 7)
!4650 = !DILocation(line: 70, column: 23, scope: !4649)
!4651 = !DILocation(line: 70, column: 33, scope: !4649)
!4652 = !DILocation(line: 70, column: 26, scope: !4649)
!4653 = !DILocation(line: 70, column: 59, scope: !4649)
!4654 = !DILocation(line: 71, column: 7, scope: !4649)
!4655 = !DILocation(line: 71, column: 10, scope: !4649)
!4656 = !DILocation(line: 70, column: 7, scope: !4589)
!4657 = !DILocation(line: 98, column: 12, scope: !4589)
!4658 = !DILocation(line: 103, column: 7, scope: !4589)
!4659 = !DILocation(line: 72, column: 19, scope: !4649)
!4660 = !DILocation(line: 103, column: 19, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4589, file: !4590, line: 103, column: 7)
!4662 = !DILocation(line: 105, column: 13, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4661, file: !4590, line: 104, column: 5)
!4664 = !DILocation(line: 107, column: 5, scope: !4663)
!4665 = !DILocation(line: 110, column: 1, scope: !4589)
!4666 = distinct !DISubprogram(name: "rpl_fflush", scope: !4667, file: !4667, line: 127, type: !4668, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !4710)
!4667 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!72, !4670}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3600, line: 7, baseType: !4672)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3602, line: 241, size: 1728, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4672, file: !3602, line: 242, baseType: !72, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4672, file: !3602, line: 247, baseType: !25, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4672, file: !3602, line: 248, baseType: !25, size: 64, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4672, file: !3602, line: 249, baseType: !25, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4672, file: !3602, line: 250, baseType: !25, size: 64, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4672, file: !3602, line: 251, baseType: !25, size: 64, offset: 320)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4672, file: !3602, line: 252, baseType: !25, size: 64, offset: 384)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4672, file: !3602, line: 253, baseType: !25, size: 64, offset: 448)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4672, file: !3602, line: 254, baseType: !25, size: 64, offset: 512)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4672, file: !3602, line: 256, baseType: !25, size: 64, offset: 576)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4672, file: !3602, line: 257, baseType: !25, size: 64, offset: 640)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4672, file: !3602, line: 258, baseType: !25, size: 64, offset: 704)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4672, file: !3602, line: 260, baseType: !4687, size: 64, offset: 768)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3602, line: 156, size: 192, elements: !4689)
!4689 = !{!4690, !4691, !4693}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4688, file: !3602, line: 157, baseType: !4687, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4688, file: !3602, line: 158, baseType: !4692, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4688, file: !3602, line: 162, baseType: !72, size: 32, offset: 128)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4672, file: !3602, line: 262, baseType: !4692, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4672, file: !3602, line: 264, baseType: !72, size: 32, offset: 896)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4672, file: !3602, line: 268, baseType: !72, size: 32, offset: 928)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4672, file: !3602, line: 270, baseType: !194, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4672, file: !3602, line: 274, baseType: !350, size: 16, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4672, file: !3602, line: 275, baseType: !3630, size: 8, offset: 1040)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4672, file: !3602, line: 276, baseType: !3632, size: 8, offset: 1048)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4672, file: !3602, line: 280, baseType: !3636, size: 64, offset: 1088)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4672, file: !3602, line: 289, baseType: !3639, size: 64, offset: 1152)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4672, file: !3602, line: 297, baseType: !27, size: 64, offset: 1216)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4672, file: !3602, line: 298, baseType: !27, size: 64, offset: 1280)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4672, file: !3602, line: 299, baseType: !27, size: 64, offset: 1344)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4672, file: !3602, line: 300, baseType: !27, size: 64, offset: 1408)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4672, file: !3602, line: 302, baseType: !233, size: 64, offset: 1472)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4672, file: !3602, line: 303, baseType: !72, size: 32, offset: 1536)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4672, file: !3602, line: 305, baseType: !167, size: 160, offset: 1568)
!4710 = !{!4711}
!4711 = !DILocalVariable(name: "stream", arg: 1, scope: !4666, file: !4667, line: 127, type: !4670)
!4712 = !DILocation(line: 127, column: 19, scope: !4666)
!4713 = !DILocation(line: 148, column: 14, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4666, file: !4667, line: 148, column: 7)
!4715 = !DILocation(line: 148, column: 22, scope: !4714)
!4716 = !DILocation(line: 148, column: 27, scope: !4714)
!4717 = !DILocation(line: 148, column: 7, scope: !4666)
!4718 = !DILocation(line: 149, column: 12, scope: !4714)
!4719 = !DILocation(line: 149, column: 5, scope: !4714)
!4720 = !DILocalVariable(name: "fp", arg: 1, scope: !4721, file: !4667, line: 40, type: !4670)
!4721 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4667, file: !4667, line: 40, type: !4722, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !4724)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4670}
!4724 = !{!4720}
!4725 = !DILocation(line: 40, column: 48, scope: !4721, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 153, column: 3, scope: !4666)
!4727 = !DILocation(line: 42, column: 11, scope: !4728, inlinedAt: !4726)
!4728 = distinct !DILexicalBlock(scope: !4721, file: !4667, line: 42, column: 7)
!4729 = !DILocation(line: 42, column: 18, scope: !4728, inlinedAt: !4726)
!4730 = !DILocation(line: 42, column: 7, scope: !4721, inlinedAt: !4726)
!4731 = !DILocation(line: 44, column: 5, scope: !4728, inlinedAt: !4726)
!4732 = !DILocation(line: 155, column: 10, scope: !4666)
!4733 = !DILocation(line: 155, column: 3, scope: !4666)
!4734 = !DILocation(line: 229, column: 1, scope: !4666)
!4735 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4736, file: !4736, line: 28, type: !4737, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !857, variables: !4780)
!4736 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!72, !4739, !4779, !72}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3600, line: 7, baseType: !4741)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3602, line: 241, size: 1728, elements: !4742)
!4742 = !{!4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4741, file: !3602, line: 242, baseType: !72, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4741, file: !3602, line: 247, baseType: !25, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4741, file: !3602, line: 248, baseType: !25, size: 64, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4741, file: !3602, line: 249, baseType: !25, size: 64, offset: 192)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4741, file: !3602, line: 250, baseType: !25, size: 64, offset: 256)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4741, file: !3602, line: 251, baseType: !25, size: 64, offset: 320)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4741, file: !3602, line: 252, baseType: !25, size: 64, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4741, file: !3602, line: 253, baseType: !25, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4741, file: !3602, line: 254, baseType: !25, size: 64, offset: 512)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4741, file: !3602, line: 256, baseType: !25, size: 64, offset: 576)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4741, file: !3602, line: 257, baseType: !25, size: 64, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4741, file: !3602, line: 258, baseType: !25, size: 64, offset: 704)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4741, file: !3602, line: 260, baseType: !4756, size: 64, offset: 768)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3602, line: 156, size: 192, elements: !4758)
!4758 = !{!4759, !4760, !4762}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4757, file: !3602, line: 157, baseType: !4756, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4757, file: !3602, line: 158, baseType: !4761, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4757, file: !3602, line: 162, baseType: !72, size: 32, offset: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4741, file: !3602, line: 262, baseType: !4761, size: 64, offset: 832)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4741, file: !3602, line: 264, baseType: !72, size: 32, offset: 896)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4741, file: !3602, line: 268, baseType: !72, size: 32, offset: 928)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4741, file: !3602, line: 270, baseType: !194, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4741, file: !3602, line: 274, baseType: !350, size: 16, offset: 1024)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4741, file: !3602, line: 275, baseType: !3630, size: 8, offset: 1040)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4741, file: !3602, line: 276, baseType: !3632, size: 8, offset: 1048)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4741, file: !3602, line: 280, baseType: !3636, size: 64, offset: 1088)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4741, file: !3602, line: 289, baseType: !3639, size: 64, offset: 1152)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4741, file: !3602, line: 297, baseType: !27, size: 64, offset: 1216)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4741, file: !3602, line: 298, baseType: !27, size: 64, offset: 1280)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4741, file: !3602, line: 299, baseType: !27, size: 64, offset: 1344)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4741, file: !3602, line: 300, baseType: !27, size: 64, offset: 1408)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4741, file: !3602, line: 302, baseType: !233, size: 64, offset: 1472)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4741, file: !3602, line: 303, baseType: !72, size: 32, offset: 1536)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4741, file: !3602, line: 305, baseType: !167, size: 160, offset: 1568)
!4779 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3764, line: 57, baseType: !194)
!4780 = !{!4781, !4782, !4783, !4784}
!4781 = !DILocalVariable(name: "fp", arg: 1, scope: !4735, file: !4736, line: 28, type: !4739)
!4782 = !DILocalVariable(name: "offset", arg: 2, scope: !4735, file: !4736, line: 28, type: !4779)
!4783 = !DILocalVariable(name: "whence", arg: 3, scope: !4735, file: !4736, line: 28, type: !72)
!4784 = !DILocalVariable(name: "pos", scope: !4785, file: !4736, line: 116, type: !4779)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !4736, line: 112, column: 5)
!4786 = distinct !DILexicalBlock(scope: !4735, file: !4736, line: 51, column: 7)
!4787 = !DILocation(line: 28, column: 15, scope: !4735)
!4788 = !DILocation(line: 28, column: 25, scope: !4735)
!4789 = !DILocation(line: 28, column: 37, scope: !4735)
!4790 = !DILocation(line: 51, column: 11, scope: !4786)
!4791 = !DILocation(line: 51, column: 31, scope: !4786)
!4792 = !DILocation(line: 51, column: 24, scope: !4786)
!4793 = !DILocation(line: 52, column: 7, scope: !4786)
!4794 = !DILocation(line: 52, column: 14, scope: !4786)
!4795 = !{!4324, !878, i64 40}
!4796 = !DILocation(line: 52, column: 35, scope: !4786)
!4797 = !{!4324, !878, i64 32}
!4798 = !DILocation(line: 52, column: 28, scope: !4786)
!4799 = !DILocation(line: 53, column: 7, scope: !4786)
!4800 = !DILocation(line: 53, column: 14, scope: !4786)
!4801 = !{!4324, !878, i64 72}
!4802 = !DILocation(line: 53, column: 28, scope: !4786)
!4803 = !DILocation(line: 51, column: 7, scope: !4735)
!4804 = !DILocation(line: 116, column: 26, scope: !4785)
!4805 = !DILocation(line: 116, column: 19, scope: !4785)
!4806 = !DILocation(line: 116, column: 13, scope: !4785)
!4807 = !DILocation(line: 117, column: 15, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4785, file: !4736, line: 117, column: 11)
!4809 = !DILocation(line: 117, column: 11, scope: !4785)
!4810 = !DILocation(line: 127, column: 11, scope: !4785)
!4811 = !DILocation(line: 127, column: 18, scope: !4785)
!4812 = !DILocation(line: 128, column: 11, scope: !4785)
!4813 = !DILocation(line: 128, column: 19, scope: !4785)
!4814 = !{!4324, !1021, i64 144}
!4815 = !DILocation(line: 159, column: 7, scope: !4785)
!4816 = !DILocation(line: 161, column: 10, scope: !4735)
!4817 = !DILocation(line: 161, column: 3, scope: !4735)
!4818 = !DILocation(line: 162, column: 1, scope: !4735)
