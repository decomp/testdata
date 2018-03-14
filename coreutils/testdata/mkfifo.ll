; ModuleID = 'coreutils-8.27/src/mkfifo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !59
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !65
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !70
@.str.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !74
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !81
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !88
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !119
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !126
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !139
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.55 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.56 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.57 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.58 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.59 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.60 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !146
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !153
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !141
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !155
@.str.65 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.68 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.69 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.70 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.71 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.72 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.73 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.74 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.75 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.76 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.77 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.78 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.81 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.82 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.83 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.84 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.85 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.86 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !161
@.str.1.97 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !170
@.str.3.112 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.113 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.114 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.116 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !579 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !583, metadata !584), !dbg !585
  %2 = icmp eq i32 %0, 0, !dbg !586
  br i1 %2, label %8, label %3, !dbg !588

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !589, !tbaa !591
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !589
  %6 = load i8*, i8** @program_name, align 8, !dbg !589, !tbaa !591
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !589
  br label %45, !dbg !589

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !595
  %10 = load i8*, i8** @program_name, align 8, !dbg !595, !tbaa !591
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !595
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !597
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597, !tbaa !591
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !597
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !598
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !598, !tbaa !591
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !598
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !603
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !591
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !603
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !604
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !591
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !604
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !605
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !591
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !605
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !606
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !591
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !606
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !34, metadata !584) #10, !dbg !607
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !34, metadata !584) #10, !dbg !607
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !609
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !609
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !610
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !42, metadata !584) #10, !dbg !611
  %33 = icmp eq i8* %32, null, !dbg !612
  br i1 %33, label %40, label %34, !dbg !614

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !615
  %36 = icmp eq i32 %35, 0, !dbg !615
  br i1 %36, label %40, label %37, !dbg !616

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !617
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !617
  br label %40, !dbg !619

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !620
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !620
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !621
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !621
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !622
  unreachable, !dbg !622
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !623 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !628, metadata !584), !dbg !650
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !629, metadata !584), !dbg !651
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !635, metadata !584), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !636, metadata !584), !dbg !653
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !638, metadata !584), !dbg !654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !639, metadata !584), !dbg !655
  %3 = load i8*, i8** %1, align 8, !dbg !656, !tbaa !591
  tail call void @set_program_name(i8* %3) #10, !dbg !657
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !658
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !659
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !660
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !661
  br label %8, !dbg !662

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !663

; <label>:10:                                     ; preds = %17, %8
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !635, metadata !584), !dbg !652
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !638, metadata !584), !dbg !654
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !637, metadata !584), !dbg !664
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !662

; <label>:12:                                     ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !665, !tbaa !591
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !635, metadata !584), !dbg !652
  br label %8, !dbg !668, !llvm.loop !669

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !tbaa !591
  %16 = icmp eq i8* %15, null, !dbg !671
  br i1 %16, label %17, label %18, !dbg !675

; <label>:17:                                     ; preds = %14, %18
  br label %10, !dbg !652, !llvm.loop !669

; <label>:18:                                     ; preds = %14
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !676
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #10, !dbg !678
  br label %17, !dbg !679

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 0) #16, !dbg !680
  unreachable, !dbg !680

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !591
  %23 = load i8*, i8** @Version, align 8, !dbg !681, !tbaa !591
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #10, !dbg !681
  tail call void @exit(i32 0) #15, !dbg !681
  unreachable, !dbg !681

; <label>:24:                                     ; preds = %10
  tail call void @usage(i32 1) #16, !dbg !682
  unreachable, !dbg !682

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* @optind, align 4, !dbg !683, !tbaa !685
  %27 = icmp eq i32 %26, %0, !dbg !687
  br i1 %27, label %28, label %30, !dbg !688

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !689
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !691
  tail call void @usage(i32 1) #16, !dbg !692
  unreachable, !dbg !692

; <label>:30:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i32 438, i64 0, metadata !630, metadata !584), !dbg !693
  %31 = icmp ne i8* %9, null, !dbg !694
  br i1 %31, label %32, label %47, !dbg !695

; <label>:32:                                     ; preds = %30
  %33 = tail call %struct.mode_change* @mode_compile(i8* nonnull %9) #10, !dbg !696
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %33, i64 0, metadata !646, metadata !584), !dbg !697
  %34 = icmp eq %struct.mode_change* %33, null, !dbg !698
  br i1 %34, label %35, label %37, !dbg !700

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !701
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36) #10, !dbg !701
  unreachable, !dbg !701

; <label>:37:                                     ; preds = %32
  %38 = tail call i32 @umask(i32 0) #10, !dbg !702
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !643, metadata !584), !dbg !703
  %39 = tail call i32 @umask(i32 %38) #10, !dbg !704
  %40 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %38, %struct.mode_change* nonnull %33, i32* null) #10, !dbg !705
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !630, metadata !584), !dbg !693
  %41 = bitcast %struct.mode_change* %33 to i8*, !dbg !706
  tail call void @free(i8* %41) #10, !dbg !707
  %42 = icmp ugt i32 %40, 511, !dbg !708
  br i1 %42, label %45, label %43, !dbg !710

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* @optind, align 4, !dbg !711, !tbaa !685
  br label %47, !dbg !710

; <label>:45:                                     ; preds = %37
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !714
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46) #10, !dbg !714
  unreachable, !dbg !714

; <label>:47:                                     ; preds = %43, %30
  %48 = phi i32 [ %26, %30 ], [ %44, %43 ], !dbg !711
  %49 = phi i32 [ 438, %30 ], [ %40, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !630, metadata !584), !dbg !693
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !636, metadata !584), !dbg !653
  %50 = icmp slt i32 %48, %0, !dbg !715
  br i1 %50, label %51, label %91, !dbg !716

; <label>:51:                                     ; preds = %47
  br label %52, !dbg !717

; <label>:52:                                     ; preds = %51, %86
  %53 = phi i32 [ %89, %86 ], [ %48, %51 ]
  %54 = phi i32 [ %87, %86 ], [ 0, %51 ]
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !636, metadata !584), !dbg !653
  %55 = sext i32 %53 to i64, !dbg !717
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !717
  %57 = load i8*, i8** %56, align 8, !dbg !717, !tbaa !591
  %58 = tail call i32 @mkfifo(i8* %57, i32 %49) #10, !dbg !720
  %59 = icmp eq i32 %58, 0, !dbg !721
  br i1 %59, label %69, label %60, !dbg !722

; <label>:60:                                     ; preds = %52
  %61 = tail call i32* @__errno_location() #17, !dbg !723
  %62 = load i32, i32* %61, align 4, !dbg !723, !tbaa !685
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !725
  %64 = load i32, i32* @optind, align 4, !dbg !726, !tbaa !685
  %65 = sext i32 %64 to i64, !dbg !726
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !726
  %67 = load i8*, i8** %66, align 8, !dbg !726, !tbaa !591
  %68 = tail call i8* @quotearg_style(i32 4, i8* %67) #10, !dbg !726
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %62, i8* %63, i8* %68) #10, !dbg !727
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !636, metadata !584), !dbg !653
  br label %86, !dbg !728

; <label>:69:                                     ; preds = %52
  br i1 %31, label %70, label %86, !dbg !729

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* @optind, align 4, !dbg !731, !tbaa !685
  %72 = sext i32 %71 to i64, !dbg !732
  %73 = getelementptr inbounds i8*, i8** %1, i64 %72, !dbg !732
  %74 = load i8*, i8** %73, align 8, !dbg !732, !tbaa !591
  %75 = tail call i32 @chmod(i8* %74, i32 %49) #10, !dbg !733
  %76 = icmp eq i32 %75, 0, !dbg !734
  br i1 %76, label %86, label %77, !dbg !735

; <label>:77:                                     ; preds = %70
  %78 = tail call i32* @__errno_location() #17, !dbg !736
  %79 = load i32, i32* %78, align 4, !dbg !736, !tbaa !685
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !738
  %81 = load i32, i32* @optind, align 4, !dbg !739, !tbaa !685
  %82 = sext i32 %81 to i64, !dbg !739
  %83 = getelementptr inbounds i8*, i8** %1, i64 %82, !dbg !739
  %84 = load i8*, i8** %83, align 8, !dbg !739, !tbaa !591
  %85 = tail call i8* @quotearg_style(i32 4, i8* %84) #10, !dbg !739
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %79, i8* %80, i8* %85) #10, !dbg !740
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !636, metadata !584), !dbg !653
  br label %86, !dbg !741

; <label>:86:                                     ; preds = %70, %60, %77, %69
  %87 = phi i32 [ 1, %60 ], [ 1, %77 ], [ %54, %70 ], [ %54, %69 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !636, metadata !584), !dbg !653
  %88 = load i32, i32* @optind, align 4, !dbg !742, !tbaa !685
  %89 = add nsw i32 %88, 1, !dbg !742
  store i32 %89, i32* @optind, align 4, !dbg !742, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !636, metadata !584), !dbg !653
  %90 = icmp slt i32 %89, %0, !dbg !715
  br i1 %90, label %52, label %91, !dbg !716, !llvm.loop !743

; <label>:91:                                     ; preds = %86, %47
  %92 = phi i32 [ 0, %47 ], [ %87, %86 ]
  ret i32 %92, !dbg !745
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

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !746 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !748, metadata !584), !dbg !749
  store i8* %0, i8** @file_name, align 8, !dbg !750, !tbaa !591
  ret void, !dbg !751
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !752 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !756, metadata !584), !dbg !757
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !758, !tbaa !759
  ret void, !dbg !761
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !762 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !767, !tbaa !591
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !768
  %3 = icmp eq i32 %2, 0, !dbg !769
  br i1 %3, label %21, label %4, !dbg !770

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !771, !tbaa !759, !range !772
  %6 = icmp eq i8 %5, 0, !dbg !771
  %7 = tail call i32* @__errno_location() #17, !dbg !773
  br i1 %6, label %11, label %8, !dbg !775

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !776, !tbaa !685
  %10 = icmp eq i32 %9, 32, !dbg !777
  br i1 %10, label %21, label %11, !dbg !778

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !779
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !764, metadata !584), !dbg !780
  %13 = load i8*, i8** @file_name, align 8, !dbg !781, !tbaa !591
  %14 = icmp eq i8* %13, null, !dbg !781
  %15 = load i32, i32* %7, align 4, !tbaa !685
  br i1 %14, label %18, label %16, !dbg !782

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !783
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.23, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !784
  br label %19, !dbg !784

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.24, i64 0, i64 0), i8* %12) #10, !dbg !785
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !786, !tbaa !685
  tail call void @_exit(i32 %20) #15, !dbg !787
  unreachable, !dbg !787

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !788, !tbaa !591
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !790
  %24 = icmp eq i32 %23, 0, !dbg !791
  br i1 %24, label %27, label %25, !dbg !792

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !793, !tbaa !685
  tail call void @_exit(i32 %26) #15, !dbg !794
  unreachable, !dbg !794

; <label>:27:                                     ; preds = %21
  ret void, !dbg !795
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 !dbg !796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !808, metadata !584), !dbg !832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !810, metadata !584), !dbg !833
  %2 = load i8, i8* %0, align 1, !dbg !834, !tbaa !835
  %3 = and i8 %2, -8, !dbg !836
  %4 = icmp eq i8 %3, 48, !dbg !836
  br i1 %4, label %6, label %5, !dbg !836, !llvm.loop !837

; <label>:5:                                      ; preds = %1
  br label %41, !dbg !840

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !842

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ], !dbg !844
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !811, metadata !584), !dbg !845
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !812, metadata !584), !dbg !846
  %11 = shl i32 %9, 3, !dbg !842
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !847
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !811, metadata !584), !dbg !845
  %13 = sext i8 %8 to i32, !dbg !844
  %14 = add i32 %11, -48, !dbg !848
  %15 = add i32 %14, %13, !dbg !849
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !812, metadata !584), !dbg !846
  %16 = icmp ugt i32 %15, 4095, !dbg !850
  br i1 %16, label %154, label %17, !dbg !852

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1, !dbg !853, !tbaa !835
  %19 = and i8 %18, -8, !dbg !854
  %20 = icmp eq i8 %19, 48, !dbg !854
  br i1 %20, label %7, label %21, !dbg !854, !llvm.loop !837

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0, !dbg !855
  br i1 %22, label %23, label %154, !dbg !857

; <label>:23:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !815, metadata !584), !dbg !858
  %24 = ptrtoint i8* %12 to i64, !dbg !859
  %25 = ptrtoint i8* %0 to i64, !dbg !859
  %26 = sub i64 %24, %25, !dbg !859
  %27 = icmp slt i64 %26, 5, !dbg !860
  %28 = and i32 %15, 3072, !dbg !861
  %29 = or i32 %28, 1023, !dbg !862
  %30 = select i1 %27, i32 %29, i32 4095, !dbg !863
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !816, metadata !584), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !865, metadata !584) #10, !dbg !872
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !870, metadata !584) #10, !dbg !874
  %31 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !875
  %32 = bitcast i8* %31 to %struct.mode_change*, !dbg !875
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %32, i64 0, metadata !871, metadata !584) #10, !dbg !876
  store i8 61, i8* %31, align 4, !dbg !877, !tbaa !878
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !880
  store i8 1, i8* %33, align 1, !dbg !881, !tbaa !882
  %34 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !883
  %35 = bitcast i8* %34 to i32*, !dbg !883
  store i32 4095, i32* %35, align 4, !dbg !884, !tbaa !885
  %36 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !886
  %37 = bitcast i8* %36 to i32*, !dbg !886
  store i32 %15, i32* %37, align 4, !dbg !887, !tbaa !888
  %38 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !889
  %39 = bitcast i8* %38 to i32*, !dbg !889
  store i32 %30, i32* %39, align 4, !dbg !890, !tbaa !891
  %40 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !892
  store i8 0, i8* %40, align 1, !dbg !893, !tbaa !882
  br label %154, !dbg !894

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ], !dbg !895
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !817, metadata !584), !dbg !897
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !811, metadata !584), !dbg !845
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ], !dbg !840

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !898

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44, !dbg !899
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !817, metadata !584), !dbg !897
  %49 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !900
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !811, metadata !584), !dbg !845
  %50 = load i8, i8* %49, align 1, !dbg !895, !tbaa !835
  br label %41, !dbg !901, !llvm.loop !902

; <label>:51:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !904, metadata !584) #10, !dbg !910
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !909, metadata !584) #10, !dbg !912
  %52 = icmp ugt i64 %44, 576460752303423487, !dbg !913
  br i1 %52, label %53, label %54, !dbg !915

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #15, !dbg !916
  unreachable, !dbg !916

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4, !dbg !917
  %56 = tail call noalias i8* @xmalloc(i64 %55) #10, !dbg !918
  %57 = bitcast i8* %56 to %struct.mode_change*, !dbg !919
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %57, i64 0, metadata !809, metadata !584), !dbg !920
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !811, metadata !584), !dbg !845
  br label %58, !dbg !921

; <label>:58:                                     ; preds = %149, %54
  %59 = phi i8* [ %0, %54 ], [ %150, %149 ]
  %60 = phi i64 [ 0, %54 ], [ %134, %149 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !810, metadata !584), !dbg !833
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !811, metadata !584), !dbg !845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !819, metadata !584), !dbg !922
  br label %61, !dbg !923

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !819, metadata !584), !dbg !922
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !811, metadata !584), !dbg !845
  %64 = load i8, i8* %62, align 1, !dbg !924, !tbaa !835
  %65 = sext i8 %64 to i32, !dbg !924
  switch i32 %65, label %153 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ], !dbg !927, !llvm.loop !928

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74, !dbg !931

; <label>:67:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !819, metadata !584), !dbg !922
  br label %70, !dbg !932

; <label>:68:                                     ; preds = %61
  br label %70, !dbg !934

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !935

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !819, metadata !584), !dbg !922
  %73 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !936
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !811, metadata !584), !dbg !845
  br label %61, !dbg !937, !llvm.loop !938

; <label>:74:                                     ; preds = %148, %66
  %75 = phi i8 [ %64, %66 ], [ %147, %148 ], !dbg !941
  %76 = phi i8* [ %62, %66 ], [ %129, %148 ]
  %77 = phi i32 [ %63, %66 ], [ %130, %148 ]
  %78 = phi i64 [ %60, %66 ], [ %134, %148 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !810, metadata !584), !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !819, metadata !584), !dbg !922
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !811, metadata !584), !dbg !845
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !811, metadata !584), !dbg !845
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !823, metadata !584), !dbg !942
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !826, metadata !584), !dbg !943
  tail call void @llvm.dbg.value(metadata i8 3, i64 0, metadata !827, metadata !584), !dbg !944
  %80 = load i8, i8* %79, align 1, !dbg !945, !tbaa !835
  %81 = sext i8 %80 to i32, !dbg !945
  switch i32 %81, label %83 [
    i32 48, label %82
    i32 49, label %82
    i32 50, label %82
    i32 51, label %82
    i32 52, label %82
    i32 53, label %82
    i32 54, label %82
    i32 55, label %82
    i32 117, label %101
    i32 103, label %103
    i32 111, label %105
  ], !dbg !946, !llvm.loop !947

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84, !dbg !950

; <label>:83:                                     ; preds = %74
  br label %107, !dbg !952

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ], !dbg !955
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !829, metadata !584), !dbg !956
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !811, metadata !584), !dbg !845
  %88 = shl i32 %87, 3, !dbg !950
  %89 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !957
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !811, metadata !584), !dbg !845
  %90 = sext i8 %85 to i32, !dbg !955
  %91 = add i32 %88, -48, !dbg !958
  %92 = add i32 %91, %90, !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !829, metadata !584), !dbg !956
  %93 = icmp ugt i32 %92, 4095, !dbg !960
  br i1 %93, label %153, label %94, !dbg !962

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1, !dbg !963, !tbaa !835
  %96 = and i8 %95, -8, !dbg !964
  %97 = icmp eq i8 %96, 48, !dbg !964
  br i1 %97, label %84, label %98, !dbg !964, !llvm.loop !947

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0, !dbg !965
  br i1 %99, label %100, label %153, !dbg !967

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %153 [
    i8 0, label %128
    i8 44, label %128
  ], !dbg !968

; <label>:101:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 448, i64 0, metadata !825, metadata !584), !dbg !969
  %102 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !970
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !811, metadata !584), !dbg !845
  br label %128, !dbg !971

; <label>:103:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !825, metadata !584), !dbg !969
  %104 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !972
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !811, metadata !584), !dbg !845
  br label %128, !dbg !973

; <label>:105:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !825, metadata !584), !dbg !969
  %106 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !974
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !811, metadata !584), !dbg !845
  br label %128, !dbg !975

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ], !dbg !952
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  tail call void @llvm.dbg.value(metadata i8 %111, i64 0, metadata !827, metadata !584), !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !825, metadata !584), !dbg !969
  tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !811, metadata !584), !dbg !845
  %112 = sext i8 %108 to i32, !dbg !952
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ], !dbg !976

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292, !dbg !977
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !825, metadata !584), !dbg !969
  br label %123, !dbg !979

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146, !dbg !980
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !825, metadata !584), !dbg !969
  br label %123, !dbg !981

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !825, metadata !584), !dbg !969
  br label %123, !dbg !983

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072, !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !825, metadata !584), !dbg !969
  br label %123, !dbg !985

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512, !dbg !986
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !825, metadata !584), !dbg !969
  br label %123, !dbg !987

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !827, metadata !584), !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !825, metadata !584), !dbg !969
  %126 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !988
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !811, metadata !584), !dbg !845
  %127 = load i8, i8* %126, align 1, !dbg !952, !tbaa !835
  br label %107, !dbg !989, !llvm.loop !990

; <label>:128:                                    ; preds = %107, %100, %100, %105, %103, %101
  %129 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %107 ]
  %130 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %107 ]
  %131 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %107 ]
  %132 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %107 ]
  %133 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !827, metadata !584), !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !826, metadata !584), !dbg !943
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !825, metadata !584), !dbg !969
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !819, metadata !584), !dbg !922
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !811, metadata !584), !dbg !845
  %134 = add i64 %78, 1, !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !810, metadata !584), !dbg !833
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0, !dbg !994
  store i8 %75, i8* %135, align 4, !dbg !995, !tbaa !878
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1, !dbg !996
  store i8 %133, i8* %136, align 1, !dbg !997, !tbaa !882
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2, !dbg !998
  store i32 %130, i32* %137, align 4, !dbg !999, !tbaa !885
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3, !dbg !1000
  store i32 %131, i32* %138, align 4, !dbg !1001, !tbaa !888
  %139 = icmp eq i32 %132, 0, !dbg !1002
  br i1 %139, label %140, label %144, !dbg !1002

; <label>:140:                                    ; preds = %128
  %141 = icmp eq i32 %130, 0, !dbg !1003
  %142 = select i1 %141, i32 -1, i32 %130, !dbg !1003
  %143 = and i32 %142, %131, !dbg !1003
  br label %144, !dbg !1003

; <label>:144:                                    ; preds = %128, %140
  %145 = phi i32 [ %132, %128 ], [ %143, %140 ], !dbg !1002
  %146 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4, !dbg !1004
  store i32 %145, i32* %146, align 4, !dbg !1005, !tbaa !891
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !810, metadata !584), !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !819, metadata !584), !dbg !922
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !811, metadata !584), !dbg !845
  %147 = load i8, i8* %129, align 1, !dbg !1006, !tbaa !835
  switch i8 %147, label %153 [
    i8 61, label %148
    i8 43, label %148
    i8 45, label %148
    i8 44, label %149
    i8 0, label %151
  ], !dbg !1007

; <label>:148:                                    ; preds = %144, %144, %144
  br label %74, !dbg !833

; <label>:149:                                    ; preds = %144
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !825, metadata !584), !dbg !969
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !810, metadata !584), !dbg !833
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !811, metadata !584), !dbg !845
  %150 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1008
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !811, metadata !584), !dbg !845
  br label %58, !dbg !1009, !llvm.loop !1010

; <label>:151:                                    ; preds = %144
  %152 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %134, i32 1, !dbg !1013
  store i8 0, i8* %152, align 1, !dbg !1016, !tbaa !882
  br label %154, !dbg !1017

; <label>:153:                                    ; preds = %61, %98, %100, %144, %84
  tail call void @free(i8* %56) #10, !dbg !1018
  br label %154, !dbg !1019

; <label>:154:                                    ; preds = %7, %23, %21, %153, %151
  %155 = phi %struct.mode_change* [ null, %153 ], [ %57, %151 ], [ %32, %23 ], [ null, %21 ], [ null, %7 ]
  ret %struct.mode_change* %155, !dbg !1020
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 !dbg !1021 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1023, metadata !584), !dbg !1062
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1063
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1024, metadata !584), !dbg !1064
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1065, metadata !584) #10, !dbg !1073
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1072, metadata !584) #10, !dbg !1073
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !1076
  %5 = icmp eq i32 %4, 0, !dbg !1077
  br i1 %5, label %6, label %19, !dbg !1078

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1079
  %8 = load i32, i32* %7, align 8, !dbg !1079, !tbaa !1080
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !865, metadata !584) #10, !dbg !1084
  call void @llvm.dbg.value(metadata i32 4095, i64 0, metadata !870, metadata !584) #10, !dbg !1086
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1087
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, i64 0, metadata !871, metadata !584) #10, !dbg !1088
  store i8 61, i8* %9, align 4, !dbg !1089, !tbaa !878
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1090
  store i8 1, i8* %11, align 1, !dbg !1091, !tbaa !882
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1092
  %13 = bitcast i8* %12 to i32*, !dbg !1092
  store i32 4095, i32* %13, align 4, !dbg !1093, !tbaa !885
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1094
  %15 = bitcast i8* %14 to i32*, !dbg !1094
  store i32 %8, i32* %15, align 4, !dbg !1095, !tbaa !888
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1096
  %17 = bitcast i8* %16 to i32*, !dbg !1096
  store i32 4095, i32* %17, align 4, !dbg !1097, !tbaa !891
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1098
  store i8 0, i8* %18, align 1, !dbg !1099, !tbaa !882
  br label %19, !dbg !1100

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1101
  ret %struct.mode_change* %20, !dbg !1101
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 !dbg !1102 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1109, metadata !584), !dbg !1125
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1110, metadata !584), !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1111, metadata !584), !dbg !1127
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1112, metadata !584), !dbg !1128
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1113, metadata !584), !dbg !1129
  %6 = and i32 %0, 4095, !dbg !1130
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1114, metadata !584), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1115, metadata !584), !dbg !1132
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1112, metadata !584), !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1114, metadata !584), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1115, metadata !584), !dbg !1132
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1133
  %8 = load i8, i8* %7, align 1, !dbg !1133, !tbaa !882
  %9 = icmp eq i8 %8, 0, !dbg !1134
  br i1 %9, label %81, label %10, !dbg !1135

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = zext i1 %1 to i32
  br label %14, !dbg !1135

; <label>:14:                                     ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1115, metadata !584), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1114, metadata !584), !dbg !1131
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %16, i64 0, metadata !1112, metadata !584), !dbg !1128
  %19 = sext i8 %15 to i32, !dbg !1136
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1137
  %21 = load i32, i32* %20, align 4, !dbg !1137, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1116, metadata !584), !dbg !1138
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1139
  %23 = load i32, i32* %22, align 4, !dbg !1139, !tbaa !891
  %24 = xor i32 %23, -1, !dbg !1140
  %25 = and i32 %11, %24, !dbg !1141
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1120, metadata !584), !dbg !1142
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1143
  %27 = load i32, i32* %26, align 4, !dbg !1143, !tbaa !888
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1121, metadata !584), !dbg !1144
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1145

; <label>:28:                                     ; preds = %14
  %29 = and i32 %27, %17, !dbg !1146
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1121, metadata !584), !dbg !1144
  %30 = and i32 %29, 292, !dbg !1148
  %31 = icmp eq i32 %30, 0, !dbg !1149
  %32 = select i1 %31, i32 0, i32 292, !dbg !1149
  %33 = and i32 %29, 146, !dbg !1150
  %34 = icmp eq i32 %33, 0, !dbg !1151
  %35 = select i1 %34, i32 0, i32 146, !dbg !1151
  %36 = and i32 %29, 73, !dbg !1152
  %37 = icmp eq i32 %36, 0, !dbg !1153
  %38 = select i1 %37, i32 0, i32 73, !dbg !1153
  %39 = or i32 %35, %29, !dbg !1154
  %40 = or i32 %39, %32, !dbg !1155
  %41 = or i32 %40, %38, !dbg !1156
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1121, metadata !584), !dbg !1144
  br label %48, !dbg !1157

; <label>:42:                                     ; preds = %14
  %43 = and i32 %17, 73, !dbg !1158
  %44 = or i32 %43, %13, !dbg !1160
  %45 = icmp eq i32 %44, 0, !dbg !1160
  %46 = or i32 %27, 73, !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !1121, metadata !584), !dbg !1144
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1162
  br label %48, !dbg !1162

; <label>:48:                                     ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !1121, metadata !584), !dbg !1144
  %50 = icmp ne i32 %21, 0, !dbg !1163
  %51 = select i1 %50, i32 %21, i32 %12, !dbg !1163
  %52 = xor i32 %25, -1, !dbg !1164
  %53 = and i32 %51, %52, !dbg !1165
  %54 = and i32 %53, %49, !dbg !1166
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !1121, metadata !584), !dbg !1144
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1167
  %56 = load i8, i8* %55, align 4, !dbg !1167, !tbaa !878
  %57 = sext i8 %56 to i32, !dbg !1168
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1169

; <label>:58:                                     ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1170
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1171
  %61 = or i32 %60, %25, !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1122, metadata !584), !dbg !1173
  %62 = and i32 %61, 4095, !dbg !1174
  %63 = xor i32 %62, 4095, !dbg !1174
  %64 = or i32 %63, %18, !dbg !1175
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1115, metadata !584), !dbg !1132
  %65 = and i32 %61, %17, !dbg !1176
  %66 = or i32 %54, %65, !dbg !1177
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !1114, metadata !584), !dbg !1131
  br label %74

; <label>:67:                                     ; preds = %48
  %68 = or i32 %54, %18, !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !1115, metadata !584), !dbg !1132
  %69 = or i32 %54, %17, !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1114, metadata !584), !dbg !1131
  br label %74, !dbg !1180

; <label>:70:                                     ; preds = %48
  %71 = or i32 %54, %18, !dbg !1181
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1115, metadata !584), !dbg !1132
  %72 = xor i32 %54, -1, !dbg !1182
  %73 = and i32 %17, %72, !dbg !1183
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1114, metadata !584), !dbg !1131
  br label %74, !dbg !1184

; <label>:74:                                     ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ]
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ]
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1114, metadata !584), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1115, metadata !584), !dbg !1132
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1185
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %77, i64 0, metadata !1112, metadata !584), !dbg !1128
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %77, i64 0, metadata !1112, metadata !584), !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1114, metadata !584), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1115, metadata !584), !dbg !1132
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1133
  %79 = load i8, i8* %78, align 1, !dbg !1133, !tbaa !882
  %80 = icmp eq i8 %79, 0, !dbg !1134
  br i1 %80, label %81, label %14, !dbg !1135, !llvm.loop !1186

; <label>:81:                                     ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ]
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ]
  %84 = icmp eq i32* %4, null, !dbg !1188
  br i1 %84, label %86, label %85, !dbg !1190

; <label>:85:                                     ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1191, !tbaa !685
  br label %86, !dbg !1192

; <label>:86:                                     ; preds = %81, %85
  ret i32 %83, !dbg !1193
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1194 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1196, metadata !584), !dbg !1199
  %2 = icmp eq i8* %0, null, !dbg !1200
  br i1 %2, label %3, label %6, !dbg !1202

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203, !tbaa !591
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1205
  tail call void @abort() #15, !dbg !1206
  unreachable, !dbg !1206

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1207
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1197, metadata !584), !dbg !1208
  %8 = icmp eq i8* %7, null, !dbg !1209
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1210
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1211
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1198, metadata !584), !dbg !1212
  %11 = ptrtoint i8* %10 to i64, !dbg !1213
  %12 = ptrtoint i8* %0 to i64, !dbg !1213
  %13 = sub i64 %11, %12, !dbg !1213
  %14 = icmp sgt i64 %13, 6, !dbg !1215
  br i1 %14, label %15, label %24, !dbg !1216

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1217
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #14, !dbg !1218
  %18 = icmp eq i32 %17, 0, !dbg !1219
  br i1 %18, label %19, label %24, !dbg !1220

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1196, metadata !584), !dbg !1199
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #14, !dbg !1221
  %21 = icmp eq i32 %20, 0, !dbg !1224
  br i1 %21, label %22, label %24, !dbg !1225

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1226
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1196, metadata !584), !dbg !1199
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1228, !tbaa !591
  br label %24, !dbg !1229

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1196, metadata !584), !dbg !1199
  store i8* %25, i8** @program_name, align 8, !dbg !1230, !tbaa !591
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1231, !tbaa !591
  ret void, !dbg !1232
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1233 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1238, metadata !584), !dbg !1241
  %2 = tail call i32* @__errno_location() #17, !dbg !1242
  %3 = load i32, i32* %2, align 4, !dbg !1242, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1239, metadata !584), !dbg !1243
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1244
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1244
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1244
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1245
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1240, metadata !584), !dbg !1246
  store i32 %3, i32* %2, align 4, !dbg !1247, !tbaa !685
  ret %struct.quoting_options* %8, !dbg !1248
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1249 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1255, metadata !584), !dbg !1256
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1257
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1257
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1258
  %5 = load i32, i32* %4, align 8, !dbg !1258, !tbaa !1259
  ret i32 %5, !dbg !1261
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1262 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1266, metadata !584), !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1267, metadata !584), !dbg !1269
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1270
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1270
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1271
  store i32 %1, i32* %5, align 8, !dbg !1272, !tbaa !1259
  ret void, !dbg !1273
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1274 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1278, metadata !584), !dbg !1286
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1279, metadata !584), !dbg !1287
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1280, metadata !584), !dbg !1288
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1281, metadata !584), !dbg !1289
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1290
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1290
  %6 = lshr i8 %1, 5, !dbg !1291
  %7 = zext i8 %6 to i64, !dbg !1291
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1292
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1282, metadata !584), !dbg !1293
  %9 = and i8 %1, 31, !dbg !1294
  %10 = zext i8 %9 to i32, !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1284, metadata !584), !dbg !1296
  %11 = load i32, i32* %8, align 4, !dbg !1297, !tbaa !685
  %12 = lshr i32 %11, %10, !dbg !1298
  %13 = and i32 %12, 1, !dbg !1299
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1285, metadata !584), !dbg !1300
  %14 = and i32 %2, 1, !dbg !1301
  %15 = xor i32 %13, %14, !dbg !1302
  %16 = shl i32 %15, %10, !dbg !1303
  %17 = xor i32 %16, %11, !dbg !1304
  store i32 %17, i32* %8, align 4, !dbg !1304, !tbaa !685
  ret i32 %13, !dbg !1305
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1306 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1310, metadata !584), !dbg !1313
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1311, metadata !584), !dbg !1314
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1315
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1310, metadata !584), !dbg !1313
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1310, metadata !584), !dbg !1313
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1318
  %6 = load i32, i32* %5, align 4, !dbg !1318, !tbaa !1319
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1312, metadata !584), !dbg !1320
  store i32 %1, i32* %5, align 4, !dbg !1321, !tbaa !1319
  ret i32 %6, !dbg !1322
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1323 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1327, metadata !584), !dbg !1330
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1328, metadata !584), !dbg !1331
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1329, metadata !584), !dbg !1332
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1327, metadata !584), !dbg !1330
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1335
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1327, metadata !584), !dbg !1330
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1336
  store i32 10, i32* %6, align 8, !dbg !1337, !tbaa !1259
  %7 = icmp ne i8* %1, null, !dbg !1338
  %8 = icmp ne i8* %2, null, !dbg !1340
  %9 = and i1 %7, %8, !dbg !1341
  br i1 %9, label %11, label %10, !dbg !1341

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1342
  unreachable, !dbg !1342

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1343
  store i8* %1, i8** %12, align 8, !dbg !1344, !tbaa !1345
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1346
  store i8* %2, i8** %13, align 8, !dbg !1347, !tbaa !1348
  ret void, !dbg !1349
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1350 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1354, metadata !584), !dbg !1362
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1355, metadata !584), !dbg !1363
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1356, metadata !584), !dbg !1364
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1357, metadata !584), !dbg !1365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1358, metadata !584), !dbg !1366
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1367
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1359, metadata !584), !dbg !1368
  %8 = tail call i32* @__errno_location() #17, !dbg !1369
  %9 = load i32, i32* %8, align 4, !dbg !1369, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1360, metadata !584), !dbg !1370
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1371
  %11 = load i32, i32* %10, align 8, !dbg !1371, !tbaa !1259
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1372
  %13 = load i32, i32* %12, align 4, !dbg !1372, !tbaa !1319
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1373
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1374
  %16 = load i8*, i8** %15, align 8, !dbg !1374, !tbaa !1345
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1375
  %18 = load i8*, i8** %17, align 8, !dbg !1375, !tbaa !1348
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1376
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1361, metadata !584), !dbg !1377
  store i32 %9, i32* %8, align 4, !dbg !1378, !tbaa !685
  ret i64 %19, !dbg !1379
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1380 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1386, metadata !584), !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1387, metadata !584), !dbg !1451
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1388, metadata !584), !dbg !1452
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1389, metadata !584), !dbg !1453
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1390, metadata !584), !dbg !1454
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1391, metadata !584), !dbg !1455
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1392, metadata !584), !dbg !1456
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1393, metadata !584), !dbg !1457
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1394, metadata !584), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !584), !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1397, metadata !584), !dbg !1460
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1398, metadata !584), !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1399, metadata !584), !dbg !1462
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1400, metadata !584), !dbg !1463
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1464
  %14 = icmp eq i64 %13, 1, !dbg !1465
  %15 = lshr i32 %5, 1, !dbg !1466
  %16 = trunc i32 %15 to i8, !dbg !1466
  %17 = and i8 %16, 1, !dbg !1466
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1402, metadata !584), !dbg !1466
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1403, metadata !584), !dbg !1467
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1404, metadata !584), !dbg !1468
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1405, metadata !584), !dbg !1469
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1470

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1405, metadata !584), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1400, metadata !584), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1399, metadata !584), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1394, metadata !584), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1393, metadata !584), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1390, metadata !584), !dbg !1454
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
  ], !dbg !1471

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1390, metadata !584), !dbg !1454
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1390, metadata !584), !dbg !1454
  br label %94, !dbg !1472

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1390, metadata !584), !dbg !1454
  %43 = and i8 %36, 1, !dbg !1474
  %44 = icmp eq i8 %43, 0, !dbg !1474
  br i1 %44, label %45, label %94, !dbg !1472

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1476
  br i1 %46, label %94, label %47, !dbg !1479

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1476, !tbaa !835
  br label %94, !dbg !1476

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %28), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1393, metadata !584), !dbg !1457
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %28), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1394, metadata !584), !dbg !1458
  br label %51, !dbg !1485

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1394, metadata !584), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1393, metadata !584), !dbg !1457
  %54 = and i8 %36, 1, !dbg !1486
  %55 = icmp eq i8 %54, 0, !dbg !1486
  br i1 %55, label %56, label %72, !dbg !1488

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !584), !dbg !1459
  %57 = load i8, i8* %52, align 1, !dbg !1489, !tbaa !835
  %58 = icmp eq i8 %57, 0, !dbg !1492
  br i1 %58, label %72, label %59, !dbg !1492

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1493

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1398, metadata !584), !dbg !1461
  %64 = icmp ult i64 %63, %40, !dbg !1493
  br i1 %64, label %65, label %67, !dbg !1496

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1493
  store i8 %61, i8* %66, align 1, !dbg !1493, !tbaa !835
  br label %67, !dbg !1493

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1396, metadata !584), !dbg !1459
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1497
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1396, metadata !584), !dbg !1459
  %70 = load i8, i8* %69, align 1, !dbg !1489, !tbaa !835
  %71 = icmp eq i8 %70, 0, !dbg !1492
  br i1 %71, label %72, label %60, !dbg !1492, !llvm.loop !1498

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1400, metadata !584), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1398, metadata !584), !dbg !1461
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1399, metadata !584), !dbg !1462
  br label %94, !dbg !1501

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1400, metadata !584), !dbg !1463
  br label %76, !dbg !1502

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1400, metadata !584), !dbg !1463
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1402, metadata !584), !dbg !1466
  br label %78, !dbg !1503

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1400, metadata !584), !dbg !1463
  %81 = and i8 %80, 1, !dbg !1504
  %82 = icmp eq i8 %81, 0, !dbg !1504
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1400, metadata !584), !dbg !1463
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1506
  br label %84, !dbg !1506

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1400, metadata !584), !dbg !1463
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1390, metadata !584), !dbg !1454
  %87 = and i8 %86, 1, !dbg !1507
  %88 = icmp eq i8 %87, 0, !dbg !1507
  br i1 %88, label %89, label %94, !dbg !1509

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1510
  br i1 %90, label %94, label %91, !dbg !1513

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1510, !tbaa !835
  br label %94, !dbg !1510

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1402, metadata !584), !dbg !1466
  br label %94, !dbg !1514

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1515
  unreachable, !dbg !1515

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1402, metadata !584), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1400, metadata !584), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1399, metadata !584), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1394, metadata !584), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1393, metadata !584), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1390, metadata !584), !dbg !1454
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1395, metadata !584), !dbg !1516
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
  br label %122, !dbg !1517

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1405, metadata !584), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1395, metadata !584), !dbg !1516
  %131 = icmp eq i64 %126, -1, !dbg !1518
  br i1 %131, label %134, label %132, !dbg !1519

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1520
  br i1 %133, label %590, label %138, !dbg !1521

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1522
  %136 = load i8, i8* %135, align 1, !dbg !1522, !tbaa !835
  %137 = icmp eq i8 %136, 0, !dbg !1523
  br i1 %137, label %590, label %138, !dbg !1521

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1411, metadata !584), !dbg !1524
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1412, metadata !584), !dbg !1525
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1413, metadata !584), !dbg !1526
  br i1 %108, label %139, label %154, !dbg !1527

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1529
  %141 = and i1 %109, %131, !dbg !1530
  br i1 %141, label %142, label %144, !dbg !1530

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1389, metadata !584), !dbg !1453
  br label %144, !dbg !1532

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1389, metadata !584), !dbg !1453
  %146 = icmp ugt i64 %140, %145, !dbg !1533
  br i1 %146, label %154, label %147, !dbg !1534

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1535
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1536
  %150 = icmp ne i32 %149, 0, !dbg !1537
  %151 = or i1 %150, %111, !dbg !1538
  %152 = xor i1 %150, true, !dbg !1538
  %153 = zext i1 %152 to i8, !dbg !1538
  br i1 %151, label %154, label %635, !dbg !1538

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1411, metadata !584), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1389, metadata !584), !dbg !1453
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1539
  %158 = load i8, i8* %157, align 1, !dbg !1539, !tbaa !835
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1406, metadata !584), !dbg !1540
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
  ], !dbg !1541

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1542

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1543

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1412, metadata !584), !dbg !1525
  %162 = and i8 %127, 1, !dbg !1547
  %163 = icmp eq i8 %162, 0, !dbg !1547
  %164 = and i1 %113, %163, !dbg !1547
  br i1 %164, label %165, label %181, !dbg !1547

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1549
  br i1 %166, label %167, label %169, !dbg !1553

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1549
  store i8 39, i8* %168, align 1, !dbg !1549, !tbaa !835
  br label %169, !dbg !1549

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1396, metadata !584), !dbg !1459
  %171 = icmp ult i64 %170, %130, !dbg !1554
  br i1 %171, label %172, label %174, !dbg !1557

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1554
  store i8 36, i8* %173, align 1, !dbg !1554, !tbaa !835
  br label %174, !dbg !1554

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1396, metadata !584), !dbg !1459
  %176 = icmp ult i64 %175, %130, !dbg !1558
  br i1 %176, label %177, label %179, !dbg !1561

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1558
  store i8 39, i8* %178, align 1, !dbg !1558, !tbaa !835
  br label %179, !dbg !1558

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1403, metadata !584), !dbg !1467
  br label %181, !dbg !1562

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1396, metadata !584), !dbg !1459
  %184 = icmp ult i64 %182, %130, !dbg !1563
  br i1 %184, label %185, label %187, !dbg !1566

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1563
  store i8 92, i8* %186, align 1, !dbg !1563, !tbaa !835
  br label %187, !dbg !1563

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1396, metadata !584), !dbg !1459
  br i1 %105, label %189, label %470, !dbg !1567

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1569
  %191 = icmp ult i64 %190, %155, !dbg !1570
  br i1 %191, label %192, label %470, !dbg !1571

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1572
  %194 = load i8, i8* %193, align 1, !dbg !1572, !tbaa !835
  %195 = add i8 %194, -48, !dbg !1573
  %196 = icmp ult i8 %195, 10, !dbg !1573
  br i1 %196, label %197, label %470, !dbg !1573

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1574
  br i1 %198, label %199, label %201, !dbg !1578

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1574
  store i8 48, i8* %200, align 1, !dbg !1574, !tbaa !835
  br label %201, !dbg !1574

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1396, metadata !584), !dbg !1459
  %203 = icmp ult i64 %202, %130, !dbg !1579
  br i1 %203, label %204, label %206, !dbg !1582

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1579
  store i8 48, i8* %205, align 1, !dbg !1579, !tbaa !835
  br label %206, !dbg !1579

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1396, metadata !584), !dbg !1459
  br label %470, !dbg !1583

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1584

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1585

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1586

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1588

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1590
  %214 = icmp ult i64 %213, %155, !dbg !1591
  br i1 %214, label %215, label %470, !dbg !1592

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1593
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1594
  %218 = load i8, i8* %217, align 1, !dbg !1594, !tbaa !835
  %219 = icmp eq i8 %218, 63, !dbg !1595
  br i1 %219, label %220, label %470, !dbg !1596

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1597
  %222 = load i8, i8* %221, align 1, !dbg !1597, !tbaa !835
  %223 = sext i8 %222 to i32, !dbg !1597
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
  ], !dbg !1598

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1599

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1395, metadata !584), !dbg !1516
  %226 = icmp ult i64 %124, %130, !dbg !1601
  br i1 %226, label %227, label %229, !dbg !1604

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1601
  store i8 63, i8* %228, align 1, !dbg !1601, !tbaa !835
  br label %229, !dbg !1601

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1396, metadata !584), !dbg !1459
  %231 = icmp ult i64 %230, %130, !dbg !1605
  br i1 %231, label %232, label %234, !dbg !1608

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1605
  store i8 34, i8* %233, align 1, !dbg !1605, !tbaa !835
  br label %234, !dbg !1605

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1396, metadata !584), !dbg !1459
  %236 = icmp ult i64 %235, %130, !dbg !1609
  br i1 %236, label %237, label %239, !dbg !1612

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1609
  store i8 34, i8* %238, align 1, !dbg !1609, !tbaa !835
  br label %239, !dbg !1609

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1396, metadata !584), !dbg !1459
  %241 = icmp ult i64 %240, %130, !dbg !1613
  br i1 %241, label %242, label %244, !dbg !1616

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1613
  store i8 63, i8* %243, align 1, !dbg !1613, !tbaa !835
  br label %244, !dbg !1613

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1396, metadata !584), !dbg !1459
  br label %470, !dbg !1617

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1410, metadata !584), !dbg !1618
  br label %256, !dbg !1619

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1410, metadata !584), !dbg !1618
  br label %256, !dbg !1620

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1410, metadata !584), !dbg !1618
  br label %254, !dbg !1621

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1410, metadata !584), !dbg !1618
  br label %254, !dbg !1622

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1410, metadata !584), !dbg !1618
  br label %256, !dbg !1623

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1410, metadata !584), !dbg !1618
  br i1 %113, label %252, label %253, !dbg !1624

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1625

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1628

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1410, metadata !584), !dbg !1618
  br i1 %117, label %256, label %635, !dbg !1630

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1410, metadata !584), !dbg !1618
  br i1 %104, label %497, label %470, !dbg !1632

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1633
  br i1 %259, label %260, label %265, !dbg !1635

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1636, !tbaa !835
  %262 = icmp ne i8 %261, 0, !dbg !1637
  %263 = icmp ne i64 %123, 0, !dbg !1638
  %264 = or i1 %263, %262, !dbg !1640
  br i1 %264, label %470, label %271, !dbg !1640

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1641
  %267 = icmp ne i64 %123, 0, !dbg !1638
  %268 = or i1 %267, %266, !dbg !1635
  br i1 %268, label %470, label %271, !dbg !1635

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1638
  br i1 %270, label %271, label %470, !dbg !1642

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1413, metadata !584), !dbg !1526
  br label %272, !dbg !1643

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1413, metadata !584), !dbg !1526
  br i1 %117, label %470, label %635, !dbg !1644

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1413, metadata !584), !dbg !1526
  br i1 %113, label %275, label %470, !dbg !1646

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1647

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1650
  %278 = icmp ne i64 %125, 0, !dbg !1652
  %279 = or i1 %278, %277, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1387, metadata !584), !dbg !1451
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1653
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1397, metadata !584), !dbg !1460
  %282 = icmp ult i64 %124, %281, !dbg !1654
  br i1 %282, label %283, label %285, !dbg !1657

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1654
  store i8 39, i8* %284, align 1, !dbg !1654, !tbaa !835
  br label %285, !dbg !1654

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1396, metadata !584), !dbg !1459
  %287 = icmp ult i64 %286, %281, !dbg !1658
  br i1 %287, label %288, label %290, !dbg !1661

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1658
  store i8 92, i8* %289, align 1, !dbg !1658, !tbaa !835
  br label %290, !dbg !1658

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1396, metadata !584), !dbg !1459
  %292 = icmp ult i64 %291, %281, !dbg !1662
  br i1 %292, label %293, label %295, !dbg !1665

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1662
  store i8 39, i8* %294, align 1, !dbg !1662, !tbaa !835
  br label %295, !dbg !1662

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1403, metadata !584), !dbg !1467
  br label %470, !dbg !1666

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1667

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1414, metadata !584), !dbg !1668
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1669
  %300 = load i16*, i16** %299, align 8, !dbg !1669, !tbaa !591
  %301 = zext i8 %158 to i64, !dbg !1669
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1669
  %303 = load i16, i16* %302, align 2, !dbg !1669, !tbaa !1671
  %304 = lshr i16 %303, 14, !dbg !1673
  %305 = trunc i16 %304 to i8, !dbg !1673
  %306 = and i8 %305, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1417, metadata !584), !dbg !1674
  br label %362, !dbg !1675

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1676
  store i64 0, i64* %10, align 8, !dbg !1677
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1417, metadata !584), !dbg !1674
  %308 = icmp eq i64 %155, -1, !dbg !1678
  br i1 %308, label %309, label %311, !dbg !1680

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1389, metadata !584), !dbg !1453
  br label %311, !dbg !1682

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1389, metadata !584), !dbg !1453
  br label %313, !dbg !1683, !llvm.loop !1684

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1417, metadata !584), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1686
  %316 = add i64 %314, %123, !dbg !1687
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1688
  %318 = sub i64 %312, %316, !dbg !1689
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1418, metadata !584), !dbg !1690
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1436, metadata !584), !dbg !1691
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1439, metadata !584), !dbg !1693
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1694

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1417, metadata !584), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1414, metadata !584), !dbg !1668
  %321 = icmp ugt i64 %312, %316, !dbg !1695
  br i1 %321, label %322, label %347, !dbg !1697

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1698

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1414, metadata !584), !dbg !1668
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1698
  %327 = load i8, i8* %326, align 1, !dbg !1698, !tbaa !835
  %328 = icmp eq i8 %327, 0, !dbg !1697
  br i1 %328, label %347, label %329, !dbg !1699

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1414, metadata !584), !dbg !1668
  %331 = add i64 %330, %123, !dbg !1701
  %332 = icmp ult i64 %331, %312, !dbg !1695
  br i1 %332, label %323, label %347, !dbg !1697, !llvm.loop !1702

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1703
  %335 = and i1 %115, %334, !dbg !1706
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1440, metadata !584), !dbg !1707
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1440, metadata !584), !dbg !1707
  br i1 %335, label %336, label %350, !dbg !1706

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1708

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1440, metadata !584), !dbg !1707
  %339 = add i64 %338, %316, !dbg !1708
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1709
  %341 = load i8, i8* %340, align 1, !dbg !1709, !tbaa !835
  %342 = sext i8 %341 to i32, !dbg !1709
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1710

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1440, metadata !584), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1440, metadata !584), !dbg !1707
  %345 = icmp ult i64 %344, %319, !dbg !1703
  br i1 %345, label %337, label %350, !dbg !1712, !llvm.loop !1713

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1715

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1417, metadata !584), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1715
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1716, !tbaa !685
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1436, metadata !584), !dbg !1691
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1718
  %353 = icmp eq i32 %352, 0, !dbg !1718
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1417, metadata !584), !dbg !1674
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1719
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1417, metadata !584), !dbg !1674
  %355 = add i64 %319, %314, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1417, metadata !584), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1418, metadata !584), !dbg !1690
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1721
  %357 = icmp eq i32 %356, 0, !dbg !1722
  br i1 %357, label %313, label %358, !dbg !1723, !llvm.loop !1684

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1724
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1417, metadata !584), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1715
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1724
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1417, metadata !584), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1414, metadata !584), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1389, metadata !584), !dbg !1453
  %366 = and i8 %365, 1, !dbg !1725
  %367 = icmp ne i8 %366, 0, !dbg !1725
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1413, metadata !584), !dbg !1526
  %368 = icmp ult i64 %364, 2, !dbg !1726
  %369 = or i1 %367, %112, !dbg !1727
  %370 = and i1 %368, %369, !dbg !1728
  br i1 %370, label %470, label %371, !dbg !1728

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1447, metadata !584), !dbg !1730
  br label %373, !dbg !1731

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1412, metadata !584), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1411, metadata !584), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1395, metadata !584), !dbg !1516
  br i1 %369, label %426, label %380, !dbg !1732

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1737

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1412, metadata !584), !dbg !1525
  %382 = and i8 %376, 1, !dbg !1740
  %383 = icmp eq i8 %382, 0, !dbg !1740
  %384 = and i1 %113, %383, !dbg !1740
  br i1 %384, label %385, label %401, !dbg !1740

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1742
  br i1 %386, label %387, label %389, !dbg !1746

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1742
  store i8 39, i8* %388, align 1, !dbg !1742, !tbaa !835
  br label %389, !dbg !1742

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1396, metadata !584), !dbg !1459
  %391 = icmp ult i64 %390, %130, !dbg !1747
  br i1 %391, label %392, label %394, !dbg !1750

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1747
  store i8 36, i8* %393, align 1, !dbg !1747, !tbaa !835
  br label %394, !dbg !1747

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1396, metadata !584), !dbg !1459
  %396 = icmp ult i64 %395, %130, !dbg !1751
  br i1 %396, label %397, label %399, !dbg !1754

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1751
  store i8 39, i8* %398, align 1, !dbg !1751, !tbaa !835
  br label %399, !dbg !1751

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1403, metadata !584), !dbg !1467
  br label %401, !dbg !1755

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1396, metadata !584), !dbg !1459
  %404 = icmp ult i64 %402, %130, !dbg !1756
  br i1 %404, label %405, label %407, !dbg !1759

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1756
  store i8 92, i8* %406, align 1, !dbg !1756, !tbaa !835
  br label %407, !dbg !1756

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1396, metadata !584), !dbg !1459
  %409 = icmp ult i64 %408, %130, !dbg !1760
  br i1 %409, label %410, label %414, !dbg !1763

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1760
  %412 = or i8 %411, 48, !dbg !1760
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1760
  store i8 %412, i8* %413, align 1, !dbg !1760, !tbaa !835
  br label %414, !dbg !1760

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1396, metadata !584), !dbg !1459
  %416 = icmp ult i64 %415, %130, !dbg !1764
  br i1 %416, label %417, label %422, !dbg !1767

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1764
  %419 = and i8 %418, 7, !dbg !1764
  %420 = or i8 %419, 48, !dbg !1764
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1764
  store i8 %420, i8* %421, align 1, !dbg !1764, !tbaa !835
  br label %422, !dbg !1764

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1396, metadata !584), !dbg !1459
  %424 = and i8 %377, 7, !dbg !1768
  %425 = or i8 %424, 48, !dbg !1769
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1406, metadata !584), !dbg !1540
  br label %435, !dbg !1770

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1771
  %428 = icmp eq i8 %427, 0, !dbg !1771
  br i1 %428, label %435, label %429, !dbg !1773

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1774
  br i1 %430, label %431, label %433, !dbg !1778

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1774
  store i8 92, i8* %432, align 1, !dbg !1774, !tbaa !835
  br label %433, !dbg !1774

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1411, metadata !584), !dbg !1524
  br label %435, !dbg !1779

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1412, metadata !584), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1411, metadata !584), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1396, metadata !584), !dbg !1459
  %441 = add i64 %374, 1, !dbg !1780
  %442 = icmp ugt i64 %372, %441, !dbg !1782
  br i1 %442, label %443, label %535, !dbg !1783

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1784
  %445 = icmp ne i8 %444, 0, !dbg !1784
  %446 = and i8 %440, 1, !dbg !1784
  %447 = icmp eq i8 %446, 0, !dbg !1784
  %448 = and i1 %445, %447, !dbg !1784
  br i1 %448, label %449, label %460, !dbg !1784

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1787
  br i1 %450, label %451, label %453, !dbg !1791

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1787
  store i8 39, i8* %452, align 1, !dbg !1787, !tbaa !835
  br label %453, !dbg !1787

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1396, metadata !584), !dbg !1459
  %455 = icmp ult i64 %454, %130, !dbg !1792
  br i1 %455, label %456, label %458, !dbg !1795

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1792
  store i8 39, i8* %457, align 1, !dbg !1792, !tbaa !835
  br label %458, !dbg !1792

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1403, metadata !584), !dbg !1467
  br label %460, !dbg !1796

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1396, metadata !584), !dbg !1459
  %463 = icmp ult i64 %461, %130, !dbg !1797
  br i1 %463, label %464, label %466, !dbg !1800

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1797
  store i8 %438, i8* %465, align 1, !dbg !1797, !tbaa !835
  br label %466, !dbg !1797

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1395, metadata !584), !dbg !1516
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1801
  %469 = load i8, i8* %468, align 1, !dbg !1801, !tbaa !835
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1406, metadata !584), !dbg !1540
  br label %373, !dbg !1802, !llvm.loop !1803

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1413, metadata !584), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1412, metadata !584), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1411, metadata !584), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1395, metadata !584), !dbg !1516
  br i1 %106, label %482, label %481, !dbg !1806

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1808

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1809

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1810
  %485 = zext i8 %484 to i64, !dbg !1810
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1811
  %487 = load i32, i32* %486, align 4, !dbg !1811, !tbaa !685
  %488 = and i8 %477, 31, !dbg !1812
  %489 = zext i8 %488 to i32, !dbg !1813
  %490 = shl i32 1, %489, !dbg !1814
  %491 = and i32 %487, %490, !dbg !1814
  %492 = icmp eq i32 %491, 0, !dbg !1814
  %493 = icmp eq i8 %156, 0, !dbg !1815
  %494 = and i1 %493, %492, !dbg !1816
  br i1 %494, label %535, label %497, !dbg !1816

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1815
  br i1 %496, label %535, label %497, !dbg !1817

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1413, metadata !584), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1395, metadata !584), !dbg !1516
  br i1 %111, label %507, label %635, !dbg !1818

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1412, metadata !584), !dbg !1525
  %508 = and i8 %502, 1, !dbg !1820
  %509 = icmp eq i8 %508, 0, !dbg !1820
  %510 = and i1 %113, %509, !dbg !1820
  br i1 %510, label %511, label %527, !dbg !1820

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1822
  br i1 %512, label %513, label %515, !dbg !1826

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1822
  store i8 39, i8* %514, align 1, !dbg !1822, !tbaa !835
  br label %515, !dbg !1822

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1396, metadata !584), !dbg !1459
  %517 = icmp ult i64 %516, %506, !dbg !1827
  br i1 %517, label %518, label %520, !dbg !1830

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1827
  store i8 36, i8* %519, align 1, !dbg !1827, !tbaa !835
  br label %520, !dbg !1827

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1396, metadata !584), !dbg !1459
  %522 = icmp ult i64 %521, %506, !dbg !1831
  br i1 %522, label %523, label %525, !dbg !1834

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1831
  store i8 39, i8* %524, align 1, !dbg !1831, !tbaa !835
  br label %525, !dbg !1831

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1403, metadata !584), !dbg !1467
  br label %527, !dbg !1835

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1396, metadata !584), !dbg !1459
  %530 = icmp ult i64 %528, %506, !dbg !1836
  br i1 %530, label %531, label %533, !dbg !1839

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1836
  store i8 92, i8* %532, align 1, !dbg !1836, !tbaa !835
  br label %533, !dbg !1836

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1413, metadata !584), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1412, metadata !584), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1395, metadata !584), !dbg !1516
  br label %562, !dbg !1840

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1413, metadata !584), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1412, metadata !584), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1406, metadata !584), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1395, metadata !584), !dbg !1516
  %546 = and i8 %540, 1, !dbg !1840
  %547 = icmp ne i8 %546, 0, !dbg !1840
  %548 = and i8 %543, 1, !dbg !1840
  %549 = icmp eq i8 %548, 0, !dbg !1840
  %550 = and i1 %547, %549, !dbg !1840
  br i1 %550, label %551, label %562, !dbg !1840

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1843
  br i1 %552, label %553, label %555, !dbg !1847

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1843
  store i8 39, i8* %554, align 1, !dbg !1843, !tbaa !835
  br label %555, !dbg !1843

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1396, metadata !584), !dbg !1459
  %557 = icmp ult i64 %556, %545, !dbg !1848
  br i1 %557, label %558, label %560, !dbg !1851

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1848
  store i8 39, i8* %559, align 1, !dbg !1848, !tbaa !835
  br label %560, !dbg !1848

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1403, metadata !584), !dbg !1467
  br label %562, !dbg !1852

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1396, metadata !584), !dbg !1459
  %572 = icmp ult i64 %570, %563, !dbg !1853
  br i1 %572, label %573, label %575, !dbg !1856

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1853
  store i8 %565, i8* %574, align 1, !dbg !1853, !tbaa !835
  br label %575, !dbg !1853

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1396, metadata !584), !dbg !1459
  %577 = and i8 %564, 1, !dbg !1857
  %578 = icmp eq i8 %577, 0, !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1405, metadata !584), !dbg !1469
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1859
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1405, metadata !584), !dbg !1469
  br label %580, !dbg !1860

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1405, metadata !584), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1404, metadata !584), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1403, metadata !584), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1389, metadata !584), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1397, metadata !584), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1395, metadata !584), !dbg !1516
  %589 = add i64 %581, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1395, metadata !584), !dbg !1516
  br label %122, !dbg !1862, !llvm.loop !1863

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1865
  %593 = and i1 %113, %592, !dbg !1867
  %594 = xor i1 %593, true, !dbg !1867
  %595 = or i1 %111, %594, !dbg !1867
  br i1 %595, label %596, label %635, !dbg !1867

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1868
  %598 = xor i1 %597, true, !dbg !1868
  %599 = and i8 %128, 1, !dbg !1870
  %600 = icmp eq i8 %599, 0, !dbg !1870
  %601 = or i1 %600, %598, !dbg !1868
  br i1 %601, label %611, label %602, !dbg !1868

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1871
  %604 = icmp eq i8 %603, 0, !dbg !1871
  br i1 %604, label %607, label %605, !dbg !1874

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1875
  br label %645, !dbg !1876

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1877
  %609 = icmp ne i64 %125, 0, !dbg !1879
  %610 = and i1 %609, %608, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !584), !dbg !1459
  br i1 %610, label %27, label %611, !dbg !1880

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1881
  %613 = and i1 %612, %111, !dbg !1883
  br i1 %613, label %614, label %630, !dbg !1883

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1396, metadata !584), !dbg !1459
  %615 = load i8, i8* %99, align 1, !dbg !1884, !tbaa !835
  %616 = icmp eq i8 %615, 0, !dbg !1887
  br i1 %616, label %630, label %617, !dbg !1887

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1888

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1396, metadata !584), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1398, metadata !584), !dbg !1461
  %622 = icmp ult i64 %621, %130, !dbg !1888
  br i1 %622, label %623, label %625, !dbg !1891

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1888
  store i8 %619, i8* %624, align 1, !dbg !1888, !tbaa !835
  br label %625, !dbg !1888

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1396, metadata !584), !dbg !1459
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1892
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1398, metadata !584), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1396, metadata !584), !dbg !1459
  %628 = load i8, i8* %627, align 1, !dbg !1884, !tbaa !835
  %629 = icmp eq i8 %628, 0, !dbg !1887
  br i1 %629, label %630, label %618, !dbg !1887, !llvm.loop !1893

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1396, metadata !584), !dbg !1459
  %632 = icmp ult i64 %631, %130, !dbg !1895
  br i1 %632, label %633, label %645, !dbg !1897

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1898
  store i8 0, i8* %634, align 1, !dbg !1899, !tbaa !835
  br label %645, !dbg !1898

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1387, metadata !584), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1389, metadata !584), !dbg !1453
  %639 = icmp ne i32 %636, 2, !dbg !1900
  %640 = icmp eq i8 %103, 0, !dbg !1902
  %641 = or i1 %639, %640, !dbg !1903
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1390, metadata !584), !dbg !1454
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1390, metadata !584), !dbg !1454
  %643 = and i32 %5, -3, !dbg !1904
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1905
  br label %645, !dbg !1906

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1907
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1908 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1912, metadata !584), !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1913, metadata !584), !dbg !1917
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1918
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1914, metadata !584), !dbg !1919
  %4 = icmp eq i8* %3, %0, !dbg !1920
  br i1 %4, label %5, label %75, !dbg !1922

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1923
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1915, metadata !584), !dbg !1924
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1925, metadata !584), !dbg !1941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1939, metadata !584), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1940, metadata !584), !dbg !1945
  %7 = load i8, i8* %6, align 1, !dbg !1946, !tbaa !835
  %8 = sext i8 %7 to i32, !dbg !1946
  %9 = and i32 %8, -33, !dbg !1946
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1946

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1948, metadata !584), !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !584), !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !584), !dbg !1967
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1968
  %12 = load i8, i8* %11, align 1, !dbg !1968, !tbaa !835
  %13 = sext i8 %12 to i32, !dbg !1968
  %14 = and i32 %13, -33, !dbg !1968
  %15 = icmp eq i32 %14, 84, !dbg !1968
  br i1 %15, label %16, label %72, !dbg !1968

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1970, metadata !584), !dbg !1983
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1981, metadata !584), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1982, metadata !584), !dbg !1988
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1989
  %18 = load i8, i8* %17, align 1, !dbg !1989, !tbaa !835
  %19 = sext i8 %18 to i32, !dbg !1989
  %20 = and i32 %19, -33, !dbg !1989
  %21 = icmp eq i32 %20, 70, !dbg !1989
  br i1 %21, label %22, label %72, !dbg !1989

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1991, metadata !584), !dbg !2003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2001, metadata !584), !dbg !2007
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2002, metadata !584), !dbg !2008
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2009
  %24 = load i8, i8* %23, align 1, !dbg !2009, !tbaa !835
  %25 = icmp eq i8 %24, 45, !dbg !2009
  br i1 %25, label %26, label %72, !dbg !2011

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2012, metadata !584), !dbg !2023
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2021, metadata !584), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2022, metadata !584), !dbg !2028
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2029
  %28 = load i8, i8* %27, align 1, !dbg !2029, !tbaa !835
  %29 = icmp eq i8 %28, 56, !dbg !2029
  br i1 %29, label %30, label %72, !dbg !2031

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2032, metadata !584), !dbg !2042
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !584), !dbg !2046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2041, metadata !584), !dbg !2047
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2048
  %32 = load i8, i8* %31, align 1, !dbg !2048, !tbaa !835
  %33 = icmp eq i8 %32, 0, !dbg !2048
  br i1 %33, label %34, label %72, !dbg !2050

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2051, !tbaa !835
  %36 = icmp eq i8 %35, 96, !dbg !2052
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !2051
  br label %75, !dbg !2053

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1948, metadata !584), !dbg !2054
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !584), !dbg !2058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !584), !dbg !2059
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2060
  %40 = load i8, i8* %39, align 1, !dbg !2060, !tbaa !835
  %41 = sext i8 %40 to i32, !dbg !2060
  %42 = and i32 %41, -33, !dbg !2060
  %43 = icmp eq i32 %42, 66, !dbg !2060
  br i1 %43, label %44, label %72, !dbg !2060

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1970, metadata !584), !dbg !2061
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1981, metadata !584), !dbg !2063
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1982, metadata !584), !dbg !2064
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2065
  %46 = load i8, i8* %45, align 1, !dbg !2065, !tbaa !835
  %47 = icmp eq i8 %46, 49, !dbg !2065
  br i1 %47, label %48, label %72, !dbg !2066

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1991, metadata !584), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2001, metadata !584), !dbg !2069
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2002, metadata !584), !dbg !2070
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2071
  %50 = load i8, i8* %49, align 1, !dbg !2071, !tbaa !835
  %51 = icmp eq i8 %50, 56, !dbg !2071
  br i1 %51, label %52, label %72, !dbg !2072

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2012, metadata !584), !dbg !2073
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2021, metadata !584), !dbg !2075
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2022, metadata !584), !dbg !2076
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2077
  %54 = load i8, i8* %53, align 1, !dbg !2077, !tbaa !835
  %55 = icmp eq i8 %54, 48, !dbg !2077
  br i1 %55, label %56, label %72, !dbg !2078

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2032, metadata !584), !dbg !2079
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !584), !dbg !2081
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2041, metadata !584), !dbg !2082
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2083
  %58 = load i8, i8* %57, align 1, !dbg !2083, !tbaa !835
  %59 = icmp eq i8 %58, 51, !dbg !2083
  br i1 %59, label %60, label %72, !dbg !2084

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2085, metadata !584), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2092, metadata !584), !dbg !2098
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !584), !dbg !2099
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2100
  %62 = load i8, i8* %61, align 1, !dbg !2100, !tbaa !835
  %63 = icmp eq i8 %62, 48, !dbg !2100
  br i1 %63, label %64, label %72, !dbg !2102

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2103, metadata !584), !dbg !2111
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2109, metadata !584), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2110, metadata !584), !dbg !2116
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2117
  %66 = load i8, i8* %65, align 1, !dbg !2117, !tbaa !835
  %67 = icmp eq i8 %66, 0, !dbg !2117
  br i1 %67, label %68, label %72, !dbg !2119

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2120, !tbaa !835
  %70 = icmp eq i8 %69, 96, !dbg !2121
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !2120
  br label %75, !dbg !2122

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2123
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !2124
  br label %75, !dbg !2125

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2126
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2127 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2131, metadata !584), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2132, metadata !584), !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2133, metadata !584), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2137, metadata !584) #10, !dbg !2150
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2142, metadata !584) #10, !dbg !2152
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2143, metadata !584) #10, !dbg !2153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2144, metadata !584) #10, !dbg !2154
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2155
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2145, metadata !584) #10, !dbg !2156
  %6 = tail call i32* @__errno_location() #17, !dbg !2157
  %7 = load i32, i32* %6, align 4, !dbg !2157, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2146, metadata !584) #10, !dbg !2158
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2159
  %9 = load i32, i32* %8, align 4, !dbg !2159, !tbaa !1319
  %10 = or i32 %9, 1, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2147, metadata !584) #10, !dbg !2161
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2162
  %12 = load i32, i32* %11, align 8, !dbg !2162, !tbaa !1259
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2163
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2164
  %15 = load i8*, i8** %14, align 8, !dbg !2164, !tbaa !1345
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2165
  %17 = load i8*, i8** %16, align 8, !dbg !2165, !tbaa !1348
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2166
  %19 = add i64 %18, 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2148, metadata !584) #10, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2169, metadata !584) #10, !dbg !2174
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2176
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2149, metadata !584) #10, !dbg !2177
  %21 = load i32, i32* %11, align 8, !dbg !2178, !tbaa !1259
  %22 = load i8*, i8** %14, align 8, !dbg !2179, !tbaa !1345
  %23 = load i8*, i8** %16, align 8, !dbg !2180, !tbaa !1348
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2181
  store i32 %7, i32* %6, align 4, !dbg !2182, !tbaa !685
  ret i8* %20, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2138 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2137, metadata !584), !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2142, metadata !584), !dbg !2185
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2143, metadata !584), !dbg !2186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2144, metadata !584), !dbg !2187
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2188
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2145, metadata !584), !dbg !2189
  %7 = tail call i32* @__errno_location() #17, !dbg !2190
  %8 = load i32, i32* %7, align 4, !dbg !2190, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2146, metadata !584), !dbg !2191
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2192
  %10 = load i32, i32* %9, align 4, !dbg !2192, !tbaa !1319
  %11 = icmp ne i64* %2, null, !dbg !2193
  %12 = xor i1 %11, true, !dbg !2193
  %13 = zext i1 %12 to i32, !dbg !2193
  %14 = or i32 %10, %13, !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2147, metadata !584), !dbg !2195
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2196
  %16 = load i32, i32* %15, align 8, !dbg !2196, !tbaa !1259
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2197
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2198
  %19 = load i8*, i8** %18, align 8, !dbg !2198, !tbaa !1345
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2199
  %21 = load i8*, i8** %20, align 8, !dbg !2199, !tbaa !1348
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2200
  %23 = add i64 %22, 1, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2148, metadata !584), !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2169, metadata !584) #10, !dbg !2203
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2205
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2149, metadata !584), !dbg !2206
  %25 = load i32, i32* %15, align 8, !dbg !2207, !tbaa !1259
  %26 = load i8*, i8** %18, align 8, !dbg !2208, !tbaa !1345
  %27 = load i8*, i8** %20, align 8, !dbg !2209, !tbaa !1348
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2210
  store i32 %8, i32* %7, align 4, !dbg !2211, !tbaa !685
  br i1 %11, label %29, label %30, !dbg !2212

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2213, !tbaa !2215
  br label %30, !dbg !2216

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2217
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2218 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2222, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2220, metadata !584), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2221, metadata !584), !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2221, metadata !584), !dbg !2224
  %2 = load i32, i32* @nslots, align 4, !dbg !2225, !tbaa !685
  %3 = icmp sgt i32 %2, 1, !dbg !2228
  br i1 %3, label %4, label %13, !dbg !2229

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2230

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2221, metadata !584), !dbg !2224
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2230
  %8 = load i8*, i8** %7, align 8, !dbg !2230, !tbaa !2231
  tail call void @free(i8* %8) #10, !dbg !2233
  %9 = add nuw i64 %6, 1, !dbg !2234
  %10 = load i32, i32* @nslots, align 4, !dbg !2225, !tbaa !685
  %11 = sext i32 %10 to i64, !dbg !2228
  %12 = icmp slt i64 %9, %11, !dbg !2228
  br i1 %12, label %5, label %13, !dbg !2229, !llvm.loop !2235

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2237
  %15 = load i8*, i8** %14, align 8, !dbg !2237, !tbaa !2231
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2239
  br i1 %16, label %18, label %17, !dbg !2240

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2241
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2243, !tbaa !2244
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2245, !tbaa !2231
  br label %18, !dbg !2246

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2247
  br i1 %19, label %22, label %20, !dbg !2249

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2250
  tail call void @free(i8* %21) #10, !dbg !2252
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2253, !tbaa !591
  br label %22, !dbg !2254

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2255, !tbaa !685
  ret void, !dbg !2256
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2257 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2261, metadata !584), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2262, metadata !584), !dbg !2264
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2265
  ret i8* %3, !dbg !2266
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2267 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2271, metadata !584), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2272, metadata !584), !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2273, metadata !584), !dbg !2287
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2274, metadata !584), !dbg !2288
  %5 = tail call i32* @__errno_location() #17, !dbg !2289
  %6 = load i32, i32* %5, align 4, !dbg !2289, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2275, metadata !584), !dbg !2290
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2291, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2276, metadata !584), !dbg !2292
  %8 = icmp slt i32 %0, 0, !dbg !2293
  br i1 %8, label %9, label %10, !dbg !2295

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2296
  unreachable, !dbg !2296

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2297, !tbaa !685
  %12 = icmp sgt i32 %11, %0, !dbg !2298
  br i1 %12, label %34, label %13, !dbg !2299

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2300
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2301
  br i1 %15, label %16, label %17, !dbg !2303

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2304
  unreachable, !dbg !2304

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2305
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2305
  %20 = add nsw i32 %0, 1, !dbg !2306
  %21 = sext i32 %20 to i64, !dbg !2307
  %22 = shl nsw i64 %21, 4, !dbg !2308
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2309
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2309
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2276, metadata !584), !dbg !2292
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2310, !tbaa !591
  br i1 %14, label %25, label %26, !dbg !2311

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2312, !tbaa.struct !2314
  br label %26, !dbg !2315

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2316, !tbaa !685
  %28 = sext i32 %27 to i64, !dbg !2317
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2317
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2318
  %31 = sub nsw i32 %20, %27, !dbg !2319
  %32 = sext i32 %31 to i64, !dbg !2320
  %33 = shl nsw i64 %32, 4, !dbg !2321
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2318
  store i32 %20, i32* @nslots, align 4, !dbg !2322, !tbaa !685
  br label %34, !dbg !2323

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2276, metadata !584), !dbg !2292
  %36 = sext i32 %0 to i64, !dbg !2324
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2325
  %38 = load i64, i64* %37, align 8, !dbg !2325, !tbaa !2244
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2280, metadata !584), !dbg !2326
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2327
  %40 = load i8*, i8** %39, align 8, !dbg !2327, !tbaa !2231
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2282, metadata !584), !dbg !2328
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2329
  %42 = load i32, i32* %41, align 4, !dbg !2329, !tbaa !1319
  %43 = or i32 %42, 1, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2283, metadata !584), !dbg !2331
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2332
  %45 = load i32, i32* %44, align 8, !dbg !2332, !tbaa !1259
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2333
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2334
  %48 = load i8*, i8** %47, align 8, !dbg !2334, !tbaa !1345
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2335
  %50 = load i8*, i8** %49, align 8, !dbg !2335, !tbaa !1348
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2284, metadata !584), !dbg !2337
  %52 = icmp ugt i64 %38, %51, !dbg !2338
  br i1 %52, label %63, label %53, !dbg !2340

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2280, metadata !584), !dbg !2326
  store i64 %54, i64* %37, align 8, !dbg !2343, !tbaa !2244
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2344
  br i1 %55, label %57, label %56, !dbg !2346

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2347
  br label %57, !dbg !2347

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2169, metadata !584) #10, !dbg !2348
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2282, metadata !584), !dbg !2328
  store i8* %58, i8** %39, align 8, !dbg !2351, !tbaa !2231
  %59 = load i32, i32* %44, align 8, !dbg !2352, !tbaa !1259
  %60 = load i8*, i8** %47, align 8, !dbg !2353, !tbaa !1345
  %61 = load i8*, i8** %49, align 8, !dbg !2354, !tbaa !1348
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2355
  br label %63, !dbg !2356

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2282, metadata !584), !dbg !2328
  store i32 %6, i32* %5, align 4, !dbg !2357, !tbaa !685
  ret i8* %64, !dbg !2358
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2359 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2363, metadata !584), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2364, metadata !584), !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2365, metadata !584), !dbg !2368
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2369
  ret i8* %4, !dbg !2370
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2371 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2375, metadata !584), !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2261, metadata !584) #10, !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2262, metadata !584) #10, !dbg !2379
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2380
  ret i8* %2, !dbg !2381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2382 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2386, metadata !584), !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2387, metadata !584), !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2363, metadata !584) #10, !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2364, metadata !584) #10, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2365, metadata !584) #10, !dbg !2393
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2394
  ret i8* %3, !dbg !2395
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2396 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2404, metadata !2410), !dbg !2411
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2400, metadata !584), !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2401, metadata !584), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2402, metadata !584), !dbg !2415
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2403, metadata !584), !dbg !2417
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !584) #10, !dbg !2418
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2419
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2419
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !584) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2411
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2411
  %8 = icmp eq i32 %1, 10, !dbg !2421
  br i1 %8, label %9, label %10, !dbg !2423

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2424, !noalias !2425
  unreachable, !dbg !2424

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !2420) #10, !dbg !2411
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2428
  store i32 %1, i32* %11, align 8, !dbg !2428, !alias.scope !2425
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2428
  %13 = bitcast i32* %12 to i8*, !dbg !2428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2428
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2429
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2403, metadata !584), !dbg !2417
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2430
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2431
  ret i8* %14, !dbg !2432
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2433 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2404, metadata !2410), !dbg !2442
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2437, metadata !584), !dbg !2444
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2438, metadata !584), !dbg !2445
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2439, metadata !584), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2440, metadata !584), !dbg !2447
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2448
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2441, metadata !584), !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !584) #10, !dbg !2450
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2451
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !584) #10, !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2442
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2442
  %9 = icmp eq i32 %1, 10, !dbg !2452
  br i1 %9, label %10, label %11, !dbg !2453

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2454, !noalias !2455
  unreachable, !dbg !2454

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !2420) #10, !dbg !2442
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2458
  store i32 %1, i32* %12, align 8, !dbg !2458, !alias.scope !2455
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2458
  %14 = bitcast i32* %13 to i8*, !dbg !2458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2458
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2441, metadata !584), !dbg !2449
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2460
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2461
  ret i8* %15, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2463 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2404, metadata !2410), !dbg !2469
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2467, metadata !584), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2468, metadata !584), !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2400, metadata !584) #10, !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2401, metadata !584) #10, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2402, metadata !584) #10, !dbg !2476
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2403, metadata !584) #10, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !584) #10, !dbg !2479
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2480
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2480
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !584) #10, !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2469
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2469
  %7 = icmp eq i32 %0, 10, !dbg !2481
  br i1 %7, label %8, label %9, !dbg !2482

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2483, !noalias !2484
  unreachable, !dbg !2483

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2469
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2487
  store i32 %0, i32* %10, align 8, !dbg !2487, !alias.scope !2484
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2487
  %12 = bitcast i32* %11 to i8*, !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2403, metadata !584) #10, !dbg !2478
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2489
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2490
  ret i8* %13, !dbg !2491
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2492 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2404, metadata !2410), !dbg !2499
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2496, metadata !584), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2497, metadata !584), !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2498, metadata !584), !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2437, metadata !584) #10, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2438, metadata !584) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2439, metadata !584) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2440, metadata !584) #10, !dbg !2508
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2509
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2441, metadata !584) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !584) #10, !dbg !2511
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2512
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !584) #10, !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2499
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2499
  %8 = icmp eq i32 %0, 10, !dbg !2513
  br i1 %8, label %9, label %10, !dbg !2514

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2515, !noalias !2516
  unreachable, !dbg !2515

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2499
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2519
  store i32 %0, i32* %11, align 8, !dbg !2519, !alias.scope !2516
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2519
  %13 = bitcast i32* %12 to i8*, !dbg !2519
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2441, metadata !584) #10, !dbg !2510
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2522
  ret i8* %14, !dbg !2523
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2524 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !584), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2529, metadata !584), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2530, metadata !584), !dbg !2534
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2536, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2531, metadata !584), !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1278, metadata !584), !dbg !2539
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1279, metadata !584), !dbg !2541
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1280, metadata !584), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1281, metadata !584), !dbg !2543
  %6 = lshr i8 %2, 5, !dbg !2544
  %7 = zext i8 %6 to i64, !dbg !2544
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2545
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1282, metadata !584), !dbg !2546
  %9 = and i8 %2, 31, !dbg !2547
  %10 = zext i8 %9 to i32, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1284, metadata !584), !dbg !2549
  %11 = load i32, i32* %8, align 4, !dbg !2550, !tbaa !685
  %12 = lshr i32 %11, %10, !dbg !2551
  %13 = and i32 %12, 1, !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1285, metadata !584), !dbg !2553
  %14 = xor i32 %13, 1, !dbg !2554
  %15 = shl i32 %14, %10, !dbg !2555
  %16 = xor i32 %15, %11, !dbg !2556
  store i32 %16, i32* %8, align 4, !dbg !2556, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2531, metadata !584), !dbg !2538
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2558
  ret i8* %17, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2560 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !584), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2565, metadata !584), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !584) #10, !dbg !2568
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2529, metadata !584) #10, !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2530, metadata !584) #10, !dbg !2571
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2573, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !584) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1278, metadata !584) #10, !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1279, metadata !584) #10, !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1280, metadata !584) #10, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1281, metadata !584) #10, !dbg !2579
  %5 = lshr i8 %1, 5, !dbg !2580
  %6 = zext i8 %5 to i64, !dbg !2580
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2581
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1282, metadata !584) #10, !dbg !2582
  %8 = and i8 %1, 31, !dbg !2583
  %9 = zext i8 %8 to i32, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1284, metadata !584) #10, !dbg !2585
  %10 = load i32, i32* %7, align 4, !dbg !2586, !tbaa !685
  %11 = lshr i32 %10, %9, !dbg !2587
  %12 = and i32 %11, 1, !dbg !2588
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1285, metadata !584) #10, !dbg !2589
  %13 = xor i32 %12, 1, !dbg !2590
  %14 = shl i32 %13, %9, !dbg !2591
  %15 = xor i32 %14, %10, !dbg !2592
  store i32 %15, i32* %7, align 4, !dbg !2592, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !584) #10, !dbg !2574
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2594
  ret i8* %16, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2596 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2598, metadata !584), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !584) #10, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2565, metadata !584) #10, !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !584) #10, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2529, metadata !584) #10, !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2530, metadata !584) #10, !dbg !2606
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2608, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2531, metadata !584) #10, !dbg !2609
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1278, metadata !584) #10, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1279, metadata !584) #10, !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1280, metadata !584) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1281, metadata !584) #10, !dbg !2614
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2615
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1282, metadata !584) #10, !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1284, metadata !584) #10, !dbg !2617
  %5 = load i32, i32* %4, align 4, !dbg !2618, !tbaa !685
  %6 = or i32 %5, 67108864, !dbg !2619
  store i32 %6, i32* %4, align 4, !dbg !2619, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2531, metadata !584) #10, !dbg !2609
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2620
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2621
  ret i8* %7, !dbg !2622
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2623 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2625, metadata !584), !dbg !2627
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2626, metadata !584), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !584) #10, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2529, metadata !584) #10, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2530, metadata !584) #10, !dbg !2632
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2633
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2634, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !584) #10, !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1278, metadata !584) #10, !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1279, metadata !584) #10, !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1280, metadata !584) #10, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1281, metadata !584) #10, !dbg !2640
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1282, metadata !584) #10, !dbg !2642
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1284, metadata !584) #10, !dbg !2643
  %6 = load i32, i32* %5, align 4, !dbg !2644, !tbaa !685
  %7 = or i32 %6, 67108864, !dbg !2645
  store i32 %7, i32* %5, align 4, !dbg !2645, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !584) #10, !dbg !2635
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2647
  ret i8* %8, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2649 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2404, metadata !2410), !dbg !2655
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2651, metadata !584), !dbg !2657
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2652, metadata !584), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2653, metadata !584), !dbg !2659
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2660
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !584) #10, !dbg !2661
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2662
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !584) #10, !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #10, !dbg !2655
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2655
  %9 = icmp eq i32 %1, 10, !dbg !2663
  br i1 %9, label %10, label %11, !dbg !2664

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2665, !noalias !2666
  unreachable, !dbg !2665

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !2420) #10, !dbg !2655
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2669
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2670
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2671
  store i32 %1, i32* %13, align 8, !dbg !2671
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2671
  %15 = bitcast i32* %14 to i8*, !dbg !2671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2671
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2654, metadata !584), !dbg !2672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1278, metadata !584), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1279, metadata !584), !dbg !2675
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1280, metadata !584), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1281, metadata !584), !dbg !2677
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2678
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1282, metadata !584), !dbg !2679
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1284, metadata !584), !dbg !2680
  %17 = load i32, i32* %16, align 4, !dbg !2681, !tbaa !685
  %18 = or i32 %17, 67108864, !dbg !2682
  store i32 %18, i32* %16, align 4, !dbg !2682, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2654, metadata !584), !dbg !2672
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2683
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2684
  ret i8* %19, !dbg !2685
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2686 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2690, metadata !584), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2691, metadata !584), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2692, metadata !584), !dbg !2696
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2693, metadata !584), !dbg !2697
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2698, metadata !584) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !584) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2704, metadata !584) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2705, metadata !584) #10, !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2706, metadata !584) #10, !dbg !2713
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2715, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !584) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1327, metadata !584) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1328, metadata !584) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1329, metadata !584) #10, !dbg !2720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1327, metadata !584) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1327, metadata !584) #10, !dbg !2717
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2721
  store i32 10, i32* %7, align 8, !dbg !2722, !tbaa !1259
  %8 = icmp ne i8* %1, null, !dbg !2723
  %9 = icmp ne i8* %2, null, !dbg !2724
  %10 = and i1 %8, %9, !dbg !2725
  br i1 %10, label %12, label %11, !dbg !2725

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2726
  unreachable, !dbg !2726

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2727
  store i8* %1, i8** %13, align 8, !dbg !2728, !tbaa !1345
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2729
  store i8* %2, i8** %14, align 8, !dbg !2730, !tbaa !1348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !584) #10, !dbg !2716
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2732
  ret i8* %15, !dbg !2733
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2699 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2698, metadata !584), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !584), !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2704, metadata !584), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2705, metadata !584), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2706, metadata !584), !dbg !2738
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2740, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2707, metadata !584), !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1327, metadata !584) #10, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1328, metadata !584) #10, !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1329, metadata !584) #10, !dbg !2745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1327, metadata !584) #10, !dbg !2742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1327, metadata !584) #10, !dbg !2742
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2746
  store i32 10, i32* %8, align 8, !dbg !2747, !tbaa !1259
  %9 = icmp ne i8* %1, null, !dbg !2748
  %10 = icmp ne i8* %2, null, !dbg !2749
  %11 = and i1 %9, %10, !dbg !2750
  br i1 %11, label %13, label %12, !dbg !2750

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2751
  unreachable, !dbg !2751

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2752
  store i8* %1, i8** %14, align 8, !dbg !2753, !tbaa !1345
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2754
  store i8* %2, i8** %15, align 8, !dbg !2755, !tbaa !1348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2707, metadata !584), !dbg !2741
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2757
  ret i8* %16, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2759 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2763, metadata !584), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2764, metadata !584), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2765, metadata !584), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2690, metadata !584) #10, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !584) #10, !dbg !2771
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2692, metadata !584) #10, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2693, metadata !584) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2698, metadata !584) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2703, metadata !584) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2704, metadata !584) #10, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2705, metadata !584) #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2706, metadata !584) #10, !dbg !2779
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2780
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2781, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2707, metadata !584) #10, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1327, metadata !584) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1328, metadata !584) #10, !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1329, metadata !584) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1327, metadata !584) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1327, metadata !584) #10, !dbg !2783
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2787
  store i32 10, i32* %6, align 8, !dbg !2788, !tbaa !1259
  %7 = icmp ne i8* %0, null, !dbg !2789
  %8 = icmp ne i8* %1, null, !dbg !2790
  %9 = and i1 %7, %8, !dbg !2791
  br i1 %9, label %11, label %10, !dbg !2791

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2792
  unreachable, !dbg !2792

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2793
  store i8* %0, i8** %12, align 8, !dbg !2794, !tbaa !1345
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2795
  store i8* %1, i8** %13, align 8, !dbg !2796, !tbaa !1348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2707, metadata !584) #10, !dbg !2782
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2797
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2798
  ret i8* %14, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2800 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2804, metadata !584), !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2805, metadata !584), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2806, metadata !584), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2807, metadata !584), !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2698, metadata !584) #10, !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2703, metadata !584) #10, !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2704, metadata !584) #10, !dbg !2815
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2705, metadata !584) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2706, metadata !584) #10, !dbg !2817
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2819, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !584) #10, !dbg !2820
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1327, metadata !584) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1328, metadata !584) #10, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1329, metadata !584) #10, !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1327, metadata !584) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1327, metadata !584) #10, !dbg !2821
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2825
  store i32 10, i32* %7, align 8, !dbg !2826, !tbaa !1259
  %8 = icmp ne i8* %0, null, !dbg !2827
  %9 = icmp ne i8* %1, null, !dbg !2828
  %10 = and i1 %8, %9, !dbg !2829
  br i1 %10, label %12, label %11, !dbg !2829

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2830
  unreachable, !dbg !2830

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2831
  store i8* %0, i8** %13, align 8, !dbg !2832, !tbaa !1345
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2833
  store i8* %1, i8** %14, align 8, !dbg !2834, !tbaa !1348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !584) #10, !dbg !2820
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2835
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2836
  ret i8* %15, !dbg !2837
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2838 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !584), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !584), !dbg !2846
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2844, metadata !584), !dbg !2847
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2848
  ret i8* %4, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2850 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2854, metadata !584), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2855, metadata !584), !dbg !2857
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2842, metadata !584) #10, !dbg !2858
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2843, metadata !584) #10, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2844, metadata !584) #10, !dbg !2861
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2862
  ret i8* %3, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2864 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2868, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2869, metadata !584), !dbg !2871
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !584) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !584) #10, !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2844, metadata !584) #10, !dbg !2875
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2876
  ret i8* %3, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2878 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2882, metadata !584), !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2868, metadata !584) #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !584) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2842, metadata !584) #10, !dbg !2887
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2843, metadata !584) #10, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2844, metadata !584) #10, !dbg !2890
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2891
  ret i8* %2, !dbg !2892
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2893 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2950, metadata !584), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2951, metadata !584), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2952, metadata !584), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2953, metadata !584), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2954, metadata !584), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2955, metadata !584), !dbg !2961
  %7 = icmp eq i8* %1, null, !dbg !2962
  br i1 %7, label %10, label %8, !dbg !2964

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2965
  br label %12, !dbg !2965

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2966
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i64 0, i64 0), i32 5) #10, !dbg !2967
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2967
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.68, i64 0, i64 0), i32 5) #10, !dbg !2968
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2968
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
  ], !dbg !2969

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2970
  unreachable, !dbg !2970

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.69, i64 0, i64 0), i32 5) #10, !dbg !2972
  %20 = load i8*, i8** %4, align 8, !dbg !2972, !tbaa !591
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2972
  br label %146, !dbg !2973

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.70, i64 0, i64 0), i32 5) #10, !dbg !2974
  %24 = load i8*, i8** %4, align 8, !dbg !2974, !tbaa !591
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2974
  %26 = load i8*, i8** %25, align 8, !dbg !2974, !tbaa !591
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2974
  br label %146, !dbg !2975

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.71, i64 0, i64 0), i32 5) #10, !dbg !2976
  %30 = load i8*, i8** %4, align 8, !dbg !2976, !tbaa !591
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2976
  %32 = load i8*, i8** %31, align 8, !dbg !2976, !tbaa !591
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2976
  %34 = load i8*, i8** %33, align 8, !dbg !2976, !tbaa !591
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2976
  br label %146, !dbg !2977

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.72, i64 0, i64 0), i32 5) #10, !dbg !2978
  %38 = load i8*, i8** %4, align 8, !dbg !2978, !tbaa !591
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2978
  %40 = load i8*, i8** %39, align 8, !dbg !2978, !tbaa !591
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2978
  %42 = load i8*, i8** %41, align 8, !dbg !2978, !tbaa !591
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2978
  %44 = load i8*, i8** %43, align 8, !dbg !2978, !tbaa !591
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2978
  br label %146, !dbg !2979

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.73, i64 0, i64 0), i32 5) #10, !dbg !2980
  %48 = load i8*, i8** %4, align 8, !dbg !2980, !tbaa !591
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2980
  %50 = load i8*, i8** %49, align 8, !dbg !2980, !tbaa !591
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2980
  %52 = load i8*, i8** %51, align 8, !dbg !2980, !tbaa !591
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2980
  %54 = load i8*, i8** %53, align 8, !dbg !2980, !tbaa !591
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2980
  %56 = load i8*, i8** %55, align 8, !dbg !2980, !tbaa !591
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2980
  br label %146, !dbg !2981

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.74, i64 0, i64 0), i32 5) #10, !dbg !2982
  %60 = load i8*, i8** %4, align 8, !dbg !2982, !tbaa !591
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2982
  %62 = load i8*, i8** %61, align 8, !dbg !2982, !tbaa !591
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2982
  %64 = load i8*, i8** %63, align 8, !dbg !2982, !tbaa !591
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2982
  %66 = load i8*, i8** %65, align 8, !dbg !2982, !tbaa !591
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2982
  %68 = load i8*, i8** %67, align 8, !dbg !2982, !tbaa !591
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2982
  %70 = load i8*, i8** %69, align 8, !dbg !2982, !tbaa !591
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2982
  br label %146, !dbg !2983

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.75, i64 0, i64 0), i32 5) #10, !dbg !2984
  %74 = load i8*, i8** %4, align 8, !dbg !2984, !tbaa !591
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2984
  %76 = load i8*, i8** %75, align 8, !dbg !2984, !tbaa !591
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2984
  %78 = load i8*, i8** %77, align 8, !dbg !2984, !tbaa !591
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2984
  %80 = load i8*, i8** %79, align 8, !dbg !2984, !tbaa !591
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2984
  %82 = load i8*, i8** %81, align 8, !dbg !2984, !tbaa !591
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2984
  %84 = load i8*, i8** %83, align 8, !dbg !2984, !tbaa !591
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2984
  %86 = load i8*, i8** %85, align 8, !dbg !2984, !tbaa !591
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2984
  br label %146, !dbg !2985

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.76, i64 0, i64 0), i32 5) #10, !dbg !2986
  %90 = load i8*, i8** %4, align 8, !dbg !2986, !tbaa !591
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2986
  %92 = load i8*, i8** %91, align 8, !dbg !2986, !tbaa !591
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2986
  %94 = load i8*, i8** %93, align 8, !dbg !2986, !tbaa !591
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2986
  %96 = load i8*, i8** %95, align 8, !dbg !2986, !tbaa !591
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2986
  %98 = load i8*, i8** %97, align 8, !dbg !2986, !tbaa !591
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2986
  %100 = load i8*, i8** %99, align 8, !dbg !2986, !tbaa !591
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2986
  %102 = load i8*, i8** %101, align 8, !dbg !2986, !tbaa !591
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2986
  %104 = load i8*, i8** %103, align 8, !dbg !2986, !tbaa !591
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2986
  br label %146, !dbg !2987

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.77, i64 0, i64 0), i32 5) #10, !dbg !2988
  %108 = load i8*, i8** %4, align 8, !dbg !2988, !tbaa !591
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2988
  %110 = load i8*, i8** %109, align 8, !dbg !2988, !tbaa !591
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2988
  %112 = load i8*, i8** %111, align 8, !dbg !2988, !tbaa !591
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2988
  %114 = load i8*, i8** %113, align 8, !dbg !2988, !tbaa !591
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2988
  %116 = load i8*, i8** %115, align 8, !dbg !2988, !tbaa !591
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2988
  %118 = load i8*, i8** %117, align 8, !dbg !2988, !tbaa !591
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2988
  %120 = load i8*, i8** %119, align 8, !dbg !2988, !tbaa !591
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2988
  %122 = load i8*, i8** %121, align 8, !dbg !2988, !tbaa !591
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2988
  %124 = load i8*, i8** %123, align 8, !dbg !2988, !tbaa !591
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2988
  br label %146, !dbg !2989

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.78, i64 0, i64 0), i32 5) #10, !dbg !2990
  %128 = load i8*, i8** %4, align 8, !dbg !2990, !tbaa !591
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2990
  %130 = load i8*, i8** %129, align 8, !dbg !2990, !tbaa !591
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2990
  %132 = load i8*, i8** %131, align 8, !dbg !2990, !tbaa !591
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2990
  %134 = load i8*, i8** %133, align 8, !dbg !2990, !tbaa !591
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2990
  %136 = load i8*, i8** %135, align 8, !dbg !2990, !tbaa !591
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2990
  %138 = load i8*, i8** %137, align 8, !dbg !2990, !tbaa !591
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2990
  %140 = load i8*, i8** %139, align 8, !dbg !2990, !tbaa !591
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2990
  %142 = load i8*, i8** %141, align 8, !dbg !2990, !tbaa !591
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2990
  %144 = load i8*, i8** %143, align 8, !dbg !2990, !tbaa !591
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2990
  br label %146, !dbg !2991

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2993 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2997, metadata !584), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2998, metadata !584), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2999, metadata !584), !dbg !3005
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3000, metadata !584), !dbg !3006
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3001, metadata !584), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3002, metadata !584), !dbg !3008
  br label %6, !dbg !3009

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3002, metadata !584), !dbg !3008
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3011
  %9 = load i8*, i8** %8, align 8, !dbg !3011, !tbaa !591
  %10 = icmp eq i8* %9, null, !dbg !3013
  %11 = add i64 %7, 1, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3002, metadata !584), !dbg !3008
  br i1 %10, label %12, label %6, !dbg !3013, !llvm.loop !3015

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3017
  ret void, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3019 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3030, metadata !584), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !584), !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3032, metadata !584), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3033, metadata !584), !dbg !3041
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3034, metadata !584), !dbg !3042
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3043
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3036, metadata !584), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %11 = load i32, i32* %8, align 8, !dbg !3046
  %12 = icmp ult i32 %11, 41, !dbg !3046
  br i1 %12, label %13, label %18, !dbg !3046

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3046
  %15 = sext i32 %11 to i64, !dbg !3046
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3046
  %17 = add i32 %11, 8, !dbg !3046
  store i32 %17, i32* %8, align 8, !dbg !3046
  br label %21, !dbg !3046

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3046
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3046
  store i8* %20, i8** %10, align 8, !dbg !3046
  br label %21, !dbg !3046

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3046
  %25 = load i8*, i8** %24, align 8, !dbg !3046
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3049
  store i8* %25, i8** %26, align 16, !dbg !3050, !tbaa !591
  %27 = icmp eq i8* %25, null, !dbg !3051
  br i1 %27, label %30, label %28, !dbg !3052

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %29 = icmp ult i32 %22, 41, !dbg !3046
  br i1 %29, label %35, label %32, !dbg !3046

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3054
  ret void, !dbg !3054

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3046
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3046
  store i8* %34, i8** %10, align 8, !dbg !3046
  br label %40, !dbg !3046

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3046
  %37 = sext i32 %22 to i64, !dbg !3046
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3046
  %39 = add i32 %22, 8, !dbg !3046
  store i32 %39, i32* %8, align 8, !dbg !3046
  br label %40, !dbg !3046

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3046
  %44 = load i8*, i8** %43, align 8, !dbg !3046
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3049
  store i8* %44, i8** %45, align 8, !dbg !3050, !tbaa !591
  %46 = icmp eq i8* %44, null, !dbg !3051
  br i1 %46, label %30, label %47, !dbg !3052

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %48 = icmp ult i32 %41, 41, !dbg !3046
  br i1 %48, label %52, label %49, !dbg !3046

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3046
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3046
  store i8* %51, i8** %10, align 8, !dbg !3046
  br label %57, !dbg !3046

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3046
  %54 = sext i32 %41 to i64, !dbg !3046
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3046
  %56 = add i32 %41, 8, !dbg !3046
  store i32 %56, i32* %8, align 8, !dbg !3046
  br label %57, !dbg !3046

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3046
  %61 = load i8*, i8** %60, align 8, !dbg !3046
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3049
  store i8* %61, i8** %62, align 16, !dbg !3050, !tbaa !591
  %63 = icmp eq i8* %61, null, !dbg !3051
  br i1 %63, label %30, label %64, !dbg !3052

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %65 = icmp ult i32 %58, 41, !dbg !3046
  br i1 %65, label %69, label %66, !dbg !3046

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3046
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3046
  store i8* %68, i8** %10, align 8, !dbg !3046
  br label %74, !dbg !3046

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3046
  %71 = sext i32 %58 to i64, !dbg !3046
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3046
  %73 = add i32 %58, 8, !dbg !3046
  store i32 %73, i32* %8, align 8, !dbg !3046
  br label %74, !dbg !3046

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3046
  %78 = load i8*, i8** %77, align 8, !dbg !3046
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3049
  store i8* %78, i8** %79, align 8, !dbg !3050, !tbaa !591
  %80 = icmp eq i8* %78, null, !dbg !3051
  br i1 %80, label %30, label %81, !dbg !3052

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %82 = icmp ult i32 %75, 41, !dbg !3046
  br i1 %82, label %86, label %83, !dbg !3046

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3046
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3046
  store i8* %85, i8** %10, align 8, !dbg !3046
  br label %91, !dbg !3046

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3046
  %88 = sext i32 %75 to i64, !dbg !3046
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3046
  %90 = add i32 %75, 8, !dbg !3046
  store i32 %90, i32* %8, align 8, !dbg !3046
  br label %91, !dbg !3046

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3046
  %95 = load i8*, i8** %94, align 8, !dbg !3046
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3049
  store i8* %95, i8** %96, align 16, !dbg !3050, !tbaa !591
  %97 = icmp eq i8* %95, null, !dbg !3051
  br i1 %97, label %30, label %98, !dbg !3052

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %99 = icmp ult i32 %92, 41, !dbg !3046
  br i1 %99, label %103, label %100, !dbg !3046

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3046
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3046
  store i8* %102, i8** %10, align 8, !dbg !3046
  br label %108, !dbg !3046

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3046
  %105 = sext i32 %92 to i64, !dbg !3046
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3046
  %107 = add i32 %92, 8, !dbg !3046
  store i32 %107, i32* %8, align 8, !dbg !3046
  br label %108, !dbg !3046

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3046
  %111 = load i8*, i8** %110, align 8, !dbg !3046
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3049
  store i8* %111, i8** %112, align 8, !dbg !3050, !tbaa !591
  %113 = icmp eq i8* %111, null, !dbg !3051
  br i1 %113, label %30, label %114, !dbg !3052

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %115 = load i8*, i8** %10, align 8, !dbg !3046
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3046
  store i8* %116, i8** %10, align 8, !dbg !3046
  %117 = bitcast i8* %115 to i8**, !dbg !3046
  %118 = load i8*, i8** %117, align 8, !dbg !3046
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3049
  store i8* %118, i8** %119, align 16, !dbg !3050, !tbaa !591
  %120 = icmp eq i8* %118, null, !dbg !3051
  br i1 %120, label %30, label %121, !dbg !3052

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %122 = load i8*, i8** %10, align 8, !dbg !3046
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3046
  store i8* %123, i8** %10, align 8, !dbg !3046
  %124 = bitcast i8* %122 to i8**, !dbg !3046
  %125 = load i8*, i8** %124, align 8, !dbg !3046
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3049
  store i8* %125, i8** %126, align 8, !dbg !3050, !tbaa !591
  %127 = icmp eq i8* %125, null, !dbg !3051
  br i1 %127, label %30, label %128, !dbg !3052

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %129 = load i8*, i8** %10, align 8, !dbg !3046
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3046
  store i8* %130, i8** %10, align 8, !dbg !3046
  %131 = bitcast i8* %129 to i8**, !dbg !3046
  %132 = load i8*, i8** %131, align 8, !dbg !3046
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3049
  store i8* %132, i8** %133, align 16, !dbg !3050, !tbaa !591
  %134 = icmp eq i8* %132, null, !dbg !3051
  br i1 %134, label %30, label %135, !dbg !3052

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3035, metadata !584), !dbg !3045
  %136 = load i8*, i8** %10, align 8, !dbg !3046
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3046
  store i8* %137, i8** %10, align 8, !dbg !3046
  %138 = bitcast i8* %136 to i8**, !dbg !3046
  %139 = load i8*, i8** %138, align 8, !dbg !3046
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3049
  store i8* %139, i8** %140, align 8, !dbg !3050, !tbaa !591
  %141 = icmp eq i8* %139, null, !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3035, metadata !584), !dbg !3045
  %142 = select i1 %141, i64 9, i64 10, !dbg !3052
  br label %30, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3055 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3059, metadata !584), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3060, metadata !584), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3061, metadata !584), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3062, metadata !584), !dbg !3073
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3074
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3063, metadata !584), !dbg !3075
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3076
  call void @llvm.va_start(i8* nonnull %6), !dbg !3076
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3077
  call void @llvm.va_end(i8* nonnull %6), !dbg !3078
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3079
  ret void, !dbg !3079
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3080 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.81, i64 0, i64 0), i32 5) #10, !dbg !3081
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.82, i64 0, i64 0)) #10, !dbg !3081
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.83, i64 0, i64 0), i32 5) #10, !dbg !3082
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.85, i64 0, i64 0)) #10, !dbg !3082
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.86, i64 0, i64 0), i32 5) #10, !dbg !3083
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3083, !tbaa !591
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3083
  ret void, !dbg !3084
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3085 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3087, metadata !584), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3088, metadata !584), !dbg !3090
  %3 = udiv i64 9223372036854775807, %1, !dbg !3091
  %4 = icmp ult i64 %3, %0, !dbg !3091
  br i1 %4, label %5, label %6, !dbg !3093

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3094
  unreachable, !dbg !3094

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3096, metadata !584) #10, !dbg !3103
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3102, metadata !584) #10, !dbg !3106
  %9 = icmp eq i8* %8, null, !dbg !3107
  %10 = icmp ne i64 %7, 0, !dbg !3109
  %11 = and i1 %10, %9, !dbg !3110
  br i1 %11, label %12, label %13, !dbg !3110

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3111
  unreachable, !dbg !3111

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3112
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3097 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3096, metadata !584), !dbg !3113
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3102, metadata !584), !dbg !3115
  %3 = icmp eq i8* %2, null, !dbg !3116
  %4 = icmp ne i64 %0, 0, !dbg !3117
  %5 = and i1 %4, %3, !dbg !3118
  br i1 %5, label %6, label %7, !dbg !3118

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3119
  unreachable, !dbg !3119

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3120
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3125, metadata !584), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3126, metadata !584), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3127, metadata !584), !dbg !3130
  %4 = udiv i64 9223372036854775807, %2, !dbg !3131
  %5 = icmp ult i64 %4, %1, !dbg !3131
  br i1 %5, label %6, label %7, !dbg !3133

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3134
  unreachable, !dbg !3134

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !584) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3141, metadata !584) #10, !dbg !3144
  %9 = icmp eq i64 %8, 0, !dbg !3145
  %10 = icmp ne i8* %0, null, !dbg !3147
  %11 = and i1 %10, %9, !dbg !3148
  br i1 %11, label %12, label %13, !dbg !3148

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3149
  br label %19, !dbg !3151

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3136, metadata !584) #10, !dbg !3142
  %15 = icmp eq i8* %14, null, !dbg !3153
  %16 = icmp ne i64 %8, 0, !dbg !3155
  %17 = and i1 %16, %15, !dbg !3156
  br i1 %17, label %18, label %19, !dbg !3156

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3157
  unreachable, !dbg !3157

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3158
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !584), !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3141, metadata !584), !dbg !3160
  %3 = icmp eq i64 %1, 0, !dbg !3161
  %4 = icmp ne i8* %0, null, !dbg !3162
  %5 = and i1 %4, %3, !dbg !3163
  br i1 %5, label %6, label %7, !dbg !3163

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3164
  br label %13, !dbg !3165

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3166
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3136, metadata !584), !dbg !3159
  %9 = icmp eq i8* %8, null, !dbg !3167
  %10 = icmp ne i64 %1, 0, !dbg !3168
  %11 = and i1 %10, %9, !dbg !3169
  br i1 %11, label %12, label %13, !dbg !3169

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3170
  unreachable, !dbg !3170

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3171
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !545 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !550, metadata !584), !dbg !3172
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !551, metadata !584), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !552, metadata !584), !dbg !3174
  %4 = load i64, i64* %1, align 8, !dbg !3175, !tbaa !2215
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !553, metadata !584), !dbg !3176
  %5 = icmp eq i8* %0, null, !dbg !3177
  br i1 %5, label %6, label %13, !dbg !3179

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3180
  br i1 %7, label %8, label %17, !dbg !3183

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !553, metadata !584), !dbg !3176
  %10 = icmp ugt i64 %2, 128, !dbg !3186
  %11 = zext i1 %10 to i64, !dbg !3186
  %12 = add nuw nsw i64 %9, %11, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !553, metadata !584), !dbg !3176
  br label %17, !dbg !3188

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3189
  %15 = icmp ugt i64 %14, %4, !dbg !3192
  br i1 %15, label %20, label %16, !dbg !3193

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3194
  unreachable, !dbg !3194

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !553, metadata !584), !dbg !3176
  store i64 %18, i64* %1, align 8, !dbg !3195, !tbaa !2215
  %19 = mul i64 %18, %2, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !584) #10, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3141, metadata !584) #10, !dbg !3199
  br label %27, !dbg !3200

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3201
  %22 = add i64 %4, 1, !dbg !3202
  %23 = add i64 %22, %21, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !553, metadata !584), !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !553, metadata !584), !dbg !3176
  store i64 %23, i64* %1, align 8, !dbg !3195, !tbaa !2215
  %24 = mul i64 %23, %2, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !584) #10, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3141, metadata !584) #10, !dbg !3199
  %25 = icmp eq i64 %24, 0, !dbg !3204
  br i1 %25, label %26, label %27, !dbg !3200

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3205
  br label %34, !dbg !3206

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3207
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3136, metadata !584) #10, !dbg !3197
  %30 = icmp eq i8* %29, null, !dbg !3208
  %31 = icmp ne i64 %28, 0, !dbg !3209
  %32 = and i1 %31, %30, !dbg !3210
  br i1 %32, label %33, label %34, !dbg !3210

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3211
  unreachable, !dbg !3211

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3212
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3215, metadata !584), !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3096, metadata !584) #10, !dbg !3217
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3102, metadata !584) #10, !dbg !3220
  %3 = icmp eq i8* %2, null, !dbg !3221
  %4 = icmp ne i64 %0, 0, !dbg !3222
  %5 = and i1 %4, %3, !dbg !3223
  br i1 %5, label %6, label %7, !dbg !3223

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3224
  unreachable, !dbg !3224

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !584), !dbg !3232
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3231, metadata !584), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !550, metadata !584) #10, !dbg !3234
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !551, metadata !584) #10, !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !552, metadata !584) #10, !dbg !3237
  %3 = load i64, i64* %1, align 8, !dbg !3238, !tbaa !2215
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !553, metadata !584) #10, !dbg !3239
  %4 = icmp eq i8* %0, null, !dbg !3240
  br i1 %4, label %5, label %8, !dbg !3241

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !553, metadata !584) #10, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !553, metadata !584) #10, !dbg !3239
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !553, metadata !584) #10, !dbg !3239
  store i64 %7, i64* %1, align 8, !dbg !3244, !tbaa !2215
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !584) #10, !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3141, metadata !584) #10, !dbg !3247
  br label %17, !dbg !3248

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3249
  br i1 %9, label %11, label %10, !dbg !3250

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3251
  unreachable, !dbg !3251

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3252
  %13 = add i64 %3, 1, !dbg !3253
  %14 = add i64 %13, %12, !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !553, metadata !584) #10, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !553, metadata !584) #10, !dbg !3239
  store i64 %14, i64* %1, align 8, !dbg !3244, !tbaa !2215
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !584) #10, !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3141, metadata !584) #10, !dbg !3247
  %15 = icmp eq i64 %14, 0, !dbg !3255
  br i1 %15, label %16, label %17, !dbg !3248

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3256
  br label %24, !dbg !3257

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3136, metadata !584) #10, !dbg !3245
  %20 = icmp eq i8* %19, null, !dbg !3259
  %21 = icmp ne i64 %18, 0, !dbg !3260
  %22 = and i1 %21, %20, !dbg !3261
  br i1 %22, label %23, label %24, !dbg !3261

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3262
  unreachable, !dbg !3262

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3263
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3264 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3266, metadata !584), !dbg !3267
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3096, metadata !584) #10, !dbg !3268
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3270
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3102, metadata !584) #10, !dbg !3271
  %3 = icmp eq i8* %2, null, !dbg !3272
  %4 = icmp ne i64 %0, 0, !dbg !3273
  %5 = and i1 %4, %3, !dbg !3274
  br i1 %5, label %6, label %7, !dbg !3274

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3275
  unreachable, !dbg !3275

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3276
  ret i8* %2, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3278 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3280, metadata !584), !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3281, metadata !584), !dbg !3284
  %3 = udiv i64 9223372036854775807, %1, !dbg !3285
  %4 = icmp ult i64 %3, %0, !dbg !3285
  br i1 %4, label %8, label %5, !dbg !3287

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3288
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3282, metadata !584), !dbg !3289
  %7 = icmp eq i8* %6, null, !dbg !3290
  br i1 %7, label %8, label %9, !dbg !3291

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3292
  unreachable, !dbg !3292

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3293
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3294 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3300, metadata !584), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3301, metadata !584), !dbg !3303
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3096, metadata !584) #10, !dbg !3304
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3102, metadata !584) #10, !dbg !3307
  %4 = icmp eq i8* %3, null, !dbg !3308
  %5 = icmp ne i64 %1, 0, !dbg !3309
  %6 = and i1 %5, %4, !dbg !3310
  br i1 %6, label %7, label %8, !dbg !3310

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3311
  unreachable, !dbg !3311

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3312
  ret i8* %3, !dbg !3313
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3314 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3316, metadata !584), !dbg !3317
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3318
  %3 = add i64 %2, 1, !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3300, metadata !584) #10, !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3301, metadata !584) #10, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3096, metadata !584) #10, !dbg !3323
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3102, metadata !584) #10, !dbg !3326
  %5 = icmp eq i8* %4, null, !dbg !3327
  %6 = icmp ne i64 %3, 0, !dbg !3328
  %7 = and i1 %6, %5, !dbg !3329
  br i1 %7, label %8, label %9, !dbg !3329

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3330
  unreachable, !dbg !3330

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3331
  ret i8* %4, !dbg !3332
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3333 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3335, !tbaa !685
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.97, i64 0, i64 0), i32 5) #10, !dbg !3336
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* %2) #10, !dbg !3337
  tail call void @abort() #15, !dbg !3338
  unreachable, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3339 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3342, metadata !584), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3343, metadata !584), !dbg !3349
  %3 = icmp eq i64 %0, 0, !dbg !3350
  %4 = icmp eq i64 %1, 0, !dbg !3351
  %5 = or i1 %3, %4, !dbg !3352
  br i1 %5, label %12, label %6, !dbg !3352

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3345, metadata !584), !dbg !3354
  %8 = udiv i64 %7, %1, !dbg !3355
  %9 = icmp eq i64 %8, %0, !dbg !3357
  br i1 %9, label %12, label %10, !dbg !3358

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3359
  store i32 12, i32* %11, align 4, !dbg !3361, !tbaa !685
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3342, metadata !584), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3343, metadata !584), !dbg !3349
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3344, metadata !584), !dbg !3363
  br label %16, !dbg !3364

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3365
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3366 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3383, metadata !584), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !584), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3385, metadata !584), !dbg !3394
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3386, metadata !584), !dbg !3395
  %6 = bitcast i32* %5 to i8*, !dbg !3396
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3396
  %7 = icmp eq i32* %0, null, !dbg !3397
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3383, metadata !584), !dbg !3392
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3399
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3383, metadata !584), !dbg !3392
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3387, metadata !584), !dbg !3401
  %10 = icmp ugt i64 %9, -3, !dbg !3402
  %11 = icmp ne i64 %2, 0, !dbg !3403
  %12 = and i1 %11, %10, !dbg !3404
  br i1 %12, label %13, label %18, !dbg !3404

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3405
  br i1 %14, label %18, label %15, !dbg !3406

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3407, !tbaa !835
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3389, metadata !584), !dbg !3408
  %17 = zext i8 %16 to i32, !dbg !3409
  store i32 %17, i32* %8, align 4, !dbg !3410, !tbaa !685
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3411
  ret i64 %19, !dbg !3411
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3412 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3457, metadata !584), !dbg !3462
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3463
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3464, metadata !584), !dbg !3468
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3470
  %4 = load i32, i32* %3, align 8, !dbg !3470, !tbaa !3471
  %5 = and i32 %4, 32, !dbg !3470
  %6 = icmp eq i32 %5, 0, !dbg !3473
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3474
  %8 = icmp ne i32 %7, 0, !dbg !3475
  br i1 %6, label %9, label %19, !dbg !3476

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3478
  %11 = xor i1 %8, true, !dbg !3479
  %12 = or i1 %10, %11, !dbg !3479
  %13 = sext i1 %8 to i32, !dbg !3479
  br i1 %12, label %22, label %14, !dbg !3479

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3480
  %16 = load i32, i32* %15, align 4, !dbg !3480, !tbaa !685
  %17 = icmp ne i32 %16, 9, !dbg !3481
  %18 = sext i1 %17 to i32, !dbg !3482
  br label %22, !dbg !3482

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3483

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3485
  store i32 0, i32* %21, align 4, !dbg !3487, !tbaa !685
  br label %22, !dbg !3485

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3488
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3489 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3494, metadata !584), !dbg !3497
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3495, metadata !584), !dbg !3498
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3496, metadata !584), !dbg !3500
  %3 = icmp eq i8* %2, null, !dbg !3501
  br i1 %3, label %11, label %4, !dbg !3503

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0)) #14, !dbg !3504
  %6 = icmp eq i32 %5, 0, !dbg !3509
  br i1 %6, label %10, label %7, !dbg !3510

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0)) #14, !dbg !3511
  %9 = icmp eq i32 %8, 0, !dbg !3512
  br i1 %9, label %10, label %11, !dbg !3513

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3495, metadata !584), !dbg !3498
  br label %11, !dbg !3514

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3515
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3516 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3522, metadata !584), !dbg !3596
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3589, metadata !584), !dbg !3599
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3520, metadata !584), !dbg !3601
  %4 = icmp eq i8* %3, null, !dbg !3602
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %3, !dbg !3604
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3520, metadata !584), !dbg !3601
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3605, !tbaa !591
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3536, metadata !584) #10, !dbg !3606
  %7 = icmp eq i8* %6, null, !dbg !3607
  br i1 %7, label %8, label %123, !dbg !3608

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.112, i64 0, i64 0)) #10, !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3537, metadata !584) #10, !dbg !3610
  %10 = icmp eq i8* %9, null, !dbg !3611
  br i1 %10, label %14, label %11, !dbg !3613

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3614, !tbaa !835
  %13 = icmp eq i8 %12, 0, !dbg !3615
  br i1 %13, label %14, label %15, !dbg !3616

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3617

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.113, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3537, metadata !584) #10, !dbg !3610
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3540, metadata !584) #10, !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3542, metadata !584) #10, !dbg !3620
  %18 = icmp eq i64 %17, 0, !dbg !3621
  br i1 %18, label %24, label %19, !dbg !3622

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3623
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3623
  %22 = load i8, i8* %21, align 1, !dbg !3623, !tbaa !835
  %23 = icmp ne i8 %22, 47, !dbg !3623
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3624
  %27 = add i64 %17, 14, !dbg !3625
  %28 = add i64 %27, %26, !dbg !3626
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3539, metadata !584) #10, !dbg !3628
  %30 = icmp eq i8* %29, null, !dbg !3629
  br i1 %30, label %121, label %31, !dbg !3629

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3630
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3633

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3634, !tbaa !835
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3636
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3637
  br label %37, !dbg !3638

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3636
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3637
  br label %37, !dbg !3638

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3544, metadata !584) #10, !dbg !3640
  %39 = icmp slt i32 %38, 0, !dbg !3641
  br i1 %39, label %119, label %40, !dbg !3642

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i64 0, i64 0)) #10, !dbg !3643
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3545, metadata !584) #10, !dbg !3644
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3645
  br i1 %42, label %43, label %45, !dbg !3646

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3647
  br label %119, !dbg !3649

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3586, metadata !584) #10, !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3652

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3653

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3586, metadata !584) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3653
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3654
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3655, metadata !584) #10, !dbg !3660
  %54 = load i8*, i8** %48, align 8, !dbg !3662, !tbaa !3663
  %55 = load i8*, i8** %49, align 8, !dbg !3662, !tbaa !3664
  %56 = icmp ult i8* %54, %55, !dbg !3662
  br i1 %56, label %59, label %57, !dbg !3662, !prof !3665

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3662
  br label %63, !dbg !3662

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3662
  store i8* %60, i8** %48, align 8, !dbg !3662, !tbaa !3663
  %61 = load i8, i8* %54, align 1, !dbg !3662, !tbaa !835
  %62 = zext i8 %61 to i32, !dbg !3662
  br label %63, !dbg !3662

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3662
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3588, metadata !584) #10, !dbg !3666
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3667, !llvm.loop !3668

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3673

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3655, metadata !584) #10, !dbg !3675
  %67 = load i8*, i8** %48, align 8, !dbg !3673, !tbaa !3663
  %68 = load i8*, i8** %49, align 8, !dbg !3673, !tbaa !3664
  %69 = icmp ult i8* %67, %68, !dbg !3673
  br i1 %69, label %72, label %70, !dbg !3673, !prof !3665

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3673
  br label %76, !dbg !3673

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3673
  store i8* %73, i8** %48, align 8, !dbg !3673, !tbaa !3663
  %74 = load i8, i8* %67, align 1, !dbg !3673, !tbaa !835
  %75 = zext i8 %74 to i32, !dbg !3673
  br label %76, !dbg !3673

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3673
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3588, metadata !584) #10, !dbg !3666
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3676, !llvm.loop !3677

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3680
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.116, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3681
  %81 = icmp slt i32 %80, 2, !dbg !3683
  br i1 %81, label %112, label %82, !dbg !3684

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3593, metadata !584) #10, !dbg !3686
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3594, metadata !584) #10, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3595, metadata !584) #10, !dbg !3689
  %85 = icmp eq i64 %51, 0, !dbg !3690
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3692

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  %90 = add i64 %87, 2, !dbg !3693
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3586, metadata !584) #10, !dbg !3650
  br label %96, !dbg !3696

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  %94 = add i64 %93, 1, !dbg !3699
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3586, metadata !584) #10, !dbg !3650
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3586, metadata !584) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  %99 = icmp eq i8* %98, null, !dbg !3701
  br i1 %99, label %100, label %102, !dbg !3703

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  call void @free(i8* %52) #10, !dbg !3704
  br label %112, !dbg !3706

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3707
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3707
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3708
  %104 = xor i64 %84, -1, !dbg !3709
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3709
  %106 = xor i64 %83, -1, !dbg !3710
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3711, metadata !584) #10, !dbg !3720
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3719, metadata !584) #10, !dbg !3720
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3722
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3711, metadata !584) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3719, metadata !584) #10, !dbg !3724
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3726
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3727
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3586, metadata !584) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3587, metadata !584) #10, !dbg !3651
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3707
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3707
  br label %50, !dbg !3728, !llvm.loop !3677

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3707
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3707
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3729
  %116 = icmp eq i64 %113, 0, !dbg !3730
  br i1 %116, label %119, label %117, !dbg !3732

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3733
  store i8 0, i8* %118, align 1, !dbg !3735, !tbaa !835
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3536, metadata !584) #10, !dbg !3606
  call void @free(i8* %29) #10, !dbg !3736
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3536, metadata !584) #10, !dbg !3606
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3737, !tbaa !591
  br label %123, !dbg !3738

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3536, metadata !584) #10, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3521, metadata !584), !dbg !3739
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3521, metadata !584), !dbg !3739
  %125 = load i8, i8* %124, align 1, !dbg !3740, !tbaa !835
  %126 = icmp eq i8 %125, 0, !dbg !3742
  br i1 %126, label %152, label %127, !dbg !3743

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3744

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3521, metadata !584), !dbg !3739
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3744
  %132 = icmp eq i32 %131, 0, !dbg !3746
  br i1 %132, label %139, label %133, !dbg !3747

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3748
  br i1 %134, label %135, label %143, !dbg !3749

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3750
  %137 = load i8, i8* %136, align 1, !dbg !3750, !tbaa !835
  %138 = icmp eq i8 %137, 0, !dbg !3751
  br i1 %138, label %139, label %143, !dbg !3752

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3753
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3755
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3756
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3520, metadata !584), !dbg !3601
  br label %152, !dbg !3757

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3758
  %145 = add i64 %144, 1, !dbg !3759
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3521, metadata !584), !dbg !3739
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3761
  %148 = add i64 %147, 1, !dbg !3762
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3763
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3521, metadata !584), !dbg !3739
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3521, metadata !584), !dbg !3739
  %150 = load i8, i8* %149, align 1, !dbg !3740, !tbaa !835
  %151 = icmp eq i8 %150, 0, !dbg !3742
  br i1 %151, label %152, label %128, !dbg !3743, !llvm.loop !3764

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3520, metadata !584), !dbg !3601
  %154 = load i8, i8* %153, align 1, !dbg !3766, !tbaa !835
  %155 = icmp eq i8 %154, 0, !dbg !3768
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %153, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3520, metadata !584), !dbg !3601
  ret i8* %156, !dbg !3770
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3771 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3816, metadata !584), !dbg !3820
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3817, metadata !584), !dbg !3821
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3819, metadata !584), !dbg !3822
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3823
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3818, metadata !584), !dbg !3824
  %3 = icmp slt i32 %2, 0, !dbg !3825
  br i1 %3, label %4, label %6, !dbg !3827

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3828
  br label %24, !dbg !3829

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3830
  %8 = icmp eq i32 %7, 0, !dbg !3830
  br i1 %8, label %13, label %9, !dbg !3832

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3833
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3834
  %12 = icmp eq i64 %11, -1, !dbg !3835
  br i1 %12, label %16, label %13, !dbg !3836

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3837
  %15 = icmp eq i32 %14, 0, !dbg !3837
  br i1 %15, label %16, label %18, !dbg !3838

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3817, metadata !584), !dbg !3821
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3819, metadata !584), !dbg !3822
  br label %24, !dbg !3840

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3841
  %20 = load i32, i32* %19, align 4, !dbg !3841, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3817, metadata !584), !dbg !3821
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3817, metadata !584), !dbg !3821
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3819, metadata !584), !dbg !3822
  %22 = icmp eq i32 %20, 0, !dbg !3842
  br i1 %22, label %24, label %23, !dbg !3840

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3844, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3819, metadata !584), !dbg !3822
  br label %24, !dbg !3846

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3847
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3848 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3893, metadata !584), !dbg !3894
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3895
  br i1 %2, label %6, label %3, !dbg !3897

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3898
  %5 = icmp eq i32 %4, 0, !dbg !3898
  br i1 %5, label %6, label %8, !dbg !3899

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3900
  br label %17, !dbg !3901

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3902, metadata !584) #10, !dbg !3907
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3909
  %10 = load i32, i32* %9, align 8, !dbg !3909, !tbaa !3471
  %11 = and i32 %10, 256, !dbg !3911
  %12 = icmp eq i32 %11, 0, !dbg !3911
  br i1 %12, label %15, label %13, !dbg !3912

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3913
  br label %15, !dbg !3913

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3914
  br label %17, !dbg !3915

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3916
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3917 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3963, metadata !584), !dbg !3969
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3964, metadata !584), !dbg !3970
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3965, metadata !584), !dbg !3971
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3972
  %5 = load i8*, i8** %4, align 8, !dbg !3972, !tbaa !3664
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3973
  %7 = load i8*, i8** %6, align 8, !dbg !3973, !tbaa !3663
  %8 = icmp eq i8* %5, %7, !dbg !3974
  br i1 %8, label %9, label %28, !dbg !3975

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3976
  %11 = load i8*, i8** %10, align 8, !dbg !3976, !tbaa !3977
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3978
  %13 = load i8*, i8** %12, align 8, !dbg !3978, !tbaa !3979
  %14 = icmp eq i8* %11, %13, !dbg !3980
  br i1 %14, label %15, label %28, !dbg !3981

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3982
  %17 = load i8*, i8** %16, align 8, !dbg !3982, !tbaa !3983
  %18 = icmp eq i8* %17, null, !dbg !3984
  br i1 %18, label %19, label %28, !dbg !3985

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3986
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3966, metadata !584), !dbg !3988
  %22 = icmp eq i64 %21, -1, !dbg !3989
  br i1 %22, label %30, label %23, !dbg !3991

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3992
  %25 = load i32, i32* %24, align 8, !dbg !3993, !tbaa !3471
  %26 = and i32 %25, -17, !dbg !3993
  store i32 %26, i32* %24, align 8, !dbg !3993, !tbaa !3471
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3994
  store i64 %21, i64* %27, align 8, !dbg !3995, !tbaa !3996
  br label %30, !dbg !3997

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3998
  br label %30, !dbg !3999

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4000
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
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !519, !61, !67, !76, !521, !83, !90, !532, !163, !540, !557, !559, !561, !563, !565, !172, !567, !569, !571}
!llvm.ident = !{!573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573}
!llvm.module.flags = !{!574, !575, !576, !577, !578}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 38, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !23)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
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
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{!24, !0}
!24 = !DIGlobalVariableExpression(var: !25)
!25 = distinct !DIGlobalVariable(name: "infomap", scope: !26, file: !27, line: 632, type: !43, isLocal: true, isDefinition: true)
!26 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !27, file: !27, line: 630, type: !28, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !32)
!27 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!32 = !{!33, !34, !35, !42}
!33 = !DILocalVariable(name: "program", arg: 1, scope: !26, file: !27, line: 630, type: !30)
!34 = !DILocalVariable(name: "node", scope: !26, file: !27, line: 642, type: !30)
!35 = !DILocalVariable(name: "map_prog", scope: !26, file: !27, line: 643, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !26, file: !27, line: 632, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !38, file: !27, line: 632, baseType: !30, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !27, line: 632, baseType: !30, size: 64, offset: 64)
!42 = !DILocalVariable(name: "lc_messages", scope: !26, file: !27, line: 655, type: !30)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 896, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 7)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1280, elements: !57)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !49, line: 50, size: 256, elements: !50)
!49 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!51, !52, !54, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !49, line: 52, baseType: !30, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !48, file: !49, line: 55, baseType: !53, size: 32, offset: 64)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !48, file: !49, line: 56, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !48, file: !49, line: 57, baseType: !53, size: 32, offset: 192)
!57 = !{!58}
!58 = !DISubrange(count: 5)
!59 = !DIGlobalVariableExpression(var: !60)
!60 = distinct !DIGlobalVariable(name: "Version", scope: !61, file: !62, line: 2, type: !30, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, globals: !64)
!62 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !{}
!64 = !{!59}
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "file_name", scope: !67, file: !72, line: 36, type: !30, isLocal: true, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, globals: !69)
!68 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !{!65, !70}
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !67, file: !72, line: 46, type: !73, isLocal: true, isDefinition: true)
!72 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "exit_failure", scope: !76, file: !79, line: 24, type: !80, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, globals: !78)
!77 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{!74}
!79 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "program_name", scope: !83, file: !87, line: 33, type: !30, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !85, globals: !86)
!84 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !{!22, !20}
!86 = !{!81}
!87 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !90, file: !121, line: 77, type: !157, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !113, globals: !118)
!91 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!5, !93, !98}
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !94)
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
!113 = !{!53, !114, !115, !20}
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !{!88, !119, !126, !139, !141, !146, !153, !155}
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !90, file: !121, line: 93, type: !122, isLocal: false, isDefinition: true)
!121 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !90, file: !121, line: 1043, type: !128, isLocal: false, isDefinition: true)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !121, line: 57, size: 448, elements: !129)
!129 = !{!130, !131, !132, !137, !138}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !128, file: !121, line: 60, baseType: !5, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !121, line: 63, baseType: !53, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !128, file: !121, line: 67, baseType: !133, size: 256, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !135)
!134 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !128, file: !121, line: 70, baseType: !30, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !128, file: !121, line: 73, baseType: !30, size: 64, offset: 384)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !90, file: !121, line: 108, type: !128, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "slot0", scope: !90, file: !121, line: 834, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "slotvec", scope: !90, file: !121, line: 837, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !121, line: 826, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !121, line: 828, baseType: !115, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !121, line: 829, baseType: !20, size: 64, offset: 64)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "nslots", scope: !90, file: !121, line: 835, type: !53, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "slotvec0", scope: !90, file: !121, line: 836, type: !149, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 704, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!159 = !{!160}
!160 = !DISubrange(count: 11)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !163, file: !166, line: 26, type: !167, isLocal: false, isDefinition: true)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, globals: !165)
!164 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!165 = !{!161}
!166 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 47)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !172, file: !517, line: 120, type: !518, isLocal: true, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !174, retainedTypes: !513, globals: !516)
!173 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !{!175}
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !176, line: 41, size: 32, elements: !177)
!176 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!178 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!179 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!180 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!181 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!182 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!183 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!184 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!185 = !DIEnumerator(name: "DAY_1", value: 131079)
!186 = !DIEnumerator(name: "DAY_2", value: 131080)
!187 = !DIEnumerator(name: "DAY_3", value: 131081)
!188 = !DIEnumerator(name: "DAY_4", value: 131082)
!189 = !DIEnumerator(name: "DAY_5", value: 131083)
!190 = !DIEnumerator(name: "DAY_6", value: 131084)
!191 = !DIEnumerator(name: "DAY_7", value: 131085)
!192 = !DIEnumerator(name: "ABMON_1", value: 131086)
!193 = !DIEnumerator(name: "ABMON_2", value: 131087)
!194 = !DIEnumerator(name: "ABMON_3", value: 131088)
!195 = !DIEnumerator(name: "ABMON_4", value: 131089)
!196 = !DIEnumerator(name: "ABMON_5", value: 131090)
!197 = !DIEnumerator(name: "ABMON_6", value: 131091)
!198 = !DIEnumerator(name: "ABMON_7", value: 131092)
!199 = !DIEnumerator(name: "ABMON_8", value: 131093)
!200 = !DIEnumerator(name: "ABMON_9", value: 131094)
!201 = !DIEnumerator(name: "ABMON_10", value: 131095)
!202 = !DIEnumerator(name: "ABMON_11", value: 131096)
!203 = !DIEnumerator(name: "ABMON_12", value: 131097)
!204 = !DIEnumerator(name: "MON_1", value: 131098)
!205 = !DIEnumerator(name: "MON_2", value: 131099)
!206 = !DIEnumerator(name: "MON_3", value: 131100)
!207 = !DIEnumerator(name: "MON_4", value: 131101)
!208 = !DIEnumerator(name: "MON_5", value: 131102)
!209 = !DIEnumerator(name: "MON_6", value: 131103)
!210 = !DIEnumerator(name: "MON_7", value: 131104)
!211 = !DIEnumerator(name: "MON_8", value: 131105)
!212 = !DIEnumerator(name: "MON_9", value: 131106)
!213 = !DIEnumerator(name: "MON_10", value: 131107)
!214 = !DIEnumerator(name: "MON_11", value: 131108)
!215 = !DIEnumerator(name: "MON_12", value: 131109)
!216 = !DIEnumerator(name: "AM_STR", value: 131110)
!217 = !DIEnumerator(name: "PM_STR", value: 131111)
!218 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!219 = !DIEnumerator(name: "D_FMT", value: 131113)
!220 = !DIEnumerator(name: "T_FMT", value: 131114)
!221 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!222 = !DIEnumerator(name: "ERA", value: 131116)
!223 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!224 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!225 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!226 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!227 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!228 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!229 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!230 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!231 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!232 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!233 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!234 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!235 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!236 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!237 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!238 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!239 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!240 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!241 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!242 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!243 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!244 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!245 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!246 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!247 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!248 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!249 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!250 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!251 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!252 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!253 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!254 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!255 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!256 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!257 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!258 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!259 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!260 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!261 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!262 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!263 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!264 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!265 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!266 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!267 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!268 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!269 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!270 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!271 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!272 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!273 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!274 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!275 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!276 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!277 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!278 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!279 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!280 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!281 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!282 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!283 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!284 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!285 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!286 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!287 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!288 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!289 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!290 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!291 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!292 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!293 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!294 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!295 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!296 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!297 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!298 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!299 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!300 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!301 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!302 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!303 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!304 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!305 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!306 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!307 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!308 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!309 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!310 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!311 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!312 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!313 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!314 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!315 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!316 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!319 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!320 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!321 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!322 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!323 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!324 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!325 = !DIEnumerator(name: "CODESET", value: 14)
!326 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!327 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!328 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!329 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!372 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!373 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!374 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!381 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!382 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!383 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!384 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!385 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!397 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!398 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!399 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!400 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!401 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!402 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!403 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!404 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!405 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!406 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!407 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!408 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!409 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!410 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!411 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!412 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!413 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!414 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!415 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!416 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!417 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!418 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!419 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!420 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!421 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!422 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!436 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!437 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!440 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!441 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!442 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!443 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!444 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!445 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!446 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!447 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!448 = !DIEnumerator(name: "THOUSEP", value: 65537)
!449 = !DIEnumerator(name: "__GROUPING", value: 65538)
!450 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!451 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!452 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!453 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!454 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!455 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!456 = !DIEnumerator(name: "__YESSTR", value: 327682)
!457 = !DIEnumerator(name: "__NOSTR", value: 327683)
!458 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!459 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!460 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!461 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!462 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!463 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!464 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!465 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!466 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!469 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!470 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!471 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!472 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!473 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!474 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!475 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!480 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!481 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!482 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!483 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!484 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!485 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!486 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!487 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!488 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!490 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!491 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!492 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!493 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!494 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!495 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!496 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!497 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!511 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!512 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!513 = !{!22, !20, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!516 = !{!170}
!517 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63)
!520 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !523, retainedTypes: !531)
!522 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!523 = !{!524}
!524 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !525, line: 78, size: 32, elements: !526)
!525 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!526 = !{!527, !528, !529, !530}
!527 = !DIEnumerator(name: "MODE_DONE", value: 0)
!528 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!529 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!530 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!531 = !{!115}
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !534, retainedTypes: !539)
!533 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = !{!535}
!535 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !536, line: 41, size: 32, elements: !537)
!536 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !{!538}
!538 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!539 = !{!22}
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !542, retainedTypes: !556)
!541 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !{!543}
!543 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !545, file: !544, line: 192, size: 32, elements: !554)
!544 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = distinct !DISubprogram(name: "x2nrealloc", scope: !544, file: !544, line: 180, type: !546, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !549)
!546 = !DISubroutineType(types: !547)
!547 = !{!22, !22, !548, !115}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!549 = !{!550, !551, !552, !553}
!550 = !DILocalVariable(name: "p", arg: 1, scope: !545, file: !544, line: 180, type: !22)
!551 = !DILocalVariable(name: "pn", arg: 2, scope: !545, file: !544, line: 180, type: !548)
!552 = !DILocalVariable(name: "s", arg: 3, scope: !545, file: !544, line: 180, type: !115)
!553 = !DILocalVariable(name: "n", scope: !545, file: !544, line: 182, type: !115)
!554 = !{!555}
!555 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!556 = !{!115, !20, !22}
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63)
!558 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !539)
!560 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !531)
!562 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63)
!564 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63)
!566 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63)
!568 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !539)
!570 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !539)
!572 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!574 = !{i32 2, !"Dwarf Version", i32 4}
!575 = !{i32 2, !"Debug Info Version", i32 3}
!576 = !{i32 1, !"wchar_size", i32 4}
!577 = !{i32 7, !"PIC Level", i32 2}
!578 = !{i32 7, !"PIE Level", i32 2}
!579 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !580, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !53}
!582 = !{!583}
!583 = !DILocalVariable(name: "status", arg: 1, scope: !579, file: !3, line: 48, type: !53)
!584 = !DIExpression()
!585 = !DILocation(line: 48, column: 12, scope: !579)
!586 = !DILocation(line: 50, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !579, file: !3, line: 50, column: 7)
!588 = !DILocation(line: 50, column: 7, scope: !579)
!589 = !DILocation(line: 51, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 51, column: 5)
!591 = !{!592, !592, i64 0}
!592 = !{!"any pointer", !593, i64 0}
!593 = !{!"omnipotent char", !594, i64 0}
!594 = !{!"Simple C/C++ TBAA"}
!595 = !DILocation(line: 54, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !587, file: !3, line: 53, column: 5)
!597 = !DILocation(line: 55, column: 7, scope: !596)
!598 = !DILocation(line: 587, column: 3, scope: !599, inlinedAt: !602)
!599 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !27, file: !27, line: 585, type: !600, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !63)
!600 = !DISubroutineType(types: !601)
!601 = !{null}
!602 = distinct !DILocation(line: 59, column: 7, scope: !596)
!603 = !DILocation(line: 61, column: 7, scope: !596)
!604 = !DILocation(line: 64, column: 7, scope: !596)
!605 = !DILocation(line: 69, column: 7, scope: !596)
!606 = !DILocation(line: 70, column: 7, scope: !596)
!607 = !DILocation(line: 642, column: 15, scope: !26, inlinedAt: !608)
!608 = distinct !DILocation(line: 71, column: 7, scope: !596)
!609 = !DILocation(line: 651, column: 3, scope: !26, inlinedAt: !608)
!610 = !DILocation(line: 655, column: 29, scope: !26, inlinedAt: !608)
!611 = !DILocation(line: 655, column: 15, scope: !26, inlinedAt: !608)
!612 = !DILocation(line: 656, column: 7, scope: !613, inlinedAt: !608)
!613 = distinct !DILexicalBlock(scope: !26, file: !27, line: 656, column: 7)
!614 = !DILocation(line: 656, column: 19, scope: !613, inlinedAt: !608)
!615 = !DILocation(line: 656, column: 22, scope: !613, inlinedAt: !608)
!616 = !DILocation(line: 656, column: 7, scope: !26, inlinedAt: !608)
!617 = !DILocation(line: 662, column: 7, scope: !618, inlinedAt: !608)
!618 = distinct !DILexicalBlock(scope: !613, file: !27, line: 657, column: 5)
!619 = !DILocation(line: 664, column: 5, scope: !618, inlinedAt: !608)
!620 = !DILocation(line: 665, column: 3, scope: !26, inlinedAt: !608)
!621 = !DILocation(line: 667, column: 3, scope: !26, inlinedAt: !608)
!622 = !DILocation(line: 73, column: 3, scope: !579)
!623 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 77, type: !624, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !627)
!624 = !DISubroutineType(types: !625)
!625 = !{!53, !53, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!627 = !{!628, !629, !630, !635, !636, !637, !638, !639, !640, !643, !646}
!628 = !DILocalVariable(name: "argc", arg: 1, scope: !623, file: !3, line: 77, type: !53)
!629 = !DILocalVariable(name: "argv", arg: 2, scope: !623, file: !3, line: 77, type: !626)
!630 = !DILocalVariable(name: "newmode", scope: !623, file: !3, line: 79, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !632, line: 70, baseType: !633)
!632 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !634, line: 138, baseType: !134)
!634 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!635 = !DILocalVariable(name: "specified_mode", scope: !623, file: !3, line: 80, type: !30)
!636 = !DILocalVariable(name: "exit_status", scope: !623, file: !3, line: 81, type: !53)
!637 = !DILocalVariable(name: "optc", scope: !623, file: !3, line: 82, type: !53)
!638 = !DILocalVariable(name: "scontext", scope: !623, file: !3, line: 83, type: !30)
!639 = !DILocalVariable(name: "set_security_context", scope: !623, file: !3, line: 84, type: !73)
!640 = !DILocalVariable(name: "ret", scope: !641, file: !3, line: 136, type: !53)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 135, column: 5)
!642 = distinct !DILexicalBlock(scope: !623, file: !3, line: 134, column: 7)
!643 = !DILocalVariable(name: "umask_value", scope: !644, file: !3, line: 151, type: !631)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 150, column: 5)
!645 = distinct !DILexicalBlock(scope: !623, file: !3, line: 149, column: 7)
!646 = !DILocalVariable(name: "change", scope: !644, file: !3, line: 152, type: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !649, line: 25, flags: DIFlagFwdDecl)
!649 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = !DILocation(line: 77, column: 11, scope: !623)
!651 = !DILocation(line: 77, column: 24, scope: !623)
!652 = !DILocation(line: 80, column: 15, scope: !623)
!653 = !DILocation(line: 81, column: 7, scope: !623)
!654 = !DILocation(line: 83, column: 15, scope: !623)
!655 = !DILocation(line: 84, column: 8, scope: !623)
!656 = !DILocation(line: 87, column: 21, scope: !623)
!657 = !DILocation(line: 87, column: 3, scope: !623)
!658 = !DILocation(line: 88, column: 3, scope: !623)
!659 = !DILocation(line: 89, column: 3, scope: !623)
!660 = !DILocation(line: 90, column: 3, scope: !623)
!661 = !DILocation(line: 92, column: 3, scope: !623)
!662 = !DILocation(line: 94, column: 3, scope: !623)
!663 = !DILocation(line: 94, column: 18, scope: !623)
!664 = !DILocation(line: 82, column: 7, scope: !623)
!665 = !DILocation(line: 99, column: 28, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 97, column: 9)
!667 = distinct !DILexicalBlock(scope: !623, file: !3, line: 95, column: 5)
!668 = !DILocation(line: 100, column: 11, scope: !666)
!669 = distinct !{!669, !662, !670}
!670 = !DILocation(line: 126, column: 5, scope: !623)
!671 = !DILocation(line: 114, column: 20, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 114, column: 20)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 107, column: 20)
!674 = distinct !DILexicalBlock(scope: !666, file: !3, line: 102, column: 15)
!675 = !DILocation(line: 114, column: 20, scope: !673)
!676 = !DILocation(line: 117, column: 22, scope: !677)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 115, column: 13)
!678 = !DILocation(line: 116, column: 15, scope: !677)
!679 = !DILocation(line: 119, column: 13, scope: !677)
!680 = !DILocation(line: 121, column: 9, scope: !666)
!681 = !DILocation(line: 122, column: 9, scope: !666)
!682 = !DILocation(line: 124, column: 11, scope: !666)
!683 = !DILocation(line: 128, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !623, file: !3, line: 128, column: 7)
!685 = !{!686, !686, i64 0}
!686 = !{!"int", !593, i64 0}
!687 = !DILocation(line: 128, column: 14, scope: !684)
!688 = !DILocation(line: 128, column: 7, scope: !623)
!689 = !DILocation(line: 130, column: 20, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !3, line: 129, column: 5)
!691 = !DILocation(line: 130, column: 7, scope: !690)
!692 = !DILocation(line: 131, column: 7, scope: !690)
!693 = !DILocation(line: 79, column: 10, scope: !623)
!694 = !DILocation(line: 149, column: 7, scope: !645)
!695 = !DILocation(line: 149, column: 7, scope: !623)
!696 = !DILocation(line: 152, column: 36, scope: !644)
!697 = !DILocation(line: 152, column: 27, scope: !644)
!698 = !DILocation(line: 153, column: 12, scope: !699)
!699 = distinct !DILexicalBlock(scope: !644, file: !3, line: 153, column: 11)
!700 = !DILocation(line: 153, column: 11, scope: !644)
!701 = !DILocation(line: 154, column: 9, scope: !699)
!702 = !DILocation(line: 155, column: 21, scope: !644)
!703 = !DILocation(line: 151, column: 14, scope: !644)
!704 = !DILocation(line: 156, column: 7, scope: !644)
!705 = !DILocation(line: 157, column: 17, scope: !644)
!706 = !DILocation(line: 158, column: 13, scope: !644)
!707 = !DILocation(line: 158, column: 7, scope: !644)
!708 = !DILocation(line: 159, column: 19, scope: !709)
!709 = distinct !DILexicalBlock(scope: !644, file: !3, line: 159, column: 11)
!710 = !DILocation(line: 159, column: 11, scope: !644)
!711 = !DILocation(line: 164, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 164, column: 3)
!713 = distinct !DILexicalBlock(scope: !623, file: !3, line: 164, column: 3)
!714 = !DILocation(line: 160, column: 9, scope: !709)
!715 = !DILocation(line: 164, column: 17, scope: !712)
!716 = !DILocation(line: 164, column: 3, scope: !713)
!717 = !DILocation(line: 168, column: 19, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 168, column: 11)
!719 = distinct !DILexicalBlock(scope: !712, file: !3, line: 165, column: 5)
!720 = !DILocation(line: 168, column: 11, scope: !718)
!721 = !DILocation(line: 168, column: 42, scope: !718)
!722 = !DILocation(line: 168, column: 11, scope: !719)
!723 = !DILocation(line: 170, column: 21, scope: !724)
!724 = distinct !DILexicalBlock(scope: !718, file: !3, line: 169, column: 9)
!725 = !DILocation(line: 170, column: 28, scope: !724)
!726 = !DILocation(line: 170, column: 56, scope: !724)
!727 = !DILocation(line: 170, column: 11, scope: !724)
!728 = !DILocation(line: 172, column: 9, scope: !724)
!729 = !DILocation(line: 173, column: 31, scope: !730)
!730 = distinct !DILexicalBlock(scope: !718, file: !3, line: 173, column: 16)
!731 = !DILocation(line: 173, column: 47, scope: !730)
!732 = !DILocation(line: 173, column: 42, scope: !730)
!733 = !DILocation(line: 173, column: 34, scope: !730)
!734 = !DILocation(line: 173, column: 65, scope: !730)
!735 = !DILocation(line: 173, column: 16, scope: !718)
!736 = !DILocation(line: 175, column: 21, scope: !737)
!737 = distinct !DILexicalBlock(scope: !730, file: !3, line: 174, column: 9)
!738 = !DILocation(line: 175, column: 28, scope: !737)
!739 = !DILocation(line: 176, column: 18, scope: !737)
!740 = !DILocation(line: 175, column: 11, scope: !737)
!741 = !DILocation(line: 178, column: 9, scope: !737)
!742 = !DILocation(line: 164, column: 25, scope: !712)
!743 = distinct !{!743, !716, !744}
!744 = !DILocation(line: 179, column: 5, scope: !713)
!745 = !DILocation(line: 181, column: 3, scope: !623)
!746 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !72, file: !72, line: 41, type: !28, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !67, variables: !747)
!747 = !{!748}
!748 = !DILocalVariable(name: "file", arg: 1, scope: !746, file: !72, line: 41, type: !30)
!749 = !DILocation(line: 41, column: 41, scope: !746)
!750 = !DILocation(line: 43, column: 13, scope: !746)
!751 = !DILocation(line: 44, column: 1, scope: !746)
!752 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !72, file: !72, line: 78, type: !753, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !67, variables: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !73}
!755 = !{!756}
!756 = !DILocalVariable(name: "ignore", arg: 1, scope: !752, file: !72, line: 78, type: !73)
!757 = !DILocation(line: 78, column: 37, scope: !752)
!758 = !DILocation(line: 80, column: 16, scope: !752)
!759 = !{!760, !760, i64 0}
!760 = !{!"_Bool", !593, i64 0}
!761 = !DILocation(line: 81, column: 1, scope: !752)
!762 = distinct !DISubprogram(name: "close_stdout", scope: !72, file: !72, line: 107, type: !600, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !67, variables: !763)
!763 = !{!764}
!764 = !DILocalVariable(name: "write_error", scope: !765, file: !72, line: 112, type: !30)
!765 = distinct !DILexicalBlock(scope: !766, file: !72, line: 111, column: 5)
!766 = distinct !DILexicalBlock(scope: !762, file: !72, line: 109, column: 7)
!767 = !DILocation(line: 109, column: 21, scope: !766)
!768 = !DILocation(line: 109, column: 7, scope: !766)
!769 = !DILocation(line: 109, column: 29, scope: !766)
!770 = !DILocation(line: 110, column: 7, scope: !766)
!771 = !DILocation(line: 110, column: 12, scope: !766)
!772 = !{i8 0, i8 2}
!773 = !DILocation(line: 114, column: 19, scope: !774)
!774 = distinct !DILexicalBlock(scope: !765, file: !72, line: 113, column: 11)
!775 = !DILocation(line: 110, column: 25, scope: !766)
!776 = !DILocation(line: 110, column: 28, scope: !766)
!777 = !DILocation(line: 110, column: 34, scope: !766)
!778 = !DILocation(line: 109, column: 7, scope: !762)
!779 = !DILocation(line: 112, column: 33, scope: !765)
!780 = !DILocation(line: 112, column: 19, scope: !765)
!781 = !DILocation(line: 113, column: 11, scope: !774)
!782 = !DILocation(line: 113, column: 11, scope: !765)
!783 = !DILocation(line: 114, column: 36, scope: !774)
!784 = !DILocation(line: 114, column: 9, scope: !774)
!785 = !DILocation(line: 117, column: 9, scope: !774)
!786 = !DILocation(line: 119, column: 14, scope: !765)
!787 = !DILocation(line: 119, column: 7, scope: !765)
!788 = !DILocation(line: 122, column: 22, scope: !789)
!789 = distinct !DILexicalBlock(scope: !762, file: !72, line: 122, column: 8)
!790 = !DILocation(line: 122, column: 8, scope: !789)
!791 = !DILocation(line: 122, column: 30, scope: !789)
!792 = !DILocation(line: 122, column: 8, scope: !762)
!793 = !DILocation(line: 123, column: 13, scope: !789)
!794 = !DILocation(line: 123, column: 6, scope: !789)
!795 = !DILocation(line: 124, column: 1, scope: !762)
!796 = distinct !DISubprogram(name: "mode_compile", scope: !525, file: !525, line: 134, type: !797, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !521, variables: !807)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !30}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !525, line: 98, size: 128, elements: !801)
!801 = !{!802, !803, !804, !805, !806}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !800, file: !525, line: 100, baseType: !21, size: 8)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !800, file: !525, line: 101, baseType: !21, size: 8, offset: 8)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !800, file: !525, line: 102, baseType: !631, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !800, file: !525, line: 103, baseType: !631, size: 32, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !800, file: !525, line: 104, baseType: !631, size: 32, offset: 96)
!807 = !{!808, !809, !810, !811, !812, !815, !816, !817, !819, !823, !825, !826, !827, !828, !829}
!808 = !DILocalVariable(name: "mode_string", arg: 1, scope: !796, file: !525, line: 134, type: !30)
!809 = !DILocalVariable(name: "mc", scope: !796, file: !525, line: 137, type: !799)
!810 = !DILocalVariable(name: "used", scope: !796, file: !525, line: 138, type: !115)
!811 = !DILocalVariable(name: "p", scope: !796, file: !525, line: 139, type: !30)
!812 = !DILocalVariable(name: "octal_mode", scope: !813, file: !525, line: 143, type: !134)
!813 = distinct !DILexicalBlock(scope: !814, file: !525, line: 142, column: 5)
!814 = distinct !DILexicalBlock(scope: !796, file: !525, line: 141, column: 7)
!815 = !DILocalVariable(name: "mode", scope: !813, file: !525, line: 144, type: !631)
!816 = !DILocalVariable(name: "mentioned", scope: !813, file: !525, line: 145, type: !631)
!817 = !DILocalVariable(name: "needed", scope: !818, file: !525, line: 168, type: !115)
!818 = distinct !DILexicalBlock(scope: !796, file: !525, line: 167, column: 3)
!819 = !DILocalVariable(name: "affected", scope: !820, file: !525, line: 179, type: !631)
!820 = distinct !DILexicalBlock(scope: !821, file: !525, line: 177, column: 5)
!821 = distinct !DILexicalBlock(scope: !822, file: !525, line: 176, column: 3)
!822 = distinct !DILexicalBlock(scope: !796, file: !525, line: 176, column: 3)
!823 = !DILocalVariable(name: "op", scope: !824, file: !525, line: 206, type: !21)
!824 = distinct !DILexicalBlock(scope: !820, file: !525, line: 205, column: 9)
!825 = !DILocalVariable(name: "value", scope: !824, file: !525, line: 207, type: !631)
!826 = !DILocalVariable(name: "mentioned", scope: !824, file: !525, line: 208, type: !631)
!827 = !DILocalVariable(name: "flag", scope: !824, file: !525, line: 209, type: !21)
!828 = !DILocalVariable(name: "change", scope: !824, file: !525, line: 210, type: !799)
!829 = !DILocalVariable(name: "octal_mode", scope: !830, file: !525, line: 217, type: !134)
!830 = distinct !DILexicalBlock(scope: !831, file: !525, line: 216, column: 15)
!831 = distinct !DILexicalBlock(scope: !824, file: !525, line: 213, column: 13)
!832 = !DILocation(line: 134, column: 27, scope: !796)
!833 = !DILocation(line: 138, column: 10, scope: !796)
!834 = !DILocation(line: 141, column: 14, scope: !814)
!835 = !{!593, !593, i64 0}
!836 = !DILocation(line: 141, column: 27, scope: !814)
!837 = distinct !{!837, !838, !839}
!838 = !DILocation(line: 148, column: 7, scope: !813)
!839 = !DILocation(line: 154, column: 35, scope: !813)
!840 = !DILocation(line: 169, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !818, file: !525, line: 169, column: 5)
!842 = !DILocation(line: 150, column: 26, scope: !843)
!843 = distinct !DILexicalBlock(scope: !813, file: !525, line: 149, column: 9)
!844 = !DILocation(line: 150, column: 41, scope: !843)
!845 = !DILocation(line: 139, column: 15, scope: !796)
!846 = !DILocation(line: 143, column: 20, scope: !813)
!847 = !DILocation(line: 150, column: 43, scope: !843)
!848 = !DILocation(line: 150, column: 39, scope: !843)
!849 = !DILocation(line: 150, column: 46, scope: !843)
!850 = !DILocation(line: 151, column: 20, scope: !851)
!851 = distinct !DILexicalBlock(scope: !843, file: !525, line: 151, column: 15)
!852 = !DILocation(line: 151, column: 15, scope: !843)
!853 = !DILocation(line: 154, column: 21, scope: !813)
!854 = !DILocation(line: 154, column: 24, scope: !813)
!855 = !DILocation(line: 156, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !813, file: !525, line: 156, column: 11)
!857 = !DILocation(line: 156, column: 11, scope: !813)
!858 = !DILocation(line: 144, column: 14, scope: !813)
!859 = !DILocation(line: 160, column: 22, scope: !813)
!860 = !DILocation(line: 160, column: 36, scope: !813)
!861 = !DILocation(line: 161, column: 28, scope: !813)
!862 = !DILocation(line: 161, column: 61, scope: !813)
!863 = !DILocation(line: 160, column: 20, scope: !813)
!864 = !DILocation(line: 145, column: 14, scope: !813)
!865 = !DILocalVariable(name: "new_mode", arg: 1, scope: !866, file: !525, line: 112, type: !631)
!866 = distinct !DISubprogram(name: "make_node_op_equals", scope: !525, file: !525, line: 112, type: !867, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !521, variables: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!799, !631, !631}
!869 = !{!865, !870, !871}
!870 = !DILocalVariable(name: "mentioned", arg: 2, scope: !866, file: !525, line: 112, type: !631)
!871 = !DILocalVariable(name: "p", scope: !866, file: !525, line: 114, type: !799)
!872 = !DILocation(line: 112, column: 29, scope: !866, inlinedAt: !873)
!873 = distinct !DILocation(line: 163, column: 14, scope: !813)
!874 = !DILocation(line: 112, column: 46, scope: !866, inlinedAt: !873)
!875 = !DILocation(line: 114, column: 27, scope: !866, inlinedAt: !873)
!876 = !DILocation(line: 114, column: 23, scope: !866, inlinedAt: !873)
!877 = !DILocation(line: 115, column: 9, scope: !866, inlinedAt: !873)
!878 = !{!879, !593, i64 0}
!879 = !{!"mode_change", !593, i64 0, !593, i64 1, !686, i64 4, !686, i64 8, !686, i64 12}
!880 = !DILocation(line: 116, column: 6, scope: !866, inlinedAt: !873)
!881 = !DILocation(line: 116, column: 11, scope: !866, inlinedAt: !873)
!882 = !{!879, !593, i64 1}
!883 = !DILocation(line: 117, column: 6, scope: !866, inlinedAt: !873)
!884 = !DILocation(line: 117, column: 15, scope: !866, inlinedAt: !873)
!885 = !{!879, !686, i64 4}
!886 = !DILocation(line: 118, column: 6, scope: !866, inlinedAt: !873)
!887 = !DILocation(line: 118, column: 12, scope: !866, inlinedAt: !873)
!888 = !{!879, !686, i64 8}
!889 = !DILocation(line: 119, column: 6, scope: !866, inlinedAt: !873)
!890 = !DILocation(line: 119, column: 16, scope: !866, inlinedAt: !873)
!891 = !{!879, !686, i64 12}
!892 = !DILocation(line: 120, column: 8, scope: !866, inlinedAt: !873)
!893 = !DILocation(line: 120, column: 13, scope: !866, inlinedAt: !873)
!894 = !DILocation(line: 163, column: 7, scope: !813)
!895 = !DILocation(line: 169, column: 27, scope: !896)
!896 = distinct !DILexicalBlock(scope: !841, file: !525, line: 169, column: 5)
!897 = !DILocation(line: 168, column: 12, scope: !818)
!898 = !DILocation(line: 170, column: 41, scope: !896)
!899 = !DILocation(line: 170, column: 14, scope: !896)
!900 = !DILocation(line: 169, column: 32, scope: !896)
!901 = !DILocation(line: 169, column: 5, scope: !896)
!902 = distinct !{!902, !840, !903}
!903 = !DILocation(line: 170, column: 53, scope: !841)
!904 = !DILocalVariable(name: "n", arg: 1, scope: !905, file: !544, line: 105, type: !115)
!905 = distinct !DISubprogram(name: "xnmalloc", scope: !544, file: !544, line: 105, type: !906, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !521, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!22, !115, !115}
!908 = !{!904, !909}
!909 = !DILocalVariable(name: "s", arg: 2, scope: !905, file: !544, line: 105, type: !115)
!910 = !DILocation(line: 105, column: 18, scope: !905, inlinedAt: !911)
!911 = distinct !DILocation(line: 171, column: 10, scope: !818)
!912 = !DILocation(line: 105, column: 28, scope: !905, inlinedAt: !911)
!913 = !DILocation(line: 107, column: 7, scope: !914, inlinedAt: !911)
!914 = distinct !DILexicalBlock(scope: !905, file: !544, line: 107, column: 7)
!915 = !DILocation(line: 107, column: 7, scope: !905, inlinedAt: !911)
!916 = !DILocation(line: 108, column: 5, scope: !914, inlinedAt: !911)
!917 = !DILocation(line: 109, column: 21, scope: !905, inlinedAt: !911)
!918 = !DILocation(line: 109, column: 10, scope: !905, inlinedAt: !911)
!919 = !DILocation(line: 171, column: 10, scope: !818)
!920 = !DILocation(line: 137, column: 23, scope: !796)
!921 = !DILocation(line: 176, column: 8, scope: !822)
!922 = !DILocation(line: 179, column: 14, scope: !820)
!923 = !DILocation(line: 182, column: 7, scope: !820)
!924 = !DILocation(line: 183, column: 17, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !525, line: 182, column: 7)
!926 = distinct !DILexicalBlock(scope: !820, file: !525, line: 182, column: 7)
!927 = !DILocation(line: 183, column: 9, scope: !925)
!928 = distinct !{!928, !929, !930}
!929 = !DILocation(line: 204, column: 7, scope: !820)
!930 = !DILocation(line: 295, column: 49, scope: !820)
!931 = !DILocation(line: 206, column: 23, scope: !824)
!932 = !DILocation(line: 189, column: 13, scope: !933)
!933 = distinct !DILexicalBlock(scope: !925, file: !525, line: 184, column: 11)
!934 = !DILocation(line: 195, column: 13, scope: !933)
!935 = !DILocation(line: 198, column: 13, scope: !933)
!936 = !DILocation(line: 182, column: 16, scope: !925)
!937 = !DILocation(line: 182, column: 7, scope: !925)
!938 = distinct !{!938, !939, !940}
!939 = !DILocation(line: 182, column: 7, scope: !926)
!940 = !DILocation(line: 201, column: 11, scope: !926)
!941 = !DILocation(line: 206, column: 21, scope: !824)
!942 = !DILocation(line: 206, column: 16, scope: !824)
!943 = !DILocation(line: 208, column: 18, scope: !824)
!944 = !DILocation(line: 209, column: 16, scope: !824)
!945 = !DILocation(line: 212, column: 19, scope: !824)
!946 = !DILocation(line: 212, column: 11, scope: !824)
!947 = distinct !{!947, !948, !949}
!948 = !DILocation(line: 219, column: 17, scope: !830)
!949 = !DILocation(line: 225, column: 45, scope: !830)
!950 = !DILocation(line: 221, column: 36, scope: !951)
!951 = distinct !DILexicalBlock(scope: !830, file: !525, line: 220, column: 19)
!952 = !DILocation(line: 259, column: 25, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !525, line: 258, column: 15)
!954 = distinct !DILexicalBlock(scope: !831, file: !525, line: 258, column: 15)
!955 = !DILocation(line: 221, column: 51, scope: !951)
!956 = !DILocation(line: 217, column: 30, scope: !830)
!957 = !DILocation(line: 221, column: 53, scope: !951)
!958 = !DILocation(line: 221, column: 49, scope: !951)
!959 = !DILocation(line: 221, column: 56, scope: !951)
!960 = !DILocation(line: 222, column: 30, scope: !961)
!961 = distinct !DILexicalBlock(scope: !951, file: !525, line: 222, column: 25)
!962 = !DILocation(line: 222, column: 25, scope: !951)
!963 = !DILocation(line: 225, column: 31, scope: !830)
!964 = !DILocation(line: 225, column: 34, scope: !830)
!965 = !DILocation(line: 227, column: 21, scope: !966)
!966 = distinct !DILexicalBlock(scope: !830, file: !525, line: 227, column: 21)
!967 = !DILocation(line: 227, column: 30, scope: !966)
!968 = !DILocation(line: 227, column: 37, scope: !966)
!969 = !DILocation(line: 207, column: 18, scope: !824)
!970 = !DILocation(line: 239, column: 16, scope: !831)
!971 = !DILocation(line: 240, column: 15, scope: !831)
!972 = !DILocation(line: 245, column: 16, scope: !831)
!973 = !DILocation(line: 246, column: 15, scope: !831)
!974 = !DILocation(line: 251, column: 16, scope: !831)
!975 = !DILocation(line: 252, column: 15, scope: !831)
!976 = !DILocation(line: 259, column: 17, scope: !953)
!977 = !DILocation(line: 262, column: 27, scope: !978)
!978 = distinct !DILexicalBlock(scope: !953, file: !525, line: 260, column: 19)
!979 = !DILocation(line: 263, column: 21, scope: !978)
!980 = !DILocation(line: 265, column: 27, scope: !978)
!981 = !DILocation(line: 266, column: 21, scope: !978)
!982 = !DILocation(line: 268, column: 27, scope: !978)
!983 = !DILocation(line: 269, column: 21, scope: !978)
!984 = !DILocation(line: 275, column: 27, scope: !978)
!985 = !DILocation(line: 276, column: 21, scope: !978)
!986 = !DILocation(line: 279, column: 27, scope: !978)
!987 = !DILocation(line: 280, column: 21, scope: !978)
!988 = !DILocation(line: 258, column: 24, scope: !953)
!989 = !DILocation(line: 258, column: 15, scope: !953)
!990 = distinct !{!990, !991, !992}
!991 = !DILocation(line: 258, column: 15, scope: !954)
!992 = !DILocation(line: 283, column: 19, scope: !954)
!993 = !DILocation(line: 287, column: 28, scope: !824)
!994 = !DILocation(line: 288, column: 19, scope: !824)
!995 = !DILocation(line: 288, column: 22, scope: !824)
!996 = !DILocation(line: 289, column: 19, scope: !824)
!997 = !DILocation(line: 289, column: 24, scope: !824)
!998 = !DILocation(line: 290, column: 19, scope: !824)
!999 = !DILocation(line: 290, column: 28, scope: !824)
!1000 = !DILocation(line: 291, column: 19, scope: !824)
!1001 = !DILocation(line: 291, column: 25, scope: !824)
!1002 = !DILocation(line: 293, column: 14, scope: !824)
!1003 = !DILocation(line: 293, column: 38, scope: !824)
!1004 = !DILocation(line: 292, column: 19, scope: !824)
!1005 = !DILocation(line: 292, column: 29, scope: !824)
!1006 = !DILocation(line: 295, column: 14, scope: !820)
!1007 = !DILocation(line: 295, column: 24, scope: !820)
!1008 = !DILocation(line: 176, column: 28, scope: !821)
!1009 = !DILocation(line: 176, column: 3, scope: !821)
!1010 = distinct !{!1010, !1011, !1012}
!1011 = !DILocation(line: 176, column: 3, scope: !822)
!1012 = !DILocation(line: 299, column: 5, scope: !822)
!1013 = !DILocation(line: 303, column: 16, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !525, line: 302, column: 5)
!1015 = distinct !DILexicalBlock(scope: !796, file: !525, line: 301, column: 7)
!1016 = !DILocation(line: 303, column: 21, scope: !1014)
!1017 = !DILocation(line: 304, column: 7, scope: !1014)
!1018 = !DILocation(line: 308, column: 3, scope: !796)
!1019 = !DILocation(line: 309, column: 3, scope: !796)
!1020 = !DILocation(line: 310, column: 1, scope: !796)
!1021 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !525, file: !525, line: 316, type: !797, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !521, variables: !1022)
!1022 = !{!1023, !1024}
!1023 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1021, file: !525, line: 316, type: !30)
!1024 = !DILocalVariable(name: "ref_stats", scope: !1021, file: !525, line: 318, type: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1026, line: 46, size: 1152, elements: !1027)
!1026 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1027 = !{!1028, !1030, !1032, !1034, !1035, !1037, !1039, !1040, !1041, !1044, !1046, !1048, !1056, !1057, !1058}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1025, file: !1026, line: 48, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !634, line: 133, baseType: !117)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1025, file: !1026, line: 53, baseType: !1031, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !634, line: 136, baseType: !117)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1025, file: !1026, line: 61, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !634, line: 139, baseType: !117)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1025, file: !1026, line: 62, baseType: !633, size: 32, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1025, file: !1026, line: 64, baseType: !1036, size: 32, offset: 224)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !634, line: 134, baseType: !134)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1025, file: !1026, line: 65, baseType: !1038, size: 32, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !634, line: 135, baseType: !134)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1025, file: !1026, line: 67, baseType: !53, size: 32, offset: 288)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1025, file: !1026, line: 69, baseType: !1029, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1025, file: !1026, line: 74, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !634, line: 140, baseType: !1043)
!1043 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1025, file: !1026, line: 78, baseType: !1045, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !634, line: 162, baseType: !1043)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1025, file: !1026, line: 80, baseType: !1047, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !634, line: 167, baseType: !1043)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1025, file: !1026, line: 91, baseType: !1049, size: 128, offset: 576)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1050, line: 8, size: 128, elements: !1051)
!1050 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1051 = !{!1052, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1049, file: !1050, line: 10, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !634, line: 148, baseType: !1043)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1049, file: !1050, line: 11, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !634, line: 184, baseType: !1043)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1025, file: !1026, line: 92, baseType: !1049, size: 128, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1025, file: !1026, line: 93, baseType: !1049, size: 128, offset: 832)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1025, file: !1026, line: 106, baseType: !1059, size: 192, offset: 960)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1055, size: 192, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 3)
!1062 = !DILocation(line: 316, column: 35, scope: !1021)
!1063 = !DILocation(line: 318, column: 3, scope: !1021)
!1064 = !DILocation(line: 318, column: 15, scope: !1021)
!1065 = !DILocalVariable(name: "__path", arg: 1, scope: !1066, file: !1067, line: 449, type: !30)
!1066 = distinct !DISubprogram(name: "stat", scope: !1067, file: !1067, line: 449, type: !1068, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !521, variables: !1071)
!1067 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!53, !30, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1071 = !{!1065, !1072}
!1072 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1066, file: !1067, line: 449, type: !1070)
!1073 = !DILocation(line: 449, column: 1, scope: !1066, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 320, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1021, file: !525, line: 320, column: 7)
!1076 = !DILocation(line: 451, column: 10, scope: !1066, inlinedAt: !1074)
!1077 = !DILocation(line: 320, column: 35, scope: !1075)
!1078 = !DILocation(line: 320, column: 7, scope: !1021)
!1079 = !DILocation(line: 322, column: 41, scope: !1021)
!1080 = !{!1081, !686, i64 24}
!1081 = !{!"stat", !1082, i64 0, !1082, i64 8, !1082, i64 16, !686, i64 24, !686, i64 28, !686, i64 32, !686, i64 36, !1082, i64 40, !1082, i64 48, !1082, i64 56, !1082, i64 64, !1083, i64 72, !1083, i64 88, !1083, i64 104, !593, i64 120}
!1082 = !{!"long", !593, i64 0}
!1083 = !{!"timespec", !1082, i64 0, !1082, i64 8}
!1084 = !DILocation(line: 112, column: 29, scope: !866, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 322, column: 10, scope: !1021)
!1086 = !DILocation(line: 112, column: 46, scope: !866, inlinedAt: !1085)
!1087 = !DILocation(line: 114, column: 27, scope: !866, inlinedAt: !1085)
!1088 = !DILocation(line: 114, column: 23, scope: !866, inlinedAt: !1085)
!1089 = !DILocation(line: 115, column: 9, scope: !866, inlinedAt: !1085)
!1090 = !DILocation(line: 116, column: 6, scope: !866, inlinedAt: !1085)
!1091 = !DILocation(line: 116, column: 11, scope: !866, inlinedAt: !1085)
!1092 = !DILocation(line: 117, column: 6, scope: !866, inlinedAt: !1085)
!1093 = !DILocation(line: 117, column: 15, scope: !866, inlinedAt: !1085)
!1094 = !DILocation(line: 118, column: 6, scope: !866, inlinedAt: !1085)
!1095 = !DILocation(line: 118, column: 12, scope: !866, inlinedAt: !1085)
!1096 = !DILocation(line: 119, column: 6, scope: !866, inlinedAt: !1085)
!1097 = !DILocation(line: 119, column: 16, scope: !866, inlinedAt: !1085)
!1098 = !DILocation(line: 120, column: 8, scope: !866, inlinedAt: !1085)
!1099 = !DILocation(line: 120, column: 13, scope: !866, inlinedAt: !1085)
!1100 = !DILocation(line: 322, column: 3, scope: !1021)
!1101 = !DILocation(line: 323, column: 1, scope: !1021)
!1102 = distinct !DISubprogram(name: "mode_adjust", scope: !525, file: !525, line: 339, type: !1103, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !521, variables: !1108)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!631, !631, !73, !631, !1105, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1120, !1121, !1122}
!1109 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1102, file: !525, line: 339, type: !631)
!1110 = !DILocalVariable(name: "dir", arg: 2, scope: !1102, file: !525, line: 339, type: !73)
!1111 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1102, file: !525, line: 339, type: !631)
!1112 = !DILocalVariable(name: "changes", arg: 4, scope: !1102, file: !525, line: 340, type: !1105)
!1113 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1102, file: !525, line: 340, type: !1107)
!1114 = !DILocalVariable(name: "newmode", scope: !1102, file: !525, line: 343, type: !631)
!1115 = !DILocalVariable(name: "mode_bits", scope: !1102, file: !525, line: 346, type: !631)
!1116 = !DILocalVariable(name: "affected", scope: !1117, file: !525, line: 350, type: !631)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !525, line: 349, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !525, line: 348, column: 3)
!1119 = distinct !DILexicalBlock(scope: !1102, file: !525, line: 348, column: 3)
!1120 = !DILocalVariable(name: "omit_change", scope: !1117, file: !525, line: 351, type: !631)
!1121 = !DILocalVariable(name: "value", scope: !1117, file: !525, line: 353, type: !631)
!1122 = !DILocalVariable(name: "preserved", scope: !1123, file: !525, line: 393, type: !631)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !525, line: 392, column: 11)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !525, line: 387, column: 9)
!1125 = !DILocation(line: 339, column: 21, scope: !1102)
!1126 = !DILocation(line: 339, column: 35, scope: !1102)
!1127 = !DILocation(line: 339, column: 47, scope: !1102)
!1128 = !DILocation(line: 340, column: 40, scope: !1102)
!1129 = !DILocation(line: 340, column: 57, scope: !1102)
!1130 = !DILocation(line: 343, column: 28, scope: !1102)
!1131 = !DILocation(line: 343, column: 10, scope: !1102)
!1132 = !DILocation(line: 346, column: 10, scope: !1102)
!1133 = !DILocation(line: 348, column: 19, scope: !1118)
!1134 = !DILocation(line: 348, column: 24, scope: !1118)
!1135 = !DILocation(line: 348, column: 3, scope: !1119)
!1136 = !DILocation(line: 348, column: 10, scope: !1118)
!1137 = !DILocation(line: 350, column: 34, scope: !1117)
!1138 = !DILocation(line: 350, column: 14, scope: !1117)
!1139 = !DILocation(line: 352, column: 52, scope: !1117)
!1140 = !DILocation(line: 352, column: 41, scope: !1117)
!1141 = !DILocation(line: 352, column: 39, scope: !1117)
!1142 = !DILocation(line: 351, column: 14, scope: !1117)
!1143 = !DILocation(line: 353, column: 31, scope: !1117)
!1144 = !DILocation(line: 353, column: 14, scope: !1117)
!1145 = !DILocation(line: 355, column: 7, scope: !1117)
!1146 = !DILocation(line: 362, column: 17, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1117, file: !525, line: 356, column: 9)
!1148 = !DILocation(line: 365, column: 28, scope: !1147)
!1149 = !DILocation(line: 365, column: 22, scope: !1147)
!1150 = !DILocation(line: 367, column: 30, scope: !1147)
!1151 = !DILocation(line: 367, column: 24, scope: !1147)
!1152 = !DILocation(line: 369, column: 30, scope: !1147)
!1153 = !DILocation(line: 369, column: 24, scope: !1147)
!1154 = !DILocation(line: 367, column: 21, scope: !1147)
!1155 = !DILocation(line: 369, column: 21, scope: !1147)
!1156 = !DILocation(line: 365, column: 17, scope: !1147)
!1157 = !DILocation(line: 371, column: 11, scope: !1147)
!1158 = !DILocation(line: 376, column: 24, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1147, file: !525, line: 376, column: 15)
!1160 = !DILocation(line: 376, column: 57, scope: !1159)
!1161 = !DILocation(line: 377, column: 19, scope: !1159)
!1162 = !DILocation(line: 376, column: 15, scope: !1147)
!1163 = !DILocation(line: 384, column: 17, scope: !1117)
!1164 = !DILocation(line: 384, column: 55, scope: !1117)
!1165 = !DILocation(line: 384, column: 53, scope: !1117)
!1166 = !DILocation(line: 384, column: 13, scope: !1117)
!1167 = !DILocation(line: 386, column: 24, scope: !1117)
!1168 = !DILocation(line: 386, column: 15, scope: !1117)
!1169 = !DILocation(line: 386, column: 7, scope: !1117)
!1170 = !DILocation(line: 393, column: 44, scope: !1123)
!1171 = !DILocation(line: 393, column: 33, scope: !1123)
!1172 = !DILocation(line: 393, column: 59, scope: !1123)
!1173 = !DILocation(line: 393, column: 20, scope: !1123)
!1174 = !DILocation(line: 394, column: 42, scope: !1123)
!1175 = !DILocation(line: 394, column: 23, scope: !1123)
!1176 = !DILocation(line: 395, column: 32, scope: !1123)
!1177 = !DILocation(line: 395, column: 45, scope: !1123)
!1178 = !DILocation(line: 400, column: 21, scope: !1124)
!1179 = !DILocation(line: 401, column: 19, scope: !1124)
!1180 = !DILocation(line: 402, column: 11, scope: !1124)
!1181 = !DILocation(line: 405, column: 21, scope: !1124)
!1182 = !DILocation(line: 406, column: 22, scope: !1124)
!1183 = !DILocation(line: 406, column: 19, scope: !1124)
!1184 = !DILocation(line: 407, column: 11, scope: !1124)
!1185 = !DILocation(line: 348, column: 45, scope: !1118)
!1186 = distinct !{!1186, !1135, !1187}
!1187 = !DILocation(line: 409, column: 5, scope: !1119)
!1188 = !DILocation(line: 411, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1102, file: !525, line: 411, column: 7)
!1190 = !DILocation(line: 411, column: 7, scope: !1102)
!1191 = !DILocation(line: 412, column: 17, scope: !1189)
!1192 = !DILocation(line: 412, column: 5, scope: !1189)
!1193 = !DILocation(line: 413, column: 3, scope: !1102)
!1194 = distinct !DISubprogram(name: "set_program_name", scope: !87, file: !87, line: 39, type: !28, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !83, variables: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DILocalVariable(name: "argv0", arg: 1, scope: !1194, file: !87, line: 39, type: !30)
!1197 = !DILocalVariable(name: "slash", scope: !1194, file: !87, line: 46, type: !30)
!1198 = !DILocalVariable(name: "base", scope: !1194, file: !87, line: 47, type: !30)
!1199 = !DILocation(line: 39, column: 31, scope: !1194)
!1200 = !DILocation(line: 51, column: 13, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !87, line: 51, column: 7)
!1202 = !DILocation(line: 51, column: 7, scope: !1194)
!1203 = !DILocation(line: 55, column: 14, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !87, line: 52, column: 5)
!1205 = !DILocation(line: 54, column: 7, scope: !1204)
!1206 = !DILocation(line: 56, column: 7, scope: !1204)
!1207 = !DILocation(line: 59, column: 11, scope: !1194)
!1208 = !DILocation(line: 46, column: 15, scope: !1194)
!1209 = !DILocation(line: 60, column: 17, scope: !1194)
!1210 = !DILocation(line: 60, column: 33, scope: !1194)
!1211 = !DILocation(line: 60, column: 11, scope: !1194)
!1212 = !DILocation(line: 47, column: 15, scope: !1194)
!1213 = !DILocation(line: 61, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1194, file: !87, line: 61, column: 7)
!1215 = !DILocation(line: 61, column: 20, scope: !1214)
!1216 = !DILocation(line: 61, column: 25, scope: !1214)
!1217 = !DILocation(line: 61, column: 42, scope: !1214)
!1218 = !DILocation(line: 61, column: 28, scope: !1214)
!1219 = !DILocation(line: 61, column: 61, scope: !1214)
!1220 = !DILocation(line: 61, column: 7, scope: !1194)
!1221 = !DILocation(line: 64, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !87, line: 64, column: 11)
!1223 = distinct !DILexicalBlock(scope: !1214, file: !87, line: 62, column: 5)
!1224 = !DILocation(line: 64, column: 36, scope: !1222)
!1225 = !DILocation(line: 64, column: 11, scope: !1223)
!1226 = !DILocation(line: 66, column: 24, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !87, line: 65, column: 9)
!1228 = !DILocation(line: 70, column: 41, scope: !1227)
!1229 = !DILocation(line: 72, column: 9, scope: !1227)
!1230 = !DILocation(line: 84, column: 16, scope: !1194)
!1231 = !DILocation(line: 90, column: 27, scope: !1194)
!1232 = !DILocation(line: 92, column: 1, scope: !1194)
!1233 = distinct !DISubprogram(name: "clone_quoting_options", scope: !121, file: !121, line: 114, type: !1234, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1237)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1236, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1237 = !{!1238, !1239, !1240}
!1238 = !DILocalVariable(name: "o", arg: 1, scope: !1233, file: !121, line: 114, type: !1236)
!1239 = !DILocalVariable(name: "e", scope: !1233, file: !121, line: 116, type: !53)
!1240 = !DILocalVariable(name: "p", scope: !1233, file: !121, line: 117, type: !1236)
!1241 = !DILocation(line: 114, column: 48, scope: !1233)
!1242 = !DILocation(line: 116, column: 11, scope: !1233)
!1243 = !DILocation(line: 116, column: 7, scope: !1233)
!1244 = !DILocation(line: 117, column: 40, scope: !1233)
!1245 = !DILocation(line: 117, column: 31, scope: !1233)
!1246 = !DILocation(line: 117, column: 27, scope: !1233)
!1247 = !DILocation(line: 119, column: 9, scope: !1233)
!1248 = !DILocation(line: 120, column: 3, scope: !1233)
!1249 = distinct !DISubprogram(name: "get_quoting_style", scope: !121, file: !121, line: 125, type: !1250, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1254)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!5, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1254 = !{!1255}
!1255 = !DILocalVariable(name: "o", arg: 1, scope: !1249, file: !121, line: 125, type: !1252)
!1256 = !DILocation(line: 125, column: 50, scope: !1249)
!1257 = !DILocation(line: 127, column: 11, scope: !1249)
!1258 = !DILocation(line: 127, column: 46, scope: !1249)
!1259 = !{!1260, !593, i64 0}
!1260 = !{!"quoting_options", !593, i64 0, !686, i64 4, !593, i64 8, !592, i64 40, !592, i64 48}
!1261 = !DILocation(line: 127, column: 3, scope: !1249)
!1262 = distinct !DISubprogram(name: "set_quoting_style", scope: !121, file: !121, line: 133, type: !1263, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1236, !5}
!1265 = !{!1266, !1267}
!1266 = !DILocalVariable(name: "o", arg: 1, scope: !1262, file: !121, line: 133, type: !1236)
!1267 = !DILocalVariable(name: "s", arg: 2, scope: !1262, file: !121, line: 133, type: !5)
!1268 = !DILocation(line: 133, column: 44, scope: !1262)
!1269 = !DILocation(line: 133, column: 66, scope: !1262)
!1270 = !DILocation(line: 135, column: 4, scope: !1262)
!1271 = !DILocation(line: 135, column: 39, scope: !1262)
!1272 = !DILocation(line: 135, column: 45, scope: !1262)
!1273 = !DILocation(line: 136, column: 1, scope: !1262)
!1274 = distinct !DISubprogram(name: "set_char_quoting", scope: !121, file: !121, line: 144, type: !1275, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!53, !1236, !21, !53}
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1284, !1285}
!1278 = !DILocalVariable(name: "o", arg: 1, scope: !1274, file: !121, line: 144, type: !1236)
!1279 = !DILocalVariable(name: "c", arg: 2, scope: !1274, file: !121, line: 144, type: !21)
!1280 = !DILocalVariable(name: "i", arg: 3, scope: !1274, file: !121, line: 144, type: !53)
!1281 = !DILocalVariable(name: "uc", scope: !1274, file: !121, line: 146, type: !515)
!1282 = !DILocalVariable(name: "p", scope: !1274, file: !121, line: 147, type: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1284 = !DILocalVariable(name: "shift", scope: !1274, file: !121, line: 149, type: !53)
!1285 = !DILocalVariable(name: "r", scope: !1274, file: !121, line: 150, type: !53)
!1286 = !DILocation(line: 144, column: 43, scope: !1274)
!1287 = !DILocation(line: 144, column: 51, scope: !1274)
!1288 = !DILocation(line: 144, column: 58, scope: !1274)
!1289 = !DILocation(line: 146, column: 17, scope: !1274)
!1290 = !DILocation(line: 148, column: 6, scope: !1274)
!1291 = !DILocation(line: 148, column: 62, scope: !1274)
!1292 = !DILocation(line: 148, column: 57, scope: !1274)
!1293 = !DILocation(line: 147, column: 17, scope: !1274)
!1294 = !DILocation(line: 149, column: 18, scope: !1274)
!1295 = !DILocation(line: 149, column: 15, scope: !1274)
!1296 = !DILocation(line: 149, column: 7, scope: !1274)
!1297 = !DILocation(line: 150, column: 12, scope: !1274)
!1298 = !DILocation(line: 150, column: 15, scope: !1274)
!1299 = !DILocation(line: 150, column: 25, scope: !1274)
!1300 = !DILocation(line: 150, column: 7, scope: !1274)
!1301 = !DILocation(line: 151, column: 13, scope: !1274)
!1302 = !DILocation(line: 151, column: 18, scope: !1274)
!1303 = !DILocation(line: 151, column: 23, scope: !1274)
!1304 = !DILocation(line: 151, column: 6, scope: !1274)
!1305 = !DILocation(line: 152, column: 3, scope: !1274)
!1306 = distinct !DISubprogram(name: "set_quoting_flags", scope: !121, file: !121, line: 160, type: !1307, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!53, !1236, !53}
!1309 = !{!1310, !1311, !1312}
!1310 = !DILocalVariable(name: "o", arg: 1, scope: !1306, file: !121, line: 160, type: !1236)
!1311 = !DILocalVariable(name: "i", arg: 2, scope: !1306, file: !121, line: 160, type: !53)
!1312 = !DILocalVariable(name: "r", scope: !1306, file: !121, line: 162, type: !53)
!1313 = !DILocation(line: 160, column: 44, scope: !1306)
!1314 = !DILocation(line: 160, column: 51, scope: !1306)
!1315 = !DILocation(line: 163, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !121, line: 163, column: 7)
!1317 = !DILocation(line: 163, column: 7, scope: !1306)
!1318 = !DILocation(line: 165, column: 10, scope: !1306)
!1319 = !{!1260, !686, i64 4}
!1320 = !DILocation(line: 162, column: 7, scope: !1306)
!1321 = !DILocation(line: 166, column: 12, scope: !1306)
!1322 = !DILocation(line: 167, column: 3, scope: !1306)
!1323 = distinct !DISubprogram(name: "set_custom_quoting", scope: !121, file: !121, line: 171, type: !1324, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1236, !30, !30}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "o", arg: 1, scope: !1323, file: !121, line: 171, type: !1236)
!1328 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1323, file: !121, line: 172, type: !30)
!1329 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1323, file: !121, line: 172, type: !30)
!1330 = !DILocation(line: 171, column: 45, scope: !1323)
!1331 = !DILocation(line: 172, column: 33, scope: !1323)
!1332 = !DILocation(line: 172, column: 57, scope: !1323)
!1333 = !DILocation(line: 174, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1323, file: !121, line: 174, column: 7)
!1335 = !DILocation(line: 174, column: 7, scope: !1323)
!1336 = !DILocation(line: 176, column: 6, scope: !1323)
!1337 = !DILocation(line: 176, column: 12, scope: !1323)
!1338 = !DILocation(line: 177, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1323, file: !121, line: 177, column: 7)
!1340 = !DILocation(line: 177, column: 23, scope: !1339)
!1341 = !DILocation(line: 177, column: 19, scope: !1339)
!1342 = !DILocation(line: 178, column: 5, scope: !1339)
!1343 = !DILocation(line: 179, column: 6, scope: !1323)
!1344 = !DILocation(line: 179, column: 17, scope: !1323)
!1345 = !{!1260, !592, i64 40}
!1346 = !DILocation(line: 180, column: 6, scope: !1323)
!1347 = !DILocation(line: 180, column: 18, scope: !1323)
!1348 = !{!1260, !592, i64 48}
!1349 = !DILocation(line: 181, column: 1, scope: !1323)
!1350 = distinct !DISubprogram(name: "quotearg_buffer", scope: !121, file: !121, line: 776, type: !1351, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!115, !20, !115, !30, !115, !1252}
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1354 = !DILocalVariable(name: "buffer", arg: 1, scope: !1350, file: !121, line: 776, type: !20)
!1355 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1350, file: !121, line: 776, type: !115)
!1356 = !DILocalVariable(name: "arg", arg: 3, scope: !1350, file: !121, line: 777, type: !30)
!1357 = !DILocalVariable(name: "argsize", arg: 4, scope: !1350, file: !121, line: 777, type: !115)
!1358 = !DILocalVariable(name: "o", arg: 5, scope: !1350, file: !121, line: 778, type: !1252)
!1359 = !DILocalVariable(name: "p", scope: !1350, file: !121, line: 780, type: !1252)
!1360 = !DILocalVariable(name: "e", scope: !1350, file: !121, line: 781, type: !53)
!1361 = !DILocalVariable(name: "r", scope: !1350, file: !121, line: 782, type: !115)
!1362 = !DILocation(line: 776, column: 24, scope: !1350)
!1363 = !DILocation(line: 776, column: 39, scope: !1350)
!1364 = !DILocation(line: 777, column: 30, scope: !1350)
!1365 = !DILocation(line: 777, column: 42, scope: !1350)
!1366 = !DILocation(line: 778, column: 48, scope: !1350)
!1367 = !DILocation(line: 780, column: 37, scope: !1350)
!1368 = !DILocation(line: 780, column: 33, scope: !1350)
!1369 = !DILocation(line: 781, column: 11, scope: !1350)
!1370 = !DILocation(line: 781, column: 7, scope: !1350)
!1371 = !DILocation(line: 783, column: 43, scope: !1350)
!1372 = !DILocation(line: 783, column: 53, scope: !1350)
!1373 = !DILocation(line: 783, column: 60, scope: !1350)
!1374 = !DILocation(line: 784, column: 43, scope: !1350)
!1375 = !DILocation(line: 784, column: 58, scope: !1350)
!1376 = !DILocation(line: 782, column: 14, scope: !1350)
!1377 = !DILocation(line: 782, column: 10, scope: !1350)
!1378 = !DILocation(line: 785, column: 9, scope: !1350)
!1379 = !DILocation(line: 786, column: 3, scope: !1350)
!1380 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !121, file: !121, line: 248, type: !1381, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1385)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!115, !20, !115, !30, !115, !5, !53, !1383, !30, !30}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1410, !1411, !1412, !1413, !1414, !1417, !1418, !1436, !1439, !1440, !1447}
!1386 = !DILocalVariable(name: "buffer", arg: 1, scope: !1380, file: !121, line: 248, type: !20)
!1387 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1380, file: !121, line: 248, type: !115)
!1388 = !DILocalVariable(name: "arg", arg: 3, scope: !1380, file: !121, line: 249, type: !30)
!1389 = !DILocalVariable(name: "argsize", arg: 4, scope: !1380, file: !121, line: 249, type: !115)
!1390 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1380, file: !121, line: 250, type: !5)
!1391 = !DILocalVariable(name: "flags", arg: 6, scope: !1380, file: !121, line: 250, type: !53)
!1392 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1380, file: !121, line: 251, type: !1383)
!1393 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1380, file: !121, line: 252, type: !30)
!1394 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1380, file: !121, line: 253, type: !30)
!1395 = !DILocalVariable(name: "i", scope: !1380, file: !121, line: 255, type: !115)
!1396 = !DILocalVariable(name: "len", scope: !1380, file: !121, line: 256, type: !115)
!1397 = !DILocalVariable(name: "orig_buffersize", scope: !1380, file: !121, line: 257, type: !115)
!1398 = !DILocalVariable(name: "quote_string", scope: !1380, file: !121, line: 258, type: !30)
!1399 = !DILocalVariable(name: "quote_string_len", scope: !1380, file: !121, line: 259, type: !115)
!1400 = !DILocalVariable(name: "backslash_escapes", scope: !1380, file: !121, line: 260, type: !73)
!1401 = !DILocalVariable(name: "unibyte_locale", scope: !1380, file: !121, line: 261, type: !73)
!1402 = !DILocalVariable(name: "elide_outer_quotes", scope: !1380, file: !121, line: 262, type: !73)
!1403 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1380, file: !121, line: 263, type: !73)
!1404 = !DILocalVariable(name: "encountered_single_quote", scope: !1380, file: !121, line: 264, type: !73)
!1405 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1380, file: !121, line: 265, type: !73)
!1406 = !DILocalVariable(name: "c", scope: !1407, file: !121, line: 394, type: !515)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !121, line: 393, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !121, line: 392, column: 3)
!1409 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 392, column: 3)
!1410 = !DILocalVariable(name: "esc", scope: !1407, file: !121, line: 395, type: !515)
!1411 = !DILocalVariable(name: "is_right_quote", scope: !1407, file: !121, line: 396, type: !73)
!1412 = !DILocalVariable(name: "escaping", scope: !1407, file: !121, line: 397, type: !73)
!1413 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1407, file: !121, line: 398, type: !73)
!1414 = !DILocalVariable(name: "m", scope: !1415, file: !121, line: 602, type: !115)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 600, column: 11)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 418, column: 9)
!1417 = !DILocalVariable(name: "printable", scope: !1415, file: !121, line: 604, type: !73)
!1418 = !DILocalVariable(name: "mbstate", scope: !1419, file: !121, line: 613, type: !1421)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !121, line: 612, column: 15)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !121, line: 606, column: 17)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1422, line: 6, baseType: !1423)
!1422 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1424, line: 21, baseType: !1425)
!1424 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1424, line: 13, size: 64, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1425, file: !1424, line: 15, baseType: !53, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1425, file: !1424, line: 20, baseType: !1429, size: 32, offset: 32)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !1424, line: 16, size: 32, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1429, file: !1424, line: 18, baseType: !134, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1429, file: !1424, line: 19, baseType: !1433, size: 32)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 4)
!1436 = !DILocalVariable(name: "w", scope: !1437, file: !121, line: 623, type: !1438)
!1437 = distinct !DILexicalBlock(scope: !1419, file: !121, line: 622, column: 19)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !53)
!1439 = !DILocalVariable(name: "bytes", scope: !1437, file: !121, line: 624, type: !115)
!1440 = !DILocalVariable(name: "j", scope: !1441, file: !121, line: 649, type: !115)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !121, line: 648, column: 27)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !121, line: 646, column: 29)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !121, line: 641, column: 23)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !121, line: 633, column: 30)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !121, line: 628, column: 30)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !121, line: 626, column: 25)
!1447 = !DILocalVariable(name: "ilim", scope: !1448, file: !121, line: 676, type: !115)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !121, line: 673, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1415, file: !121, line: 672, column: 17)
!1450 = !DILocation(line: 248, column: 33, scope: !1380)
!1451 = !DILocation(line: 248, column: 48, scope: !1380)
!1452 = !DILocation(line: 249, column: 39, scope: !1380)
!1453 = !DILocation(line: 249, column: 51, scope: !1380)
!1454 = !DILocation(line: 250, column: 46, scope: !1380)
!1455 = !DILocation(line: 250, column: 65, scope: !1380)
!1456 = !DILocation(line: 251, column: 47, scope: !1380)
!1457 = !DILocation(line: 252, column: 39, scope: !1380)
!1458 = !DILocation(line: 253, column: 39, scope: !1380)
!1459 = !DILocation(line: 256, column: 10, scope: !1380)
!1460 = !DILocation(line: 257, column: 10, scope: !1380)
!1461 = !DILocation(line: 258, column: 15, scope: !1380)
!1462 = !DILocation(line: 259, column: 10, scope: !1380)
!1463 = !DILocation(line: 260, column: 8, scope: !1380)
!1464 = !DILocation(line: 261, column: 25, scope: !1380)
!1465 = !DILocation(line: 261, column: 36, scope: !1380)
!1466 = !DILocation(line: 262, column: 8, scope: !1380)
!1467 = !DILocation(line: 263, column: 8, scope: !1380)
!1468 = !DILocation(line: 264, column: 8, scope: !1380)
!1469 = !DILocation(line: 265, column: 8, scope: !1380)
!1470 = !DILocation(line: 265, column: 3, scope: !1380)
!1471 = !DILocation(line: 308, column: 3, scope: !1380)
!1472 = !DILocation(line: 315, column: 11, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 309, column: 5)
!1474 = !DILocation(line: 315, column: 12, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1473, file: !121, line: 315, column: 11)
!1476 = !DILocation(line: 316, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !121, line: 316, column: 9)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !121, line: 316, column: 9)
!1479 = !DILocation(line: 316, column: 9, scope: !1478)
!1480 = !DILocation(line: 354, column: 26, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !121, line: 332, column: 11)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !121, line: 331, column: 13)
!1483 = distinct !DILexicalBlock(scope: !1473, file: !121, line: 330, column: 7)
!1484 = !DILocation(line: 355, column: 27, scope: !1481)
!1485 = !DILocation(line: 356, column: 11, scope: !1481)
!1486 = !DILocation(line: 357, column: 14, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !121, line: 357, column: 13)
!1488 = !DILocation(line: 357, column: 13, scope: !1483)
!1489 = !DILocation(line: 358, column: 43, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !121, line: 358, column: 11)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !121, line: 358, column: 11)
!1492 = !DILocation(line: 358, column: 11, scope: !1491)
!1493 = !DILocation(line: 359, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !121, line: 359, column: 13)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !121, line: 359, column: 13)
!1496 = !DILocation(line: 359, column: 13, scope: !1495)
!1497 = !DILocation(line: 358, column: 70, scope: !1490)
!1498 = distinct !{!1498, !1492, !1499}
!1499 = !DILocation(line: 359, column: 13, scope: !1491)
!1500 = !DILocation(line: 362, column: 28, scope: !1483)
!1501 = !DILocation(line: 364, column: 7, scope: !1473)
!1502 = !DILocation(line: 367, column: 7, scope: !1473)
!1503 = !DILocation(line: 370, column: 7, scope: !1473)
!1504 = !DILocation(line: 373, column: 12, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1473, file: !121, line: 373, column: 11)
!1506 = !DILocation(line: 373, column: 11, scope: !1473)
!1507 = !DILocation(line: 378, column: 12, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1473, file: !121, line: 378, column: 11)
!1509 = !DILocation(line: 378, column: 11, scope: !1473)
!1510 = !DILocation(line: 379, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !121, line: 379, column: 9)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !121, line: 379, column: 9)
!1513 = !DILocation(line: 379, column: 9, scope: !1512)
!1514 = !DILocation(line: 386, column: 7, scope: !1473)
!1515 = !DILocation(line: 389, column: 7, scope: !1473)
!1516 = !DILocation(line: 255, column: 10, scope: !1380)
!1517 = !DILocation(line: 392, column: 8, scope: !1409)
!1518 = !DILocation(line: 392, column: 27, scope: !1408)
!1519 = !DILocation(line: 392, column: 19, scope: !1408)
!1520 = !DILocation(line: 392, column: 60, scope: !1408)
!1521 = !DILocation(line: 392, column: 3, scope: !1409)
!1522 = !DILocation(line: 392, column: 41, scope: !1408)
!1523 = !DILocation(line: 392, column: 48, scope: !1408)
!1524 = !DILocation(line: 396, column: 12, scope: !1407)
!1525 = !DILocation(line: 397, column: 12, scope: !1407)
!1526 = !DILocation(line: 398, column: 12, scope: !1407)
!1527 = !DILocation(line: 401, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 400, column: 11)
!1529 = !DILocation(line: 403, column: 17, scope: !1528)
!1530 = !DILocation(line: 404, column: 39, scope: !1528)
!1531 = !DILocation(line: 408, column: 32, scope: !1528)
!1532 = !DILocation(line: 404, column: 19, scope: !1528)
!1533 = !DILocation(line: 404, column: 15, scope: !1528)
!1534 = !DILocation(line: 409, column: 11, scope: !1528)
!1535 = !DILocation(line: 409, column: 26, scope: !1528)
!1536 = !DILocation(line: 409, column: 14, scope: !1528)
!1537 = !DILocation(line: 409, column: 63, scope: !1528)
!1538 = !DILocation(line: 400, column: 11, scope: !1407)
!1539 = !DILocation(line: 416, column: 11, scope: !1407)
!1540 = !DILocation(line: 394, column: 21, scope: !1407)
!1541 = !DILocation(line: 417, column: 7, scope: !1407)
!1542 = !DILocation(line: 420, column: 15, scope: !1416)
!1543 = !DILocation(line: 422, column: 15, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !121, line: 422, column: 15)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !121, line: 421, column: 13)
!1546 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 420, column: 15)
!1547 = !DILocation(line: 422, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !121, line: 422, column: 15)
!1549 = !DILocation(line: 422, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !121, line: 422, column: 15)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !121, line: 422, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !121, line: 422, column: 15)
!1553 = !DILocation(line: 422, column: 15, scope: !1551)
!1554 = !DILocation(line: 422, column: 15, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !121, line: 422, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !121, line: 422, column: 15)
!1557 = !DILocation(line: 422, column: 15, scope: !1556)
!1558 = !DILocation(line: 422, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !121, line: 422, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1552, file: !121, line: 422, column: 15)
!1561 = !DILocation(line: 422, column: 15, scope: !1560)
!1562 = !DILocation(line: 422, column: 15, scope: !1552)
!1563 = !DILocation(line: 422, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !121, line: 422, column: 15)
!1565 = distinct !DILexicalBlock(scope: !1544, file: !121, line: 422, column: 15)
!1566 = !DILocation(line: 422, column: 15, scope: !1565)
!1567 = !DILocation(line: 430, column: 19, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1545, file: !121, line: 429, column: 19)
!1569 = !DILocation(line: 430, column: 24, scope: !1568)
!1570 = !DILocation(line: 430, column: 28, scope: !1568)
!1571 = !DILocation(line: 430, column: 38, scope: !1568)
!1572 = !DILocation(line: 430, column: 48, scope: !1568)
!1573 = !DILocation(line: 430, column: 59, scope: !1568)
!1574 = !DILocation(line: 432, column: 19, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !121, line: 432, column: 19)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !121, line: 432, column: 19)
!1577 = distinct !DILexicalBlock(scope: !1568, file: !121, line: 431, column: 17)
!1578 = !DILocation(line: 432, column: 19, scope: !1576)
!1579 = !DILocation(line: 433, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !121, line: 433, column: 19)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !121, line: 433, column: 19)
!1582 = !DILocation(line: 433, column: 19, scope: !1581)
!1583 = !DILocation(line: 434, column: 17, scope: !1577)
!1584 = !DILocation(line: 441, column: 20, scope: !1546)
!1585 = !DILocation(line: 446, column: 11, scope: !1416)
!1586 = !DILocation(line: 449, column: 19, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 447, column: 13)
!1588 = !DILocation(line: 455, column: 19, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !121, line: 454, column: 19)
!1590 = !DILocation(line: 455, column: 24, scope: !1589)
!1591 = !DILocation(line: 455, column: 28, scope: !1589)
!1592 = !DILocation(line: 455, column: 38, scope: !1589)
!1593 = !DILocation(line: 455, column: 47, scope: !1589)
!1594 = !DILocation(line: 455, column: 41, scope: !1589)
!1595 = !DILocation(line: 455, column: 52, scope: !1589)
!1596 = !DILocation(line: 454, column: 19, scope: !1587)
!1597 = !DILocation(line: 456, column: 25, scope: !1589)
!1598 = !DILocation(line: 456, column: 17, scope: !1589)
!1599 = !DILocation(line: 463, column: 25, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1589, file: !121, line: 457, column: 19)
!1601 = !DILocation(line: 467, column: 21, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !121, line: 467, column: 21)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !121, line: 467, column: 21)
!1604 = !DILocation(line: 467, column: 21, scope: !1603)
!1605 = !DILocation(line: 468, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !121, line: 468, column: 21)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !121, line: 468, column: 21)
!1608 = !DILocation(line: 468, column: 21, scope: !1607)
!1609 = !DILocation(line: 469, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !121, line: 469, column: 21)
!1611 = distinct !DILexicalBlock(scope: !1600, file: !121, line: 469, column: 21)
!1612 = !DILocation(line: 469, column: 21, scope: !1611)
!1613 = !DILocation(line: 470, column: 21, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !121, line: 470, column: 21)
!1615 = distinct !DILexicalBlock(scope: !1600, file: !121, line: 470, column: 21)
!1616 = !DILocation(line: 470, column: 21, scope: !1615)
!1617 = !DILocation(line: 471, column: 21, scope: !1600)
!1618 = !DILocation(line: 395, column: 21, scope: !1407)
!1619 = !DILocation(line: 484, column: 31, scope: !1416)
!1620 = !DILocation(line: 485, column: 31, scope: !1416)
!1621 = !DILocation(line: 487, column: 31, scope: !1416)
!1622 = !DILocation(line: 488, column: 31, scope: !1416)
!1623 = !DILocation(line: 489, column: 31, scope: !1416)
!1624 = !DILocation(line: 492, column: 15, scope: !1416)
!1625 = !DILocation(line: 494, column: 19, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !121, line: 493, column: 13)
!1627 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 492, column: 15)
!1628 = !DILocation(line: 501, column: 33, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 501, column: 15)
!1630 = !DILocation(line: 506, column: 15, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 505, column: 15)
!1632 = !DILocation(line: 510, column: 15, scope: !1416)
!1633 = !DILocation(line: 518, column: 26, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 518, column: 15)
!1635 = !DILocation(line: 518, column: 15, scope: !1416)
!1636 = !DILocation(line: 518, column: 40, scope: !1634)
!1637 = !DILocation(line: 518, column: 47, scope: !1634)
!1638 = !DILocation(line: 522, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 522, column: 15)
!1640 = !DILocation(line: 518, column: 18, scope: !1634)
!1641 = !DILocation(line: 518, column: 65, scope: !1634)
!1642 = !DILocation(line: 522, column: 15, scope: !1416)
!1643 = !DILocation(line: 526, column: 11, scope: !1416)
!1644 = !DILocation(line: 541, column: 15, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 540, column: 15)
!1646 = !DILocation(line: 548, column: 15, scope: !1416)
!1647 = !DILocation(line: 550, column: 19, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !121, line: 549, column: 13)
!1649 = distinct !DILexicalBlock(scope: !1416, file: !121, line: 548, column: 15)
!1650 = !DILocation(line: 553, column: 19, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !121, line: 553, column: 19)
!1652 = !DILocation(line: 553, column: 35, scope: !1651)
!1653 = !DILocation(line: 553, column: 30, scope: !1651)
!1654 = !DILocation(line: 562, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !121, line: 562, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1648, file: !121, line: 562, column: 15)
!1657 = !DILocation(line: 562, column: 15, scope: !1656)
!1658 = !DILocation(line: 563, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !121, line: 563, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1648, file: !121, line: 563, column: 15)
!1661 = !DILocation(line: 563, column: 15, scope: !1660)
!1662 = !DILocation(line: 564, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !121, line: 564, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1648, file: !121, line: 564, column: 15)
!1665 = !DILocation(line: 564, column: 15, scope: !1664)
!1666 = !DILocation(line: 566, column: 13, scope: !1648)
!1667 = !DILocation(line: 606, column: 17, scope: !1415)
!1668 = !DILocation(line: 602, column: 20, scope: !1415)
!1669 = !DILocation(line: 609, column: 29, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1420, file: !121, line: 607, column: 15)
!1671 = !{!1672, !1672, i64 0}
!1672 = !{!"short", !593, i64 0}
!1673 = !DILocation(line: 609, column: 27, scope: !1670)
!1674 = !DILocation(line: 604, column: 18, scope: !1415)
!1675 = !DILocation(line: 610, column: 15, scope: !1670)
!1676 = !DILocation(line: 613, column: 17, scope: !1419)
!1677 = !DILocation(line: 614, column: 17, scope: !1419)
!1678 = !DILocation(line: 618, column: 29, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1419, file: !121, line: 618, column: 21)
!1680 = !DILocation(line: 618, column: 21, scope: !1419)
!1681 = !DILocation(line: 619, column: 29, scope: !1679)
!1682 = !DILocation(line: 619, column: 19, scope: !1679)
!1683 = !DILocation(line: 621, column: 17, scope: !1419)
!1684 = distinct !{!1684, !1683, !1685}
!1685 = !DILocation(line: 667, column: 44, scope: !1419)
!1686 = !DILocation(line: 623, column: 21, scope: !1437)
!1687 = !DILocation(line: 624, column: 56, scope: !1437)
!1688 = !DILocation(line: 624, column: 50, scope: !1437)
!1689 = !DILocation(line: 625, column: 53, scope: !1437)
!1690 = !DILocation(line: 613, column: 27, scope: !1419)
!1691 = !DILocation(line: 623, column: 29, scope: !1437)
!1692 = !DILocation(line: 624, column: 36, scope: !1437)
!1693 = !DILocation(line: 624, column: 28, scope: !1437)
!1694 = !DILocation(line: 626, column: 25, scope: !1437)
!1695 = !DILocation(line: 636, column: 38, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1444, file: !121, line: 634, column: 23)
!1697 = !DILocation(line: 636, column: 48, scope: !1696)
!1698 = !DILocation(line: 636, column: 51, scope: !1696)
!1699 = !DILocation(line: 636, column: 25, scope: !1696)
!1700 = !DILocation(line: 637, column: 28, scope: !1696)
!1701 = !DILocation(line: 636, column: 34, scope: !1696)
!1702 = distinct !{!1702, !1699, !1700}
!1703 = !DILocation(line: 650, column: 43, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !121, line: 650, column: 29)
!1705 = distinct !DILexicalBlock(scope: !1441, file: !121, line: 650, column: 29)
!1706 = !DILocation(line: 647, column: 29, scope: !1442)
!1707 = !DILocation(line: 649, column: 36, scope: !1441)
!1708 = !DILocation(line: 651, column: 49, scope: !1704)
!1709 = !DILocation(line: 651, column: 39, scope: !1704)
!1710 = !DILocation(line: 651, column: 31, scope: !1704)
!1711 = !DILocation(line: 650, column: 53, scope: !1704)
!1712 = !DILocation(line: 650, column: 29, scope: !1705)
!1713 = distinct !{!1713, !1712, !1714}
!1714 = !DILocation(line: 659, column: 33, scope: !1705)
!1715 = !DILocation(line: 666, column: 19, scope: !1419)
!1716 = !DILocation(line: 662, column: 41, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1443, file: !121, line: 662, column: 29)
!1718 = !DILocation(line: 662, column: 31, scope: !1717)
!1719 = !DILocation(line: 662, column: 29, scope: !1443)
!1720 = !DILocation(line: 664, column: 27, scope: !1443)
!1721 = !DILocation(line: 667, column: 26, scope: !1419)
!1722 = !DILocation(line: 667, column: 24, scope: !1419)
!1723 = !DILocation(line: 666, column: 19, scope: !1437)
!1724 = !DILocation(line: 668, column: 15, scope: !1420)
!1725 = !DILocation(line: 670, column: 40, scope: !1415)
!1726 = !DILocation(line: 672, column: 19, scope: !1449)
!1727 = !DILocation(line: 672, column: 45, scope: !1449)
!1728 = !DILocation(line: 672, column: 23, scope: !1449)
!1729 = !DILocation(line: 676, column: 33, scope: !1448)
!1730 = !DILocation(line: 676, column: 24, scope: !1448)
!1731 = !DILocation(line: 678, column: 17, scope: !1448)
!1732 = !DILocation(line: 680, column: 43, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !121, line: 680, column: 25)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !121, line: 679, column: 19)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !121, line: 678, column: 17)
!1736 = distinct !DILexicalBlock(scope: !1448, file: !121, line: 678, column: 17)
!1737 = !DILocation(line: 682, column: 25, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !121, line: 682, column: 25)
!1739 = distinct !DILexicalBlock(scope: !1733, file: !121, line: 681, column: 23)
!1740 = !DILocation(line: 682, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !121, line: 682, column: 25)
!1742 = !DILocation(line: 682, column: 25, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !121, line: 682, column: 25)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !121, line: 682, column: 25)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !121, line: 682, column: 25)
!1746 = !DILocation(line: 682, column: 25, scope: !1744)
!1747 = !DILocation(line: 682, column: 25, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !121, line: 682, column: 25)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !121, line: 682, column: 25)
!1750 = !DILocation(line: 682, column: 25, scope: !1749)
!1751 = !DILocation(line: 682, column: 25, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !121, line: 682, column: 25)
!1753 = distinct !DILexicalBlock(scope: !1745, file: !121, line: 682, column: 25)
!1754 = !DILocation(line: 682, column: 25, scope: !1753)
!1755 = !DILocation(line: 682, column: 25, scope: !1745)
!1756 = !DILocation(line: 682, column: 25, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !121, line: 682, column: 25)
!1758 = distinct !DILexicalBlock(scope: !1738, file: !121, line: 682, column: 25)
!1759 = !DILocation(line: 682, column: 25, scope: !1758)
!1760 = !DILocation(line: 683, column: 25, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !121, line: 683, column: 25)
!1762 = distinct !DILexicalBlock(scope: !1739, file: !121, line: 683, column: 25)
!1763 = !DILocation(line: 683, column: 25, scope: !1762)
!1764 = !DILocation(line: 684, column: 25, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !121, line: 684, column: 25)
!1766 = distinct !DILexicalBlock(scope: !1739, file: !121, line: 684, column: 25)
!1767 = !DILocation(line: 684, column: 25, scope: !1766)
!1768 = !DILocation(line: 685, column: 38, scope: !1739)
!1769 = !DILocation(line: 685, column: 33, scope: !1739)
!1770 = !DILocation(line: 686, column: 23, scope: !1739)
!1771 = !DILocation(line: 687, column: 30, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1733, file: !121, line: 687, column: 30)
!1773 = !DILocation(line: 687, column: 30, scope: !1733)
!1774 = !DILocation(line: 689, column: 25, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !121, line: 689, column: 25)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !121, line: 689, column: 25)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !121, line: 688, column: 23)
!1778 = !DILocation(line: 689, column: 25, scope: !1776)
!1779 = !DILocation(line: 691, column: 23, scope: !1777)
!1780 = !DILocation(line: 692, column: 35, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1734, file: !121, line: 692, column: 25)
!1782 = !DILocation(line: 692, column: 30, scope: !1781)
!1783 = !DILocation(line: 692, column: 25, scope: !1734)
!1784 = !DILocation(line: 694, column: 21, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !121, line: 694, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1734, file: !121, line: 694, column: 21)
!1787 = !DILocation(line: 694, column: 21, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !121, line: 694, column: 21)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !121, line: 694, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1785, file: !121, line: 694, column: 21)
!1791 = !DILocation(line: 694, column: 21, scope: !1789)
!1792 = !DILocation(line: 694, column: 21, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !121, line: 694, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !121, line: 694, column: 21)
!1795 = !DILocation(line: 694, column: 21, scope: !1794)
!1796 = !DILocation(line: 694, column: 21, scope: !1790)
!1797 = !DILocation(line: 695, column: 21, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !121, line: 695, column: 21)
!1799 = distinct !DILexicalBlock(scope: !1734, file: !121, line: 695, column: 21)
!1800 = !DILocation(line: 695, column: 21, scope: !1799)
!1801 = !DILocation(line: 696, column: 25, scope: !1734)
!1802 = !DILocation(line: 678, column: 17, scope: !1735)
!1803 = distinct !{!1803, !1804, !1805}
!1804 = !DILocation(line: 678, column: 17, scope: !1736)
!1805 = !DILocation(line: 697, column: 19, scope: !1736)
!1806 = !DILocation(line: 704, column: 34, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 704, column: 11)
!1808 = !DILocation(line: 706, column: 14, scope: !1807)
!1809 = !DILocation(line: 707, column: 14, scope: !1807)
!1810 = !DILocation(line: 707, column: 35, scope: !1807)
!1811 = !DILocation(line: 707, column: 17, scope: !1807)
!1812 = !DILocation(line: 707, column: 53, scope: !1807)
!1813 = !DILocation(line: 707, column: 47, scope: !1807)
!1814 = !DILocation(line: 707, column: 65, scope: !1807)
!1815 = !DILocation(line: 708, column: 15, scope: !1807)
!1816 = !DILocation(line: 708, column: 11, scope: !1807)
!1817 = !DILocation(line: 704, column: 11, scope: !1407)
!1818 = !DILocation(line: 712, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 712, column: 7)
!1820 = !DILocation(line: 712, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !121, line: 712, column: 7)
!1822 = !DILocation(line: 712, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !121, line: 712, column: 7)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !121, line: 712, column: 7)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !121, line: 712, column: 7)
!1826 = !DILocation(line: 712, column: 7, scope: !1824)
!1827 = !DILocation(line: 712, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !121, line: 712, column: 7)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !121, line: 712, column: 7)
!1830 = !DILocation(line: 712, column: 7, scope: !1829)
!1831 = !DILocation(line: 712, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !121, line: 712, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !121, line: 712, column: 7)
!1834 = !DILocation(line: 712, column: 7, scope: !1833)
!1835 = !DILocation(line: 712, column: 7, scope: !1825)
!1836 = !DILocation(line: 712, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !121, line: 712, column: 7)
!1838 = distinct !DILexicalBlock(scope: !1819, file: !121, line: 712, column: 7)
!1839 = !DILocation(line: 712, column: 7, scope: !1838)
!1840 = !DILocation(line: 715, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !121, line: 715, column: 7)
!1842 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 715, column: 7)
!1843 = !DILocation(line: 715, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !121, line: 715, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !121, line: 715, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !121, line: 715, column: 7)
!1847 = !DILocation(line: 715, column: 7, scope: !1845)
!1848 = !DILocation(line: 715, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !121, line: 715, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !121, line: 715, column: 7)
!1851 = !DILocation(line: 715, column: 7, scope: !1850)
!1852 = !DILocation(line: 715, column: 7, scope: !1846)
!1853 = !DILocation(line: 716, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !121, line: 716, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 716, column: 7)
!1856 = !DILocation(line: 716, column: 7, scope: !1855)
!1857 = !DILocation(line: 718, column: 13, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 718, column: 11)
!1859 = !DILocation(line: 718, column: 11, scope: !1407)
!1860 = !DILocation(line: 720, column: 5, scope: !1408)
!1861 = !DILocation(line: 392, column: 75, scope: !1408)
!1862 = !DILocation(line: 392, column: 3, scope: !1408)
!1863 = distinct !{!1863, !1521, !1864}
!1864 = !DILocation(line: 720, column: 5, scope: !1409)
!1865 = !DILocation(line: 722, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 722, column: 7)
!1867 = !DILocation(line: 722, column: 16, scope: !1866)
!1868 = !DILocation(line: 730, column: 51, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 730, column: 7)
!1870 = !DILocation(line: 731, column: 10, scope: !1869)
!1871 = !DILocation(line: 733, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !121, line: 733, column: 11)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !121, line: 732, column: 5)
!1874 = !DILocation(line: 733, column: 11, scope: !1873)
!1875 = !DILocation(line: 734, column: 16, scope: !1872)
!1876 = !DILocation(line: 734, column: 9, scope: !1872)
!1877 = !DILocation(line: 738, column: 18, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1872, file: !121, line: 738, column: 16)
!1879 = !DILocation(line: 738, column: 32, scope: !1878)
!1880 = !DILocation(line: 738, column: 29, scope: !1878)
!1881 = !DILocation(line: 747, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 747, column: 7)
!1883 = !DILocation(line: 747, column: 20, scope: !1882)
!1884 = !DILocation(line: 748, column: 12, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !121, line: 748, column: 5)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !121, line: 748, column: 5)
!1887 = !DILocation(line: 748, column: 5, scope: !1886)
!1888 = !DILocation(line: 749, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !121, line: 749, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !121, line: 749, column: 7)
!1891 = !DILocation(line: 749, column: 7, scope: !1890)
!1892 = !DILocation(line: 748, column: 39, scope: !1885)
!1893 = distinct !{!1893, !1887, !1894}
!1894 = !DILocation(line: 749, column: 7, scope: !1886)
!1895 = !DILocation(line: 751, column: 11, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 751, column: 7)
!1897 = !DILocation(line: 751, column: 7, scope: !1380)
!1898 = !DILocation(line: 752, column: 5, scope: !1896)
!1899 = !DILocation(line: 752, column: 17, scope: !1896)
!1900 = !DILocation(line: 758, column: 21, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 758, column: 7)
!1902 = !DILocation(line: 758, column: 54, scope: !1901)
!1903 = !DILocation(line: 758, column: 51, scope: !1901)
!1904 = !DILocation(line: 762, column: 42, scope: !1380)
!1905 = !DILocation(line: 760, column: 10, scope: !1380)
!1906 = !DILocation(line: 760, column: 3, scope: !1380)
!1907 = !DILocation(line: 764, column: 1, scope: !1380)
!1908 = distinct !DISubprogram(name: "gettext_quote", scope: !121, file: !121, line: 199, type: !1909, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!30, !30, !5}
!1911 = !{!1912, !1913, !1914, !1915}
!1912 = !DILocalVariable(name: "msgid", arg: 1, scope: !1908, file: !121, line: 199, type: !30)
!1913 = !DILocalVariable(name: "s", arg: 2, scope: !1908, file: !121, line: 199, type: !5)
!1914 = !DILocalVariable(name: "translation", scope: !1908, file: !121, line: 201, type: !30)
!1915 = !DILocalVariable(name: "locale_code", scope: !1908, file: !121, line: 202, type: !30)
!1916 = !DILocation(line: 199, column: 28, scope: !1908)
!1917 = !DILocation(line: 199, column: 54, scope: !1908)
!1918 = !DILocation(line: 201, column: 29, scope: !1908)
!1919 = !DILocation(line: 201, column: 15, scope: !1908)
!1920 = !DILocation(line: 204, column: 19, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1908, file: !121, line: 204, column: 7)
!1922 = !DILocation(line: 204, column: 7, scope: !1908)
!1923 = !DILocation(line: 225, column: 17, scope: !1908)
!1924 = !DILocation(line: 202, column: 15, scope: !1908)
!1925 = !DILocalVariable(name: "s2", arg: 2, scope: !1926, file: !1927, line: 160, type: !30)
!1926 = distinct !DISubprogram(name: "strcaseeq0", scope: !1927, file: !1927, line: 160, type: !1928, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1930)
!1927 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!53, !30, !30, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!1930 = !{!1931, !1925, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940}
!1931 = !DILocalVariable(name: "s1", arg: 1, scope: !1926, file: !1927, line: 160, type: !30)
!1932 = !DILocalVariable(name: "s20", arg: 3, scope: !1926, file: !1927, line: 160, type: !21)
!1933 = !DILocalVariable(name: "s21", arg: 4, scope: !1926, file: !1927, line: 160, type: !21)
!1934 = !DILocalVariable(name: "s22", arg: 5, scope: !1926, file: !1927, line: 160, type: !21)
!1935 = !DILocalVariable(name: "s23", arg: 6, scope: !1926, file: !1927, line: 160, type: !21)
!1936 = !DILocalVariable(name: "s24", arg: 7, scope: !1926, file: !1927, line: 160, type: !21)
!1937 = !DILocalVariable(name: "s25", arg: 8, scope: !1926, file: !1927, line: 160, type: !21)
!1938 = !DILocalVariable(name: "s26", arg: 9, scope: !1926, file: !1927, line: 160, type: !21)
!1939 = !DILocalVariable(name: "s27", arg: 10, scope: !1926, file: !1927, line: 160, type: !21)
!1940 = !DILocalVariable(name: "s28", arg: 11, scope: !1926, file: !1927, line: 160, type: !21)
!1941 = !DILocation(line: 160, column: 41, scope: !1926, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 226, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1908, file: !121, line: 226, column: 7)
!1944 = !DILocation(line: 160, column: 120, scope: !1926, inlinedAt: !1942)
!1945 = !DILocation(line: 160, column: 130, scope: !1926, inlinedAt: !1942)
!1946 = !DILocation(line: 162, column: 7, scope: !1947, inlinedAt: !1942)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !1927, line: 162, column: 7)
!1948 = !DILocalVariable(name: "s2", arg: 2, scope: !1949, file: !1927, line: 146, type: !30)
!1949 = distinct !DISubprogram(name: "strcaseeq1", scope: !1927, file: !1927, line: 146, type: !1950, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!53, !30, !30, !21, !21, !21, !21, !21, !21, !21, !21}
!1952 = !{!1953, !1948, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1953 = !DILocalVariable(name: "s1", arg: 1, scope: !1949, file: !1927, line: 146, type: !30)
!1954 = !DILocalVariable(name: "s21", arg: 3, scope: !1949, file: !1927, line: 146, type: !21)
!1955 = !DILocalVariable(name: "s22", arg: 4, scope: !1949, file: !1927, line: 146, type: !21)
!1956 = !DILocalVariable(name: "s23", arg: 5, scope: !1949, file: !1927, line: 146, type: !21)
!1957 = !DILocalVariable(name: "s24", arg: 6, scope: !1949, file: !1927, line: 146, type: !21)
!1958 = !DILocalVariable(name: "s25", arg: 7, scope: !1949, file: !1927, line: 146, type: !21)
!1959 = !DILocalVariable(name: "s26", arg: 8, scope: !1949, file: !1927, line: 146, type: !21)
!1960 = !DILocalVariable(name: "s27", arg: 9, scope: !1949, file: !1927, line: 146, type: !21)
!1961 = !DILocalVariable(name: "s28", arg: 10, scope: !1949, file: !1927, line: 146, type: !21)
!1962 = !DILocation(line: 146, column: 41, scope: !1949, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 167, column: 16, scope: !1964, inlinedAt: !1942)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1927, line: 164, column: 11)
!1965 = distinct !DILexicalBlock(scope: !1947, file: !1927, line: 163, column: 5)
!1966 = !DILocation(line: 146, column: 110, scope: !1949, inlinedAt: !1963)
!1967 = !DILocation(line: 146, column: 120, scope: !1949, inlinedAt: !1963)
!1968 = !DILocation(line: 148, column: 7, scope: !1969, inlinedAt: !1963)
!1969 = distinct !DILexicalBlock(scope: !1949, file: !1927, line: 148, column: 7)
!1970 = !DILocalVariable(name: "s2", arg: 2, scope: !1971, file: !1927, line: 132, type: !30)
!1971 = distinct !DISubprogram(name: "strcaseeq2", scope: !1927, file: !1927, line: 132, type: !1972, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!53, !30, !30, !21, !21, !21, !21, !21, !21, !21}
!1974 = !{!1975, !1970, !1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1975 = !DILocalVariable(name: "s1", arg: 1, scope: !1971, file: !1927, line: 132, type: !30)
!1976 = !DILocalVariable(name: "s22", arg: 3, scope: !1971, file: !1927, line: 132, type: !21)
!1977 = !DILocalVariable(name: "s23", arg: 4, scope: !1971, file: !1927, line: 132, type: !21)
!1978 = !DILocalVariable(name: "s24", arg: 5, scope: !1971, file: !1927, line: 132, type: !21)
!1979 = !DILocalVariable(name: "s25", arg: 6, scope: !1971, file: !1927, line: 132, type: !21)
!1980 = !DILocalVariable(name: "s26", arg: 7, scope: !1971, file: !1927, line: 132, type: !21)
!1981 = !DILocalVariable(name: "s27", arg: 8, scope: !1971, file: !1927, line: 132, type: !21)
!1982 = !DILocalVariable(name: "s28", arg: 9, scope: !1971, file: !1927, line: 132, type: !21)
!1983 = !DILocation(line: 132, column: 41, scope: !1971, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 153, column: 16, scope: !1985, inlinedAt: !1963)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !1927, line: 150, column: 11)
!1986 = distinct !DILexicalBlock(scope: !1969, file: !1927, line: 149, column: 5)
!1987 = !DILocation(line: 132, column: 100, scope: !1971, inlinedAt: !1984)
!1988 = !DILocation(line: 132, column: 110, scope: !1971, inlinedAt: !1984)
!1989 = !DILocation(line: 134, column: 7, scope: !1990, inlinedAt: !1984)
!1990 = distinct !DILexicalBlock(scope: !1971, file: !1927, line: 134, column: 7)
!1991 = !DILocalVariable(name: "s2", arg: 2, scope: !1992, file: !1927, line: 118, type: !30)
!1992 = distinct !DISubprogram(name: "strcaseeq3", scope: !1927, file: !1927, line: 118, type: !1993, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!53, !30, !30, !21, !21, !21, !21, !21, !21}
!1995 = !{!1996, !1991, !1997, !1998, !1999, !2000, !2001, !2002}
!1996 = !DILocalVariable(name: "s1", arg: 1, scope: !1992, file: !1927, line: 118, type: !30)
!1997 = !DILocalVariable(name: "s23", arg: 3, scope: !1992, file: !1927, line: 118, type: !21)
!1998 = !DILocalVariable(name: "s24", arg: 4, scope: !1992, file: !1927, line: 118, type: !21)
!1999 = !DILocalVariable(name: "s25", arg: 5, scope: !1992, file: !1927, line: 118, type: !21)
!2000 = !DILocalVariable(name: "s26", arg: 6, scope: !1992, file: !1927, line: 118, type: !21)
!2001 = !DILocalVariable(name: "s27", arg: 7, scope: !1992, file: !1927, line: 118, type: !21)
!2002 = !DILocalVariable(name: "s28", arg: 8, scope: !1992, file: !1927, line: 118, type: !21)
!2003 = !DILocation(line: 118, column: 41, scope: !1992, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 139, column: 16, scope: !2005, inlinedAt: !1984)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !1927, line: 136, column: 11)
!2006 = distinct !DILexicalBlock(scope: !1990, file: !1927, line: 135, column: 5)
!2007 = !DILocation(line: 118, column: 90, scope: !1992, inlinedAt: !2004)
!2008 = !DILocation(line: 118, column: 100, scope: !1992, inlinedAt: !2004)
!2009 = !DILocation(line: 120, column: 7, scope: !2010, inlinedAt: !2004)
!2010 = distinct !DILexicalBlock(scope: !1992, file: !1927, line: 120, column: 7)
!2011 = !DILocation(line: 120, column: 7, scope: !1992, inlinedAt: !2004)
!2012 = !DILocalVariable(name: "s2", arg: 2, scope: !2013, file: !1927, line: 104, type: !30)
!2013 = distinct !DISubprogram(name: "strcaseeq4", scope: !1927, file: !1927, line: 104, type: !2014, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!53, !30, !30, !21, !21, !21, !21, !21}
!2016 = !{!2017, !2012, !2018, !2019, !2020, !2021, !2022}
!2017 = !DILocalVariable(name: "s1", arg: 1, scope: !2013, file: !1927, line: 104, type: !30)
!2018 = !DILocalVariable(name: "s24", arg: 3, scope: !2013, file: !1927, line: 104, type: !21)
!2019 = !DILocalVariable(name: "s25", arg: 4, scope: !2013, file: !1927, line: 104, type: !21)
!2020 = !DILocalVariable(name: "s26", arg: 5, scope: !2013, file: !1927, line: 104, type: !21)
!2021 = !DILocalVariable(name: "s27", arg: 6, scope: !2013, file: !1927, line: 104, type: !21)
!2022 = !DILocalVariable(name: "s28", arg: 7, scope: !2013, file: !1927, line: 104, type: !21)
!2023 = !DILocation(line: 104, column: 41, scope: !2013, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 125, column: 16, scope: !2025, inlinedAt: !2004)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !1927, line: 122, column: 11)
!2026 = distinct !DILexicalBlock(scope: !2010, file: !1927, line: 121, column: 5)
!2027 = !DILocation(line: 104, column: 80, scope: !2013, inlinedAt: !2024)
!2028 = !DILocation(line: 104, column: 90, scope: !2013, inlinedAt: !2024)
!2029 = !DILocation(line: 106, column: 7, scope: !2030, inlinedAt: !2024)
!2030 = distinct !DILexicalBlock(scope: !2013, file: !1927, line: 106, column: 7)
!2031 = !DILocation(line: 106, column: 7, scope: !2013, inlinedAt: !2024)
!2032 = !DILocalVariable(name: "s2", arg: 2, scope: !2033, file: !1927, line: 90, type: !30)
!2033 = distinct !DISubprogram(name: "strcaseeq5", scope: !1927, file: !1927, line: 90, type: !2034, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!53, !30, !30, !21, !21, !21, !21}
!2036 = !{!2037, !2032, !2038, !2039, !2040, !2041}
!2037 = !DILocalVariable(name: "s1", arg: 1, scope: !2033, file: !1927, line: 90, type: !30)
!2038 = !DILocalVariable(name: "s25", arg: 3, scope: !2033, file: !1927, line: 90, type: !21)
!2039 = !DILocalVariable(name: "s26", arg: 4, scope: !2033, file: !1927, line: 90, type: !21)
!2040 = !DILocalVariable(name: "s27", arg: 5, scope: !2033, file: !1927, line: 90, type: !21)
!2041 = !DILocalVariable(name: "s28", arg: 6, scope: !2033, file: !1927, line: 90, type: !21)
!2042 = !DILocation(line: 90, column: 41, scope: !2033, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 111, column: 16, scope: !2044, inlinedAt: !2024)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1927, line: 108, column: 11)
!2045 = distinct !DILexicalBlock(scope: !2030, file: !1927, line: 107, column: 5)
!2046 = !DILocation(line: 90, column: 70, scope: !2033, inlinedAt: !2043)
!2047 = !DILocation(line: 90, column: 80, scope: !2033, inlinedAt: !2043)
!2048 = !DILocation(line: 92, column: 7, scope: !2049, inlinedAt: !2043)
!2049 = distinct !DILexicalBlock(scope: !2033, file: !1927, line: 92, column: 7)
!2050 = !DILocation(line: 92, column: 7, scope: !2033, inlinedAt: !2043)
!2051 = !DILocation(line: 227, column: 12, scope: !1943)
!2052 = !DILocation(line: 227, column: 21, scope: !1943)
!2053 = !DILocation(line: 227, column: 5, scope: !1943)
!2054 = !DILocation(line: 146, column: 41, scope: !1949, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 167, column: 16, scope: !1964, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 228, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1908, file: !121, line: 228, column: 7)
!2058 = !DILocation(line: 146, column: 110, scope: !1949, inlinedAt: !2055)
!2059 = !DILocation(line: 146, column: 120, scope: !1949, inlinedAt: !2055)
!2060 = !DILocation(line: 148, column: 7, scope: !1969, inlinedAt: !2055)
!2061 = !DILocation(line: 132, column: 41, scope: !1971, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 153, column: 16, scope: !1985, inlinedAt: !2055)
!2063 = !DILocation(line: 132, column: 100, scope: !1971, inlinedAt: !2062)
!2064 = !DILocation(line: 132, column: 110, scope: !1971, inlinedAt: !2062)
!2065 = !DILocation(line: 134, column: 7, scope: !1990, inlinedAt: !2062)
!2066 = !DILocation(line: 134, column: 7, scope: !1971, inlinedAt: !2062)
!2067 = !DILocation(line: 118, column: 41, scope: !1992, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 139, column: 16, scope: !2005, inlinedAt: !2062)
!2069 = !DILocation(line: 118, column: 90, scope: !1992, inlinedAt: !2068)
!2070 = !DILocation(line: 118, column: 100, scope: !1992, inlinedAt: !2068)
!2071 = !DILocation(line: 120, column: 7, scope: !2010, inlinedAt: !2068)
!2072 = !DILocation(line: 120, column: 7, scope: !1992, inlinedAt: !2068)
!2073 = !DILocation(line: 104, column: 41, scope: !2013, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 125, column: 16, scope: !2025, inlinedAt: !2068)
!2075 = !DILocation(line: 104, column: 80, scope: !2013, inlinedAt: !2074)
!2076 = !DILocation(line: 104, column: 90, scope: !2013, inlinedAt: !2074)
!2077 = !DILocation(line: 106, column: 7, scope: !2030, inlinedAt: !2074)
!2078 = !DILocation(line: 106, column: 7, scope: !2013, inlinedAt: !2074)
!2079 = !DILocation(line: 90, column: 41, scope: !2033, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 111, column: 16, scope: !2044, inlinedAt: !2074)
!2081 = !DILocation(line: 90, column: 70, scope: !2033, inlinedAt: !2080)
!2082 = !DILocation(line: 90, column: 80, scope: !2033, inlinedAt: !2080)
!2083 = !DILocation(line: 92, column: 7, scope: !2049, inlinedAt: !2080)
!2084 = !DILocation(line: 92, column: 7, scope: !2033, inlinedAt: !2080)
!2085 = !DILocalVariable(name: "s2", arg: 2, scope: !2086, file: !1927, line: 76, type: !30)
!2086 = distinct !DISubprogram(name: "strcaseeq6", scope: !1927, file: !1927, line: 76, type: !2087, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!53, !30, !30, !21, !21, !21}
!2089 = !{!2090, !2085, !2091, !2092, !2093}
!2090 = !DILocalVariable(name: "s1", arg: 1, scope: !2086, file: !1927, line: 76, type: !30)
!2091 = !DILocalVariable(name: "s26", arg: 3, scope: !2086, file: !1927, line: 76, type: !21)
!2092 = !DILocalVariable(name: "s27", arg: 4, scope: !2086, file: !1927, line: 76, type: !21)
!2093 = !DILocalVariable(name: "s28", arg: 5, scope: !2086, file: !1927, line: 76, type: !21)
!2094 = !DILocation(line: 76, column: 41, scope: !2086, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 97, column: 16, scope: !2096, inlinedAt: !2080)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !1927, line: 94, column: 11)
!2097 = distinct !DILexicalBlock(scope: !2049, file: !1927, line: 93, column: 5)
!2098 = !DILocation(line: 76, column: 60, scope: !2086, inlinedAt: !2095)
!2099 = !DILocation(line: 76, column: 70, scope: !2086, inlinedAt: !2095)
!2100 = !DILocation(line: 78, column: 7, scope: !2101, inlinedAt: !2095)
!2101 = distinct !DILexicalBlock(scope: !2086, file: !1927, line: 78, column: 7)
!2102 = !DILocation(line: 78, column: 7, scope: !2086, inlinedAt: !2095)
!2103 = !DILocalVariable(name: "s2", arg: 2, scope: !2104, file: !1927, line: 62, type: !30)
!2104 = distinct !DISubprogram(name: "strcaseeq7", scope: !1927, file: !1927, line: 62, type: !2105, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!53, !30, !30, !21, !21}
!2107 = !{!2108, !2103, !2109, !2110}
!2108 = !DILocalVariable(name: "s1", arg: 1, scope: !2104, file: !1927, line: 62, type: !30)
!2109 = !DILocalVariable(name: "s27", arg: 3, scope: !2104, file: !1927, line: 62, type: !21)
!2110 = !DILocalVariable(name: "s28", arg: 4, scope: !2104, file: !1927, line: 62, type: !21)
!2111 = !DILocation(line: 62, column: 41, scope: !2104, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 83, column: 16, scope: !2113, inlinedAt: !2095)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1927, line: 80, column: 11)
!2114 = distinct !DILexicalBlock(scope: !2101, file: !1927, line: 79, column: 5)
!2115 = !DILocation(line: 62, column: 50, scope: !2104, inlinedAt: !2112)
!2116 = !DILocation(line: 62, column: 60, scope: !2104, inlinedAt: !2112)
!2117 = !DILocation(line: 64, column: 7, scope: !2118, inlinedAt: !2112)
!2118 = distinct !DILexicalBlock(scope: !2104, file: !1927, line: 64, column: 7)
!2119 = !DILocation(line: 228, column: 7, scope: !1908)
!2120 = !DILocation(line: 229, column: 12, scope: !2057)
!2121 = !DILocation(line: 229, column: 21, scope: !2057)
!2122 = !DILocation(line: 229, column: 5, scope: !2057)
!2123 = !DILocation(line: 231, column: 13, scope: !1908)
!2124 = !DILocation(line: 231, column: 11, scope: !1908)
!2125 = !DILocation(line: 231, column: 3, scope: !1908)
!2126 = !DILocation(line: 232, column: 1, scope: !1908)
!2127 = distinct !DISubprogram(name: "quotearg_alloc", scope: !121, file: !121, line: 791, type: !2128, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!20, !30, !115, !1252}
!2130 = !{!2131, !2132, !2133}
!2131 = !DILocalVariable(name: "arg", arg: 1, scope: !2127, file: !121, line: 791, type: !30)
!2132 = !DILocalVariable(name: "argsize", arg: 2, scope: !2127, file: !121, line: 791, type: !115)
!2133 = !DILocalVariable(name: "o", arg: 3, scope: !2127, file: !121, line: 792, type: !1252)
!2134 = !DILocation(line: 791, column: 29, scope: !2127)
!2135 = !DILocation(line: 791, column: 41, scope: !2127)
!2136 = !DILocation(line: 792, column: 47, scope: !2127)
!2137 = !DILocalVariable(name: "arg", arg: 1, scope: !2138, file: !121, line: 804, type: !30)
!2138 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !121, file: !121, line: 804, type: !2139, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!20, !30, !115, !548, !1252}
!2141 = !{!2137, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149}
!2142 = !DILocalVariable(name: "argsize", arg: 2, scope: !2138, file: !121, line: 804, type: !115)
!2143 = !DILocalVariable(name: "size", arg: 3, scope: !2138, file: !121, line: 804, type: !548)
!2144 = !DILocalVariable(name: "o", arg: 4, scope: !2138, file: !121, line: 805, type: !1252)
!2145 = !DILocalVariable(name: "p", scope: !2138, file: !121, line: 807, type: !1252)
!2146 = !DILocalVariable(name: "e", scope: !2138, file: !121, line: 808, type: !53)
!2147 = !DILocalVariable(name: "flags", scope: !2138, file: !121, line: 810, type: !53)
!2148 = !DILocalVariable(name: "bufsize", scope: !2138, file: !121, line: 811, type: !115)
!2149 = !DILocalVariable(name: "buf", scope: !2138, file: !121, line: 815, type: !20)
!2150 = !DILocation(line: 804, column: 33, scope: !2138, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 794, column: 10, scope: !2127)
!2152 = !DILocation(line: 804, column: 45, scope: !2138, inlinedAt: !2151)
!2153 = !DILocation(line: 804, column: 62, scope: !2138, inlinedAt: !2151)
!2154 = !DILocation(line: 805, column: 51, scope: !2138, inlinedAt: !2151)
!2155 = !DILocation(line: 807, column: 37, scope: !2138, inlinedAt: !2151)
!2156 = !DILocation(line: 807, column: 33, scope: !2138, inlinedAt: !2151)
!2157 = !DILocation(line: 808, column: 11, scope: !2138, inlinedAt: !2151)
!2158 = !DILocation(line: 808, column: 7, scope: !2138, inlinedAt: !2151)
!2159 = !DILocation(line: 810, column: 18, scope: !2138, inlinedAt: !2151)
!2160 = !DILocation(line: 810, column: 24, scope: !2138, inlinedAt: !2151)
!2161 = !DILocation(line: 810, column: 7, scope: !2138, inlinedAt: !2151)
!2162 = !DILocation(line: 811, column: 69, scope: !2138, inlinedAt: !2151)
!2163 = !DILocation(line: 812, column: 53, scope: !2138, inlinedAt: !2151)
!2164 = !DILocation(line: 813, column: 49, scope: !2138, inlinedAt: !2151)
!2165 = !DILocation(line: 814, column: 49, scope: !2138, inlinedAt: !2151)
!2166 = !DILocation(line: 811, column: 20, scope: !2138, inlinedAt: !2151)
!2167 = !DILocation(line: 814, column: 62, scope: !2138, inlinedAt: !2151)
!2168 = !DILocation(line: 811, column: 10, scope: !2138, inlinedAt: !2151)
!2169 = !DILocalVariable(name: "n", arg: 1, scope: !2170, file: !544, line: 220, type: !115)
!2170 = distinct !DISubprogram(name: "xcharalloc", scope: !544, file: !544, line: 220, type: !2171, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!20, !115}
!2173 = !{!2169}
!2174 = !DILocation(line: 220, column: 20, scope: !2170, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 815, column: 15, scope: !2138, inlinedAt: !2151)
!2176 = !DILocation(line: 222, column: 10, scope: !2170, inlinedAt: !2175)
!2177 = !DILocation(line: 815, column: 9, scope: !2138, inlinedAt: !2151)
!2178 = !DILocation(line: 816, column: 60, scope: !2138, inlinedAt: !2151)
!2179 = !DILocation(line: 818, column: 32, scope: !2138, inlinedAt: !2151)
!2180 = !DILocation(line: 818, column: 47, scope: !2138, inlinedAt: !2151)
!2181 = !DILocation(line: 816, column: 3, scope: !2138, inlinedAt: !2151)
!2182 = !DILocation(line: 819, column: 9, scope: !2138, inlinedAt: !2151)
!2183 = !DILocation(line: 794, column: 3, scope: !2127)
!2184 = !DILocation(line: 804, column: 33, scope: !2138)
!2185 = !DILocation(line: 804, column: 45, scope: !2138)
!2186 = !DILocation(line: 804, column: 62, scope: !2138)
!2187 = !DILocation(line: 805, column: 51, scope: !2138)
!2188 = !DILocation(line: 807, column: 37, scope: !2138)
!2189 = !DILocation(line: 807, column: 33, scope: !2138)
!2190 = !DILocation(line: 808, column: 11, scope: !2138)
!2191 = !DILocation(line: 808, column: 7, scope: !2138)
!2192 = !DILocation(line: 810, column: 18, scope: !2138)
!2193 = !DILocation(line: 810, column: 27, scope: !2138)
!2194 = !DILocation(line: 810, column: 24, scope: !2138)
!2195 = !DILocation(line: 810, column: 7, scope: !2138)
!2196 = !DILocation(line: 811, column: 69, scope: !2138)
!2197 = !DILocation(line: 812, column: 53, scope: !2138)
!2198 = !DILocation(line: 813, column: 49, scope: !2138)
!2199 = !DILocation(line: 814, column: 49, scope: !2138)
!2200 = !DILocation(line: 811, column: 20, scope: !2138)
!2201 = !DILocation(line: 814, column: 62, scope: !2138)
!2202 = !DILocation(line: 811, column: 10, scope: !2138)
!2203 = !DILocation(line: 220, column: 20, scope: !2170, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 815, column: 15, scope: !2138)
!2205 = !DILocation(line: 222, column: 10, scope: !2170, inlinedAt: !2204)
!2206 = !DILocation(line: 815, column: 9, scope: !2138)
!2207 = !DILocation(line: 816, column: 60, scope: !2138)
!2208 = !DILocation(line: 818, column: 32, scope: !2138)
!2209 = !DILocation(line: 818, column: 47, scope: !2138)
!2210 = !DILocation(line: 816, column: 3, scope: !2138)
!2211 = !DILocation(line: 819, column: 9, scope: !2138)
!2212 = !DILocation(line: 820, column: 7, scope: !2138)
!2213 = !DILocation(line: 821, column: 11, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2138, file: !121, line: 820, column: 7)
!2215 = !{!1082, !1082, i64 0}
!2216 = !DILocation(line: 821, column: 5, scope: !2214)
!2217 = !DILocation(line: 822, column: 3, scope: !2138)
!2218 = distinct !DISubprogram(name: "quotearg_free", scope: !121, file: !121, line: 840, type: !600, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2219)
!2219 = !{!2220, !2221}
!2220 = !DILocalVariable(name: "sv", scope: !2218, file: !121, line: 842, type: !148)
!2221 = !DILocalVariable(name: "i", scope: !2218, file: !121, line: 843, type: !53)
!2222 = !DILocation(line: 842, column: 24, scope: !2218)
!2223 = !DILocation(line: 842, column: 19, scope: !2218)
!2224 = !DILocation(line: 843, column: 7, scope: !2218)
!2225 = !DILocation(line: 844, column: 19, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !121, line: 844, column: 3)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !121, line: 844, column: 3)
!2228 = !DILocation(line: 844, column: 17, scope: !2226)
!2229 = !DILocation(line: 844, column: 3, scope: !2227)
!2230 = !DILocation(line: 845, column: 17, scope: !2226)
!2231 = !{!2232, !592, i64 8}
!2232 = !{!"slotvec", !1082, i64 0, !592, i64 8}
!2233 = !DILocation(line: 845, column: 5, scope: !2226)
!2234 = !DILocation(line: 844, column: 28, scope: !2226)
!2235 = distinct !{!2235, !2229, !2236}
!2236 = !DILocation(line: 845, column: 20, scope: !2227)
!2237 = !DILocation(line: 846, column: 13, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2218, file: !121, line: 846, column: 7)
!2239 = !DILocation(line: 846, column: 17, scope: !2238)
!2240 = !DILocation(line: 846, column: 7, scope: !2218)
!2241 = !DILocation(line: 848, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !121, line: 847, column: 5)
!2243 = !DILocation(line: 849, column: 21, scope: !2242)
!2244 = !{!2232, !1082, i64 0}
!2245 = !DILocation(line: 850, column: 20, scope: !2242)
!2246 = !DILocation(line: 851, column: 5, scope: !2242)
!2247 = !DILocation(line: 852, column: 10, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2218, file: !121, line: 852, column: 7)
!2249 = !DILocation(line: 852, column: 7, scope: !2218)
!2250 = !DILocation(line: 854, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !121, line: 853, column: 5)
!2252 = !DILocation(line: 854, column: 7, scope: !2251)
!2253 = !DILocation(line: 855, column: 15, scope: !2251)
!2254 = !DILocation(line: 856, column: 5, scope: !2251)
!2255 = !DILocation(line: 857, column: 10, scope: !2218)
!2256 = !DILocation(line: 858, column: 1, scope: !2218)
!2257 = distinct !DISubprogram(name: "quotearg_n", scope: !121, file: !121, line: 922, type: !2258, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!20, !53, !30}
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2257, file: !121, line: 922, type: !53)
!2262 = !DILocalVariable(name: "arg", arg: 2, scope: !2257, file: !121, line: 922, type: !30)
!2263 = !DILocation(line: 922, column: 17, scope: !2257)
!2264 = !DILocation(line: 922, column: 32, scope: !2257)
!2265 = !DILocation(line: 924, column: 10, scope: !2257)
!2266 = !DILocation(line: 924, column: 3, scope: !2257)
!2267 = distinct !DISubprogram(name: "quotearg_n_options", scope: !121, file: !121, line: 869, type: !2268, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!20, !53, !30, !115, !1252}
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2280, !2282, !2283, !2284}
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !121, line: 869, type: !53)
!2272 = !DILocalVariable(name: "arg", arg: 2, scope: !2267, file: !121, line: 869, type: !30)
!2273 = !DILocalVariable(name: "argsize", arg: 3, scope: !2267, file: !121, line: 869, type: !115)
!2274 = !DILocalVariable(name: "options", arg: 4, scope: !2267, file: !121, line: 870, type: !1252)
!2275 = !DILocalVariable(name: "e", scope: !2267, file: !121, line: 872, type: !53)
!2276 = !DILocalVariable(name: "sv", scope: !2267, file: !121, line: 874, type: !148)
!2277 = !DILocalVariable(name: "preallocated", scope: !2278, file: !121, line: 881, type: !73)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !121, line: 880, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2267, file: !121, line: 879, column: 7)
!2280 = !DILocalVariable(name: "size", scope: !2281, file: !121, line: 894, type: !115)
!2281 = distinct !DILexicalBlock(scope: !2267, file: !121, line: 893, column: 3)
!2282 = !DILocalVariable(name: "val", scope: !2281, file: !121, line: 895, type: !20)
!2283 = !DILocalVariable(name: "flags", scope: !2281, file: !121, line: 897, type: !53)
!2284 = !DILocalVariable(name: "qsize", scope: !2281, file: !121, line: 898, type: !115)
!2285 = !DILocation(line: 869, column: 25, scope: !2267)
!2286 = !DILocation(line: 869, column: 40, scope: !2267)
!2287 = !DILocation(line: 869, column: 52, scope: !2267)
!2288 = !DILocation(line: 870, column: 51, scope: !2267)
!2289 = !DILocation(line: 872, column: 11, scope: !2267)
!2290 = !DILocation(line: 872, column: 7, scope: !2267)
!2291 = !DILocation(line: 874, column: 24, scope: !2267)
!2292 = !DILocation(line: 874, column: 19, scope: !2267)
!2293 = !DILocation(line: 876, column: 9, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2267, file: !121, line: 876, column: 7)
!2295 = !DILocation(line: 876, column: 7, scope: !2267)
!2296 = !DILocation(line: 877, column: 5, scope: !2294)
!2297 = !DILocation(line: 879, column: 7, scope: !2279)
!2298 = !DILocation(line: 879, column: 14, scope: !2279)
!2299 = !DILocation(line: 879, column: 7, scope: !2267)
!2300 = !DILocation(line: 881, column: 31, scope: !2278)
!2301 = !DILocation(line: 883, column: 67, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2278, file: !121, line: 883, column: 11)
!2303 = !DILocation(line: 883, column: 11, scope: !2278)
!2304 = !DILocation(line: 884, column: 9, scope: !2302)
!2305 = !DILocation(line: 886, column: 32, scope: !2278)
!2306 = !DILocation(line: 886, column: 61, scope: !2278)
!2307 = !DILocation(line: 886, column: 58, scope: !2278)
!2308 = !DILocation(line: 886, column: 66, scope: !2278)
!2309 = !DILocation(line: 886, column: 22, scope: !2278)
!2310 = !DILocation(line: 886, column: 15, scope: !2278)
!2311 = !DILocation(line: 887, column: 11, scope: !2278)
!2312 = !DILocation(line: 888, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2278, file: !121, line: 887, column: 11)
!2314 = !{i64 0, i64 8, !2215, i64 8, i64 8, !591}
!2315 = !DILocation(line: 888, column: 9, scope: !2313)
!2316 = !DILocation(line: 889, column: 20, scope: !2278)
!2317 = !DILocation(line: 889, column: 18, scope: !2278)
!2318 = !DILocation(line: 889, column: 7, scope: !2278)
!2319 = !DILocation(line: 889, column: 38, scope: !2278)
!2320 = !DILocation(line: 889, column: 31, scope: !2278)
!2321 = !DILocation(line: 889, column: 48, scope: !2278)
!2322 = !DILocation(line: 890, column: 14, scope: !2278)
!2323 = !DILocation(line: 891, column: 5, scope: !2278)
!2324 = !DILocation(line: 894, column: 19, scope: !2281)
!2325 = !DILocation(line: 894, column: 25, scope: !2281)
!2326 = !DILocation(line: 894, column: 12, scope: !2281)
!2327 = !DILocation(line: 895, column: 23, scope: !2281)
!2328 = !DILocation(line: 895, column: 11, scope: !2281)
!2329 = !DILocation(line: 897, column: 26, scope: !2281)
!2330 = !DILocation(line: 897, column: 32, scope: !2281)
!2331 = !DILocation(line: 897, column: 9, scope: !2281)
!2332 = !DILocation(line: 899, column: 55, scope: !2281)
!2333 = !DILocation(line: 900, column: 46, scope: !2281)
!2334 = !DILocation(line: 901, column: 55, scope: !2281)
!2335 = !DILocation(line: 902, column: 55, scope: !2281)
!2336 = !DILocation(line: 898, column: 20, scope: !2281)
!2337 = !DILocation(line: 898, column: 12, scope: !2281)
!2338 = !DILocation(line: 904, column: 14, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2281, file: !121, line: 904, column: 9)
!2340 = !DILocation(line: 904, column: 9, scope: !2281)
!2341 = !DILocation(line: 906, column: 35, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !121, line: 905, column: 7)
!2343 = !DILocation(line: 906, column: 20, scope: !2342)
!2344 = !DILocation(line: 907, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !121, line: 907, column: 13)
!2346 = !DILocation(line: 907, column: 13, scope: !2342)
!2347 = !DILocation(line: 908, column: 11, scope: !2345)
!2348 = !DILocation(line: 220, column: 20, scope: !2170, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 909, column: 27, scope: !2342)
!2350 = !DILocation(line: 222, column: 10, scope: !2170, inlinedAt: !2349)
!2351 = !DILocation(line: 909, column: 19, scope: !2342)
!2352 = !DILocation(line: 910, column: 69, scope: !2342)
!2353 = !DILocation(line: 912, column: 44, scope: !2342)
!2354 = !DILocation(line: 913, column: 44, scope: !2342)
!2355 = !DILocation(line: 910, column: 9, scope: !2342)
!2356 = !DILocation(line: 914, column: 7, scope: !2342)
!2357 = !DILocation(line: 916, column: 11, scope: !2281)
!2358 = !DILocation(line: 917, column: 5, scope: !2281)
!2359 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !121, file: !121, line: 928, type: !2360, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!20, !53, !30, !115}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "n", arg: 1, scope: !2359, file: !121, line: 928, type: !53)
!2364 = !DILocalVariable(name: "arg", arg: 2, scope: !2359, file: !121, line: 928, type: !30)
!2365 = !DILocalVariable(name: "argsize", arg: 3, scope: !2359, file: !121, line: 928, type: !115)
!2366 = !DILocation(line: 928, column: 21, scope: !2359)
!2367 = !DILocation(line: 928, column: 36, scope: !2359)
!2368 = !DILocation(line: 928, column: 48, scope: !2359)
!2369 = !DILocation(line: 930, column: 10, scope: !2359)
!2370 = !DILocation(line: 930, column: 3, scope: !2359)
!2371 = distinct !DISubprogram(name: "quotearg", scope: !121, file: !121, line: 934, type: !2372, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!20, !30}
!2374 = !{!2375}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !121, line: 934, type: !30)
!2376 = !DILocation(line: 934, column: 23, scope: !2371)
!2377 = !DILocation(line: 922, column: 17, scope: !2257, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 936, column: 10, scope: !2371)
!2379 = !DILocation(line: 922, column: 32, scope: !2257, inlinedAt: !2378)
!2380 = !DILocation(line: 924, column: 10, scope: !2257, inlinedAt: !2378)
!2381 = !DILocation(line: 936, column: 3, scope: !2371)
!2382 = distinct !DISubprogram(name: "quotearg_mem", scope: !121, file: !121, line: 940, type: !2383, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!20, !30, !115}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "arg", arg: 1, scope: !2382, file: !121, line: 940, type: !30)
!2387 = !DILocalVariable(name: "argsize", arg: 2, scope: !2382, file: !121, line: 940, type: !115)
!2388 = !DILocation(line: 940, column: 27, scope: !2382)
!2389 = !DILocation(line: 940, column: 39, scope: !2382)
!2390 = !DILocation(line: 928, column: 21, scope: !2359, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 942, column: 10, scope: !2382)
!2392 = !DILocation(line: 928, column: 36, scope: !2359, inlinedAt: !2391)
!2393 = !DILocation(line: 928, column: 48, scope: !2359, inlinedAt: !2391)
!2394 = !DILocation(line: 930, column: 10, scope: !2359, inlinedAt: !2391)
!2395 = !DILocation(line: 942, column: 3, scope: !2382)
!2396 = distinct !DISubprogram(name: "quotearg_n_style", scope: !121, file: !121, line: 946, type: !2397, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!20, !53, !5, !30}
!2399 = !{!2400, !2401, !2402, !2403}
!2400 = !DILocalVariable(name: "n", arg: 1, scope: !2396, file: !121, line: 946, type: !53)
!2401 = !DILocalVariable(name: "s", arg: 2, scope: !2396, file: !121, line: 946, type: !5)
!2402 = !DILocalVariable(name: "arg", arg: 3, scope: !2396, file: !121, line: 946, type: !30)
!2403 = !DILocalVariable(name: "o", scope: !2396, file: !121, line: 948, type: !1253)
!2404 = !DILocalVariable(name: "o", scope: !2405, file: !121, line: 187, type: !128)
!2405 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !121, file: !121, line: 185, type: !2406, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!128, !5}
!2408 = !{!2409, !2404}
!2409 = !DILocalVariable(name: "style", arg: 1, scope: !2405, file: !121, line: 185, type: !5)
!2410 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2411 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 948, column: 36, scope: !2396)
!2413 = !DILocation(line: 946, column: 23, scope: !2396)
!2414 = !DILocation(line: 946, column: 45, scope: !2396)
!2415 = !DILocation(line: 946, column: 60, scope: !2396)
!2416 = !DILocation(line: 948, column: 3, scope: !2396)
!2417 = !DILocation(line: 948, column: 32, scope: !2396)
!2418 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2412)
!2419 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2412)
!2420 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2421 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2412)
!2422 = distinct !DILexicalBlock(scope: !2405, file: !121, line: 188, column: 7)
!2423 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2412)
!2424 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2412)
!2425 = !{!2426}
!2426 = distinct !{!2426, !2427, !"quoting_options_from_style: argument 0"}
!2427 = distinct !{!2427, !"quoting_options_from_style"}
!2428 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2412)
!2429 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2412)
!2430 = !DILocation(line: 949, column: 10, scope: !2396)
!2431 = !DILocation(line: 950, column: 1, scope: !2396)
!2432 = !DILocation(line: 949, column: 3, scope: !2396)
!2433 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !121, file: !121, line: 953, type: !2434, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!20, !53, !5, !30, !115}
!2436 = !{!2437, !2438, !2439, !2440, !2441}
!2437 = !DILocalVariable(name: "n", arg: 1, scope: !2433, file: !121, line: 953, type: !53)
!2438 = !DILocalVariable(name: "s", arg: 2, scope: !2433, file: !121, line: 953, type: !5)
!2439 = !DILocalVariable(name: "arg", arg: 3, scope: !2433, file: !121, line: 954, type: !30)
!2440 = !DILocalVariable(name: "argsize", arg: 4, scope: !2433, file: !121, line: 954, type: !115)
!2441 = !DILocalVariable(name: "o", scope: !2433, file: !121, line: 956, type: !1253)
!2442 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 956, column: 36, scope: !2433)
!2444 = !DILocation(line: 953, column: 27, scope: !2433)
!2445 = !DILocation(line: 953, column: 49, scope: !2433)
!2446 = !DILocation(line: 954, column: 35, scope: !2433)
!2447 = !DILocation(line: 954, column: 47, scope: !2433)
!2448 = !DILocation(line: 956, column: 3, scope: !2433)
!2449 = !DILocation(line: 956, column: 32, scope: !2433)
!2450 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2443)
!2451 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2443)
!2452 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2443)
!2453 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2443)
!2454 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2443)
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"quoting_options_from_style: argument 0"}
!2457 = distinct !{!2457, !"quoting_options_from_style"}
!2458 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2443)
!2459 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2443)
!2460 = !DILocation(line: 957, column: 10, scope: !2433)
!2461 = !DILocation(line: 958, column: 1, scope: !2433)
!2462 = !DILocation(line: 957, column: 3, scope: !2433)
!2463 = distinct !DISubprogram(name: "quotearg_style", scope: !121, file: !121, line: 961, type: !2464, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!20, !5, !30}
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "s", arg: 1, scope: !2463, file: !121, line: 961, type: !5)
!2468 = !DILocalVariable(name: "arg", arg: 2, scope: !2463, file: !121, line: 961, type: !30)
!2469 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 948, column: 36, scope: !2396, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 963, column: 10, scope: !2463)
!2472 = !DILocation(line: 961, column: 36, scope: !2463)
!2473 = !DILocation(line: 961, column: 51, scope: !2463)
!2474 = !DILocation(line: 946, column: 23, scope: !2396, inlinedAt: !2471)
!2475 = !DILocation(line: 946, column: 45, scope: !2396, inlinedAt: !2471)
!2476 = !DILocation(line: 946, column: 60, scope: !2396, inlinedAt: !2471)
!2477 = !DILocation(line: 948, column: 3, scope: !2396, inlinedAt: !2471)
!2478 = !DILocation(line: 948, column: 32, scope: !2396, inlinedAt: !2471)
!2479 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2470)
!2480 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2470)
!2481 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2470)
!2482 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2470)
!2483 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2470)
!2484 = !{!2485}
!2485 = distinct !{!2485, !2486, !"quoting_options_from_style: argument 0"}
!2486 = distinct !{!2486, !"quoting_options_from_style"}
!2487 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2470)
!2488 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2470)
!2489 = !DILocation(line: 949, column: 10, scope: !2396, inlinedAt: !2471)
!2490 = !DILocation(line: 950, column: 1, scope: !2396, inlinedAt: !2471)
!2491 = !DILocation(line: 963, column: 3, scope: !2463)
!2492 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !121, file: !121, line: 967, type: !2493, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!20, !5, !30, !115}
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "s", arg: 1, scope: !2492, file: !121, line: 967, type: !5)
!2497 = !DILocalVariable(name: "arg", arg: 2, scope: !2492, file: !121, line: 967, type: !30)
!2498 = !DILocalVariable(name: "argsize", arg: 3, scope: !2492, file: !121, line: 967, type: !115)
!2499 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 956, column: 36, scope: !2433, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 969, column: 10, scope: !2492)
!2502 = !DILocation(line: 967, column: 40, scope: !2492)
!2503 = !DILocation(line: 967, column: 55, scope: !2492)
!2504 = !DILocation(line: 967, column: 67, scope: !2492)
!2505 = !DILocation(line: 953, column: 27, scope: !2433, inlinedAt: !2501)
!2506 = !DILocation(line: 953, column: 49, scope: !2433, inlinedAt: !2501)
!2507 = !DILocation(line: 954, column: 35, scope: !2433, inlinedAt: !2501)
!2508 = !DILocation(line: 954, column: 47, scope: !2433, inlinedAt: !2501)
!2509 = !DILocation(line: 956, column: 3, scope: !2433, inlinedAt: !2501)
!2510 = !DILocation(line: 956, column: 32, scope: !2433, inlinedAt: !2501)
!2511 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2500)
!2512 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2500)
!2513 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2500)
!2514 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2500)
!2515 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2500)
!2516 = !{!2517}
!2517 = distinct !{!2517, !2518, !"quoting_options_from_style: argument 0"}
!2518 = distinct !{!2518, !"quoting_options_from_style"}
!2519 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2500)
!2520 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2500)
!2521 = !DILocation(line: 957, column: 10, scope: !2433, inlinedAt: !2501)
!2522 = !DILocation(line: 958, column: 1, scope: !2433, inlinedAt: !2501)
!2523 = !DILocation(line: 969, column: 3, scope: !2492)
!2524 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !121, file: !121, line: 973, type: !2525, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!20, !30, !115, !21}
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "arg", arg: 1, scope: !2524, file: !121, line: 973, type: !30)
!2529 = !DILocalVariable(name: "argsize", arg: 2, scope: !2524, file: !121, line: 973, type: !115)
!2530 = !DILocalVariable(name: "ch", arg: 3, scope: !2524, file: !121, line: 973, type: !21)
!2531 = !DILocalVariable(name: "options", scope: !2524, file: !121, line: 975, type: !128)
!2532 = !DILocation(line: 973, column: 32, scope: !2524)
!2533 = !DILocation(line: 973, column: 44, scope: !2524)
!2534 = !DILocation(line: 973, column: 58, scope: !2524)
!2535 = !DILocation(line: 975, column: 3, scope: !2524)
!2536 = !DILocation(line: 976, column: 13, scope: !2524)
!2537 = !{i64 0, i64 4, !835, i64 4, i64 4, !685, i64 8, i64 32, !835, i64 40, i64 8, !591, i64 48, i64 8, !591}
!2538 = !DILocation(line: 975, column: 26, scope: !2524)
!2539 = !DILocation(line: 144, column: 43, scope: !1274, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 977, column: 3, scope: !2524)
!2541 = !DILocation(line: 144, column: 51, scope: !1274, inlinedAt: !2540)
!2542 = !DILocation(line: 144, column: 58, scope: !1274, inlinedAt: !2540)
!2543 = !DILocation(line: 146, column: 17, scope: !1274, inlinedAt: !2540)
!2544 = !DILocation(line: 148, column: 62, scope: !1274, inlinedAt: !2540)
!2545 = !DILocation(line: 148, column: 57, scope: !1274, inlinedAt: !2540)
!2546 = !DILocation(line: 147, column: 17, scope: !1274, inlinedAt: !2540)
!2547 = !DILocation(line: 149, column: 18, scope: !1274, inlinedAt: !2540)
!2548 = !DILocation(line: 149, column: 15, scope: !1274, inlinedAt: !2540)
!2549 = !DILocation(line: 149, column: 7, scope: !1274, inlinedAt: !2540)
!2550 = !DILocation(line: 150, column: 12, scope: !1274, inlinedAt: !2540)
!2551 = !DILocation(line: 150, column: 15, scope: !1274, inlinedAt: !2540)
!2552 = !DILocation(line: 150, column: 25, scope: !1274, inlinedAt: !2540)
!2553 = !DILocation(line: 150, column: 7, scope: !1274, inlinedAt: !2540)
!2554 = !DILocation(line: 151, column: 18, scope: !1274, inlinedAt: !2540)
!2555 = !DILocation(line: 151, column: 23, scope: !1274, inlinedAt: !2540)
!2556 = !DILocation(line: 151, column: 6, scope: !1274, inlinedAt: !2540)
!2557 = !DILocation(line: 978, column: 10, scope: !2524)
!2558 = !DILocation(line: 979, column: 1, scope: !2524)
!2559 = !DILocation(line: 978, column: 3, scope: !2524)
!2560 = distinct !DISubprogram(name: "quotearg_char", scope: !121, file: !121, line: 982, type: !2561, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!20, !30, !21}
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2560, file: !121, line: 982, type: !30)
!2565 = !DILocalVariable(name: "ch", arg: 2, scope: !2560, file: !121, line: 982, type: !21)
!2566 = !DILocation(line: 982, column: 28, scope: !2560)
!2567 = !DILocation(line: 982, column: 38, scope: !2560)
!2568 = !DILocation(line: 973, column: 32, scope: !2524, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 984, column: 10, scope: !2560)
!2570 = !DILocation(line: 973, column: 44, scope: !2524, inlinedAt: !2569)
!2571 = !DILocation(line: 973, column: 58, scope: !2524, inlinedAt: !2569)
!2572 = !DILocation(line: 975, column: 3, scope: !2524, inlinedAt: !2569)
!2573 = !DILocation(line: 976, column: 13, scope: !2524, inlinedAt: !2569)
!2574 = !DILocation(line: 975, column: 26, scope: !2524, inlinedAt: !2569)
!2575 = !DILocation(line: 144, column: 43, scope: !1274, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 977, column: 3, scope: !2524, inlinedAt: !2569)
!2577 = !DILocation(line: 144, column: 51, scope: !1274, inlinedAt: !2576)
!2578 = !DILocation(line: 144, column: 58, scope: !1274, inlinedAt: !2576)
!2579 = !DILocation(line: 146, column: 17, scope: !1274, inlinedAt: !2576)
!2580 = !DILocation(line: 148, column: 62, scope: !1274, inlinedAt: !2576)
!2581 = !DILocation(line: 148, column: 57, scope: !1274, inlinedAt: !2576)
!2582 = !DILocation(line: 147, column: 17, scope: !1274, inlinedAt: !2576)
!2583 = !DILocation(line: 149, column: 18, scope: !1274, inlinedAt: !2576)
!2584 = !DILocation(line: 149, column: 15, scope: !1274, inlinedAt: !2576)
!2585 = !DILocation(line: 149, column: 7, scope: !1274, inlinedAt: !2576)
!2586 = !DILocation(line: 150, column: 12, scope: !1274, inlinedAt: !2576)
!2587 = !DILocation(line: 150, column: 15, scope: !1274, inlinedAt: !2576)
!2588 = !DILocation(line: 150, column: 25, scope: !1274, inlinedAt: !2576)
!2589 = !DILocation(line: 150, column: 7, scope: !1274, inlinedAt: !2576)
!2590 = !DILocation(line: 151, column: 18, scope: !1274, inlinedAt: !2576)
!2591 = !DILocation(line: 151, column: 23, scope: !1274, inlinedAt: !2576)
!2592 = !DILocation(line: 151, column: 6, scope: !1274, inlinedAt: !2576)
!2593 = !DILocation(line: 978, column: 10, scope: !2524, inlinedAt: !2569)
!2594 = !DILocation(line: 979, column: 1, scope: !2524, inlinedAt: !2569)
!2595 = !DILocation(line: 984, column: 3, scope: !2560)
!2596 = distinct !DISubprogram(name: "quotearg_colon", scope: !121, file: !121, line: 988, type: !2372, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2597)
!2597 = !{!2598}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2596, file: !121, line: 988, type: !30)
!2599 = !DILocation(line: 988, column: 29, scope: !2596)
!2600 = !DILocation(line: 982, column: 28, scope: !2560, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 990, column: 10, scope: !2596)
!2602 = !DILocation(line: 982, column: 38, scope: !2560, inlinedAt: !2601)
!2603 = !DILocation(line: 973, column: 32, scope: !2524, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 984, column: 10, scope: !2560, inlinedAt: !2601)
!2605 = !DILocation(line: 973, column: 44, scope: !2524, inlinedAt: !2604)
!2606 = !DILocation(line: 973, column: 58, scope: !2524, inlinedAt: !2604)
!2607 = !DILocation(line: 975, column: 3, scope: !2524, inlinedAt: !2604)
!2608 = !DILocation(line: 976, column: 13, scope: !2524, inlinedAt: !2604)
!2609 = !DILocation(line: 975, column: 26, scope: !2524, inlinedAt: !2604)
!2610 = !DILocation(line: 144, column: 43, scope: !1274, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 977, column: 3, scope: !2524, inlinedAt: !2604)
!2612 = !DILocation(line: 144, column: 51, scope: !1274, inlinedAt: !2611)
!2613 = !DILocation(line: 144, column: 58, scope: !1274, inlinedAt: !2611)
!2614 = !DILocation(line: 146, column: 17, scope: !1274, inlinedAt: !2611)
!2615 = !DILocation(line: 148, column: 57, scope: !1274, inlinedAt: !2611)
!2616 = !DILocation(line: 147, column: 17, scope: !1274, inlinedAt: !2611)
!2617 = !DILocation(line: 149, column: 7, scope: !1274, inlinedAt: !2611)
!2618 = !DILocation(line: 150, column: 12, scope: !1274, inlinedAt: !2611)
!2619 = !DILocation(line: 151, column: 6, scope: !1274, inlinedAt: !2611)
!2620 = !DILocation(line: 978, column: 10, scope: !2524, inlinedAt: !2604)
!2621 = !DILocation(line: 979, column: 1, scope: !2524, inlinedAt: !2604)
!2622 = !DILocation(line: 990, column: 3, scope: !2596)
!2623 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !121, file: !121, line: 994, type: !2383, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2624)
!2624 = !{!2625, !2626}
!2625 = !DILocalVariable(name: "arg", arg: 1, scope: !2623, file: !121, line: 994, type: !30)
!2626 = !DILocalVariable(name: "argsize", arg: 2, scope: !2623, file: !121, line: 994, type: !115)
!2627 = !DILocation(line: 994, column: 33, scope: !2623)
!2628 = !DILocation(line: 994, column: 45, scope: !2623)
!2629 = !DILocation(line: 973, column: 32, scope: !2524, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 996, column: 10, scope: !2623)
!2631 = !DILocation(line: 973, column: 44, scope: !2524, inlinedAt: !2630)
!2632 = !DILocation(line: 973, column: 58, scope: !2524, inlinedAt: !2630)
!2633 = !DILocation(line: 975, column: 3, scope: !2524, inlinedAt: !2630)
!2634 = !DILocation(line: 976, column: 13, scope: !2524, inlinedAt: !2630)
!2635 = !DILocation(line: 975, column: 26, scope: !2524, inlinedAt: !2630)
!2636 = !DILocation(line: 144, column: 43, scope: !1274, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 977, column: 3, scope: !2524, inlinedAt: !2630)
!2638 = !DILocation(line: 144, column: 51, scope: !1274, inlinedAt: !2637)
!2639 = !DILocation(line: 144, column: 58, scope: !1274, inlinedAt: !2637)
!2640 = !DILocation(line: 146, column: 17, scope: !1274, inlinedAt: !2637)
!2641 = !DILocation(line: 148, column: 57, scope: !1274, inlinedAt: !2637)
!2642 = !DILocation(line: 147, column: 17, scope: !1274, inlinedAt: !2637)
!2643 = !DILocation(line: 149, column: 7, scope: !1274, inlinedAt: !2637)
!2644 = !DILocation(line: 150, column: 12, scope: !1274, inlinedAt: !2637)
!2645 = !DILocation(line: 151, column: 6, scope: !1274, inlinedAt: !2637)
!2646 = !DILocation(line: 978, column: 10, scope: !2524, inlinedAt: !2630)
!2647 = !DILocation(line: 979, column: 1, scope: !2524, inlinedAt: !2630)
!2648 = !DILocation(line: 996, column: 3, scope: !2623)
!2649 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !121, file: !121, line: 1000, type: !2397, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2650)
!2650 = !{!2651, !2652, !2653, !2654}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2649, file: !121, line: 1000, type: !53)
!2652 = !DILocalVariable(name: "s", arg: 2, scope: !2649, file: !121, line: 1000, type: !5)
!2653 = !DILocalVariable(name: "arg", arg: 3, scope: !2649, file: !121, line: 1000, type: !30)
!2654 = !DILocalVariable(name: "options", scope: !2649, file: !121, line: 1002, type: !128)
!2655 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1003, column: 13, scope: !2649)
!2657 = !DILocation(line: 1000, column: 29, scope: !2649)
!2658 = !DILocation(line: 1000, column: 51, scope: !2649)
!2659 = !DILocation(line: 1000, column: 66, scope: !2649)
!2660 = !DILocation(line: 1002, column: 3, scope: !2649)
!2661 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2656)
!2662 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2656)
!2663 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2656)
!2664 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2656)
!2665 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2656)
!2666 = !{!2667}
!2667 = distinct !{!2667, !2668, !"quoting_options_from_style: argument 0"}
!2668 = distinct !{!2668, !"quoting_options_from_style"}
!2669 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2656)
!2670 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2656)
!2671 = !DILocation(line: 1003, column: 13, scope: !2649)
!2672 = !DILocation(line: 1002, column: 26, scope: !2649)
!2673 = !DILocation(line: 144, column: 43, scope: !1274, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1004, column: 3, scope: !2649)
!2675 = !DILocation(line: 144, column: 51, scope: !1274, inlinedAt: !2674)
!2676 = !DILocation(line: 144, column: 58, scope: !1274, inlinedAt: !2674)
!2677 = !DILocation(line: 146, column: 17, scope: !1274, inlinedAt: !2674)
!2678 = !DILocation(line: 148, column: 57, scope: !1274, inlinedAt: !2674)
!2679 = !DILocation(line: 147, column: 17, scope: !1274, inlinedAt: !2674)
!2680 = !DILocation(line: 149, column: 7, scope: !1274, inlinedAt: !2674)
!2681 = !DILocation(line: 150, column: 12, scope: !1274, inlinedAt: !2674)
!2682 = !DILocation(line: 151, column: 6, scope: !1274, inlinedAt: !2674)
!2683 = !DILocation(line: 1005, column: 10, scope: !2649)
!2684 = !DILocation(line: 1006, column: 1, scope: !2649)
!2685 = !DILocation(line: 1005, column: 3, scope: !2649)
!2686 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !121, file: !121, line: 1009, type: !2687, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!20, !53, !30, !30, !30}
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !121, line: 1009, type: !53)
!2691 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2686, file: !121, line: 1009, type: !30)
!2692 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2686, file: !121, line: 1010, type: !30)
!2693 = !DILocalVariable(name: "arg", arg: 4, scope: !2686, file: !121, line: 1010, type: !30)
!2694 = !DILocation(line: 1009, column: 24, scope: !2686)
!2695 = !DILocation(line: 1009, column: 39, scope: !2686)
!2696 = !DILocation(line: 1010, column: 32, scope: !2686)
!2697 = !DILocation(line: 1010, column: 57, scope: !2686)
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !121, line: 1017, type: !53)
!2699 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !121, file: !121, line: 1017, type: !2700, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!20, !53, !30, !30, !30, !115}
!2702 = !{!2698, !2703, !2704, !2705, !2706, !2707}
!2703 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2699, file: !121, line: 1017, type: !30)
!2704 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2699, file: !121, line: 1018, type: !30)
!2705 = !DILocalVariable(name: "arg", arg: 4, scope: !2699, file: !121, line: 1019, type: !30)
!2706 = !DILocalVariable(name: "argsize", arg: 5, scope: !2699, file: !121, line: 1019, type: !115)
!2707 = !DILocalVariable(name: "o", scope: !2699, file: !121, line: 1021, type: !128)
!2708 = !DILocation(line: 1017, column: 28, scope: !2699, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1012, column: 10, scope: !2686)
!2710 = !DILocation(line: 1017, column: 43, scope: !2699, inlinedAt: !2709)
!2711 = !DILocation(line: 1018, column: 36, scope: !2699, inlinedAt: !2709)
!2712 = !DILocation(line: 1019, column: 36, scope: !2699, inlinedAt: !2709)
!2713 = !DILocation(line: 1019, column: 48, scope: !2699, inlinedAt: !2709)
!2714 = !DILocation(line: 1021, column: 3, scope: !2699, inlinedAt: !2709)
!2715 = !DILocation(line: 1021, column: 30, scope: !2699, inlinedAt: !2709)
!2716 = !DILocation(line: 1021, column: 26, scope: !2699, inlinedAt: !2709)
!2717 = !DILocation(line: 171, column: 45, scope: !1323, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1022, column: 3, scope: !2699, inlinedAt: !2709)
!2719 = !DILocation(line: 172, column: 33, scope: !1323, inlinedAt: !2718)
!2720 = !DILocation(line: 172, column: 57, scope: !1323, inlinedAt: !2718)
!2721 = !DILocation(line: 176, column: 6, scope: !1323, inlinedAt: !2718)
!2722 = !DILocation(line: 176, column: 12, scope: !1323, inlinedAt: !2718)
!2723 = !DILocation(line: 177, column: 8, scope: !1339, inlinedAt: !2718)
!2724 = !DILocation(line: 177, column: 23, scope: !1339, inlinedAt: !2718)
!2725 = !DILocation(line: 177, column: 19, scope: !1339, inlinedAt: !2718)
!2726 = !DILocation(line: 178, column: 5, scope: !1339, inlinedAt: !2718)
!2727 = !DILocation(line: 179, column: 6, scope: !1323, inlinedAt: !2718)
!2728 = !DILocation(line: 179, column: 17, scope: !1323, inlinedAt: !2718)
!2729 = !DILocation(line: 180, column: 6, scope: !1323, inlinedAt: !2718)
!2730 = !DILocation(line: 180, column: 18, scope: !1323, inlinedAt: !2718)
!2731 = !DILocation(line: 1023, column: 10, scope: !2699, inlinedAt: !2709)
!2732 = !DILocation(line: 1024, column: 1, scope: !2699, inlinedAt: !2709)
!2733 = !DILocation(line: 1012, column: 3, scope: !2686)
!2734 = !DILocation(line: 1017, column: 28, scope: !2699)
!2735 = !DILocation(line: 1017, column: 43, scope: !2699)
!2736 = !DILocation(line: 1018, column: 36, scope: !2699)
!2737 = !DILocation(line: 1019, column: 36, scope: !2699)
!2738 = !DILocation(line: 1019, column: 48, scope: !2699)
!2739 = !DILocation(line: 1021, column: 3, scope: !2699)
!2740 = !DILocation(line: 1021, column: 30, scope: !2699)
!2741 = !DILocation(line: 1021, column: 26, scope: !2699)
!2742 = !DILocation(line: 171, column: 45, scope: !1323, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 1022, column: 3, scope: !2699)
!2744 = !DILocation(line: 172, column: 33, scope: !1323, inlinedAt: !2743)
!2745 = !DILocation(line: 172, column: 57, scope: !1323, inlinedAt: !2743)
!2746 = !DILocation(line: 176, column: 6, scope: !1323, inlinedAt: !2743)
!2747 = !DILocation(line: 176, column: 12, scope: !1323, inlinedAt: !2743)
!2748 = !DILocation(line: 177, column: 8, scope: !1339, inlinedAt: !2743)
!2749 = !DILocation(line: 177, column: 23, scope: !1339, inlinedAt: !2743)
!2750 = !DILocation(line: 177, column: 19, scope: !1339, inlinedAt: !2743)
!2751 = !DILocation(line: 178, column: 5, scope: !1339, inlinedAt: !2743)
!2752 = !DILocation(line: 179, column: 6, scope: !1323, inlinedAt: !2743)
!2753 = !DILocation(line: 179, column: 17, scope: !1323, inlinedAt: !2743)
!2754 = !DILocation(line: 180, column: 6, scope: !1323, inlinedAt: !2743)
!2755 = !DILocation(line: 180, column: 18, scope: !1323, inlinedAt: !2743)
!2756 = !DILocation(line: 1023, column: 10, scope: !2699)
!2757 = !DILocation(line: 1024, column: 1, scope: !2699)
!2758 = !DILocation(line: 1023, column: 3, scope: !2699)
!2759 = distinct !DISubprogram(name: "quotearg_custom", scope: !121, file: !121, line: 1027, type: !2760, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!20, !30, !30, !30}
!2762 = !{!2763, !2764, !2765}
!2763 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2759, file: !121, line: 1027, type: !30)
!2764 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2759, file: !121, line: 1027, type: !30)
!2765 = !DILocalVariable(name: "arg", arg: 3, scope: !2759, file: !121, line: 1028, type: !30)
!2766 = !DILocation(line: 1027, column: 30, scope: !2759)
!2767 = !DILocation(line: 1027, column: 54, scope: !2759)
!2768 = !DILocation(line: 1028, column: 30, scope: !2759)
!2769 = !DILocation(line: 1009, column: 24, scope: !2686, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1030, column: 10, scope: !2759)
!2771 = !DILocation(line: 1009, column: 39, scope: !2686, inlinedAt: !2770)
!2772 = !DILocation(line: 1010, column: 32, scope: !2686, inlinedAt: !2770)
!2773 = !DILocation(line: 1010, column: 57, scope: !2686, inlinedAt: !2770)
!2774 = !DILocation(line: 1017, column: 28, scope: !2699, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1012, column: 10, scope: !2686, inlinedAt: !2770)
!2776 = !DILocation(line: 1017, column: 43, scope: !2699, inlinedAt: !2775)
!2777 = !DILocation(line: 1018, column: 36, scope: !2699, inlinedAt: !2775)
!2778 = !DILocation(line: 1019, column: 36, scope: !2699, inlinedAt: !2775)
!2779 = !DILocation(line: 1019, column: 48, scope: !2699, inlinedAt: !2775)
!2780 = !DILocation(line: 1021, column: 3, scope: !2699, inlinedAt: !2775)
!2781 = !DILocation(line: 1021, column: 30, scope: !2699, inlinedAt: !2775)
!2782 = !DILocation(line: 1021, column: 26, scope: !2699, inlinedAt: !2775)
!2783 = !DILocation(line: 171, column: 45, scope: !1323, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1022, column: 3, scope: !2699, inlinedAt: !2775)
!2785 = !DILocation(line: 172, column: 33, scope: !1323, inlinedAt: !2784)
!2786 = !DILocation(line: 172, column: 57, scope: !1323, inlinedAt: !2784)
!2787 = !DILocation(line: 176, column: 6, scope: !1323, inlinedAt: !2784)
!2788 = !DILocation(line: 176, column: 12, scope: !1323, inlinedAt: !2784)
!2789 = !DILocation(line: 177, column: 8, scope: !1339, inlinedAt: !2784)
!2790 = !DILocation(line: 177, column: 23, scope: !1339, inlinedAt: !2784)
!2791 = !DILocation(line: 177, column: 19, scope: !1339, inlinedAt: !2784)
!2792 = !DILocation(line: 178, column: 5, scope: !1339, inlinedAt: !2784)
!2793 = !DILocation(line: 179, column: 6, scope: !1323, inlinedAt: !2784)
!2794 = !DILocation(line: 179, column: 17, scope: !1323, inlinedAt: !2784)
!2795 = !DILocation(line: 180, column: 6, scope: !1323, inlinedAt: !2784)
!2796 = !DILocation(line: 180, column: 18, scope: !1323, inlinedAt: !2784)
!2797 = !DILocation(line: 1023, column: 10, scope: !2699, inlinedAt: !2775)
!2798 = !DILocation(line: 1024, column: 1, scope: !2699, inlinedAt: !2775)
!2799 = !DILocation(line: 1030, column: 3, scope: !2759)
!2800 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !121, file: !121, line: 1034, type: !2801, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!20, !30, !30, !30, !115}
!2803 = !{!2804, !2805, !2806, !2807}
!2804 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2800, file: !121, line: 1034, type: !30)
!2805 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2800, file: !121, line: 1034, type: !30)
!2806 = !DILocalVariable(name: "arg", arg: 3, scope: !2800, file: !121, line: 1035, type: !30)
!2807 = !DILocalVariable(name: "argsize", arg: 4, scope: !2800, file: !121, line: 1035, type: !115)
!2808 = !DILocation(line: 1034, column: 34, scope: !2800)
!2809 = !DILocation(line: 1034, column: 58, scope: !2800)
!2810 = !DILocation(line: 1035, column: 34, scope: !2800)
!2811 = !DILocation(line: 1035, column: 46, scope: !2800)
!2812 = !DILocation(line: 1017, column: 28, scope: !2699, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1037, column: 10, scope: !2800)
!2814 = !DILocation(line: 1017, column: 43, scope: !2699, inlinedAt: !2813)
!2815 = !DILocation(line: 1018, column: 36, scope: !2699, inlinedAt: !2813)
!2816 = !DILocation(line: 1019, column: 36, scope: !2699, inlinedAt: !2813)
!2817 = !DILocation(line: 1019, column: 48, scope: !2699, inlinedAt: !2813)
!2818 = !DILocation(line: 1021, column: 3, scope: !2699, inlinedAt: !2813)
!2819 = !DILocation(line: 1021, column: 30, scope: !2699, inlinedAt: !2813)
!2820 = !DILocation(line: 1021, column: 26, scope: !2699, inlinedAt: !2813)
!2821 = !DILocation(line: 171, column: 45, scope: !1323, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1022, column: 3, scope: !2699, inlinedAt: !2813)
!2823 = !DILocation(line: 172, column: 33, scope: !1323, inlinedAt: !2822)
!2824 = !DILocation(line: 172, column: 57, scope: !1323, inlinedAt: !2822)
!2825 = !DILocation(line: 176, column: 6, scope: !1323, inlinedAt: !2822)
!2826 = !DILocation(line: 176, column: 12, scope: !1323, inlinedAt: !2822)
!2827 = !DILocation(line: 177, column: 8, scope: !1339, inlinedAt: !2822)
!2828 = !DILocation(line: 177, column: 23, scope: !1339, inlinedAt: !2822)
!2829 = !DILocation(line: 177, column: 19, scope: !1339, inlinedAt: !2822)
!2830 = !DILocation(line: 178, column: 5, scope: !1339, inlinedAt: !2822)
!2831 = !DILocation(line: 179, column: 6, scope: !1323, inlinedAt: !2822)
!2832 = !DILocation(line: 179, column: 17, scope: !1323, inlinedAt: !2822)
!2833 = !DILocation(line: 180, column: 6, scope: !1323, inlinedAt: !2822)
!2834 = !DILocation(line: 180, column: 18, scope: !1323, inlinedAt: !2822)
!2835 = !DILocation(line: 1023, column: 10, scope: !2699, inlinedAt: !2813)
!2836 = !DILocation(line: 1024, column: 1, scope: !2699, inlinedAt: !2813)
!2837 = !DILocation(line: 1037, column: 3, scope: !2800)
!2838 = distinct !DISubprogram(name: "quote_n_mem", scope: !121, file: !121, line: 1052, type: !2839, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!30, !53, !30, !115}
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "n", arg: 1, scope: !2838, file: !121, line: 1052, type: !53)
!2843 = !DILocalVariable(name: "arg", arg: 2, scope: !2838, file: !121, line: 1052, type: !30)
!2844 = !DILocalVariable(name: "argsize", arg: 3, scope: !2838, file: !121, line: 1052, type: !115)
!2845 = !DILocation(line: 1052, column: 18, scope: !2838)
!2846 = !DILocation(line: 1052, column: 33, scope: !2838)
!2847 = !DILocation(line: 1052, column: 45, scope: !2838)
!2848 = !DILocation(line: 1054, column: 10, scope: !2838)
!2849 = !DILocation(line: 1054, column: 3, scope: !2838)
!2850 = distinct !DISubprogram(name: "quote_mem", scope: !121, file: !121, line: 1058, type: !2851, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!30, !30, !115}
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "arg", arg: 1, scope: !2850, file: !121, line: 1058, type: !30)
!2855 = !DILocalVariable(name: "argsize", arg: 2, scope: !2850, file: !121, line: 1058, type: !115)
!2856 = !DILocation(line: 1058, column: 24, scope: !2850)
!2857 = !DILocation(line: 1058, column: 36, scope: !2850)
!2858 = !DILocation(line: 1052, column: 18, scope: !2838, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 1060, column: 10, scope: !2850)
!2860 = !DILocation(line: 1052, column: 33, scope: !2838, inlinedAt: !2859)
!2861 = !DILocation(line: 1052, column: 45, scope: !2838, inlinedAt: !2859)
!2862 = !DILocation(line: 1054, column: 10, scope: !2838, inlinedAt: !2859)
!2863 = !DILocation(line: 1060, column: 3, scope: !2850)
!2864 = distinct !DISubprogram(name: "quote_n", scope: !121, file: !121, line: 1064, type: !2865, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!30, !53, !30}
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !121, line: 1064, type: !53)
!2869 = !DILocalVariable(name: "arg", arg: 2, scope: !2864, file: !121, line: 1064, type: !30)
!2870 = !DILocation(line: 1064, column: 14, scope: !2864)
!2871 = !DILocation(line: 1064, column: 29, scope: !2864)
!2872 = !DILocation(line: 1052, column: 18, scope: !2838, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1066, column: 10, scope: !2864)
!2874 = !DILocation(line: 1052, column: 33, scope: !2838, inlinedAt: !2873)
!2875 = !DILocation(line: 1052, column: 45, scope: !2838, inlinedAt: !2873)
!2876 = !DILocation(line: 1054, column: 10, scope: !2838, inlinedAt: !2873)
!2877 = !DILocation(line: 1066, column: 3, scope: !2864)
!2878 = distinct !DISubprogram(name: "quote", scope: !121, file: !121, line: 1070, type: !2879, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!30, !30}
!2881 = !{!2882}
!2882 = !DILocalVariable(name: "arg", arg: 1, scope: !2878, file: !121, line: 1070, type: !30)
!2883 = !DILocation(line: 1070, column: 20, scope: !2878)
!2884 = !DILocation(line: 1064, column: 14, scope: !2864, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1072, column: 10, scope: !2878)
!2886 = !DILocation(line: 1064, column: 29, scope: !2864, inlinedAt: !2885)
!2887 = !DILocation(line: 1052, column: 18, scope: !2838, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1066, column: 10, scope: !2864, inlinedAt: !2885)
!2889 = !DILocation(line: 1052, column: 33, scope: !2838, inlinedAt: !2888)
!2890 = !DILocation(line: 1052, column: 45, scope: !2838, inlinedAt: !2888)
!2891 = !DILocation(line: 1054, column: 10, scope: !2838, inlinedAt: !2888)
!2892 = !DILocation(line: 1072, column: 3, scope: !2878)
!2893 = distinct !DISubprogram(name: "version_etc_arn", scope: !536, file: !536, line: 62, type: !2894, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !2949)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2896, !30, !30, !30, !2948, !115}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 7, baseType: !2899)
!2898 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !2901)
!2900 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2922, !2923, !2924, !2925, !2926, !2927, !2929, !2933, !2936, !2938, !2939, !2940, !2941, !2942, !2943, !2944}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2899, file: !2900, line: 242, baseType: !53, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2899, file: !2900, line: 247, baseType: !20, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2899, file: !2900, line: 248, baseType: !20, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2899, file: !2900, line: 249, baseType: !20, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2899, file: !2900, line: 250, baseType: !20, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2899, file: !2900, line: 251, baseType: !20, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2899, file: !2900, line: 252, baseType: !20, size: 64, offset: 384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2899, file: !2900, line: 253, baseType: !20, size: 64, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2899, file: !2900, line: 254, baseType: !20, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2899, file: !2900, line: 256, baseType: !20, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2899, file: !2900, line: 257, baseType: !20, size: 64, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2899, file: !2900, line: 258, baseType: !20, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2899, file: !2900, line: 260, baseType: !2915, size: 64, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !2917)
!2917 = !{!2918, !2919, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2916, file: !2900, line: 157, baseType: !2915, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2916, file: !2900, line: 158, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2916, file: !2900, line: 162, baseType: !53, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2899, file: !2900, line: 262, baseType: !2920, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2899, file: !2900, line: 264, baseType: !53, size: 32, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2899, file: !2900, line: 268, baseType: !53, size: 32, offset: 928)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2899, file: !2900, line: 270, baseType: !1042, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2899, file: !2900, line: 274, baseType: !114, size: 16, offset: 1024)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2899, file: !2900, line: 275, baseType: !2928, size: 8, offset: 1040)
!2928 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2899, file: !2900, line: 276, baseType: !2930, size: 8, offset: 1048)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !2931)
!2931 = !{!2932}
!2932 = !DISubrange(count: 1)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2899, file: !2900, line: 280, baseType: !2934, size: 64, offset: 1088)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2900, line: 150, baseType: null)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2899, file: !2900, line: 289, baseType: !2937, size: 64, offset: 1152)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !634, line: 141, baseType: !1043)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2899, file: !2900, line: 297, baseType: !22, size: 64, offset: 1216)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2899, file: !2900, line: 298, baseType: !22, size: 64, offset: 1280)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2899, file: !2900, line: 299, baseType: !22, size: 64, offset: 1344)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2899, file: !2900, line: 300, baseType: !22, size: 64, offset: 1408)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2899, file: !2900, line: 302, baseType: !115, size: 64, offset: 1472)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2899, file: !2900, line: 303, baseType: !53, size: 32, offset: 1536)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2899, file: !2900, line: 305, baseType: !2945, size: 160, offset: 1568)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !2946)
!2946 = !{!2947}
!2947 = !DISubrange(count: 20)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955}
!2950 = !DILocalVariable(name: "stream", arg: 1, scope: !2893, file: !536, line: 62, type: !2896)
!2951 = !DILocalVariable(name: "command_name", arg: 2, scope: !2893, file: !536, line: 63, type: !30)
!2952 = !DILocalVariable(name: "package", arg: 3, scope: !2893, file: !536, line: 63, type: !30)
!2953 = !DILocalVariable(name: "version", arg: 4, scope: !2893, file: !536, line: 64, type: !30)
!2954 = !DILocalVariable(name: "authors", arg: 5, scope: !2893, file: !536, line: 65, type: !2948)
!2955 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2893, file: !536, line: 65, type: !115)
!2956 = !DILocation(line: 62, column: 24, scope: !2893)
!2957 = !DILocation(line: 63, column: 30, scope: !2893)
!2958 = !DILocation(line: 63, column: 56, scope: !2893)
!2959 = !DILocation(line: 64, column: 30, scope: !2893)
!2960 = !DILocation(line: 65, column: 39, scope: !2893)
!2961 = !DILocation(line: 65, column: 55, scope: !2893)
!2962 = !DILocation(line: 67, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2893, file: !536, line: 67, column: 7)
!2964 = !DILocation(line: 67, column: 7, scope: !2893)
!2965 = !DILocation(line: 68, column: 5, scope: !2963)
!2966 = !DILocation(line: 70, column: 5, scope: !2963)
!2967 = !DILocation(line: 84, column: 3, scope: !2893)
!2968 = !DILocation(line: 86, column: 3, scope: !2893)
!2969 = !DILocation(line: 95, column: 3, scope: !2893)
!2970 = !DILocation(line: 99, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2893, file: !536, line: 96, column: 5)
!2972 = !DILocation(line: 102, column: 7, scope: !2971)
!2973 = !DILocation(line: 103, column: 7, scope: !2971)
!2974 = !DILocation(line: 106, column: 7, scope: !2971)
!2975 = !DILocation(line: 107, column: 7, scope: !2971)
!2976 = !DILocation(line: 110, column: 7, scope: !2971)
!2977 = !DILocation(line: 112, column: 7, scope: !2971)
!2978 = !DILocation(line: 117, column: 7, scope: !2971)
!2979 = !DILocation(line: 119, column: 7, scope: !2971)
!2980 = !DILocation(line: 124, column: 7, scope: !2971)
!2981 = !DILocation(line: 126, column: 7, scope: !2971)
!2982 = !DILocation(line: 131, column: 7, scope: !2971)
!2983 = !DILocation(line: 134, column: 7, scope: !2971)
!2984 = !DILocation(line: 139, column: 7, scope: !2971)
!2985 = !DILocation(line: 142, column: 7, scope: !2971)
!2986 = !DILocation(line: 147, column: 7, scope: !2971)
!2987 = !DILocation(line: 151, column: 7, scope: !2971)
!2988 = !DILocation(line: 156, column: 7, scope: !2971)
!2989 = !DILocation(line: 160, column: 7, scope: !2971)
!2990 = !DILocation(line: 167, column: 7, scope: !2971)
!2991 = !DILocation(line: 171, column: 7, scope: !2971)
!2992 = !DILocation(line: 173, column: 1, scope: !2893)
!2993 = distinct !DISubprogram(name: "version_etc_ar", scope: !536, file: !536, line: 180, type: !2994, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2896, !30, !30, !30, !2948}
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002}
!2997 = !DILocalVariable(name: "stream", arg: 1, scope: !2993, file: !536, line: 180, type: !2896)
!2998 = !DILocalVariable(name: "command_name", arg: 2, scope: !2993, file: !536, line: 181, type: !30)
!2999 = !DILocalVariable(name: "package", arg: 3, scope: !2993, file: !536, line: 181, type: !30)
!3000 = !DILocalVariable(name: "version", arg: 4, scope: !2993, file: !536, line: 182, type: !30)
!3001 = !DILocalVariable(name: "authors", arg: 5, scope: !2993, file: !536, line: 182, type: !2948)
!3002 = !DILocalVariable(name: "n_authors", scope: !2993, file: !536, line: 184, type: !115)
!3003 = !DILocation(line: 180, column: 23, scope: !2993)
!3004 = !DILocation(line: 181, column: 29, scope: !2993)
!3005 = !DILocation(line: 181, column: 55, scope: !2993)
!3006 = !DILocation(line: 182, column: 29, scope: !2993)
!3007 = !DILocation(line: 182, column: 59, scope: !2993)
!3008 = !DILocation(line: 184, column: 10, scope: !2993)
!3009 = !DILocation(line: 186, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2993, file: !536, line: 186, column: 3)
!3011 = !DILocation(line: 186, column: 23, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !536, line: 186, column: 3)
!3013 = !DILocation(line: 186, column: 3, scope: !3010)
!3014 = !DILocation(line: 186, column: 52, scope: !3012)
!3015 = distinct !{!3015, !3013, !3016}
!3016 = !DILocation(line: 187, column: 5, scope: !3010)
!3017 = !DILocation(line: 188, column: 3, scope: !2993)
!3018 = !DILocation(line: 189, column: 1, scope: !2993)
!3019 = distinct !DISubprogram(name: "version_etc_va", scope: !536, file: !536, line: 196, type: !3020, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3029)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2896, !30, !30, !30, !3022}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !533, line: 189, size: 192, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3023, file: !533, line: 189, baseType: !134, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3023, file: !533, line: 189, baseType: !134, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3023, file: !533, line: 189, baseType: !22, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3023, file: !533, line: 189, baseType: !22, size: 64, offset: 128)
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3030 = !DILocalVariable(name: "stream", arg: 1, scope: !3019, file: !536, line: 196, type: !2896)
!3031 = !DILocalVariable(name: "command_name", arg: 2, scope: !3019, file: !536, line: 197, type: !30)
!3032 = !DILocalVariable(name: "package", arg: 3, scope: !3019, file: !536, line: 197, type: !30)
!3033 = !DILocalVariable(name: "version", arg: 4, scope: !3019, file: !536, line: 198, type: !30)
!3034 = !DILocalVariable(name: "authors", arg: 5, scope: !3019, file: !536, line: 198, type: !3022)
!3035 = !DILocalVariable(name: "n_authors", scope: !3019, file: !536, line: 200, type: !115)
!3036 = !DILocalVariable(name: "authtab", scope: !3019, file: !536, line: 201, type: !3037)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !124)
!3038 = !DILocation(line: 196, column: 23, scope: !3019)
!3039 = !DILocation(line: 197, column: 29, scope: !3019)
!3040 = !DILocation(line: 197, column: 55, scope: !3019)
!3041 = !DILocation(line: 198, column: 29, scope: !3019)
!3042 = !DILocation(line: 198, column: 46, scope: !3019)
!3043 = !DILocation(line: 201, column: 3, scope: !3019)
!3044 = !DILocation(line: 201, column: 15, scope: !3019)
!3045 = !DILocation(line: 200, column: 10, scope: !3019)
!3046 = !DILocation(line: 205, column: 35, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !536, line: 203, column: 3)
!3048 = distinct !DILexicalBlock(scope: !3019, file: !536, line: 203, column: 3)
!3049 = !DILocation(line: 205, column: 14, scope: !3047)
!3050 = !DILocation(line: 205, column: 33, scope: !3047)
!3051 = !DILocation(line: 205, column: 67, scope: !3047)
!3052 = !DILocation(line: 203, column: 3, scope: !3048)
!3053 = !DILocation(line: 208, column: 3, scope: !3019)
!3054 = !DILocation(line: 210, column: 1, scope: !3019)
!3055 = distinct !DISubprogram(name: "version_etc", scope: !536, file: !536, line: 227, type: !3056, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2896, !30, !30, !30, null}
!3058 = !{!3059, !3060, !3061, !3062, !3063}
!3059 = !DILocalVariable(name: "stream", arg: 1, scope: !3055, file: !536, line: 227, type: !2896)
!3060 = !DILocalVariable(name: "command_name", arg: 2, scope: !3055, file: !536, line: 228, type: !30)
!3061 = !DILocalVariable(name: "package", arg: 3, scope: !3055, file: !536, line: 228, type: !30)
!3062 = !DILocalVariable(name: "version", arg: 4, scope: !3055, file: !536, line: 229, type: !30)
!3063 = !DILocalVariable(name: "authors", scope: !3055, file: !536, line: 231, type: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3065, line: 46, baseType: !3066)
!3065 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3067, line: 48, baseType: !3068)
!3067 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !533, line: 231, baseType: !3069)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3023, size: 192, elements: !2931)
!3070 = !DILocation(line: 227, column: 20, scope: !3055)
!3071 = !DILocation(line: 228, column: 26, scope: !3055)
!3072 = !DILocation(line: 228, column: 52, scope: !3055)
!3073 = !DILocation(line: 229, column: 26, scope: !3055)
!3074 = !DILocation(line: 231, column: 3, scope: !3055)
!3075 = !DILocation(line: 231, column: 11, scope: !3055)
!3076 = !DILocation(line: 233, column: 3, scope: !3055)
!3077 = !DILocation(line: 234, column: 3, scope: !3055)
!3078 = !DILocation(line: 235, column: 3, scope: !3055)
!3079 = !DILocation(line: 236, column: 1, scope: !3055)
!3080 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !536, file: !536, line: 239, type: !600, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !63)
!3081 = !DILocation(line: 245, column: 3, scope: !3080)
!3082 = !DILocation(line: 251, column: 3, scope: !3080)
!3083 = !DILocation(line: 256, column: 3, scope: !3080)
!3084 = !DILocation(line: 258, column: 1, scope: !3080)
!3085 = distinct !DISubprogram(name: "xnmalloc", scope: !544, file: !544, line: 105, type: !906, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3086)
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !544, line: 105, type: !115)
!3088 = !DILocalVariable(name: "s", arg: 2, scope: !3085, file: !544, line: 105, type: !115)
!3089 = !DILocation(line: 105, column: 18, scope: !3085)
!3090 = !DILocation(line: 105, column: 28, scope: !3085)
!3091 = !DILocation(line: 107, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !544, line: 107, column: 7)
!3093 = !DILocation(line: 107, column: 7, scope: !3085)
!3094 = !DILocation(line: 108, column: 5, scope: !3092)
!3095 = !DILocation(line: 109, column: 21, scope: !3085)
!3096 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !3098, line: 39, type: !115)
!3097 = distinct !DISubprogram(name: "xmalloc", scope: !3098, file: !3098, line: 39, type: !3099, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3101)
!3098 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!22, !115}
!3101 = !{!3096, !3102}
!3102 = !DILocalVariable(name: "p", scope: !3097, file: !3098, line: 41, type: !22)
!3103 = !DILocation(line: 39, column: 17, scope: !3097, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 109, column: 10, scope: !3085)
!3105 = !DILocation(line: 41, column: 13, scope: !3097, inlinedAt: !3104)
!3106 = !DILocation(line: 41, column: 9, scope: !3097, inlinedAt: !3104)
!3107 = !DILocation(line: 42, column: 8, scope: !3108, inlinedAt: !3104)
!3108 = distinct !DILexicalBlock(scope: !3097, file: !3098, line: 42, column: 7)
!3109 = !DILocation(line: 42, column: 15, scope: !3108, inlinedAt: !3104)
!3110 = !DILocation(line: 42, column: 10, scope: !3108, inlinedAt: !3104)
!3111 = !DILocation(line: 43, column: 5, scope: !3108, inlinedAt: !3104)
!3112 = !DILocation(line: 109, column: 3, scope: !3085)
!3113 = !DILocation(line: 39, column: 17, scope: !3097)
!3114 = !DILocation(line: 41, column: 13, scope: !3097)
!3115 = !DILocation(line: 41, column: 9, scope: !3097)
!3116 = !DILocation(line: 42, column: 8, scope: !3108)
!3117 = !DILocation(line: 42, column: 15, scope: !3108)
!3118 = !DILocation(line: 42, column: 10, scope: !3108)
!3119 = !DILocation(line: 43, column: 5, scope: !3108)
!3120 = !DILocation(line: 44, column: 3, scope: !3097)
!3121 = distinct !DISubprogram(name: "xnrealloc", scope: !544, file: !544, line: 118, type: !3122, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!22, !22, !115, !115}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3121, file: !544, line: 118, type: !22)
!3126 = !DILocalVariable(name: "n", arg: 2, scope: !3121, file: !544, line: 118, type: !115)
!3127 = !DILocalVariable(name: "s", arg: 3, scope: !3121, file: !544, line: 118, type: !115)
!3128 = !DILocation(line: 118, column: 18, scope: !3121)
!3129 = !DILocation(line: 118, column: 28, scope: !3121)
!3130 = !DILocation(line: 118, column: 38, scope: !3121)
!3131 = !DILocation(line: 120, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3121, file: !544, line: 120, column: 7)
!3133 = !DILocation(line: 120, column: 7, scope: !3121)
!3134 = !DILocation(line: 121, column: 5, scope: !3132)
!3135 = !DILocation(line: 122, column: 25, scope: !3121)
!3136 = !DILocalVariable(name: "p", arg: 1, scope: !3137, file: !3098, line: 51, type: !22)
!3137 = distinct !DISubprogram(name: "xrealloc", scope: !3098, file: !3098, line: 51, type: !3138, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!22, !22, !115}
!3140 = !{!3136, !3141}
!3141 = !DILocalVariable(name: "n", arg: 2, scope: !3137, file: !3098, line: 51, type: !115)
!3142 = !DILocation(line: 51, column: 17, scope: !3137, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 122, column: 10, scope: !3121)
!3144 = !DILocation(line: 51, column: 27, scope: !3137, inlinedAt: !3143)
!3145 = !DILocation(line: 53, column: 8, scope: !3146, inlinedAt: !3143)
!3146 = distinct !DILexicalBlock(scope: !3137, file: !3098, line: 53, column: 7)
!3147 = !DILocation(line: 53, column: 13, scope: !3146, inlinedAt: !3143)
!3148 = !DILocation(line: 53, column: 10, scope: !3146, inlinedAt: !3143)
!3149 = !DILocation(line: 57, column: 7, scope: !3150, inlinedAt: !3143)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !3098, line: 54, column: 5)
!3151 = !DILocation(line: 58, column: 7, scope: !3150, inlinedAt: !3143)
!3152 = !DILocation(line: 61, column: 7, scope: !3137, inlinedAt: !3143)
!3153 = !DILocation(line: 62, column: 8, scope: !3154, inlinedAt: !3143)
!3154 = distinct !DILexicalBlock(scope: !3137, file: !3098, line: 62, column: 7)
!3155 = !DILocation(line: 62, column: 13, scope: !3154, inlinedAt: !3143)
!3156 = !DILocation(line: 62, column: 10, scope: !3154, inlinedAt: !3143)
!3157 = !DILocation(line: 63, column: 5, scope: !3154, inlinedAt: !3143)
!3158 = !DILocation(line: 122, column: 3, scope: !3121)
!3159 = !DILocation(line: 51, column: 17, scope: !3137)
!3160 = !DILocation(line: 51, column: 27, scope: !3137)
!3161 = !DILocation(line: 53, column: 8, scope: !3146)
!3162 = !DILocation(line: 53, column: 13, scope: !3146)
!3163 = !DILocation(line: 53, column: 10, scope: !3146)
!3164 = !DILocation(line: 57, column: 7, scope: !3150)
!3165 = !DILocation(line: 58, column: 7, scope: !3150)
!3166 = !DILocation(line: 61, column: 7, scope: !3137)
!3167 = !DILocation(line: 62, column: 8, scope: !3154)
!3168 = !DILocation(line: 62, column: 13, scope: !3154)
!3169 = !DILocation(line: 62, column: 10, scope: !3154)
!3170 = !DILocation(line: 63, column: 5, scope: !3154)
!3171 = !DILocation(line: 65, column: 1, scope: !3137)
!3172 = !DILocation(line: 180, column: 19, scope: !545)
!3173 = !DILocation(line: 180, column: 30, scope: !545)
!3174 = !DILocation(line: 180, column: 41, scope: !545)
!3175 = !DILocation(line: 182, column: 14, scope: !545)
!3176 = !DILocation(line: 182, column: 10, scope: !545)
!3177 = !DILocation(line: 184, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !545, file: !544, line: 184, column: 7)
!3179 = !DILocation(line: 184, column: 7, scope: !545)
!3180 = !DILocation(line: 186, column: 13, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !544, line: 186, column: 11)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !544, line: 185, column: 5)
!3183 = !DILocation(line: 186, column: 11, scope: !3182)
!3184 = !DILocation(line: 194, column: 30, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !544, line: 187, column: 9)
!3186 = !DILocation(line: 195, column: 16, scope: !3185)
!3187 = !DILocation(line: 195, column: 13, scope: !3185)
!3188 = !DILocation(line: 196, column: 9, scope: !3185)
!3189 = !DILocation(line: 204, column: 69, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !544, line: 204, column: 11)
!3191 = distinct !DILexicalBlock(scope: !3178, file: !544, line: 199, column: 5)
!3192 = !DILocation(line: 205, column: 11, scope: !3190)
!3193 = !DILocation(line: 204, column: 11, scope: !3191)
!3194 = !DILocation(line: 206, column: 9, scope: !3190)
!3195 = !DILocation(line: 210, column: 7, scope: !545)
!3196 = !DILocation(line: 211, column: 25, scope: !545)
!3197 = !DILocation(line: 51, column: 17, scope: !3137, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 211, column: 10, scope: !545)
!3199 = !DILocation(line: 51, column: 27, scope: !3137, inlinedAt: !3198)
!3200 = !DILocation(line: 53, column: 10, scope: !3146, inlinedAt: !3198)
!3201 = !DILocation(line: 207, column: 14, scope: !3191)
!3202 = !DILocation(line: 207, column: 18, scope: !3191)
!3203 = !DILocation(line: 207, column: 9, scope: !3191)
!3204 = !DILocation(line: 53, column: 8, scope: !3146, inlinedAt: !3198)
!3205 = !DILocation(line: 57, column: 7, scope: !3150, inlinedAt: !3198)
!3206 = !DILocation(line: 58, column: 7, scope: !3150, inlinedAt: !3198)
!3207 = !DILocation(line: 61, column: 7, scope: !3137, inlinedAt: !3198)
!3208 = !DILocation(line: 62, column: 8, scope: !3154, inlinedAt: !3198)
!3209 = !DILocation(line: 62, column: 13, scope: !3154, inlinedAt: !3198)
!3210 = !DILocation(line: 62, column: 10, scope: !3154, inlinedAt: !3198)
!3211 = !DILocation(line: 63, column: 5, scope: !3154, inlinedAt: !3198)
!3212 = !DILocation(line: 211, column: 3, scope: !545)
!3213 = distinct !DISubprogram(name: "xcharalloc", scope: !544, file: !544, line: 220, type: !2171, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3214)
!3214 = !{!3215}
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !544, line: 220, type: !115)
!3216 = !DILocation(line: 220, column: 20, scope: !3213)
!3217 = !DILocation(line: 39, column: 17, scope: !3097, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 222, column: 10, scope: !3213)
!3219 = !DILocation(line: 41, column: 13, scope: !3097, inlinedAt: !3218)
!3220 = !DILocation(line: 41, column: 9, scope: !3097, inlinedAt: !3218)
!3221 = !DILocation(line: 42, column: 8, scope: !3108, inlinedAt: !3218)
!3222 = !DILocation(line: 42, column: 15, scope: !3108, inlinedAt: !3218)
!3223 = !DILocation(line: 42, column: 10, scope: !3108, inlinedAt: !3218)
!3224 = !DILocation(line: 43, column: 5, scope: !3108, inlinedAt: !3218)
!3225 = !DILocation(line: 222, column: 3, scope: !3213)
!3226 = distinct !DISubprogram(name: "x2realloc", scope: !3098, file: !3098, line: 74, type: !3227, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!22, !22, !548}
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "p", arg: 1, scope: !3226, file: !3098, line: 74, type: !22)
!3231 = !DILocalVariable(name: "pn", arg: 2, scope: !3226, file: !3098, line: 74, type: !548)
!3232 = !DILocation(line: 74, column: 18, scope: !3226)
!3233 = !DILocation(line: 74, column: 29, scope: !3226)
!3234 = !DILocation(line: 180, column: 19, scope: !545, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 76, column: 10, scope: !3226)
!3236 = !DILocation(line: 180, column: 30, scope: !545, inlinedAt: !3235)
!3237 = !DILocation(line: 180, column: 41, scope: !545, inlinedAt: !3235)
!3238 = !DILocation(line: 182, column: 14, scope: !545, inlinedAt: !3235)
!3239 = !DILocation(line: 182, column: 10, scope: !545, inlinedAt: !3235)
!3240 = !DILocation(line: 184, column: 9, scope: !3178, inlinedAt: !3235)
!3241 = !DILocation(line: 184, column: 7, scope: !545, inlinedAt: !3235)
!3242 = !DILocation(line: 186, column: 13, scope: !3181, inlinedAt: !3235)
!3243 = !DILocation(line: 186, column: 11, scope: !3182, inlinedAt: !3235)
!3244 = !DILocation(line: 210, column: 7, scope: !545, inlinedAt: !3235)
!3245 = !DILocation(line: 51, column: 17, scope: !3137, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 211, column: 10, scope: !545, inlinedAt: !3235)
!3247 = !DILocation(line: 51, column: 27, scope: !3137, inlinedAt: !3246)
!3248 = !DILocation(line: 53, column: 10, scope: !3146, inlinedAt: !3246)
!3249 = !DILocation(line: 205, column: 11, scope: !3190, inlinedAt: !3235)
!3250 = !DILocation(line: 204, column: 11, scope: !3191, inlinedAt: !3235)
!3251 = !DILocation(line: 206, column: 9, scope: !3190, inlinedAt: !3235)
!3252 = !DILocation(line: 207, column: 14, scope: !3191, inlinedAt: !3235)
!3253 = !DILocation(line: 207, column: 18, scope: !3191, inlinedAt: !3235)
!3254 = !DILocation(line: 207, column: 9, scope: !3191, inlinedAt: !3235)
!3255 = !DILocation(line: 53, column: 8, scope: !3146, inlinedAt: !3246)
!3256 = !DILocation(line: 57, column: 7, scope: !3150, inlinedAt: !3246)
!3257 = !DILocation(line: 58, column: 7, scope: !3150, inlinedAt: !3246)
!3258 = !DILocation(line: 61, column: 7, scope: !3137, inlinedAt: !3246)
!3259 = !DILocation(line: 62, column: 8, scope: !3154, inlinedAt: !3246)
!3260 = !DILocation(line: 62, column: 13, scope: !3154, inlinedAt: !3246)
!3261 = !DILocation(line: 62, column: 10, scope: !3154, inlinedAt: !3246)
!3262 = !DILocation(line: 63, column: 5, scope: !3154, inlinedAt: !3246)
!3263 = !DILocation(line: 76, column: 3, scope: !3226)
!3264 = distinct !DISubprogram(name: "xzalloc", scope: !3098, file: !3098, line: 84, type: !3099, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3265)
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "s", arg: 1, scope: !3264, file: !3098, line: 84, type: !115)
!3267 = !DILocation(line: 84, column: 17, scope: !3264)
!3268 = !DILocation(line: 39, column: 17, scope: !3097, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 86, column: 18, scope: !3264)
!3270 = !DILocation(line: 41, column: 13, scope: !3097, inlinedAt: !3269)
!3271 = !DILocation(line: 41, column: 9, scope: !3097, inlinedAt: !3269)
!3272 = !DILocation(line: 42, column: 8, scope: !3108, inlinedAt: !3269)
!3273 = !DILocation(line: 42, column: 15, scope: !3108, inlinedAt: !3269)
!3274 = !DILocation(line: 42, column: 10, scope: !3108, inlinedAt: !3269)
!3275 = !DILocation(line: 43, column: 5, scope: !3108, inlinedAt: !3269)
!3276 = !DILocation(line: 86, column: 10, scope: !3264)
!3277 = !DILocation(line: 86, column: 3, scope: !3264)
!3278 = distinct !DISubprogram(name: "xcalloc", scope: !3098, file: !3098, line: 93, type: !906, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !3098, line: 93, type: !115)
!3281 = !DILocalVariable(name: "s", arg: 2, scope: !3278, file: !3098, line: 93, type: !115)
!3282 = !DILocalVariable(name: "p", scope: !3278, file: !3098, line: 95, type: !22)
!3283 = !DILocation(line: 93, column: 17, scope: !3278)
!3284 = !DILocation(line: 93, column: 27, scope: !3278)
!3285 = !DILocation(line: 100, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3278, file: !3098, line: 100, column: 7)
!3287 = !DILocation(line: 101, column: 7, scope: !3286)
!3288 = !DILocation(line: 101, column: 18, scope: !3286)
!3289 = !DILocation(line: 95, column: 9, scope: !3278)
!3290 = !DILocation(line: 101, column: 16, scope: !3286)
!3291 = !DILocation(line: 100, column: 7, scope: !3278)
!3292 = !DILocation(line: 102, column: 5, scope: !3286)
!3293 = !DILocation(line: 103, column: 3, scope: !3278)
!3294 = distinct !DISubprogram(name: "xmemdup", scope: !3098, file: !3098, line: 111, type: !3295, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3299)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!22, !3297, !115}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3299 = !{!3300, !3301}
!3300 = !DILocalVariable(name: "p", arg: 1, scope: !3294, file: !3098, line: 111, type: !3297)
!3301 = !DILocalVariable(name: "s", arg: 2, scope: !3294, file: !3098, line: 111, type: !115)
!3302 = !DILocation(line: 111, column: 22, scope: !3294)
!3303 = !DILocation(line: 111, column: 32, scope: !3294)
!3304 = !DILocation(line: 39, column: 17, scope: !3097, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 113, column: 18, scope: !3294)
!3306 = !DILocation(line: 41, column: 13, scope: !3097, inlinedAt: !3305)
!3307 = !DILocation(line: 41, column: 9, scope: !3097, inlinedAt: !3305)
!3308 = !DILocation(line: 42, column: 8, scope: !3108, inlinedAt: !3305)
!3309 = !DILocation(line: 42, column: 15, scope: !3108, inlinedAt: !3305)
!3310 = !DILocation(line: 42, column: 10, scope: !3108, inlinedAt: !3305)
!3311 = !DILocation(line: 43, column: 5, scope: !3108, inlinedAt: !3305)
!3312 = !DILocation(line: 113, column: 10, scope: !3294)
!3313 = !DILocation(line: 113, column: 3, scope: !3294)
!3314 = distinct !DISubprogram(name: "xstrdup", scope: !3098, file: !3098, line: 119, type: !2372, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3315)
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "string", arg: 1, scope: !3314, file: !3098, line: 119, type: !30)
!3317 = !DILocation(line: 119, column: 22, scope: !3314)
!3318 = !DILocation(line: 121, column: 27, scope: !3314)
!3319 = !DILocation(line: 121, column: 43, scope: !3314)
!3320 = !DILocation(line: 111, column: 22, scope: !3294, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 121, column: 10, scope: !3314)
!3322 = !DILocation(line: 111, column: 32, scope: !3294, inlinedAt: !3321)
!3323 = !DILocation(line: 39, column: 17, scope: !3097, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 113, column: 18, scope: !3294, inlinedAt: !3321)
!3325 = !DILocation(line: 41, column: 13, scope: !3097, inlinedAt: !3324)
!3326 = !DILocation(line: 41, column: 9, scope: !3097, inlinedAt: !3324)
!3327 = !DILocation(line: 42, column: 8, scope: !3108, inlinedAt: !3324)
!3328 = !DILocation(line: 42, column: 15, scope: !3108, inlinedAt: !3324)
!3329 = !DILocation(line: 42, column: 10, scope: !3108, inlinedAt: !3324)
!3330 = !DILocation(line: 43, column: 5, scope: !3108, inlinedAt: !3324)
!3331 = !DILocation(line: 113, column: 10, scope: !3294, inlinedAt: !3321)
!3332 = !DILocation(line: 121, column: 3, scope: !3314)
!3333 = distinct !DISubprogram(name: "xalloc_die", scope: !3334, file: !3334, line: 32, type: !600, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !557, variables: !63)
!3334 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3335 = !DILocation(line: 34, column: 10, scope: !3333)
!3336 = !DILocation(line: 34, column: 33, scope: !3333)
!3337 = !DILocation(line: 34, column: 3, scope: !3333)
!3338 = !DILocation(line: 40, column: 3, scope: !3333)
!3339 = distinct !DISubprogram(name: "rpl_calloc", scope: !3340, file: !3340, line: 42, type: !906, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3341)
!3340 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3341 = !{!3342, !3343, !3344, !3345}
!3342 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !3340, line: 42, type: !115)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !3340, line: 42, type: !115)
!3344 = !DILocalVariable(name: "result", scope: !3339, file: !3340, line: 44, type: !22)
!3345 = !DILocalVariable(name: "bytes", scope: !3346, file: !3340, line: 56, type: !115)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3340, line: 53, column: 5)
!3347 = distinct !DILexicalBlock(scope: !3339, file: !3340, line: 47, column: 7)
!3348 = !DILocation(line: 42, column: 20, scope: !3339)
!3349 = !DILocation(line: 42, column: 30, scope: !3339)
!3350 = !DILocation(line: 47, column: 9, scope: !3347)
!3351 = !DILocation(line: 47, column: 19, scope: !3347)
!3352 = !DILocation(line: 47, column: 14, scope: !3347)
!3353 = !DILocation(line: 56, column: 24, scope: !3346)
!3354 = !DILocation(line: 56, column: 14, scope: !3346)
!3355 = !DILocation(line: 57, column: 17, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3346, file: !3340, line: 57, column: 11)
!3357 = !DILocation(line: 57, column: 21, scope: !3356)
!3358 = !DILocation(line: 57, column: 11, scope: !3346)
!3359 = !DILocation(line: 59, column: 11, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3356, file: !3340, line: 58, column: 9)
!3361 = !DILocation(line: 59, column: 17, scope: !3360)
!3362 = !DILocation(line: 65, column: 12, scope: !3339)
!3363 = !DILocation(line: 44, column: 9, scope: !3339)
!3364 = !DILocation(line: 72, column: 3, scope: !3339)
!3365 = !DILocation(line: 73, column: 1, scope: !3339)
!3366 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3367, file: !3367, line: 334, type: !3368, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3382)
!3367 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!115, !3370, !30, !115, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1422, line: 6, baseType: !3373)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1424, line: 21, baseType: !3374)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1424, line: 13, size: 64, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3374, file: !1424, line: 15, baseType: !53, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3374, file: !1424, line: 20, baseType: !3378, size: 32, offset: 32)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !1424, line: 16, size: 32, elements: !3379)
!3379 = !{!3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3378, file: !1424, line: 18, baseType: !134, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3378, file: !1424, line: 19, baseType: !1433, size: 32)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3383 = !DILocalVariable(name: "pwc", arg: 1, scope: !3366, file: !3367, line: 334, type: !3370)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3366, file: !3367, line: 334, type: !30)
!3385 = !DILocalVariable(name: "n", arg: 3, scope: !3366, file: !3367, line: 334, type: !115)
!3386 = !DILocalVariable(name: "ps", arg: 4, scope: !3366, file: !3367, line: 334, type: !3371)
!3387 = !DILocalVariable(name: "ret", scope: !3366, file: !3367, line: 336, type: !115)
!3388 = !DILocalVariable(name: "wc", scope: !3366, file: !3367, line: 337, type: !1438)
!3389 = !DILocalVariable(name: "uc", scope: !3390, file: !3367, line: 398, type: !515)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3367, line: 397, column: 5)
!3391 = distinct !DILexicalBlock(scope: !3366, file: !3367, line: 396, column: 7)
!3392 = !DILocation(line: 334, column: 23, scope: !3366)
!3393 = !DILocation(line: 334, column: 40, scope: !3366)
!3394 = !DILocation(line: 334, column: 50, scope: !3366)
!3395 = !DILocation(line: 334, column: 64, scope: !3366)
!3396 = !DILocation(line: 337, column: 3, scope: !3366)
!3397 = !DILocation(line: 353, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3366, file: !3367, line: 353, column: 7)
!3399 = !DILocation(line: 353, column: 7, scope: !3366)
!3400 = !DILocation(line: 388, column: 9, scope: !3366)
!3401 = !DILocation(line: 336, column: 10, scope: !3366)
!3402 = !DILocation(line: 396, column: 19, scope: !3391)
!3403 = !DILocation(line: 396, column: 31, scope: !3391)
!3404 = !DILocation(line: 396, column: 26, scope: !3391)
!3405 = !DILocation(line: 396, column: 41, scope: !3391)
!3406 = !DILocation(line: 396, column: 7, scope: !3366)
!3407 = !DILocation(line: 398, column: 26, scope: !3390)
!3408 = !DILocation(line: 398, column: 21, scope: !3390)
!3409 = !DILocation(line: 399, column: 14, scope: !3390)
!3410 = !DILocation(line: 399, column: 12, scope: !3390)
!3411 = !DILocation(line: 405, column: 1, scope: !3366)
!3412 = distinct !DISubprogram(name: "close_stream", scope: !3413, file: !3413, line: 56, type: !3414, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3456)
!3413 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!53, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 7, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3418, file: !2900, line: 242, baseType: !53, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3418, file: !2900, line: 247, baseType: !20, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3418, file: !2900, line: 248, baseType: !20, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3418, file: !2900, line: 249, baseType: !20, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3418, file: !2900, line: 250, baseType: !20, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3418, file: !2900, line: 251, baseType: !20, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3418, file: !2900, line: 252, baseType: !20, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3418, file: !2900, line: 253, baseType: !20, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3418, file: !2900, line: 254, baseType: !20, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3418, file: !2900, line: 256, baseType: !20, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3418, file: !2900, line: 257, baseType: !20, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3418, file: !2900, line: 258, baseType: !20, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3418, file: !2900, line: 260, baseType: !3433, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3435)
!3435 = !{!3436, !3437, !3439}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3434, file: !2900, line: 157, baseType: !3433, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3434, file: !2900, line: 158, baseType: !3438, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3434, file: !2900, line: 162, baseType: !53, size: 32, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3418, file: !2900, line: 262, baseType: !3438, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3418, file: !2900, line: 264, baseType: !53, size: 32, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3418, file: !2900, line: 268, baseType: !53, size: 32, offset: 928)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3418, file: !2900, line: 270, baseType: !1042, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3418, file: !2900, line: 274, baseType: !114, size: 16, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3418, file: !2900, line: 275, baseType: !2928, size: 8, offset: 1040)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3418, file: !2900, line: 276, baseType: !2930, size: 8, offset: 1048)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3418, file: !2900, line: 280, baseType: !2934, size: 64, offset: 1088)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3418, file: !2900, line: 289, baseType: !2937, size: 64, offset: 1152)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3418, file: !2900, line: 297, baseType: !22, size: 64, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3418, file: !2900, line: 298, baseType: !22, size: 64, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3418, file: !2900, line: 299, baseType: !22, size: 64, offset: 1344)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3418, file: !2900, line: 300, baseType: !22, size: 64, offset: 1408)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3418, file: !2900, line: 302, baseType: !115, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3418, file: !2900, line: 303, baseType: !53, size: 32, offset: 1536)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3418, file: !2900, line: 305, baseType: !2945, size: 160, offset: 1568)
!3456 = !{!3457, !3458, !3460, !3461}
!3457 = !DILocalVariable(name: "stream", arg: 1, scope: !3412, file: !3413, line: 56, type: !3416)
!3458 = !DILocalVariable(name: "some_pending", scope: !3412, file: !3413, line: 58, type: !3459)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!3460 = !DILocalVariable(name: "prev_fail", scope: !3412, file: !3413, line: 59, type: !3459)
!3461 = !DILocalVariable(name: "fclose_fail", scope: !3412, file: !3413, line: 60, type: !3459)
!3462 = !DILocation(line: 56, column: 21, scope: !3412)
!3463 = !DILocation(line: 58, column: 30, scope: !3412)
!3464 = !DILocalVariable(name: "__stream", arg: 1, scope: !3465, file: !3466, line: 132, type: !3416)
!3465 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3466, file: !3466, line: 132, type: !3414, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3467)
!3466 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3467 = !{!3464}
!3468 = !DILocation(line: 132, column: 1, scope: !3465, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 59, column: 27, scope: !3412)
!3470 = !DILocation(line: 134, column: 10, scope: !3465, inlinedAt: !3469)
!3471 = !{!3472, !686, i64 0}
!3472 = !{!"_IO_FILE", !686, i64 0, !592, i64 8, !592, i64 16, !592, i64 24, !592, i64 32, !592, i64 40, !592, i64 48, !592, i64 56, !592, i64 64, !592, i64 72, !592, i64 80, !592, i64 88, !592, i64 96, !592, i64 104, !686, i64 112, !686, i64 116, !1082, i64 120, !1672, i64 128, !593, i64 130, !593, i64 131, !592, i64 136, !1082, i64 144, !592, i64 152, !592, i64 160, !592, i64 168, !592, i64 176, !1082, i64 184, !686, i64 192, !593, i64 196}
!3473 = !DILocation(line: 59, column: 43, scope: !3412)
!3474 = !DILocation(line: 60, column: 29, scope: !3412)
!3475 = !DILocation(line: 60, column: 45, scope: !3412)
!3476 = !DILocation(line: 70, column: 17, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3412, file: !3413, line: 70, column: 7)
!3478 = !DILocation(line: 58, column: 50, scope: !3412)
!3479 = !DILocation(line: 70, column: 33, scope: !3477)
!3480 = !DILocation(line: 70, column: 53, scope: !3477)
!3481 = !DILocation(line: 70, column: 59, scope: !3477)
!3482 = !DILocation(line: 70, column: 7, scope: !3412)
!3483 = !DILocation(line: 72, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3477, file: !3413, line: 71, column: 5)
!3485 = !DILocation(line: 73, column: 9, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3484, file: !3413, line: 72, column: 11)
!3487 = !DILocation(line: 73, column: 15, scope: !3486)
!3488 = !DILocation(line: 78, column: 1, scope: !3412)
!3489 = distinct !DISubprogram(name: "hard_locale", scope: !3490, file: !3490, line: 38, type: !3491, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3493)
!3490 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!73, !53}
!3493 = !{!3494, !3495, !3496}
!3494 = !DILocalVariable(name: "category", arg: 1, scope: !3489, file: !3490, line: 38, type: !53)
!3495 = !DILocalVariable(name: "hard", scope: !3489, file: !3490, line: 40, type: !73)
!3496 = !DILocalVariable(name: "p", scope: !3489, file: !3490, line: 41, type: !30)
!3497 = !DILocation(line: 38, column: 18, scope: !3489)
!3498 = !DILocation(line: 40, column: 8, scope: !3489)
!3499 = !DILocation(line: 41, column: 19, scope: !3489)
!3500 = !DILocation(line: 41, column: 15, scope: !3489)
!3501 = !DILocation(line: 43, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3489, file: !3490, line: 43, column: 7)
!3503 = !DILocation(line: 43, column: 7, scope: !3489)
!3504 = !DILocation(line: 47, column: 15, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3490, line: 47, column: 15)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3490, line: 46, column: 9)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3490, line: 45, column: 11)
!3508 = distinct !DILexicalBlock(scope: !3502, file: !3490, line: 44, column: 5)
!3509 = !DILocation(line: 47, column: 31, scope: !3505)
!3510 = !DILocation(line: 47, column: 36, scope: !3505)
!3511 = !DILocation(line: 47, column: 39, scope: !3505)
!3512 = !DILocation(line: 47, column: 59, scope: !3505)
!3513 = !DILocation(line: 47, column: 15, scope: !3506)
!3514 = !DILocation(line: 48, column: 13, scope: !3505)
!3515 = !DILocation(line: 71, column: 3, scope: !3489)
!3516 = distinct !DISubprogram(name: "locale_charset", scope: !517, file: !517, line: 393, type: !3517, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!30}
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "codeset", scope: !3516, file: !517, line: 395, type: !30)
!3521 = !DILocalVariable(name: "aliases", scope: !3516, file: !517, line: 396, type: !30)
!3522 = !DILocalVariable(name: "buf1", scope: !3523, file: !517, line: 196, type: !3590)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !517, line: 194, column: 21)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !517, line: 193, column: 19)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !517, line: 193, column: 19)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !517, line: 188, column: 17)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !517, line: 181, column: 19)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !517, line: 177, column: 13)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !517, line: 173, column: 15)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !517, line: 161, column: 9)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !517, line: 157, column: 11)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !517, line: 130, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !517, line: 129, column: 7)
!3534 = distinct !DISubprogram(name: "get_charset_aliases", scope: !517, file: !517, line: 124, type: !3517, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3542, !3543, !3544, !3545, !3586, !3587, !3588, !3522, !3589, !3593, !3594, !3595}
!3536 = !DILocalVariable(name: "cp", scope: !3534, file: !517, line: 126, type: !30)
!3537 = !DILocalVariable(name: "dir", scope: !3532, file: !517, line: 132, type: !30)
!3538 = !DILocalVariable(name: "base", scope: !3532, file: !517, line: 133, type: !30)
!3539 = !DILocalVariable(name: "file_name", scope: !3532, file: !517, line: 134, type: !20)
!3540 = !DILocalVariable(name: "dir_len", scope: !3541, file: !517, line: 144, type: !115)
!3541 = distinct !DILexicalBlock(scope: !3532, file: !517, line: 143, column: 7)
!3542 = !DILocalVariable(name: "base_len", scope: !3541, file: !517, line: 145, type: !115)
!3543 = !DILocalVariable(name: "add_slash", scope: !3541, file: !517, line: 146, type: !53)
!3544 = !DILocalVariable(name: "fd", scope: !3530, file: !517, line: 162, type: !53)
!3545 = !DILocalVariable(name: "fp", scope: !3528, file: !517, line: 178, type: !3546)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 7, baseType: !3548)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3548, file: !2900, line: 242, baseType: !53, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3548, file: !2900, line: 247, baseType: !20, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3548, file: !2900, line: 248, baseType: !20, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3548, file: !2900, line: 249, baseType: !20, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3548, file: !2900, line: 250, baseType: !20, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3548, file: !2900, line: 251, baseType: !20, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3548, file: !2900, line: 252, baseType: !20, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3548, file: !2900, line: 253, baseType: !20, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3548, file: !2900, line: 254, baseType: !20, size: 64, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3548, file: !2900, line: 256, baseType: !20, size: 64, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3548, file: !2900, line: 257, baseType: !20, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3548, file: !2900, line: 258, baseType: !20, size: 64, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3548, file: !2900, line: 260, baseType: !3563, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3565)
!3565 = !{!3566, !3567, !3569}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3564, file: !2900, line: 157, baseType: !3563, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3564, file: !2900, line: 158, baseType: !3568, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3564, file: !2900, line: 162, baseType: !53, size: 32, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3548, file: !2900, line: 262, baseType: !3568, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3548, file: !2900, line: 264, baseType: !53, size: 32, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3548, file: !2900, line: 268, baseType: !53, size: 32, offset: 928)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3548, file: !2900, line: 270, baseType: !1042, size: 64, offset: 960)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3548, file: !2900, line: 274, baseType: !114, size: 16, offset: 1024)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3548, file: !2900, line: 275, baseType: !2928, size: 8, offset: 1040)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3548, file: !2900, line: 276, baseType: !2930, size: 8, offset: 1048)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3548, file: !2900, line: 280, baseType: !2934, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3548, file: !2900, line: 289, baseType: !2937, size: 64, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3548, file: !2900, line: 297, baseType: !22, size: 64, offset: 1216)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3548, file: !2900, line: 298, baseType: !22, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3548, file: !2900, line: 299, baseType: !22, size: 64, offset: 1344)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3548, file: !2900, line: 300, baseType: !22, size: 64, offset: 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3548, file: !2900, line: 302, baseType: !115, size: 64, offset: 1472)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3548, file: !2900, line: 303, baseType: !53, size: 32, offset: 1536)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3548, file: !2900, line: 305, baseType: !2945, size: 160, offset: 1568)
!3586 = !DILocalVariable(name: "res_ptr", scope: !3526, file: !517, line: 190, type: !20)
!3587 = !DILocalVariable(name: "res_size", scope: !3526, file: !517, line: 191, type: !115)
!3588 = !DILocalVariable(name: "c", scope: !3523, file: !517, line: 195, type: !53)
!3589 = !DILocalVariable(name: "buf2", scope: !3523, file: !517, line: 197, type: !3590)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 408, elements: !3591)
!3591 = !{!3592}
!3592 = !DISubrange(count: 51)
!3593 = !DILocalVariable(name: "l1", scope: !3523, file: !517, line: 198, type: !115)
!3594 = !DILocalVariable(name: "l2", scope: !3523, file: !517, line: 198, type: !115)
!3595 = !DILocalVariable(name: "old_res_ptr", scope: !3523, file: !517, line: 199, type: !20)
!3596 = !DILocation(line: 196, column: 28, scope: !3523, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 589, column: 18, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3516, file: !517, line: 589, column: 3)
!3599 = !DILocation(line: 197, column: 28, scope: !3523, inlinedAt: !3597)
!3600 = !DILocation(line: 403, column: 13, scope: !3516)
!3601 = !DILocation(line: 395, column: 15, scope: !3516)
!3602 = !DILocation(line: 584, column: 15, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3516, file: !517, line: 584, column: 7)
!3604 = !DILocation(line: 584, column: 7, scope: !3516)
!3605 = !DILocation(line: 128, column: 8, scope: !3534, inlinedAt: !3597)
!3606 = !DILocation(line: 126, column: 15, scope: !3534, inlinedAt: !3597)
!3607 = !DILocation(line: 129, column: 10, scope: !3533, inlinedAt: !3597)
!3608 = !DILocation(line: 129, column: 7, scope: !3534, inlinedAt: !3597)
!3609 = !DILocation(line: 138, column: 13, scope: !3532, inlinedAt: !3597)
!3610 = !DILocation(line: 132, column: 19, scope: !3532, inlinedAt: !3597)
!3611 = !DILocation(line: 139, column: 15, scope: !3612, inlinedAt: !3597)
!3612 = distinct !DILexicalBlock(scope: !3532, file: !517, line: 139, column: 11)
!3613 = !DILocation(line: 139, column: 23, scope: !3612, inlinedAt: !3597)
!3614 = !DILocation(line: 139, column: 26, scope: !3612, inlinedAt: !3597)
!3615 = !DILocation(line: 139, column: 33, scope: !3612, inlinedAt: !3597)
!3616 = !DILocation(line: 139, column: 11, scope: !3532, inlinedAt: !3597)
!3617 = !DILocation(line: 140, column: 9, scope: !3612, inlinedAt: !3597)
!3618 = !DILocation(line: 144, column: 26, scope: !3541, inlinedAt: !3597)
!3619 = !DILocation(line: 144, column: 16, scope: !3541, inlinedAt: !3597)
!3620 = !DILocation(line: 145, column: 16, scope: !3541, inlinedAt: !3597)
!3621 = !DILocation(line: 146, column: 34, scope: !3541, inlinedAt: !3597)
!3622 = !DILocation(line: 146, column: 38, scope: !3541, inlinedAt: !3597)
!3623 = !DILocation(line: 146, column: 42, scope: !3541, inlinedAt: !3597)
!3624 = !DILocation(line: 147, column: 48, scope: !3541, inlinedAt: !3597)
!3625 = !DILocation(line: 147, column: 46, scope: !3541, inlinedAt: !3597)
!3626 = !DILocation(line: 147, column: 69, scope: !3541, inlinedAt: !3597)
!3627 = !DILocation(line: 147, column: 30, scope: !3541, inlinedAt: !3597)
!3628 = !DILocation(line: 134, column: 13, scope: !3532, inlinedAt: !3597)
!3629 = !DILocation(line: 148, column: 13, scope: !3541, inlinedAt: !3597)
!3630 = !DILocation(line: 150, column: 13, scope: !3631, inlinedAt: !3597)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !517, line: 149, column: 11)
!3632 = distinct !DILexicalBlock(scope: !3541, file: !517, line: 148, column: 13)
!3633 = !DILocation(line: 151, column: 17, scope: !3631, inlinedAt: !3597)
!3634 = !DILocation(line: 152, column: 34, scope: !3635, inlinedAt: !3597)
!3635 = distinct !DILexicalBlock(scope: !3631, file: !517, line: 151, column: 17)
!3636 = !DILocation(line: 153, column: 41, scope: !3631, inlinedAt: !3597)
!3637 = !DILocation(line: 153, column: 13, scope: !3631, inlinedAt: !3597)
!3638 = !DILocation(line: 157, column: 11, scope: !3532, inlinedAt: !3597)
!3639 = !DILocation(line: 171, column: 16, scope: !3530, inlinedAt: !3597)
!3640 = !DILocation(line: 162, column: 15, scope: !3530, inlinedAt: !3597)
!3641 = !DILocation(line: 173, column: 18, scope: !3529, inlinedAt: !3597)
!3642 = !DILocation(line: 173, column: 15, scope: !3530, inlinedAt: !3597)
!3643 = !DILocation(line: 180, column: 20, scope: !3528, inlinedAt: !3597)
!3644 = !DILocation(line: 178, column: 21, scope: !3528, inlinedAt: !3597)
!3645 = !DILocation(line: 181, column: 22, scope: !3527, inlinedAt: !3597)
!3646 = !DILocation(line: 181, column: 19, scope: !3528, inlinedAt: !3597)
!3647 = !DILocation(line: 184, column: 19, scope: !3648, inlinedAt: !3597)
!3648 = distinct !DILexicalBlock(scope: !3527, file: !517, line: 182, column: 17)
!3649 = !DILocation(line: 186, column: 17, scope: !3648, inlinedAt: !3597)
!3650 = !DILocation(line: 190, column: 25, scope: !3526, inlinedAt: !3597)
!3651 = !DILocation(line: 191, column: 26, scope: !3526, inlinedAt: !3597)
!3652 = !DILocation(line: 193, column: 19, scope: !3526, inlinedAt: !3597)
!3653 = !DILocation(line: 196, column: 23, scope: !3523, inlinedAt: !3597)
!3654 = !DILocation(line: 197, column: 23, scope: !3523, inlinedAt: !3597)
!3655 = !DILocalVariable(name: "__fp", arg: 1, scope: !3656, file: !3466, line: 63, type: !3546)
!3656 = distinct !DISubprogram(name: "getc_unlocked", scope: !3466, file: !3466, line: 63, type: !3657, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!53, !3546}
!3659 = !{!3655}
!3660 = !DILocation(line: 63, column: 22, scope: !3656, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 201, column: 27, scope: !3523, inlinedAt: !3597)
!3662 = !DILocation(line: 65, column: 10, scope: !3656, inlinedAt: !3661)
!3663 = !{!3472, !592, i64 8}
!3664 = !{!3472, !592, i64 16}
!3665 = !{!"branch_weights", i32 2000, i32 1}
!3666 = !DILocation(line: 195, column: 27, scope: !3523, inlinedAt: !3597)
!3667 = !DILocation(line: 202, column: 27, scope: !3523, inlinedAt: !3597)
!3668 = distinct !{!3668, !3669, !3672}
!3669 = !DILocation(line: 209, column: 27, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !517, line: 207, column: 25)
!3671 = distinct !DILexicalBlock(scope: !3523, file: !517, line: 206, column: 27)
!3672 = !DILocation(line: 211, column: 58, scope: !3670)
!3673 = !DILocation(line: 65, column: 10, scope: !3656, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 210, column: 33, scope: !3670, inlinedAt: !3597)
!3675 = !DILocation(line: 63, column: 22, scope: !3656, inlinedAt: !3674)
!3676 = !DILocation(line: 210, column: 29, scope: !3670, inlinedAt: !3597)
!3677 = distinct !{!3677, !3678, !3679}
!3678 = !DILocation(line: 193, column: 19, scope: !3525)
!3679 = !DILocation(line: 241, column: 21, scope: !3525)
!3680 = !DILocation(line: 216, column: 23, scope: !3523, inlinedAt: !3597)
!3681 = !DILocation(line: 217, column: 27, scope: !3682, inlinedAt: !3597)
!3682 = distinct !DILexicalBlock(scope: !3523, file: !517, line: 217, column: 27)
!3683 = !DILocation(line: 217, column: 64, scope: !3682, inlinedAt: !3597)
!3684 = !DILocation(line: 217, column: 27, scope: !3523, inlinedAt: !3597)
!3685 = !DILocation(line: 219, column: 28, scope: !3523, inlinedAt: !3597)
!3686 = !DILocation(line: 198, column: 30, scope: !3523, inlinedAt: !3597)
!3687 = !DILocation(line: 220, column: 28, scope: !3523, inlinedAt: !3597)
!3688 = !DILocation(line: 198, column: 34, scope: !3523, inlinedAt: !3597)
!3689 = !DILocation(line: 199, column: 29, scope: !3523, inlinedAt: !3597)
!3690 = !DILocation(line: 222, column: 36, scope: !3691, inlinedAt: !3597)
!3691 = distinct !DILexicalBlock(scope: !3523, file: !517, line: 222, column: 27)
!3692 = !DILocation(line: 222, column: 27, scope: !3523, inlinedAt: !3597)
!3693 = !DILocation(line: 225, column: 63, scope: !3694, inlinedAt: !3597)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !517, line: 223, column: 25)
!3695 = !DILocation(line: 225, column: 46, scope: !3694, inlinedAt: !3597)
!3696 = !DILocation(line: 226, column: 25, scope: !3694, inlinedAt: !3597)
!3697 = !DILocation(line: 229, column: 36, scope: !3698, inlinedAt: !3597)
!3698 = distinct !DILexicalBlock(scope: !3691, file: !517, line: 228, column: 25)
!3699 = !DILocation(line: 230, column: 73, scope: !3698, inlinedAt: !3597)
!3700 = !DILocation(line: 230, column: 46, scope: !3698, inlinedAt: !3597)
!3701 = !DILocation(line: 232, column: 35, scope: !3702, inlinedAt: !3597)
!3702 = distinct !DILexicalBlock(scope: !3523, file: !517, line: 232, column: 27)
!3703 = !DILocation(line: 232, column: 27, scope: !3523, inlinedAt: !3597)
!3704 = !DILocation(line: 236, column: 27, scope: !3705, inlinedAt: !3597)
!3705 = distinct !DILexicalBlock(scope: !3702, file: !517, line: 233, column: 25)
!3706 = !DILocation(line: 237, column: 27, scope: !3705, inlinedAt: !3597)
!3707 = !DILocation(line: 241, column: 21, scope: !3524, inlinedAt: !3597)
!3708 = !DILocation(line: 239, column: 39, scope: !3523, inlinedAt: !3597)
!3709 = !DILocation(line: 239, column: 50, scope: !3523, inlinedAt: !3597)
!3710 = !DILocation(line: 239, column: 61, scope: !3523, inlinedAt: !3597)
!3711 = !DILocalVariable(name: "__dest", arg: 1, scope: !3712, file: !3713, line: 88, type: !3716)
!3712 = distinct !DISubprogram(name: "strcpy", scope: !3713, file: !3713, line: 88, type: !3714, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3718)
!3713 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!20, !3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!3717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!3718 = !{!3711, !3719}
!3719 = !DILocalVariable(name: "__src", arg: 2, scope: !3712, file: !3713, line: 88, type: !3717)
!3720 = !DILocation(line: 88, column: 1, scope: !3712, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 239, column: 23, scope: !3523, inlinedAt: !3597)
!3722 = !DILocation(line: 90, column: 49, scope: !3712, inlinedAt: !3721)
!3723 = !DILocation(line: 90, column: 10, scope: !3712, inlinedAt: !3721)
!3724 = !DILocation(line: 88, column: 1, scope: !3712, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 240, column: 23, scope: !3523, inlinedAt: !3597)
!3726 = !DILocation(line: 90, column: 49, scope: !3712, inlinedAt: !3725)
!3727 = !DILocation(line: 90, column: 10, scope: !3712, inlinedAt: !3725)
!3728 = !DILocation(line: 193, column: 19, scope: !3524, inlinedAt: !3597)
!3729 = !DILocation(line: 242, column: 19, scope: !3526, inlinedAt: !3597)
!3730 = !DILocation(line: 243, column: 32, scope: !3731, inlinedAt: !3597)
!3731 = distinct !DILexicalBlock(scope: !3526, file: !517, line: 243, column: 23)
!3732 = !DILocation(line: 243, column: 23, scope: !3526, inlinedAt: !3597)
!3733 = !DILocation(line: 247, column: 33, scope: !3734, inlinedAt: !3597)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !517, line: 246, column: 21)
!3735 = !DILocation(line: 247, column: 45, scope: !3734, inlinedAt: !3597)
!3736 = !DILocation(line: 253, column: 11, scope: !3530, inlinedAt: !3597)
!3737 = !DILocation(line: 377, column: 23, scope: !3532, inlinedAt: !3597)
!3738 = !DILocation(line: 378, column: 5, scope: !3532, inlinedAt: !3597)
!3739 = !DILocation(line: 396, column: 15, scope: !3516)
!3740 = !DILocation(line: 590, column: 8, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3598, file: !517, line: 589, column: 3)
!3742 = !DILocation(line: 590, column: 17, scope: !3741)
!3743 = !DILocation(line: 589, column: 3, scope: !3598)
!3744 = !DILocation(line: 592, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !517, line: 592, column: 9)
!3746 = !DILocation(line: 592, column: 35, scope: !3745)
!3747 = !DILocation(line: 593, column: 9, scope: !3745)
!3748 = !DILocation(line: 593, column: 24, scope: !3745)
!3749 = !DILocation(line: 593, column: 31, scope: !3745)
!3750 = !DILocation(line: 593, column: 34, scope: !3745)
!3751 = !DILocation(line: 593, column: 45, scope: !3745)
!3752 = !DILocation(line: 592, column: 9, scope: !3741)
!3753 = !DILocation(line: 595, column: 29, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3745, file: !517, line: 594, column: 7)
!3755 = !DILocation(line: 595, column: 27, scope: !3754)
!3756 = !DILocation(line: 595, column: 46, scope: !3754)
!3757 = !DILocation(line: 596, column: 9, scope: !3754)
!3758 = !DILocation(line: 591, column: 19, scope: !3741)
!3759 = !DILocation(line: 591, column: 36, scope: !3741)
!3760 = !DILocation(line: 591, column: 16, scope: !3741)
!3761 = !DILocation(line: 591, column: 52, scope: !3741)
!3762 = !DILocation(line: 591, column: 69, scope: !3741)
!3763 = !DILocation(line: 591, column: 49, scope: !3741)
!3764 = distinct !{!3764, !3743, !3765}
!3765 = !DILocation(line: 597, column: 7, scope: !3598)
!3766 = !DILocation(line: 602, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3516, file: !517, line: 602, column: 7)
!3768 = !DILocation(line: 602, column: 18, scope: !3767)
!3769 = !DILocation(line: 602, column: 7, scope: !3516)
!3770 = !DILocation(line: 612, column: 3, scope: !3516)
!3771 = distinct !DISubprogram(name: "rpl_fclose", scope: !3772, file: !3772, line: 56, type: !3773, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !3815)
!3772 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!53, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !2900, line: 242, baseType: !53, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !2900, line: 247, baseType: !20, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !2900, line: 248, baseType: !20, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !2900, line: 249, baseType: !20, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !2900, line: 250, baseType: !20, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !2900, line: 251, baseType: !20, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !2900, line: 252, baseType: !20, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !2900, line: 253, baseType: !20, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !2900, line: 254, baseType: !20, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !2900, line: 256, baseType: !20, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !2900, line: 257, baseType: !20, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !2900, line: 258, baseType: !20, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !2900, line: 260, baseType: !3792, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3794)
!3794 = !{!3795, !3796, !3798}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3793, file: !2900, line: 157, baseType: !3792, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3793, file: !2900, line: 158, baseType: !3797, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3793, file: !2900, line: 162, baseType: !53, size: 32, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !2900, line: 262, baseType: !3797, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !2900, line: 264, baseType: !53, size: 32, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !2900, line: 268, baseType: !53, size: 32, offset: 928)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !2900, line: 270, baseType: !1042, size: 64, offset: 960)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !2900, line: 274, baseType: !114, size: 16, offset: 1024)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !2900, line: 275, baseType: !2928, size: 8, offset: 1040)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !2900, line: 276, baseType: !2930, size: 8, offset: 1048)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !2900, line: 280, baseType: !2934, size: 64, offset: 1088)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !2900, line: 289, baseType: !2937, size: 64, offset: 1152)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3777, file: !2900, line: 297, baseType: !22, size: 64, offset: 1216)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3777, file: !2900, line: 298, baseType: !22, size: 64, offset: 1280)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3777, file: !2900, line: 299, baseType: !22, size: 64, offset: 1344)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3777, file: !2900, line: 300, baseType: !22, size: 64, offset: 1408)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !2900, line: 302, baseType: !115, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !2900, line: 303, baseType: !53, size: 32, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !2900, line: 305, baseType: !2945, size: 160, offset: 1568)
!3815 = !{!3816, !3817, !3818, !3819}
!3816 = !DILocalVariable(name: "fp", arg: 1, scope: !3771, file: !3772, line: 56, type: !3775)
!3817 = !DILocalVariable(name: "saved_errno", scope: !3771, file: !3772, line: 58, type: !53)
!3818 = !DILocalVariable(name: "fd", scope: !3771, file: !3772, line: 59, type: !53)
!3819 = !DILocalVariable(name: "result", scope: !3771, file: !3772, line: 60, type: !53)
!3820 = !DILocation(line: 56, column: 19, scope: !3771)
!3821 = !DILocation(line: 58, column: 7, scope: !3771)
!3822 = !DILocation(line: 60, column: 7, scope: !3771)
!3823 = !DILocation(line: 63, column: 8, scope: !3771)
!3824 = !DILocation(line: 59, column: 7, scope: !3771)
!3825 = !DILocation(line: 64, column: 10, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 64, column: 7)
!3827 = !DILocation(line: 64, column: 7, scope: !3771)
!3828 = !DILocation(line: 65, column: 12, scope: !3826)
!3829 = !DILocation(line: 65, column: 5, scope: !3826)
!3830 = !DILocation(line: 70, column: 9, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 70, column: 7)
!3832 = !DILocation(line: 70, column: 23, scope: !3831)
!3833 = !DILocation(line: 70, column: 33, scope: !3831)
!3834 = !DILocation(line: 70, column: 26, scope: !3831)
!3835 = !DILocation(line: 70, column: 59, scope: !3831)
!3836 = !DILocation(line: 71, column: 7, scope: !3831)
!3837 = !DILocation(line: 71, column: 10, scope: !3831)
!3838 = !DILocation(line: 70, column: 7, scope: !3771)
!3839 = !DILocation(line: 98, column: 12, scope: !3771)
!3840 = !DILocation(line: 103, column: 7, scope: !3771)
!3841 = !DILocation(line: 72, column: 19, scope: !3831)
!3842 = !DILocation(line: 103, column: 19, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 103, column: 7)
!3844 = !DILocation(line: 105, column: 13, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3843, file: !3772, line: 104, column: 5)
!3846 = !DILocation(line: 107, column: 5, scope: !3845)
!3847 = !DILocation(line: 110, column: 1, scope: !3771)
!3848 = distinct !DISubprogram(name: "rpl_fflush", scope: !3849, file: !3849, line: 127, type: !3850, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3892)
!3849 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!53, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 7, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3854, file: !2900, line: 242, baseType: !53, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3854, file: !2900, line: 247, baseType: !20, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3854, file: !2900, line: 248, baseType: !20, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3854, file: !2900, line: 249, baseType: !20, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3854, file: !2900, line: 250, baseType: !20, size: 64, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3854, file: !2900, line: 251, baseType: !20, size: 64, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3854, file: !2900, line: 252, baseType: !20, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3854, file: !2900, line: 253, baseType: !20, size: 64, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3854, file: !2900, line: 254, baseType: !20, size: 64, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3854, file: !2900, line: 256, baseType: !20, size: 64, offset: 576)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3854, file: !2900, line: 257, baseType: !20, size: 64, offset: 640)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3854, file: !2900, line: 258, baseType: !20, size: 64, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3854, file: !2900, line: 260, baseType: !3869, size: 64, offset: 768)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3871)
!3871 = !{!3872, !3873, !3875}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3870, file: !2900, line: 157, baseType: !3869, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3870, file: !2900, line: 158, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3870, file: !2900, line: 162, baseType: !53, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3854, file: !2900, line: 262, baseType: !3874, size: 64, offset: 832)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3854, file: !2900, line: 264, baseType: !53, size: 32, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3854, file: !2900, line: 268, baseType: !53, size: 32, offset: 928)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3854, file: !2900, line: 270, baseType: !1042, size: 64, offset: 960)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3854, file: !2900, line: 274, baseType: !114, size: 16, offset: 1024)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3854, file: !2900, line: 275, baseType: !2928, size: 8, offset: 1040)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3854, file: !2900, line: 276, baseType: !2930, size: 8, offset: 1048)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3854, file: !2900, line: 280, baseType: !2934, size: 64, offset: 1088)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3854, file: !2900, line: 289, baseType: !2937, size: 64, offset: 1152)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3854, file: !2900, line: 297, baseType: !22, size: 64, offset: 1216)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3854, file: !2900, line: 298, baseType: !22, size: 64, offset: 1280)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3854, file: !2900, line: 299, baseType: !22, size: 64, offset: 1344)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3854, file: !2900, line: 300, baseType: !22, size: 64, offset: 1408)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3854, file: !2900, line: 302, baseType: !115, size: 64, offset: 1472)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3854, file: !2900, line: 303, baseType: !53, size: 32, offset: 1536)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3854, file: !2900, line: 305, baseType: !2945, size: 160, offset: 1568)
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "stream", arg: 1, scope: !3848, file: !3849, line: 127, type: !3852)
!3894 = !DILocation(line: 127, column: 19, scope: !3848)
!3895 = !DILocation(line: 148, column: 14, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3848, file: !3849, line: 148, column: 7)
!3897 = !DILocation(line: 148, column: 22, scope: !3896)
!3898 = !DILocation(line: 148, column: 27, scope: !3896)
!3899 = !DILocation(line: 148, column: 7, scope: !3848)
!3900 = !DILocation(line: 149, column: 12, scope: !3896)
!3901 = !DILocation(line: 149, column: 5, scope: !3896)
!3902 = !DILocalVariable(name: "fp", arg: 1, scope: !3903, file: !3849, line: 40, type: !3852)
!3903 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3849, file: !3849, line: 40, type: !3904, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !3852}
!3906 = !{!3902}
!3907 = !DILocation(line: 40, column: 48, scope: !3903, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 153, column: 3, scope: !3848)
!3909 = !DILocation(line: 42, column: 11, scope: !3910, inlinedAt: !3908)
!3910 = distinct !DILexicalBlock(scope: !3903, file: !3849, line: 42, column: 7)
!3911 = !DILocation(line: 42, column: 18, scope: !3910, inlinedAt: !3908)
!3912 = !DILocation(line: 42, column: 7, scope: !3903, inlinedAt: !3908)
!3913 = !DILocation(line: 44, column: 5, scope: !3910, inlinedAt: !3908)
!3914 = !DILocation(line: 155, column: 10, scope: !3848)
!3915 = !DILocation(line: 155, column: 3, scope: !3848)
!3916 = !DILocation(line: 229, column: 1, scope: !3848)
!3917 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3918, file: !3918, line: 28, type: !3919, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3962)
!3918 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!53, !3921, !3961, !53}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 7, baseType: !3923)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3923, file: !2900, line: 242, baseType: !53, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3923, file: !2900, line: 247, baseType: !20, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3923, file: !2900, line: 248, baseType: !20, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3923, file: !2900, line: 249, baseType: !20, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3923, file: !2900, line: 250, baseType: !20, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3923, file: !2900, line: 251, baseType: !20, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3923, file: !2900, line: 252, baseType: !20, size: 64, offset: 384)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3923, file: !2900, line: 253, baseType: !20, size: 64, offset: 448)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3923, file: !2900, line: 254, baseType: !20, size: 64, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3923, file: !2900, line: 256, baseType: !20, size: 64, offset: 576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3923, file: !2900, line: 257, baseType: !20, size: 64, offset: 640)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3923, file: !2900, line: 258, baseType: !20, size: 64, offset: 704)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3923, file: !2900, line: 260, baseType: !3938, size: 64, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3940)
!3940 = !{!3941, !3942, !3944}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3939, file: !2900, line: 157, baseType: !3938, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3939, file: !2900, line: 158, baseType: !3943, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3939, file: !2900, line: 162, baseType: !53, size: 32, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3923, file: !2900, line: 262, baseType: !3943, size: 64, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3923, file: !2900, line: 264, baseType: !53, size: 32, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3923, file: !2900, line: 268, baseType: !53, size: 32, offset: 928)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3923, file: !2900, line: 270, baseType: !1042, size: 64, offset: 960)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3923, file: !2900, line: 274, baseType: !114, size: 16, offset: 1024)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3923, file: !2900, line: 275, baseType: !2928, size: 8, offset: 1040)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3923, file: !2900, line: 276, baseType: !2930, size: 8, offset: 1048)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3923, file: !2900, line: 280, baseType: !2934, size: 64, offset: 1088)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3923, file: !2900, line: 289, baseType: !2937, size: 64, offset: 1152)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3923, file: !2900, line: 297, baseType: !22, size: 64, offset: 1216)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3923, file: !2900, line: 298, baseType: !22, size: 64, offset: 1280)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3923, file: !2900, line: 299, baseType: !22, size: 64, offset: 1344)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3923, file: !2900, line: 300, baseType: !22, size: 64, offset: 1408)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3923, file: !2900, line: 302, baseType: !115, size: 64, offset: 1472)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3923, file: !2900, line: 303, baseType: !53, size: 32, offset: 1536)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3923, file: !2900, line: 305, baseType: !2945, size: 160, offset: 1568)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3065, line: 57, baseType: !1042)
!3962 = !{!3963, !3964, !3965, !3966}
!3963 = !DILocalVariable(name: "fp", arg: 1, scope: !3917, file: !3918, line: 28, type: !3921)
!3964 = !DILocalVariable(name: "offset", arg: 2, scope: !3917, file: !3918, line: 28, type: !3961)
!3965 = !DILocalVariable(name: "whence", arg: 3, scope: !3917, file: !3918, line: 28, type: !53)
!3966 = !DILocalVariable(name: "pos", scope: !3967, file: !3918, line: 116, type: !3961)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !3918, line: 112, column: 5)
!3968 = distinct !DILexicalBlock(scope: !3917, file: !3918, line: 51, column: 7)
!3969 = !DILocation(line: 28, column: 15, scope: !3917)
!3970 = !DILocation(line: 28, column: 25, scope: !3917)
!3971 = !DILocation(line: 28, column: 37, scope: !3917)
!3972 = !DILocation(line: 51, column: 11, scope: !3968)
!3973 = !DILocation(line: 51, column: 31, scope: !3968)
!3974 = !DILocation(line: 51, column: 24, scope: !3968)
!3975 = !DILocation(line: 52, column: 7, scope: !3968)
!3976 = !DILocation(line: 52, column: 14, scope: !3968)
!3977 = !{!3472, !592, i64 40}
!3978 = !DILocation(line: 52, column: 35, scope: !3968)
!3979 = !{!3472, !592, i64 32}
!3980 = !DILocation(line: 52, column: 28, scope: !3968)
!3981 = !DILocation(line: 53, column: 7, scope: !3968)
!3982 = !DILocation(line: 53, column: 14, scope: !3968)
!3983 = !{!3472, !592, i64 72}
!3984 = !DILocation(line: 53, column: 28, scope: !3968)
!3985 = !DILocation(line: 51, column: 7, scope: !3917)
!3986 = !DILocation(line: 116, column: 26, scope: !3967)
!3987 = !DILocation(line: 116, column: 19, scope: !3967)
!3988 = !DILocation(line: 116, column: 13, scope: !3967)
!3989 = !DILocation(line: 117, column: 15, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3967, file: !3918, line: 117, column: 11)
!3991 = !DILocation(line: 117, column: 11, scope: !3967)
!3992 = !DILocation(line: 127, column: 11, scope: !3967)
!3993 = !DILocation(line: 127, column: 18, scope: !3967)
!3994 = !DILocation(line: 128, column: 11, scope: !3967)
!3995 = !DILocation(line: 128, column: 19, scope: !3967)
!3996 = !{!3472, !1082, i64 144}
!3997 = !DILocation(line: 159, column: 7, scope: !3967)
!3998 = !DILocation(line: 161, column: 10, scope: !3917)
!3999 = !DILocation(line: 161, column: 3, scope: !3917)
!4000 = !DILocation(line: 162, column: 1, scope: !3917)
