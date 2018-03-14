; ModuleID = 'coreutils-8.27/src/pathchk.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Diagnose invalid or unportable file names.\0A\0A  -p                  check for most POSIX systems\0A  -P                  check for empty names and leading \22-\22\0A      --portability   check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"nonportable character %s in file name %s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"limit %lu exceeded by length %lu of file name %s\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"limit %lu exceeded by length %lu of file name component %s\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !83
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !89
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !94
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !98
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !105
@.str.43 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.44 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.45 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.50, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.55, i32 0, i32 0), i8* null], align 16, !dbg !112
@.str.46 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.47 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.48 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.49 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.50 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.51 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.52 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.53 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.54 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.55 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !143
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !150
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@.str.11.56 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.57 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.58 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.59 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.60 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.61 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !170
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !177
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !179
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.93 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !185
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !194
@.str.116 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !214
@.str.3.121 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.122 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.123 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.124 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.125 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !610 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !614, metadata !615), !dbg !616
  %2 = icmp eq i32 %0, 0, !dbg !617
  br i1 %2, label %8, label %3, !dbg !619

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !620, !tbaa !622
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !620
  %6 = load i8*, i8** @program_name, align 8, !dbg !620, !tbaa !622
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !620
  br label %36, !dbg !620

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !626
  %10 = load i8*, i8** @program_name, align 8, !dbg !626, !tbaa !622
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !626
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !628
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !622
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !628
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !629
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !622
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !629
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !630
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !622
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !630
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !58, metadata !615) #11, !dbg !631
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !58, metadata !615) #11, !dbg !631
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !633
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !633
  %23 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !634
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !66, metadata !615) #11, !dbg !635
  %24 = icmp eq i8* %23, null, !dbg !636
  br i1 %24, label %31, label %25, !dbg !638

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !639
  %27 = icmp eq i32 %26, 0, !dbg !639
  br i1 %27, label %31, label %28, !dbg !640

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !641
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !641
  br label %31, !dbg !643

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !644
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !644
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !645
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !645
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !646
  unreachable, !dbg !646
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !647 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !652, metadata !615), !dbg !658
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !653, metadata !615), !dbg !659
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !654, metadata !615), !dbg !660
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !655, metadata !615), !dbg !661
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !656, metadata !615), !dbg !662
  %5 = load i8*, i8** %1, align 8, !dbg !663, !tbaa !622
  tail call void @set_program_name(i8* %5) #11, !dbg !664
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !665
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !666
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !667
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !668
  br label %10, !dbg !669

; <label>:10:                                     ; preds = %17, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %18, %17 ]
  br label %13, !dbg !670

; <label>:13:                                     ; preds = %10, %19
  %14 = phi i8 [ 1, %19 ], [ %12, %10 ]
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !656, metadata !615), !dbg !662
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !655, metadata !615), !dbg !661
  %15 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !657, metadata !615), !dbg !671
  switch i32 %15, label %24 [
    i32 -1, label %25
    i32 128, label %17
    i32 112, label %16
    i32 80, label %19
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !669, !llvm.loop !672

; <label>:16:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !655, metadata !615), !dbg !661
  br label %17, !dbg !674

; <label>:17:                                     ; preds = %13, %16
  %18 = phi i8 [ %14, %16 ], [ 1, %13 ]
  br label %10, !dbg !670, !llvm.loop !672

; <label>:19:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !656, metadata !615), !dbg !662
  br label %13, !dbg !677, !llvm.loop !672

; <label>:20:                                     ; preds = %13
  tail call void @usage(i32 0) #16, !dbg !678
  unreachable, !dbg !678

; <label>:21:                                     ; preds = %13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !622
  %23 = load i8*, i8** @Version, align 8, !dbg !679, !tbaa !622
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !679
  tail call void @exit(i32 0) #15, !dbg !679
  unreachable, !dbg !679

; <label>:24:                                     ; preds = %13
  tail call void @usage(i32 1) #16, !dbg !680
  unreachable, !dbg !680

; <label>:25:                                     ; preds = %13
  %26 = load i32, i32* @optind, align 4, !dbg !681, !tbaa !683
  %27 = icmp eq i32 %26, %0, !dbg !685
  br i1 %27, label %28, label %30, !dbg !686

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !687
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #11, !dbg !689
  tail call void @usage(i32 1) #16, !dbg !690
  unreachable, !dbg !690

; <label>:30:                                     ; preds = %25
  %31 = icmp slt i32 %26, %0, !dbg !691
  br i1 %31, label %32, label %180, !dbg !694

; <label>:32:                                     ; preds = %30
  %33 = icmp ne i8 %11, 0
  %34 = icmp ne i8 %14, 0
  %35 = bitcast i64* %3 to %struct.__mbstate_t*
  %36 = bitcast i64* %3 to i8*
  %37 = icmp eq i8 %11, 0
  %38 = select i1 %33, i64 14, i64 0
  %39 = bitcast %struct.stat* %4 to i8*
  br label %40, !dbg !694

; <label>:40:                                     ; preds = %32, %171
  %41 = phi i32 [ %26, %32 ], [ %175, %171 ]
  %42 = phi i1 [ true, %32 ], [ %173, %171 ]
  %43 = sext i32 %41 to i64, !dbg !695
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !695
  %45 = load i8*, i8** %44, align 8, !dbg !695, !tbaa !622
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !696, metadata !615) #11, !dbg !784
  call void @llvm.dbg.value(metadata i1 %33, i64 0, metadata !701, metadata !615) #11, !dbg !786
  call void @llvm.dbg.value(metadata i1 %34, i64 0, metadata !702, metadata !615) #11, !dbg !787
  %46 = call i64 @strlen(i8* %45) #14, !dbg !788
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !703, metadata !615) #11, !dbg !789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !615) #11, !dbg !790
  br i1 %34, label %47, label %65, !dbg !791

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !793, metadata !615) #11, !dbg !799
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !798, metadata !615) #11, !dbg !801
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !798, metadata !615) #11, !dbg !801
  %48 = call i8* @strchr(i8* %45, i32 45) #14, !dbg !802
  call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !798, metadata !615) #11, !dbg !801
  %49 = icmp eq i8* %48, null, !dbg !805
  br i1 %49, label %65, label %50, !dbg !805

; <label>:50:                                     ; preds = %47
  br label %55, !dbg !806

; <label>:51:                                     ; preds = %58
  %52 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !808
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !798, metadata !615) #11, !dbg !801
  %53 = call i8* @strchr(i8* %52, i32 45) #14, !dbg !802
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !798, metadata !615) #11, !dbg !801
  %54 = icmp eq i8* %53, null, !dbg !805
  br i1 %54, label %65, label %55, !dbg !805, !llvm.loop !809

; <label>:55:                                     ; preds = %50, %51
  %56 = phi i8* [ %53, %51 ], [ %48, %50 ]
  %57 = icmp eq i8* %56, %45, !dbg !806
  br i1 %57, label %62, label %58, !dbg !812

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !813
  %60 = load i8, i8* %59, align 1, !dbg !813, !tbaa !814
  %61 = icmp eq i8 %60, 47, !dbg !815
  br i1 %61, label %62, label %51, !dbg !816

; <label>:62:                                     ; preds = %58, %55
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !817
  %64 = call i8* @quotearg_style(i32 4, i8* %45) #11, !dbg !819
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63, i8* %64) #11, !dbg !820
  br label %171, !dbg !821

; <label>:65:                                     ; preds = %51, %47, %40
  %66 = icmp eq i64 %46, 0, !dbg !822
  br i1 %33, label %69, label %67, !dbg !824

; <label>:67:                                     ; preds = %65
  %68 = and i1 %34, %66, !dbg !825
  br i1 %68, label %70, label %85, !dbg !825

; <label>:69:                                     ; preds = %65
  br i1 %66, label %70, label %72, !dbg !826

; <label>:70:                                     ; preds = %69, %67
  %71 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !827
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %71) #11, !dbg !829
  br label %171, !dbg !830

; <label>:72:                                     ; preds = %69
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !831, metadata !615) #11, !dbg !853
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !836, metadata !615) #11, !dbg !857
  %73 = call i64 @strspn(i8* %45, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !858
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !837, metadata !615) #11, !dbg !859
  %74 = getelementptr inbounds i8, i8* %45, i64 %73, !dbg !860
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !838, metadata !615) #11, !dbg !861
  %75 = load i8, i8* %74, align 1, !dbg !862, !tbaa !814
  %76 = icmp eq i8 %75, 0, !dbg !862
  br i1 %76, label %109, label %77, !dbg !863

; <label>:77:                                     ; preds = %72
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #11, !dbg !864
  store i64 0, i64* %3, align 8, !dbg !865
  %78 = sub i64 %46, %73, !dbg !866
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %35, i64 0, metadata !839, metadata !615) #11, !dbg !865
  %79 = call i64 @rpl_mbrlen(i8* %74, i64 %78, %struct.__mbstate_t* nonnull %35) #11, !dbg !867
  call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !852, metadata !615) #11, !dbg !868
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !869
  %81 = icmp ult i64 %79, 17, !dbg !870
  %82 = select i1 %81, i64 %79, i64 1, !dbg !871
  %83 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %74, i64 %82) #11, !dbg !872
  %84 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %45) #11, !dbg !873
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80, i8* %83, i8* %84) #11, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #11, !dbg !875
  br label %171, !dbg !876

; <label>:85:                                     ; preds = %67
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %39) #11, !dbg !877
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !707, metadata !615) #11, !dbg !878
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !879, metadata !615) #11, !dbg !887
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !886, metadata !615) #11, !dbg !887
  %86 = call i32 @__lxstat(i32 1, i8* nonnull %45, %struct.stat* nonnull %4) #11, !dbg !890
  %87 = icmp eq i32 %86, 0, !dbg !891
  br i1 %87, label %88, label %89, !dbg !892

; <label>:88:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !615) #11, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %39) #11, !dbg !893
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !615) #11, !dbg !790
  call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !705, metadata !615) #11, !dbg !894
  br label %133, !dbg !895

; <label>:89:                                     ; preds = %85
  %90 = tail call i32* @__errno_location() #17, !dbg !896
  %91 = load i32, i32* %90, align 4, !dbg !896, !tbaa !683
  %92 = icmp ne i32 %91, 2, !dbg !898
  %93 = or i1 %66, %92, !dbg !899
  br i1 %93, label %94, label %96, !dbg !899

; <label>:94:                                     ; preds = %89
  %95 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %45) #11, !dbg !900
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %95) #11, !dbg !902
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !615) #11, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %39) #11, !dbg !893
  br label %171

; <label>:96:                                     ; preds = %89
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !615) #11, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %39) #11, !dbg !893
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !706, metadata !615) #11, !dbg !790
  %97 = icmp ugt i64 %46, 255, !dbg !903
  br i1 %97, label %98, label %117, !dbg !904

; <label>:98:                                     ; preds = %96
  %99 = load i8, i8* %45, align 1, !dbg !905, !tbaa !814
  %100 = icmp eq i8 %99, 47, !dbg !906
  %101 = select i1 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !905
  call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !755, metadata !615) #11, !dbg !907
  store i32 0, i32* %90, align 4, !dbg !908, !tbaa !683
  %102 = call i64 @pathconf(i8* %101, i32 4) #11, !dbg !909
  call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !752, metadata !615) #11, !dbg !910
  %103 = icmp slt i64 %102, 0, !dbg !911
  br i1 %103, label %104, label %109, !dbg !913

; <label>:104:                                    ; preds = %98
  %105 = load i32, i32* %90, align 4, !dbg !914, !tbaa !683
  %106 = icmp eq i32 %105, 0, !dbg !915
  br i1 %106, label %109, label %107, !dbg !916

; <label>:107:                                    ; preds = %104
  %108 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !917
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %105, i8* %108, i8* %101) #11, !dbg !919
  call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !749, metadata !615) #11, !dbg !920
  br label %171

; <label>:109:                                    ; preds = %104, %98, %72
  %110 = phi i64 [ 256, %72 ], [ %102, %104 ], [ %102, %98 ]
  call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !749, metadata !615) #11, !dbg !920
  %111 = icmp ugt i64 %110, %46, !dbg !921
  br i1 %111, label %116, label %112, !dbg !922

; <label>:112:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !756, metadata !615) #11, !dbg !923
  %113 = add i64 %110, -1, !dbg !924
  call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !759, metadata !615) #11, !dbg !925
  %114 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !926
  %115 = call i8* @quotearg_style(i32 4, i8* nonnull %45) #11, !dbg !927
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %114, i64 %113, i64 %46, i8* %115) #11, !dbg !928
  br label %171

; <label>:116:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !705, metadata !615) #11, !dbg !894
  br i1 %33, label %133, label %117, !dbg !895

; <label>:117:                                    ; preds = %96, %116
  br label %118, !dbg !929

; <label>:118:                                    ; preds = %122, %117
  %119 = phi i8* [ %45, %117 ], [ %123, %122 ]
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !934, metadata !615) #11, !dbg !936
  %120 = load i8, i8* %119, align 1, !dbg !929, !tbaa !814
  %121 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !937
  call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !934, metadata !615) #11, !dbg !936
  switch i8 %120, label %124 [
    i8 47, label %122
    i8 0, label %133
  ], !dbg !938

; <label>:122:                                    ; preds = %118, %131
  %123 = phi i8* [ %121, %118 ], [ %127, %131 ]
  br label %118, !dbg !936, !llvm.loop !939

; <label>:124:                                    ; preds = %118
  br label %125, !dbg !942

; <label>:125:                                    ; preds = %124, %129
  %126 = phi i64 [ %130, %129 ], [ 1, %124 ]
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !950, metadata !615) #11, !dbg !952
  %127 = getelementptr inbounds i8, i8* %119, i64 %126, !dbg !942
  %128 = load i8, i8* %127, align 1, !dbg !942, !tbaa !814
  switch i8 %128, label %129 [
    i8 47, label %131
    i8 0, label %131
  ], !dbg !953

; <label>:129:                                    ; preds = %125
  %130 = add i64 %126, 1, !dbg !954
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !950, metadata !615) #11, !dbg !952
  br label %125, !dbg !955, !llvm.loop !956

; <label>:131:                                    ; preds = %125, %125
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !760, metadata !615) #11, !dbg !959
  %132 = icmp ugt i64 %126, 14, !dbg !960
  call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !704, metadata !615) #11, !dbg !962
  call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !704, metadata !615) #11, !dbg !962
  br i1 %132, label %134, label %122

; <label>:133:                                    ; preds = %118, %116, %88
  call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !705, metadata !615) #11, !dbg !894
  br i1 %37, label %171, label %134, !dbg !963

; <label>:134:                                    ; preds = %131, %133
  br label %135, !dbg !964

; <label>:135:                                    ; preds = %134, %166
  %136 = phi i64 [ %158, %166 ], [ %38, %134 ]
  %137 = phi i64 [ %159, %166 ], [ 14, %134 ]
  %138 = phi i8* [ %162, %166 ], [ %45, %134 ]
  call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !704, metadata !615) #11, !dbg !962
  call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !766, metadata !615) #11, !dbg !966
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !769, metadata !615) #11, !dbg !967
  call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !934, metadata !615) #11, !dbg !968
  br label %139, !dbg !964

; <label>:139:                                    ; preds = %139, %135
  %140 = phi i8* [ %138, %135 ], [ %142, %139 ]
  call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !934, metadata !615) #11, !dbg !968
  %141 = load i8, i8* %140, align 1, !dbg !969, !tbaa !814
  %142 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !970
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !934, metadata !615) #11, !dbg !968
  switch i8 %141, label %143 [
    i8 47, label %139
    i8 0, label %171
  ], !dbg !964

; <label>:143:                                    ; preds = %139
  %144 = icmp eq i64 %136, 0, !dbg !971
  br i1 %144, label %145, label %157, !dbg !972

; <label>:145:                                    ; preds = %143
  %146 = icmp eq i8* %140, %45, !dbg !973
  %147 = select i1 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %45, !dbg !974
  call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !777, metadata !615) #11, !dbg !975
  call void @llvm.dbg.value(metadata i8 %141, i64 0, metadata !778, metadata !615) #11, !dbg !976
  %148 = tail call i32* @__errno_location() #17, !dbg !977
  store i32 0, i32* %148, align 4, !dbg !978, !tbaa !683
  store i8 0, i8* %140, align 1, !dbg !979, !tbaa !814
  %149 = call i64 @pathconf(i8* %147, i32 3) #11, !dbg !980
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !774, metadata !615) #11, !dbg !981
  store i8 %141, i8* %140, align 1, !dbg !982, !tbaa !814
  %150 = icmp sgt i64 %149, -1, !dbg !983
  br i1 %150, label %157, label %151, !dbg !985

; <label>:151:                                    ; preds = %145
  %152 = load i32, i32* %148, align 4, !dbg !986, !tbaa !683
  switch i32 %152, label %154 [
    i32 0, label %157
    i32 2, label %153
  ], !dbg !987

; <label>:153:                                    ; preds = %151
  call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !769, metadata !615) #11, !dbg !967
  br label %157, !dbg !988

; <label>:154:                                    ; preds = %151
  store i8 0, i8* %140, align 1, !dbg !990, !tbaa !814
  %155 = load i32, i32* %148, align 4, !dbg !991, !tbaa !683
  %156 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %147) #11, !dbg !992
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %156) #11, !dbg !993
  store i8 %141, i8* %140, align 1, !dbg !994, !tbaa !814
  call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !766, metadata !615) #11, !dbg !966
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !769, metadata !615) #11, !dbg !967
  br label %171

; <label>:157:                                    ; preds = %153, %151, %145, %143
  %158 = phi i64 [ %136, %143 ], [ 0, %151 ], [ 0, %145 ], [ %137, %153 ]
  %159 = phi i64 [ %136, %143 ], [ -1, %151 ], [ %149, %145 ], [ %137, %153 ]
  call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !766, metadata !615) #11, !dbg !966
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !769, metadata !615) #11, !dbg !967
  call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !949, metadata !615) #11, !dbg !995
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !950, metadata !615) #11, !dbg !997
  br label %160, !dbg !998

; <label>:160:                                    ; preds = %164, %157
  %161 = phi i64 [ 1, %157 ], [ %165, %164 ]
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !950, metadata !615) #11, !dbg !997
  %162 = getelementptr inbounds i8, i8* %140, i64 %161, !dbg !999
  %163 = load i8, i8* %162, align 1, !dbg !999, !tbaa !814
  switch i8 %163, label %164 [
    i8 47, label %166
    i8 0, label %166
  ], !dbg !1000

; <label>:164:                                    ; preds = %160
  %165 = add i64 %161, 1, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !950, metadata !615) #11, !dbg !997
  br label %160, !dbg !1002, !llvm.loop !956

; <label>:166:                                    ; preds = %160, %160
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !770, metadata !615) #11, !dbg !1003
  %167 = icmp ult i64 %159, %161, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !704, metadata !615) #11, !dbg !962
  call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !766, metadata !615) #11, !dbg !966
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !769, metadata !615) #11, !dbg !967
  br i1 %167, label %168, label %135, !dbg !1005, !llvm.loop !1006

; <label>:168:                                    ; preds = %166
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !779, metadata !615) #11, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !782, metadata !615) #11, !dbg !1010
  call void @llvm.dbg.value(metadata i8 %163, i64 0, metadata !783, metadata !615) #11, !dbg !1011
  store i8 0, i8* %162, align 1, !dbg !1012, !tbaa !814
  %169 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1013
  %170 = call i8* @quote(i8* nonnull %140) #11, !dbg !1014
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %169, i64 %159, i64 %161, i8* %170) #11, !dbg !1015
  store i8 %163, i8* %162, align 1, !dbg !1016, !tbaa !814
  br label %171

; <label>:171:                                    ; preds = %139, %62, %70, %77, %94, %107, %112, %133, %154, %168
  %172 = phi i1 [ false, %70 ], [ false, %94 ], [ false, %62 ], [ false, %77 ], [ false, %168 ], [ false, %154 ], [ true, %133 ], [ false, %112 ], [ false, %107 ], [ true, %139 ]
  %173 = and i1 %42, %172, !dbg !1017
  %174 = load i32, i32* @optind, align 4, !dbg !1018, !tbaa !683
  %175 = add nsw i32 %174, 1, !dbg !1018
  store i32 %175, i32* @optind, align 4, !dbg !1018, !tbaa !683
  %176 = icmp slt i32 %175, %0, !dbg !691
  br i1 %176, label %40, label %177, !dbg !694, !llvm.loop !1019

; <label>:177:                                    ; preds = %171
  %178 = xor i1 %173, true, !dbg !1021
  %179 = zext i1 %178 to i32, !dbg !1021
  br label %180, !dbg !1021

; <label>:180:                                    ; preds = %177, %30
  %181 = phi i32 [ 0, %30 ], [ %179, %177 ]
  ret i32 %181, !dbg !1022
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

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1023 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1025, metadata !615), !dbg !1026
  store i8* %0, i8** @file_name, align 8, !dbg !1027, !tbaa !622
  ret void, !dbg !1028
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1029 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1033, metadata !615), !dbg !1034
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1035, !tbaa !1036
  ret void, !dbg !1038
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1039 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1046, !tbaa !622
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1047
  %3 = icmp eq i32 %2, 0, !dbg !1048
  br i1 %3, label %21, label %4, !dbg !1049

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1050, !tbaa !1036, !range !1051
  %6 = icmp eq i8 %5, 0, !dbg !1050
  %7 = tail call i32* @__errno_location() #17, !dbg !1052
  br i1 %6, label %11, label %8, !dbg !1054

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1055, !tbaa !683
  %10 = icmp eq i32 %9, 32, !dbg !1056
  br i1 %10, label %21, label %11, !dbg !1057

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1043, metadata !615), !dbg !1059
  %13 = load i8*, i8** @file_name, align 8, !dbg !1060, !tbaa !622
  %14 = icmp eq i8* %13, null, !dbg !1060
  %15 = load i32, i32* %7, align 4, !tbaa !683
  br i1 %14, label %18, label %16, !dbg !1061

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1062
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1063
  br label %19, !dbg !1063

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #11, !dbg !1064
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1065, !tbaa !683
  tail call void @_exit(i32 %20) #15, !dbg !1066
  unreachable, !dbg !1066

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1067, !tbaa !622
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1069
  %24 = icmp eq i32 %23, 0, !dbg !1070
  br i1 %24, label %27, label %25, !dbg !1071

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1072, !tbaa !683
  tail call void @_exit(i32 %26) #15, !dbg !1073
  unreachable, !dbg !1073

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1074
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1075 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1077, metadata !615), !dbg !1080
  %2 = icmp eq i8* %0, null, !dbg !1081
  br i1 %2, label %3, label %6, !dbg !1083

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1084, !tbaa !622
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.43, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1086
  tail call void @abort() #15, !dbg !1087
  unreachable, !dbg !1087

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1088
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1078, metadata !615), !dbg !1089
  %8 = icmp eq i8* %7, null, !dbg !1090
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1091
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1092
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1079, metadata !615), !dbg !1093
  %11 = ptrtoint i8* %10 to i64, !dbg !1094
  %12 = ptrtoint i8* %0 to i64, !dbg !1094
  %13 = sub i64 %11, %12, !dbg !1094
  %14 = icmp sgt i64 %13, 6, !dbg !1096
  br i1 %14, label %15, label %24, !dbg !1097

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1098
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.44, i64 0, i64 0), i64 7) #14, !dbg !1099
  %18 = icmp eq i32 %17, 0, !dbg !1100
  br i1 %18, label %19, label %24, !dbg !1101

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1077, metadata !615), !dbg !1080
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.45, i64 0, i64 0), i64 3) #14, !dbg !1102
  %21 = icmp eq i32 %20, 0, !dbg !1105
  br i1 %21, label %22, label %24, !dbg !1106

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1107
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1077, metadata !615), !dbg !1080
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1109, !tbaa !622
  br label %24, !dbg !1110

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1077, metadata !615), !dbg !1080
  store i8* %25, i8** @program_name, align 8, !dbg !1111, !tbaa !622
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1112, !tbaa !622
  ret void, !dbg !1113
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1114 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1119, metadata !615), !dbg !1122
  %2 = tail call i32* @__errno_location() #17, !dbg !1123
  %3 = load i32, i32* %2, align 4, !dbg !1123, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1120, metadata !615), !dbg !1124
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1125
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1125
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1125
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1126
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1126
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1121, metadata !615), !dbg !1127
  store i32 %3, i32* %2, align 4, !dbg !1128, !tbaa !683
  ret %struct.quoting_options* %8, !dbg !1129
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1130 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1136, metadata !615), !dbg !1137
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1138
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1138
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1139
  %5 = load i32, i32* %4, align 8, !dbg !1139, !tbaa !1140
  ret i32 %5, !dbg !1142
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1143 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1147, metadata !615), !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1148, metadata !615), !dbg !1150
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1151
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1151
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1152
  store i32 %1, i32* %5, align 8, !dbg !1153, !tbaa !1140
  ret void, !dbg !1154
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1155 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1159, metadata !615), !dbg !1167
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1160, metadata !615), !dbg !1168
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1161, metadata !615), !dbg !1169
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1162, metadata !615), !dbg !1170
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1171
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1171
  %6 = lshr i8 %1, 5, !dbg !1172
  %7 = zext i8 %6 to i64, !dbg !1172
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1173
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1163, metadata !615), !dbg !1174
  %9 = and i8 %1, 31, !dbg !1175
  %10 = zext i8 %9 to i32, !dbg !1176
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1165, metadata !615), !dbg !1177
  %11 = load i32, i32* %8, align 4, !dbg !1178, !tbaa !683
  %12 = lshr i32 %11, %10, !dbg !1179
  %13 = and i32 %12, 1, !dbg !1180
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1166, metadata !615), !dbg !1181
  %14 = and i32 %2, 1, !dbg !1182
  %15 = xor i32 %13, %14, !dbg !1183
  %16 = shl i32 %15, %10, !dbg !1184
  %17 = xor i32 %16, %11, !dbg !1185
  store i32 %17, i32* %8, align 4, !dbg !1185, !tbaa !683
  ret i32 %13, !dbg !1186
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1187 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1191, metadata !615), !dbg !1194
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1192, metadata !615), !dbg !1195
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1196
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1191, metadata !615), !dbg !1194
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1191, metadata !615), !dbg !1194
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1199
  %6 = load i32, i32* %5, align 4, !dbg !1199, !tbaa !1200
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1193, metadata !615), !dbg !1201
  store i32 %1, i32* %5, align 4, !dbg !1202, !tbaa !1200
  ret i32 %6, !dbg !1203
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1204 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1208, metadata !615), !dbg !1211
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1209, metadata !615), !dbg !1212
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1210, metadata !615), !dbg !1213
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1214
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1208, metadata !615), !dbg !1211
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1208, metadata !615), !dbg !1211
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1217
  store i32 10, i32* %6, align 8, !dbg !1218, !tbaa !1140
  %7 = icmp ne i8* %1, null, !dbg !1219
  %8 = icmp ne i8* %2, null, !dbg !1221
  %9 = and i1 %7, %8, !dbg !1222
  br i1 %9, label %11, label %10, !dbg !1222

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1223
  unreachable, !dbg !1223

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1224
  store i8* %1, i8** %12, align 8, !dbg !1225, !tbaa !1226
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1227
  store i8* %2, i8** %13, align 8, !dbg !1228, !tbaa !1229
  ret void, !dbg !1230
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1231 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1235, metadata !615), !dbg !1243
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1236, metadata !615), !dbg !1244
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1237, metadata !615), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1238, metadata !615), !dbg !1246
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1239, metadata !615), !dbg !1247
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1248
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1240, metadata !615), !dbg !1249
  %8 = tail call i32* @__errno_location() #17, !dbg !1250
  %9 = load i32, i32* %8, align 4, !dbg !1250, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1241, metadata !615), !dbg !1251
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1252
  %11 = load i32, i32* %10, align 8, !dbg !1252, !tbaa !1140
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1253
  %13 = load i32, i32* %12, align 4, !dbg !1253, !tbaa !1200
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1254
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1255
  %16 = load i8*, i8** %15, align 8, !dbg !1255, !tbaa !1226
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1256
  %18 = load i8*, i8** %17, align 8, !dbg !1256, !tbaa !1229
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1242, metadata !615), !dbg !1258
  store i32 %9, i32* %8, align 4, !dbg !1259, !tbaa !683
  ret i64 %19, !dbg !1260
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1261 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1267, metadata !615), !dbg !1326
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1268, metadata !615), !dbg !1327
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1269, metadata !615), !dbg !1328
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1270, metadata !615), !dbg !1329
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1271, metadata !615), !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1272, metadata !615), !dbg !1331
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1273, metadata !615), !dbg !1332
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1274, metadata !615), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1275, metadata !615), !dbg !1334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !615), !dbg !1335
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1278, metadata !615), !dbg !1336
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1279, metadata !615), !dbg !1337
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1280, metadata !615), !dbg !1338
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1281, metadata !615), !dbg !1339
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1340
  %14 = icmp eq i64 %13, 1, !dbg !1341
  %15 = lshr i32 %5, 1, !dbg !1342
  %16 = trunc i32 %15 to i8, !dbg !1342
  %17 = and i8 %16, 1, !dbg !1342
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1283, metadata !615), !dbg !1342
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1284, metadata !615), !dbg !1343
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1285, metadata !615), !dbg !1344
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1286, metadata !615), !dbg !1345
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1346

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1286, metadata !615), !dbg !1345
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1281, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1280, metadata !615), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1275, metadata !615), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1274, metadata !615), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1271, metadata !615), !dbg !1330
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
  ], !dbg !1347

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1271, metadata !615), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1271, metadata !615), !dbg !1330
  br label %94, !dbg !1348

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1271, metadata !615), !dbg !1330
  %43 = and i8 %36, 1, !dbg !1350
  %44 = icmp eq i8 %43, 0, !dbg !1350
  br i1 %44, label %45, label %94, !dbg !1348

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1352
  br i1 %46, label %94, label %47, !dbg !1355

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1352, !tbaa !814
  br label %94, !dbg !1352

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.56, i64 0, i64 0), i32 %28), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1274, metadata !615), !dbg !1333
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), i32 %28), !dbg !1360
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1275, metadata !615), !dbg !1334
  br label %51, !dbg !1361

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1275, metadata !615), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1274, metadata !615), !dbg !1333
  %54 = and i8 %36, 1, !dbg !1362
  %55 = icmp eq i8 %54, 0, !dbg !1362
  br i1 %55, label %56, label %72, !dbg !1364

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !615), !dbg !1335
  %57 = load i8, i8* %52, align 1, !dbg !1365, !tbaa !814
  %58 = icmp eq i8 %57, 0, !dbg !1368
  br i1 %58, label %72, label %59, !dbg !1368

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1369

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1279, metadata !615), !dbg !1337
  %64 = icmp ult i64 %63, %40, !dbg !1369
  br i1 %64, label %65, label %67, !dbg !1372

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1369
  store i8 %61, i8* %66, align 1, !dbg !1369, !tbaa !814
  br label %67, !dbg !1369

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1277, metadata !615), !dbg !1335
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1277, metadata !615), !dbg !1335
  %70 = load i8, i8* %69, align 1, !dbg !1365, !tbaa !814
  %71 = icmp eq i8 %70, 0, !dbg !1368
  br i1 %71, label %72, label %60, !dbg !1368, !llvm.loop !1374

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1281, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1279, metadata !615), !dbg !1337
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1280, metadata !615), !dbg !1338
  br label %94, !dbg !1377

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1281, metadata !615), !dbg !1339
  br label %76, !dbg !1378

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1281, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1283, metadata !615), !dbg !1342
  br label %78, !dbg !1379

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1281, metadata !615), !dbg !1339
  %81 = and i8 %80, 1, !dbg !1380
  %82 = icmp eq i8 %81, 0, !dbg !1380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1281, metadata !615), !dbg !1339
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1382
  br label %84, !dbg !1382

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1281, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1271, metadata !615), !dbg !1330
  %87 = and i8 %86, 1, !dbg !1383
  %88 = icmp eq i8 %87, 0, !dbg !1383
  br i1 %88, label %89, label %94, !dbg !1385

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1386
  br i1 %90, label %94, label %91, !dbg !1389

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1386, !tbaa !814
  br label %94, !dbg !1386

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1283, metadata !615), !dbg !1342
  br label %94, !dbg !1390

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1391
  unreachable, !dbg !1391

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1283, metadata !615), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1281, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1280, metadata !615), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1275, metadata !615), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1274, metadata !615), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1271, metadata !615), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1276, metadata !615), !dbg !1392
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
  br label %122, !dbg !1393

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1286, metadata !615), !dbg !1345
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1276, metadata !615), !dbg !1392
  %131 = icmp eq i64 %126, -1, !dbg !1394
  br i1 %131, label %134, label %132, !dbg !1395

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1396
  br i1 %133, label %590, label %138, !dbg !1397

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1398
  %136 = load i8, i8* %135, align 1, !dbg !1398, !tbaa !814
  %137 = icmp eq i8 %136, 0, !dbg !1399
  br i1 %137, label %590, label %138, !dbg !1397

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1292, metadata !615), !dbg !1400
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1293, metadata !615), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1294, metadata !615), !dbg !1402
  br i1 %108, label %139, label %154, !dbg !1403

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1405
  %141 = and i1 %109, %131, !dbg !1406
  br i1 %141, label %142, label %144, !dbg !1406

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1270, metadata !615), !dbg !1329
  br label %144, !dbg !1408

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1270, metadata !615), !dbg !1329
  %146 = icmp ugt i64 %140, %145, !dbg !1409
  br i1 %146, label %154, label %147, !dbg !1410

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1411
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1412
  %150 = icmp ne i32 %149, 0, !dbg !1413
  %151 = or i1 %150, %111, !dbg !1414
  %152 = xor i1 %150, true, !dbg !1414
  %153 = zext i1 %152 to i8, !dbg !1414
  br i1 %151, label %154, label %635, !dbg !1414

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1292, metadata !615), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1270, metadata !615), !dbg !1329
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1415
  %158 = load i8, i8* %157, align 1, !dbg !1415, !tbaa !814
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1287, metadata !615), !dbg !1416
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
  ], !dbg !1417

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1418

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1419

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1293, metadata !615), !dbg !1401
  %162 = and i8 %127, 1, !dbg !1423
  %163 = icmp eq i8 %162, 0, !dbg !1423
  %164 = and i1 %113, %163, !dbg !1423
  br i1 %164, label %165, label %181, !dbg !1423

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1425
  br i1 %166, label %167, label %169, !dbg !1429

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1425
  store i8 39, i8* %168, align 1, !dbg !1425, !tbaa !814
  br label %169, !dbg !1425

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1277, metadata !615), !dbg !1335
  %171 = icmp ult i64 %170, %130, !dbg !1430
  br i1 %171, label %172, label %174, !dbg !1433

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1430
  store i8 36, i8* %173, align 1, !dbg !1430, !tbaa !814
  br label %174, !dbg !1430

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1277, metadata !615), !dbg !1335
  %176 = icmp ult i64 %175, %130, !dbg !1434
  br i1 %176, label %177, label %179, !dbg !1437

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1434
  store i8 39, i8* %178, align 1, !dbg !1434, !tbaa !814
  br label %179, !dbg !1434

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1284, metadata !615), !dbg !1343
  br label %181, !dbg !1438

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1277, metadata !615), !dbg !1335
  %184 = icmp ult i64 %182, %130, !dbg !1439
  br i1 %184, label %185, label %187, !dbg !1442

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1439
  store i8 92, i8* %186, align 1, !dbg !1439, !tbaa !814
  br label %187, !dbg !1439

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1277, metadata !615), !dbg !1335
  br i1 %105, label %189, label %470, !dbg !1443

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1445
  %191 = icmp ult i64 %190, %155, !dbg !1446
  br i1 %191, label %192, label %470, !dbg !1447

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1448
  %194 = load i8, i8* %193, align 1, !dbg !1448, !tbaa !814
  %195 = add i8 %194, -48, !dbg !1449
  %196 = icmp ult i8 %195, 10, !dbg !1449
  br i1 %196, label %197, label %470, !dbg !1449

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1450
  br i1 %198, label %199, label %201, !dbg !1454

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1450
  store i8 48, i8* %200, align 1, !dbg !1450, !tbaa !814
  br label %201, !dbg !1450

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1277, metadata !615), !dbg !1335
  %203 = icmp ult i64 %202, %130, !dbg !1455
  br i1 %203, label %204, label %206, !dbg !1458

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1455
  store i8 48, i8* %205, align 1, !dbg !1455, !tbaa !814
  br label %206, !dbg !1455

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1277, metadata !615), !dbg !1335
  br label %470, !dbg !1459

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1460

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1461

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1462

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1464

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1466
  %214 = icmp ult i64 %213, %155, !dbg !1467
  br i1 %214, label %215, label %470, !dbg !1468

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1469
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1470
  %218 = load i8, i8* %217, align 1, !dbg !1470, !tbaa !814
  %219 = icmp eq i8 %218, 63, !dbg !1471
  br i1 %219, label %220, label %470, !dbg !1472

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1473
  %222 = load i8, i8* %221, align 1, !dbg !1473, !tbaa !814
  %223 = sext i8 %222 to i32, !dbg !1473
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
  ], !dbg !1474

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1475

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1276, metadata !615), !dbg !1392
  %226 = icmp ult i64 %124, %130, !dbg !1477
  br i1 %226, label %227, label %229, !dbg !1480

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1477
  store i8 63, i8* %228, align 1, !dbg !1477, !tbaa !814
  br label %229, !dbg !1477

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1277, metadata !615), !dbg !1335
  %231 = icmp ult i64 %230, %130, !dbg !1481
  br i1 %231, label %232, label %234, !dbg !1484

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1481
  store i8 34, i8* %233, align 1, !dbg !1481, !tbaa !814
  br label %234, !dbg !1481

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1277, metadata !615), !dbg !1335
  %236 = icmp ult i64 %235, %130, !dbg !1485
  br i1 %236, label %237, label %239, !dbg !1488

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1485
  store i8 34, i8* %238, align 1, !dbg !1485, !tbaa !814
  br label %239, !dbg !1485

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1277, metadata !615), !dbg !1335
  %241 = icmp ult i64 %240, %130, !dbg !1489
  br i1 %241, label %242, label %244, !dbg !1492

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1489
  store i8 63, i8* %243, align 1, !dbg !1489, !tbaa !814
  br label %244, !dbg !1489

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1277, metadata !615), !dbg !1335
  br label %470, !dbg !1493

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1291, metadata !615), !dbg !1494
  br label %256, !dbg !1495

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1291, metadata !615), !dbg !1494
  br label %256, !dbg !1496

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1291, metadata !615), !dbg !1494
  br label %254, !dbg !1497

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1291, metadata !615), !dbg !1494
  br label %254, !dbg !1498

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1291, metadata !615), !dbg !1494
  br label %256, !dbg !1499

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1291, metadata !615), !dbg !1494
  br i1 %113, label %252, label %253, !dbg !1500

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1501

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1504

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1291, metadata !615), !dbg !1494
  br i1 %117, label %256, label %635, !dbg !1506

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1291, metadata !615), !dbg !1494
  br i1 %104, label %497, label %470, !dbg !1508

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1509
  br i1 %259, label %260, label %265, !dbg !1511

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1512, !tbaa !814
  %262 = icmp ne i8 %261, 0, !dbg !1513
  %263 = icmp ne i64 %123, 0, !dbg !1514
  %264 = or i1 %263, %262, !dbg !1516
  br i1 %264, label %470, label %271, !dbg !1516

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1517
  %267 = icmp ne i64 %123, 0, !dbg !1514
  %268 = or i1 %267, %266, !dbg !1511
  br i1 %268, label %470, label %271, !dbg !1511

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1514
  br i1 %270, label %271, label %470, !dbg !1518

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1294, metadata !615), !dbg !1402
  br label %272, !dbg !1519

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1294, metadata !615), !dbg !1402
  br i1 %117, label %470, label %635, !dbg !1520

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1294, metadata !615), !dbg !1402
  br i1 %113, label %275, label %470, !dbg !1522

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1523

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1526
  %278 = icmp ne i64 %125, 0, !dbg !1528
  %279 = or i1 %278, %277, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1268, metadata !615), !dbg !1327
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1529
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1278, metadata !615), !dbg !1336
  %282 = icmp ult i64 %124, %281, !dbg !1530
  br i1 %282, label %283, label %285, !dbg !1533

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1530
  store i8 39, i8* %284, align 1, !dbg !1530, !tbaa !814
  br label %285, !dbg !1530

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1277, metadata !615), !dbg !1335
  %287 = icmp ult i64 %286, %281, !dbg !1534
  br i1 %287, label %288, label %290, !dbg !1537

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1534
  store i8 92, i8* %289, align 1, !dbg !1534, !tbaa !814
  br label %290, !dbg !1534

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1277, metadata !615), !dbg !1335
  %292 = icmp ult i64 %291, %281, !dbg !1538
  br i1 %292, label %293, label %295, !dbg !1541

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1538
  store i8 39, i8* %294, align 1, !dbg !1538, !tbaa !814
  br label %295, !dbg !1538

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1284, metadata !615), !dbg !1343
  br label %470, !dbg !1542

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1543

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1295, metadata !615), !dbg !1544
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1545
  %300 = load i16*, i16** %299, align 8, !dbg !1545, !tbaa !622
  %301 = zext i8 %158 to i64, !dbg !1545
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1545
  %303 = load i16, i16* %302, align 2, !dbg !1545, !tbaa !1547
  %304 = lshr i16 %303, 14, !dbg !1549
  %305 = trunc i16 %304 to i8, !dbg !1549
  %306 = and i8 %305, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1298, metadata !615), !dbg !1550
  br label %362, !dbg !1551

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1552
  store i64 0, i64* %10, align 8, !dbg !1553
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1298, metadata !615), !dbg !1550
  %308 = icmp eq i64 %155, -1, !dbg !1554
  br i1 %308, label %309, label %311, !dbg !1556

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1270, metadata !615), !dbg !1329
  br label %311, !dbg !1558

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1270, metadata !615), !dbg !1329
  br label %313, !dbg !1559, !llvm.loop !1560

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1298, metadata !615), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1562
  %316 = add i64 %314, %123, !dbg !1563
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1564
  %318 = sub i64 %312, %316, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1299, metadata !615), !dbg !1566
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1312, metadata !615), !dbg !1567
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1315, metadata !615), !dbg !1569
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1570

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1298, metadata !615), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1295, metadata !615), !dbg !1544
  %321 = icmp ugt i64 %312, %316, !dbg !1571
  br i1 %321, label %322, label %347, !dbg !1573

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1574

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1295, metadata !615), !dbg !1544
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1574
  %327 = load i8, i8* %326, align 1, !dbg !1574, !tbaa !814
  %328 = icmp eq i8 %327, 0, !dbg !1573
  br i1 %328, label %347, label %329, !dbg !1575

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1295, metadata !615), !dbg !1544
  %331 = add i64 %330, %123, !dbg !1577
  %332 = icmp ult i64 %331, %312, !dbg !1571
  br i1 %332, label %323, label %347, !dbg !1573, !llvm.loop !1578

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1579
  %335 = and i1 %115, %334, !dbg !1582
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1316, metadata !615), !dbg !1583
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1316, metadata !615), !dbg !1583
  br i1 %335, label %336, label %350, !dbg !1582

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1584

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1316, metadata !615), !dbg !1583
  %339 = add i64 %338, %316, !dbg !1584
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1585
  %341 = load i8, i8* %340, align 1, !dbg !1585, !tbaa !814
  %342 = sext i8 %341 to i32, !dbg !1585
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1586

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1316, metadata !615), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1316, metadata !615), !dbg !1583
  %345 = icmp ult i64 %344, %319, !dbg !1579
  br i1 %345, label %337, label %350, !dbg !1588, !llvm.loop !1589

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1591

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1298, metadata !615), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1591
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1592, !tbaa !683
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1312, metadata !615), !dbg !1567
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1594
  %353 = icmp eq i32 %352, 0, !dbg !1594
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1298, metadata !615), !dbg !1550
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1595
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1298, metadata !615), !dbg !1550
  %355 = add i64 %319, %314, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1298, metadata !615), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1299, metadata !615), !dbg !1566
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1597
  %357 = icmp eq i32 %356, 0, !dbg !1598
  br i1 %357, label %313, label %358, !dbg !1599, !llvm.loop !1560

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1600
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1298, metadata !615), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1600
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1298, metadata !615), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1295, metadata !615), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1270, metadata !615), !dbg !1329
  %366 = and i8 %365, 1, !dbg !1601
  %367 = icmp ne i8 %366, 0, !dbg !1601
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1294, metadata !615), !dbg !1402
  %368 = icmp ult i64 %364, 2, !dbg !1602
  %369 = or i1 %367, %112, !dbg !1603
  %370 = and i1 %368, %369, !dbg !1604
  br i1 %370, label %470, label %371, !dbg !1604

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1323, metadata !615), !dbg !1606
  br label %373, !dbg !1607

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1293, metadata !615), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1292, metadata !615), !dbg !1400
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1276, metadata !615), !dbg !1392
  br i1 %369, label %426, label %380, !dbg !1608

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1613

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1293, metadata !615), !dbg !1401
  %382 = and i8 %376, 1, !dbg !1616
  %383 = icmp eq i8 %382, 0, !dbg !1616
  %384 = and i1 %113, %383, !dbg !1616
  br i1 %384, label %385, label %401, !dbg !1616

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1618
  br i1 %386, label %387, label %389, !dbg !1622

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1618
  store i8 39, i8* %388, align 1, !dbg !1618, !tbaa !814
  br label %389, !dbg !1618

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1277, metadata !615), !dbg !1335
  %391 = icmp ult i64 %390, %130, !dbg !1623
  br i1 %391, label %392, label %394, !dbg !1626

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1623
  store i8 36, i8* %393, align 1, !dbg !1623, !tbaa !814
  br label %394, !dbg !1623

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1277, metadata !615), !dbg !1335
  %396 = icmp ult i64 %395, %130, !dbg !1627
  br i1 %396, label %397, label %399, !dbg !1630

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1627
  store i8 39, i8* %398, align 1, !dbg !1627, !tbaa !814
  br label %399, !dbg !1627

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1284, metadata !615), !dbg !1343
  br label %401, !dbg !1631

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1277, metadata !615), !dbg !1335
  %404 = icmp ult i64 %402, %130, !dbg !1632
  br i1 %404, label %405, label %407, !dbg !1635

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1632
  store i8 92, i8* %406, align 1, !dbg !1632, !tbaa !814
  br label %407, !dbg !1632

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1277, metadata !615), !dbg !1335
  %409 = icmp ult i64 %408, %130, !dbg !1636
  br i1 %409, label %410, label %414, !dbg !1639

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1636
  %412 = or i8 %411, 48, !dbg !1636
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1636
  store i8 %412, i8* %413, align 1, !dbg !1636, !tbaa !814
  br label %414, !dbg !1636

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1277, metadata !615), !dbg !1335
  %416 = icmp ult i64 %415, %130, !dbg !1640
  br i1 %416, label %417, label %422, !dbg !1643

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1640
  %419 = and i8 %418, 7, !dbg !1640
  %420 = or i8 %419, 48, !dbg !1640
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1640
  store i8 %420, i8* %421, align 1, !dbg !1640, !tbaa !814
  br label %422, !dbg !1640

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1277, metadata !615), !dbg !1335
  %424 = and i8 %377, 7, !dbg !1644
  %425 = or i8 %424, 48, !dbg !1645
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1287, metadata !615), !dbg !1416
  br label %435, !dbg !1646

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1647
  %428 = icmp eq i8 %427, 0, !dbg !1647
  br i1 %428, label %435, label %429, !dbg !1649

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1650
  br i1 %430, label %431, label %433, !dbg !1654

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1650
  store i8 92, i8* %432, align 1, !dbg !1650, !tbaa !814
  br label %433, !dbg !1650

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1292, metadata !615), !dbg !1400
  br label %435, !dbg !1655

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1293, metadata !615), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1292, metadata !615), !dbg !1400
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1277, metadata !615), !dbg !1335
  %441 = add i64 %374, 1, !dbg !1656
  %442 = icmp ugt i64 %372, %441, !dbg !1658
  br i1 %442, label %443, label %535, !dbg !1659

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1660
  %445 = icmp ne i8 %444, 0, !dbg !1660
  %446 = and i8 %440, 1, !dbg !1660
  %447 = icmp eq i8 %446, 0, !dbg !1660
  %448 = and i1 %445, %447, !dbg !1660
  br i1 %448, label %449, label %460, !dbg !1660

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1663
  br i1 %450, label %451, label %453, !dbg !1667

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1663
  store i8 39, i8* %452, align 1, !dbg !1663, !tbaa !814
  br label %453, !dbg !1663

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1277, metadata !615), !dbg !1335
  %455 = icmp ult i64 %454, %130, !dbg !1668
  br i1 %455, label %456, label %458, !dbg !1671

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1668
  store i8 39, i8* %457, align 1, !dbg !1668, !tbaa !814
  br label %458, !dbg !1668

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1284, metadata !615), !dbg !1343
  br label %460, !dbg !1672

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1277, metadata !615), !dbg !1335
  %463 = icmp ult i64 %461, %130, !dbg !1673
  br i1 %463, label %464, label %466, !dbg !1676

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1673
  store i8 %438, i8* %465, align 1, !dbg !1673, !tbaa !814
  br label %466, !dbg !1673

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1276, metadata !615), !dbg !1392
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1677
  %469 = load i8, i8* %468, align 1, !dbg !1677, !tbaa !814
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1287, metadata !615), !dbg !1416
  br label %373, !dbg !1678, !llvm.loop !1679

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1294, metadata !615), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1293, metadata !615), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1292, metadata !615), !dbg !1400
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1276, metadata !615), !dbg !1392
  br i1 %106, label %482, label %481, !dbg !1682

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1684

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1685

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1686
  %485 = zext i8 %484 to i64, !dbg !1686
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1687
  %487 = load i32, i32* %486, align 4, !dbg !1687, !tbaa !683
  %488 = and i8 %477, 31, !dbg !1688
  %489 = zext i8 %488 to i32, !dbg !1689
  %490 = shl i32 1, %489, !dbg !1690
  %491 = and i32 %487, %490, !dbg !1690
  %492 = icmp eq i32 %491, 0, !dbg !1690
  %493 = icmp eq i8 %156, 0, !dbg !1691
  %494 = and i1 %493, %492, !dbg !1692
  br i1 %494, label %535, label %497, !dbg !1692

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1691
  br i1 %496, label %535, label %497, !dbg !1693

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1294, metadata !615), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1276, metadata !615), !dbg !1392
  br i1 %111, label %507, label %635, !dbg !1694

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1293, metadata !615), !dbg !1401
  %508 = and i8 %502, 1, !dbg !1696
  %509 = icmp eq i8 %508, 0, !dbg !1696
  %510 = and i1 %113, %509, !dbg !1696
  br i1 %510, label %511, label %527, !dbg !1696

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1698
  br i1 %512, label %513, label %515, !dbg !1702

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1698
  store i8 39, i8* %514, align 1, !dbg !1698, !tbaa !814
  br label %515, !dbg !1698

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1277, metadata !615), !dbg !1335
  %517 = icmp ult i64 %516, %506, !dbg !1703
  br i1 %517, label %518, label %520, !dbg !1706

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1703
  store i8 36, i8* %519, align 1, !dbg !1703, !tbaa !814
  br label %520, !dbg !1703

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1277, metadata !615), !dbg !1335
  %522 = icmp ult i64 %521, %506, !dbg !1707
  br i1 %522, label %523, label %525, !dbg !1710

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1707
  store i8 39, i8* %524, align 1, !dbg !1707, !tbaa !814
  br label %525, !dbg !1707

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1284, metadata !615), !dbg !1343
  br label %527, !dbg !1711

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1277, metadata !615), !dbg !1335
  %530 = icmp ult i64 %528, %506, !dbg !1712
  br i1 %530, label %531, label %533, !dbg !1715

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1712
  store i8 92, i8* %532, align 1, !dbg !1712, !tbaa !814
  br label %533, !dbg !1712

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1294, metadata !615), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1293, metadata !615), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1276, metadata !615), !dbg !1392
  br label %562, !dbg !1716

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1294, metadata !615), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1293, metadata !615), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1287, metadata !615), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1276, metadata !615), !dbg !1392
  %546 = and i8 %540, 1, !dbg !1716
  %547 = icmp ne i8 %546, 0, !dbg !1716
  %548 = and i8 %543, 1, !dbg !1716
  %549 = icmp eq i8 %548, 0, !dbg !1716
  %550 = and i1 %547, %549, !dbg !1716
  br i1 %550, label %551, label %562, !dbg !1716

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1719
  br i1 %552, label %553, label %555, !dbg !1723

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1719
  store i8 39, i8* %554, align 1, !dbg !1719, !tbaa !814
  br label %555, !dbg !1719

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1277, metadata !615), !dbg !1335
  %557 = icmp ult i64 %556, %545, !dbg !1724
  br i1 %557, label %558, label %560, !dbg !1727

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1724
  store i8 39, i8* %559, align 1, !dbg !1724, !tbaa !814
  br label %560, !dbg !1724

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1284, metadata !615), !dbg !1343
  br label %562, !dbg !1728

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1277, metadata !615), !dbg !1335
  %572 = icmp ult i64 %570, %563, !dbg !1729
  br i1 %572, label %573, label %575, !dbg !1732

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1729
  store i8 %565, i8* %574, align 1, !dbg !1729, !tbaa !814
  br label %575, !dbg !1729

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1277, metadata !615), !dbg !1335
  %577 = and i8 %564, 1, !dbg !1733
  %578 = icmp eq i8 %577, 0, !dbg !1733
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1286, metadata !615), !dbg !1345
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1735
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1286, metadata !615), !dbg !1345
  br label %580, !dbg !1736

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1286, metadata !615), !dbg !1345
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1285, metadata !615), !dbg !1344
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1284, metadata !615), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1270, metadata !615), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1278, metadata !615), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1276, metadata !615), !dbg !1392
  %589 = add i64 %581, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1276, metadata !615), !dbg !1392
  br label %122, !dbg !1738, !llvm.loop !1739

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1741
  %593 = and i1 %113, %592, !dbg !1743
  %594 = xor i1 %593, true, !dbg !1743
  %595 = or i1 %111, %594, !dbg !1743
  br i1 %595, label %596, label %635, !dbg !1743

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1744
  %598 = xor i1 %597, true, !dbg !1744
  %599 = and i8 %128, 1, !dbg !1746
  %600 = icmp eq i8 %599, 0, !dbg !1746
  %601 = or i1 %600, %598, !dbg !1744
  br i1 %601, label %611, label %602, !dbg !1744

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1747
  %604 = icmp eq i8 %603, 0, !dbg !1747
  br i1 %604, label %607, label %605, !dbg !1750

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1751
  br label %645, !dbg !1752

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1753
  %609 = icmp ne i64 %125, 0, !dbg !1755
  %610 = and i1 %609, %608, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !615), !dbg !1335
  br i1 %610, label %27, label %611, !dbg !1756

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1757
  %613 = and i1 %612, %111, !dbg !1759
  br i1 %613, label %614, label %630, !dbg !1759

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1277, metadata !615), !dbg !1335
  %615 = load i8, i8* %99, align 1, !dbg !1760, !tbaa !814
  %616 = icmp eq i8 %615, 0, !dbg !1763
  br i1 %616, label %630, label %617, !dbg !1763

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1764

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1277, metadata !615), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1279, metadata !615), !dbg !1337
  %622 = icmp ult i64 %621, %130, !dbg !1764
  br i1 %622, label %623, label %625, !dbg !1767

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1764
  store i8 %619, i8* %624, align 1, !dbg !1764, !tbaa !814
  br label %625, !dbg !1764

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1277, metadata !615), !dbg !1335
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1279, metadata !615), !dbg !1337
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1277, metadata !615), !dbg !1335
  %628 = load i8, i8* %627, align 1, !dbg !1760, !tbaa !814
  %629 = icmp eq i8 %628, 0, !dbg !1763
  br i1 %629, label %630, label %618, !dbg !1763, !llvm.loop !1769

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1277, metadata !615), !dbg !1335
  %632 = icmp ult i64 %631, %130, !dbg !1771
  br i1 %632, label %633, label %645, !dbg !1773

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1774
  store i8 0, i8* %634, align 1, !dbg !1775, !tbaa !814
  br label %645, !dbg !1774

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1268, metadata !615), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1270, metadata !615), !dbg !1329
  %639 = icmp ne i32 %636, 2, !dbg !1776
  %640 = icmp eq i8 %103, 0, !dbg !1778
  %641 = or i1 %639, %640, !dbg !1779
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1271, metadata !615), !dbg !1330
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1271, metadata !615), !dbg !1330
  %643 = and i32 %5, -3, !dbg !1780
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1781
  br label %645, !dbg !1782

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1783
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1784 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1788, metadata !615), !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1789, metadata !615), !dbg !1793
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1794
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1790, metadata !615), !dbg !1795
  %4 = icmp eq i8* %3, %0, !dbg !1796
  br i1 %4, label %5, label %75, !dbg !1798

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1799
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1791, metadata !615), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1801, metadata !615), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1815, metadata !615), !dbg !1820
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1816, metadata !615), !dbg !1821
  %7 = load i8, i8* %6, align 1, !dbg !1822, !tbaa !814
  %8 = sext i8 %7 to i32, !dbg !1822
  %9 = and i32 %8, -33, !dbg !1822
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1822

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1824, metadata !615), !dbg !1838
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1836, metadata !615), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1837, metadata !615), !dbg !1843
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1844
  %12 = load i8, i8* %11, align 1, !dbg !1844, !tbaa !814
  %13 = sext i8 %12 to i32, !dbg !1844
  %14 = and i32 %13, -33, !dbg !1844
  %15 = icmp eq i32 %14, 84, !dbg !1844
  br i1 %15, label %16, label %72, !dbg !1844

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1846, metadata !615), !dbg !1859
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1857, metadata !615), !dbg !1863
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !615), !dbg !1864
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1865
  %18 = load i8, i8* %17, align 1, !dbg !1865, !tbaa !814
  %19 = sext i8 %18 to i32, !dbg !1865
  %20 = and i32 %19, -33, !dbg !1865
  %21 = icmp eq i32 %20, 70, !dbg !1865
  br i1 %21, label %22, label %72, !dbg !1865

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1867, metadata !615), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1877, metadata !615), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1878, metadata !615), !dbg !1884
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1885
  %24 = load i8, i8* %23, align 1, !dbg !1885, !tbaa !814
  %25 = icmp eq i8 %24, 45, !dbg !1885
  br i1 %25, label %26, label %72, !dbg !1887

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1888, metadata !615), !dbg !1899
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1897, metadata !615), !dbg !1903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !615), !dbg !1904
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1905
  %28 = load i8, i8* %27, align 1, !dbg !1905, !tbaa !814
  %29 = icmp eq i8 %28, 56, !dbg !1905
  br i1 %29, label %30, label %72, !dbg !1907

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1908, metadata !615), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1916, metadata !615), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1917, metadata !615), !dbg !1923
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1924
  %32 = load i8, i8* %31, align 1, !dbg !1924, !tbaa !814
  %33 = icmp eq i8 %32, 0, !dbg !1924
  br i1 %33, label %34, label %72, !dbg !1926

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1927, !tbaa !814
  %36 = icmp eq i8 %35, 96, !dbg !1928
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.60, i64 0, i64 0), !dbg !1927
  br label %75, !dbg !1929

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1824, metadata !615), !dbg !1930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1836, metadata !615), !dbg !1934
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1837, metadata !615), !dbg !1935
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1936
  %40 = load i8, i8* %39, align 1, !dbg !1936, !tbaa !814
  %41 = sext i8 %40 to i32, !dbg !1936
  %42 = and i32 %41, -33, !dbg !1936
  %43 = icmp eq i32 %42, 66, !dbg !1936
  br i1 %43, label %44, label %72, !dbg !1936

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1846, metadata !615), !dbg !1937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1857, metadata !615), !dbg !1939
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !615), !dbg !1940
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1941
  %46 = load i8, i8* %45, align 1, !dbg !1941, !tbaa !814
  %47 = icmp eq i8 %46, 49, !dbg !1941
  br i1 %47, label %48, label %72, !dbg !1942

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1867, metadata !615), !dbg !1943
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1877, metadata !615), !dbg !1945
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1878, metadata !615), !dbg !1946
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1947
  %50 = load i8, i8* %49, align 1, !dbg !1947, !tbaa !814
  %51 = icmp eq i8 %50, 56, !dbg !1947
  br i1 %51, label %52, label %72, !dbg !1948

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1888, metadata !615), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1897, metadata !615), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !615), !dbg !1952
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1953
  %54 = load i8, i8* %53, align 1, !dbg !1953, !tbaa !814
  %55 = icmp eq i8 %54, 48, !dbg !1953
  br i1 %55, label %56, label %72, !dbg !1954

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1908, metadata !615), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1916, metadata !615), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1917, metadata !615), !dbg !1958
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1959
  %58 = load i8, i8* %57, align 1, !dbg !1959, !tbaa !814
  %59 = icmp eq i8 %58, 51, !dbg !1959
  br i1 %59, label %60, label %72, !dbg !1960

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1961, metadata !615), !dbg !1970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1968, metadata !615), !dbg !1974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1969, metadata !615), !dbg !1975
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1976
  %62 = load i8, i8* %61, align 1, !dbg !1976, !tbaa !814
  %63 = icmp eq i8 %62, 48, !dbg !1976
  br i1 %63, label %64, label %72, !dbg !1978

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1979, metadata !615), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !615), !dbg !1991
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1986, metadata !615), !dbg !1992
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1993
  %66 = load i8, i8* %65, align 1, !dbg !1993, !tbaa !814
  %67 = icmp eq i8 %66, 0, !dbg !1993
  br i1 %67, label %68, label %72, !dbg !1995

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1996, !tbaa !814
  %70 = icmp eq i8 %69, 96, !dbg !1997
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.61, i64 0, i64 0), !dbg !1996
  br label %75, !dbg !1998

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1999
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), !dbg !2000
  br label %75, !dbg !2001

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2002
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2003 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2007, metadata !615), !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2008, metadata !615), !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2009, metadata !615), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2013, metadata !615) #11, !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2018, metadata !615) #11, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2019, metadata !615) #11, !dbg !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2020, metadata !615) #11, !dbg !2030
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2031
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2031
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2021, metadata !615) #11, !dbg !2032
  %6 = tail call i32* @__errno_location() #17, !dbg !2033
  %7 = load i32, i32* %6, align 4, !dbg !2033, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2022, metadata !615) #11, !dbg !2034
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2035
  %9 = load i32, i32* %8, align 4, !dbg !2035, !tbaa !1200
  %10 = or i32 %9, 1, !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2023, metadata !615) #11, !dbg !2037
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2038
  %12 = load i32, i32* %11, align 8, !dbg !2038, !tbaa !1140
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2039
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2040
  %15 = load i8*, i8** %14, align 8, !dbg !2040, !tbaa !1226
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2041
  %17 = load i8*, i8** %16, align 8, !dbg !2041, !tbaa !1229
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2042
  %19 = add i64 %18, 1, !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2024, metadata !615) #11, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2045, metadata !615) #11, !dbg !2050
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2052
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2025, metadata !615) #11, !dbg !2053
  %21 = load i32, i32* %11, align 8, !dbg !2054, !tbaa !1140
  %22 = load i8*, i8** %14, align 8, !dbg !2055, !tbaa !1226
  %23 = load i8*, i8** %16, align 8, !dbg !2056, !tbaa !1229
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2057
  store i32 %7, i32* %6, align 4, !dbg !2058, !tbaa !683
  ret i8* %20, !dbg !2059
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2014 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2013, metadata !615), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2018, metadata !615), !dbg !2061
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2019, metadata !615), !dbg !2062
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2020, metadata !615), !dbg !2063
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2064
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2021, metadata !615), !dbg !2065
  %7 = tail call i32* @__errno_location() #17, !dbg !2066
  %8 = load i32, i32* %7, align 4, !dbg !2066, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2022, metadata !615), !dbg !2067
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2068
  %10 = load i32, i32* %9, align 4, !dbg !2068, !tbaa !1200
  %11 = icmp ne i64* %2, null, !dbg !2069
  %12 = xor i1 %11, true, !dbg !2069
  %13 = zext i1 %12 to i32, !dbg !2069
  %14 = or i32 %10, %13, !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2023, metadata !615), !dbg !2071
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2072
  %16 = load i32, i32* %15, align 8, !dbg !2072, !tbaa !1140
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2073
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2074
  %19 = load i8*, i8** %18, align 8, !dbg !2074, !tbaa !1226
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2075
  %21 = load i8*, i8** %20, align 8, !dbg !2075, !tbaa !1229
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2076
  %23 = add i64 %22, 1, !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2024, metadata !615), !dbg !2078
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2045, metadata !615) #11, !dbg !2079
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2081
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2025, metadata !615), !dbg !2082
  %25 = load i32, i32* %15, align 8, !dbg !2083, !tbaa !1140
  %26 = load i8*, i8** %18, align 8, !dbg !2084, !tbaa !1226
  %27 = load i8*, i8** %20, align 8, !dbg !2085, !tbaa !1229
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2086
  store i32 %8, i32* %7, align 4, !dbg !2087, !tbaa !683
  br i1 %11, label %29, label %30, !dbg !2088

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2089, !tbaa !2091
  br label %30, !dbg !2093

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2094
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2095 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2099, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2097, metadata !615), !dbg !2100
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2098, metadata !615), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2098, metadata !615), !dbg !2101
  %2 = load i32, i32* @nslots, align 4, !dbg !2102, !tbaa !683
  %3 = icmp sgt i32 %2, 1, !dbg !2105
  br i1 %3, label %4, label %13, !dbg !2106

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2107

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2098, metadata !615), !dbg !2101
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2107
  %8 = load i8*, i8** %7, align 8, !dbg !2107, !tbaa !2108
  tail call void @free(i8* %8) #11, !dbg !2110
  %9 = add nuw i64 %6, 1, !dbg !2111
  %10 = load i32, i32* @nslots, align 4, !dbg !2102, !tbaa !683
  %11 = sext i32 %10 to i64, !dbg !2105
  %12 = icmp slt i64 %9, %11, !dbg !2105
  br i1 %12, label %5, label %13, !dbg !2106, !llvm.loop !2112

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2114
  %15 = load i8*, i8** %14, align 8, !dbg !2114, !tbaa !2108
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2116
  br i1 %16, label %18, label %17, !dbg !2117

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2118
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2120, !tbaa !2121
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2122, !tbaa !2108
  br label %18, !dbg !2123

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2124
  br i1 %19, label %22, label %20, !dbg !2126

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2127
  tail call void @free(i8* %21) #11, !dbg !2129
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2130, !tbaa !622
  br label %22, !dbg !2131

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2132, !tbaa !683
  ret void, !dbg !2133
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2134 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2138, metadata !615), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2139, metadata !615), !dbg !2141
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2142
  ret i8* %3, !dbg !2143
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2144 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2148, metadata !615), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2149, metadata !615), !dbg !2163
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2150, metadata !615), !dbg !2164
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2151, metadata !615), !dbg !2165
  %5 = tail call i32* @__errno_location() #17, !dbg !2166
  %6 = load i32, i32* %5, align 4, !dbg !2166, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2152, metadata !615), !dbg !2167
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2168, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2153, metadata !615), !dbg !2169
  %8 = icmp slt i32 %0, 0, !dbg !2170
  br i1 %8, label %9, label %10, !dbg !2172

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2173
  unreachable, !dbg !2173

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2174, !tbaa !683
  %12 = icmp sgt i32 %11, %0, !dbg !2175
  br i1 %12, label %34, label %13, !dbg !2176

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2177
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2178
  br i1 %15, label %16, label %17, !dbg !2180

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2181
  unreachable, !dbg !2181

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2182
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2182
  %20 = add nsw i32 %0, 1, !dbg !2183
  %21 = sext i32 %20 to i64, !dbg !2184
  %22 = shl nsw i64 %21, 4, !dbg !2185
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2186
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2186
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2153, metadata !615), !dbg !2169
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2187, !tbaa !622
  br i1 %14, label %25, label %26, !dbg !2188

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2189, !tbaa.struct !2191
  br label %26, !dbg !2192

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2193, !tbaa !683
  %28 = sext i32 %27 to i64, !dbg !2194
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2194
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2195
  %31 = sub nsw i32 %20, %27, !dbg !2196
  %32 = sext i32 %31 to i64, !dbg !2197
  %33 = shl nsw i64 %32, 4, !dbg !2198
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2195
  store i32 %20, i32* @nslots, align 4, !dbg !2199, !tbaa !683
  br label %34, !dbg !2200

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2153, metadata !615), !dbg !2169
  %36 = sext i32 %0 to i64, !dbg !2201
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2202
  %38 = load i64, i64* %37, align 8, !dbg !2202, !tbaa !2121
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2157, metadata !615), !dbg !2203
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2204
  %40 = load i8*, i8** %39, align 8, !dbg !2204, !tbaa !2108
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2159, metadata !615), !dbg !2205
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2206
  %42 = load i32, i32* %41, align 4, !dbg !2206, !tbaa !1200
  %43 = or i32 %42, 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2160, metadata !615), !dbg !2208
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2209
  %45 = load i32, i32* %44, align 8, !dbg !2209, !tbaa !1140
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2210
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2211
  %48 = load i8*, i8** %47, align 8, !dbg !2211, !tbaa !1226
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2212
  %50 = load i8*, i8** %49, align 8, !dbg !2212, !tbaa !1229
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2161, metadata !615), !dbg !2214
  %52 = icmp ugt i64 %38, %51, !dbg !2215
  br i1 %52, label %63, label %53, !dbg !2217

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2157, metadata !615), !dbg !2203
  store i64 %54, i64* %37, align 8, !dbg !2220, !tbaa !2121
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2221
  br i1 %55, label %57, label %56, !dbg !2223

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2224
  br label %57, !dbg !2224

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2045, metadata !615) #11, !dbg !2225
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2227
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2159, metadata !615), !dbg !2205
  store i8* %58, i8** %39, align 8, !dbg !2228, !tbaa !2108
  %59 = load i32, i32* %44, align 8, !dbg !2229, !tbaa !1140
  %60 = load i8*, i8** %47, align 8, !dbg !2230, !tbaa !1226
  %61 = load i8*, i8** %49, align 8, !dbg !2231, !tbaa !1229
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2232
  br label %63, !dbg !2233

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2159, metadata !615), !dbg !2205
  store i32 %6, i32* %5, align 4, !dbg !2234, !tbaa !683
  ret i8* %64, !dbg !2235
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2236 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2240, metadata !615), !dbg !2243
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2241, metadata !615), !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2242, metadata !615), !dbg !2245
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2246
  ret i8* %4, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2248 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2252, metadata !615), !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2138, metadata !615) #11, !dbg !2254
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2139, metadata !615) #11, !dbg !2256
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2257
  ret i8* %2, !dbg !2258
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2259 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2263, metadata !615), !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2264, metadata !615), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2240, metadata !615) #11, !dbg !2267
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2241, metadata !615) #11, !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2242, metadata !615) #11, !dbg !2270
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2271
  ret i8* %3, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2273 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2281, metadata !2287), !dbg !2288
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2277, metadata !615), !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2278, metadata !615), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2279, metadata !615), !dbg !2292
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2280, metadata !615), !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2286, metadata !615) #11, !dbg !2295
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2296
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2296
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2281, metadata !615) #11, !dbg !2288
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2288
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2288
  %8 = icmp eq i32 %1, 10, !dbg !2298
  br i1 %8, label %9, label %10, !dbg !2300

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2301, !noalias !2302
  unreachable, !dbg !2301

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2281, metadata !2297) #11, !dbg !2288
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2305
  store i32 %1, i32* %11, align 8, !dbg !2305, !alias.scope !2302
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2305
  %13 = bitcast i32* %12 to i8*, !dbg !2305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2305
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2306
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2280, metadata !615), !dbg !2294
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2308
  ret i8* %14, !dbg !2309
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2310 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2281, metadata !2287), !dbg !2319
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2314, metadata !615), !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2315, metadata !615), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2316, metadata !615), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2317, metadata !615), !dbg !2324
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2325
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2318, metadata !615), !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2286, metadata !615) #11, !dbg !2327
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2328
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2281, metadata !615) #11, !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2319
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2319
  %9 = icmp eq i32 %1, 10, !dbg !2329
  br i1 %9, label %10, label %11, !dbg !2330

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2331, !noalias !2332
  unreachable, !dbg !2331

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2281, metadata !2297) #11, !dbg !2319
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2335
  store i32 %1, i32* %12, align 8, !dbg !2335, !alias.scope !2332
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2335
  %14 = bitcast i32* %13 to i8*, !dbg !2335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2336
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2318, metadata !615), !dbg !2326
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2337
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2338
  ret i8* %15, !dbg !2339
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2340 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2281, metadata !2287), !dbg !2346
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2344, metadata !615), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2345, metadata !615), !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2277, metadata !615) #11, !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2278, metadata !615) #11, !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2279, metadata !615) #11, !dbg !2353
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2354
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2280, metadata !615) #11, !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2286, metadata !615) #11, !dbg !2356
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2357
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2357
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2281, metadata !615) #11, !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2346
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2346
  %7 = icmp eq i32 %0, 10, !dbg !2358
  br i1 %7, label %8, label %9, !dbg !2359

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2360, !noalias !2361
  unreachable, !dbg !2360

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2346
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2364
  store i32 %0, i32* %10, align 8, !dbg !2364, !alias.scope !2361
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2364
  %12 = bitcast i32* %11 to i8*, !dbg !2364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2364
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2280, metadata !615) #11, !dbg !2355
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2366
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2367
  ret i8* %13, !dbg !2368
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2369 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2281, metadata !2287), !dbg !2376
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2373, metadata !615), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2374, metadata !615), !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2375, metadata !615), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2314, metadata !615) #11, !dbg !2382
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2315, metadata !615) #11, !dbg !2383
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2316, metadata !615) #11, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2317, metadata !615) #11, !dbg !2385
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2386
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2318, metadata !615) #11, !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2286, metadata !615) #11, !dbg !2388
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2389
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2389
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2281, metadata !615) #11, !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2376
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2376
  %8 = icmp eq i32 %0, 10, !dbg !2390
  br i1 %8, label %9, label %10, !dbg !2391

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2392, !noalias !2393
  unreachable, !dbg !2392

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2376
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2396
  store i32 %0, i32* %11, align 8, !dbg !2396, !alias.scope !2393
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2396
  %13 = bitcast i32* %12 to i8*, !dbg !2396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2318, metadata !615) #11, !dbg !2387
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2398
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2399
  ret i8* %14, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2401 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2405, metadata !615), !dbg !2409
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2406, metadata !615), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2407, metadata !615), !dbg !2411
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2413, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2408, metadata !615), !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1159, metadata !615), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1160, metadata !615), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1161, metadata !615), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1162, metadata !615), !dbg !2420
  %6 = lshr i8 %2, 5, !dbg !2421
  %7 = zext i8 %6 to i64, !dbg !2421
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2422
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1163, metadata !615), !dbg !2423
  %9 = and i8 %2, 31, !dbg !2424
  %10 = zext i8 %9 to i32, !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1165, metadata !615), !dbg !2426
  %11 = load i32, i32* %8, align 4, !dbg !2427, !tbaa !683
  %12 = lshr i32 %11, %10, !dbg !2428
  %13 = and i32 %12, 1, !dbg !2429
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1166, metadata !615), !dbg !2430
  %14 = xor i32 %13, 1, !dbg !2431
  %15 = shl i32 %14, %10, !dbg !2432
  %16 = xor i32 %15, %11, !dbg !2433
  store i32 %16, i32* %8, align 4, !dbg !2433, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2408, metadata !615), !dbg !2415
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2435
  ret i8* %17, !dbg !2436
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2437 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2441, metadata !615), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2442, metadata !615), !dbg !2444
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2405, metadata !615) #11, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2406, metadata !615) #11, !dbg !2447
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2407, metadata !615) #11, !dbg !2448
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2450, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2408, metadata !615) #11, !dbg !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1159, metadata !615) #11, !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1160, metadata !615) #11, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1161, metadata !615) #11, !dbg !2455
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1162, metadata !615) #11, !dbg !2456
  %5 = lshr i8 %1, 5, !dbg !2457
  %6 = zext i8 %5 to i64, !dbg !2457
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2458
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1163, metadata !615) #11, !dbg !2459
  %8 = and i8 %1, 31, !dbg !2460
  %9 = zext i8 %8 to i32, !dbg !2461
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1165, metadata !615) #11, !dbg !2462
  %10 = load i32, i32* %7, align 4, !dbg !2463, !tbaa !683
  %11 = lshr i32 %10, %9, !dbg !2464
  %12 = and i32 %11, 1, !dbg !2465
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1166, metadata !615) #11, !dbg !2466
  %13 = xor i32 %12, 1, !dbg !2467
  %14 = shl i32 %13, %9, !dbg !2468
  %15 = xor i32 %14, %10, !dbg !2469
  store i32 %15, i32* %7, align 4, !dbg !2469, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2408, metadata !615) #11, !dbg !2451
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2471
  ret i8* %16, !dbg !2472
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2473 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2475, metadata !615), !dbg !2476
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2441, metadata !615) #11, !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2442, metadata !615) #11, !dbg !2479
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2405, metadata !615) #11, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2406, metadata !615) #11, !dbg !2482
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2407, metadata !615) #11, !dbg !2483
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2484
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2485, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2408, metadata !615) #11, !dbg !2486
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1159, metadata !615) #11, !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1160, metadata !615) #11, !dbg !2489
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1161, metadata !615) #11, !dbg !2490
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1162, metadata !615) #11, !dbg !2491
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2492
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1163, metadata !615) #11, !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1165, metadata !615) #11, !dbg !2494
  %5 = load i32, i32* %4, align 4, !dbg !2495, !tbaa !683
  %6 = or i32 %5, 67108864, !dbg !2496
  store i32 %6, i32* %4, align 4, !dbg !2496, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2408, metadata !615) #11, !dbg !2486
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2497
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2498
  ret i8* %7, !dbg !2499
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2500 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2502, metadata !615), !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !615), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2405, metadata !615) #11, !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2406, metadata !615) #11, !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2407, metadata !615) #11, !dbg !2509
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2511, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2408, metadata !615) #11, !dbg !2512
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1159, metadata !615) #11, !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1160, metadata !615) #11, !dbg !2515
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1161, metadata !615) #11, !dbg !2516
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1162, metadata !615) #11, !dbg !2517
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2518
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1163, metadata !615) #11, !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1165, metadata !615) #11, !dbg !2520
  %6 = load i32, i32* %5, align 4, !dbg !2521, !tbaa !683
  %7 = or i32 %6, 67108864, !dbg !2522
  store i32 %7, i32* %5, align 4, !dbg !2522, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2408, metadata !615) #11, !dbg !2512
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2524
  ret i8* %8, !dbg !2525
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2526 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2281, metadata !2287), !dbg !2532
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2528, metadata !615), !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !615), !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2530, metadata !615), !dbg !2536
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2537
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2286, metadata !615) #11, !dbg !2538
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2539
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2281, metadata !615) #11, !dbg !2532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2281, metadata !2297) #11, !dbg !2532
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2532
  %9 = icmp eq i32 %1, 10, !dbg !2540
  br i1 %9, label %10, label %11, !dbg !2541

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2542, !noalias !2543
  unreachable, !dbg !2542

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2281, metadata !2297) #11, !dbg !2532
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2546
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2547
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2548
  store i32 %1, i32* %13, align 8, !dbg !2548
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2548
  %15 = bitcast i32* %14 to i8*, !dbg !2548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2531, metadata !615), !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1159, metadata !615), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1160, metadata !615), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1161, metadata !615), !dbg !2553
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1162, metadata !615), !dbg !2554
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1163, metadata !615), !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1165, metadata !615), !dbg !2557
  %17 = load i32, i32* %16, align 4, !dbg !2558, !tbaa !683
  %18 = or i32 %17, 67108864, !dbg !2559
  store i32 %18, i32* %16, align 4, !dbg !2559, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2531, metadata !615), !dbg !2549
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2561
  ret i8* %19, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2563 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2567, metadata !615), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2568, metadata !615), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2569, metadata !615), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2570, metadata !615), !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2575, metadata !615) #11, !dbg !2585
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2580, metadata !615) #11, !dbg !2587
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2581, metadata !615) #11, !dbg !2588
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2582, metadata !615) #11, !dbg !2589
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2583, metadata !615) #11, !dbg !2590
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2591
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2592, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2584, metadata !615) #11, !dbg !2593
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1208, metadata !615) #11, !dbg !2594
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1209, metadata !615) #11, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1210, metadata !615) #11, !dbg !2597
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1208, metadata !615) #11, !dbg !2594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1208, metadata !615) #11, !dbg !2594
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2598
  store i32 10, i32* %7, align 8, !dbg !2599, !tbaa !1140
  %8 = icmp ne i8* %1, null, !dbg !2600
  %9 = icmp ne i8* %2, null, !dbg !2601
  %10 = and i1 %8, %9, !dbg !2602
  br i1 %10, label %12, label %11, !dbg !2602

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2603
  unreachable, !dbg !2603

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2604
  store i8* %1, i8** %13, align 8, !dbg !2605, !tbaa !1226
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2606
  store i8* %2, i8** %14, align 8, !dbg !2607, !tbaa !1229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2584, metadata !615) #11, !dbg !2593
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2608
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2609
  ret i8* %15, !dbg !2610
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2576 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2575, metadata !615), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2580, metadata !615), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2581, metadata !615), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2582, metadata !615), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2583, metadata !615), !dbg !2615
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2617, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2584, metadata !615), !dbg !2618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1208, metadata !615) #11, !dbg !2619
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1209, metadata !615) #11, !dbg !2621
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1210, metadata !615) #11, !dbg !2622
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1208, metadata !615) #11, !dbg !2619
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1208, metadata !615) #11, !dbg !2619
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2623
  store i32 10, i32* %8, align 8, !dbg !2624, !tbaa !1140
  %9 = icmp ne i8* %1, null, !dbg !2625
  %10 = icmp ne i8* %2, null, !dbg !2626
  %11 = and i1 %9, %10, !dbg !2627
  br i1 %11, label %13, label %12, !dbg !2627

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2628
  unreachable, !dbg !2628

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2629
  store i8* %1, i8** %14, align 8, !dbg !2630, !tbaa !1226
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2631
  store i8* %2, i8** %15, align 8, !dbg !2632, !tbaa !1229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2584, metadata !615), !dbg !2618
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2633
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2634
  ret i8* %16, !dbg !2635
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2636 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2640, metadata !615), !dbg !2643
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2641, metadata !615), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2642, metadata !615), !dbg !2645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !615) #11, !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2568, metadata !615) #11, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2569, metadata !615) #11, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2570, metadata !615) #11, !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2575, metadata !615) #11, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2580, metadata !615) #11, !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2581, metadata !615) #11, !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2582, metadata !615) #11, !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2583, metadata !615) #11, !dbg !2656
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2657
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2658, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2584, metadata !615) #11, !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1208, metadata !615) #11, !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1209, metadata !615) #11, !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1210, metadata !615) #11, !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1208, metadata !615) #11, !dbg !2660
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1208, metadata !615) #11, !dbg !2660
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2664
  store i32 10, i32* %6, align 8, !dbg !2665, !tbaa !1140
  %7 = icmp ne i8* %0, null, !dbg !2666
  %8 = icmp ne i8* %1, null, !dbg !2667
  %9 = and i1 %7, %8, !dbg !2668
  br i1 %9, label %11, label %10, !dbg !2668

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2669
  unreachable, !dbg !2669

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2670
  store i8* %0, i8** %12, align 8, !dbg !2671, !tbaa !1226
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2672
  store i8* %1, i8** %13, align 8, !dbg !2673, !tbaa !1229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2584, metadata !615) #11, !dbg !2659
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2675
  ret i8* %14, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2677 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2681, metadata !615), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2682, metadata !615), !dbg !2686
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2683, metadata !615), !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2684, metadata !615), !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2575, metadata !615) #11, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2580, metadata !615) #11, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2581, metadata !615) #11, !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2582, metadata !615) #11, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2583, metadata !615) #11, !dbg !2694
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2695
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2696, !tbaa.struct !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2584, metadata !615) #11, !dbg !2697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1208, metadata !615) #11, !dbg !2698
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1209, metadata !615) #11, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1210, metadata !615) #11, !dbg !2701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1208, metadata !615) #11, !dbg !2698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1208, metadata !615) #11, !dbg !2698
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2702
  store i32 10, i32* %7, align 8, !dbg !2703, !tbaa !1140
  %8 = icmp ne i8* %0, null, !dbg !2704
  %9 = icmp ne i8* %1, null, !dbg !2705
  %10 = and i1 %8, %9, !dbg !2706
  br i1 %10, label %12, label %11, !dbg !2706

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2707
  unreachable, !dbg !2707

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2708
  store i8* %0, i8** %13, align 8, !dbg !2709, !tbaa !1226
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2710
  store i8* %1, i8** %14, align 8, !dbg !2711, !tbaa !1229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2584, metadata !615) #11, !dbg !2697
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2712
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2713
  ret i8* %15, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2715 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2719, metadata !615), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2720, metadata !615), !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2721, metadata !615), !dbg !2724
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2725
  ret i8* %4, !dbg !2726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2727 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2731, metadata !615), !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2732, metadata !615), !dbg !2734
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2719, metadata !615) #11, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2720, metadata !615) #11, !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2721, metadata !615) #11, !dbg !2738
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2739
  ret i8* %3, !dbg !2740
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2741 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2745, metadata !615), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2746, metadata !615), !dbg !2748
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2719, metadata !615) #11, !dbg !2749
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2720, metadata !615) #11, !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2721, metadata !615) #11, !dbg !2752
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2753
  ret i8* %3, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2755 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2759, metadata !615), !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2745, metadata !615) #11, !dbg !2761
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2746, metadata !615) #11, !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2719, metadata !615) #11, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2720, metadata !615) #11, !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2721, metadata !615) #11, !dbg !2767
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2768
  ret i8* %2, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2770 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2827, metadata !615), !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !615), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2829, metadata !615), !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2830, metadata !615), !dbg !2836
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2831, metadata !615), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2832, metadata !615), !dbg !2838
  %7 = icmp eq i8* %1, null, !dbg !2839
  br i1 %7, label %10, label %8, !dbg !2841

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2842
  br label %12, !dbg !2842

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2843
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #11, !dbg !2844
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !2844
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.77, i64 0, i64 0), i32 5) #11, !dbg !2845
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !2845
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
  ], !dbg !2846

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2847
  unreachable, !dbg !2847

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #11, !dbg !2849
  %20 = load i8*, i8** %4, align 8, !dbg !2849, !tbaa !622
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2849
  br label %146, !dbg !2850

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.79, i64 0, i64 0), i32 5) #11, !dbg !2851
  %24 = load i8*, i8** %4, align 8, !dbg !2851, !tbaa !622
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2851
  %26 = load i8*, i8** %25, align 8, !dbg !2851, !tbaa !622
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2851
  br label %146, !dbg !2852

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #11, !dbg !2853
  %30 = load i8*, i8** %4, align 8, !dbg !2853, !tbaa !622
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2853
  %32 = load i8*, i8** %31, align 8, !dbg !2853, !tbaa !622
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2853
  %34 = load i8*, i8** %33, align 8, !dbg !2853, !tbaa !622
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2853
  br label %146, !dbg !2854

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #11, !dbg !2855
  %38 = load i8*, i8** %4, align 8, !dbg !2855, !tbaa !622
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2855
  %40 = load i8*, i8** %39, align 8, !dbg !2855, !tbaa !622
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2855
  %42 = load i8*, i8** %41, align 8, !dbg !2855, !tbaa !622
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2855
  %44 = load i8*, i8** %43, align 8, !dbg !2855, !tbaa !622
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2855
  br label %146, !dbg !2856

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #11, !dbg !2857
  %48 = load i8*, i8** %4, align 8, !dbg !2857, !tbaa !622
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2857
  %50 = load i8*, i8** %49, align 8, !dbg !2857, !tbaa !622
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2857
  %52 = load i8*, i8** %51, align 8, !dbg !2857, !tbaa !622
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2857
  %54 = load i8*, i8** %53, align 8, !dbg !2857, !tbaa !622
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2857
  %56 = load i8*, i8** %55, align 8, !dbg !2857, !tbaa !622
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2857
  br label %146, !dbg !2858

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #11, !dbg !2859
  %60 = load i8*, i8** %4, align 8, !dbg !2859, !tbaa !622
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2859
  %62 = load i8*, i8** %61, align 8, !dbg !2859, !tbaa !622
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2859
  %64 = load i8*, i8** %63, align 8, !dbg !2859, !tbaa !622
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2859
  %66 = load i8*, i8** %65, align 8, !dbg !2859, !tbaa !622
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2859
  %68 = load i8*, i8** %67, align 8, !dbg !2859, !tbaa !622
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2859
  %70 = load i8*, i8** %69, align 8, !dbg !2859, !tbaa !622
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2859
  br label %146, !dbg !2860

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #11, !dbg !2861
  %74 = load i8*, i8** %4, align 8, !dbg !2861, !tbaa !622
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2861
  %76 = load i8*, i8** %75, align 8, !dbg !2861, !tbaa !622
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2861
  %78 = load i8*, i8** %77, align 8, !dbg !2861, !tbaa !622
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2861
  %80 = load i8*, i8** %79, align 8, !dbg !2861, !tbaa !622
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2861
  %82 = load i8*, i8** %81, align 8, !dbg !2861, !tbaa !622
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2861
  %84 = load i8*, i8** %83, align 8, !dbg !2861, !tbaa !622
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2861
  %86 = load i8*, i8** %85, align 8, !dbg !2861, !tbaa !622
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2861
  br label %146, !dbg !2862

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #11, !dbg !2863
  %90 = load i8*, i8** %4, align 8, !dbg !2863, !tbaa !622
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2863
  %92 = load i8*, i8** %91, align 8, !dbg !2863, !tbaa !622
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2863
  %94 = load i8*, i8** %93, align 8, !dbg !2863, !tbaa !622
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2863
  %96 = load i8*, i8** %95, align 8, !dbg !2863, !tbaa !622
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2863
  %98 = load i8*, i8** %97, align 8, !dbg !2863, !tbaa !622
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2863
  %100 = load i8*, i8** %99, align 8, !dbg !2863, !tbaa !622
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2863
  %102 = load i8*, i8** %101, align 8, !dbg !2863, !tbaa !622
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2863
  %104 = load i8*, i8** %103, align 8, !dbg !2863, !tbaa !622
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2863
  br label %146, !dbg !2864

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #11, !dbg !2865
  %108 = load i8*, i8** %4, align 8, !dbg !2865, !tbaa !622
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2865
  %110 = load i8*, i8** %109, align 8, !dbg !2865, !tbaa !622
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2865
  %112 = load i8*, i8** %111, align 8, !dbg !2865, !tbaa !622
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2865
  %114 = load i8*, i8** %113, align 8, !dbg !2865, !tbaa !622
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2865
  %116 = load i8*, i8** %115, align 8, !dbg !2865, !tbaa !622
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2865
  %118 = load i8*, i8** %117, align 8, !dbg !2865, !tbaa !622
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2865
  %120 = load i8*, i8** %119, align 8, !dbg !2865, !tbaa !622
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2865
  %122 = load i8*, i8** %121, align 8, !dbg !2865, !tbaa !622
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2865
  %124 = load i8*, i8** %123, align 8, !dbg !2865, !tbaa !622
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2865
  br label %146, !dbg !2866

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #11, !dbg !2867
  %128 = load i8*, i8** %4, align 8, !dbg !2867, !tbaa !622
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2867
  %130 = load i8*, i8** %129, align 8, !dbg !2867, !tbaa !622
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2867
  %132 = load i8*, i8** %131, align 8, !dbg !2867, !tbaa !622
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2867
  %134 = load i8*, i8** %133, align 8, !dbg !2867, !tbaa !622
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2867
  %136 = load i8*, i8** %135, align 8, !dbg !2867, !tbaa !622
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2867
  %138 = load i8*, i8** %137, align 8, !dbg !2867, !tbaa !622
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2867
  %140 = load i8*, i8** %139, align 8, !dbg !2867, !tbaa !622
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2867
  %142 = load i8*, i8** %141, align 8, !dbg !2867, !tbaa !622
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2867
  %144 = load i8*, i8** %143, align 8, !dbg !2867, !tbaa !622
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2867
  br label %146, !dbg !2868

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2869
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2870 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2874, metadata !615), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2875, metadata !615), !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2876, metadata !615), !dbg !2882
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2877, metadata !615), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2878, metadata !615), !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2879, metadata !615), !dbg !2885
  br label %6, !dbg !2886

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2879, metadata !615), !dbg !2885
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2888
  %9 = load i8*, i8** %8, align 8, !dbg !2888, !tbaa !622
  %10 = icmp eq i8* %9, null, !dbg !2890
  %11 = add i64 %7, 1, !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2879, metadata !615), !dbg !2885
  br i1 %10, label %12, label %6, !dbg !2890, !llvm.loop !2892

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2894
  ret void, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2896 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2907, metadata !615), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2908, metadata !615), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2909, metadata !615), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2910, metadata !615), !dbg !2918
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2911, metadata !615), !dbg !2919
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2920
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2920
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2913, metadata !615), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %11 = load i32, i32* %8, align 8, !dbg !2923
  %12 = icmp ult i32 %11, 41, !dbg !2923
  br i1 %12, label %13, label %18, !dbg !2923

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2923
  %15 = sext i32 %11 to i64, !dbg !2923
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2923
  %17 = add i32 %11, 8, !dbg !2923
  store i32 %17, i32* %8, align 8, !dbg !2923
  br label %21, !dbg !2923

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2923
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2923
  store i8* %20, i8** %10, align 8, !dbg !2923
  br label %21, !dbg !2923

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2923
  %25 = load i8*, i8** %24, align 8, !dbg !2923
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2926
  store i8* %25, i8** %26, align 16, !dbg !2927, !tbaa !622
  %27 = icmp eq i8* %25, null, !dbg !2928
  br i1 %27, label %30, label %28, !dbg !2929

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %29 = icmp ult i32 %22, 41, !dbg !2923
  br i1 %29, label %35, label %32, !dbg !2923

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2931
  ret void, !dbg !2931

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2923
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2923
  store i8* %34, i8** %10, align 8, !dbg !2923
  br label %40, !dbg !2923

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2923
  %37 = sext i32 %22 to i64, !dbg !2923
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2923
  %39 = add i32 %22, 8, !dbg !2923
  store i32 %39, i32* %8, align 8, !dbg !2923
  br label %40, !dbg !2923

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2923
  %44 = load i8*, i8** %43, align 8, !dbg !2923
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2926
  store i8* %44, i8** %45, align 8, !dbg !2927, !tbaa !622
  %46 = icmp eq i8* %44, null, !dbg !2928
  br i1 %46, label %30, label %47, !dbg !2929

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %48 = icmp ult i32 %41, 41, !dbg !2923
  br i1 %48, label %52, label %49, !dbg !2923

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2923
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2923
  store i8* %51, i8** %10, align 8, !dbg !2923
  br label %57, !dbg !2923

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2923
  %54 = sext i32 %41 to i64, !dbg !2923
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2923
  %56 = add i32 %41, 8, !dbg !2923
  store i32 %56, i32* %8, align 8, !dbg !2923
  br label %57, !dbg !2923

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2923
  %61 = load i8*, i8** %60, align 8, !dbg !2923
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2926
  store i8* %61, i8** %62, align 16, !dbg !2927, !tbaa !622
  %63 = icmp eq i8* %61, null, !dbg !2928
  br i1 %63, label %30, label %64, !dbg !2929

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %65 = icmp ult i32 %58, 41, !dbg !2923
  br i1 %65, label %69, label %66, !dbg !2923

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2923
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2923
  store i8* %68, i8** %10, align 8, !dbg !2923
  br label %74, !dbg !2923

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2923
  %71 = sext i32 %58 to i64, !dbg !2923
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2923
  %73 = add i32 %58, 8, !dbg !2923
  store i32 %73, i32* %8, align 8, !dbg !2923
  br label %74, !dbg !2923

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2923
  %78 = load i8*, i8** %77, align 8, !dbg !2923
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2926
  store i8* %78, i8** %79, align 8, !dbg !2927, !tbaa !622
  %80 = icmp eq i8* %78, null, !dbg !2928
  br i1 %80, label %30, label %81, !dbg !2929

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %82 = icmp ult i32 %75, 41, !dbg !2923
  br i1 %82, label %86, label %83, !dbg !2923

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2923
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2923
  store i8* %85, i8** %10, align 8, !dbg !2923
  br label %91, !dbg !2923

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2923
  %88 = sext i32 %75 to i64, !dbg !2923
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2923
  %90 = add i32 %75, 8, !dbg !2923
  store i32 %90, i32* %8, align 8, !dbg !2923
  br label %91, !dbg !2923

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2923
  %95 = load i8*, i8** %94, align 8, !dbg !2923
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2926
  store i8* %95, i8** %96, align 16, !dbg !2927, !tbaa !622
  %97 = icmp eq i8* %95, null, !dbg !2928
  br i1 %97, label %30, label %98, !dbg !2929

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %99 = icmp ult i32 %92, 41, !dbg !2923
  br i1 %99, label %103, label %100, !dbg !2923

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2923
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2923
  store i8* %102, i8** %10, align 8, !dbg !2923
  br label %108, !dbg !2923

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2923
  %105 = sext i32 %92 to i64, !dbg !2923
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2923
  %107 = add i32 %92, 8, !dbg !2923
  store i32 %107, i32* %8, align 8, !dbg !2923
  br label %108, !dbg !2923

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2923
  %111 = load i8*, i8** %110, align 8, !dbg !2923
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2926
  store i8* %111, i8** %112, align 8, !dbg !2927, !tbaa !622
  %113 = icmp eq i8* %111, null, !dbg !2928
  br i1 %113, label %30, label %114, !dbg !2929

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %115 = load i8*, i8** %10, align 8, !dbg !2923
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2923
  store i8* %116, i8** %10, align 8, !dbg !2923
  %117 = bitcast i8* %115 to i8**, !dbg !2923
  %118 = load i8*, i8** %117, align 8, !dbg !2923
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2926
  store i8* %118, i8** %119, align 16, !dbg !2927, !tbaa !622
  %120 = icmp eq i8* %118, null, !dbg !2928
  br i1 %120, label %30, label %121, !dbg !2929

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %122 = load i8*, i8** %10, align 8, !dbg !2923
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2923
  store i8* %123, i8** %10, align 8, !dbg !2923
  %124 = bitcast i8* %122 to i8**, !dbg !2923
  %125 = load i8*, i8** %124, align 8, !dbg !2923
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2926
  store i8* %125, i8** %126, align 8, !dbg !2927, !tbaa !622
  %127 = icmp eq i8* %125, null, !dbg !2928
  br i1 %127, label %30, label %128, !dbg !2929

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %129 = load i8*, i8** %10, align 8, !dbg !2923
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2923
  store i8* %130, i8** %10, align 8, !dbg !2923
  %131 = bitcast i8* %129 to i8**, !dbg !2923
  %132 = load i8*, i8** %131, align 8, !dbg !2923
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2926
  store i8* %132, i8** %133, align 16, !dbg !2927, !tbaa !622
  %134 = icmp eq i8* %132, null, !dbg !2928
  br i1 %134, label %30, label %135, !dbg !2929

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2912, metadata !615), !dbg !2922
  %136 = load i8*, i8** %10, align 8, !dbg !2923
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2923
  store i8* %137, i8** %10, align 8, !dbg !2923
  %138 = bitcast i8* %136 to i8**, !dbg !2923
  %139 = load i8*, i8** %138, align 8, !dbg !2923
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2926
  store i8* %139, i8** %140, align 8, !dbg !2927, !tbaa !622
  %141 = icmp eq i8* %139, null, !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2912, metadata !615), !dbg !2922
  %142 = select i1 %141, i64 9, i64 10, !dbg !2929
  br label %30, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2932 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2936, metadata !615), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2937, metadata !615), !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2938, metadata !615), !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2939, metadata !615), !dbg !2950
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2951
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2951
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2940, metadata !615), !dbg !2952
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2953
  call void @llvm.va_start(i8* nonnull %6), !dbg !2953
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2954
  call void @llvm.va_end(i8* nonnull %6), !dbg !2955
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2956
  ret void, !dbg !2956
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2957 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #11, !dbg !2958
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.91, i64 0, i64 0)) #11, !dbg !2958
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !2959
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.92, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.93, i64 0, i64 0)) #11, !dbg !2959
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !2960
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2960, !tbaa !622
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !2960
  ret void, !dbg !2961
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2962 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2966, metadata !615), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2967, metadata !615), !dbg !2969
  %3 = udiv i64 9223372036854775807, %1, !dbg !2970
  %4 = icmp ult i64 %3, %0, !dbg !2970
  br i1 %4, label %5, label %6, !dbg !2972

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2973
  unreachable, !dbg !2973

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2975, metadata !615) #11, !dbg !2982
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2984
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2981, metadata !615) #11, !dbg !2985
  %9 = icmp eq i8* %8, null, !dbg !2986
  %10 = icmp ne i64 %7, 0, !dbg !2988
  %11 = and i1 %10, %9, !dbg !2989
  br i1 %11, label %12, label %13, !dbg !2989

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2990
  unreachable, !dbg !2990

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2991
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2975, metadata !615), !dbg !2992
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2993
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2981, metadata !615), !dbg !2994
  %3 = icmp eq i8* %2, null, !dbg !2995
  %4 = icmp ne i64 %0, 0, !dbg !2996
  %5 = and i1 %4, %3, !dbg !2997
  br i1 %5, label %6, label %7, !dbg !2997

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2998
  unreachable, !dbg !2998

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2999
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3000 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3004, metadata !615), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3005, metadata !615), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3006, metadata !615), !dbg !3009
  %4 = udiv i64 9223372036854775807, %2, !dbg !3010
  %5 = icmp ult i64 %4, %1, !dbg !3010
  br i1 %5, label %6, label %7, !dbg !3012

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3013
  unreachable, !dbg !3013

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !615) #11, !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3020, metadata !615) #11, !dbg !3023
  %9 = icmp eq i64 %8, 0, !dbg !3024
  %10 = icmp ne i8* %0, null, !dbg !3026
  %11 = and i1 %10, %9, !dbg !3027
  br i1 %11, label %12, label %13, !dbg !3027

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3028
  br label %19, !dbg !3030

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3015, metadata !615) #11, !dbg !3021
  %15 = icmp eq i8* %14, null, !dbg !3032
  %16 = icmp ne i64 %8, 0, !dbg !3034
  %17 = and i1 %16, %15, !dbg !3035
  br i1 %17, label %18, label %19, !dbg !3035

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3036
  unreachable, !dbg !3036

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3037
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3016 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !615), !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3020, metadata !615), !dbg !3039
  %3 = icmp eq i64 %1, 0, !dbg !3040
  %4 = icmp ne i8* %0, null, !dbg !3041
  %5 = and i1 %4, %3, !dbg !3042
  br i1 %5, label %6, label %7, !dbg !3042

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3043
  br label %13, !dbg !3044

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3015, metadata !615), !dbg !3038
  %9 = icmp eq i8* %8, null, !dbg !3046
  %10 = icmp ne i64 %1, 0, !dbg !3047
  %11 = and i1 %10, %9, !dbg !3048
  br i1 %11, label %12, label %13, !dbg !3048

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3049
  unreachable, !dbg !3049

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3050
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !575 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !580, metadata !615), !dbg !3051
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !581, metadata !615), !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !582, metadata !615), !dbg !3053
  %4 = load i64, i64* %1, align 8, !dbg !3054, !tbaa !2091
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !583, metadata !615), !dbg !3055
  %5 = icmp eq i8* %0, null, !dbg !3056
  br i1 %5, label %6, label %13, !dbg !3058

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3059
  br i1 %7, label %8, label %17, !dbg !3062

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !583, metadata !615), !dbg !3055
  %10 = icmp ugt i64 %2, 128, !dbg !3065
  %11 = zext i1 %10 to i64, !dbg !3065
  %12 = add nuw nsw i64 %9, %11, !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !583, metadata !615), !dbg !3055
  br label %17, !dbg !3067

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3068
  %15 = icmp ugt i64 %14, %4, !dbg !3071
  br i1 %15, label %20, label %16, !dbg !3072

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3073
  unreachable, !dbg !3073

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !3055
  store i64 %18, i64* %1, align 8, !dbg !3074, !tbaa !2091
  %19 = mul i64 %18, %2, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !615) #11, !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3020, metadata !615) #11, !dbg !3078
  br label %27, !dbg !3079

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3080
  %22 = add i64 %4, 1, !dbg !3081
  %23 = add i64 %22, %21, !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !3055
  store i64 %23, i64* %1, align 8, !dbg !3074, !tbaa !2091
  %24 = mul i64 %23, %2, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !615) #11, !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3020, metadata !615) #11, !dbg !3078
  %25 = icmp eq i64 %24, 0, !dbg !3083
  br i1 %25, label %26, label %27, !dbg !3079

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3084
  br label %34, !dbg !3085

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3015, metadata !615) #11, !dbg !3076
  %30 = icmp eq i8* %29, null, !dbg !3087
  %31 = icmp ne i64 %28, 0, !dbg !3088
  %32 = and i1 %31, %30, !dbg !3089
  br i1 %32, label %33, label %34, !dbg !3089

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3090
  unreachable, !dbg !3090

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3091
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3092 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3094, metadata !615), !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2975, metadata !615) #11, !dbg !3096
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2981, metadata !615) #11, !dbg !3099
  %3 = icmp eq i8* %2, null, !dbg !3100
  %4 = icmp ne i64 %0, 0, !dbg !3101
  %5 = and i1 %4, %3, !dbg !3102
  br i1 %5, label %6, label %7, !dbg !3102

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3103
  unreachable, !dbg !3103

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !615), !dbg !3111
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3110, metadata !615), !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !580, metadata !615) #11, !dbg !3113
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !581, metadata !615) #11, !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !582, metadata !615) #11, !dbg !3116
  %3 = load i64, i64* %1, align 8, !dbg !3117, !tbaa !2091
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !583, metadata !615) #11, !dbg !3118
  %4 = icmp eq i8* %0, null, !dbg !3119
  br i1 %4, label %5, label %8, !dbg !3120

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !583, metadata !615) #11, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !583, metadata !615) #11, !dbg !3118
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #11, !dbg !3118
  store i64 %7, i64* %1, align 8, !dbg !3123, !tbaa !2091
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !615) #11, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3020, metadata !615) #11, !dbg !3126
  br label %17, !dbg !3127

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3128
  br i1 %9, label %11, label %10, !dbg !3129

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3130
  unreachable, !dbg !3130

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3131
  %13 = add i64 %3, 1, !dbg !3132
  %14 = add i64 %13, %12, !dbg !3133
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #11, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #11, !dbg !3118
  store i64 %14, i64* %1, align 8, !dbg !3123, !tbaa !2091
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !615) #11, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3020, metadata !615) #11, !dbg !3126
  %15 = icmp eq i64 %14, 0, !dbg !3134
  br i1 %15, label %16, label %17, !dbg !3127

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3135
  br label %24, !dbg !3136

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3015, metadata !615) #11, !dbg !3124
  %20 = icmp eq i8* %19, null, !dbg !3138
  %21 = icmp ne i64 %18, 0, !dbg !3139
  %22 = and i1 %21, %20, !dbg !3140
  br i1 %22, label %23, label %24, !dbg !3140

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3141
  unreachable, !dbg !3141

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3143 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3145, metadata !615), !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2975, metadata !615) #11, !dbg !3147
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2981, metadata !615) #11, !dbg !3150
  %3 = icmp eq i8* %2, null, !dbg !3151
  %4 = icmp ne i64 %0, 0, !dbg !3152
  %5 = and i1 %4, %3, !dbg !3153
  br i1 %5, label %6, label %7, !dbg !3153

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3154
  unreachable, !dbg !3154

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3155
  ret i8* %2, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3159, metadata !615), !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3160, metadata !615), !dbg !3163
  %3 = udiv i64 9223372036854775807, %1, !dbg !3164
  %4 = icmp ult i64 %3, %0, !dbg !3164
  br i1 %4, label %8, label %5, !dbg !3166

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3161, metadata !615), !dbg !3168
  %7 = icmp eq i8* %6, null, !dbg !3169
  br i1 %7, label %8, label %9, !dbg !3170

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3171
  unreachable, !dbg !3171

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3173 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3179, metadata !615), !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3180, metadata !615), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2975, metadata !615) #11, !dbg !3183
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2981, metadata !615) #11, !dbg !3186
  %4 = icmp eq i8* %3, null, !dbg !3187
  %5 = icmp ne i64 %1, 0, !dbg !3188
  %6 = and i1 %5, %4, !dbg !3189
  br i1 %6, label %7, label %8, !dbg !3189

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3190
  unreachable, !dbg !3190

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3191
  ret i8* %3, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3193 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3195, metadata !615), !dbg !3196
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3197
  %3 = add i64 %2, 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3179, metadata !615) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3180, metadata !615) #11, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2975, metadata !615) #11, !dbg !3202
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2981, metadata !615) #11, !dbg !3205
  %5 = icmp eq i8* %4, null, !dbg !3206
  %6 = icmp ne i64 %3, 0, !dbg !3207
  %7 = and i1 %6, %5, !dbg !3208
  br i1 %7, label %8, label %9, !dbg !3208

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3209
  unreachable, !dbg !3209

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3210
  ret i8* %4, !dbg !3211
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3212 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3214, !tbaa !683
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #11, !dbg !3215
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #11, !dbg !3216
  tail call void @abort() #15, !dbg !3217
  unreachable, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3218 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3221, metadata !615), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3222, metadata !615), !dbg !3228
  %3 = icmp eq i64 %0, 0, !dbg !3229
  %4 = icmp eq i64 %1, 0, !dbg !3230
  %5 = or i1 %3, %4, !dbg !3231
  br i1 %5, label %12, label %6, !dbg !3231

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3224, metadata !615), !dbg !3233
  %8 = udiv i64 %7, %1, !dbg !3234
  %9 = icmp eq i64 %8, %0, !dbg !3236
  br i1 %9, label %12, label %10, !dbg !3237

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3238
  store i32 12, i32* %11, align 4, !dbg !3240, !tbaa !683
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3221, metadata !615), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3222, metadata !615), !dbg !3228
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3241
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3223, metadata !615), !dbg !3242
  br label %16, !dbg !3243

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3244
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrlen(i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3245 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3250, metadata !615), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3251, metadata !615), !dbg !3254
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %2, i64 0, metadata !3252, metadata !615), !dbg !3255
  %4 = icmp eq %struct.__mbstate_t* %2, null, !dbg !3256
  %5 = select i1 %4, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %2, !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %5, i64 0, metadata !3252, metadata !615), !dbg !3255
  %6 = tail call i64 @rpl_mbrtowc(i32* null, i8* %0, i64 %1, %struct.__mbstate_t* %5) #11, !dbg !3259
  ret i64 %6, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3261 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3278, metadata !615), !dbg !3287
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3279, metadata !615), !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3280, metadata !615), !dbg !3289
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3281, metadata !615), !dbg !3290
  %6 = bitcast i32* %5 to i8*, !dbg !3291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3291
  %7 = icmp eq i32* %0, null, !dbg !3292
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3278, metadata !615), !dbg !3287
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3294
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3278, metadata !615), !dbg !3287
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3282, metadata !615), !dbg !3296
  %10 = icmp ugt i64 %9, -3, !dbg !3297
  %11 = icmp ne i64 %2, 0, !dbg !3298
  %12 = and i1 %11, %10, !dbg !3299
  br i1 %12, label %13, label %18, !dbg !3299

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3300
  br i1 %14, label %18, label %15, !dbg !3301

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3302, !tbaa !814
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3284, metadata !615), !dbg !3303
  %17 = zext i8 %16 to i32, !dbg !3304
  store i32 %17, i32* %8, align 4, !dbg !3305, !tbaa !683
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3306
  ret i64 %19, !dbg !3306
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3307 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3352, metadata !615), !dbg !3357
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3358
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3359, metadata !615), !dbg !3363
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3365
  %4 = load i32, i32* %3, align 8, !dbg !3365, !tbaa !3366
  %5 = and i32 %4, 32, !dbg !3365
  %6 = icmp eq i32 %5, 0, !dbg !3368
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3369
  %8 = icmp ne i32 %7, 0, !dbg !3370
  br i1 %6, label %9, label %19, !dbg !3371

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3373
  %11 = xor i1 %8, true, !dbg !3374
  %12 = or i1 %10, %11, !dbg !3374
  %13 = sext i1 %8 to i32, !dbg !3374
  br i1 %12, label %22, label %14, !dbg !3374

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3375
  %16 = load i32, i32* %15, align 4, !dbg !3375, !tbaa !683
  %17 = icmp ne i32 %16, 9, !dbg !3376
  %18 = sext i1 %17 to i32, !dbg !3377
  br label %22, !dbg !3377

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3378

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3380
  store i32 0, i32* %21, align 4, !dbg !3382, !tbaa !683
  br label %22, !dbg !3380

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3383
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3384 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3389, metadata !615), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3390, metadata !615), !dbg !3393
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3394
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3391, metadata !615), !dbg !3395
  %3 = icmp eq i8* %2, null, !dbg !3396
  br i1 %3, label %11, label %4, !dbg !3398

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #14, !dbg !3399
  %6 = icmp eq i32 %5, 0, !dbg !3404
  br i1 %6, label %10, label %7, !dbg !3405

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0)) #14, !dbg !3406
  %9 = icmp eq i32 %8, 0, !dbg !3407
  br i1 %9, label %10, label %11, !dbg !3408

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3390, metadata !615), !dbg !3393
  br label %11, !dbg !3409

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3410
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3411 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3417, metadata !615), !dbg !3491
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3484, metadata !615), !dbg !3494
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3495
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3415, metadata !615), !dbg !3496
  %4 = icmp eq i8* %3, null, !dbg !3497
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %3, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3415, metadata !615), !dbg !3496
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3500, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3431, metadata !615) #11, !dbg !3501
  %7 = icmp eq i8* %6, null, !dbg !3502
  br i1 %7, label %8, label %123, !dbg !3503

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.121, i64 0, i64 0)) #11, !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3432, metadata !615) #11, !dbg !3505
  %10 = icmp eq i8* %9, null, !dbg !3506
  br i1 %10, label %14, label %11, !dbg !3508

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3509, !tbaa !814
  %13 = icmp eq i8 %12, 0, !dbg !3510
  br i1 %13, label %14, label %15, !dbg !3511

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3512

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.122, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3432, metadata !615) #11, !dbg !3505
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3435, metadata !615) #11, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3437, metadata !615) #11, !dbg !3515
  %18 = icmp eq i64 %17, 0, !dbg !3516
  br i1 %18, label %24, label %19, !dbg !3517

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3518
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3518
  %22 = load i8, i8* %21, align 1, !dbg !3518, !tbaa !814
  %23 = icmp ne i8 %22, 47, !dbg !3518
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3519
  %27 = add i64 %17, 14, !dbg !3520
  %28 = add i64 %27, %26, !dbg !3521
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3522
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3434, metadata !615) #11, !dbg !3523
  %30 = icmp eq i8* %29, null, !dbg !3524
  br i1 %30, label %121, label %31, !dbg !3524

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3525
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3528

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3529, !tbaa !814
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3531
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.123, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3532
  br label %37, !dbg !3533

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3531
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.123, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3532
  br label %37, !dbg !3533

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3439, metadata !615) #11, !dbg !3535
  %39 = icmp slt i32 %38, 0, !dbg !3536
  br i1 %39, label %119, label %40, !dbg !3537

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.124, i64 0, i64 0)) #11, !dbg !3538
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3440, metadata !615) #11, !dbg !3539
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3540
  br i1 %42, label %43, label %45, !dbg !3541

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !3542
  br label %119, !dbg !3544

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3481, metadata !615) #11, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3547

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3548

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3481, metadata !615) #11, !dbg !3545
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3548
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3549
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3550, metadata !615) #11, !dbg !3555
  %54 = load i8*, i8** %48, align 8, !dbg !3557, !tbaa !3558
  %55 = load i8*, i8** %49, align 8, !dbg !3557, !tbaa !3559
  %56 = icmp ult i8* %54, %55, !dbg !3557
  br i1 %56, label %59, label %57, !dbg !3557, !prof !3560

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3557
  br label %63, !dbg !3557

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3557
  store i8* %60, i8** %48, align 8, !dbg !3557, !tbaa !3558
  %61 = load i8, i8* %54, align 1, !dbg !3557, !tbaa !814
  %62 = zext i8 %61 to i32, !dbg !3557
  br label %63, !dbg !3557

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3557
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3483, metadata !615) #11, !dbg !3561
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3562, !llvm.loop !3563

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3568

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3550, metadata !615) #11, !dbg !3570
  %67 = load i8*, i8** %48, align 8, !dbg !3568, !tbaa !3558
  %68 = load i8*, i8** %49, align 8, !dbg !3568, !tbaa !3559
  %69 = icmp ult i8* %67, %68, !dbg !3568
  br i1 %69, label %72, label %70, !dbg !3568, !prof !3560

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3568
  br label %76, !dbg !3568

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3568
  store i8* %73, i8** %48, align 8, !dbg !3568, !tbaa !3558
  %74 = load i8, i8* %67, align 1, !dbg !3568, !tbaa !814
  %75 = zext i8 %74 to i32, !dbg !3568
  br label %76, !dbg !3568

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3568
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3483, metadata !615) #11, !dbg !3561
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3571, !llvm.loop !3572

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !3575
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.125, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !3576
  %81 = icmp slt i32 %80, 2, !dbg !3578
  br i1 %81, label %112, label %82, !dbg !3579

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3488, metadata !615) #11, !dbg !3581
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3489, metadata !615) #11, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3490, metadata !615) #11, !dbg !3584
  %85 = icmp eq i64 %51, 0, !dbg !3585
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3587

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  %90 = add i64 %87, 2, !dbg !3588
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3481, metadata !615) #11, !dbg !3545
  br label %96, !dbg !3591

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  %94 = add i64 %93, 1, !dbg !3594
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3481, metadata !615) #11, !dbg !3545
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3481, metadata !615) #11, !dbg !3545
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  %99 = icmp eq i8* %98, null, !dbg !3596
  br i1 %99, label %100, label %102, !dbg !3598

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  call void @free(i8* %52) #11, !dbg !3599
  br label %112, !dbg !3601

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3602
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3603
  %104 = xor i64 %84, -1, !dbg !3604
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3604
  %106 = xor i64 %83, -1, !dbg !3605
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3606, metadata !615) #11, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3614, metadata !615) #11, !dbg !3615
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !3617
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !3618
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3606, metadata !615) #11, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3614, metadata !615) #11, !dbg !3619
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !3621
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3481, metadata !615) #11, !dbg !3545
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3482, metadata !615) #11, !dbg !3546
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3602
  br label %50, !dbg !3623, !llvm.loop !3572

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3602
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3624
  %116 = icmp eq i64 %113, 0, !dbg !3625
  br i1 %116, label %119, label %117, !dbg !3627

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3628
  store i8 0, i8* %118, align 1, !dbg !3630, !tbaa !814
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3431, metadata !615) #11, !dbg !3501
  call void @free(i8* %29) #11, !dbg !3631
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3431, metadata !615) #11, !dbg !3501
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3632, !tbaa !622
  br label %123, !dbg !3633

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3431, metadata !615) #11, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3416, metadata !615), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3416, metadata !615), !dbg !3634
  %125 = load i8, i8* %124, align 1, !dbg !3635, !tbaa !814
  %126 = icmp eq i8 %125, 0, !dbg !3637
  br i1 %126, label %152, label %127, !dbg !3638

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3639

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3416, metadata !615), !dbg !3634
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3639
  %132 = icmp eq i32 %131, 0, !dbg !3641
  br i1 %132, label %139, label %133, !dbg !3642

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3643
  br i1 %134, label %135, label %143, !dbg !3644

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3645
  %137 = load i8, i8* %136, align 1, !dbg !3645, !tbaa !814
  %138 = icmp eq i8 %137, 0, !dbg !3646
  br i1 %138, label %139, label %143, !dbg !3647

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3648
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3650
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3415, metadata !615), !dbg !3496
  br label %152, !dbg !3652

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3653
  %145 = add i64 %144, 1, !dbg !3654
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3416, metadata !615), !dbg !3634
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3656
  %148 = add i64 %147, 1, !dbg !3657
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3416, metadata !615), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3416, metadata !615), !dbg !3634
  %150 = load i8, i8* %149, align 1, !dbg !3635, !tbaa !814
  %151 = icmp eq i8 %150, 0, !dbg !3637
  br i1 %151, label %152, label %128, !dbg !3638, !llvm.loop !3659

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3415, metadata !615), !dbg !3496
  %154 = load i8, i8* %153, align 1, !dbg !3661, !tbaa !814
  %155 = icmp eq i8 %154, 0, !dbg !3663
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i8* %153, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3415, metadata !615), !dbg !3496
  ret i8* %156, !dbg !3665
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3711, metadata !615), !dbg !3715
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3712, metadata !615), !dbg !3716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3714, metadata !615), !dbg !3717
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3718
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3713, metadata !615), !dbg !3719
  %3 = icmp slt i32 %2, 0, !dbg !3720
  br i1 %3, label %4, label %6, !dbg !3722

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3723
  br label %24, !dbg !3724

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3725
  %8 = icmp eq i32 %7, 0, !dbg !3725
  br i1 %8, label %13, label %9, !dbg !3727

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3728
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3729
  %12 = icmp eq i64 %11, -1, !dbg !3730
  br i1 %12, label %16, label %13, !dbg !3731

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3732
  %15 = icmp eq i32 %14, 0, !dbg !3732
  br i1 %15, label %16, label %18, !dbg !3733

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3712, metadata !615), !dbg !3716
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3734
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3714, metadata !615), !dbg !3717
  br label %24, !dbg !3735

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3736
  %20 = load i32, i32* %19, align 4, !dbg !3736, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3712, metadata !615), !dbg !3716
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3712, metadata !615), !dbg !3716
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3734
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3714, metadata !615), !dbg !3717
  %22 = icmp eq i32 %20, 0, !dbg !3737
  br i1 %22, label %24, label %23, !dbg !3735

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3739, !tbaa !683
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3714, metadata !615), !dbg !3717
  br label %24, !dbg !3741

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3742
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3788, metadata !615), !dbg !3789
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3790
  br i1 %2, label %6, label %3, !dbg !3792

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3793
  %5 = icmp eq i32 %4, 0, !dbg !3793
  br i1 %5, label %6, label %8, !dbg !3794

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3795
  br label %17, !dbg !3796

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3797, metadata !615) #11, !dbg !3802
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3804
  %10 = load i32, i32* %9, align 8, !dbg !3804, !tbaa !3366
  %11 = and i32 %10, 256, !dbg !3806
  %12 = icmp eq i32 %11, 0, !dbg !3806
  br i1 %12, label %15, label %13, !dbg !3807

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3808
  br label %15, !dbg !3808

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3809
  br label %17, !dbg !3810

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3811
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3812 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3858, metadata !615), !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3859, metadata !615), !dbg !3865
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3860, metadata !615), !dbg !3866
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3867
  %5 = load i8*, i8** %4, align 8, !dbg !3867, !tbaa !3559
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3868
  %7 = load i8*, i8** %6, align 8, !dbg !3868, !tbaa !3558
  %8 = icmp eq i8* %5, %7, !dbg !3869
  br i1 %8, label %9, label %28, !dbg !3870

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3871
  %11 = load i8*, i8** %10, align 8, !dbg !3871, !tbaa !3872
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3873
  %13 = load i8*, i8** %12, align 8, !dbg !3873, !tbaa !3874
  %14 = icmp eq i8* %11, %13, !dbg !3875
  br i1 %14, label %15, label %28, !dbg !3876

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3877
  %17 = load i8*, i8** %16, align 8, !dbg !3877, !tbaa !3878
  %18 = icmp eq i8* %17, null, !dbg !3879
  br i1 %18, label %19, label %28, !dbg !3880

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3881
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3882
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3861, metadata !615), !dbg !3883
  %22 = icmp eq i64 %21, -1, !dbg !3884
  br i1 %22, label %30, label %23, !dbg !3886

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3887
  %25 = load i32, i32* %24, align 8, !dbg !3888, !tbaa !3366
  %26 = and i32 %25, -17, !dbg !3888
  store i32 %26, i32* %24, align 8, !dbg !3888, !tbaa !3366
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3889
  store i64 %21, i64* %27, align 8, !dbg !3890, !tbaa !3891
  br label %30, !dbg !3892

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3893
  br label %30, !dbg !3894

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3895
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
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
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

!llvm.dbg.cu = !{!2, !85, !91, !100, !107, !114, !563, !187, !570, !587, !589, !196, !591, !594, !596, !216, !598, !600, !602}
!llvm.ident = !{!604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604}
!llvm.module.flags = !{!605, !606, !607, !608, !609}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !47)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 24, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!22 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0)
!23 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1)
!24 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2)
!25 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3)
!26 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4)
!27 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5)
!28 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6)
!29 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7)
!30 = !DIEnumerator(name: "_PC_VDISABLE", value: 8)
!31 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9)
!32 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10)
!33 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11)
!34 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12)
!35 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13)
!36 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14)
!37 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15)
!38 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16)
!39 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17)
!40 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18)
!41 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19)
!42 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20)
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !{!48, !0}
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "infomap", scope: !50, file: !51, line: 632, type: !67, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !51, file: !51, line: 630, type: !52, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !56)
!51 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!56 = !{!57, !58, !59, !66}
!57 = !DILocalVariable(name: "program", arg: 1, scope: !50, file: !51, line: 630, type: !54)
!58 = !DILocalVariable(name: "node", scope: !50, file: !51, line: 642, type: !54)
!59 = !DILocalVariable(name: "map_prog", scope: !50, file: !51, line: 643, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !50, file: !51, line: 632, size: 128, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !62, file: !51, line: 632, baseType: !54, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !62, file: !51, line: 632, baseType: !54, size: 64, offset: 64)
!66 = !DILocalVariable(name: "lc_messages", scope: !50, file: !51, line: 655, type: !54)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 896, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 7)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1024, elements: !81)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !73, line: 50, size: 256, elements: !74)
!73 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!75, !76, !78, !80}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 52, baseType: !54, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !72, file: !73, line: 55, baseType: !77, size: 32, offset: 64)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !72, file: !73, line: 56, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !73, line: 57, baseType: !77, size: 32, offset: 192)
!81 = !{!82}
!82 = !DISubrange(count: 4)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "Version", scope: !85, file: !86, line: 2, type: !54, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !88)
!86 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{}
!88 = !{!83}
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "file_name", scope: !91, file: !96, line: 36, type: !54, isLocal: true, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !93)
!92 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{!89, !94}
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !91, file: !96, line: 46, type: !97, isLocal: true, isDefinition: true)
!96 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "exit_failure", scope: !100, file: !103, line: 24, type: !104, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !102)
!101 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!98}
!103 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "program_name", scope: !107, file: !111, line: 33, type: !54, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !109, globals: !110)
!108 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!46, !44}
!110 = !{!105}
!111 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !114, file: !145, line: 77, type: !181, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !137, globals: !142)
!115 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!5, !117, !122}
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!120 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!121 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 46, size: 32, elements: !124)
!123 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "_ISupper", value: 256)
!126 = !DIEnumerator(name: "_ISlower", value: 512)
!127 = !DIEnumerator(name: "_ISalpha", value: 1024)
!128 = !DIEnumerator(name: "_ISdigit", value: 2048)
!129 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!130 = !DIEnumerator(name: "_ISspace", value: 8192)
!131 = !DIEnumerator(name: "_ISprint", value: 16384)
!132 = !DIEnumerator(name: "_ISgraph", value: 32768)
!133 = !DIEnumerator(name: "_ISblank", value: 1)
!134 = !DIEnumerator(name: "_IScntrl", value: 2)
!135 = !DIEnumerator(name: "_ISpunct", value: 4)
!136 = !DIEnumerator(name: "_ISalnum", value: 8)
!137 = !{!77, !138, !139, !44}
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 62, baseType: !141)
!140 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !{!112, !143, !150, !163, !165, !170, !177, !179}
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !114, file: !145, line: 93, type: !146, isLocal: false, isDefinition: true)
!145 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 320, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!148 = !{!149}
!149 = !DISubrange(count: 10)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !114, file: !145, line: 1043, type: !152, isLocal: false, isDefinition: true)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !145, line: 57, size: 448, elements: !153)
!153 = !{!154, !155, !156, !161, !162}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !152, file: !145, line: 60, baseType: !5, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !145, line: 63, baseType: !77, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !152, file: !145, line: 67, baseType: !157, size: 256, offset: 64)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !159)
!158 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !152, file: !145, line: 70, baseType: !54, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !152, file: !145, line: 73, baseType: !54, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !114, file: !145, line: 108, type: !152, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !114, file: !145, line: 834, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "slotvec", scope: !114, file: !145, line: 837, type: !172, isLocal: true, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !145, line: 826, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !145, line: 828, baseType: !139, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !145, line: 829, baseType: !44, size: 64, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "nslots", scope: !114, file: !145, line: 835, type: !77, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "slotvec0", scope: !114, file: !145, line: 836, type: !173, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 704, elements: !183)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!183 = !{!184}
!184 = !DISubrange(count: 11)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !187, file: !190, line: 26, type: !191, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !189)
!188 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!185}
!190 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 376, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 47)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "internal_state", scope: !196, file: !200, line: 24, type: !201, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !198, globals: !199)
!197 = !DIFile(filename: "./lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!46}
!199 = !{!194}
!200 = !DIFile(filename: "lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !202, line: 6, baseType: !203)
!202 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !204, line: 21, baseType: !205)
!204 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 13, size: 64, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !205, file: !204, line: 15, baseType: !77, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !205, file: !204, line: 20, baseType: !209, size: 32, offset: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 16, size: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !209, file: !204, line: 18, baseType: !158, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !209, file: !204, line: 19, baseType: !213, size: 32)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !81)
!214 = !DIGlobalVariableExpression(var: !215)
!215 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !216, file: !561, line: 120, type: !562, isLocal: true, isDefinition: true)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !218, retainedTypes: !557, globals: !560)
!217 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!218 = !{!219}
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !220, line: 41, size: 32, elements: !221)
!220 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!222 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!223 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!224 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!225 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!226 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!227 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!228 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!229 = !DIEnumerator(name: "DAY_1", value: 131079)
!230 = !DIEnumerator(name: "DAY_2", value: 131080)
!231 = !DIEnumerator(name: "DAY_3", value: 131081)
!232 = !DIEnumerator(name: "DAY_4", value: 131082)
!233 = !DIEnumerator(name: "DAY_5", value: 131083)
!234 = !DIEnumerator(name: "DAY_6", value: 131084)
!235 = !DIEnumerator(name: "DAY_7", value: 131085)
!236 = !DIEnumerator(name: "ABMON_1", value: 131086)
!237 = !DIEnumerator(name: "ABMON_2", value: 131087)
!238 = !DIEnumerator(name: "ABMON_3", value: 131088)
!239 = !DIEnumerator(name: "ABMON_4", value: 131089)
!240 = !DIEnumerator(name: "ABMON_5", value: 131090)
!241 = !DIEnumerator(name: "ABMON_6", value: 131091)
!242 = !DIEnumerator(name: "ABMON_7", value: 131092)
!243 = !DIEnumerator(name: "ABMON_8", value: 131093)
!244 = !DIEnumerator(name: "ABMON_9", value: 131094)
!245 = !DIEnumerator(name: "ABMON_10", value: 131095)
!246 = !DIEnumerator(name: "ABMON_11", value: 131096)
!247 = !DIEnumerator(name: "ABMON_12", value: 131097)
!248 = !DIEnumerator(name: "MON_1", value: 131098)
!249 = !DIEnumerator(name: "MON_2", value: 131099)
!250 = !DIEnumerator(name: "MON_3", value: 131100)
!251 = !DIEnumerator(name: "MON_4", value: 131101)
!252 = !DIEnumerator(name: "MON_5", value: 131102)
!253 = !DIEnumerator(name: "MON_6", value: 131103)
!254 = !DIEnumerator(name: "MON_7", value: 131104)
!255 = !DIEnumerator(name: "MON_8", value: 131105)
!256 = !DIEnumerator(name: "MON_9", value: 131106)
!257 = !DIEnumerator(name: "MON_10", value: 131107)
!258 = !DIEnumerator(name: "MON_11", value: 131108)
!259 = !DIEnumerator(name: "MON_12", value: 131109)
!260 = !DIEnumerator(name: "AM_STR", value: 131110)
!261 = !DIEnumerator(name: "PM_STR", value: 131111)
!262 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!263 = !DIEnumerator(name: "D_FMT", value: 131113)
!264 = !DIEnumerator(name: "T_FMT", value: 131114)
!265 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!266 = !DIEnumerator(name: "ERA", value: 131116)
!267 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!268 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!269 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!270 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!271 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!272 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!273 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!274 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!275 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!276 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!277 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!278 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!279 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!280 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!281 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!282 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!283 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!284 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!285 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!286 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!287 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!288 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!289 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!290 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!291 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!292 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!293 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!294 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!295 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!296 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!297 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!298 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!299 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!300 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!301 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!302 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!303 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!304 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!305 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!306 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!307 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!308 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!309 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!310 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!311 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!312 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!313 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!314 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!315 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!316 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!317 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!318 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!319 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!320 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!321 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!322 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!323 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!324 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!325 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!326 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!327 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!328 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!329 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!330 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!331 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!332 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!333 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!334 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!335 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!336 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!337 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!338 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!339 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!340 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!341 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!342 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!343 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!344 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!345 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!346 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!347 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!348 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!349 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!350 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!351 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!352 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!353 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!354 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!355 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!357 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!359 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!364 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!365 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!366 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!367 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!368 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!369 = !DIEnumerator(name: "CODESET", value: 14)
!370 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!372 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!373 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!425 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!426 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!441 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!442 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!443 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!444 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!445 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!446 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!447 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!448 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!449 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!450 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!451 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!452 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!453 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!454 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!455 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!456 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!457 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!458 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!459 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!460 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!461 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!462 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!463 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!480 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!481 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!484 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!485 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!486 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!487 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!488 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!489 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!490 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!491 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!492 = !DIEnumerator(name: "THOUSEP", value: 65537)
!493 = !DIEnumerator(name: "__GROUPING", value: 65538)
!494 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!495 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!496 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!497 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!498 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!499 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!500 = !DIEnumerator(name: "__YESSTR", value: 327682)
!501 = !DIEnumerator(name: "__NOSTR", value: 327683)
!502 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!503 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!504 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!505 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!506 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!507 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!508 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!514 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!515 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!516 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!524 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!525 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!528 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!529 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!530 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!531 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!535 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!536 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!537 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!538 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!555 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!556 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!557 = !{!46, !44, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!560 = !{!214}
!561 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !198)
!564 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!566}
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !567, line: 41, size: 32, elements: !568)
!567 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!569}
!569 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !572, retainedTypes: !586)
!571 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!573}
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !575, file: !574, line: 192, size: 32, elements: !584)
!574 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DISubprogram(name: "x2nrealloc", scope: !574, file: !574, line: 180, type: !576, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !579)
!576 = !DISubroutineType(types: !577)
!577 = !{!46, !46, !578, !139}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!579 = !{!580, !581, !582, !583}
!580 = !DILocalVariable(name: "p", arg: 1, scope: !575, file: !574, line: 180, type: !46)
!581 = !DILocalVariable(name: "pn", arg: 2, scope: !575, file: !574, line: 180, type: !578)
!582 = !DILocalVariable(name: "s", arg: 3, scope: !575, file: !574, line: 180, type: !139)
!583 = !DILocalVariable(name: "n", scope: !575, file: !574, line: 182, type: !139)
!584 = !{!585}
!585 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!586 = !{!139, !44, !46}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!588 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !198)
!590 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !593)
!592 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!139}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!595 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!597 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!599 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !198)
!601 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !198)
!603 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!605 = !{i32 2, !"Dwarf Version", i32 4}
!606 = !{i32 2, !"Debug Info Version", i32 3}
!607 = !{i32 1, !"wchar_size", i32 4}
!608 = !{i32 7, !"PIC Level", i32 2}
!609 = !{i32 7, !"PIE Level", i32 2}
!610 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !611, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !77}
!613 = !{!614}
!614 = !DILocalVariable(name: "status", arg: 1, scope: !610, file: !3, line: 82, type: !77)
!615 = !DIExpression()
!616 = !DILocation(line: 82, column: 12, scope: !610)
!617 = !DILocation(line: 84, column: 14, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 84, column: 7)
!619 = !DILocation(line: 84, column: 7, scope: !610)
!620 = !DILocation(line: 85, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 85, column: 5)
!622 = !{!623, !623, i64 0}
!623 = !{!"any pointer", !624, i64 0}
!624 = !{!"omnipotent char", !625, i64 0}
!625 = !{!"Simple C/C++ TBAA"}
!626 = !DILocation(line: 88, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !3, line: 87, column: 5)
!628 = !DILocation(line: 89, column: 7, scope: !627)
!629 = !DILocation(line: 96, column: 7, scope: !627)
!630 = !DILocation(line: 97, column: 7, scope: !627)
!631 = !DILocation(line: 642, column: 15, scope: !50, inlinedAt: !632)
!632 = distinct !DILocation(line: 98, column: 7, scope: !627)
!633 = !DILocation(line: 651, column: 3, scope: !50, inlinedAt: !632)
!634 = !DILocation(line: 655, column: 29, scope: !50, inlinedAt: !632)
!635 = !DILocation(line: 655, column: 15, scope: !50, inlinedAt: !632)
!636 = !DILocation(line: 656, column: 7, scope: !637, inlinedAt: !632)
!637 = distinct !DILexicalBlock(scope: !50, file: !51, line: 656, column: 7)
!638 = !DILocation(line: 656, column: 19, scope: !637, inlinedAt: !632)
!639 = !DILocation(line: 656, column: 22, scope: !637, inlinedAt: !632)
!640 = !DILocation(line: 656, column: 7, scope: !50, inlinedAt: !632)
!641 = !DILocation(line: 662, column: 7, scope: !642, inlinedAt: !632)
!642 = distinct !DILexicalBlock(scope: !637, file: !51, line: 657, column: 5)
!643 = !DILocation(line: 664, column: 5, scope: !642, inlinedAt: !632)
!644 = !DILocation(line: 665, column: 3, scope: !50, inlinedAt: !632)
!645 = !DILocation(line: 667, column: 3, scope: !50, inlinedAt: !632)
!646 = !DILocation(line: 100, column: 3, scope: !610)
!647 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !648, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !651)
!648 = !DISubroutineType(types: !649)
!649 = !{!77, !77, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!651 = !{!652, !653, !654, !655, !656, !657}
!652 = !DILocalVariable(name: "argc", arg: 1, scope: !647, file: !3, line: 104, type: !77)
!653 = !DILocalVariable(name: "argv", arg: 2, scope: !647, file: !3, line: 104, type: !650)
!654 = !DILocalVariable(name: "ok", scope: !647, file: !3, line: 106, type: !97)
!655 = !DILocalVariable(name: "check_basic_portability", scope: !647, file: !3, line: 107, type: !97)
!656 = !DILocalVariable(name: "check_extra_portability", scope: !647, file: !3, line: 108, type: !97)
!657 = !DILocalVariable(name: "optc", scope: !647, file: !3, line: 109, type: !77)
!658 = !DILocation(line: 104, column: 11, scope: !647)
!659 = !DILocation(line: 104, column: 24, scope: !647)
!660 = !DILocation(line: 106, column: 8, scope: !647)
!661 = !DILocation(line: 107, column: 8, scope: !647)
!662 = !DILocation(line: 108, column: 8, scope: !647)
!663 = !DILocation(line: 112, column: 21, scope: !647)
!664 = !DILocation(line: 112, column: 3, scope: !647)
!665 = !DILocation(line: 113, column: 3, scope: !647)
!666 = !DILocation(line: 114, column: 3, scope: !647)
!667 = !DILocation(line: 115, column: 3, scope: !647)
!668 = !DILocation(line: 117, column: 3, scope: !647)
!669 = !DILocation(line: 119, column: 3, scope: !647)
!670 = !DILocation(line: 119, column: 18, scope: !647)
!671 = !DILocation(line: 109, column: 7, scope: !647)
!672 = distinct !{!672, !669, !673}
!673 = !DILocation(line: 143, column: 5, scope: !647)
!674 = !DILocation(line: 130, column: 11, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 122, column: 9)
!676 = distinct !DILexicalBlock(scope: !647, file: !3, line: 120, column: 5)
!677 = !DILocation(line: 134, column: 11, scope: !675)
!678 = !DILocation(line: 136, column: 9, scope: !675)
!679 = !DILocation(line: 138, column: 9, scope: !675)
!680 = !DILocation(line: 141, column: 11, scope: !675)
!681 = !DILocation(line: 145, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !647, file: !3, line: 145, column: 7)
!683 = !{!684, !684, i64 0}
!684 = !{!"int", !624, i64 0}
!685 = !DILocation(line: 145, column: 14, scope: !682)
!686 = !DILocation(line: 145, column: 7, scope: !647)
!687 = !DILocation(line: 147, column: 20, scope: !688)
!688 = distinct !DILexicalBlock(scope: !682, file: !3, line: 146, column: 5)
!689 = !DILocation(line: 147, column: 7, scope: !688)
!690 = !DILocation(line: 148, column: 7, scope: !688)
!691 = !DILocation(line: 151, column: 17, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 151, column: 3)
!693 = distinct !DILexicalBlock(scope: !647, file: !3, line: 151, column: 3)
!694 = !DILocation(line: 151, column: 3, scope: !693)
!695 = !DILocation(line: 152, column: 31, scope: !692)
!696 = !DILocalVariable(name: "file", arg: 1, scope: !697, file: !3, line: 247, type: !44)
!697 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 247, type: !698, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!97, !44, !97, !97}
!700 = !{!696, !701, !702, !703, !704, !705, !706, !707, !749, !752, !755, !756, !759, !760, !766, !769, !770, !774, !777, !778, !779, !782, !783}
!701 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !697, file: !3, line: 247, type: !97)
!702 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !697, file: !3, line: 248, type: !97)
!703 = !DILocalVariable(name: "filelen", scope: !697, file: !3, line: 250, type: !139)
!704 = !DILocalVariable(name: "start", scope: !697, file: !3, line: 253, type: !44)
!705 = !DILocalVariable(name: "check_component_lengths", scope: !697, file: !3, line: 256, type: !97)
!706 = !DILocalVariable(name: "file_exists", scope: !697, file: !3, line: 259, type: !97)
!707 = !DILocalVariable(name: "st", scope: !708, file: !3, line: 287, type: !710)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 281, column: 5)
!709 = distinct !DILexicalBlock(scope: !697, file: !3, line: 275, column: 7)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !711, line: 46, size: 1152, elements: !712)
!711 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!712 = !{!713, !716, !718, !720, !722, !724, !726, !727, !728, !731, !733, !735, !743, !744, !745}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !710, file: !711, line: 48, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !715, line: 133, baseType: !141)
!715 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !710, file: !711, line: 53, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !715, line: 136, baseType: !141)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !710, file: !711, line: 61, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !715, line: 139, baseType: !141)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !710, file: !711, line: 62, baseType: !721, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !715, line: 138, baseType: !158)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !710, file: !711, line: 64, baseType: !723, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !715, line: 134, baseType: !158)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !710, file: !711, line: 65, baseType: !725, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !715, line: 135, baseType: !158)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !710, file: !711, line: 67, baseType: !77, size: 32, offset: 288)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !710, file: !711, line: 69, baseType: !714, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !710, file: !711, line: 74, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !715, line: 140, baseType: !730)
!730 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !710, file: !711, line: 78, baseType: !732, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !715, line: 162, baseType: !730)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !710, file: !711, line: 80, baseType: !734, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !715, line: 167, baseType: !730)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !710, file: !711, line: 91, baseType: !736, size: 128, offset: 576)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !737, line: 8, size: 128, elements: !738)
!737 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!738 = !{!739, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !736, file: !737, line: 10, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !715, line: 148, baseType: !730)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !736, file: !737, line: 11, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !715, line: 184, baseType: !730)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !710, file: !711, line: 92, baseType: !736, size: 128, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !710, file: !711, line: 93, baseType: !736, size: 128, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !710, file: !711, line: 106, baseType: !746, size: 192, offset: 960)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 192, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 3)
!749 = !DILocalVariable(name: "maxsize", scope: !750, file: !3, line: 300, type: !139)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 299, column: 5)
!751 = distinct !DILexicalBlock(scope: !697, file: !3, line: 297, column: 7)
!752 = !DILocalVariable(name: "size", scope: !753, file: !3, line: 306, type: !730)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 305, column: 9)
!754 = distinct !DILexicalBlock(scope: !750, file: !3, line: 302, column: 11)
!755 = !DILocalVariable(name: "dir", scope: !753, file: !3, line: 307, type: !54)
!756 = !DILocalVariable(name: "len", scope: !757, file: !3, line: 322, type: !141)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 321, column: 9)
!758 = distinct !DILexicalBlock(scope: !750, file: !3, line: 320, column: 11)
!759 = !DILocalVariable(name: "maxlen", scope: !757, file: !3, line: 323, type: !141)
!760 = !DILocalVariable(name: "length", scope: !761, file: !3, line: 340, type: !139)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 339, column: 9)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 338, column: 7)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 338, column: 7)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 337, column: 5)
!765 = distinct !DILexicalBlock(scope: !697, file: !3, line: 336, column: 7)
!766 = !DILocalVariable(name: "name_max", scope: !767, file: !3, line: 358, type: !139)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 353, column: 5)
!768 = distinct !DILexicalBlock(scope: !697, file: !3, line: 352, column: 7)
!769 = !DILocalVariable(name: "known_name_max", scope: !767, file: !3, line: 361, type: !139)
!770 = !DILocalVariable(name: "length", scope: !771, file: !3, line: 365, type: !139)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 364, column: 9)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 363, column: 7)
!773 = distinct !DILexicalBlock(scope: !767, file: !3, line: 363, column: 7)
!774 = !DILocalVariable(name: "len", scope: !775, file: !3, line: 371, type: !730)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 370, column: 13)
!776 = distinct !DILexicalBlock(scope: !771, file: !3, line: 367, column: 15)
!777 = !DILocalVariable(name: "dir", scope: !775, file: !3, line: 372, type: !54)
!778 = !DILocalVariable(name: "c", scope: !775, file: !3, line: 373, type: !45)
!779 = !DILocalVariable(name: "len", scope: !780, file: !3, line: 405, type: !141)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 404, column: 13)
!781 = distinct !DILexicalBlock(scope: !771, file: !3, line: 403, column: 15)
!782 = !DILocalVariable(name: "maxlen", scope: !780, file: !3, line: 406, type: !141)
!783 = !DILocalVariable(name: "c", scope: !780, file: !3, line: 407, type: !45)
!784 = !DILocation(line: 247, column: 27, scope: !697, inlinedAt: !785)
!785 = distinct !DILocation(line: 152, column: 11, scope: !692)
!786 = !DILocation(line: 247, column: 38, scope: !697, inlinedAt: !785)
!787 = !DILocation(line: 248, column: 26, scope: !697, inlinedAt: !785)
!788 = !DILocation(line: 250, column: 20, scope: !697, inlinedAt: !785)
!789 = !DILocation(line: 250, column: 10, scope: !697, inlinedAt: !785)
!790 = !DILocation(line: 259, column: 8, scope: !697, inlinedAt: !785)
!791 = !DILocation(line: 261, column: 31, scope: !792, inlinedAt: !785)
!792 = distinct !DILexicalBlock(scope: !697, file: !3, line: 261, column: 7)
!793 = !DILocalVariable(name: "file", arg: 1, scope: !794, file: !3, line: 162, type: !54)
!794 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 162, type: !795, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!97, !54}
!797 = !{!793, !798}
!798 = !DILocalVariable(name: "p", scope: !794, file: !3, line: 164, type: !54)
!799 = !DILocation(line: 162, column: 32, scope: !794, inlinedAt: !800)
!800 = distinct !DILocation(line: 261, column: 36, scope: !792, inlinedAt: !785)
!801 = !DILocation(line: 164, column: 15, scope: !794, inlinedAt: !800)
!802 = !DILocation(line: 166, column: 24, scope: !803, inlinedAt: !800)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 166, column: 3)
!804 = distinct !DILexicalBlock(scope: !794, file: !3, line: 166, column: 3)
!805 = !DILocation(line: 166, column: 3, scope: !804, inlinedAt: !800)
!806 = !DILocation(line: 167, column: 11, scope: !807, inlinedAt: !800)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 167, column: 9)
!808 = !DILocation(line: 166, column: 44, scope: !803, inlinedAt: !800)
!809 = distinct !{!809, !810, !811}
!810 = !DILocation(line: 166, column: 3, scope: !804)
!811 = !DILocation(line: 172, column: 7, scope: !804)
!812 = !DILocation(line: 167, column: 19, scope: !807, inlinedAt: !800)
!813 = !DILocation(line: 167, column: 22, scope: !807, inlinedAt: !800)
!814 = !{!624, !624, i64 0}
!815 = !DILocation(line: 167, column: 28, scope: !807, inlinedAt: !800)
!816 = !DILocation(line: 167, column: 9, scope: !803, inlinedAt: !800)
!817 = !DILocation(line: 169, column: 22, scope: !818, inlinedAt: !800)
!818 = distinct !DILexicalBlock(scope: !807, file: !3, line: 168, column: 7)
!819 = !DILocation(line: 170, column: 16, scope: !818, inlinedAt: !800)
!820 = !DILocation(line: 169, column: 9, scope: !818, inlinedAt: !800)
!821 = !DILocation(line: 261, column: 7, scope: !697, inlinedAt: !785)
!822 = !DILocation(line: 265, column: 18, scope: !823, inlinedAt: !785)
!823 = distinct !DILexicalBlock(scope: !697, file: !3, line: 264, column: 7)
!824 = !DILocation(line: 264, column: 32, scope: !823, inlinedAt: !785)
!825 = !DILocation(line: 265, column: 7, scope: !823, inlinedAt: !785)
!826 = !DILocation(line: 264, column: 7, scope: !697, inlinedAt: !785)
!827 = !DILocation(line: 271, column: 20, scope: !828, inlinedAt: !785)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 266, column: 5)
!829 = !DILocation(line: 271, column: 7, scope: !828, inlinedAt: !785)
!830 = !DILocation(line: 272, column: 7, scope: !828, inlinedAt: !785)
!831 = !DILocalVariable(name: "file", arg: 1, scope: !832, file: !3, line: 181, type: !54)
!832 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 181, type: !833, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{!97, !54, !139}
!835 = !{!831, !836, !837, !838, !839, !852}
!836 = !DILocalVariable(name: "filelen", arg: 2, scope: !832, file: !3, line: 181, type: !139)
!837 = !DILocalVariable(name: "validlen", scope: !832, file: !3, line: 183, type: !139)
!838 = !DILocalVariable(name: "invalid", scope: !832, file: !3, line: 188, type: !54)
!839 = !DILocalVariable(name: "mbstate", scope: !840, file: !3, line: 192, type: !842)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 191, column: 5)
!841 = distinct !DILexicalBlock(scope: !832, file: !3, line: 190, column: 7)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !202, line: 6, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !204, line: 21, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 13, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !844, file: !204, line: 15, baseType: !77, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !844, file: !204, line: 20, baseType: !848, size: 32, offset: 32)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !204, line: 16, size: 32, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !848, file: !204, line: 18, baseType: !158, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !848, file: !204, line: 19, baseType: !213, size: 32)
!852 = !DILocalVariable(name: "charlen", scope: !840, file: !3, line: 193, type: !139)
!853 = !DILocation(line: 181, column: 34, scope: !832, inlinedAt: !854)
!854 = distinct !DILocation(line: 277, column: 13, scope: !855, inlinedAt: !785)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 277, column: 11)
!856 = distinct !DILexicalBlock(scope: !709, file: !3, line: 276, column: 5)
!857 = !DILocation(line: 181, column: 47, scope: !832, inlinedAt: !854)
!858 = !DILocation(line: 183, column: 21, scope: !832, inlinedAt: !854)
!859 = !DILocation(line: 183, column: 10, scope: !832, inlinedAt: !854)
!860 = !DILocation(line: 188, column: 30, scope: !832, inlinedAt: !854)
!861 = !DILocation(line: 188, column: 15, scope: !832, inlinedAt: !854)
!862 = !DILocation(line: 190, column: 7, scope: !841, inlinedAt: !854)
!863 = !DILocation(line: 190, column: 7, scope: !832, inlinedAt: !854)
!864 = !DILocation(line: 192, column: 7, scope: !840, inlinedAt: !854)
!865 = !DILocation(line: 192, column: 17, scope: !840, inlinedAt: !854)
!866 = !DILocation(line: 193, column: 49, scope: !840, inlinedAt: !854)
!867 = !DILocation(line: 193, column: 24, scope: !840, inlinedAt: !854)
!868 = !DILocation(line: 193, column: 14, scope: !840, inlinedAt: !854)
!869 = !DILocation(line: 195, column: 14, scope: !840, inlinedAt: !854)
!870 = !DILocation(line: 197, column: 45, scope: !840, inlinedAt: !854)
!871 = !DILocation(line: 197, column: 37, scope: !840, inlinedAt: !854)
!872 = !DILocation(line: 196, column: 14, scope: !840, inlinedAt: !854)
!873 = !DILocation(line: 198, column: 14, scope: !840, inlinedAt: !854)
!874 = !DILocation(line: 194, column: 7, scope: !840, inlinedAt: !854)
!875 = !DILocation(line: 200, column: 5, scope: !841, inlinedAt: !854)
!876 = !DILocation(line: 277, column: 11, scope: !856, inlinedAt: !785)
!877 = !DILocation(line: 287, column: 7, scope: !708, inlinedAt: !785)
!878 = !DILocation(line: 287, column: 19, scope: !708, inlinedAt: !785)
!879 = !DILocalVariable(name: "__path", arg: 1, scope: !880, file: !881, line: 456, type: !54)
!880 = distinct !DISubprogram(name: "lstat", scope: !881, file: !881, line: 456, type: !882, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !885)
!881 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!882 = !DISubroutineType(types: !883)
!883 = !{!77, !54, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!885 = !{!879, !886}
!886 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !880, file: !881, line: 456, type: !884)
!887 = !DILocation(line: 456, column: 1, scope: !880, inlinedAt: !888)
!888 = distinct !DILocation(line: 288, column: 11, scope: !889, inlinedAt: !785)
!889 = distinct !DILexicalBlock(scope: !708, file: !3, line: 288, column: 11)
!890 = !DILocation(line: 458, column: 10, scope: !880, inlinedAt: !888)
!891 = !DILocation(line: 288, column: 29, scope: !889, inlinedAt: !785)
!892 = !DILocation(line: 288, column: 11, scope: !708, inlinedAt: !785)
!893 = !DILocation(line: 295, column: 5, scope: !709, inlinedAt: !785)
!894 = !DILocation(line: 256, column: 8, scope: !697, inlinedAt: !785)
!895 = !DILocation(line: 336, column: 33, scope: !765, inlinedAt: !785)
!896 = !DILocation(line: 290, column: 16, scope: !897, inlinedAt: !785)
!897 = distinct !DILexicalBlock(scope: !889, file: !3, line: 290, column: 16)
!898 = !DILocation(line: 290, column: 22, scope: !897, inlinedAt: !785)
!899 = !DILocation(line: 290, column: 32, scope: !897, inlinedAt: !785)
!900 = !DILocation(line: 292, column: 34, scope: !901, inlinedAt: !785)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 291, column: 9)
!902 = !DILocation(line: 292, column: 11, scope: !901, inlinedAt: !785)
!903 = !DILocation(line: 298, column: 45, scope: !751, inlinedAt: !785)
!904 = !DILocation(line: 298, column: 25, scope: !751, inlinedAt: !785)
!905 = !DILocation(line: 307, column: 30, scope: !753, inlinedAt: !785)
!906 = !DILocation(line: 307, column: 36, scope: !753, inlinedAt: !785)
!907 = !DILocation(line: 307, column: 23, scope: !753, inlinedAt: !785)
!908 = !DILocation(line: 308, column: 17, scope: !753, inlinedAt: !785)
!909 = !DILocation(line: 309, column: 18, scope: !753, inlinedAt: !785)
!910 = !DILocation(line: 306, column: 20, scope: !753, inlinedAt: !785)
!911 = !DILocation(line: 310, column: 20, scope: !912, inlinedAt: !785)
!912 = distinct !DILexicalBlock(scope: !753, file: !3, line: 310, column: 15)
!913 = !DILocation(line: 310, column: 24, scope: !912, inlinedAt: !785)
!914 = !DILocation(line: 310, column: 27, scope: !912, inlinedAt: !785)
!915 = !DILocation(line: 310, column: 33, scope: !912, inlinedAt: !785)
!916 = !DILocation(line: 310, column: 15, scope: !753, inlinedAt: !785)
!917 = !DILocation(line: 313, column: 22, scope: !918, inlinedAt: !785)
!918 = distinct !DILexicalBlock(scope: !912, file: !3, line: 311, column: 13)
!919 = !DILocation(line: 312, column: 15, scope: !918, inlinedAt: !785)
!920 = !DILocation(line: 300, column: 14, scope: !750, inlinedAt: !785)
!921 = !DILocation(line: 320, column: 19, scope: !758, inlinedAt: !785)
!922 = !DILocation(line: 320, column: 11, scope: !750, inlinedAt: !785)
!923 = !DILocation(line: 322, column: 29, scope: !757, inlinedAt: !785)
!924 = !DILocation(line: 323, column: 46, scope: !757, inlinedAt: !785)
!925 = !DILocation(line: 323, column: 29, scope: !757, inlinedAt: !785)
!926 = !DILocation(line: 324, column: 24, scope: !757, inlinedAt: !785)
!927 = !DILocation(line: 325, column: 31, scope: !757, inlinedAt: !785)
!928 = !DILocation(line: 324, column: 11, scope: !757, inlinedAt: !785)
!929 = !DILocation(line: 210, column: 10, scope: !930, inlinedAt: !935)
!930 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 208, type: !931, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!44, !44}
!933 = !{!934}
!934 = !DILocalVariable(name: "f", arg: 1, scope: !930, file: !3, line: 208, type: !44)
!935 = distinct !DILocation(line: 338, column: 36, scope: !762, inlinedAt: !785)
!936 = !DILocation(line: 208, column: 24, scope: !930, inlinedAt: !935)
!937 = !DILocation(line: 211, column: 6, scope: !930, inlinedAt: !935)
!938 = !DILocation(line: 210, column: 3, scope: !930, inlinedAt: !935)
!939 = distinct !{!939, !940, !941}
!940 = !DILocation(line: 338, column: 7, scope: !763)
!941 = !DILocation(line: 349, column: 9, scope: !763)
!942 = !DILocation(line: 221, column: 17, scope: !943, inlinedAt: !951)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 221, column: 3)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 221, column: 3)
!945 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 218, type: !946, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!139, !54}
!948 = !{!949, !950}
!949 = !DILocalVariable(name: "f", arg: 1, scope: !945, file: !3, line: 218, type: !54)
!950 = !DILocalVariable(name: "len", scope: !945, file: !3, line: 220, type: !139)
!951 = distinct !DILocation(line: 340, column: 27, scope: !761, inlinedAt: !785)
!952 = !DILocation(line: 220, column: 10, scope: !945, inlinedAt: !951)
!953 = !DILocation(line: 221, column: 31, scope: !943, inlinedAt: !951)
!954 = !DILocation(line: 221, column: 45, scope: !943, inlinedAt: !951)
!955 = !DILocation(line: 221, column: 3, scope: !943, inlinedAt: !951)
!956 = distinct !{!956, !957, !958}
!957 = !DILocation(line: 221, column: 3, scope: !944)
!958 = !DILocation(line: 222, column: 5, scope: !944)
!959 = !DILocation(line: 340, column: 18, scope: !761, inlinedAt: !785)
!960 = !DILocation(line: 342, column: 32, scope: !961, inlinedAt: !785)
!961 = distinct !DILexicalBlock(scope: !761, file: !3, line: 342, column: 15)
!962 = !DILocation(line: 253, column: 9, scope: !697, inlinedAt: !785)
!963 = !DILocation(line: 352, column: 7, scope: !697, inlinedAt: !785)
!964 = !DILocation(line: 210, column: 3, scope: !930, inlinedAt: !965)
!965 = distinct !DILocation(line: 363, column: 36, scope: !772, inlinedAt: !785)
!966 = !DILocation(line: 358, column: 14, scope: !767, inlinedAt: !785)
!967 = !DILocation(line: 361, column: 14, scope: !767, inlinedAt: !785)
!968 = !DILocation(line: 208, column: 24, scope: !930, inlinedAt: !965)
!969 = !DILocation(line: 210, column: 10, scope: !930, inlinedAt: !965)
!970 = !DILocation(line: 211, column: 6, scope: !930, inlinedAt: !965)
!971 = !DILocation(line: 367, column: 15, scope: !776, inlinedAt: !785)
!972 = !DILocation(line: 367, column: 15, scope: !771, inlinedAt: !785)
!973 = !DILocation(line: 372, column: 40, scope: !775, inlinedAt: !785)
!974 = !DILocation(line: 372, column: 34, scope: !775, inlinedAt: !785)
!975 = !DILocation(line: 372, column: 27, scope: !775, inlinedAt: !785)
!976 = !DILocation(line: 373, column: 20, scope: !775, inlinedAt: !785)
!977 = !DILocation(line: 374, column: 15, scope: !775, inlinedAt: !785)
!978 = !DILocation(line: 374, column: 21, scope: !775, inlinedAt: !785)
!979 = !DILocation(line: 375, column: 22, scope: !775, inlinedAt: !785)
!980 = !DILocation(line: 376, column: 21, scope: !775, inlinedAt: !785)
!981 = !DILocation(line: 371, column: 24, scope: !775, inlinedAt: !785)
!982 = !DILocation(line: 377, column: 22, scope: !775, inlinedAt: !785)
!983 = !DILocation(line: 378, column: 21, scope: !984, inlinedAt: !785)
!984 = distinct !DILexicalBlock(scope: !775, file: !3, line: 378, column: 19)
!985 = !DILocation(line: 378, column: 19, scope: !775, inlinedAt: !785)
!986 = !DILocation(line: 381, column: 25, scope: !984, inlinedAt: !785)
!987 = !DILocation(line: 381, column: 17, scope: !984, inlinedAt: !785)
!988 = !DILocation(line: 391, column: 21, scope: !989, inlinedAt: !785)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 382, column: 19)
!990 = !DILocation(line: 394, column: 28, scope: !989, inlinedAt: !785)
!991 = !DILocation(line: 395, column: 31, scope: !989, inlinedAt: !785)
!992 = !DILocation(line: 395, column: 44, scope: !989, inlinedAt: !785)
!993 = !DILocation(line: 395, column: 21, scope: !989, inlinedAt: !785)
!994 = !DILocation(line: 396, column: 28, scope: !989, inlinedAt: !785)
!995 = !DILocation(line: 218, column: 28, scope: !945, inlinedAt: !996)
!996 = distinct !DILocation(line: 401, column: 20, scope: !771, inlinedAt: !785)
!997 = !DILocation(line: 220, column: 10, scope: !945, inlinedAt: !996)
!998 = !DILocation(line: 221, column: 8, scope: !944, inlinedAt: !996)
!999 = !DILocation(line: 221, column: 17, scope: !943, inlinedAt: !996)
!1000 = !DILocation(line: 221, column: 31, scope: !943, inlinedAt: !996)
!1001 = !DILocation(line: 221, column: 45, scope: !943, inlinedAt: !996)
!1002 = !DILocation(line: 221, column: 3, scope: !943, inlinedAt: !996)
!1003 = !DILocation(line: 365, column: 18, scope: !771, inlinedAt: !785)
!1004 = !DILocation(line: 403, column: 24, scope: !781, inlinedAt: !785)
!1005 = !DILocation(line: 403, column: 15, scope: !771, inlinedAt: !785)
!1006 = distinct !{!1006, !1007, !1008}
!1007 = !DILocation(line: 363, column: 7, scope: !773)
!1008 = !DILocation(line: 418, column: 9, scope: !773)
!1009 = !DILocation(line: 405, column: 33, scope: !780, inlinedAt: !785)
!1010 = !DILocation(line: 406, column: 33, scope: !780, inlinedAt: !785)
!1011 = !DILocation(line: 407, column: 20, scope: !780, inlinedAt: !785)
!1012 = !DILocation(line: 408, column: 26, scope: !780, inlinedAt: !785)
!1013 = !DILocation(line: 410, column: 22, scope: !780, inlinedAt: !785)
!1014 = !DILocation(line: 412, column: 35, scope: !780, inlinedAt: !785)
!1015 = !DILocation(line: 409, column: 15, scope: !780, inlinedAt: !785)
!1016 = !DILocation(line: 413, column: 26, scope: !780, inlinedAt: !785)
!1017 = !DILocation(line: 152, column: 8, scope: !692)
!1018 = !DILocation(line: 151, column: 25, scope: !692)
!1019 = distinct !{!1019, !694, !1020}
!1020 = !DILocation(line: 153, column: 79, scope: !693)
!1021 = !DILocation(line: 155, column: 10, scope: !647)
!1022 = !DILocation(line: 156, column: 1, scope: !647)
!1023 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !96, file: !96, line: 41, type: !52, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1024)
!1024 = !{!1025}
!1025 = !DILocalVariable(name: "file", arg: 1, scope: !1023, file: !96, line: 41, type: !54)
!1026 = !DILocation(line: 41, column: 41, scope: !1023)
!1027 = !DILocation(line: 43, column: 13, scope: !1023)
!1028 = !DILocation(line: 44, column: 1, scope: !1023)
!1029 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !96, file: !96, line: 78, type: !1030, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !97}
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "ignore", arg: 1, scope: !1029, file: !96, line: 78, type: !97)
!1034 = !DILocation(line: 78, column: 37, scope: !1029)
!1035 = !DILocation(line: 80, column: 16, scope: !1029)
!1036 = !{!1037, !1037, i64 0}
!1037 = !{!"_Bool", !624, i64 0}
!1038 = !DILocation(line: 81, column: 1, scope: !1029)
!1039 = distinct !DISubprogram(name: "close_stdout", scope: !96, file: !96, line: 107, type: !1040, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null}
!1042 = !{!1043}
!1043 = !DILocalVariable(name: "write_error", scope: !1044, file: !96, line: 112, type: !54)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !96, line: 111, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !96, line: 109, column: 7)
!1046 = !DILocation(line: 109, column: 21, scope: !1045)
!1047 = !DILocation(line: 109, column: 7, scope: !1045)
!1048 = !DILocation(line: 109, column: 29, scope: !1045)
!1049 = !DILocation(line: 110, column: 7, scope: !1045)
!1050 = !DILocation(line: 110, column: 12, scope: !1045)
!1051 = !{i8 0, i8 2}
!1052 = !DILocation(line: 114, column: 19, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !96, line: 113, column: 11)
!1054 = !DILocation(line: 110, column: 25, scope: !1045)
!1055 = !DILocation(line: 110, column: 28, scope: !1045)
!1056 = !DILocation(line: 110, column: 34, scope: !1045)
!1057 = !DILocation(line: 109, column: 7, scope: !1039)
!1058 = !DILocation(line: 112, column: 33, scope: !1044)
!1059 = !DILocation(line: 112, column: 19, scope: !1044)
!1060 = !DILocation(line: 113, column: 11, scope: !1053)
!1061 = !DILocation(line: 113, column: 11, scope: !1044)
!1062 = !DILocation(line: 114, column: 36, scope: !1053)
!1063 = !DILocation(line: 114, column: 9, scope: !1053)
!1064 = !DILocation(line: 117, column: 9, scope: !1053)
!1065 = !DILocation(line: 119, column: 14, scope: !1044)
!1066 = !DILocation(line: 119, column: 7, scope: !1044)
!1067 = !DILocation(line: 122, column: 22, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1039, file: !96, line: 122, column: 8)
!1069 = !DILocation(line: 122, column: 8, scope: !1068)
!1070 = !DILocation(line: 122, column: 30, scope: !1068)
!1071 = !DILocation(line: 122, column: 8, scope: !1039)
!1072 = !DILocation(line: 123, column: 13, scope: !1068)
!1073 = !DILocation(line: 123, column: 6, scope: !1068)
!1074 = !DILocation(line: 124, column: 1, scope: !1039)
!1075 = distinct !DISubprogram(name: "set_program_name", scope: !111, file: !111, line: 39, type: !52, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DILocalVariable(name: "argv0", arg: 1, scope: !1075, file: !111, line: 39, type: !54)
!1078 = !DILocalVariable(name: "slash", scope: !1075, file: !111, line: 46, type: !54)
!1079 = !DILocalVariable(name: "base", scope: !1075, file: !111, line: 47, type: !54)
!1080 = !DILocation(line: 39, column: 31, scope: !1075)
!1081 = !DILocation(line: 51, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1075, file: !111, line: 51, column: 7)
!1083 = !DILocation(line: 51, column: 7, scope: !1075)
!1084 = !DILocation(line: 55, column: 14, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !111, line: 52, column: 5)
!1086 = !DILocation(line: 54, column: 7, scope: !1085)
!1087 = !DILocation(line: 56, column: 7, scope: !1085)
!1088 = !DILocation(line: 59, column: 11, scope: !1075)
!1089 = !DILocation(line: 46, column: 15, scope: !1075)
!1090 = !DILocation(line: 60, column: 17, scope: !1075)
!1091 = !DILocation(line: 60, column: 33, scope: !1075)
!1092 = !DILocation(line: 60, column: 11, scope: !1075)
!1093 = !DILocation(line: 47, column: 15, scope: !1075)
!1094 = !DILocation(line: 61, column: 12, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1075, file: !111, line: 61, column: 7)
!1096 = !DILocation(line: 61, column: 20, scope: !1095)
!1097 = !DILocation(line: 61, column: 25, scope: !1095)
!1098 = !DILocation(line: 61, column: 42, scope: !1095)
!1099 = !DILocation(line: 61, column: 28, scope: !1095)
!1100 = !DILocation(line: 61, column: 61, scope: !1095)
!1101 = !DILocation(line: 61, column: 7, scope: !1075)
!1102 = !DILocation(line: 64, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !111, line: 64, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1095, file: !111, line: 62, column: 5)
!1105 = !DILocation(line: 64, column: 36, scope: !1103)
!1106 = !DILocation(line: 64, column: 11, scope: !1104)
!1107 = !DILocation(line: 66, column: 24, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !111, line: 65, column: 9)
!1109 = !DILocation(line: 70, column: 41, scope: !1108)
!1110 = !DILocation(line: 72, column: 9, scope: !1108)
!1111 = !DILocation(line: 84, column: 16, scope: !1075)
!1112 = !DILocation(line: 90, column: 27, scope: !1075)
!1113 = !DILocation(line: 92, column: 1, scope: !1075)
!1114 = distinct !DISubprogram(name: "clone_quoting_options", scope: !145, file: !145, line: 114, type: !1115, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1118)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1117, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1118 = !{!1119, !1120, !1121}
!1119 = !DILocalVariable(name: "o", arg: 1, scope: !1114, file: !145, line: 114, type: !1117)
!1120 = !DILocalVariable(name: "e", scope: !1114, file: !145, line: 116, type: !77)
!1121 = !DILocalVariable(name: "p", scope: !1114, file: !145, line: 117, type: !1117)
!1122 = !DILocation(line: 114, column: 48, scope: !1114)
!1123 = !DILocation(line: 116, column: 11, scope: !1114)
!1124 = !DILocation(line: 116, column: 7, scope: !1114)
!1125 = !DILocation(line: 117, column: 40, scope: !1114)
!1126 = !DILocation(line: 117, column: 31, scope: !1114)
!1127 = !DILocation(line: 117, column: 27, scope: !1114)
!1128 = !DILocation(line: 119, column: 9, scope: !1114)
!1129 = !DILocation(line: 120, column: 3, scope: !1114)
!1130 = distinct !DISubprogram(name: "get_quoting_style", scope: !145, file: !145, line: 125, type: !1131, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1135)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!5, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "o", arg: 1, scope: !1130, file: !145, line: 125, type: !1133)
!1137 = !DILocation(line: 125, column: 50, scope: !1130)
!1138 = !DILocation(line: 127, column: 11, scope: !1130)
!1139 = !DILocation(line: 127, column: 46, scope: !1130)
!1140 = !{!1141, !624, i64 0}
!1141 = !{!"quoting_options", !624, i64 0, !684, i64 4, !624, i64 8, !623, i64 40, !623, i64 48}
!1142 = !DILocation(line: 127, column: 3, scope: !1130)
!1143 = distinct !DISubprogram(name: "set_quoting_style", scope: !145, file: !145, line: 133, type: !1144, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !1117, !5}
!1146 = !{!1147, !1148}
!1147 = !DILocalVariable(name: "o", arg: 1, scope: !1143, file: !145, line: 133, type: !1117)
!1148 = !DILocalVariable(name: "s", arg: 2, scope: !1143, file: !145, line: 133, type: !5)
!1149 = !DILocation(line: 133, column: 44, scope: !1143)
!1150 = !DILocation(line: 133, column: 66, scope: !1143)
!1151 = !DILocation(line: 135, column: 4, scope: !1143)
!1152 = !DILocation(line: 135, column: 39, scope: !1143)
!1153 = !DILocation(line: 135, column: 45, scope: !1143)
!1154 = !DILocation(line: 136, column: 1, scope: !1143)
!1155 = distinct !DISubprogram(name: "set_char_quoting", scope: !145, file: !145, line: 144, type: !1156, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!77, !1117, !45, !77}
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1165, !1166}
!1159 = !DILocalVariable(name: "o", arg: 1, scope: !1155, file: !145, line: 144, type: !1117)
!1160 = !DILocalVariable(name: "c", arg: 2, scope: !1155, file: !145, line: 144, type: !45)
!1161 = !DILocalVariable(name: "i", arg: 3, scope: !1155, file: !145, line: 144, type: !77)
!1162 = !DILocalVariable(name: "uc", scope: !1155, file: !145, line: 146, type: !559)
!1163 = !DILocalVariable(name: "p", scope: !1155, file: !145, line: 147, type: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1165 = !DILocalVariable(name: "shift", scope: !1155, file: !145, line: 149, type: !77)
!1166 = !DILocalVariable(name: "r", scope: !1155, file: !145, line: 150, type: !77)
!1167 = !DILocation(line: 144, column: 43, scope: !1155)
!1168 = !DILocation(line: 144, column: 51, scope: !1155)
!1169 = !DILocation(line: 144, column: 58, scope: !1155)
!1170 = !DILocation(line: 146, column: 17, scope: !1155)
!1171 = !DILocation(line: 148, column: 6, scope: !1155)
!1172 = !DILocation(line: 148, column: 62, scope: !1155)
!1173 = !DILocation(line: 148, column: 57, scope: !1155)
!1174 = !DILocation(line: 147, column: 17, scope: !1155)
!1175 = !DILocation(line: 149, column: 18, scope: !1155)
!1176 = !DILocation(line: 149, column: 15, scope: !1155)
!1177 = !DILocation(line: 149, column: 7, scope: !1155)
!1178 = !DILocation(line: 150, column: 12, scope: !1155)
!1179 = !DILocation(line: 150, column: 15, scope: !1155)
!1180 = !DILocation(line: 150, column: 25, scope: !1155)
!1181 = !DILocation(line: 150, column: 7, scope: !1155)
!1182 = !DILocation(line: 151, column: 13, scope: !1155)
!1183 = !DILocation(line: 151, column: 18, scope: !1155)
!1184 = !DILocation(line: 151, column: 23, scope: !1155)
!1185 = !DILocation(line: 151, column: 6, scope: !1155)
!1186 = !DILocation(line: 152, column: 3, scope: !1155)
!1187 = distinct !DISubprogram(name: "set_quoting_flags", scope: !145, file: !145, line: 160, type: !1188, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!77, !1117, !77}
!1190 = !{!1191, !1192, !1193}
!1191 = !DILocalVariable(name: "o", arg: 1, scope: !1187, file: !145, line: 160, type: !1117)
!1192 = !DILocalVariable(name: "i", arg: 2, scope: !1187, file: !145, line: 160, type: !77)
!1193 = !DILocalVariable(name: "r", scope: !1187, file: !145, line: 162, type: !77)
!1194 = !DILocation(line: 160, column: 44, scope: !1187)
!1195 = !DILocation(line: 160, column: 51, scope: !1187)
!1196 = !DILocation(line: 163, column: 8, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1187, file: !145, line: 163, column: 7)
!1198 = !DILocation(line: 163, column: 7, scope: !1187)
!1199 = !DILocation(line: 165, column: 10, scope: !1187)
!1200 = !{!1141, !684, i64 4}
!1201 = !DILocation(line: 162, column: 7, scope: !1187)
!1202 = !DILocation(line: 166, column: 12, scope: !1187)
!1203 = !DILocation(line: 167, column: 3, scope: !1187)
!1204 = distinct !DISubprogram(name: "set_custom_quoting", scope: !145, file: !145, line: 171, type: !1205, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1117, !54, !54}
!1207 = !{!1208, !1209, !1210}
!1208 = !DILocalVariable(name: "o", arg: 1, scope: !1204, file: !145, line: 171, type: !1117)
!1209 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1204, file: !145, line: 172, type: !54)
!1210 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1204, file: !145, line: 172, type: !54)
!1211 = !DILocation(line: 171, column: 45, scope: !1204)
!1212 = !DILocation(line: 172, column: 33, scope: !1204)
!1213 = !DILocation(line: 172, column: 57, scope: !1204)
!1214 = !DILocation(line: 174, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1204, file: !145, line: 174, column: 7)
!1216 = !DILocation(line: 174, column: 7, scope: !1204)
!1217 = !DILocation(line: 176, column: 6, scope: !1204)
!1218 = !DILocation(line: 176, column: 12, scope: !1204)
!1219 = !DILocation(line: 177, column: 8, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1204, file: !145, line: 177, column: 7)
!1221 = !DILocation(line: 177, column: 23, scope: !1220)
!1222 = !DILocation(line: 177, column: 19, scope: !1220)
!1223 = !DILocation(line: 178, column: 5, scope: !1220)
!1224 = !DILocation(line: 179, column: 6, scope: !1204)
!1225 = !DILocation(line: 179, column: 17, scope: !1204)
!1226 = !{!1141, !623, i64 40}
!1227 = !DILocation(line: 180, column: 6, scope: !1204)
!1228 = !DILocation(line: 180, column: 18, scope: !1204)
!1229 = !{!1141, !623, i64 48}
!1230 = !DILocation(line: 181, column: 1, scope: !1204)
!1231 = distinct !DISubprogram(name: "quotearg_buffer", scope: !145, file: !145, line: 776, type: !1232, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!139, !44, !139, !54, !139, !1133}
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1235 = !DILocalVariable(name: "buffer", arg: 1, scope: !1231, file: !145, line: 776, type: !44)
!1236 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1231, file: !145, line: 776, type: !139)
!1237 = !DILocalVariable(name: "arg", arg: 3, scope: !1231, file: !145, line: 777, type: !54)
!1238 = !DILocalVariable(name: "argsize", arg: 4, scope: !1231, file: !145, line: 777, type: !139)
!1239 = !DILocalVariable(name: "o", arg: 5, scope: !1231, file: !145, line: 778, type: !1133)
!1240 = !DILocalVariable(name: "p", scope: !1231, file: !145, line: 780, type: !1133)
!1241 = !DILocalVariable(name: "e", scope: !1231, file: !145, line: 781, type: !77)
!1242 = !DILocalVariable(name: "r", scope: !1231, file: !145, line: 782, type: !139)
!1243 = !DILocation(line: 776, column: 24, scope: !1231)
!1244 = !DILocation(line: 776, column: 39, scope: !1231)
!1245 = !DILocation(line: 777, column: 30, scope: !1231)
!1246 = !DILocation(line: 777, column: 42, scope: !1231)
!1247 = !DILocation(line: 778, column: 48, scope: !1231)
!1248 = !DILocation(line: 780, column: 37, scope: !1231)
!1249 = !DILocation(line: 780, column: 33, scope: !1231)
!1250 = !DILocation(line: 781, column: 11, scope: !1231)
!1251 = !DILocation(line: 781, column: 7, scope: !1231)
!1252 = !DILocation(line: 783, column: 43, scope: !1231)
!1253 = !DILocation(line: 783, column: 53, scope: !1231)
!1254 = !DILocation(line: 783, column: 60, scope: !1231)
!1255 = !DILocation(line: 784, column: 43, scope: !1231)
!1256 = !DILocation(line: 784, column: 58, scope: !1231)
!1257 = !DILocation(line: 782, column: 14, scope: !1231)
!1258 = !DILocation(line: 782, column: 10, scope: !1231)
!1259 = !DILocation(line: 785, column: 9, scope: !1231)
!1260 = !DILocation(line: 786, column: 3, scope: !1231)
!1261 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !145, file: !145, line: 248, type: !1262, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1266)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!139, !44, !139, !54, !139, !5, !77, !1264, !54, !54}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1291, !1292, !1293, !1294, !1295, !1298, !1299, !1312, !1315, !1316, !1323}
!1267 = !DILocalVariable(name: "buffer", arg: 1, scope: !1261, file: !145, line: 248, type: !44)
!1268 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1261, file: !145, line: 248, type: !139)
!1269 = !DILocalVariable(name: "arg", arg: 3, scope: !1261, file: !145, line: 249, type: !54)
!1270 = !DILocalVariable(name: "argsize", arg: 4, scope: !1261, file: !145, line: 249, type: !139)
!1271 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1261, file: !145, line: 250, type: !5)
!1272 = !DILocalVariable(name: "flags", arg: 6, scope: !1261, file: !145, line: 250, type: !77)
!1273 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1261, file: !145, line: 251, type: !1264)
!1274 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1261, file: !145, line: 252, type: !54)
!1275 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1261, file: !145, line: 253, type: !54)
!1276 = !DILocalVariable(name: "i", scope: !1261, file: !145, line: 255, type: !139)
!1277 = !DILocalVariable(name: "len", scope: !1261, file: !145, line: 256, type: !139)
!1278 = !DILocalVariable(name: "orig_buffersize", scope: !1261, file: !145, line: 257, type: !139)
!1279 = !DILocalVariable(name: "quote_string", scope: !1261, file: !145, line: 258, type: !54)
!1280 = !DILocalVariable(name: "quote_string_len", scope: !1261, file: !145, line: 259, type: !139)
!1281 = !DILocalVariable(name: "backslash_escapes", scope: !1261, file: !145, line: 260, type: !97)
!1282 = !DILocalVariable(name: "unibyte_locale", scope: !1261, file: !145, line: 261, type: !97)
!1283 = !DILocalVariable(name: "elide_outer_quotes", scope: !1261, file: !145, line: 262, type: !97)
!1284 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1261, file: !145, line: 263, type: !97)
!1285 = !DILocalVariable(name: "encountered_single_quote", scope: !1261, file: !145, line: 264, type: !97)
!1286 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1261, file: !145, line: 265, type: !97)
!1287 = !DILocalVariable(name: "c", scope: !1288, file: !145, line: 394, type: !559)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !145, line: 393, column: 5)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !145, line: 392, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 392, column: 3)
!1291 = !DILocalVariable(name: "esc", scope: !1288, file: !145, line: 395, type: !559)
!1292 = !DILocalVariable(name: "is_right_quote", scope: !1288, file: !145, line: 396, type: !97)
!1293 = !DILocalVariable(name: "escaping", scope: !1288, file: !145, line: 397, type: !97)
!1294 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1288, file: !145, line: 398, type: !97)
!1295 = !DILocalVariable(name: "m", scope: !1296, file: !145, line: 602, type: !139)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 600, column: 11)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 418, column: 9)
!1298 = !DILocalVariable(name: "printable", scope: !1296, file: !145, line: 604, type: !97)
!1299 = !DILocalVariable(name: "mbstate", scope: !1300, file: !145, line: 613, type: !1302)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !145, line: 612, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !145, line: 606, column: 17)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !202, line: 6, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !204, line: 21, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 13, size: 64, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1304, file: !204, line: 15, baseType: !77, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1304, file: !204, line: 20, baseType: !1308, size: 32, offset: 32)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !204, line: 16, size: 32, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1308, file: !204, line: 18, baseType: !158, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1308, file: !204, line: 19, baseType: !213, size: 32)
!1312 = !DILocalVariable(name: "w", scope: !1313, file: !145, line: 623, type: !1314)
!1313 = distinct !DILexicalBlock(scope: !1300, file: !145, line: 622, column: 19)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !140, line: 90, baseType: !77)
!1315 = !DILocalVariable(name: "bytes", scope: !1313, file: !145, line: 624, type: !139)
!1316 = !DILocalVariable(name: "j", scope: !1317, file: !145, line: 649, type: !139)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !145, line: 648, column: 27)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !145, line: 646, column: 29)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 641, column: 23)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !145, line: 633, column: 30)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !145, line: 628, column: 30)
!1322 = distinct !DILexicalBlock(scope: !1313, file: !145, line: 626, column: 25)
!1323 = !DILocalVariable(name: "ilim", scope: !1324, file: !145, line: 676, type: !139)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !145, line: 673, column: 15)
!1325 = distinct !DILexicalBlock(scope: !1296, file: !145, line: 672, column: 17)
!1326 = !DILocation(line: 248, column: 33, scope: !1261)
!1327 = !DILocation(line: 248, column: 48, scope: !1261)
!1328 = !DILocation(line: 249, column: 39, scope: !1261)
!1329 = !DILocation(line: 249, column: 51, scope: !1261)
!1330 = !DILocation(line: 250, column: 46, scope: !1261)
!1331 = !DILocation(line: 250, column: 65, scope: !1261)
!1332 = !DILocation(line: 251, column: 47, scope: !1261)
!1333 = !DILocation(line: 252, column: 39, scope: !1261)
!1334 = !DILocation(line: 253, column: 39, scope: !1261)
!1335 = !DILocation(line: 256, column: 10, scope: !1261)
!1336 = !DILocation(line: 257, column: 10, scope: !1261)
!1337 = !DILocation(line: 258, column: 15, scope: !1261)
!1338 = !DILocation(line: 259, column: 10, scope: !1261)
!1339 = !DILocation(line: 260, column: 8, scope: !1261)
!1340 = !DILocation(line: 261, column: 25, scope: !1261)
!1341 = !DILocation(line: 261, column: 36, scope: !1261)
!1342 = !DILocation(line: 262, column: 8, scope: !1261)
!1343 = !DILocation(line: 263, column: 8, scope: !1261)
!1344 = !DILocation(line: 264, column: 8, scope: !1261)
!1345 = !DILocation(line: 265, column: 8, scope: !1261)
!1346 = !DILocation(line: 265, column: 3, scope: !1261)
!1347 = !DILocation(line: 308, column: 3, scope: !1261)
!1348 = !DILocation(line: 315, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 309, column: 5)
!1350 = !DILocation(line: 315, column: 12, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !145, line: 315, column: 11)
!1352 = !DILocation(line: 316, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !145, line: 316, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !145, line: 316, column: 9)
!1355 = !DILocation(line: 316, column: 9, scope: !1354)
!1356 = !DILocation(line: 354, column: 26, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !145, line: 332, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !145, line: 331, column: 13)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !145, line: 330, column: 7)
!1360 = !DILocation(line: 355, column: 27, scope: !1357)
!1361 = !DILocation(line: 356, column: 11, scope: !1357)
!1362 = !DILocation(line: 357, column: 14, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !145, line: 357, column: 13)
!1364 = !DILocation(line: 357, column: 13, scope: !1359)
!1365 = !DILocation(line: 358, column: 43, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !145, line: 358, column: 11)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !145, line: 358, column: 11)
!1368 = !DILocation(line: 358, column: 11, scope: !1367)
!1369 = !DILocation(line: 359, column: 13, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !145, line: 359, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !145, line: 359, column: 13)
!1372 = !DILocation(line: 359, column: 13, scope: !1371)
!1373 = !DILocation(line: 358, column: 70, scope: !1366)
!1374 = distinct !{!1374, !1368, !1375}
!1375 = !DILocation(line: 359, column: 13, scope: !1367)
!1376 = !DILocation(line: 362, column: 28, scope: !1359)
!1377 = !DILocation(line: 364, column: 7, scope: !1349)
!1378 = !DILocation(line: 367, column: 7, scope: !1349)
!1379 = !DILocation(line: 370, column: 7, scope: !1349)
!1380 = !DILocation(line: 373, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1349, file: !145, line: 373, column: 11)
!1382 = !DILocation(line: 373, column: 11, scope: !1349)
!1383 = !DILocation(line: 378, column: 12, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1349, file: !145, line: 378, column: 11)
!1385 = !DILocation(line: 378, column: 11, scope: !1349)
!1386 = !DILocation(line: 379, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !145, line: 379, column: 9)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !145, line: 379, column: 9)
!1389 = !DILocation(line: 379, column: 9, scope: !1388)
!1390 = !DILocation(line: 386, column: 7, scope: !1349)
!1391 = !DILocation(line: 389, column: 7, scope: !1349)
!1392 = !DILocation(line: 255, column: 10, scope: !1261)
!1393 = !DILocation(line: 392, column: 8, scope: !1290)
!1394 = !DILocation(line: 392, column: 27, scope: !1289)
!1395 = !DILocation(line: 392, column: 19, scope: !1289)
!1396 = !DILocation(line: 392, column: 60, scope: !1289)
!1397 = !DILocation(line: 392, column: 3, scope: !1290)
!1398 = !DILocation(line: 392, column: 41, scope: !1289)
!1399 = !DILocation(line: 392, column: 48, scope: !1289)
!1400 = !DILocation(line: 396, column: 12, scope: !1288)
!1401 = !DILocation(line: 397, column: 12, scope: !1288)
!1402 = !DILocation(line: 398, column: 12, scope: !1288)
!1403 = !DILocation(line: 401, column: 11, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 400, column: 11)
!1405 = !DILocation(line: 403, column: 17, scope: !1404)
!1406 = !DILocation(line: 404, column: 39, scope: !1404)
!1407 = !DILocation(line: 408, column: 32, scope: !1404)
!1408 = !DILocation(line: 404, column: 19, scope: !1404)
!1409 = !DILocation(line: 404, column: 15, scope: !1404)
!1410 = !DILocation(line: 409, column: 11, scope: !1404)
!1411 = !DILocation(line: 409, column: 26, scope: !1404)
!1412 = !DILocation(line: 409, column: 14, scope: !1404)
!1413 = !DILocation(line: 409, column: 63, scope: !1404)
!1414 = !DILocation(line: 400, column: 11, scope: !1288)
!1415 = !DILocation(line: 416, column: 11, scope: !1288)
!1416 = !DILocation(line: 394, column: 21, scope: !1288)
!1417 = !DILocation(line: 417, column: 7, scope: !1288)
!1418 = !DILocation(line: 420, column: 15, scope: !1297)
!1419 = !DILocation(line: 422, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !145, line: 422, column: 15)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !145, line: 421, column: 13)
!1422 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 420, column: 15)
!1423 = !DILocation(line: 422, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !145, line: 422, column: 15)
!1425 = !DILocation(line: 422, column: 15, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !145, line: 422, column: 15)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !145, line: 422, column: 15)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !145, line: 422, column: 15)
!1429 = !DILocation(line: 422, column: 15, scope: !1427)
!1430 = !DILocation(line: 422, column: 15, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !145, line: 422, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !145, line: 422, column: 15)
!1433 = !DILocation(line: 422, column: 15, scope: !1432)
!1434 = !DILocation(line: 422, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !145, line: 422, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1428, file: !145, line: 422, column: 15)
!1437 = !DILocation(line: 422, column: 15, scope: !1436)
!1438 = !DILocation(line: 422, column: 15, scope: !1428)
!1439 = !DILocation(line: 422, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !145, line: 422, column: 15)
!1441 = distinct !DILexicalBlock(scope: !1420, file: !145, line: 422, column: 15)
!1442 = !DILocation(line: 422, column: 15, scope: !1441)
!1443 = !DILocation(line: 430, column: 19, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1421, file: !145, line: 429, column: 19)
!1445 = !DILocation(line: 430, column: 24, scope: !1444)
!1446 = !DILocation(line: 430, column: 28, scope: !1444)
!1447 = !DILocation(line: 430, column: 38, scope: !1444)
!1448 = !DILocation(line: 430, column: 48, scope: !1444)
!1449 = !DILocation(line: 430, column: 59, scope: !1444)
!1450 = !DILocation(line: 432, column: 19, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !145, line: 432, column: 19)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !145, line: 432, column: 19)
!1453 = distinct !DILexicalBlock(scope: !1444, file: !145, line: 431, column: 17)
!1454 = !DILocation(line: 432, column: 19, scope: !1452)
!1455 = !DILocation(line: 433, column: 19, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !145, line: 433, column: 19)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !145, line: 433, column: 19)
!1458 = !DILocation(line: 433, column: 19, scope: !1457)
!1459 = !DILocation(line: 434, column: 17, scope: !1453)
!1460 = !DILocation(line: 441, column: 20, scope: !1422)
!1461 = !DILocation(line: 446, column: 11, scope: !1297)
!1462 = !DILocation(line: 449, column: 19, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 447, column: 13)
!1464 = !DILocation(line: 455, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1463, file: !145, line: 454, column: 19)
!1466 = !DILocation(line: 455, column: 24, scope: !1465)
!1467 = !DILocation(line: 455, column: 28, scope: !1465)
!1468 = !DILocation(line: 455, column: 38, scope: !1465)
!1469 = !DILocation(line: 455, column: 47, scope: !1465)
!1470 = !DILocation(line: 455, column: 41, scope: !1465)
!1471 = !DILocation(line: 455, column: 52, scope: !1465)
!1472 = !DILocation(line: 454, column: 19, scope: !1463)
!1473 = !DILocation(line: 456, column: 25, scope: !1465)
!1474 = !DILocation(line: 456, column: 17, scope: !1465)
!1475 = !DILocation(line: 463, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !145, line: 457, column: 19)
!1477 = !DILocation(line: 467, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !145, line: 467, column: 21)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !145, line: 467, column: 21)
!1480 = !DILocation(line: 467, column: 21, scope: !1479)
!1481 = !DILocation(line: 468, column: 21, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !145, line: 468, column: 21)
!1483 = distinct !DILexicalBlock(scope: !1476, file: !145, line: 468, column: 21)
!1484 = !DILocation(line: 468, column: 21, scope: !1483)
!1485 = !DILocation(line: 469, column: 21, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !145, line: 469, column: 21)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !145, line: 469, column: 21)
!1488 = !DILocation(line: 469, column: 21, scope: !1487)
!1489 = !DILocation(line: 470, column: 21, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !145, line: 470, column: 21)
!1491 = distinct !DILexicalBlock(scope: !1476, file: !145, line: 470, column: 21)
!1492 = !DILocation(line: 470, column: 21, scope: !1491)
!1493 = !DILocation(line: 471, column: 21, scope: !1476)
!1494 = !DILocation(line: 395, column: 21, scope: !1288)
!1495 = !DILocation(line: 484, column: 31, scope: !1297)
!1496 = !DILocation(line: 485, column: 31, scope: !1297)
!1497 = !DILocation(line: 487, column: 31, scope: !1297)
!1498 = !DILocation(line: 488, column: 31, scope: !1297)
!1499 = !DILocation(line: 489, column: 31, scope: !1297)
!1500 = !DILocation(line: 492, column: 15, scope: !1297)
!1501 = !DILocation(line: 494, column: 19, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !145, line: 493, column: 13)
!1503 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 492, column: 15)
!1504 = !DILocation(line: 501, column: 33, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 501, column: 15)
!1506 = !DILocation(line: 506, column: 15, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 505, column: 15)
!1508 = !DILocation(line: 510, column: 15, scope: !1297)
!1509 = !DILocation(line: 518, column: 26, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 518, column: 15)
!1511 = !DILocation(line: 518, column: 15, scope: !1297)
!1512 = !DILocation(line: 518, column: 40, scope: !1510)
!1513 = !DILocation(line: 518, column: 47, scope: !1510)
!1514 = !DILocation(line: 522, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 522, column: 15)
!1516 = !DILocation(line: 518, column: 18, scope: !1510)
!1517 = !DILocation(line: 518, column: 65, scope: !1510)
!1518 = !DILocation(line: 522, column: 15, scope: !1297)
!1519 = !DILocation(line: 526, column: 11, scope: !1297)
!1520 = !DILocation(line: 541, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 540, column: 15)
!1522 = !DILocation(line: 548, column: 15, scope: !1297)
!1523 = !DILocation(line: 550, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !145, line: 549, column: 13)
!1525 = distinct !DILexicalBlock(scope: !1297, file: !145, line: 548, column: 15)
!1526 = !DILocation(line: 553, column: 19, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !145, line: 553, column: 19)
!1528 = !DILocation(line: 553, column: 35, scope: !1527)
!1529 = !DILocation(line: 553, column: 30, scope: !1527)
!1530 = !DILocation(line: 562, column: 15, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !145, line: 562, column: 15)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !145, line: 562, column: 15)
!1533 = !DILocation(line: 562, column: 15, scope: !1532)
!1534 = !DILocation(line: 563, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !145, line: 563, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1524, file: !145, line: 563, column: 15)
!1537 = !DILocation(line: 563, column: 15, scope: !1536)
!1538 = !DILocation(line: 564, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !145, line: 564, column: 15)
!1540 = distinct !DILexicalBlock(scope: !1524, file: !145, line: 564, column: 15)
!1541 = !DILocation(line: 564, column: 15, scope: !1540)
!1542 = !DILocation(line: 566, column: 13, scope: !1524)
!1543 = !DILocation(line: 606, column: 17, scope: !1296)
!1544 = !DILocation(line: 602, column: 20, scope: !1296)
!1545 = !DILocation(line: 609, column: 29, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1301, file: !145, line: 607, column: 15)
!1547 = !{!1548, !1548, i64 0}
!1548 = !{!"short", !624, i64 0}
!1549 = !DILocation(line: 609, column: 27, scope: !1546)
!1550 = !DILocation(line: 604, column: 18, scope: !1296)
!1551 = !DILocation(line: 610, column: 15, scope: !1546)
!1552 = !DILocation(line: 613, column: 17, scope: !1300)
!1553 = !DILocation(line: 614, column: 17, scope: !1300)
!1554 = !DILocation(line: 618, column: 29, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1300, file: !145, line: 618, column: 21)
!1556 = !DILocation(line: 618, column: 21, scope: !1300)
!1557 = !DILocation(line: 619, column: 29, scope: !1555)
!1558 = !DILocation(line: 619, column: 19, scope: !1555)
!1559 = !DILocation(line: 621, column: 17, scope: !1300)
!1560 = distinct !{!1560, !1559, !1561}
!1561 = !DILocation(line: 667, column: 44, scope: !1300)
!1562 = !DILocation(line: 623, column: 21, scope: !1313)
!1563 = !DILocation(line: 624, column: 56, scope: !1313)
!1564 = !DILocation(line: 624, column: 50, scope: !1313)
!1565 = !DILocation(line: 625, column: 53, scope: !1313)
!1566 = !DILocation(line: 613, column: 27, scope: !1300)
!1567 = !DILocation(line: 623, column: 29, scope: !1313)
!1568 = !DILocation(line: 624, column: 36, scope: !1313)
!1569 = !DILocation(line: 624, column: 28, scope: !1313)
!1570 = !DILocation(line: 626, column: 25, scope: !1313)
!1571 = !DILocation(line: 636, column: 38, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 634, column: 23)
!1573 = !DILocation(line: 636, column: 48, scope: !1572)
!1574 = !DILocation(line: 636, column: 51, scope: !1572)
!1575 = !DILocation(line: 636, column: 25, scope: !1572)
!1576 = !DILocation(line: 637, column: 28, scope: !1572)
!1577 = !DILocation(line: 636, column: 34, scope: !1572)
!1578 = distinct !{!1578, !1575, !1576}
!1579 = !DILocation(line: 650, column: 43, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !145, line: 650, column: 29)
!1581 = distinct !DILexicalBlock(scope: !1317, file: !145, line: 650, column: 29)
!1582 = !DILocation(line: 647, column: 29, scope: !1318)
!1583 = !DILocation(line: 649, column: 36, scope: !1317)
!1584 = !DILocation(line: 651, column: 49, scope: !1580)
!1585 = !DILocation(line: 651, column: 39, scope: !1580)
!1586 = !DILocation(line: 651, column: 31, scope: !1580)
!1587 = !DILocation(line: 650, column: 53, scope: !1580)
!1588 = !DILocation(line: 650, column: 29, scope: !1581)
!1589 = distinct !{!1589, !1588, !1590}
!1590 = !DILocation(line: 659, column: 33, scope: !1581)
!1591 = !DILocation(line: 666, column: 19, scope: !1300)
!1592 = !DILocation(line: 662, column: 41, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1319, file: !145, line: 662, column: 29)
!1594 = !DILocation(line: 662, column: 31, scope: !1593)
!1595 = !DILocation(line: 662, column: 29, scope: !1319)
!1596 = !DILocation(line: 664, column: 27, scope: !1319)
!1597 = !DILocation(line: 667, column: 26, scope: !1300)
!1598 = !DILocation(line: 667, column: 24, scope: !1300)
!1599 = !DILocation(line: 666, column: 19, scope: !1313)
!1600 = !DILocation(line: 668, column: 15, scope: !1301)
!1601 = !DILocation(line: 670, column: 40, scope: !1296)
!1602 = !DILocation(line: 672, column: 19, scope: !1325)
!1603 = !DILocation(line: 672, column: 45, scope: !1325)
!1604 = !DILocation(line: 672, column: 23, scope: !1325)
!1605 = !DILocation(line: 676, column: 33, scope: !1324)
!1606 = !DILocation(line: 676, column: 24, scope: !1324)
!1607 = !DILocation(line: 678, column: 17, scope: !1324)
!1608 = !DILocation(line: 680, column: 43, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !145, line: 680, column: 25)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !145, line: 679, column: 19)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !145, line: 678, column: 17)
!1612 = distinct !DILexicalBlock(scope: !1324, file: !145, line: 678, column: 17)
!1613 = !DILocation(line: 682, column: 25, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !145, line: 682, column: 25)
!1615 = distinct !DILexicalBlock(scope: !1609, file: !145, line: 681, column: 23)
!1616 = !DILocation(line: 682, column: 25, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !145, line: 682, column: 25)
!1618 = !DILocation(line: 682, column: 25, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !145, line: 682, column: 25)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !145, line: 682, column: 25)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !145, line: 682, column: 25)
!1622 = !DILocation(line: 682, column: 25, scope: !1620)
!1623 = !DILocation(line: 682, column: 25, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !145, line: 682, column: 25)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !145, line: 682, column: 25)
!1626 = !DILocation(line: 682, column: 25, scope: !1625)
!1627 = !DILocation(line: 682, column: 25, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !145, line: 682, column: 25)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !145, line: 682, column: 25)
!1630 = !DILocation(line: 682, column: 25, scope: !1629)
!1631 = !DILocation(line: 682, column: 25, scope: !1621)
!1632 = !DILocation(line: 682, column: 25, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !145, line: 682, column: 25)
!1634 = distinct !DILexicalBlock(scope: !1614, file: !145, line: 682, column: 25)
!1635 = !DILocation(line: 682, column: 25, scope: !1634)
!1636 = !DILocation(line: 683, column: 25, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !145, line: 683, column: 25)
!1638 = distinct !DILexicalBlock(scope: !1615, file: !145, line: 683, column: 25)
!1639 = !DILocation(line: 683, column: 25, scope: !1638)
!1640 = !DILocation(line: 684, column: 25, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !145, line: 684, column: 25)
!1642 = distinct !DILexicalBlock(scope: !1615, file: !145, line: 684, column: 25)
!1643 = !DILocation(line: 684, column: 25, scope: !1642)
!1644 = !DILocation(line: 685, column: 38, scope: !1615)
!1645 = !DILocation(line: 685, column: 33, scope: !1615)
!1646 = !DILocation(line: 686, column: 23, scope: !1615)
!1647 = !DILocation(line: 687, column: 30, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1609, file: !145, line: 687, column: 30)
!1649 = !DILocation(line: 687, column: 30, scope: !1609)
!1650 = !DILocation(line: 689, column: 25, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !145, line: 689, column: 25)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !145, line: 689, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !145, line: 688, column: 23)
!1654 = !DILocation(line: 689, column: 25, scope: !1652)
!1655 = !DILocation(line: 691, column: 23, scope: !1653)
!1656 = !DILocation(line: 692, column: 35, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1610, file: !145, line: 692, column: 25)
!1658 = !DILocation(line: 692, column: 30, scope: !1657)
!1659 = !DILocation(line: 692, column: 25, scope: !1610)
!1660 = !DILocation(line: 694, column: 21, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !145, line: 694, column: 21)
!1662 = distinct !DILexicalBlock(scope: !1610, file: !145, line: 694, column: 21)
!1663 = !DILocation(line: 694, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !145, line: 694, column: 21)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !145, line: 694, column: 21)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !145, line: 694, column: 21)
!1667 = !DILocation(line: 694, column: 21, scope: !1665)
!1668 = !DILocation(line: 694, column: 21, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !145, line: 694, column: 21)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !145, line: 694, column: 21)
!1671 = !DILocation(line: 694, column: 21, scope: !1670)
!1672 = !DILocation(line: 694, column: 21, scope: !1666)
!1673 = !DILocation(line: 695, column: 21, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !145, line: 695, column: 21)
!1675 = distinct !DILexicalBlock(scope: !1610, file: !145, line: 695, column: 21)
!1676 = !DILocation(line: 695, column: 21, scope: !1675)
!1677 = !DILocation(line: 696, column: 25, scope: !1610)
!1678 = !DILocation(line: 678, column: 17, scope: !1611)
!1679 = distinct !{!1679, !1680, !1681}
!1680 = !DILocation(line: 678, column: 17, scope: !1612)
!1681 = !DILocation(line: 697, column: 19, scope: !1612)
!1682 = !DILocation(line: 704, column: 34, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 704, column: 11)
!1684 = !DILocation(line: 706, column: 14, scope: !1683)
!1685 = !DILocation(line: 707, column: 14, scope: !1683)
!1686 = !DILocation(line: 707, column: 35, scope: !1683)
!1687 = !DILocation(line: 707, column: 17, scope: !1683)
!1688 = !DILocation(line: 707, column: 53, scope: !1683)
!1689 = !DILocation(line: 707, column: 47, scope: !1683)
!1690 = !DILocation(line: 707, column: 65, scope: !1683)
!1691 = !DILocation(line: 708, column: 15, scope: !1683)
!1692 = !DILocation(line: 708, column: 11, scope: !1683)
!1693 = !DILocation(line: 704, column: 11, scope: !1288)
!1694 = !DILocation(line: 712, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 712, column: 7)
!1696 = !DILocation(line: 712, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1695, file: !145, line: 712, column: 7)
!1698 = !DILocation(line: 712, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !145, line: 712, column: 7)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !145, line: 712, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !145, line: 712, column: 7)
!1702 = !DILocation(line: 712, column: 7, scope: !1700)
!1703 = !DILocation(line: 712, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !145, line: 712, column: 7)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !145, line: 712, column: 7)
!1706 = !DILocation(line: 712, column: 7, scope: !1705)
!1707 = !DILocation(line: 712, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !145, line: 712, column: 7)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !145, line: 712, column: 7)
!1710 = !DILocation(line: 712, column: 7, scope: !1709)
!1711 = !DILocation(line: 712, column: 7, scope: !1701)
!1712 = !DILocation(line: 712, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !145, line: 712, column: 7)
!1714 = distinct !DILexicalBlock(scope: !1695, file: !145, line: 712, column: 7)
!1715 = !DILocation(line: 712, column: 7, scope: !1714)
!1716 = !DILocation(line: 715, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !145, line: 715, column: 7)
!1718 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 715, column: 7)
!1719 = !DILocation(line: 715, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !145, line: 715, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !145, line: 715, column: 7)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !145, line: 715, column: 7)
!1723 = !DILocation(line: 715, column: 7, scope: !1721)
!1724 = !DILocation(line: 715, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !145, line: 715, column: 7)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !145, line: 715, column: 7)
!1727 = !DILocation(line: 715, column: 7, scope: !1726)
!1728 = !DILocation(line: 715, column: 7, scope: !1722)
!1729 = !DILocation(line: 716, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !145, line: 716, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 716, column: 7)
!1732 = !DILocation(line: 716, column: 7, scope: !1731)
!1733 = !DILocation(line: 718, column: 13, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1288, file: !145, line: 718, column: 11)
!1735 = !DILocation(line: 718, column: 11, scope: !1288)
!1736 = !DILocation(line: 720, column: 5, scope: !1289)
!1737 = !DILocation(line: 392, column: 75, scope: !1289)
!1738 = !DILocation(line: 392, column: 3, scope: !1289)
!1739 = distinct !{!1739, !1397, !1740}
!1740 = !DILocation(line: 720, column: 5, scope: !1290)
!1741 = !DILocation(line: 722, column: 11, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 722, column: 7)
!1743 = !DILocation(line: 722, column: 16, scope: !1742)
!1744 = !DILocation(line: 730, column: 51, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 730, column: 7)
!1746 = !DILocation(line: 731, column: 10, scope: !1745)
!1747 = !DILocation(line: 733, column: 11, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !145, line: 733, column: 11)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !145, line: 732, column: 5)
!1750 = !DILocation(line: 733, column: 11, scope: !1749)
!1751 = !DILocation(line: 734, column: 16, scope: !1748)
!1752 = !DILocation(line: 734, column: 9, scope: !1748)
!1753 = !DILocation(line: 738, column: 18, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1748, file: !145, line: 738, column: 16)
!1755 = !DILocation(line: 738, column: 32, scope: !1754)
!1756 = !DILocation(line: 738, column: 29, scope: !1754)
!1757 = !DILocation(line: 747, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 747, column: 7)
!1759 = !DILocation(line: 747, column: 20, scope: !1758)
!1760 = !DILocation(line: 748, column: 12, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !145, line: 748, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !145, line: 748, column: 5)
!1763 = !DILocation(line: 748, column: 5, scope: !1762)
!1764 = !DILocation(line: 749, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !145, line: 749, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1761, file: !145, line: 749, column: 7)
!1767 = !DILocation(line: 749, column: 7, scope: !1766)
!1768 = !DILocation(line: 748, column: 39, scope: !1761)
!1769 = distinct !{!1769, !1763, !1770}
!1770 = !DILocation(line: 749, column: 7, scope: !1762)
!1771 = !DILocation(line: 751, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 751, column: 7)
!1773 = !DILocation(line: 751, column: 7, scope: !1261)
!1774 = !DILocation(line: 752, column: 5, scope: !1772)
!1775 = !DILocation(line: 752, column: 17, scope: !1772)
!1776 = !DILocation(line: 758, column: 21, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1261, file: !145, line: 758, column: 7)
!1778 = !DILocation(line: 758, column: 54, scope: !1777)
!1779 = !DILocation(line: 758, column: 51, scope: !1777)
!1780 = !DILocation(line: 762, column: 42, scope: !1261)
!1781 = !DILocation(line: 760, column: 10, scope: !1261)
!1782 = !DILocation(line: 760, column: 3, scope: !1261)
!1783 = !DILocation(line: 764, column: 1, scope: !1261)
!1784 = distinct !DISubprogram(name: "gettext_quote", scope: !145, file: !145, line: 199, type: !1785, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!54, !54, !5}
!1787 = !{!1788, !1789, !1790, !1791}
!1788 = !DILocalVariable(name: "msgid", arg: 1, scope: !1784, file: !145, line: 199, type: !54)
!1789 = !DILocalVariable(name: "s", arg: 2, scope: !1784, file: !145, line: 199, type: !5)
!1790 = !DILocalVariable(name: "translation", scope: !1784, file: !145, line: 201, type: !54)
!1791 = !DILocalVariable(name: "locale_code", scope: !1784, file: !145, line: 202, type: !54)
!1792 = !DILocation(line: 199, column: 28, scope: !1784)
!1793 = !DILocation(line: 199, column: 54, scope: !1784)
!1794 = !DILocation(line: 201, column: 29, scope: !1784)
!1795 = !DILocation(line: 201, column: 15, scope: !1784)
!1796 = !DILocation(line: 204, column: 19, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1784, file: !145, line: 204, column: 7)
!1798 = !DILocation(line: 204, column: 7, scope: !1784)
!1799 = !DILocation(line: 225, column: 17, scope: !1784)
!1800 = !DILocation(line: 202, column: 15, scope: !1784)
!1801 = !DILocalVariable(name: "s2", arg: 2, scope: !1802, file: !1803, line: 160, type: !54)
!1802 = distinct !DISubprogram(name: "strcaseeq0", scope: !1803, file: !1803, line: 160, type: !1804, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1806)
!1803 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!77, !54, !54, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!1806 = !{!1807, !1801, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1807 = !DILocalVariable(name: "s1", arg: 1, scope: !1802, file: !1803, line: 160, type: !54)
!1808 = !DILocalVariable(name: "s20", arg: 3, scope: !1802, file: !1803, line: 160, type: !45)
!1809 = !DILocalVariable(name: "s21", arg: 4, scope: !1802, file: !1803, line: 160, type: !45)
!1810 = !DILocalVariable(name: "s22", arg: 5, scope: !1802, file: !1803, line: 160, type: !45)
!1811 = !DILocalVariable(name: "s23", arg: 6, scope: !1802, file: !1803, line: 160, type: !45)
!1812 = !DILocalVariable(name: "s24", arg: 7, scope: !1802, file: !1803, line: 160, type: !45)
!1813 = !DILocalVariable(name: "s25", arg: 8, scope: !1802, file: !1803, line: 160, type: !45)
!1814 = !DILocalVariable(name: "s26", arg: 9, scope: !1802, file: !1803, line: 160, type: !45)
!1815 = !DILocalVariable(name: "s27", arg: 10, scope: !1802, file: !1803, line: 160, type: !45)
!1816 = !DILocalVariable(name: "s28", arg: 11, scope: !1802, file: !1803, line: 160, type: !45)
!1817 = !DILocation(line: 160, column: 41, scope: !1802, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 226, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1784, file: !145, line: 226, column: 7)
!1820 = !DILocation(line: 160, column: 120, scope: !1802, inlinedAt: !1818)
!1821 = !DILocation(line: 160, column: 130, scope: !1802, inlinedAt: !1818)
!1822 = !DILocation(line: 162, column: 7, scope: !1823, inlinedAt: !1818)
!1823 = distinct !DILexicalBlock(scope: !1802, file: !1803, line: 162, column: 7)
!1824 = !DILocalVariable(name: "s2", arg: 2, scope: !1825, file: !1803, line: 146, type: !54)
!1825 = distinct !DISubprogram(name: "strcaseeq1", scope: !1803, file: !1803, line: 146, type: !1826, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!77, !54, !54, !45, !45, !45, !45, !45, !45, !45, !45}
!1828 = !{!1829, !1824, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837}
!1829 = !DILocalVariable(name: "s1", arg: 1, scope: !1825, file: !1803, line: 146, type: !54)
!1830 = !DILocalVariable(name: "s21", arg: 3, scope: !1825, file: !1803, line: 146, type: !45)
!1831 = !DILocalVariable(name: "s22", arg: 4, scope: !1825, file: !1803, line: 146, type: !45)
!1832 = !DILocalVariable(name: "s23", arg: 5, scope: !1825, file: !1803, line: 146, type: !45)
!1833 = !DILocalVariable(name: "s24", arg: 6, scope: !1825, file: !1803, line: 146, type: !45)
!1834 = !DILocalVariable(name: "s25", arg: 7, scope: !1825, file: !1803, line: 146, type: !45)
!1835 = !DILocalVariable(name: "s26", arg: 8, scope: !1825, file: !1803, line: 146, type: !45)
!1836 = !DILocalVariable(name: "s27", arg: 9, scope: !1825, file: !1803, line: 146, type: !45)
!1837 = !DILocalVariable(name: "s28", arg: 10, scope: !1825, file: !1803, line: 146, type: !45)
!1838 = !DILocation(line: 146, column: 41, scope: !1825, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 167, column: 16, scope: !1840, inlinedAt: !1818)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !1803, line: 164, column: 11)
!1841 = distinct !DILexicalBlock(scope: !1823, file: !1803, line: 163, column: 5)
!1842 = !DILocation(line: 146, column: 110, scope: !1825, inlinedAt: !1839)
!1843 = !DILocation(line: 146, column: 120, scope: !1825, inlinedAt: !1839)
!1844 = !DILocation(line: 148, column: 7, scope: !1845, inlinedAt: !1839)
!1845 = distinct !DILexicalBlock(scope: !1825, file: !1803, line: 148, column: 7)
!1846 = !DILocalVariable(name: "s2", arg: 2, scope: !1847, file: !1803, line: 132, type: !54)
!1847 = distinct !DISubprogram(name: "strcaseeq2", scope: !1803, file: !1803, line: 132, type: !1848, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!77, !54, !54, !45, !45, !45, !45, !45, !45, !45}
!1850 = !{!1851, !1846, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1851 = !DILocalVariable(name: "s1", arg: 1, scope: !1847, file: !1803, line: 132, type: !54)
!1852 = !DILocalVariable(name: "s22", arg: 3, scope: !1847, file: !1803, line: 132, type: !45)
!1853 = !DILocalVariable(name: "s23", arg: 4, scope: !1847, file: !1803, line: 132, type: !45)
!1854 = !DILocalVariable(name: "s24", arg: 5, scope: !1847, file: !1803, line: 132, type: !45)
!1855 = !DILocalVariable(name: "s25", arg: 6, scope: !1847, file: !1803, line: 132, type: !45)
!1856 = !DILocalVariable(name: "s26", arg: 7, scope: !1847, file: !1803, line: 132, type: !45)
!1857 = !DILocalVariable(name: "s27", arg: 8, scope: !1847, file: !1803, line: 132, type: !45)
!1858 = !DILocalVariable(name: "s28", arg: 9, scope: !1847, file: !1803, line: 132, type: !45)
!1859 = !DILocation(line: 132, column: 41, scope: !1847, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 153, column: 16, scope: !1861, inlinedAt: !1839)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1803, line: 150, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1845, file: !1803, line: 149, column: 5)
!1863 = !DILocation(line: 132, column: 100, scope: !1847, inlinedAt: !1860)
!1864 = !DILocation(line: 132, column: 110, scope: !1847, inlinedAt: !1860)
!1865 = !DILocation(line: 134, column: 7, scope: !1866, inlinedAt: !1860)
!1866 = distinct !DILexicalBlock(scope: !1847, file: !1803, line: 134, column: 7)
!1867 = !DILocalVariable(name: "s2", arg: 2, scope: !1868, file: !1803, line: 118, type: !54)
!1868 = distinct !DISubprogram(name: "strcaseeq3", scope: !1803, file: !1803, line: 118, type: !1869, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!77, !54, !54, !45, !45, !45, !45, !45, !45}
!1871 = !{!1872, !1867, !1873, !1874, !1875, !1876, !1877, !1878}
!1872 = !DILocalVariable(name: "s1", arg: 1, scope: !1868, file: !1803, line: 118, type: !54)
!1873 = !DILocalVariable(name: "s23", arg: 3, scope: !1868, file: !1803, line: 118, type: !45)
!1874 = !DILocalVariable(name: "s24", arg: 4, scope: !1868, file: !1803, line: 118, type: !45)
!1875 = !DILocalVariable(name: "s25", arg: 5, scope: !1868, file: !1803, line: 118, type: !45)
!1876 = !DILocalVariable(name: "s26", arg: 6, scope: !1868, file: !1803, line: 118, type: !45)
!1877 = !DILocalVariable(name: "s27", arg: 7, scope: !1868, file: !1803, line: 118, type: !45)
!1878 = !DILocalVariable(name: "s28", arg: 8, scope: !1868, file: !1803, line: 118, type: !45)
!1879 = !DILocation(line: 118, column: 41, scope: !1868, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 139, column: 16, scope: !1881, inlinedAt: !1860)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1803, line: 136, column: 11)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !1803, line: 135, column: 5)
!1883 = !DILocation(line: 118, column: 90, scope: !1868, inlinedAt: !1880)
!1884 = !DILocation(line: 118, column: 100, scope: !1868, inlinedAt: !1880)
!1885 = !DILocation(line: 120, column: 7, scope: !1886, inlinedAt: !1880)
!1886 = distinct !DILexicalBlock(scope: !1868, file: !1803, line: 120, column: 7)
!1887 = !DILocation(line: 120, column: 7, scope: !1868, inlinedAt: !1880)
!1888 = !DILocalVariable(name: "s2", arg: 2, scope: !1889, file: !1803, line: 104, type: !54)
!1889 = distinct !DISubprogram(name: "strcaseeq4", scope: !1803, file: !1803, line: 104, type: !1890, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!77, !54, !54, !45, !45, !45, !45, !45}
!1892 = !{!1893, !1888, !1894, !1895, !1896, !1897, !1898}
!1893 = !DILocalVariable(name: "s1", arg: 1, scope: !1889, file: !1803, line: 104, type: !54)
!1894 = !DILocalVariable(name: "s24", arg: 3, scope: !1889, file: !1803, line: 104, type: !45)
!1895 = !DILocalVariable(name: "s25", arg: 4, scope: !1889, file: !1803, line: 104, type: !45)
!1896 = !DILocalVariable(name: "s26", arg: 5, scope: !1889, file: !1803, line: 104, type: !45)
!1897 = !DILocalVariable(name: "s27", arg: 6, scope: !1889, file: !1803, line: 104, type: !45)
!1898 = !DILocalVariable(name: "s28", arg: 7, scope: !1889, file: !1803, line: 104, type: !45)
!1899 = !DILocation(line: 104, column: 41, scope: !1889, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 125, column: 16, scope: !1901, inlinedAt: !1880)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !1803, line: 122, column: 11)
!1902 = distinct !DILexicalBlock(scope: !1886, file: !1803, line: 121, column: 5)
!1903 = !DILocation(line: 104, column: 80, scope: !1889, inlinedAt: !1900)
!1904 = !DILocation(line: 104, column: 90, scope: !1889, inlinedAt: !1900)
!1905 = !DILocation(line: 106, column: 7, scope: !1906, inlinedAt: !1900)
!1906 = distinct !DILexicalBlock(scope: !1889, file: !1803, line: 106, column: 7)
!1907 = !DILocation(line: 106, column: 7, scope: !1889, inlinedAt: !1900)
!1908 = !DILocalVariable(name: "s2", arg: 2, scope: !1909, file: !1803, line: 90, type: !54)
!1909 = distinct !DISubprogram(name: "strcaseeq5", scope: !1803, file: !1803, line: 90, type: !1910, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!77, !54, !54, !45, !45, !45, !45}
!1912 = !{!1913, !1908, !1914, !1915, !1916, !1917}
!1913 = !DILocalVariable(name: "s1", arg: 1, scope: !1909, file: !1803, line: 90, type: !54)
!1914 = !DILocalVariable(name: "s25", arg: 3, scope: !1909, file: !1803, line: 90, type: !45)
!1915 = !DILocalVariable(name: "s26", arg: 4, scope: !1909, file: !1803, line: 90, type: !45)
!1916 = !DILocalVariable(name: "s27", arg: 5, scope: !1909, file: !1803, line: 90, type: !45)
!1917 = !DILocalVariable(name: "s28", arg: 6, scope: !1909, file: !1803, line: 90, type: !45)
!1918 = !DILocation(line: 90, column: 41, scope: !1909, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 111, column: 16, scope: !1920, inlinedAt: !1900)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !1803, line: 108, column: 11)
!1921 = distinct !DILexicalBlock(scope: !1906, file: !1803, line: 107, column: 5)
!1922 = !DILocation(line: 90, column: 70, scope: !1909, inlinedAt: !1919)
!1923 = !DILocation(line: 90, column: 80, scope: !1909, inlinedAt: !1919)
!1924 = !DILocation(line: 92, column: 7, scope: !1925, inlinedAt: !1919)
!1925 = distinct !DILexicalBlock(scope: !1909, file: !1803, line: 92, column: 7)
!1926 = !DILocation(line: 92, column: 7, scope: !1909, inlinedAt: !1919)
!1927 = !DILocation(line: 227, column: 12, scope: !1819)
!1928 = !DILocation(line: 227, column: 21, scope: !1819)
!1929 = !DILocation(line: 227, column: 5, scope: !1819)
!1930 = !DILocation(line: 146, column: 41, scope: !1825, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 167, column: 16, scope: !1840, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 228, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1784, file: !145, line: 228, column: 7)
!1934 = !DILocation(line: 146, column: 110, scope: !1825, inlinedAt: !1931)
!1935 = !DILocation(line: 146, column: 120, scope: !1825, inlinedAt: !1931)
!1936 = !DILocation(line: 148, column: 7, scope: !1845, inlinedAt: !1931)
!1937 = !DILocation(line: 132, column: 41, scope: !1847, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 153, column: 16, scope: !1861, inlinedAt: !1931)
!1939 = !DILocation(line: 132, column: 100, scope: !1847, inlinedAt: !1938)
!1940 = !DILocation(line: 132, column: 110, scope: !1847, inlinedAt: !1938)
!1941 = !DILocation(line: 134, column: 7, scope: !1866, inlinedAt: !1938)
!1942 = !DILocation(line: 134, column: 7, scope: !1847, inlinedAt: !1938)
!1943 = !DILocation(line: 118, column: 41, scope: !1868, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 139, column: 16, scope: !1881, inlinedAt: !1938)
!1945 = !DILocation(line: 118, column: 90, scope: !1868, inlinedAt: !1944)
!1946 = !DILocation(line: 118, column: 100, scope: !1868, inlinedAt: !1944)
!1947 = !DILocation(line: 120, column: 7, scope: !1886, inlinedAt: !1944)
!1948 = !DILocation(line: 120, column: 7, scope: !1868, inlinedAt: !1944)
!1949 = !DILocation(line: 104, column: 41, scope: !1889, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 125, column: 16, scope: !1901, inlinedAt: !1944)
!1951 = !DILocation(line: 104, column: 80, scope: !1889, inlinedAt: !1950)
!1952 = !DILocation(line: 104, column: 90, scope: !1889, inlinedAt: !1950)
!1953 = !DILocation(line: 106, column: 7, scope: !1906, inlinedAt: !1950)
!1954 = !DILocation(line: 106, column: 7, scope: !1889, inlinedAt: !1950)
!1955 = !DILocation(line: 90, column: 41, scope: !1909, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 111, column: 16, scope: !1920, inlinedAt: !1950)
!1957 = !DILocation(line: 90, column: 70, scope: !1909, inlinedAt: !1956)
!1958 = !DILocation(line: 90, column: 80, scope: !1909, inlinedAt: !1956)
!1959 = !DILocation(line: 92, column: 7, scope: !1925, inlinedAt: !1956)
!1960 = !DILocation(line: 92, column: 7, scope: !1909, inlinedAt: !1956)
!1961 = !DILocalVariable(name: "s2", arg: 2, scope: !1962, file: !1803, line: 76, type: !54)
!1962 = distinct !DISubprogram(name: "strcaseeq6", scope: !1803, file: !1803, line: 76, type: !1963, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!77, !54, !54, !45, !45, !45}
!1965 = !{!1966, !1961, !1967, !1968, !1969}
!1966 = !DILocalVariable(name: "s1", arg: 1, scope: !1962, file: !1803, line: 76, type: !54)
!1967 = !DILocalVariable(name: "s26", arg: 3, scope: !1962, file: !1803, line: 76, type: !45)
!1968 = !DILocalVariable(name: "s27", arg: 4, scope: !1962, file: !1803, line: 76, type: !45)
!1969 = !DILocalVariable(name: "s28", arg: 5, scope: !1962, file: !1803, line: 76, type: !45)
!1970 = !DILocation(line: 76, column: 41, scope: !1962, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 97, column: 16, scope: !1972, inlinedAt: !1956)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1803, line: 94, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1925, file: !1803, line: 93, column: 5)
!1974 = !DILocation(line: 76, column: 60, scope: !1962, inlinedAt: !1971)
!1975 = !DILocation(line: 76, column: 70, scope: !1962, inlinedAt: !1971)
!1976 = !DILocation(line: 78, column: 7, scope: !1977, inlinedAt: !1971)
!1977 = distinct !DILexicalBlock(scope: !1962, file: !1803, line: 78, column: 7)
!1978 = !DILocation(line: 78, column: 7, scope: !1962, inlinedAt: !1971)
!1979 = !DILocalVariable(name: "s2", arg: 2, scope: !1980, file: !1803, line: 62, type: !54)
!1980 = distinct !DISubprogram(name: "strcaseeq7", scope: !1803, file: !1803, line: 62, type: !1981, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!77, !54, !54, !45, !45}
!1983 = !{!1984, !1979, !1985, !1986}
!1984 = !DILocalVariable(name: "s1", arg: 1, scope: !1980, file: !1803, line: 62, type: !54)
!1985 = !DILocalVariable(name: "s27", arg: 3, scope: !1980, file: !1803, line: 62, type: !45)
!1986 = !DILocalVariable(name: "s28", arg: 4, scope: !1980, file: !1803, line: 62, type: !45)
!1987 = !DILocation(line: 62, column: 41, scope: !1980, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 83, column: 16, scope: !1989, inlinedAt: !1971)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1803, line: 80, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1977, file: !1803, line: 79, column: 5)
!1991 = !DILocation(line: 62, column: 50, scope: !1980, inlinedAt: !1988)
!1992 = !DILocation(line: 62, column: 60, scope: !1980, inlinedAt: !1988)
!1993 = !DILocation(line: 64, column: 7, scope: !1994, inlinedAt: !1988)
!1994 = distinct !DILexicalBlock(scope: !1980, file: !1803, line: 64, column: 7)
!1995 = !DILocation(line: 228, column: 7, scope: !1784)
!1996 = !DILocation(line: 229, column: 12, scope: !1933)
!1997 = !DILocation(line: 229, column: 21, scope: !1933)
!1998 = !DILocation(line: 229, column: 5, scope: !1933)
!1999 = !DILocation(line: 231, column: 13, scope: !1784)
!2000 = !DILocation(line: 231, column: 11, scope: !1784)
!2001 = !DILocation(line: 231, column: 3, scope: !1784)
!2002 = !DILocation(line: 232, column: 1, scope: !1784)
!2003 = distinct !DISubprogram(name: "quotearg_alloc", scope: !145, file: !145, line: 791, type: !2004, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!44, !54, !139, !1133}
!2006 = !{!2007, !2008, !2009}
!2007 = !DILocalVariable(name: "arg", arg: 1, scope: !2003, file: !145, line: 791, type: !54)
!2008 = !DILocalVariable(name: "argsize", arg: 2, scope: !2003, file: !145, line: 791, type: !139)
!2009 = !DILocalVariable(name: "o", arg: 3, scope: !2003, file: !145, line: 792, type: !1133)
!2010 = !DILocation(line: 791, column: 29, scope: !2003)
!2011 = !DILocation(line: 791, column: 41, scope: !2003)
!2012 = !DILocation(line: 792, column: 47, scope: !2003)
!2013 = !DILocalVariable(name: "arg", arg: 1, scope: !2014, file: !145, line: 804, type: !54)
!2014 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !145, file: !145, line: 804, type: !2015, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!44, !54, !139, !578, !1133}
!2017 = !{!2013, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2018 = !DILocalVariable(name: "argsize", arg: 2, scope: !2014, file: !145, line: 804, type: !139)
!2019 = !DILocalVariable(name: "size", arg: 3, scope: !2014, file: !145, line: 804, type: !578)
!2020 = !DILocalVariable(name: "o", arg: 4, scope: !2014, file: !145, line: 805, type: !1133)
!2021 = !DILocalVariable(name: "p", scope: !2014, file: !145, line: 807, type: !1133)
!2022 = !DILocalVariable(name: "e", scope: !2014, file: !145, line: 808, type: !77)
!2023 = !DILocalVariable(name: "flags", scope: !2014, file: !145, line: 810, type: !77)
!2024 = !DILocalVariable(name: "bufsize", scope: !2014, file: !145, line: 811, type: !139)
!2025 = !DILocalVariable(name: "buf", scope: !2014, file: !145, line: 815, type: !44)
!2026 = !DILocation(line: 804, column: 33, scope: !2014, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 794, column: 10, scope: !2003)
!2028 = !DILocation(line: 804, column: 45, scope: !2014, inlinedAt: !2027)
!2029 = !DILocation(line: 804, column: 62, scope: !2014, inlinedAt: !2027)
!2030 = !DILocation(line: 805, column: 51, scope: !2014, inlinedAt: !2027)
!2031 = !DILocation(line: 807, column: 37, scope: !2014, inlinedAt: !2027)
!2032 = !DILocation(line: 807, column: 33, scope: !2014, inlinedAt: !2027)
!2033 = !DILocation(line: 808, column: 11, scope: !2014, inlinedAt: !2027)
!2034 = !DILocation(line: 808, column: 7, scope: !2014, inlinedAt: !2027)
!2035 = !DILocation(line: 810, column: 18, scope: !2014, inlinedAt: !2027)
!2036 = !DILocation(line: 810, column: 24, scope: !2014, inlinedAt: !2027)
!2037 = !DILocation(line: 810, column: 7, scope: !2014, inlinedAt: !2027)
!2038 = !DILocation(line: 811, column: 69, scope: !2014, inlinedAt: !2027)
!2039 = !DILocation(line: 812, column: 53, scope: !2014, inlinedAt: !2027)
!2040 = !DILocation(line: 813, column: 49, scope: !2014, inlinedAt: !2027)
!2041 = !DILocation(line: 814, column: 49, scope: !2014, inlinedAt: !2027)
!2042 = !DILocation(line: 811, column: 20, scope: !2014, inlinedAt: !2027)
!2043 = !DILocation(line: 814, column: 62, scope: !2014, inlinedAt: !2027)
!2044 = !DILocation(line: 811, column: 10, scope: !2014, inlinedAt: !2027)
!2045 = !DILocalVariable(name: "n", arg: 1, scope: !2046, file: !574, line: 220, type: !139)
!2046 = distinct !DISubprogram(name: "xcharalloc", scope: !574, file: !574, line: 220, type: !2047, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!44, !139}
!2049 = !{!2045}
!2050 = !DILocation(line: 220, column: 20, scope: !2046, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 815, column: 15, scope: !2014, inlinedAt: !2027)
!2052 = !DILocation(line: 222, column: 10, scope: !2046, inlinedAt: !2051)
!2053 = !DILocation(line: 815, column: 9, scope: !2014, inlinedAt: !2027)
!2054 = !DILocation(line: 816, column: 60, scope: !2014, inlinedAt: !2027)
!2055 = !DILocation(line: 818, column: 32, scope: !2014, inlinedAt: !2027)
!2056 = !DILocation(line: 818, column: 47, scope: !2014, inlinedAt: !2027)
!2057 = !DILocation(line: 816, column: 3, scope: !2014, inlinedAt: !2027)
!2058 = !DILocation(line: 819, column: 9, scope: !2014, inlinedAt: !2027)
!2059 = !DILocation(line: 794, column: 3, scope: !2003)
!2060 = !DILocation(line: 804, column: 33, scope: !2014)
!2061 = !DILocation(line: 804, column: 45, scope: !2014)
!2062 = !DILocation(line: 804, column: 62, scope: !2014)
!2063 = !DILocation(line: 805, column: 51, scope: !2014)
!2064 = !DILocation(line: 807, column: 37, scope: !2014)
!2065 = !DILocation(line: 807, column: 33, scope: !2014)
!2066 = !DILocation(line: 808, column: 11, scope: !2014)
!2067 = !DILocation(line: 808, column: 7, scope: !2014)
!2068 = !DILocation(line: 810, column: 18, scope: !2014)
!2069 = !DILocation(line: 810, column: 27, scope: !2014)
!2070 = !DILocation(line: 810, column: 24, scope: !2014)
!2071 = !DILocation(line: 810, column: 7, scope: !2014)
!2072 = !DILocation(line: 811, column: 69, scope: !2014)
!2073 = !DILocation(line: 812, column: 53, scope: !2014)
!2074 = !DILocation(line: 813, column: 49, scope: !2014)
!2075 = !DILocation(line: 814, column: 49, scope: !2014)
!2076 = !DILocation(line: 811, column: 20, scope: !2014)
!2077 = !DILocation(line: 814, column: 62, scope: !2014)
!2078 = !DILocation(line: 811, column: 10, scope: !2014)
!2079 = !DILocation(line: 220, column: 20, scope: !2046, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 815, column: 15, scope: !2014)
!2081 = !DILocation(line: 222, column: 10, scope: !2046, inlinedAt: !2080)
!2082 = !DILocation(line: 815, column: 9, scope: !2014)
!2083 = !DILocation(line: 816, column: 60, scope: !2014)
!2084 = !DILocation(line: 818, column: 32, scope: !2014)
!2085 = !DILocation(line: 818, column: 47, scope: !2014)
!2086 = !DILocation(line: 816, column: 3, scope: !2014)
!2087 = !DILocation(line: 819, column: 9, scope: !2014)
!2088 = !DILocation(line: 820, column: 7, scope: !2014)
!2089 = !DILocation(line: 821, column: 11, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2014, file: !145, line: 820, column: 7)
!2091 = !{!2092, !2092, i64 0}
!2092 = !{!"long", !624, i64 0}
!2093 = !DILocation(line: 821, column: 5, scope: !2090)
!2094 = !DILocation(line: 822, column: 3, scope: !2014)
!2095 = distinct !DISubprogram(name: "quotearg_free", scope: !145, file: !145, line: 840, type: !1040, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2096)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "sv", scope: !2095, file: !145, line: 842, type: !172)
!2098 = !DILocalVariable(name: "i", scope: !2095, file: !145, line: 843, type: !77)
!2099 = !DILocation(line: 842, column: 24, scope: !2095)
!2100 = !DILocation(line: 842, column: 19, scope: !2095)
!2101 = !DILocation(line: 843, column: 7, scope: !2095)
!2102 = !DILocation(line: 844, column: 19, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !145, line: 844, column: 3)
!2104 = distinct !DILexicalBlock(scope: !2095, file: !145, line: 844, column: 3)
!2105 = !DILocation(line: 844, column: 17, scope: !2103)
!2106 = !DILocation(line: 844, column: 3, scope: !2104)
!2107 = !DILocation(line: 845, column: 17, scope: !2103)
!2108 = !{!2109, !623, i64 8}
!2109 = !{!"slotvec", !2092, i64 0, !623, i64 8}
!2110 = !DILocation(line: 845, column: 5, scope: !2103)
!2111 = !DILocation(line: 844, column: 28, scope: !2103)
!2112 = distinct !{!2112, !2106, !2113}
!2113 = !DILocation(line: 845, column: 20, scope: !2104)
!2114 = !DILocation(line: 846, column: 13, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2095, file: !145, line: 846, column: 7)
!2116 = !DILocation(line: 846, column: 17, scope: !2115)
!2117 = !DILocation(line: 846, column: 7, scope: !2095)
!2118 = !DILocation(line: 848, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !145, line: 847, column: 5)
!2120 = !DILocation(line: 849, column: 21, scope: !2119)
!2121 = !{!2109, !2092, i64 0}
!2122 = !DILocation(line: 850, column: 20, scope: !2119)
!2123 = !DILocation(line: 851, column: 5, scope: !2119)
!2124 = !DILocation(line: 852, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2095, file: !145, line: 852, column: 7)
!2126 = !DILocation(line: 852, column: 7, scope: !2095)
!2127 = !DILocation(line: 854, column: 13, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !145, line: 853, column: 5)
!2129 = !DILocation(line: 854, column: 7, scope: !2128)
!2130 = !DILocation(line: 855, column: 15, scope: !2128)
!2131 = !DILocation(line: 856, column: 5, scope: !2128)
!2132 = !DILocation(line: 857, column: 10, scope: !2095)
!2133 = !DILocation(line: 858, column: 1, scope: !2095)
!2134 = distinct !DISubprogram(name: "quotearg_n", scope: !145, file: !145, line: 922, type: !2135, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!44, !77, !54}
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "n", arg: 1, scope: !2134, file: !145, line: 922, type: !77)
!2139 = !DILocalVariable(name: "arg", arg: 2, scope: !2134, file: !145, line: 922, type: !54)
!2140 = !DILocation(line: 922, column: 17, scope: !2134)
!2141 = !DILocation(line: 922, column: 32, scope: !2134)
!2142 = !DILocation(line: 924, column: 10, scope: !2134)
!2143 = !DILocation(line: 924, column: 3, scope: !2134)
!2144 = distinct !DISubprogram(name: "quotearg_n_options", scope: !145, file: !145, line: 869, type: !2145, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!44, !77, !54, !139, !1133}
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154, !2157, !2159, !2160, !2161}
!2148 = !DILocalVariable(name: "n", arg: 1, scope: !2144, file: !145, line: 869, type: !77)
!2149 = !DILocalVariable(name: "arg", arg: 2, scope: !2144, file: !145, line: 869, type: !54)
!2150 = !DILocalVariable(name: "argsize", arg: 3, scope: !2144, file: !145, line: 869, type: !139)
!2151 = !DILocalVariable(name: "options", arg: 4, scope: !2144, file: !145, line: 870, type: !1133)
!2152 = !DILocalVariable(name: "e", scope: !2144, file: !145, line: 872, type: !77)
!2153 = !DILocalVariable(name: "sv", scope: !2144, file: !145, line: 874, type: !172)
!2154 = !DILocalVariable(name: "preallocated", scope: !2155, file: !145, line: 881, type: !97)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !145, line: 880, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2144, file: !145, line: 879, column: 7)
!2157 = !DILocalVariable(name: "size", scope: !2158, file: !145, line: 894, type: !139)
!2158 = distinct !DILexicalBlock(scope: !2144, file: !145, line: 893, column: 3)
!2159 = !DILocalVariable(name: "val", scope: !2158, file: !145, line: 895, type: !44)
!2160 = !DILocalVariable(name: "flags", scope: !2158, file: !145, line: 897, type: !77)
!2161 = !DILocalVariable(name: "qsize", scope: !2158, file: !145, line: 898, type: !139)
!2162 = !DILocation(line: 869, column: 25, scope: !2144)
!2163 = !DILocation(line: 869, column: 40, scope: !2144)
!2164 = !DILocation(line: 869, column: 52, scope: !2144)
!2165 = !DILocation(line: 870, column: 51, scope: !2144)
!2166 = !DILocation(line: 872, column: 11, scope: !2144)
!2167 = !DILocation(line: 872, column: 7, scope: !2144)
!2168 = !DILocation(line: 874, column: 24, scope: !2144)
!2169 = !DILocation(line: 874, column: 19, scope: !2144)
!2170 = !DILocation(line: 876, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2144, file: !145, line: 876, column: 7)
!2172 = !DILocation(line: 876, column: 7, scope: !2144)
!2173 = !DILocation(line: 877, column: 5, scope: !2171)
!2174 = !DILocation(line: 879, column: 7, scope: !2156)
!2175 = !DILocation(line: 879, column: 14, scope: !2156)
!2176 = !DILocation(line: 879, column: 7, scope: !2144)
!2177 = !DILocation(line: 881, column: 31, scope: !2155)
!2178 = !DILocation(line: 883, column: 67, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2155, file: !145, line: 883, column: 11)
!2180 = !DILocation(line: 883, column: 11, scope: !2155)
!2181 = !DILocation(line: 884, column: 9, scope: !2179)
!2182 = !DILocation(line: 886, column: 32, scope: !2155)
!2183 = !DILocation(line: 886, column: 61, scope: !2155)
!2184 = !DILocation(line: 886, column: 58, scope: !2155)
!2185 = !DILocation(line: 886, column: 66, scope: !2155)
!2186 = !DILocation(line: 886, column: 22, scope: !2155)
!2187 = !DILocation(line: 886, column: 15, scope: !2155)
!2188 = !DILocation(line: 887, column: 11, scope: !2155)
!2189 = !DILocation(line: 888, column: 15, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2155, file: !145, line: 887, column: 11)
!2191 = !{i64 0, i64 8, !2091, i64 8, i64 8, !622}
!2192 = !DILocation(line: 888, column: 9, scope: !2190)
!2193 = !DILocation(line: 889, column: 20, scope: !2155)
!2194 = !DILocation(line: 889, column: 18, scope: !2155)
!2195 = !DILocation(line: 889, column: 7, scope: !2155)
!2196 = !DILocation(line: 889, column: 38, scope: !2155)
!2197 = !DILocation(line: 889, column: 31, scope: !2155)
!2198 = !DILocation(line: 889, column: 48, scope: !2155)
!2199 = !DILocation(line: 890, column: 14, scope: !2155)
!2200 = !DILocation(line: 891, column: 5, scope: !2155)
!2201 = !DILocation(line: 894, column: 19, scope: !2158)
!2202 = !DILocation(line: 894, column: 25, scope: !2158)
!2203 = !DILocation(line: 894, column: 12, scope: !2158)
!2204 = !DILocation(line: 895, column: 23, scope: !2158)
!2205 = !DILocation(line: 895, column: 11, scope: !2158)
!2206 = !DILocation(line: 897, column: 26, scope: !2158)
!2207 = !DILocation(line: 897, column: 32, scope: !2158)
!2208 = !DILocation(line: 897, column: 9, scope: !2158)
!2209 = !DILocation(line: 899, column: 55, scope: !2158)
!2210 = !DILocation(line: 900, column: 46, scope: !2158)
!2211 = !DILocation(line: 901, column: 55, scope: !2158)
!2212 = !DILocation(line: 902, column: 55, scope: !2158)
!2213 = !DILocation(line: 898, column: 20, scope: !2158)
!2214 = !DILocation(line: 898, column: 12, scope: !2158)
!2215 = !DILocation(line: 904, column: 14, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2158, file: !145, line: 904, column: 9)
!2217 = !DILocation(line: 904, column: 9, scope: !2158)
!2218 = !DILocation(line: 906, column: 35, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !145, line: 905, column: 7)
!2220 = !DILocation(line: 906, column: 20, scope: !2219)
!2221 = !DILocation(line: 907, column: 17, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !145, line: 907, column: 13)
!2223 = !DILocation(line: 907, column: 13, scope: !2219)
!2224 = !DILocation(line: 908, column: 11, scope: !2222)
!2225 = !DILocation(line: 220, column: 20, scope: !2046, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 909, column: 27, scope: !2219)
!2227 = !DILocation(line: 222, column: 10, scope: !2046, inlinedAt: !2226)
!2228 = !DILocation(line: 909, column: 19, scope: !2219)
!2229 = !DILocation(line: 910, column: 69, scope: !2219)
!2230 = !DILocation(line: 912, column: 44, scope: !2219)
!2231 = !DILocation(line: 913, column: 44, scope: !2219)
!2232 = !DILocation(line: 910, column: 9, scope: !2219)
!2233 = !DILocation(line: 914, column: 7, scope: !2219)
!2234 = !DILocation(line: 916, column: 11, scope: !2158)
!2235 = !DILocation(line: 917, column: 5, scope: !2158)
!2236 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !145, file: !145, line: 928, type: !2237, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!44, !77, !54, !139}
!2239 = !{!2240, !2241, !2242}
!2240 = !DILocalVariable(name: "n", arg: 1, scope: !2236, file: !145, line: 928, type: !77)
!2241 = !DILocalVariable(name: "arg", arg: 2, scope: !2236, file: !145, line: 928, type: !54)
!2242 = !DILocalVariable(name: "argsize", arg: 3, scope: !2236, file: !145, line: 928, type: !139)
!2243 = !DILocation(line: 928, column: 21, scope: !2236)
!2244 = !DILocation(line: 928, column: 36, scope: !2236)
!2245 = !DILocation(line: 928, column: 48, scope: !2236)
!2246 = !DILocation(line: 930, column: 10, scope: !2236)
!2247 = !DILocation(line: 930, column: 3, scope: !2236)
!2248 = distinct !DISubprogram(name: "quotearg", scope: !145, file: !145, line: 934, type: !2249, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!44, !54}
!2251 = !{!2252}
!2252 = !DILocalVariable(name: "arg", arg: 1, scope: !2248, file: !145, line: 934, type: !54)
!2253 = !DILocation(line: 934, column: 23, scope: !2248)
!2254 = !DILocation(line: 922, column: 17, scope: !2134, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 936, column: 10, scope: !2248)
!2256 = !DILocation(line: 922, column: 32, scope: !2134, inlinedAt: !2255)
!2257 = !DILocation(line: 924, column: 10, scope: !2134, inlinedAt: !2255)
!2258 = !DILocation(line: 936, column: 3, scope: !2248)
!2259 = distinct !DISubprogram(name: "quotearg_mem", scope: !145, file: !145, line: 940, type: !2260, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!44, !54, !139}
!2262 = !{!2263, !2264}
!2263 = !DILocalVariable(name: "arg", arg: 1, scope: !2259, file: !145, line: 940, type: !54)
!2264 = !DILocalVariable(name: "argsize", arg: 2, scope: !2259, file: !145, line: 940, type: !139)
!2265 = !DILocation(line: 940, column: 27, scope: !2259)
!2266 = !DILocation(line: 940, column: 39, scope: !2259)
!2267 = !DILocation(line: 928, column: 21, scope: !2236, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 942, column: 10, scope: !2259)
!2269 = !DILocation(line: 928, column: 36, scope: !2236, inlinedAt: !2268)
!2270 = !DILocation(line: 928, column: 48, scope: !2236, inlinedAt: !2268)
!2271 = !DILocation(line: 930, column: 10, scope: !2236, inlinedAt: !2268)
!2272 = !DILocation(line: 942, column: 3, scope: !2259)
!2273 = distinct !DISubprogram(name: "quotearg_n_style", scope: !145, file: !145, line: 946, type: !2274, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!44, !77, !5, !54}
!2276 = !{!2277, !2278, !2279, !2280}
!2277 = !DILocalVariable(name: "n", arg: 1, scope: !2273, file: !145, line: 946, type: !77)
!2278 = !DILocalVariable(name: "s", arg: 2, scope: !2273, file: !145, line: 946, type: !5)
!2279 = !DILocalVariable(name: "arg", arg: 3, scope: !2273, file: !145, line: 946, type: !54)
!2280 = !DILocalVariable(name: "o", scope: !2273, file: !145, line: 948, type: !1134)
!2281 = !DILocalVariable(name: "o", scope: !2282, file: !145, line: 187, type: !152)
!2282 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !145, file: !145, line: 185, type: !2283, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!152, !5}
!2285 = !{!2286, !2281}
!2286 = !DILocalVariable(name: "style", arg: 1, scope: !2282, file: !145, line: 185, type: !5)
!2287 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2288 = !DILocation(line: 187, column: 26, scope: !2282, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 948, column: 36, scope: !2273)
!2290 = !DILocation(line: 946, column: 23, scope: !2273)
!2291 = !DILocation(line: 946, column: 45, scope: !2273)
!2292 = !DILocation(line: 946, column: 60, scope: !2273)
!2293 = !DILocation(line: 948, column: 3, scope: !2273)
!2294 = !DILocation(line: 948, column: 32, scope: !2273)
!2295 = !DILocation(line: 185, column: 48, scope: !2282, inlinedAt: !2289)
!2296 = !DILocation(line: 187, column: 3, scope: !2282, inlinedAt: !2289)
!2297 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2298 = !DILocation(line: 188, column: 13, scope: !2299, inlinedAt: !2289)
!2299 = distinct !DILexicalBlock(scope: !2282, file: !145, line: 188, column: 7)
!2300 = !DILocation(line: 188, column: 7, scope: !2282, inlinedAt: !2289)
!2301 = !DILocation(line: 189, column: 5, scope: !2299, inlinedAt: !2289)
!2302 = !{!2303}
!2303 = distinct !{!2303, !2304, !"quoting_options_from_style: argument 0"}
!2304 = distinct !{!2304, !"quoting_options_from_style"}
!2305 = !DILocation(line: 191, column: 10, scope: !2282, inlinedAt: !2289)
!2306 = !DILocation(line: 192, column: 1, scope: !2282, inlinedAt: !2289)
!2307 = !DILocation(line: 949, column: 10, scope: !2273)
!2308 = !DILocation(line: 950, column: 1, scope: !2273)
!2309 = !DILocation(line: 949, column: 3, scope: !2273)
!2310 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !145, file: !145, line: 953, type: !2311, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!44, !77, !5, !54, !139}
!2313 = !{!2314, !2315, !2316, !2317, !2318}
!2314 = !DILocalVariable(name: "n", arg: 1, scope: !2310, file: !145, line: 953, type: !77)
!2315 = !DILocalVariable(name: "s", arg: 2, scope: !2310, file: !145, line: 953, type: !5)
!2316 = !DILocalVariable(name: "arg", arg: 3, scope: !2310, file: !145, line: 954, type: !54)
!2317 = !DILocalVariable(name: "argsize", arg: 4, scope: !2310, file: !145, line: 954, type: !139)
!2318 = !DILocalVariable(name: "o", scope: !2310, file: !145, line: 956, type: !1134)
!2319 = !DILocation(line: 187, column: 26, scope: !2282, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 956, column: 36, scope: !2310)
!2321 = !DILocation(line: 953, column: 27, scope: !2310)
!2322 = !DILocation(line: 953, column: 49, scope: !2310)
!2323 = !DILocation(line: 954, column: 35, scope: !2310)
!2324 = !DILocation(line: 954, column: 47, scope: !2310)
!2325 = !DILocation(line: 956, column: 3, scope: !2310)
!2326 = !DILocation(line: 956, column: 32, scope: !2310)
!2327 = !DILocation(line: 185, column: 48, scope: !2282, inlinedAt: !2320)
!2328 = !DILocation(line: 187, column: 3, scope: !2282, inlinedAt: !2320)
!2329 = !DILocation(line: 188, column: 13, scope: !2299, inlinedAt: !2320)
!2330 = !DILocation(line: 188, column: 7, scope: !2282, inlinedAt: !2320)
!2331 = !DILocation(line: 189, column: 5, scope: !2299, inlinedAt: !2320)
!2332 = !{!2333}
!2333 = distinct !{!2333, !2334, !"quoting_options_from_style: argument 0"}
!2334 = distinct !{!2334, !"quoting_options_from_style"}
!2335 = !DILocation(line: 191, column: 10, scope: !2282, inlinedAt: !2320)
!2336 = !DILocation(line: 192, column: 1, scope: !2282, inlinedAt: !2320)
!2337 = !DILocation(line: 957, column: 10, scope: !2310)
!2338 = !DILocation(line: 958, column: 1, scope: !2310)
!2339 = !DILocation(line: 957, column: 3, scope: !2310)
!2340 = distinct !DISubprogram(name: "quotearg_style", scope: !145, file: !145, line: 961, type: !2341, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!44, !5, !54}
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "s", arg: 1, scope: !2340, file: !145, line: 961, type: !5)
!2345 = !DILocalVariable(name: "arg", arg: 2, scope: !2340, file: !145, line: 961, type: !54)
!2346 = !DILocation(line: 187, column: 26, scope: !2282, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 948, column: 36, scope: !2273, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 963, column: 10, scope: !2340)
!2349 = !DILocation(line: 961, column: 36, scope: !2340)
!2350 = !DILocation(line: 961, column: 51, scope: !2340)
!2351 = !DILocation(line: 946, column: 23, scope: !2273, inlinedAt: !2348)
!2352 = !DILocation(line: 946, column: 45, scope: !2273, inlinedAt: !2348)
!2353 = !DILocation(line: 946, column: 60, scope: !2273, inlinedAt: !2348)
!2354 = !DILocation(line: 948, column: 3, scope: !2273, inlinedAt: !2348)
!2355 = !DILocation(line: 948, column: 32, scope: !2273, inlinedAt: !2348)
!2356 = !DILocation(line: 185, column: 48, scope: !2282, inlinedAt: !2347)
!2357 = !DILocation(line: 187, column: 3, scope: !2282, inlinedAt: !2347)
!2358 = !DILocation(line: 188, column: 13, scope: !2299, inlinedAt: !2347)
!2359 = !DILocation(line: 188, column: 7, scope: !2282, inlinedAt: !2347)
!2360 = !DILocation(line: 189, column: 5, scope: !2299, inlinedAt: !2347)
!2361 = !{!2362}
!2362 = distinct !{!2362, !2363, !"quoting_options_from_style: argument 0"}
!2363 = distinct !{!2363, !"quoting_options_from_style"}
!2364 = !DILocation(line: 191, column: 10, scope: !2282, inlinedAt: !2347)
!2365 = !DILocation(line: 192, column: 1, scope: !2282, inlinedAt: !2347)
!2366 = !DILocation(line: 949, column: 10, scope: !2273, inlinedAt: !2348)
!2367 = !DILocation(line: 950, column: 1, scope: !2273, inlinedAt: !2348)
!2368 = !DILocation(line: 963, column: 3, scope: !2340)
!2369 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !145, file: !145, line: 967, type: !2370, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!44, !5, !54, !139}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "s", arg: 1, scope: !2369, file: !145, line: 967, type: !5)
!2374 = !DILocalVariable(name: "arg", arg: 2, scope: !2369, file: !145, line: 967, type: !54)
!2375 = !DILocalVariable(name: "argsize", arg: 3, scope: !2369, file: !145, line: 967, type: !139)
!2376 = !DILocation(line: 187, column: 26, scope: !2282, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 956, column: 36, scope: !2310, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 969, column: 10, scope: !2369)
!2379 = !DILocation(line: 967, column: 40, scope: !2369)
!2380 = !DILocation(line: 967, column: 55, scope: !2369)
!2381 = !DILocation(line: 967, column: 67, scope: !2369)
!2382 = !DILocation(line: 953, column: 27, scope: !2310, inlinedAt: !2378)
!2383 = !DILocation(line: 953, column: 49, scope: !2310, inlinedAt: !2378)
!2384 = !DILocation(line: 954, column: 35, scope: !2310, inlinedAt: !2378)
!2385 = !DILocation(line: 954, column: 47, scope: !2310, inlinedAt: !2378)
!2386 = !DILocation(line: 956, column: 3, scope: !2310, inlinedAt: !2378)
!2387 = !DILocation(line: 956, column: 32, scope: !2310, inlinedAt: !2378)
!2388 = !DILocation(line: 185, column: 48, scope: !2282, inlinedAt: !2377)
!2389 = !DILocation(line: 187, column: 3, scope: !2282, inlinedAt: !2377)
!2390 = !DILocation(line: 188, column: 13, scope: !2299, inlinedAt: !2377)
!2391 = !DILocation(line: 188, column: 7, scope: !2282, inlinedAt: !2377)
!2392 = !DILocation(line: 189, column: 5, scope: !2299, inlinedAt: !2377)
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"quoting_options_from_style: argument 0"}
!2395 = distinct !{!2395, !"quoting_options_from_style"}
!2396 = !DILocation(line: 191, column: 10, scope: !2282, inlinedAt: !2377)
!2397 = !DILocation(line: 192, column: 1, scope: !2282, inlinedAt: !2377)
!2398 = !DILocation(line: 957, column: 10, scope: !2310, inlinedAt: !2378)
!2399 = !DILocation(line: 958, column: 1, scope: !2310, inlinedAt: !2378)
!2400 = !DILocation(line: 969, column: 3, scope: !2369)
!2401 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !145, file: !145, line: 973, type: !2402, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!44, !54, !139, !45}
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DILocalVariable(name: "arg", arg: 1, scope: !2401, file: !145, line: 973, type: !54)
!2406 = !DILocalVariable(name: "argsize", arg: 2, scope: !2401, file: !145, line: 973, type: !139)
!2407 = !DILocalVariable(name: "ch", arg: 3, scope: !2401, file: !145, line: 973, type: !45)
!2408 = !DILocalVariable(name: "options", scope: !2401, file: !145, line: 975, type: !152)
!2409 = !DILocation(line: 973, column: 32, scope: !2401)
!2410 = !DILocation(line: 973, column: 44, scope: !2401)
!2411 = !DILocation(line: 973, column: 58, scope: !2401)
!2412 = !DILocation(line: 975, column: 3, scope: !2401)
!2413 = !DILocation(line: 976, column: 13, scope: !2401)
!2414 = !{i64 0, i64 4, !814, i64 4, i64 4, !683, i64 8, i64 32, !814, i64 40, i64 8, !622, i64 48, i64 8, !622}
!2415 = !DILocation(line: 975, column: 26, scope: !2401)
!2416 = !DILocation(line: 144, column: 43, scope: !1155, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 977, column: 3, scope: !2401)
!2418 = !DILocation(line: 144, column: 51, scope: !1155, inlinedAt: !2417)
!2419 = !DILocation(line: 144, column: 58, scope: !1155, inlinedAt: !2417)
!2420 = !DILocation(line: 146, column: 17, scope: !1155, inlinedAt: !2417)
!2421 = !DILocation(line: 148, column: 62, scope: !1155, inlinedAt: !2417)
!2422 = !DILocation(line: 148, column: 57, scope: !1155, inlinedAt: !2417)
!2423 = !DILocation(line: 147, column: 17, scope: !1155, inlinedAt: !2417)
!2424 = !DILocation(line: 149, column: 18, scope: !1155, inlinedAt: !2417)
!2425 = !DILocation(line: 149, column: 15, scope: !1155, inlinedAt: !2417)
!2426 = !DILocation(line: 149, column: 7, scope: !1155, inlinedAt: !2417)
!2427 = !DILocation(line: 150, column: 12, scope: !1155, inlinedAt: !2417)
!2428 = !DILocation(line: 150, column: 15, scope: !1155, inlinedAt: !2417)
!2429 = !DILocation(line: 150, column: 25, scope: !1155, inlinedAt: !2417)
!2430 = !DILocation(line: 150, column: 7, scope: !1155, inlinedAt: !2417)
!2431 = !DILocation(line: 151, column: 18, scope: !1155, inlinedAt: !2417)
!2432 = !DILocation(line: 151, column: 23, scope: !1155, inlinedAt: !2417)
!2433 = !DILocation(line: 151, column: 6, scope: !1155, inlinedAt: !2417)
!2434 = !DILocation(line: 978, column: 10, scope: !2401)
!2435 = !DILocation(line: 979, column: 1, scope: !2401)
!2436 = !DILocation(line: 978, column: 3, scope: !2401)
!2437 = distinct !DISubprogram(name: "quotearg_char", scope: !145, file: !145, line: 982, type: !2438, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!44, !54, !45}
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2437, file: !145, line: 982, type: !54)
!2442 = !DILocalVariable(name: "ch", arg: 2, scope: !2437, file: !145, line: 982, type: !45)
!2443 = !DILocation(line: 982, column: 28, scope: !2437)
!2444 = !DILocation(line: 982, column: 38, scope: !2437)
!2445 = !DILocation(line: 973, column: 32, scope: !2401, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 984, column: 10, scope: !2437)
!2447 = !DILocation(line: 973, column: 44, scope: !2401, inlinedAt: !2446)
!2448 = !DILocation(line: 973, column: 58, scope: !2401, inlinedAt: !2446)
!2449 = !DILocation(line: 975, column: 3, scope: !2401, inlinedAt: !2446)
!2450 = !DILocation(line: 976, column: 13, scope: !2401, inlinedAt: !2446)
!2451 = !DILocation(line: 975, column: 26, scope: !2401, inlinedAt: !2446)
!2452 = !DILocation(line: 144, column: 43, scope: !1155, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 977, column: 3, scope: !2401, inlinedAt: !2446)
!2454 = !DILocation(line: 144, column: 51, scope: !1155, inlinedAt: !2453)
!2455 = !DILocation(line: 144, column: 58, scope: !1155, inlinedAt: !2453)
!2456 = !DILocation(line: 146, column: 17, scope: !1155, inlinedAt: !2453)
!2457 = !DILocation(line: 148, column: 62, scope: !1155, inlinedAt: !2453)
!2458 = !DILocation(line: 148, column: 57, scope: !1155, inlinedAt: !2453)
!2459 = !DILocation(line: 147, column: 17, scope: !1155, inlinedAt: !2453)
!2460 = !DILocation(line: 149, column: 18, scope: !1155, inlinedAt: !2453)
!2461 = !DILocation(line: 149, column: 15, scope: !1155, inlinedAt: !2453)
!2462 = !DILocation(line: 149, column: 7, scope: !1155, inlinedAt: !2453)
!2463 = !DILocation(line: 150, column: 12, scope: !1155, inlinedAt: !2453)
!2464 = !DILocation(line: 150, column: 15, scope: !1155, inlinedAt: !2453)
!2465 = !DILocation(line: 150, column: 25, scope: !1155, inlinedAt: !2453)
!2466 = !DILocation(line: 150, column: 7, scope: !1155, inlinedAt: !2453)
!2467 = !DILocation(line: 151, column: 18, scope: !1155, inlinedAt: !2453)
!2468 = !DILocation(line: 151, column: 23, scope: !1155, inlinedAt: !2453)
!2469 = !DILocation(line: 151, column: 6, scope: !1155, inlinedAt: !2453)
!2470 = !DILocation(line: 978, column: 10, scope: !2401, inlinedAt: !2446)
!2471 = !DILocation(line: 979, column: 1, scope: !2401, inlinedAt: !2446)
!2472 = !DILocation(line: 984, column: 3, scope: !2437)
!2473 = distinct !DISubprogram(name: "quotearg_colon", scope: !145, file: !145, line: 988, type: !2249, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2474)
!2474 = !{!2475}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2473, file: !145, line: 988, type: !54)
!2476 = !DILocation(line: 988, column: 29, scope: !2473)
!2477 = !DILocation(line: 982, column: 28, scope: !2437, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 990, column: 10, scope: !2473)
!2479 = !DILocation(line: 982, column: 38, scope: !2437, inlinedAt: !2478)
!2480 = !DILocation(line: 973, column: 32, scope: !2401, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 984, column: 10, scope: !2437, inlinedAt: !2478)
!2482 = !DILocation(line: 973, column: 44, scope: !2401, inlinedAt: !2481)
!2483 = !DILocation(line: 973, column: 58, scope: !2401, inlinedAt: !2481)
!2484 = !DILocation(line: 975, column: 3, scope: !2401, inlinedAt: !2481)
!2485 = !DILocation(line: 976, column: 13, scope: !2401, inlinedAt: !2481)
!2486 = !DILocation(line: 975, column: 26, scope: !2401, inlinedAt: !2481)
!2487 = !DILocation(line: 144, column: 43, scope: !1155, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 977, column: 3, scope: !2401, inlinedAt: !2481)
!2489 = !DILocation(line: 144, column: 51, scope: !1155, inlinedAt: !2488)
!2490 = !DILocation(line: 144, column: 58, scope: !1155, inlinedAt: !2488)
!2491 = !DILocation(line: 146, column: 17, scope: !1155, inlinedAt: !2488)
!2492 = !DILocation(line: 148, column: 57, scope: !1155, inlinedAt: !2488)
!2493 = !DILocation(line: 147, column: 17, scope: !1155, inlinedAt: !2488)
!2494 = !DILocation(line: 149, column: 7, scope: !1155, inlinedAt: !2488)
!2495 = !DILocation(line: 150, column: 12, scope: !1155, inlinedAt: !2488)
!2496 = !DILocation(line: 151, column: 6, scope: !1155, inlinedAt: !2488)
!2497 = !DILocation(line: 978, column: 10, scope: !2401, inlinedAt: !2481)
!2498 = !DILocation(line: 979, column: 1, scope: !2401, inlinedAt: !2481)
!2499 = !DILocation(line: 990, column: 3, scope: !2473)
!2500 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !145, file: !145, line: 994, type: !2260, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2501)
!2501 = !{!2502, !2503}
!2502 = !DILocalVariable(name: "arg", arg: 1, scope: !2500, file: !145, line: 994, type: !54)
!2503 = !DILocalVariable(name: "argsize", arg: 2, scope: !2500, file: !145, line: 994, type: !139)
!2504 = !DILocation(line: 994, column: 33, scope: !2500)
!2505 = !DILocation(line: 994, column: 45, scope: !2500)
!2506 = !DILocation(line: 973, column: 32, scope: !2401, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 996, column: 10, scope: !2500)
!2508 = !DILocation(line: 973, column: 44, scope: !2401, inlinedAt: !2507)
!2509 = !DILocation(line: 973, column: 58, scope: !2401, inlinedAt: !2507)
!2510 = !DILocation(line: 975, column: 3, scope: !2401, inlinedAt: !2507)
!2511 = !DILocation(line: 976, column: 13, scope: !2401, inlinedAt: !2507)
!2512 = !DILocation(line: 975, column: 26, scope: !2401, inlinedAt: !2507)
!2513 = !DILocation(line: 144, column: 43, scope: !1155, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 977, column: 3, scope: !2401, inlinedAt: !2507)
!2515 = !DILocation(line: 144, column: 51, scope: !1155, inlinedAt: !2514)
!2516 = !DILocation(line: 144, column: 58, scope: !1155, inlinedAt: !2514)
!2517 = !DILocation(line: 146, column: 17, scope: !1155, inlinedAt: !2514)
!2518 = !DILocation(line: 148, column: 57, scope: !1155, inlinedAt: !2514)
!2519 = !DILocation(line: 147, column: 17, scope: !1155, inlinedAt: !2514)
!2520 = !DILocation(line: 149, column: 7, scope: !1155, inlinedAt: !2514)
!2521 = !DILocation(line: 150, column: 12, scope: !1155, inlinedAt: !2514)
!2522 = !DILocation(line: 151, column: 6, scope: !1155, inlinedAt: !2514)
!2523 = !DILocation(line: 978, column: 10, scope: !2401, inlinedAt: !2507)
!2524 = !DILocation(line: 979, column: 1, scope: !2401, inlinedAt: !2507)
!2525 = !DILocation(line: 996, column: 3, scope: !2500)
!2526 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !145, file: !145, line: 1000, type: !2274, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2527)
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "n", arg: 1, scope: !2526, file: !145, line: 1000, type: !77)
!2529 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !145, line: 1000, type: !5)
!2530 = !DILocalVariable(name: "arg", arg: 3, scope: !2526, file: !145, line: 1000, type: !54)
!2531 = !DILocalVariable(name: "options", scope: !2526, file: !145, line: 1002, type: !152)
!2532 = !DILocation(line: 187, column: 26, scope: !2282, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 1003, column: 13, scope: !2526)
!2534 = !DILocation(line: 1000, column: 29, scope: !2526)
!2535 = !DILocation(line: 1000, column: 51, scope: !2526)
!2536 = !DILocation(line: 1000, column: 66, scope: !2526)
!2537 = !DILocation(line: 1002, column: 3, scope: !2526)
!2538 = !DILocation(line: 185, column: 48, scope: !2282, inlinedAt: !2533)
!2539 = !DILocation(line: 187, column: 3, scope: !2282, inlinedAt: !2533)
!2540 = !DILocation(line: 188, column: 13, scope: !2299, inlinedAt: !2533)
!2541 = !DILocation(line: 188, column: 7, scope: !2282, inlinedAt: !2533)
!2542 = !DILocation(line: 189, column: 5, scope: !2299, inlinedAt: !2533)
!2543 = !{!2544}
!2544 = distinct !{!2544, !2545, !"quoting_options_from_style: argument 0"}
!2545 = distinct !{!2545, !"quoting_options_from_style"}
!2546 = !DILocation(line: 191, column: 10, scope: !2282, inlinedAt: !2533)
!2547 = !DILocation(line: 192, column: 1, scope: !2282, inlinedAt: !2533)
!2548 = !DILocation(line: 1003, column: 13, scope: !2526)
!2549 = !DILocation(line: 1002, column: 26, scope: !2526)
!2550 = !DILocation(line: 144, column: 43, scope: !1155, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 1004, column: 3, scope: !2526)
!2552 = !DILocation(line: 144, column: 51, scope: !1155, inlinedAt: !2551)
!2553 = !DILocation(line: 144, column: 58, scope: !1155, inlinedAt: !2551)
!2554 = !DILocation(line: 146, column: 17, scope: !1155, inlinedAt: !2551)
!2555 = !DILocation(line: 148, column: 57, scope: !1155, inlinedAt: !2551)
!2556 = !DILocation(line: 147, column: 17, scope: !1155, inlinedAt: !2551)
!2557 = !DILocation(line: 149, column: 7, scope: !1155, inlinedAt: !2551)
!2558 = !DILocation(line: 150, column: 12, scope: !1155, inlinedAt: !2551)
!2559 = !DILocation(line: 151, column: 6, scope: !1155, inlinedAt: !2551)
!2560 = !DILocation(line: 1005, column: 10, scope: !2526)
!2561 = !DILocation(line: 1006, column: 1, scope: !2526)
!2562 = !DILocation(line: 1005, column: 3, scope: !2526)
!2563 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !145, file: !145, line: 1009, type: !2564, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!44, !77, !54, !54, !54}
!2566 = !{!2567, !2568, !2569, !2570}
!2567 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !145, line: 1009, type: !77)
!2568 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2563, file: !145, line: 1009, type: !54)
!2569 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2563, file: !145, line: 1010, type: !54)
!2570 = !DILocalVariable(name: "arg", arg: 4, scope: !2563, file: !145, line: 1010, type: !54)
!2571 = !DILocation(line: 1009, column: 24, scope: !2563)
!2572 = !DILocation(line: 1009, column: 39, scope: !2563)
!2573 = !DILocation(line: 1010, column: 32, scope: !2563)
!2574 = !DILocation(line: 1010, column: 57, scope: !2563)
!2575 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !145, line: 1017, type: !77)
!2576 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !145, file: !145, line: 1017, type: !2577, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!44, !77, !54, !54, !54, !139}
!2579 = !{!2575, !2580, !2581, !2582, !2583, !2584}
!2580 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2576, file: !145, line: 1017, type: !54)
!2581 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2576, file: !145, line: 1018, type: !54)
!2582 = !DILocalVariable(name: "arg", arg: 4, scope: !2576, file: !145, line: 1019, type: !54)
!2583 = !DILocalVariable(name: "argsize", arg: 5, scope: !2576, file: !145, line: 1019, type: !139)
!2584 = !DILocalVariable(name: "o", scope: !2576, file: !145, line: 1021, type: !152)
!2585 = !DILocation(line: 1017, column: 28, scope: !2576, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1012, column: 10, scope: !2563)
!2587 = !DILocation(line: 1017, column: 43, scope: !2576, inlinedAt: !2586)
!2588 = !DILocation(line: 1018, column: 36, scope: !2576, inlinedAt: !2586)
!2589 = !DILocation(line: 1019, column: 36, scope: !2576, inlinedAt: !2586)
!2590 = !DILocation(line: 1019, column: 48, scope: !2576, inlinedAt: !2586)
!2591 = !DILocation(line: 1021, column: 3, scope: !2576, inlinedAt: !2586)
!2592 = !DILocation(line: 1021, column: 30, scope: !2576, inlinedAt: !2586)
!2593 = !DILocation(line: 1021, column: 26, scope: !2576, inlinedAt: !2586)
!2594 = !DILocation(line: 171, column: 45, scope: !1204, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1022, column: 3, scope: !2576, inlinedAt: !2586)
!2596 = !DILocation(line: 172, column: 33, scope: !1204, inlinedAt: !2595)
!2597 = !DILocation(line: 172, column: 57, scope: !1204, inlinedAt: !2595)
!2598 = !DILocation(line: 176, column: 6, scope: !1204, inlinedAt: !2595)
!2599 = !DILocation(line: 176, column: 12, scope: !1204, inlinedAt: !2595)
!2600 = !DILocation(line: 177, column: 8, scope: !1220, inlinedAt: !2595)
!2601 = !DILocation(line: 177, column: 23, scope: !1220, inlinedAt: !2595)
!2602 = !DILocation(line: 177, column: 19, scope: !1220, inlinedAt: !2595)
!2603 = !DILocation(line: 178, column: 5, scope: !1220, inlinedAt: !2595)
!2604 = !DILocation(line: 179, column: 6, scope: !1204, inlinedAt: !2595)
!2605 = !DILocation(line: 179, column: 17, scope: !1204, inlinedAt: !2595)
!2606 = !DILocation(line: 180, column: 6, scope: !1204, inlinedAt: !2595)
!2607 = !DILocation(line: 180, column: 18, scope: !1204, inlinedAt: !2595)
!2608 = !DILocation(line: 1023, column: 10, scope: !2576, inlinedAt: !2586)
!2609 = !DILocation(line: 1024, column: 1, scope: !2576, inlinedAt: !2586)
!2610 = !DILocation(line: 1012, column: 3, scope: !2563)
!2611 = !DILocation(line: 1017, column: 28, scope: !2576)
!2612 = !DILocation(line: 1017, column: 43, scope: !2576)
!2613 = !DILocation(line: 1018, column: 36, scope: !2576)
!2614 = !DILocation(line: 1019, column: 36, scope: !2576)
!2615 = !DILocation(line: 1019, column: 48, scope: !2576)
!2616 = !DILocation(line: 1021, column: 3, scope: !2576)
!2617 = !DILocation(line: 1021, column: 30, scope: !2576)
!2618 = !DILocation(line: 1021, column: 26, scope: !2576)
!2619 = !DILocation(line: 171, column: 45, scope: !1204, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1022, column: 3, scope: !2576)
!2621 = !DILocation(line: 172, column: 33, scope: !1204, inlinedAt: !2620)
!2622 = !DILocation(line: 172, column: 57, scope: !1204, inlinedAt: !2620)
!2623 = !DILocation(line: 176, column: 6, scope: !1204, inlinedAt: !2620)
!2624 = !DILocation(line: 176, column: 12, scope: !1204, inlinedAt: !2620)
!2625 = !DILocation(line: 177, column: 8, scope: !1220, inlinedAt: !2620)
!2626 = !DILocation(line: 177, column: 23, scope: !1220, inlinedAt: !2620)
!2627 = !DILocation(line: 177, column: 19, scope: !1220, inlinedAt: !2620)
!2628 = !DILocation(line: 178, column: 5, scope: !1220, inlinedAt: !2620)
!2629 = !DILocation(line: 179, column: 6, scope: !1204, inlinedAt: !2620)
!2630 = !DILocation(line: 179, column: 17, scope: !1204, inlinedAt: !2620)
!2631 = !DILocation(line: 180, column: 6, scope: !1204, inlinedAt: !2620)
!2632 = !DILocation(line: 180, column: 18, scope: !1204, inlinedAt: !2620)
!2633 = !DILocation(line: 1023, column: 10, scope: !2576)
!2634 = !DILocation(line: 1024, column: 1, scope: !2576)
!2635 = !DILocation(line: 1023, column: 3, scope: !2576)
!2636 = distinct !DISubprogram(name: "quotearg_custom", scope: !145, file: !145, line: 1027, type: !2637, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!44, !54, !54, !54}
!2639 = !{!2640, !2641, !2642}
!2640 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2636, file: !145, line: 1027, type: !54)
!2641 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2636, file: !145, line: 1027, type: !54)
!2642 = !DILocalVariable(name: "arg", arg: 3, scope: !2636, file: !145, line: 1028, type: !54)
!2643 = !DILocation(line: 1027, column: 30, scope: !2636)
!2644 = !DILocation(line: 1027, column: 54, scope: !2636)
!2645 = !DILocation(line: 1028, column: 30, scope: !2636)
!2646 = !DILocation(line: 1009, column: 24, scope: !2563, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1030, column: 10, scope: !2636)
!2648 = !DILocation(line: 1009, column: 39, scope: !2563, inlinedAt: !2647)
!2649 = !DILocation(line: 1010, column: 32, scope: !2563, inlinedAt: !2647)
!2650 = !DILocation(line: 1010, column: 57, scope: !2563, inlinedAt: !2647)
!2651 = !DILocation(line: 1017, column: 28, scope: !2576, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1012, column: 10, scope: !2563, inlinedAt: !2647)
!2653 = !DILocation(line: 1017, column: 43, scope: !2576, inlinedAt: !2652)
!2654 = !DILocation(line: 1018, column: 36, scope: !2576, inlinedAt: !2652)
!2655 = !DILocation(line: 1019, column: 36, scope: !2576, inlinedAt: !2652)
!2656 = !DILocation(line: 1019, column: 48, scope: !2576, inlinedAt: !2652)
!2657 = !DILocation(line: 1021, column: 3, scope: !2576, inlinedAt: !2652)
!2658 = !DILocation(line: 1021, column: 30, scope: !2576, inlinedAt: !2652)
!2659 = !DILocation(line: 1021, column: 26, scope: !2576, inlinedAt: !2652)
!2660 = !DILocation(line: 171, column: 45, scope: !1204, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1022, column: 3, scope: !2576, inlinedAt: !2652)
!2662 = !DILocation(line: 172, column: 33, scope: !1204, inlinedAt: !2661)
!2663 = !DILocation(line: 172, column: 57, scope: !1204, inlinedAt: !2661)
!2664 = !DILocation(line: 176, column: 6, scope: !1204, inlinedAt: !2661)
!2665 = !DILocation(line: 176, column: 12, scope: !1204, inlinedAt: !2661)
!2666 = !DILocation(line: 177, column: 8, scope: !1220, inlinedAt: !2661)
!2667 = !DILocation(line: 177, column: 23, scope: !1220, inlinedAt: !2661)
!2668 = !DILocation(line: 177, column: 19, scope: !1220, inlinedAt: !2661)
!2669 = !DILocation(line: 178, column: 5, scope: !1220, inlinedAt: !2661)
!2670 = !DILocation(line: 179, column: 6, scope: !1204, inlinedAt: !2661)
!2671 = !DILocation(line: 179, column: 17, scope: !1204, inlinedAt: !2661)
!2672 = !DILocation(line: 180, column: 6, scope: !1204, inlinedAt: !2661)
!2673 = !DILocation(line: 180, column: 18, scope: !1204, inlinedAt: !2661)
!2674 = !DILocation(line: 1023, column: 10, scope: !2576, inlinedAt: !2652)
!2675 = !DILocation(line: 1024, column: 1, scope: !2576, inlinedAt: !2652)
!2676 = !DILocation(line: 1030, column: 3, scope: !2636)
!2677 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !145, file: !145, line: 1034, type: !2678, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!44, !54, !54, !54, !139}
!2680 = !{!2681, !2682, !2683, !2684}
!2681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2677, file: !145, line: 1034, type: !54)
!2682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2677, file: !145, line: 1034, type: !54)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !145, line: 1035, type: !54)
!2684 = !DILocalVariable(name: "argsize", arg: 4, scope: !2677, file: !145, line: 1035, type: !139)
!2685 = !DILocation(line: 1034, column: 34, scope: !2677)
!2686 = !DILocation(line: 1034, column: 58, scope: !2677)
!2687 = !DILocation(line: 1035, column: 34, scope: !2677)
!2688 = !DILocation(line: 1035, column: 46, scope: !2677)
!2689 = !DILocation(line: 1017, column: 28, scope: !2576, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1037, column: 10, scope: !2677)
!2691 = !DILocation(line: 1017, column: 43, scope: !2576, inlinedAt: !2690)
!2692 = !DILocation(line: 1018, column: 36, scope: !2576, inlinedAt: !2690)
!2693 = !DILocation(line: 1019, column: 36, scope: !2576, inlinedAt: !2690)
!2694 = !DILocation(line: 1019, column: 48, scope: !2576, inlinedAt: !2690)
!2695 = !DILocation(line: 1021, column: 3, scope: !2576, inlinedAt: !2690)
!2696 = !DILocation(line: 1021, column: 30, scope: !2576, inlinedAt: !2690)
!2697 = !DILocation(line: 1021, column: 26, scope: !2576, inlinedAt: !2690)
!2698 = !DILocation(line: 171, column: 45, scope: !1204, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1022, column: 3, scope: !2576, inlinedAt: !2690)
!2700 = !DILocation(line: 172, column: 33, scope: !1204, inlinedAt: !2699)
!2701 = !DILocation(line: 172, column: 57, scope: !1204, inlinedAt: !2699)
!2702 = !DILocation(line: 176, column: 6, scope: !1204, inlinedAt: !2699)
!2703 = !DILocation(line: 176, column: 12, scope: !1204, inlinedAt: !2699)
!2704 = !DILocation(line: 177, column: 8, scope: !1220, inlinedAt: !2699)
!2705 = !DILocation(line: 177, column: 23, scope: !1220, inlinedAt: !2699)
!2706 = !DILocation(line: 177, column: 19, scope: !1220, inlinedAt: !2699)
!2707 = !DILocation(line: 178, column: 5, scope: !1220, inlinedAt: !2699)
!2708 = !DILocation(line: 179, column: 6, scope: !1204, inlinedAt: !2699)
!2709 = !DILocation(line: 179, column: 17, scope: !1204, inlinedAt: !2699)
!2710 = !DILocation(line: 180, column: 6, scope: !1204, inlinedAt: !2699)
!2711 = !DILocation(line: 180, column: 18, scope: !1204, inlinedAt: !2699)
!2712 = !DILocation(line: 1023, column: 10, scope: !2576, inlinedAt: !2690)
!2713 = !DILocation(line: 1024, column: 1, scope: !2576, inlinedAt: !2690)
!2714 = !DILocation(line: 1037, column: 3, scope: !2677)
!2715 = distinct !DISubprogram(name: "quote_n_mem", scope: !145, file: !145, line: 1052, type: !2716, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!54, !77, !54, !139}
!2718 = !{!2719, !2720, !2721}
!2719 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !145, line: 1052, type: !77)
!2720 = !DILocalVariable(name: "arg", arg: 2, scope: !2715, file: !145, line: 1052, type: !54)
!2721 = !DILocalVariable(name: "argsize", arg: 3, scope: !2715, file: !145, line: 1052, type: !139)
!2722 = !DILocation(line: 1052, column: 18, scope: !2715)
!2723 = !DILocation(line: 1052, column: 33, scope: !2715)
!2724 = !DILocation(line: 1052, column: 45, scope: !2715)
!2725 = !DILocation(line: 1054, column: 10, scope: !2715)
!2726 = !DILocation(line: 1054, column: 3, scope: !2715)
!2727 = distinct !DISubprogram(name: "quote_mem", scope: !145, file: !145, line: 1058, type: !2728, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!54, !54, !139}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !145, line: 1058, type: !54)
!2732 = !DILocalVariable(name: "argsize", arg: 2, scope: !2727, file: !145, line: 1058, type: !139)
!2733 = !DILocation(line: 1058, column: 24, scope: !2727)
!2734 = !DILocation(line: 1058, column: 36, scope: !2727)
!2735 = !DILocation(line: 1052, column: 18, scope: !2715, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1060, column: 10, scope: !2727)
!2737 = !DILocation(line: 1052, column: 33, scope: !2715, inlinedAt: !2736)
!2738 = !DILocation(line: 1052, column: 45, scope: !2715, inlinedAt: !2736)
!2739 = !DILocation(line: 1054, column: 10, scope: !2715, inlinedAt: !2736)
!2740 = !DILocation(line: 1060, column: 3, scope: !2727)
!2741 = distinct !DISubprogram(name: "quote_n", scope: !145, file: !145, line: 1064, type: !2742, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!54, !77, !54}
!2744 = !{!2745, !2746}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2741, file: !145, line: 1064, type: !77)
!2746 = !DILocalVariable(name: "arg", arg: 2, scope: !2741, file: !145, line: 1064, type: !54)
!2747 = !DILocation(line: 1064, column: 14, scope: !2741)
!2748 = !DILocation(line: 1064, column: 29, scope: !2741)
!2749 = !DILocation(line: 1052, column: 18, scope: !2715, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1066, column: 10, scope: !2741)
!2751 = !DILocation(line: 1052, column: 33, scope: !2715, inlinedAt: !2750)
!2752 = !DILocation(line: 1052, column: 45, scope: !2715, inlinedAt: !2750)
!2753 = !DILocation(line: 1054, column: 10, scope: !2715, inlinedAt: !2750)
!2754 = !DILocation(line: 1066, column: 3, scope: !2741)
!2755 = distinct !DISubprogram(name: "quote", scope: !145, file: !145, line: 1070, type: !2756, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!54, !54}
!2758 = !{!2759}
!2759 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !145, line: 1070, type: !54)
!2760 = !DILocation(line: 1070, column: 20, scope: !2755)
!2761 = !DILocation(line: 1064, column: 14, scope: !2741, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1072, column: 10, scope: !2755)
!2763 = !DILocation(line: 1064, column: 29, scope: !2741, inlinedAt: !2762)
!2764 = !DILocation(line: 1052, column: 18, scope: !2715, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 1066, column: 10, scope: !2741, inlinedAt: !2762)
!2766 = !DILocation(line: 1052, column: 33, scope: !2715, inlinedAt: !2765)
!2767 = !DILocation(line: 1052, column: 45, scope: !2715, inlinedAt: !2765)
!2768 = !DILocation(line: 1054, column: 10, scope: !2715, inlinedAt: !2765)
!2769 = !DILocation(line: 1072, column: 3, scope: !2755)
!2770 = distinct !DISubprogram(name: "version_etc_arn", scope: !567, file: !567, line: 62, type: !2771, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !2826)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2773, !54, !54, !54, !2825, !139}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2775, line: 7, baseType: !2776)
!2775 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2777, line: 241, size: 1728, elements: !2778)
!2777 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2799, !2800, !2801, !2802, !2803, !2804, !2806, !2810, !2813, !2815, !2816, !2817, !2818, !2819, !2820, !2821}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2776, file: !2777, line: 242, baseType: !77, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2776, file: !2777, line: 247, baseType: !44, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2776, file: !2777, line: 248, baseType: !44, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2776, file: !2777, line: 249, baseType: !44, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2776, file: !2777, line: 250, baseType: !44, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2776, file: !2777, line: 251, baseType: !44, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2776, file: !2777, line: 252, baseType: !44, size: 64, offset: 384)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2776, file: !2777, line: 253, baseType: !44, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2776, file: !2777, line: 254, baseType: !44, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2776, file: !2777, line: 256, baseType: !44, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2776, file: !2777, line: 257, baseType: !44, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2776, file: !2777, line: 258, baseType: !44, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2776, file: !2777, line: 260, baseType: !2792, size: 64, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2777, line: 156, size: 192, elements: !2794)
!2794 = !{!2795, !2796, !2798}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2793, file: !2777, line: 157, baseType: !2792, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2793, file: !2777, line: 158, baseType: !2797, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2793, file: !2777, line: 162, baseType: !77, size: 32, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2776, file: !2777, line: 262, baseType: !2797, size: 64, offset: 832)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2776, file: !2777, line: 264, baseType: !77, size: 32, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2776, file: !2777, line: 268, baseType: !77, size: 32, offset: 928)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2776, file: !2777, line: 270, baseType: !729, size: 64, offset: 960)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2776, file: !2777, line: 274, baseType: !138, size: 16, offset: 1024)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2776, file: !2777, line: 275, baseType: !2805, size: 8, offset: 1040)
!2805 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2776, file: !2777, line: 276, baseType: !2807, size: 8, offset: 1048)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !2808)
!2808 = !{!2809}
!2809 = !DISubrange(count: 1)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2776, file: !2777, line: 280, baseType: !2811, size: 64, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2777, line: 150, baseType: null)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2776, file: !2777, line: 289, baseType: !2814, size: 64, offset: 1152)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !715, line: 141, baseType: !730)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2776, file: !2777, line: 297, baseType: !46, size: 64, offset: 1216)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2776, file: !2777, line: 298, baseType: !46, size: 64, offset: 1280)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2776, file: !2777, line: 299, baseType: !46, size: 64, offset: 1344)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2776, file: !2777, line: 300, baseType: !46, size: 64, offset: 1408)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2776, file: !2777, line: 302, baseType: !139, size: 64, offset: 1472)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2776, file: !2777, line: 303, baseType: !77, size: 32, offset: 1536)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2776, file: !2777, line: 305, baseType: !2822, size: 160, offset: 1568)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !2823)
!2823 = !{!2824}
!2824 = !DISubrange(count: 20)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832}
!2827 = !DILocalVariable(name: "stream", arg: 1, scope: !2770, file: !567, line: 62, type: !2773)
!2828 = !DILocalVariable(name: "command_name", arg: 2, scope: !2770, file: !567, line: 63, type: !54)
!2829 = !DILocalVariable(name: "package", arg: 3, scope: !2770, file: !567, line: 63, type: !54)
!2830 = !DILocalVariable(name: "version", arg: 4, scope: !2770, file: !567, line: 64, type: !54)
!2831 = !DILocalVariable(name: "authors", arg: 5, scope: !2770, file: !567, line: 65, type: !2825)
!2832 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2770, file: !567, line: 65, type: !139)
!2833 = !DILocation(line: 62, column: 24, scope: !2770)
!2834 = !DILocation(line: 63, column: 30, scope: !2770)
!2835 = !DILocation(line: 63, column: 56, scope: !2770)
!2836 = !DILocation(line: 64, column: 30, scope: !2770)
!2837 = !DILocation(line: 65, column: 39, scope: !2770)
!2838 = !DILocation(line: 65, column: 55, scope: !2770)
!2839 = !DILocation(line: 67, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2770, file: !567, line: 67, column: 7)
!2841 = !DILocation(line: 67, column: 7, scope: !2770)
!2842 = !DILocation(line: 68, column: 5, scope: !2840)
!2843 = !DILocation(line: 70, column: 5, scope: !2840)
!2844 = !DILocation(line: 84, column: 3, scope: !2770)
!2845 = !DILocation(line: 86, column: 3, scope: !2770)
!2846 = !DILocation(line: 95, column: 3, scope: !2770)
!2847 = !DILocation(line: 99, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2770, file: !567, line: 96, column: 5)
!2849 = !DILocation(line: 102, column: 7, scope: !2848)
!2850 = !DILocation(line: 103, column: 7, scope: !2848)
!2851 = !DILocation(line: 106, column: 7, scope: !2848)
!2852 = !DILocation(line: 107, column: 7, scope: !2848)
!2853 = !DILocation(line: 110, column: 7, scope: !2848)
!2854 = !DILocation(line: 112, column: 7, scope: !2848)
!2855 = !DILocation(line: 117, column: 7, scope: !2848)
!2856 = !DILocation(line: 119, column: 7, scope: !2848)
!2857 = !DILocation(line: 124, column: 7, scope: !2848)
!2858 = !DILocation(line: 126, column: 7, scope: !2848)
!2859 = !DILocation(line: 131, column: 7, scope: !2848)
!2860 = !DILocation(line: 134, column: 7, scope: !2848)
!2861 = !DILocation(line: 139, column: 7, scope: !2848)
!2862 = !DILocation(line: 142, column: 7, scope: !2848)
!2863 = !DILocation(line: 147, column: 7, scope: !2848)
!2864 = !DILocation(line: 151, column: 7, scope: !2848)
!2865 = !DILocation(line: 156, column: 7, scope: !2848)
!2866 = !DILocation(line: 160, column: 7, scope: !2848)
!2867 = !DILocation(line: 167, column: 7, scope: !2848)
!2868 = !DILocation(line: 171, column: 7, scope: !2848)
!2869 = !DILocation(line: 173, column: 1, scope: !2770)
!2870 = distinct !DISubprogram(name: "version_etc_ar", scope: !567, file: !567, line: 180, type: !2871, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !2773, !54, !54, !54, !2825}
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879}
!2874 = !DILocalVariable(name: "stream", arg: 1, scope: !2870, file: !567, line: 180, type: !2773)
!2875 = !DILocalVariable(name: "command_name", arg: 2, scope: !2870, file: !567, line: 181, type: !54)
!2876 = !DILocalVariable(name: "package", arg: 3, scope: !2870, file: !567, line: 181, type: !54)
!2877 = !DILocalVariable(name: "version", arg: 4, scope: !2870, file: !567, line: 182, type: !54)
!2878 = !DILocalVariable(name: "authors", arg: 5, scope: !2870, file: !567, line: 182, type: !2825)
!2879 = !DILocalVariable(name: "n_authors", scope: !2870, file: !567, line: 184, type: !139)
!2880 = !DILocation(line: 180, column: 23, scope: !2870)
!2881 = !DILocation(line: 181, column: 29, scope: !2870)
!2882 = !DILocation(line: 181, column: 55, scope: !2870)
!2883 = !DILocation(line: 182, column: 29, scope: !2870)
!2884 = !DILocation(line: 182, column: 59, scope: !2870)
!2885 = !DILocation(line: 184, column: 10, scope: !2870)
!2886 = !DILocation(line: 186, column: 8, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2870, file: !567, line: 186, column: 3)
!2888 = !DILocation(line: 186, column: 23, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2887, file: !567, line: 186, column: 3)
!2890 = !DILocation(line: 186, column: 3, scope: !2887)
!2891 = !DILocation(line: 186, column: 52, scope: !2889)
!2892 = distinct !{!2892, !2890, !2893}
!2893 = !DILocation(line: 187, column: 5, scope: !2887)
!2894 = !DILocation(line: 188, column: 3, scope: !2870)
!2895 = !DILocation(line: 189, column: 1, scope: !2870)
!2896 = distinct !DISubprogram(name: "version_etc_va", scope: !567, file: !567, line: 196, type: !2897, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !2906)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2773, !54, !54, !54, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !564, line: 189, size: 192, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2900, file: !564, line: 189, baseType: !158, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2900, file: !564, line: 189, baseType: !158, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2900, file: !564, line: 189, baseType: !46, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2900, file: !564, line: 189, baseType: !46, size: 64, offset: 128)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2907 = !DILocalVariable(name: "stream", arg: 1, scope: !2896, file: !567, line: 196, type: !2773)
!2908 = !DILocalVariable(name: "command_name", arg: 2, scope: !2896, file: !567, line: 197, type: !54)
!2909 = !DILocalVariable(name: "package", arg: 3, scope: !2896, file: !567, line: 197, type: !54)
!2910 = !DILocalVariable(name: "version", arg: 4, scope: !2896, file: !567, line: 198, type: !54)
!2911 = !DILocalVariable(name: "authors", arg: 5, scope: !2896, file: !567, line: 198, type: !2899)
!2912 = !DILocalVariable(name: "n_authors", scope: !2896, file: !567, line: 200, type: !139)
!2913 = !DILocalVariable(name: "authtab", scope: !2896, file: !567, line: 201, type: !2914)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, elements: !148)
!2915 = !DILocation(line: 196, column: 23, scope: !2896)
!2916 = !DILocation(line: 197, column: 29, scope: !2896)
!2917 = !DILocation(line: 197, column: 55, scope: !2896)
!2918 = !DILocation(line: 198, column: 29, scope: !2896)
!2919 = !DILocation(line: 198, column: 46, scope: !2896)
!2920 = !DILocation(line: 201, column: 3, scope: !2896)
!2921 = !DILocation(line: 201, column: 15, scope: !2896)
!2922 = !DILocation(line: 200, column: 10, scope: !2896)
!2923 = !DILocation(line: 205, column: 35, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !567, line: 203, column: 3)
!2925 = distinct !DILexicalBlock(scope: !2896, file: !567, line: 203, column: 3)
!2926 = !DILocation(line: 205, column: 14, scope: !2924)
!2927 = !DILocation(line: 205, column: 33, scope: !2924)
!2928 = !DILocation(line: 205, column: 67, scope: !2924)
!2929 = !DILocation(line: 203, column: 3, scope: !2925)
!2930 = !DILocation(line: 208, column: 3, scope: !2896)
!2931 = !DILocation(line: 210, column: 1, scope: !2896)
!2932 = distinct !DISubprogram(name: "version_etc", scope: !567, file: !567, line: 227, type: !2933, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2773, !54, !54, !54, null}
!2935 = !{!2936, !2937, !2938, !2939, !2940}
!2936 = !DILocalVariable(name: "stream", arg: 1, scope: !2932, file: !567, line: 227, type: !2773)
!2937 = !DILocalVariable(name: "command_name", arg: 2, scope: !2932, file: !567, line: 228, type: !54)
!2938 = !DILocalVariable(name: "package", arg: 3, scope: !2932, file: !567, line: 228, type: !54)
!2939 = !DILocalVariable(name: "version", arg: 4, scope: !2932, file: !567, line: 229, type: !54)
!2940 = !DILocalVariable(name: "authors", scope: !2932, file: !567, line: 231, type: !2941)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2942, line: 46, baseType: !2943)
!2942 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2944, line: 48, baseType: !2945)
!2944 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !564, line: 231, baseType: !2946)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2900, size: 192, elements: !2808)
!2947 = !DILocation(line: 227, column: 20, scope: !2932)
!2948 = !DILocation(line: 228, column: 26, scope: !2932)
!2949 = !DILocation(line: 228, column: 52, scope: !2932)
!2950 = !DILocation(line: 229, column: 26, scope: !2932)
!2951 = !DILocation(line: 231, column: 3, scope: !2932)
!2952 = !DILocation(line: 231, column: 11, scope: !2932)
!2953 = !DILocation(line: 233, column: 3, scope: !2932)
!2954 = !DILocation(line: 234, column: 3, scope: !2932)
!2955 = !DILocation(line: 235, column: 3, scope: !2932)
!2956 = !DILocation(line: 236, column: 1, scope: !2932)
!2957 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !567, file: !567, line: 239, type: !1040, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !87)
!2958 = !DILocation(line: 245, column: 3, scope: !2957)
!2959 = !DILocation(line: 251, column: 3, scope: !2957)
!2960 = !DILocation(line: 256, column: 3, scope: !2957)
!2961 = !DILocation(line: 258, column: 1, scope: !2957)
!2962 = distinct !DISubprogram(name: "xnmalloc", scope: !574, file: !574, line: 105, type: !2963, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!46, !139, !139}
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !574, line: 105, type: !139)
!2967 = !DILocalVariable(name: "s", arg: 2, scope: !2962, file: !574, line: 105, type: !139)
!2968 = !DILocation(line: 105, column: 18, scope: !2962)
!2969 = !DILocation(line: 105, column: 28, scope: !2962)
!2970 = !DILocation(line: 107, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2962, file: !574, line: 107, column: 7)
!2972 = !DILocation(line: 107, column: 7, scope: !2962)
!2973 = !DILocation(line: 108, column: 5, scope: !2971)
!2974 = !DILocation(line: 109, column: 21, scope: !2962)
!2975 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !2977, line: 39, type: !139)
!2976 = distinct !DISubprogram(name: "xmalloc", scope: !2977, file: !2977, line: 39, type: !2978, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2980)
!2977 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!46, !139}
!2980 = !{!2975, !2981}
!2981 = !DILocalVariable(name: "p", scope: !2976, file: !2977, line: 41, type: !46)
!2982 = !DILocation(line: 39, column: 17, scope: !2976, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 109, column: 10, scope: !2962)
!2984 = !DILocation(line: 41, column: 13, scope: !2976, inlinedAt: !2983)
!2985 = !DILocation(line: 41, column: 9, scope: !2976, inlinedAt: !2983)
!2986 = !DILocation(line: 42, column: 8, scope: !2987, inlinedAt: !2983)
!2987 = distinct !DILexicalBlock(scope: !2976, file: !2977, line: 42, column: 7)
!2988 = !DILocation(line: 42, column: 15, scope: !2987, inlinedAt: !2983)
!2989 = !DILocation(line: 42, column: 10, scope: !2987, inlinedAt: !2983)
!2990 = !DILocation(line: 43, column: 5, scope: !2987, inlinedAt: !2983)
!2991 = !DILocation(line: 109, column: 3, scope: !2962)
!2992 = !DILocation(line: 39, column: 17, scope: !2976)
!2993 = !DILocation(line: 41, column: 13, scope: !2976)
!2994 = !DILocation(line: 41, column: 9, scope: !2976)
!2995 = !DILocation(line: 42, column: 8, scope: !2987)
!2996 = !DILocation(line: 42, column: 15, scope: !2987)
!2997 = !DILocation(line: 42, column: 10, scope: !2987)
!2998 = !DILocation(line: 43, column: 5, scope: !2987)
!2999 = !DILocation(line: 44, column: 3, scope: !2976)
!3000 = distinct !DISubprogram(name: "xnrealloc", scope: !574, file: !574, line: 118, type: !3001, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!46, !46, !139, !139}
!3003 = !{!3004, !3005, !3006}
!3004 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !574, line: 118, type: !46)
!3005 = !DILocalVariable(name: "n", arg: 2, scope: !3000, file: !574, line: 118, type: !139)
!3006 = !DILocalVariable(name: "s", arg: 3, scope: !3000, file: !574, line: 118, type: !139)
!3007 = !DILocation(line: 118, column: 18, scope: !3000)
!3008 = !DILocation(line: 118, column: 28, scope: !3000)
!3009 = !DILocation(line: 118, column: 38, scope: !3000)
!3010 = !DILocation(line: 120, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3000, file: !574, line: 120, column: 7)
!3012 = !DILocation(line: 120, column: 7, scope: !3000)
!3013 = !DILocation(line: 121, column: 5, scope: !3011)
!3014 = !DILocation(line: 122, column: 25, scope: !3000)
!3015 = !DILocalVariable(name: "p", arg: 1, scope: !3016, file: !2977, line: 51, type: !46)
!3016 = distinct !DISubprogram(name: "xrealloc", scope: !2977, file: !2977, line: 51, type: !3017, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!46, !46, !139}
!3019 = !{!3015, !3020}
!3020 = !DILocalVariable(name: "n", arg: 2, scope: !3016, file: !2977, line: 51, type: !139)
!3021 = !DILocation(line: 51, column: 17, scope: !3016, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 122, column: 10, scope: !3000)
!3023 = !DILocation(line: 51, column: 27, scope: !3016, inlinedAt: !3022)
!3024 = !DILocation(line: 53, column: 8, scope: !3025, inlinedAt: !3022)
!3025 = distinct !DILexicalBlock(scope: !3016, file: !2977, line: 53, column: 7)
!3026 = !DILocation(line: 53, column: 13, scope: !3025, inlinedAt: !3022)
!3027 = !DILocation(line: 53, column: 10, scope: !3025, inlinedAt: !3022)
!3028 = !DILocation(line: 57, column: 7, scope: !3029, inlinedAt: !3022)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !2977, line: 54, column: 5)
!3030 = !DILocation(line: 58, column: 7, scope: !3029, inlinedAt: !3022)
!3031 = !DILocation(line: 61, column: 7, scope: !3016, inlinedAt: !3022)
!3032 = !DILocation(line: 62, column: 8, scope: !3033, inlinedAt: !3022)
!3033 = distinct !DILexicalBlock(scope: !3016, file: !2977, line: 62, column: 7)
!3034 = !DILocation(line: 62, column: 13, scope: !3033, inlinedAt: !3022)
!3035 = !DILocation(line: 62, column: 10, scope: !3033, inlinedAt: !3022)
!3036 = !DILocation(line: 63, column: 5, scope: !3033, inlinedAt: !3022)
!3037 = !DILocation(line: 122, column: 3, scope: !3000)
!3038 = !DILocation(line: 51, column: 17, scope: !3016)
!3039 = !DILocation(line: 51, column: 27, scope: !3016)
!3040 = !DILocation(line: 53, column: 8, scope: !3025)
!3041 = !DILocation(line: 53, column: 13, scope: !3025)
!3042 = !DILocation(line: 53, column: 10, scope: !3025)
!3043 = !DILocation(line: 57, column: 7, scope: !3029)
!3044 = !DILocation(line: 58, column: 7, scope: !3029)
!3045 = !DILocation(line: 61, column: 7, scope: !3016)
!3046 = !DILocation(line: 62, column: 8, scope: !3033)
!3047 = !DILocation(line: 62, column: 13, scope: !3033)
!3048 = !DILocation(line: 62, column: 10, scope: !3033)
!3049 = !DILocation(line: 63, column: 5, scope: !3033)
!3050 = !DILocation(line: 65, column: 1, scope: !3016)
!3051 = !DILocation(line: 180, column: 19, scope: !575)
!3052 = !DILocation(line: 180, column: 30, scope: !575)
!3053 = !DILocation(line: 180, column: 41, scope: !575)
!3054 = !DILocation(line: 182, column: 14, scope: !575)
!3055 = !DILocation(line: 182, column: 10, scope: !575)
!3056 = !DILocation(line: 184, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !575, file: !574, line: 184, column: 7)
!3058 = !DILocation(line: 184, column: 7, scope: !575)
!3059 = !DILocation(line: 186, column: 13, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !574, line: 186, column: 11)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !574, line: 185, column: 5)
!3062 = !DILocation(line: 186, column: 11, scope: !3061)
!3063 = !DILocation(line: 194, column: 30, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !574, line: 187, column: 9)
!3065 = !DILocation(line: 195, column: 16, scope: !3064)
!3066 = !DILocation(line: 195, column: 13, scope: !3064)
!3067 = !DILocation(line: 196, column: 9, scope: !3064)
!3068 = !DILocation(line: 204, column: 69, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !574, line: 204, column: 11)
!3070 = distinct !DILexicalBlock(scope: !3057, file: !574, line: 199, column: 5)
!3071 = !DILocation(line: 205, column: 11, scope: !3069)
!3072 = !DILocation(line: 204, column: 11, scope: !3070)
!3073 = !DILocation(line: 206, column: 9, scope: !3069)
!3074 = !DILocation(line: 210, column: 7, scope: !575)
!3075 = !DILocation(line: 211, column: 25, scope: !575)
!3076 = !DILocation(line: 51, column: 17, scope: !3016, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 211, column: 10, scope: !575)
!3078 = !DILocation(line: 51, column: 27, scope: !3016, inlinedAt: !3077)
!3079 = !DILocation(line: 53, column: 10, scope: !3025, inlinedAt: !3077)
!3080 = !DILocation(line: 207, column: 14, scope: !3070)
!3081 = !DILocation(line: 207, column: 18, scope: !3070)
!3082 = !DILocation(line: 207, column: 9, scope: !3070)
!3083 = !DILocation(line: 53, column: 8, scope: !3025, inlinedAt: !3077)
!3084 = !DILocation(line: 57, column: 7, scope: !3029, inlinedAt: !3077)
!3085 = !DILocation(line: 58, column: 7, scope: !3029, inlinedAt: !3077)
!3086 = !DILocation(line: 61, column: 7, scope: !3016, inlinedAt: !3077)
!3087 = !DILocation(line: 62, column: 8, scope: !3033, inlinedAt: !3077)
!3088 = !DILocation(line: 62, column: 13, scope: !3033, inlinedAt: !3077)
!3089 = !DILocation(line: 62, column: 10, scope: !3033, inlinedAt: !3077)
!3090 = !DILocation(line: 63, column: 5, scope: !3033, inlinedAt: !3077)
!3091 = !DILocation(line: 211, column: 3, scope: !575)
!3092 = distinct !DISubprogram(name: "xcharalloc", scope: !574, file: !574, line: 220, type: !2047, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3093)
!3093 = !{!3094}
!3094 = !DILocalVariable(name: "n", arg: 1, scope: !3092, file: !574, line: 220, type: !139)
!3095 = !DILocation(line: 220, column: 20, scope: !3092)
!3096 = !DILocation(line: 39, column: 17, scope: !2976, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 222, column: 10, scope: !3092)
!3098 = !DILocation(line: 41, column: 13, scope: !2976, inlinedAt: !3097)
!3099 = !DILocation(line: 41, column: 9, scope: !2976, inlinedAt: !3097)
!3100 = !DILocation(line: 42, column: 8, scope: !2987, inlinedAt: !3097)
!3101 = !DILocation(line: 42, column: 15, scope: !2987, inlinedAt: !3097)
!3102 = !DILocation(line: 42, column: 10, scope: !2987, inlinedAt: !3097)
!3103 = !DILocation(line: 43, column: 5, scope: !2987, inlinedAt: !3097)
!3104 = !DILocation(line: 222, column: 3, scope: !3092)
!3105 = distinct !DISubprogram(name: "x2realloc", scope: !2977, file: !2977, line: 74, type: !3106, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!46, !46, !578}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "p", arg: 1, scope: !3105, file: !2977, line: 74, type: !46)
!3110 = !DILocalVariable(name: "pn", arg: 2, scope: !3105, file: !2977, line: 74, type: !578)
!3111 = !DILocation(line: 74, column: 18, scope: !3105)
!3112 = !DILocation(line: 74, column: 29, scope: !3105)
!3113 = !DILocation(line: 180, column: 19, scope: !575, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 76, column: 10, scope: !3105)
!3115 = !DILocation(line: 180, column: 30, scope: !575, inlinedAt: !3114)
!3116 = !DILocation(line: 180, column: 41, scope: !575, inlinedAt: !3114)
!3117 = !DILocation(line: 182, column: 14, scope: !575, inlinedAt: !3114)
!3118 = !DILocation(line: 182, column: 10, scope: !575, inlinedAt: !3114)
!3119 = !DILocation(line: 184, column: 9, scope: !3057, inlinedAt: !3114)
!3120 = !DILocation(line: 184, column: 7, scope: !575, inlinedAt: !3114)
!3121 = !DILocation(line: 186, column: 13, scope: !3060, inlinedAt: !3114)
!3122 = !DILocation(line: 186, column: 11, scope: !3061, inlinedAt: !3114)
!3123 = !DILocation(line: 210, column: 7, scope: !575, inlinedAt: !3114)
!3124 = !DILocation(line: 51, column: 17, scope: !3016, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 211, column: 10, scope: !575, inlinedAt: !3114)
!3126 = !DILocation(line: 51, column: 27, scope: !3016, inlinedAt: !3125)
!3127 = !DILocation(line: 53, column: 10, scope: !3025, inlinedAt: !3125)
!3128 = !DILocation(line: 205, column: 11, scope: !3069, inlinedAt: !3114)
!3129 = !DILocation(line: 204, column: 11, scope: !3070, inlinedAt: !3114)
!3130 = !DILocation(line: 206, column: 9, scope: !3069, inlinedAt: !3114)
!3131 = !DILocation(line: 207, column: 14, scope: !3070, inlinedAt: !3114)
!3132 = !DILocation(line: 207, column: 18, scope: !3070, inlinedAt: !3114)
!3133 = !DILocation(line: 207, column: 9, scope: !3070, inlinedAt: !3114)
!3134 = !DILocation(line: 53, column: 8, scope: !3025, inlinedAt: !3125)
!3135 = !DILocation(line: 57, column: 7, scope: !3029, inlinedAt: !3125)
!3136 = !DILocation(line: 58, column: 7, scope: !3029, inlinedAt: !3125)
!3137 = !DILocation(line: 61, column: 7, scope: !3016, inlinedAt: !3125)
!3138 = !DILocation(line: 62, column: 8, scope: !3033, inlinedAt: !3125)
!3139 = !DILocation(line: 62, column: 13, scope: !3033, inlinedAt: !3125)
!3140 = !DILocation(line: 62, column: 10, scope: !3033, inlinedAt: !3125)
!3141 = !DILocation(line: 63, column: 5, scope: !3033, inlinedAt: !3125)
!3142 = !DILocation(line: 76, column: 3, scope: !3105)
!3143 = distinct !DISubprogram(name: "xzalloc", scope: !2977, file: !2977, line: 84, type: !2978, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "s", arg: 1, scope: !3143, file: !2977, line: 84, type: !139)
!3146 = !DILocation(line: 84, column: 17, scope: !3143)
!3147 = !DILocation(line: 39, column: 17, scope: !2976, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 86, column: 18, scope: !3143)
!3149 = !DILocation(line: 41, column: 13, scope: !2976, inlinedAt: !3148)
!3150 = !DILocation(line: 41, column: 9, scope: !2976, inlinedAt: !3148)
!3151 = !DILocation(line: 42, column: 8, scope: !2987, inlinedAt: !3148)
!3152 = !DILocation(line: 42, column: 15, scope: !2987, inlinedAt: !3148)
!3153 = !DILocation(line: 42, column: 10, scope: !2987, inlinedAt: !3148)
!3154 = !DILocation(line: 43, column: 5, scope: !2987, inlinedAt: !3148)
!3155 = !DILocation(line: 86, column: 10, scope: !3143)
!3156 = !DILocation(line: 86, column: 3, scope: !3143)
!3157 = distinct !DISubprogram(name: "xcalloc", scope: !2977, file: !2977, line: 93, type: !2963, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3158)
!3158 = !{!3159, !3160, !3161}
!3159 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !2977, line: 93, type: !139)
!3160 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !2977, line: 93, type: !139)
!3161 = !DILocalVariable(name: "p", scope: !3157, file: !2977, line: 95, type: !46)
!3162 = !DILocation(line: 93, column: 17, scope: !3157)
!3163 = !DILocation(line: 93, column: 27, scope: !3157)
!3164 = !DILocation(line: 100, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3157, file: !2977, line: 100, column: 7)
!3166 = !DILocation(line: 101, column: 7, scope: !3165)
!3167 = !DILocation(line: 101, column: 18, scope: !3165)
!3168 = !DILocation(line: 95, column: 9, scope: !3157)
!3169 = !DILocation(line: 101, column: 16, scope: !3165)
!3170 = !DILocation(line: 100, column: 7, scope: !3157)
!3171 = !DILocation(line: 102, column: 5, scope: !3165)
!3172 = !DILocation(line: 103, column: 3, scope: !3157)
!3173 = distinct !DISubprogram(name: "xmemdup", scope: !2977, file: !2977, line: 111, type: !3174, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3178)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!46, !3176, !139}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "p", arg: 1, scope: !3173, file: !2977, line: 111, type: !3176)
!3180 = !DILocalVariable(name: "s", arg: 2, scope: !3173, file: !2977, line: 111, type: !139)
!3181 = !DILocation(line: 111, column: 22, scope: !3173)
!3182 = !DILocation(line: 111, column: 32, scope: !3173)
!3183 = !DILocation(line: 39, column: 17, scope: !2976, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 113, column: 18, scope: !3173)
!3185 = !DILocation(line: 41, column: 13, scope: !2976, inlinedAt: !3184)
!3186 = !DILocation(line: 41, column: 9, scope: !2976, inlinedAt: !3184)
!3187 = !DILocation(line: 42, column: 8, scope: !2987, inlinedAt: !3184)
!3188 = !DILocation(line: 42, column: 15, scope: !2987, inlinedAt: !3184)
!3189 = !DILocation(line: 42, column: 10, scope: !2987, inlinedAt: !3184)
!3190 = !DILocation(line: 43, column: 5, scope: !2987, inlinedAt: !3184)
!3191 = !DILocation(line: 113, column: 10, scope: !3173)
!3192 = !DILocation(line: 113, column: 3, scope: !3173)
!3193 = distinct !DISubprogram(name: "xstrdup", scope: !2977, file: !2977, line: 119, type: !2249, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3194)
!3194 = !{!3195}
!3195 = !DILocalVariable(name: "string", arg: 1, scope: !3193, file: !2977, line: 119, type: !54)
!3196 = !DILocation(line: 119, column: 22, scope: !3193)
!3197 = !DILocation(line: 121, column: 27, scope: !3193)
!3198 = !DILocation(line: 121, column: 43, scope: !3193)
!3199 = !DILocation(line: 111, column: 22, scope: !3173, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 121, column: 10, scope: !3193)
!3201 = !DILocation(line: 111, column: 32, scope: !3173, inlinedAt: !3200)
!3202 = !DILocation(line: 39, column: 17, scope: !2976, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 113, column: 18, scope: !3173, inlinedAt: !3200)
!3204 = !DILocation(line: 41, column: 13, scope: !2976, inlinedAt: !3203)
!3205 = !DILocation(line: 41, column: 9, scope: !2976, inlinedAt: !3203)
!3206 = !DILocation(line: 42, column: 8, scope: !2987, inlinedAt: !3203)
!3207 = !DILocation(line: 42, column: 15, scope: !2987, inlinedAt: !3203)
!3208 = !DILocation(line: 42, column: 10, scope: !2987, inlinedAt: !3203)
!3209 = !DILocation(line: 43, column: 5, scope: !2987, inlinedAt: !3203)
!3210 = !DILocation(line: 113, column: 10, scope: !3173, inlinedAt: !3200)
!3211 = !DILocation(line: 121, column: 3, scope: !3193)
!3212 = distinct !DISubprogram(name: "xalloc_die", scope: !3213, file: !3213, line: 32, type: !1040, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !587, variables: !87)
!3213 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3214 = !DILocation(line: 34, column: 10, scope: !3212)
!3215 = !DILocation(line: 34, column: 33, scope: !3212)
!3216 = !DILocation(line: 34, column: 3, scope: !3212)
!3217 = !DILocation(line: 40, column: 3, scope: !3212)
!3218 = distinct !DISubprogram(name: "rpl_calloc", scope: !3219, file: !3219, line: 42, type: !2963, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3220)
!3219 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3220 = !{!3221, !3222, !3223, !3224}
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3218, file: !3219, line: 42, type: !139)
!3222 = !DILocalVariable(name: "s", arg: 2, scope: !3218, file: !3219, line: 42, type: !139)
!3223 = !DILocalVariable(name: "result", scope: !3218, file: !3219, line: 44, type: !46)
!3224 = !DILocalVariable(name: "bytes", scope: !3225, file: !3219, line: 56, type: !139)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3219, line: 53, column: 5)
!3226 = distinct !DILexicalBlock(scope: !3218, file: !3219, line: 47, column: 7)
!3227 = !DILocation(line: 42, column: 20, scope: !3218)
!3228 = !DILocation(line: 42, column: 30, scope: !3218)
!3229 = !DILocation(line: 47, column: 9, scope: !3226)
!3230 = !DILocation(line: 47, column: 19, scope: !3226)
!3231 = !DILocation(line: 47, column: 14, scope: !3226)
!3232 = !DILocation(line: 56, column: 24, scope: !3225)
!3233 = !DILocation(line: 56, column: 14, scope: !3225)
!3234 = !DILocation(line: 57, column: 17, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3225, file: !3219, line: 57, column: 11)
!3236 = !DILocation(line: 57, column: 21, scope: !3235)
!3237 = !DILocation(line: 57, column: 11, scope: !3225)
!3238 = !DILocation(line: 59, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !3219, line: 58, column: 9)
!3240 = !DILocation(line: 59, column: 17, scope: !3239)
!3241 = !DILocation(line: 65, column: 12, scope: !3218)
!3242 = !DILocation(line: 44, column: 9, scope: !3218)
!3243 = !DILocation(line: 72, column: 3, scope: !3218)
!3244 = !DILocation(line: 73, column: 1, scope: !3218)
!3245 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !200, file: !200, line: 27, type: !3246, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !3249)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!139, !54, !139, !3248}
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!3249 = !{!3250, !3251, !3252}
!3250 = !DILocalVariable(name: "s", arg: 1, scope: !3245, file: !200, line: 27, type: !54)
!3251 = !DILocalVariable(name: "n", arg: 2, scope: !3245, file: !200, line: 27, type: !139)
!3252 = !DILocalVariable(name: "ps", arg: 3, scope: !3245, file: !200, line: 27, type: !3248)
!3253 = !DILocation(line: 27, column: 21, scope: !3245)
!3254 = !DILocation(line: 27, column: 31, scope: !3245)
!3255 = !DILocation(line: 27, column: 45, scope: !3245)
!3256 = !DILocation(line: 29, column: 10, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3245, file: !200, line: 29, column: 7)
!3258 = !DILocation(line: 29, column: 7, scope: !3245)
!3259 = !DILocation(line: 31, column: 10, scope: !3245)
!3260 = !DILocation(line: 31, column: 3, scope: !3245)
!3261 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3262, file: !3262, line: 334, type: !3263, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3277)
!3262 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!139, !3265, !54, !139, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !202, line: 6, baseType: !3268)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !204, line: 21, baseType: !3269)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 13, size: 64, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3269, file: !204, line: 15, baseType: !77, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3269, file: !204, line: 20, baseType: !3273, size: 32, offset: 32)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !204, line: 16, size: 32, elements: !3274)
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3273, file: !204, line: 18, baseType: !158, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3273, file: !204, line: 19, baseType: !213, size: 32)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284}
!3278 = !DILocalVariable(name: "pwc", arg: 1, scope: !3261, file: !3262, line: 334, type: !3265)
!3279 = !DILocalVariable(name: "s", arg: 2, scope: !3261, file: !3262, line: 334, type: !54)
!3280 = !DILocalVariable(name: "n", arg: 3, scope: !3261, file: !3262, line: 334, type: !139)
!3281 = !DILocalVariable(name: "ps", arg: 4, scope: !3261, file: !3262, line: 334, type: !3266)
!3282 = !DILocalVariable(name: "ret", scope: !3261, file: !3262, line: 336, type: !139)
!3283 = !DILocalVariable(name: "wc", scope: !3261, file: !3262, line: 337, type: !1314)
!3284 = !DILocalVariable(name: "uc", scope: !3285, file: !3262, line: 398, type: !559)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3262, line: 397, column: 5)
!3286 = distinct !DILexicalBlock(scope: !3261, file: !3262, line: 396, column: 7)
!3287 = !DILocation(line: 334, column: 23, scope: !3261)
!3288 = !DILocation(line: 334, column: 40, scope: !3261)
!3289 = !DILocation(line: 334, column: 50, scope: !3261)
!3290 = !DILocation(line: 334, column: 64, scope: !3261)
!3291 = !DILocation(line: 337, column: 3, scope: !3261)
!3292 = !DILocation(line: 353, column: 9, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3261, file: !3262, line: 353, column: 7)
!3294 = !DILocation(line: 353, column: 7, scope: !3261)
!3295 = !DILocation(line: 388, column: 9, scope: !3261)
!3296 = !DILocation(line: 336, column: 10, scope: !3261)
!3297 = !DILocation(line: 396, column: 19, scope: !3286)
!3298 = !DILocation(line: 396, column: 31, scope: !3286)
!3299 = !DILocation(line: 396, column: 26, scope: !3286)
!3300 = !DILocation(line: 396, column: 41, scope: !3286)
!3301 = !DILocation(line: 396, column: 7, scope: !3261)
!3302 = !DILocation(line: 398, column: 26, scope: !3285)
!3303 = !DILocation(line: 398, column: 21, scope: !3285)
!3304 = !DILocation(line: 399, column: 14, scope: !3285)
!3305 = !DILocation(line: 399, column: 12, scope: !3285)
!3306 = !DILocation(line: 405, column: 1, scope: !3261)
!3307 = distinct !DISubprogram(name: "close_stream", scope: !3308, file: !3308, line: 56, type: !3309, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3351)
!3308 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!77, !3311}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2775, line: 7, baseType: !3313)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2777, line: 241, size: 1728, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3313, file: !2777, line: 242, baseType: !77, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3313, file: !2777, line: 247, baseType: !44, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3313, file: !2777, line: 248, baseType: !44, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3313, file: !2777, line: 249, baseType: !44, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3313, file: !2777, line: 250, baseType: !44, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3313, file: !2777, line: 251, baseType: !44, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3313, file: !2777, line: 252, baseType: !44, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3313, file: !2777, line: 253, baseType: !44, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3313, file: !2777, line: 254, baseType: !44, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3313, file: !2777, line: 256, baseType: !44, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3313, file: !2777, line: 257, baseType: !44, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3313, file: !2777, line: 258, baseType: !44, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3313, file: !2777, line: 260, baseType: !3328, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2777, line: 156, size: 192, elements: !3330)
!3330 = !{!3331, !3332, !3334}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3329, file: !2777, line: 157, baseType: !3328, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3329, file: !2777, line: 158, baseType: !3333, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3329, file: !2777, line: 162, baseType: !77, size: 32, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3313, file: !2777, line: 262, baseType: !3333, size: 64, offset: 832)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3313, file: !2777, line: 264, baseType: !77, size: 32, offset: 896)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3313, file: !2777, line: 268, baseType: !77, size: 32, offset: 928)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3313, file: !2777, line: 270, baseType: !729, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3313, file: !2777, line: 274, baseType: !138, size: 16, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3313, file: !2777, line: 275, baseType: !2805, size: 8, offset: 1040)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3313, file: !2777, line: 276, baseType: !2807, size: 8, offset: 1048)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3313, file: !2777, line: 280, baseType: !2811, size: 64, offset: 1088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3313, file: !2777, line: 289, baseType: !2814, size: 64, offset: 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3313, file: !2777, line: 297, baseType: !46, size: 64, offset: 1216)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3313, file: !2777, line: 298, baseType: !46, size: 64, offset: 1280)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3313, file: !2777, line: 299, baseType: !46, size: 64, offset: 1344)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3313, file: !2777, line: 300, baseType: !46, size: 64, offset: 1408)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3313, file: !2777, line: 302, baseType: !139, size: 64, offset: 1472)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3313, file: !2777, line: 303, baseType: !77, size: 32, offset: 1536)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3313, file: !2777, line: 305, baseType: !2822, size: 160, offset: 1568)
!3351 = !{!3352, !3353, !3355, !3356}
!3352 = !DILocalVariable(name: "stream", arg: 1, scope: !3307, file: !3308, line: 56, type: !3311)
!3353 = !DILocalVariable(name: "some_pending", scope: !3307, file: !3308, line: 58, type: !3354)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3355 = !DILocalVariable(name: "prev_fail", scope: !3307, file: !3308, line: 59, type: !3354)
!3356 = !DILocalVariable(name: "fclose_fail", scope: !3307, file: !3308, line: 60, type: !3354)
!3357 = !DILocation(line: 56, column: 21, scope: !3307)
!3358 = !DILocation(line: 58, column: 30, scope: !3307)
!3359 = !DILocalVariable(name: "__stream", arg: 1, scope: !3360, file: !3361, line: 132, type: !3311)
!3360 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3361, file: !3361, line: 132, type: !3309, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3362)
!3361 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3362 = !{!3359}
!3363 = !DILocation(line: 132, column: 1, scope: !3360, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 59, column: 27, scope: !3307)
!3365 = !DILocation(line: 134, column: 10, scope: !3360, inlinedAt: !3364)
!3366 = !{!3367, !684, i64 0}
!3367 = !{!"_IO_FILE", !684, i64 0, !623, i64 8, !623, i64 16, !623, i64 24, !623, i64 32, !623, i64 40, !623, i64 48, !623, i64 56, !623, i64 64, !623, i64 72, !623, i64 80, !623, i64 88, !623, i64 96, !623, i64 104, !684, i64 112, !684, i64 116, !2092, i64 120, !1548, i64 128, !624, i64 130, !624, i64 131, !623, i64 136, !2092, i64 144, !623, i64 152, !623, i64 160, !623, i64 168, !623, i64 176, !2092, i64 184, !684, i64 192, !624, i64 196}
!3368 = !DILocation(line: 59, column: 43, scope: !3307)
!3369 = !DILocation(line: 60, column: 29, scope: !3307)
!3370 = !DILocation(line: 60, column: 45, scope: !3307)
!3371 = !DILocation(line: 70, column: 17, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3307, file: !3308, line: 70, column: 7)
!3373 = !DILocation(line: 58, column: 50, scope: !3307)
!3374 = !DILocation(line: 70, column: 33, scope: !3372)
!3375 = !DILocation(line: 70, column: 53, scope: !3372)
!3376 = !DILocation(line: 70, column: 59, scope: !3372)
!3377 = !DILocation(line: 70, column: 7, scope: !3307)
!3378 = !DILocation(line: 72, column: 11, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3372, file: !3308, line: 71, column: 5)
!3380 = !DILocation(line: 73, column: 9, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3379, file: !3308, line: 72, column: 11)
!3382 = !DILocation(line: 73, column: 15, scope: !3381)
!3383 = !DILocation(line: 78, column: 1, scope: !3307)
!3384 = distinct !DISubprogram(name: "hard_locale", scope: !3385, file: !3385, line: 38, type: !3386, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3388)
!3385 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!97, !77}
!3388 = !{!3389, !3390, !3391}
!3389 = !DILocalVariable(name: "category", arg: 1, scope: !3384, file: !3385, line: 38, type: !77)
!3390 = !DILocalVariable(name: "hard", scope: !3384, file: !3385, line: 40, type: !97)
!3391 = !DILocalVariable(name: "p", scope: !3384, file: !3385, line: 41, type: !54)
!3392 = !DILocation(line: 38, column: 18, scope: !3384)
!3393 = !DILocation(line: 40, column: 8, scope: !3384)
!3394 = !DILocation(line: 41, column: 19, scope: !3384)
!3395 = !DILocation(line: 41, column: 15, scope: !3384)
!3396 = !DILocation(line: 43, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 43, column: 7)
!3398 = !DILocation(line: 43, column: 7, scope: !3384)
!3399 = !DILocation(line: 47, column: 15, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3385, line: 47, column: 15)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3385, line: 46, column: 9)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3385, line: 45, column: 11)
!3403 = distinct !DILexicalBlock(scope: !3397, file: !3385, line: 44, column: 5)
!3404 = !DILocation(line: 47, column: 31, scope: !3400)
!3405 = !DILocation(line: 47, column: 36, scope: !3400)
!3406 = !DILocation(line: 47, column: 39, scope: !3400)
!3407 = !DILocation(line: 47, column: 59, scope: !3400)
!3408 = !DILocation(line: 47, column: 15, scope: !3401)
!3409 = !DILocation(line: 48, column: 13, scope: !3400)
!3410 = !DILocation(line: 71, column: 3, scope: !3384)
!3411 = distinct !DISubprogram(name: "locale_charset", scope: !561, file: !561, line: 393, type: !3412, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !216, variables: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!54}
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "codeset", scope: !3411, file: !561, line: 395, type: !54)
!3416 = !DILocalVariable(name: "aliases", scope: !3411, file: !561, line: 396, type: !54)
!3417 = !DILocalVariable(name: "buf1", scope: !3418, file: !561, line: 196, type: !3485)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !561, line: 194, column: 21)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !561, line: 193, column: 19)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !561, line: 193, column: 19)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !561, line: 188, column: 17)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !561, line: 181, column: 19)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !561, line: 177, column: 13)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !561, line: 173, column: 15)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !561, line: 161, column: 9)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !561, line: 157, column: 11)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !561, line: 130, column: 5)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !561, line: 129, column: 7)
!3429 = distinct !DISubprogram(name: "get_charset_aliases", scope: !561, file: !561, line: 124, type: !3412, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !216, variables: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3437, !3438, !3439, !3440, !3481, !3482, !3483, !3417, !3484, !3488, !3489, !3490}
!3431 = !DILocalVariable(name: "cp", scope: !3429, file: !561, line: 126, type: !54)
!3432 = !DILocalVariable(name: "dir", scope: !3427, file: !561, line: 132, type: !54)
!3433 = !DILocalVariable(name: "base", scope: !3427, file: !561, line: 133, type: !54)
!3434 = !DILocalVariable(name: "file_name", scope: !3427, file: !561, line: 134, type: !44)
!3435 = !DILocalVariable(name: "dir_len", scope: !3436, file: !561, line: 144, type: !139)
!3436 = distinct !DILexicalBlock(scope: !3427, file: !561, line: 143, column: 7)
!3437 = !DILocalVariable(name: "base_len", scope: !3436, file: !561, line: 145, type: !139)
!3438 = !DILocalVariable(name: "add_slash", scope: !3436, file: !561, line: 146, type: !77)
!3439 = !DILocalVariable(name: "fd", scope: !3425, file: !561, line: 162, type: !77)
!3440 = !DILocalVariable(name: "fp", scope: !3423, file: !561, line: 178, type: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2775, line: 7, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2777, line: 241, size: 1728, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3443, file: !2777, line: 242, baseType: !77, size: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3443, file: !2777, line: 247, baseType: !44, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3443, file: !2777, line: 248, baseType: !44, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3443, file: !2777, line: 249, baseType: !44, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3443, file: !2777, line: 250, baseType: !44, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3443, file: !2777, line: 251, baseType: !44, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3443, file: !2777, line: 252, baseType: !44, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3443, file: !2777, line: 253, baseType: !44, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3443, file: !2777, line: 254, baseType: !44, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3443, file: !2777, line: 256, baseType: !44, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3443, file: !2777, line: 257, baseType: !44, size: 64, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3443, file: !2777, line: 258, baseType: !44, size: 64, offset: 704)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3443, file: !2777, line: 260, baseType: !3458, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2777, line: 156, size: 192, elements: !3460)
!3460 = !{!3461, !3462, !3464}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3459, file: !2777, line: 157, baseType: !3458, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3459, file: !2777, line: 158, baseType: !3463, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3459, file: !2777, line: 162, baseType: !77, size: 32, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3443, file: !2777, line: 262, baseType: !3463, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3443, file: !2777, line: 264, baseType: !77, size: 32, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3443, file: !2777, line: 268, baseType: !77, size: 32, offset: 928)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3443, file: !2777, line: 270, baseType: !729, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3443, file: !2777, line: 274, baseType: !138, size: 16, offset: 1024)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3443, file: !2777, line: 275, baseType: !2805, size: 8, offset: 1040)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3443, file: !2777, line: 276, baseType: !2807, size: 8, offset: 1048)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3443, file: !2777, line: 280, baseType: !2811, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3443, file: !2777, line: 289, baseType: !2814, size: 64, offset: 1152)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3443, file: !2777, line: 297, baseType: !46, size: 64, offset: 1216)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3443, file: !2777, line: 298, baseType: !46, size: 64, offset: 1280)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3443, file: !2777, line: 299, baseType: !46, size: 64, offset: 1344)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3443, file: !2777, line: 300, baseType: !46, size: 64, offset: 1408)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3443, file: !2777, line: 302, baseType: !139, size: 64, offset: 1472)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3443, file: !2777, line: 303, baseType: !77, size: 32, offset: 1536)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3443, file: !2777, line: 305, baseType: !2822, size: 160, offset: 1568)
!3481 = !DILocalVariable(name: "res_ptr", scope: !3421, file: !561, line: 190, type: !44)
!3482 = !DILocalVariable(name: "res_size", scope: !3421, file: !561, line: 191, type: !139)
!3483 = !DILocalVariable(name: "c", scope: !3418, file: !561, line: 195, type: !77)
!3484 = !DILocalVariable(name: "buf2", scope: !3418, file: !561, line: 197, type: !3485)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 408, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 51)
!3488 = !DILocalVariable(name: "l1", scope: !3418, file: !561, line: 198, type: !139)
!3489 = !DILocalVariable(name: "l2", scope: !3418, file: !561, line: 198, type: !139)
!3490 = !DILocalVariable(name: "old_res_ptr", scope: !3418, file: !561, line: 199, type: !44)
!3491 = !DILocation(line: 196, column: 28, scope: !3418, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 589, column: 18, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3411, file: !561, line: 589, column: 3)
!3494 = !DILocation(line: 197, column: 28, scope: !3418, inlinedAt: !3492)
!3495 = !DILocation(line: 403, column: 13, scope: !3411)
!3496 = !DILocation(line: 395, column: 15, scope: !3411)
!3497 = !DILocation(line: 584, column: 15, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3411, file: !561, line: 584, column: 7)
!3499 = !DILocation(line: 584, column: 7, scope: !3411)
!3500 = !DILocation(line: 128, column: 8, scope: !3429, inlinedAt: !3492)
!3501 = !DILocation(line: 126, column: 15, scope: !3429, inlinedAt: !3492)
!3502 = !DILocation(line: 129, column: 10, scope: !3428, inlinedAt: !3492)
!3503 = !DILocation(line: 129, column: 7, scope: !3429, inlinedAt: !3492)
!3504 = !DILocation(line: 138, column: 13, scope: !3427, inlinedAt: !3492)
!3505 = !DILocation(line: 132, column: 19, scope: !3427, inlinedAt: !3492)
!3506 = !DILocation(line: 139, column: 15, scope: !3507, inlinedAt: !3492)
!3507 = distinct !DILexicalBlock(scope: !3427, file: !561, line: 139, column: 11)
!3508 = !DILocation(line: 139, column: 23, scope: !3507, inlinedAt: !3492)
!3509 = !DILocation(line: 139, column: 26, scope: !3507, inlinedAt: !3492)
!3510 = !DILocation(line: 139, column: 33, scope: !3507, inlinedAt: !3492)
!3511 = !DILocation(line: 139, column: 11, scope: !3427, inlinedAt: !3492)
!3512 = !DILocation(line: 140, column: 9, scope: !3507, inlinedAt: !3492)
!3513 = !DILocation(line: 144, column: 26, scope: !3436, inlinedAt: !3492)
!3514 = !DILocation(line: 144, column: 16, scope: !3436, inlinedAt: !3492)
!3515 = !DILocation(line: 145, column: 16, scope: !3436, inlinedAt: !3492)
!3516 = !DILocation(line: 146, column: 34, scope: !3436, inlinedAt: !3492)
!3517 = !DILocation(line: 146, column: 38, scope: !3436, inlinedAt: !3492)
!3518 = !DILocation(line: 146, column: 42, scope: !3436, inlinedAt: !3492)
!3519 = !DILocation(line: 147, column: 48, scope: !3436, inlinedAt: !3492)
!3520 = !DILocation(line: 147, column: 46, scope: !3436, inlinedAt: !3492)
!3521 = !DILocation(line: 147, column: 69, scope: !3436, inlinedAt: !3492)
!3522 = !DILocation(line: 147, column: 30, scope: !3436, inlinedAt: !3492)
!3523 = !DILocation(line: 134, column: 13, scope: !3427, inlinedAt: !3492)
!3524 = !DILocation(line: 148, column: 13, scope: !3436, inlinedAt: !3492)
!3525 = !DILocation(line: 150, column: 13, scope: !3526, inlinedAt: !3492)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !561, line: 149, column: 11)
!3527 = distinct !DILexicalBlock(scope: !3436, file: !561, line: 148, column: 13)
!3528 = !DILocation(line: 151, column: 17, scope: !3526, inlinedAt: !3492)
!3529 = !DILocation(line: 152, column: 34, scope: !3530, inlinedAt: !3492)
!3530 = distinct !DILexicalBlock(scope: !3526, file: !561, line: 151, column: 17)
!3531 = !DILocation(line: 153, column: 41, scope: !3526, inlinedAt: !3492)
!3532 = !DILocation(line: 153, column: 13, scope: !3526, inlinedAt: !3492)
!3533 = !DILocation(line: 157, column: 11, scope: !3427, inlinedAt: !3492)
!3534 = !DILocation(line: 171, column: 16, scope: !3425, inlinedAt: !3492)
!3535 = !DILocation(line: 162, column: 15, scope: !3425, inlinedAt: !3492)
!3536 = !DILocation(line: 173, column: 18, scope: !3424, inlinedAt: !3492)
!3537 = !DILocation(line: 173, column: 15, scope: !3425, inlinedAt: !3492)
!3538 = !DILocation(line: 180, column: 20, scope: !3423, inlinedAt: !3492)
!3539 = !DILocation(line: 178, column: 21, scope: !3423, inlinedAt: !3492)
!3540 = !DILocation(line: 181, column: 22, scope: !3422, inlinedAt: !3492)
!3541 = !DILocation(line: 181, column: 19, scope: !3423, inlinedAt: !3492)
!3542 = !DILocation(line: 184, column: 19, scope: !3543, inlinedAt: !3492)
!3543 = distinct !DILexicalBlock(scope: !3422, file: !561, line: 182, column: 17)
!3544 = !DILocation(line: 186, column: 17, scope: !3543, inlinedAt: !3492)
!3545 = !DILocation(line: 190, column: 25, scope: !3421, inlinedAt: !3492)
!3546 = !DILocation(line: 191, column: 26, scope: !3421, inlinedAt: !3492)
!3547 = !DILocation(line: 193, column: 19, scope: !3421, inlinedAt: !3492)
!3548 = !DILocation(line: 196, column: 23, scope: !3418, inlinedAt: !3492)
!3549 = !DILocation(line: 197, column: 23, scope: !3418, inlinedAt: !3492)
!3550 = !DILocalVariable(name: "__fp", arg: 1, scope: !3551, file: !3361, line: 63, type: !3441)
!3551 = distinct !DISubprogram(name: "getc_unlocked", scope: !3361, file: !3361, line: 63, type: !3552, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !216, variables: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!77, !3441}
!3554 = !{!3550}
!3555 = !DILocation(line: 63, column: 22, scope: !3551, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 201, column: 27, scope: !3418, inlinedAt: !3492)
!3557 = !DILocation(line: 65, column: 10, scope: !3551, inlinedAt: !3556)
!3558 = !{!3367, !623, i64 8}
!3559 = !{!3367, !623, i64 16}
!3560 = !{!"branch_weights", i32 2000, i32 1}
!3561 = !DILocation(line: 195, column: 27, scope: !3418, inlinedAt: !3492)
!3562 = !DILocation(line: 202, column: 27, scope: !3418, inlinedAt: !3492)
!3563 = distinct !{!3563, !3564, !3567}
!3564 = !DILocation(line: 209, column: 27, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !561, line: 207, column: 25)
!3566 = distinct !DILexicalBlock(scope: !3418, file: !561, line: 206, column: 27)
!3567 = !DILocation(line: 211, column: 58, scope: !3565)
!3568 = !DILocation(line: 65, column: 10, scope: !3551, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 210, column: 33, scope: !3565, inlinedAt: !3492)
!3570 = !DILocation(line: 63, column: 22, scope: !3551, inlinedAt: !3569)
!3571 = !DILocation(line: 210, column: 29, scope: !3565, inlinedAt: !3492)
!3572 = distinct !{!3572, !3573, !3574}
!3573 = !DILocation(line: 193, column: 19, scope: !3420)
!3574 = !DILocation(line: 241, column: 21, scope: !3420)
!3575 = !DILocation(line: 216, column: 23, scope: !3418, inlinedAt: !3492)
!3576 = !DILocation(line: 217, column: 27, scope: !3577, inlinedAt: !3492)
!3577 = distinct !DILexicalBlock(scope: !3418, file: !561, line: 217, column: 27)
!3578 = !DILocation(line: 217, column: 64, scope: !3577, inlinedAt: !3492)
!3579 = !DILocation(line: 217, column: 27, scope: !3418, inlinedAt: !3492)
!3580 = !DILocation(line: 219, column: 28, scope: !3418, inlinedAt: !3492)
!3581 = !DILocation(line: 198, column: 30, scope: !3418, inlinedAt: !3492)
!3582 = !DILocation(line: 220, column: 28, scope: !3418, inlinedAt: !3492)
!3583 = !DILocation(line: 198, column: 34, scope: !3418, inlinedAt: !3492)
!3584 = !DILocation(line: 199, column: 29, scope: !3418, inlinedAt: !3492)
!3585 = !DILocation(line: 222, column: 36, scope: !3586, inlinedAt: !3492)
!3586 = distinct !DILexicalBlock(scope: !3418, file: !561, line: 222, column: 27)
!3587 = !DILocation(line: 222, column: 27, scope: !3418, inlinedAt: !3492)
!3588 = !DILocation(line: 225, column: 63, scope: !3589, inlinedAt: !3492)
!3589 = distinct !DILexicalBlock(scope: !3586, file: !561, line: 223, column: 25)
!3590 = !DILocation(line: 225, column: 46, scope: !3589, inlinedAt: !3492)
!3591 = !DILocation(line: 226, column: 25, scope: !3589, inlinedAt: !3492)
!3592 = !DILocation(line: 229, column: 36, scope: !3593, inlinedAt: !3492)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !561, line: 228, column: 25)
!3594 = !DILocation(line: 230, column: 73, scope: !3593, inlinedAt: !3492)
!3595 = !DILocation(line: 230, column: 46, scope: !3593, inlinedAt: !3492)
!3596 = !DILocation(line: 232, column: 35, scope: !3597, inlinedAt: !3492)
!3597 = distinct !DILexicalBlock(scope: !3418, file: !561, line: 232, column: 27)
!3598 = !DILocation(line: 232, column: 27, scope: !3418, inlinedAt: !3492)
!3599 = !DILocation(line: 236, column: 27, scope: !3600, inlinedAt: !3492)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !561, line: 233, column: 25)
!3601 = !DILocation(line: 237, column: 27, scope: !3600, inlinedAt: !3492)
!3602 = !DILocation(line: 241, column: 21, scope: !3419, inlinedAt: !3492)
!3603 = !DILocation(line: 239, column: 39, scope: !3418, inlinedAt: !3492)
!3604 = !DILocation(line: 239, column: 50, scope: !3418, inlinedAt: !3492)
!3605 = !DILocation(line: 239, column: 61, scope: !3418, inlinedAt: !3492)
!3606 = !DILocalVariable(name: "__dest", arg: 1, scope: !3607, file: !3608, line: 88, type: !3611)
!3607 = distinct !DISubprogram(name: "strcpy", scope: !3608, file: !3608, line: 88, type: !3609, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !216, variables: !3613)
!3608 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!44, !3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!3612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!3613 = !{!3606, !3614}
!3614 = !DILocalVariable(name: "__src", arg: 2, scope: !3607, file: !3608, line: 88, type: !3612)
!3615 = !DILocation(line: 88, column: 1, scope: !3607, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 239, column: 23, scope: !3418, inlinedAt: !3492)
!3617 = !DILocation(line: 90, column: 49, scope: !3607, inlinedAt: !3616)
!3618 = !DILocation(line: 90, column: 10, scope: !3607, inlinedAt: !3616)
!3619 = !DILocation(line: 88, column: 1, scope: !3607, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 240, column: 23, scope: !3418, inlinedAt: !3492)
!3621 = !DILocation(line: 90, column: 49, scope: !3607, inlinedAt: !3620)
!3622 = !DILocation(line: 90, column: 10, scope: !3607, inlinedAt: !3620)
!3623 = !DILocation(line: 193, column: 19, scope: !3419, inlinedAt: !3492)
!3624 = !DILocation(line: 242, column: 19, scope: !3421, inlinedAt: !3492)
!3625 = !DILocation(line: 243, column: 32, scope: !3626, inlinedAt: !3492)
!3626 = distinct !DILexicalBlock(scope: !3421, file: !561, line: 243, column: 23)
!3627 = !DILocation(line: 243, column: 23, scope: !3421, inlinedAt: !3492)
!3628 = !DILocation(line: 247, column: 33, scope: !3629, inlinedAt: !3492)
!3629 = distinct !DILexicalBlock(scope: !3626, file: !561, line: 246, column: 21)
!3630 = !DILocation(line: 247, column: 45, scope: !3629, inlinedAt: !3492)
!3631 = !DILocation(line: 253, column: 11, scope: !3425, inlinedAt: !3492)
!3632 = !DILocation(line: 377, column: 23, scope: !3427, inlinedAt: !3492)
!3633 = !DILocation(line: 378, column: 5, scope: !3427, inlinedAt: !3492)
!3634 = !DILocation(line: 396, column: 15, scope: !3411)
!3635 = !DILocation(line: 590, column: 8, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3493, file: !561, line: 589, column: 3)
!3637 = !DILocation(line: 590, column: 17, scope: !3636)
!3638 = !DILocation(line: 589, column: 3, scope: !3493)
!3639 = !DILocation(line: 592, column: 9, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !561, line: 592, column: 9)
!3641 = !DILocation(line: 592, column: 35, scope: !3640)
!3642 = !DILocation(line: 593, column: 9, scope: !3640)
!3643 = !DILocation(line: 593, column: 24, scope: !3640)
!3644 = !DILocation(line: 593, column: 31, scope: !3640)
!3645 = !DILocation(line: 593, column: 34, scope: !3640)
!3646 = !DILocation(line: 593, column: 45, scope: !3640)
!3647 = !DILocation(line: 592, column: 9, scope: !3636)
!3648 = !DILocation(line: 595, column: 29, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3640, file: !561, line: 594, column: 7)
!3650 = !DILocation(line: 595, column: 27, scope: !3649)
!3651 = !DILocation(line: 595, column: 46, scope: !3649)
!3652 = !DILocation(line: 596, column: 9, scope: !3649)
!3653 = !DILocation(line: 591, column: 19, scope: !3636)
!3654 = !DILocation(line: 591, column: 36, scope: !3636)
!3655 = !DILocation(line: 591, column: 16, scope: !3636)
!3656 = !DILocation(line: 591, column: 52, scope: !3636)
!3657 = !DILocation(line: 591, column: 69, scope: !3636)
!3658 = !DILocation(line: 591, column: 49, scope: !3636)
!3659 = distinct !{!3659, !3638, !3660}
!3660 = !DILocation(line: 597, column: 7, scope: !3493)
!3661 = !DILocation(line: 602, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3411, file: !561, line: 602, column: 7)
!3663 = !DILocation(line: 602, column: 18, scope: !3662)
!3664 = !DILocation(line: 602, column: 7, scope: !3411)
!3665 = !DILocation(line: 612, column: 3, scope: !3411)
!3666 = distinct !DISubprogram(name: "rpl_fclose", scope: !3667, file: !3667, line: 56, type: !3668, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !3710)
!3667 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!77, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2775, line: 7, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2777, line: 241, size: 1728, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3672, file: !2777, line: 242, baseType: !77, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3672, file: !2777, line: 247, baseType: !44, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3672, file: !2777, line: 248, baseType: !44, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3672, file: !2777, line: 249, baseType: !44, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3672, file: !2777, line: 250, baseType: !44, size: 64, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3672, file: !2777, line: 251, baseType: !44, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3672, file: !2777, line: 252, baseType: !44, size: 64, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3672, file: !2777, line: 253, baseType: !44, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3672, file: !2777, line: 254, baseType: !44, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3672, file: !2777, line: 256, baseType: !44, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3672, file: !2777, line: 257, baseType: !44, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3672, file: !2777, line: 258, baseType: !44, size: 64, offset: 704)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3672, file: !2777, line: 260, baseType: !3687, size: 64, offset: 768)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2777, line: 156, size: 192, elements: !3689)
!3689 = !{!3690, !3691, !3693}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3688, file: !2777, line: 157, baseType: !3687, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3688, file: !2777, line: 158, baseType: !3692, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3688, file: !2777, line: 162, baseType: !77, size: 32, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3672, file: !2777, line: 262, baseType: !3692, size: 64, offset: 832)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3672, file: !2777, line: 264, baseType: !77, size: 32, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3672, file: !2777, line: 268, baseType: !77, size: 32, offset: 928)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3672, file: !2777, line: 270, baseType: !729, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3672, file: !2777, line: 274, baseType: !138, size: 16, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3672, file: !2777, line: 275, baseType: !2805, size: 8, offset: 1040)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3672, file: !2777, line: 276, baseType: !2807, size: 8, offset: 1048)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3672, file: !2777, line: 280, baseType: !2811, size: 64, offset: 1088)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3672, file: !2777, line: 289, baseType: !2814, size: 64, offset: 1152)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3672, file: !2777, line: 297, baseType: !46, size: 64, offset: 1216)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3672, file: !2777, line: 298, baseType: !46, size: 64, offset: 1280)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3672, file: !2777, line: 299, baseType: !46, size: 64, offset: 1344)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3672, file: !2777, line: 300, baseType: !46, size: 64, offset: 1408)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3672, file: !2777, line: 302, baseType: !139, size: 64, offset: 1472)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3672, file: !2777, line: 303, baseType: !77, size: 32, offset: 1536)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3672, file: !2777, line: 305, baseType: !2822, size: 160, offset: 1568)
!3710 = !{!3711, !3712, !3713, !3714}
!3711 = !DILocalVariable(name: "fp", arg: 1, scope: !3666, file: !3667, line: 56, type: !3670)
!3712 = !DILocalVariable(name: "saved_errno", scope: !3666, file: !3667, line: 58, type: !77)
!3713 = !DILocalVariable(name: "fd", scope: !3666, file: !3667, line: 59, type: !77)
!3714 = !DILocalVariable(name: "result", scope: !3666, file: !3667, line: 60, type: !77)
!3715 = !DILocation(line: 56, column: 19, scope: !3666)
!3716 = !DILocation(line: 58, column: 7, scope: !3666)
!3717 = !DILocation(line: 60, column: 7, scope: !3666)
!3718 = !DILocation(line: 63, column: 8, scope: !3666)
!3719 = !DILocation(line: 59, column: 7, scope: !3666)
!3720 = !DILocation(line: 64, column: 10, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3666, file: !3667, line: 64, column: 7)
!3722 = !DILocation(line: 64, column: 7, scope: !3666)
!3723 = !DILocation(line: 65, column: 12, scope: !3721)
!3724 = !DILocation(line: 65, column: 5, scope: !3721)
!3725 = !DILocation(line: 70, column: 9, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3666, file: !3667, line: 70, column: 7)
!3727 = !DILocation(line: 70, column: 23, scope: !3726)
!3728 = !DILocation(line: 70, column: 33, scope: !3726)
!3729 = !DILocation(line: 70, column: 26, scope: !3726)
!3730 = !DILocation(line: 70, column: 59, scope: !3726)
!3731 = !DILocation(line: 71, column: 7, scope: !3726)
!3732 = !DILocation(line: 71, column: 10, scope: !3726)
!3733 = !DILocation(line: 70, column: 7, scope: !3666)
!3734 = !DILocation(line: 98, column: 12, scope: !3666)
!3735 = !DILocation(line: 103, column: 7, scope: !3666)
!3736 = !DILocation(line: 72, column: 19, scope: !3726)
!3737 = !DILocation(line: 103, column: 19, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3666, file: !3667, line: 103, column: 7)
!3739 = !DILocation(line: 105, column: 13, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !3667, line: 104, column: 5)
!3741 = !DILocation(line: 107, column: 5, scope: !3740)
!3742 = !DILocation(line: 110, column: 1, scope: !3666)
!3743 = distinct !DISubprogram(name: "rpl_fflush", scope: !3744, file: !3744, line: 127, type: !3745, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !3787)
!3744 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!77, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2775, line: 7, baseType: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2777, line: 241, size: 1728, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3749, file: !2777, line: 242, baseType: !77, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3749, file: !2777, line: 247, baseType: !44, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3749, file: !2777, line: 248, baseType: !44, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3749, file: !2777, line: 249, baseType: !44, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3749, file: !2777, line: 250, baseType: !44, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3749, file: !2777, line: 251, baseType: !44, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3749, file: !2777, line: 252, baseType: !44, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3749, file: !2777, line: 253, baseType: !44, size: 64, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3749, file: !2777, line: 254, baseType: !44, size: 64, offset: 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3749, file: !2777, line: 256, baseType: !44, size: 64, offset: 576)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3749, file: !2777, line: 257, baseType: !44, size: 64, offset: 640)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3749, file: !2777, line: 258, baseType: !44, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3749, file: !2777, line: 260, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2777, line: 156, size: 192, elements: !3766)
!3766 = !{!3767, !3768, !3770}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3765, file: !2777, line: 157, baseType: !3764, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3765, file: !2777, line: 158, baseType: !3769, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3765, file: !2777, line: 162, baseType: !77, size: 32, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3749, file: !2777, line: 262, baseType: !3769, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3749, file: !2777, line: 264, baseType: !77, size: 32, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3749, file: !2777, line: 268, baseType: !77, size: 32, offset: 928)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3749, file: !2777, line: 270, baseType: !729, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3749, file: !2777, line: 274, baseType: !138, size: 16, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3749, file: !2777, line: 275, baseType: !2805, size: 8, offset: 1040)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3749, file: !2777, line: 276, baseType: !2807, size: 8, offset: 1048)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3749, file: !2777, line: 280, baseType: !2811, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3749, file: !2777, line: 289, baseType: !2814, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3749, file: !2777, line: 297, baseType: !46, size: 64, offset: 1216)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3749, file: !2777, line: 298, baseType: !46, size: 64, offset: 1280)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3749, file: !2777, line: 299, baseType: !46, size: 64, offset: 1344)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3749, file: !2777, line: 300, baseType: !46, size: 64, offset: 1408)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3749, file: !2777, line: 302, baseType: !139, size: 64, offset: 1472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3749, file: !2777, line: 303, baseType: !77, size: 32, offset: 1536)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3749, file: !2777, line: 305, baseType: !2822, size: 160, offset: 1568)
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "stream", arg: 1, scope: !3743, file: !3744, line: 127, type: !3747)
!3789 = !DILocation(line: 127, column: 19, scope: !3743)
!3790 = !DILocation(line: 148, column: 14, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3743, file: !3744, line: 148, column: 7)
!3792 = !DILocation(line: 148, column: 22, scope: !3791)
!3793 = !DILocation(line: 148, column: 27, scope: !3791)
!3794 = !DILocation(line: 148, column: 7, scope: !3743)
!3795 = !DILocation(line: 149, column: 12, scope: !3791)
!3796 = !DILocation(line: 149, column: 5, scope: !3791)
!3797 = !DILocalVariable(name: "fp", arg: 1, scope: !3798, file: !3744, line: 40, type: !3747)
!3798 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3744, file: !3744, line: 40, type: !3799, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !3747}
!3801 = !{!3797}
!3802 = !DILocation(line: 40, column: 48, scope: !3798, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 153, column: 3, scope: !3743)
!3804 = !DILocation(line: 42, column: 11, scope: !3805, inlinedAt: !3803)
!3805 = distinct !DILexicalBlock(scope: !3798, file: !3744, line: 42, column: 7)
!3806 = !DILocation(line: 42, column: 18, scope: !3805, inlinedAt: !3803)
!3807 = !DILocation(line: 42, column: 7, scope: !3798, inlinedAt: !3803)
!3808 = !DILocation(line: 44, column: 5, scope: !3805, inlinedAt: !3803)
!3809 = !DILocation(line: 155, column: 10, scope: !3743)
!3810 = !DILocation(line: 155, column: 3, scope: !3743)
!3811 = !DILocation(line: 229, column: 1, scope: !3743)
!3812 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3813, file: !3813, line: 28, type: !3814, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !3857)
!3813 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!77, !3816, !3856, !77}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2775, line: 7, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2777, line: 241, size: 1728, elements: !3819)
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3818, file: !2777, line: 242, baseType: !77, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3818, file: !2777, line: 247, baseType: !44, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3818, file: !2777, line: 248, baseType: !44, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3818, file: !2777, line: 249, baseType: !44, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3818, file: !2777, line: 250, baseType: !44, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3818, file: !2777, line: 251, baseType: !44, size: 64, offset: 320)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3818, file: !2777, line: 252, baseType: !44, size: 64, offset: 384)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3818, file: !2777, line: 253, baseType: !44, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3818, file: !2777, line: 254, baseType: !44, size: 64, offset: 512)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3818, file: !2777, line: 256, baseType: !44, size: 64, offset: 576)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3818, file: !2777, line: 257, baseType: !44, size: 64, offset: 640)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3818, file: !2777, line: 258, baseType: !44, size: 64, offset: 704)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3818, file: !2777, line: 260, baseType: !3833, size: 64, offset: 768)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2777, line: 156, size: 192, elements: !3835)
!3835 = !{!3836, !3837, !3839}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3834, file: !2777, line: 157, baseType: !3833, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3834, file: !2777, line: 158, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3834, file: !2777, line: 162, baseType: !77, size: 32, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3818, file: !2777, line: 262, baseType: !3838, size: 64, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3818, file: !2777, line: 264, baseType: !77, size: 32, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3818, file: !2777, line: 268, baseType: !77, size: 32, offset: 928)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3818, file: !2777, line: 270, baseType: !729, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3818, file: !2777, line: 274, baseType: !138, size: 16, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3818, file: !2777, line: 275, baseType: !2805, size: 8, offset: 1040)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3818, file: !2777, line: 276, baseType: !2807, size: 8, offset: 1048)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3818, file: !2777, line: 280, baseType: !2811, size: 64, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3818, file: !2777, line: 289, baseType: !2814, size: 64, offset: 1152)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3818, file: !2777, line: 297, baseType: !46, size: 64, offset: 1216)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3818, file: !2777, line: 298, baseType: !46, size: 64, offset: 1280)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3818, file: !2777, line: 299, baseType: !46, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3818, file: !2777, line: 300, baseType: !46, size: 64, offset: 1408)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3818, file: !2777, line: 302, baseType: !139, size: 64, offset: 1472)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3818, file: !2777, line: 303, baseType: !77, size: 32, offset: 1536)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3818, file: !2777, line: 305, baseType: !2822, size: 160, offset: 1568)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2942, line: 57, baseType: !729)
!3857 = !{!3858, !3859, !3860, !3861}
!3858 = !DILocalVariable(name: "fp", arg: 1, scope: !3812, file: !3813, line: 28, type: !3816)
!3859 = !DILocalVariable(name: "offset", arg: 2, scope: !3812, file: !3813, line: 28, type: !3856)
!3860 = !DILocalVariable(name: "whence", arg: 3, scope: !3812, file: !3813, line: 28, type: !77)
!3861 = !DILocalVariable(name: "pos", scope: !3862, file: !3813, line: 116, type: !3856)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3813, line: 112, column: 5)
!3863 = distinct !DILexicalBlock(scope: !3812, file: !3813, line: 51, column: 7)
!3864 = !DILocation(line: 28, column: 15, scope: !3812)
!3865 = !DILocation(line: 28, column: 25, scope: !3812)
!3866 = !DILocation(line: 28, column: 37, scope: !3812)
!3867 = !DILocation(line: 51, column: 11, scope: !3863)
!3868 = !DILocation(line: 51, column: 31, scope: !3863)
!3869 = !DILocation(line: 51, column: 24, scope: !3863)
!3870 = !DILocation(line: 52, column: 7, scope: !3863)
!3871 = !DILocation(line: 52, column: 14, scope: !3863)
!3872 = !{!3367, !623, i64 40}
!3873 = !DILocation(line: 52, column: 35, scope: !3863)
!3874 = !{!3367, !623, i64 32}
!3875 = !DILocation(line: 52, column: 28, scope: !3863)
!3876 = !DILocation(line: 53, column: 7, scope: !3863)
!3877 = !DILocation(line: 53, column: 14, scope: !3863)
!3878 = !{!3367, !623, i64 72}
!3879 = !DILocation(line: 53, column: 28, scope: !3863)
!3880 = !DILocation(line: 51, column: 7, scope: !3812)
!3881 = !DILocation(line: 116, column: 26, scope: !3862)
!3882 = !DILocation(line: 116, column: 19, scope: !3862)
!3883 = !DILocation(line: 116, column: 13, scope: !3862)
!3884 = !DILocation(line: 117, column: 15, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3862, file: !3813, line: 117, column: 11)
!3886 = !DILocation(line: 117, column: 11, scope: !3862)
!3887 = !DILocation(line: 127, column: 11, scope: !3862)
!3888 = !DILocation(line: 127, column: 18, scope: !3862)
!3889 = !DILocation(line: 128, column: 11, scope: !3862)
!3890 = !DILocation(line: 128, column: 19, scope: !3862)
!3891 = !{!3367, !2092, i64 144}
!3892 = !DILocation(line: 159, column: 7, scope: !3862)
!3893 = !DILocation(line: 161, column: 10, scope: !3812)
!3894 = !DILocation(line: 161, column: 3, scope: !3812)
!3895 = !DILocation(line: 162, column: 1, scope: !3812)
