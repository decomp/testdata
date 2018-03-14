; ModuleID = 'coreutils-8.27/src/sync.bc'
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
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@long_options = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !65
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !71
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !76
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !80
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !87
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.52, i32 0, i32 0), i8* null], align 16, !dbg !94
@.str.43 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.44 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.45 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.46 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.47 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.48 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.49 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.50 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.51 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.52 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !125
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !132
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !145
@.str.11.53 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.54 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.55 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.56 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.57 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.58 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !152
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !159
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !147
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !161
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.69 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.79 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.80 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.81 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.82 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.83 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !167
@.str.1.94 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !176
@.str.106 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !213
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.113 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.115 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !610 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !614, metadata !615), !dbg !616
  %2 = icmp eq i32 %0, 0, !dbg !617
  br i1 %2, label %8, label %3, !dbg !619

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !620, !tbaa !622
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !620
  %6 = load i8*, i8** @program_name, align 8, !dbg !620, !tbaa !622
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !620
  br label %42, !dbg !620

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !626
  %10 = load i8*, i8** @program_name, align 8, !dbg !626, !tbaa !622
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !626
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !628
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !622
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !628
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !629
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !622
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !629
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !630
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !622
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !630
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !631
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !622
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !631
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !632
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !622
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !632
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !40, metadata !615) #9, !dbg !633
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !40, metadata !615) #9, !dbg !633
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !635
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !635
  %29 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !636
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !48, metadata !615) #9, !dbg !637
  %30 = icmp eq i8* %29, null, !dbg !638
  br i1 %30, label %37, label %31, !dbg !640

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !641
  %33 = icmp eq i32 %32, 0, !dbg !641
  br i1 %33, label %37, label %34, !dbg !642

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !643
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !643
  br label %37, !dbg !645

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !646
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !646
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #9, !dbg !647
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !647
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #15, !dbg !648
  unreachable, !dbg !648
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !649 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !654, metadata !615), !dbg !662
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !655, metadata !615), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !658, metadata !615), !dbg !664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !659, metadata !615), !dbg !665
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !661, metadata !615), !dbg !666
  %3 = load i8*, i8** %1, align 8, !dbg !667, !tbaa !622
  tail call void @set_program_name(i8* %3) #9, !dbg !668
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !669
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !670
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !671
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !672
  br label %9, !dbg !673

; <label>:8:                                      ; preds = %12
  br label %9, !dbg !674

; <label>:9:                                      ; preds = %8, %2
  %10 = phi i8 [ 0, %2 ], [ 1, %8 ]
  %11 = phi i8 [ 0, %2 ], [ %13, %8 ]
  br label %12, !dbg !674

; <label>:12:                                     ; preds = %9, %15
  %13 = phi i8 [ 1, %15 ], [ %11, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !659, metadata !615), !dbg !665
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !658, metadata !615), !dbg !664
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #9, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !656, metadata !615), !dbg !675
  switch i32 %14, label %20 [
    i32 -1, label %21
    i32 100, label %8
    i32 102, label %15
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !673, !llvm.loop !676

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !659, metadata !615), !dbg !665
  br label %12, !dbg !678, !llvm.loop !676

; <label>:16:                                     ; preds = %12
  tail call void @usage(i32 0) #16, !dbg !681
  unreachable, !dbg !681

; <label>:17:                                     ; preds = %12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !622
  %19 = load i8*, i8** @Version, align 8, !dbg !682, !tbaa !622
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* null) #9, !dbg !682
  tail call void @exit(i32 0) #15, !dbg !682
  unreachable, !dbg !682

; <label>:20:                                     ; preds = %12
  tail call void @usage(i32 1) #16, !dbg !683
  unreachable, !dbg !683

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* @optind, align 4, !dbg !684, !tbaa !685
  %23 = icmp slt i32 %22, %0, !dbg !687
  %24 = icmp eq i8 %13, 0, !dbg !688
  %25 = and i8 %10, %13, !dbg !690
  %26 = icmp eq i8 %25, 0, !dbg !690
  br i1 %26, label %29, label %27, !dbg !690

; <label>:27:                                     ; preds = %21
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 5) #9, !dbg !691
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %28) #9, !dbg !691
  unreachable, !dbg !691

; <label>:29:                                     ; preds = %21
  %30 = icmp eq i8 %10, 0, !dbg !693
  %31 = or i1 %30, %23, !dbg !694
  br i1 %31, label %34, label %32, !dbg !694

; <label>:32:                                     ; preds = %29
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !696
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %33) #9, !dbg !696
  unreachable, !dbg !696

; <label>:34:                                     ; preds = %29
  br i1 %23, label %36, label %35, !dbg !697

; <label>:35:                                     ; preds = %34
  tail call void @sync() #9, !dbg !699
  br label %105, !dbg !699

; <label>:36:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !661, metadata !615), !dbg !666
  %37 = trunc i8 %10 to i2
  %38 = select i1 %24, i2 %37, i2 -2
  br label %39, !dbg !701

; <label>:39:                                     ; preds = %36, %95
  %40 = phi i32 [ %22, %36 ], [ %100, %95 ]
  %41 = phi i8 [ 1, %36 ], [ %98, %95 ]
  tail call void @llvm.dbg.value(metadata i8 %41, i64 0, metadata !661, metadata !615), !dbg !666
  %42 = sext i32 %40 to i64, !dbg !704
  %43 = getelementptr inbounds i8*, i8** %1, i64 %42, !dbg !704
  %44 = load i8*, i8** %43, align 8, !dbg !704, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !706, metadata !615) #9, !dbg !722
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !712, metadata !615) #9, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 2048, i64 0, metadata !713, metadata !615) #9, !dbg !725
  %45 = tail call i32 (i8*, i32, ...) @open(i8* %44, i32 2048) #9, !dbg !726
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !714, metadata !615) #9, !dbg !727
  %46 = icmp slt i32 %45, 0, !dbg !728
  br i1 %46, label %47, label %55, !dbg !729

; <label>:47:                                     ; preds = %39
  %48 = tail call i32* @__errno_location() #17, !dbg !730
  %49 = load i32, i32* %48, align 4, !dbg !730, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !715, metadata !615) #9, !dbg !731
  %50 = tail call i32 (i8*, i32, ...) @open(i8* %44, i32 2049) #9, !dbg !732
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !714, metadata !615) #9, !dbg !727
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !714, metadata !615) #9, !dbg !727
  %51 = icmp slt i32 %50, 0, !dbg !734
  br i1 %51, label %52, label %95, !dbg !736

; <label>:52:                                     ; preds = %47
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 5) #9, !dbg !737
  %54 = tail call i8* @quotearg_style(i32 4, i8* %44) #9, !dbg !738
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* %53, i8* %54) #9, !dbg !739
  br label %95, !dbg !739

; <label>:55:                                     ; preds = %39
  %56 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %45, i32 3) #9, !dbg !740
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !718, metadata !615) #9, !dbg !741
  %57 = icmp eq i32 %56, -1, !dbg !742
  br i1 %57, label %62, label %58, !dbg !744

; <label>:58:                                     ; preds = %55
  %59 = and i32 %56, -2049, !dbg !745
  %60 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %45, i32 4, i32 %59) #9, !dbg !746
  %61 = icmp slt i32 %60, 0, !dbg !747
  br i1 %61, label %62, label %67, !dbg !748

; <label>:62:                                     ; preds = %58, %55
  %63 = tail call i32* @__errno_location() #17, !dbg !749
  %64 = load i32, i32* %63, align 4, !dbg !749, !tbaa !685
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), i32 5) #9, !dbg !751
  %66 = tail call i8* @quotearg_style(i32 4, i8* %44) #9, !dbg !752
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %64, i8* %65, i8* %66) #9, !dbg !753
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !712, metadata !615) #9, !dbg !724
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !712, metadata !615) #9, !dbg !724
  br label %82, !dbg !754

; <label>:67:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !712, metadata !615) #9, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !719, metadata !615) #9, !dbg !755
  switch i2 %38, label %77 [
    i2 1, label %68
    i2 0, label %70
    i2 -2, label %72
  ], !dbg !756

; <label>:68:                                     ; preds = %67
  %69 = tail call i32 @fdatasync(i32 %45) #9, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !719, metadata !615) #9, !dbg !755
  br label %74, !dbg !759

; <label>:70:                                     ; preds = %67
  %71 = tail call i32 @fsync(i32 %45) #9, !dbg !760
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !719, metadata !615) #9, !dbg !755
  br label %74, !dbg !761

; <label>:72:                                     ; preds = %67
  %73 = tail call i32 @syncfs(i32 %45) #9, !dbg !762
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !719, metadata !615) #9, !dbg !755
  br label %74, !dbg !763

; <label>:74:                                     ; preds = %72, %70, %68
  %75 = phi i32 [ %73, %72 ], [ %71, %70 ], [ %69, %68 ]
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !719, metadata !615) #9, !dbg !755
  %76 = icmp slt i32 %75, 0, !dbg !764
  br i1 %76, label %77, label %82, !dbg !766

; <label>:77:                                     ; preds = %74, %67
  %78 = tail call i32* @__errno_location() #17, !dbg !767
  %79 = load i32, i32* %78, align 4, !dbg !767, !tbaa !685
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 5) #9, !dbg !769
  %81 = tail call i8* @quotearg_style(i32 4, i8* %44) #9, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %79, i8* %80, i8* %81) #9, !dbg !771
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !712, metadata !615) #9, !dbg !724
  br label %82, !dbg !772

; <label>:82:                                     ; preds = %77, %74, %62
  %83 = phi i8 [ 0, %77 ], [ 1, %74 ], [ 0, %62 ]
  tail call void @llvm.dbg.value(metadata i8 %83, i64 0, metadata !712, metadata !615) #9, !dbg !724
  %84 = tail call i32 @close(i32 %45) #9, !dbg !773
  %85 = icmp slt i32 %84, 0, !dbg !775
  br i1 %85, label %86, label %91, !dbg !776

; <label>:86:                                     ; preds = %82
  %87 = tail call i32* @__errno_location() #17, !dbg !777
  %88 = load i32, i32* %87, align 4, !dbg !777, !tbaa !685
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 5) #9, !dbg !779
  %90 = tail call i8* @quotearg_style(i32 4, i8* %44) #9, !dbg !780
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %89, i8* %90) #9, !dbg !781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !712, metadata !615) #9, !dbg !724
  br label %91, !dbg !782

; <label>:91:                                     ; preds = %86, %82
  %92 = phi i8 [ 0, %86 ], [ %83, %82 ]
  tail call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !712, metadata !615) #9, !dbg !724
  %93 = and i8 %92, 1, !dbg !783
  %94 = icmp ne i8 %93, 0, !dbg !783
  br label %95

; <label>:95:                                     ; preds = %47, %52, %91
  %96 = phi i1 [ %94, %91 ], [ false, %52 ], [ false, %47 ]
  %97 = zext i1 %96 to i8, !dbg !784
  %98 = and i8 %41, %97, !dbg !785
  tail call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !661, metadata !615), !dbg !666
  %99 = load i32, i32* @optind, align 4, !dbg !786, !tbaa !685
  %100 = add nsw i32 %99, 1, !dbg !786
  store i32 %100, i32* @optind, align 4, !dbg !786, !tbaa !685
  tail call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !661, metadata !615), !dbg !666
  %101 = icmp slt i32 %100, %0, !dbg !787
  br i1 %101, label %39, label %102, !dbg !701, !llvm.loop !788

; <label>:102:                                    ; preds = %95
  %103 = xor i8 %98, 1, !dbg !790
  %104 = zext i8 %103 to i32, !dbg !790
  br label %105, !dbg !790

; <label>:105:                                    ; preds = %102, %35
  %106 = phi i32 [ 0, %35 ], [ %104, %102 ]
  ret i32 %106, !dbg !791
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
declare void @sync() local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare i32 @fdatasync(i32) local_unnamed_addr #3

declare i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @syncfs(i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !792 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !794, metadata !615), !dbg !795
  store i8* %0, i8** @file_name, align 8, !dbg !796, !tbaa !622
  ret void, !dbg !797
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !798 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !802, metadata !615), !dbg !803
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !804, !tbaa !805
  ret void, !dbg !807
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !808 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !622
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !816
  %3 = icmp eq i32 %2, 0, !dbg !817
  br i1 %3, label %21, label %4, !dbg !818

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !819, !tbaa !805, !range !820
  %6 = icmp eq i8 %5, 0, !dbg !819
  %7 = tail call i32* @__errno_location() #17, !dbg !821
  br i1 %6, label %11, label %8, !dbg !823

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !824, !tbaa !685
  %10 = icmp eq i32 %9, 32, !dbg !825
  br i1 %10, label %21, label %11, !dbg !826

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #9, !dbg !827
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !812, metadata !615), !dbg !828
  %13 = load i8*, i8** @file_name, align 8, !dbg !829, !tbaa !622
  %14 = icmp eq i8* %13, null, !dbg !829
  %15 = load i32, i32* %7, align 4, !tbaa !685
  br i1 %14, label %18, label %16, !dbg !830

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !831
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !832
  br label %19, !dbg !832

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #9, !dbg !833
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !834, !tbaa !685
  tail call void @_exit(i32 %20) #15, !dbg !835
  unreachable, !dbg !835

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !836, !tbaa !622
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !838
  %24 = icmp eq i32 %23, 0, !dbg !839
  br i1 %24, label %27, label %25, !dbg !840

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !841, !tbaa !685
  tail call void @_exit(i32 %26) #15, !dbg !842
  unreachable, !dbg !842

; <label>:27:                                     ; preds = %21
  ret void, !dbg !843
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !844 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !846, metadata !615), !dbg !849
  %2 = icmp eq i8* %0, null, !dbg !850
  br i1 %2, label %3, label %6, !dbg !852

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !853, !tbaa !622
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !855
  tail call void @abort() #15, !dbg !856
  unreachable, !dbg !856

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !857
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !847, metadata !615), !dbg !858
  %8 = icmp eq i8* %7, null, !dbg !859
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !860
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !861
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !848, metadata !615), !dbg !862
  %11 = ptrtoint i8* %10 to i64, !dbg !863
  %12 = ptrtoint i8* %0 to i64, !dbg !863
  %13 = sub i64 %11, %12, !dbg !863
  %14 = icmp sgt i64 %13, 6, !dbg !865
  br i1 %14, label %15, label %24, !dbg !866

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !867
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #14, !dbg !868
  %18 = icmp eq i32 %17, 0, !dbg !869
  br i1 %18, label %19, label %24, !dbg !870

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !846, metadata !615), !dbg !849
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #14, !dbg !871
  %21 = icmp eq i32 %20, 0, !dbg !874
  br i1 %21, label %22, label %24, !dbg !875

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !876
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !846, metadata !615), !dbg !849
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !878, !tbaa !622
  br label %24, !dbg !879

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !846, metadata !615), !dbg !849
  store i8* %25, i8** @program_name, align 8, !dbg !880, !tbaa !622
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !881, !tbaa !622
  ret void, !dbg !882
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !883 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !888, metadata !615), !dbg !891
  %2 = tail call i32* @__errno_location() #17, !dbg !892
  %3 = load i32, i32* %2, align 4, !dbg !892, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !889, metadata !615), !dbg !893
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !894
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !894
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !894
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !895
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !890, metadata !615), !dbg !896
  store i32 %3, i32* %2, align 4, !dbg !897, !tbaa !685
  ret %struct.quoting_options* %8, !dbg !898
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !899 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !905, metadata !615), !dbg !906
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !907
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !907
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !908
  %5 = load i32, i32* %4, align 8, !dbg !908, !tbaa !909
  ret i32 %5, !dbg !911
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !912 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !916, metadata !615), !dbg !918
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !917, metadata !615), !dbg !919
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !920
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !920
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !921
  store i32 %1, i32* %5, align 8, !dbg !922, !tbaa !909
  ret void, !dbg !923
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !924 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !928, metadata !615), !dbg !936
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !929, metadata !615), !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !930, metadata !615), !dbg !938
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !931, metadata !615), !dbg !939
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !940
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !940
  %6 = lshr i8 %1, 5, !dbg !941
  %7 = zext i8 %6 to i64, !dbg !941
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !942
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !932, metadata !615), !dbg !943
  %9 = and i8 %1, 31, !dbg !944
  %10 = zext i8 %9 to i32, !dbg !945
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !934, metadata !615), !dbg !946
  %11 = load i32, i32* %8, align 4, !dbg !947, !tbaa !685
  %12 = lshr i32 %11, %10, !dbg !948
  %13 = and i32 %12, 1, !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !935, metadata !615), !dbg !950
  %14 = and i32 %2, 1, !dbg !951
  %15 = xor i32 %13, %14, !dbg !952
  %16 = shl i32 %15, %10, !dbg !953
  %17 = xor i32 %16, %11, !dbg !954
  store i32 %17, i32* %8, align 4, !dbg !954, !tbaa !685
  ret i32 %13, !dbg !955
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !956 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !960, metadata !615), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !961, metadata !615), !dbg !964
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !960, metadata !615), !dbg !963
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !960, metadata !615), !dbg !963
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !968
  %6 = load i32, i32* %5, align 4, !dbg !968, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !962, metadata !615), !dbg !970
  store i32 %1, i32* %5, align 4, !dbg !971, !tbaa !969
  ret i32 %6, !dbg !972
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !973 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !977, metadata !615), !dbg !980
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !978, metadata !615), !dbg !981
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !979, metadata !615), !dbg !982
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !615), !dbg !980
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !615), !dbg !980
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !986
  store i32 10, i32* %6, align 8, !dbg !987, !tbaa !909
  %7 = icmp ne i8* %1, null, !dbg !988
  %8 = icmp ne i8* %2, null, !dbg !990
  %9 = and i1 %7, %8, !dbg !991
  br i1 %9, label %11, label %10, !dbg !991

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !992
  unreachable, !dbg !992

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !993
  store i8* %1, i8** %12, align 8, !dbg !994, !tbaa !995
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !996
  store i8* %2, i8** %13, align 8, !dbg !997, !tbaa !998
  ret void, !dbg !999
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1000 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1004, metadata !615), !dbg !1012
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1005, metadata !615), !dbg !1013
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1006, metadata !615), !dbg !1014
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1007, metadata !615), !dbg !1015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1008, metadata !615), !dbg !1016
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1017
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1017
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1009, metadata !615), !dbg !1018
  %8 = tail call i32* @__errno_location() #17, !dbg !1019
  %9 = load i32, i32* %8, align 4, !dbg !1019, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1010, metadata !615), !dbg !1020
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1021
  %11 = load i32, i32* %10, align 8, !dbg !1021, !tbaa !909
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1022
  %13 = load i32, i32* %12, align 4, !dbg !1022, !tbaa !969
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1023
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1024
  %16 = load i8*, i8** %15, align 8, !dbg !1024, !tbaa !995
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1025
  %18 = load i8*, i8** %17, align 8, !dbg !1025, !tbaa !998
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1026
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1011, metadata !615), !dbg !1027
  store i32 %9, i32* %8, align 4, !dbg !1028, !tbaa !685
  ret i64 %19, !dbg !1029
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1030 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1036, metadata !615), !dbg !1100
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1037, metadata !615), !dbg !1101
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1038, metadata !615), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1039, metadata !615), !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1040, metadata !615), !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1041, metadata !615), !dbg !1105
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1042, metadata !615), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1043, metadata !615), !dbg !1107
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1044, metadata !615), !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !615), !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1047, metadata !615), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1048, metadata !615), !dbg !1111
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1049, metadata !615), !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1050, metadata !615), !dbg !1113
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1114
  %14 = icmp eq i64 %13, 1, !dbg !1115
  %15 = lshr i32 %5, 1, !dbg !1116
  %16 = trunc i32 %15 to i8, !dbg !1116
  %17 = and i8 %16, 1, !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1052, metadata !615), !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1053, metadata !615), !dbg !1117
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1054, metadata !615), !dbg !1118
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !615), !dbg !1119
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1120

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1055, metadata !615), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1050, metadata !615), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1049, metadata !615), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1044, metadata !615), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1043, metadata !615), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1040, metadata !615), !dbg !1104
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
  ], !dbg !1121

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1040, metadata !615), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1040, metadata !615), !dbg !1104
  br label %94, !dbg !1122

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1040, metadata !615), !dbg !1104
  %43 = and i8 %36, 1, !dbg !1124
  %44 = icmp eq i8 %43, 0, !dbg !1124
  br i1 %44, label %45, label %94, !dbg !1122

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1126
  br i1 %46, label %94, label %47, !dbg !1129

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1126, !tbaa !1130
  br label %94, !dbg !1126

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.53, i64 0, i64 0), i32 %28), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1043, metadata !615), !dbg !1107
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), i32 %28), !dbg !1135
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1044, metadata !615), !dbg !1108
  br label %51, !dbg !1136

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1044, metadata !615), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1043, metadata !615), !dbg !1107
  %54 = and i8 %36, 1, !dbg !1137
  %55 = icmp eq i8 %54, 0, !dbg !1137
  br i1 %55, label %56, label %72, !dbg !1139

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !615), !dbg !1109
  %57 = load i8, i8* %52, align 1, !dbg !1140, !tbaa !1130
  %58 = icmp eq i8 %57, 0, !dbg !1143
  br i1 %58, label %72, label %59, !dbg !1143

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1144

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1048, metadata !615), !dbg !1111
  %64 = icmp ult i64 %63, %40, !dbg !1144
  br i1 %64, label %65, label %67, !dbg !1147

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1144
  store i8 %61, i8* %66, align 1, !dbg !1144, !tbaa !1130
  br label %67, !dbg !1144

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1046, metadata !615), !dbg !1109
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1046, metadata !615), !dbg !1109
  %70 = load i8, i8* %69, align 1, !dbg !1140, !tbaa !1130
  %71 = icmp eq i8 %70, 0, !dbg !1143
  br i1 %71, label %72, label %60, !dbg !1143, !llvm.loop !1149

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1050, metadata !615), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1048, metadata !615), !dbg !1111
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1049, metadata !615), !dbg !1112
  br label %94, !dbg !1152

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1050, metadata !615), !dbg !1113
  br label %76, !dbg !1153

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1050, metadata !615), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1052, metadata !615), !dbg !1116
  br label %78, !dbg !1154

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1050, metadata !615), !dbg !1113
  %81 = and i8 %80, 1, !dbg !1155
  %82 = icmp eq i8 %81, 0, !dbg !1155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1050, metadata !615), !dbg !1113
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1157
  br label %84, !dbg !1157

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1050, metadata !615), !dbg !1113
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1040, metadata !615), !dbg !1104
  %87 = and i8 %86, 1, !dbg !1158
  %88 = icmp eq i8 %87, 0, !dbg !1158
  br i1 %88, label %89, label %94, !dbg !1160

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1161
  br i1 %90, label %94, label %91, !dbg !1164

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1161, !tbaa !1130
  br label %94, !dbg !1161

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1052, metadata !615), !dbg !1116
  br label %94, !dbg !1165

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1166
  unreachable, !dbg !1166

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1052, metadata !615), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1050, metadata !615), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1049, metadata !615), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1044, metadata !615), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1043, metadata !615), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1040, metadata !615), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1045, metadata !615), !dbg !1167
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
  br label %122, !dbg !1168

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1055, metadata !615), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1045, metadata !615), !dbg !1167
  %131 = icmp eq i64 %126, -1, !dbg !1169
  br i1 %131, label %134, label %132, !dbg !1170

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1171
  br i1 %133, label %590, label %138, !dbg !1172

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1173
  %136 = load i8, i8* %135, align 1, !dbg !1173, !tbaa !1130
  %137 = icmp eq i8 %136, 0, !dbg !1174
  br i1 %137, label %590, label %138, !dbg !1172

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1061, metadata !615), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1062, metadata !615), !dbg !1176
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1063, metadata !615), !dbg !1177
  br i1 %108, label %139, label %154, !dbg !1178

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1180
  %141 = and i1 %109, %131, !dbg !1181
  br i1 %141, label %142, label %144, !dbg !1181

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1039, metadata !615), !dbg !1103
  br label %144, !dbg !1183

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1039, metadata !615), !dbg !1103
  %146 = icmp ugt i64 %140, %145, !dbg !1184
  br i1 %146, label %154, label %147, !dbg !1185

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1186
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1187
  %150 = icmp ne i32 %149, 0, !dbg !1188
  %151 = or i1 %150, %111, !dbg !1189
  %152 = xor i1 %150, true, !dbg !1189
  %153 = zext i1 %152 to i8, !dbg !1189
  br i1 %151, label %154, label %635, !dbg !1189

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1061, metadata !615), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1039, metadata !615), !dbg !1103
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1190
  %158 = load i8, i8* %157, align 1, !dbg !1190, !tbaa !1130
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1056, metadata !615), !dbg !1191
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
  ], !dbg !1192

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1193

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1194

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1062, metadata !615), !dbg !1176
  %162 = and i8 %127, 1, !dbg !1198
  %163 = icmp eq i8 %162, 0, !dbg !1198
  %164 = and i1 %113, %163, !dbg !1198
  br i1 %164, label %165, label %181, !dbg !1198

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1200
  br i1 %166, label %167, label %169, !dbg !1204

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1200
  store i8 39, i8* %168, align 1, !dbg !1200, !tbaa !1130
  br label %169, !dbg !1200

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1046, metadata !615), !dbg !1109
  %171 = icmp ult i64 %170, %130, !dbg !1205
  br i1 %171, label %172, label %174, !dbg !1208

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1205
  store i8 36, i8* %173, align 1, !dbg !1205, !tbaa !1130
  br label %174, !dbg !1205

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1046, metadata !615), !dbg !1109
  %176 = icmp ult i64 %175, %130, !dbg !1209
  br i1 %176, label %177, label %179, !dbg !1212

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1209
  store i8 39, i8* %178, align 1, !dbg !1209, !tbaa !1130
  br label %179, !dbg !1209

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !615), !dbg !1117
  br label %181, !dbg !1213

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1046, metadata !615), !dbg !1109
  %184 = icmp ult i64 %182, %130, !dbg !1214
  br i1 %184, label %185, label %187, !dbg !1217

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1214
  store i8 92, i8* %186, align 1, !dbg !1214, !tbaa !1130
  br label %187, !dbg !1214

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1046, metadata !615), !dbg !1109
  br i1 %105, label %189, label %470, !dbg !1218

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1220
  %191 = icmp ult i64 %190, %155, !dbg !1221
  br i1 %191, label %192, label %470, !dbg !1222

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1223
  %194 = load i8, i8* %193, align 1, !dbg !1223, !tbaa !1130
  %195 = add i8 %194, -48, !dbg !1224
  %196 = icmp ult i8 %195, 10, !dbg !1224
  br i1 %196, label %197, label %470, !dbg !1224

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1225
  br i1 %198, label %199, label %201, !dbg !1229

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1225
  store i8 48, i8* %200, align 1, !dbg !1225, !tbaa !1130
  br label %201, !dbg !1225

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1046, metadata !615), !dbg !1109
  %203 = icmp ult i64 %202, %130, !dbg !1230
  br i1 %203, label %204, label %206, !dbg !1233

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1230
  store i8 48, i8* %205, align 1, !dbg !1230, !tbaa !1130
  br label %206, !dbg !1230

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1046, metadata !615), !dbg !1109
  br label %470, !dbg !1234

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1235

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1236

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1237

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1239

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1241
  %214 = icmp ult i64 %213, %155, !dbg !1242
  br i1 %214, label %215, label %470, !dbg !1243

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1244
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1245
  %218 = load i8, i8* %217, align 1, !dbg !1245, !tbaa !1130
  %219 = icmp eq i8 %218, 63, !dbg !1246
  br i1 %219, label %220, label %470, !dbg !1247

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1248
  %222 = load i8, i8* %221, align 1, !dbg !1248, !tbaa !1130
  %223 = sext i8 %222 to i32, !dbg !1248
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
  ], !dbg !1249

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1250

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1045, metadata !615), !dbg !1167
  %226 = icmp ult i64 %124, %130, !dbg !1252
  br i1 %226, label %227, label %229, !dbg !1255

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1252
  store i8 63, i8* %228, align 1, !dbg !1252, !tbaa !1130
  br label %229, !dbg !1252

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1046, metadata !615), !dbg !1109
  %231 = icmp ult i64 %230, %130, !dbg !1256
  br i1 %231, label %232, label %234, !dbg !1259

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1256
  store i8 34, i8* %233, align 1, !dbg !1256, !tbaa !1130
  br label %234, !dbg !1256

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1046, metadata !615), !dbg !1109
  %236 = icmp ult i64 %235, %130, !dbg !1260
  br i1 %236, label %237, label %239, !dbg !1263

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1260
  store i8 34, i8* %238, align 1, !dbg !1260, !tbaa !1130
  br label %239, !dbg !1260

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1046, metadata !615), !dbg !1109
  %241 = icmp ult i64 %240, %130, !dbg !1264
  br i1 %241, label %242, label %244, !dbg !1267

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1264
  store i8 63, i8* %243, align 1, !dbg !1264, !tbaa !1130
  br label %244, !dbg !1264

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1046, metadata !615), !dbg !1109
  br label %470, !dbg !1268

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1060, metadata !615), !dbg !1269
  br label %256, !dbg !1270

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1060, metadata !615), !dbg !1269
  br label %256, !dbg !1271

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1060, metadata !615), !dbg !1269
  br label %254, !dbg !1272

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1060, metadata !615), !dbg !1269
  br label %254, !dbg !1273

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1060, metadata !615), !dbg !1269
  br label %256, !dbg !1274

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1060, metadata !615), !dbg !1269
  br i1 %113, label %252, label %253, !dbg !1275

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1276

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1279

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1060, metadata !615), !dbg !1269
  br i1 %117, label %256, label %635, !dbg !1281

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1060, metadata !615), !dbg !1269
  br i1 %104, label %497, label %470, !dbg !1283

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1284
  br i1 %259, label %260, label %265, !dbg !1286

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1287, !tbaa !1130
  %262 = icmp ne i8 %261, 0, !dbg !1288
  %263 = icmp ne i64 %123, 0, !dbg !1289
  %264 = or i1 %263, %262, !dbg !1291
  br i1 %264, label %470, label %271, !dbg !1291

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1292
  %267 = icmp ne i64 %123, 0, !dbg !1289
  %268 = or i1 %267, %266, !dbg !1286
  br i1 %268, label %470, label %271, !dbg !1286

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1289
  br i1 %270, label %271, label %470, !dbg !1293

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !615), !dbg !1177
  br label %272, !dbg !1294

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1063, metadata !615), !dbg !1177
  br i1 %117, label %470, label %635, !dbg !1295

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !615), !dbg !1177
  br i1 %113, label %275, label %470, !dbg !1297

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1298

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1301
  %278 = icmp ne i64 %125, 0, !dbg !1303
  %279 = or i1 %278, %277, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1037, metadata !615), !dbg !1101
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1304
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1047, metadata !615), !dbg !1110
  %282 = icmp ult i64 %124, %281, !dbg !1305
  br i1 %282, label %283, label %285, !dbg !1308

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1305
  store i8 39, i8* %284, align 1, !dbg !1305, !tbaa !1130
  br label %285, !dbg !1305

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1046, metadata !615), !dbg !1109
  %287 = icmp ult i64 %286, %281, !dbg !1309
  br i1 %287, label %288, label %290, !dbg !1312

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1309
  store i8 92, i8* %289, align 1, !dbg !1309, !tbaa !1130
  br label %290, !dbg !1309

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1046, metadata !615), !dbg !1109
  %292 = icmp ult i64 %291, %281, !dbg !1313
  br i1 %292, label %293, label %295, !dbg !1316

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1313
  store i8 39, i8* %294, align 1, !dbg !1313, !tbaa !1130
  br label %295, !dbg !1313

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1053, metadata !615), !dbg !1117
  br label %470, !dbg !1317

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1318

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1064, metadata !615), !dbg !1319
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1320
  %300 = load i16*, i16** %299, align 8, !dbg !1320, !tbaa !622
  %301 = zext i8 %158 to i64, !dbg !1320
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1320
  %303 = load i16, i16* %302, align 2, !dbg !1320, !tbaa !1322
  %304 = lshr i16 %303, 14, !dbg !1324
  %305 = trunc i16 %304 to i8, !dbg !1324
  %306 = and i8 %305, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1067, metadata !615), !dbg !1325
  br label %362, !dbg !1326

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1327
  store i64 0, i64* %10, align 8, !dbg !1328
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1067, metadata !615), !dbg !1325
  %308 = icmp eq i64 %155, -1, !dbg !1329
  br i1 %308, label %309, label %311, !dbg !1331

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1039, metadata !615), !dbg !1103
  br label %311, !dbg !1333

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1039, metadata !615), !dbg !1103
  br label %313, !dbg !1334, !llvm.loop !1335

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1067, metadata !615), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1337
  %316 = add i64 %314, %123, !dbg !1338
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1339
  %318 = sub i64 %312, %316, !dbg !1340
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1068, metadata !615), !dbg !1341
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1086, metadata !615), !dbg !1342
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1089, metadata !615), !dbg !1344
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1345

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !615), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1064, metadata !615), !dbg !1319
  %321 = icmp ugt i64 %312, %316, !dbg !1346
  br i1 %321, label %322, label %347, !dbg !1348

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1349

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1064, metadata !615), !dbg !1319
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1349
  %327 = load i8, i8* %326, align 1, !dbg !1349, !tbaa !1130
  %328 = icmp eq i8 %327, 0, !dbg !1348
  br i1 %328, label %347, label %329, !dbg !1350

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1064, metadata !615), !dbg !1319
  %331 = add i64 %330, %123, !dbg !1352
  %332 = icmp ult i64 %331, %312, !dbg !1346
  br i1 %332, label %323, label %347, !dbg !1348, !llvm.loop !1353

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1354
  %335 = and i1 %115, %334, !dbg !1357
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1090, metadata !615), !dbg !1358
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1090, metadata !615), !dbg !1358
  br i1 %335, label %336, label %350, !dbg !1357

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1359

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1090, metadata !615), !dbg !1358
  %339 = add i64 %338, %316, !dbg !1359
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1360
  %341 = load i8, i8* %340, align 1, !dbg !1360, !tbaa !1130
  %342 = sext i8 %341 to i32, !dbg !1360
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1361

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1090, metadata !615), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1090, metadata !615), !dbg !1358
  %345 = icmp ult i64 %344, %319, !dbg !1354
  br i1 %345, label %337, label %350, !dbg !1363, !llvm.loop !1364

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1366

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1067, metadata !615), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1366
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1367, !tbaa !685
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1086, metadata !615), !dbg !1342
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1369
  %353 = icmp eq i32 %352, 0, !dbg !1369
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !615), !dbg !1325
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1370
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1067, metadata !615), !dbg !1325
  %355 = add i64 %319, %314, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1067, metadata !615), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1068, metadata !615), !dbg !1341
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1372
  %357 = icmp eq i32 %356, 0, !dbg !1373
  br i1 %357, label %313, label %358, !dbg !1374, !llvm.loop !1335

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1375
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1067, metadata !615), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1366
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1375
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1067, metadata !615), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1064, metadata !615), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1039, metadata !615), !dbg !1103
  %366 = and i8 %365, 1, !dbg !1376
  %367 = icmp ne i8 %366, 0, !dbg !1376
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1063, metadata !615), !dbg !1177
  %368 = icmp ult i64 %364, 2, !dbg !1377
  %369 = or i1 %367, %112, !dbg !1378
  %370 = and i1 %368, %369, !dbg !1379
  br i1 %370, label %470, label %371, !dbg !1379

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1097, metadata !615), !dbg !1381
  br label %373, !dbg !1382

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1062, metadata !615), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1061, metadata !615), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1045, metadata !615), !dbg !1167
  br i1 %369, label %426, label %380, !dbg !1383

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1388

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1062, metadata !615), !dbg !1176
  %382 = and i8 %376, 1, !dbg !1391
  %383 = icmp eq i8 %382, 0, !dbg !1391
  %384 = and i1 %113, %383, !dbg !1391
  br i1 %384, label %385, label %401, !dbg !1391

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1393
  br i1 %386, label %387, label %389, !dbg !1397

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1393
  store i8 39, i8* %388, align 1, !dbg !1393, !tbaa !1130
  br label %389, !dbg !1393

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1046, metadata !615), !dbg !1109
  %391 = icmp ult i64 %390, %130, !dbg !1398
  br i1 %391, label %392, label %394, !dbg !1401

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1398
  store i8 36, i8* %393, align 1, !dbg !1398, !tbaa !1130
  br label %394, !dbg !1398

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1046, metadata !615), !dbg !1109
  %396 = icmp ult i64 %395, %130, !dbg !1402
  br i1 %396, label %397, label %399, !dbg !1405

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1402
  store i8 39, i8* %398, align 1, !dbg !1402, !tbaa !1130
  br label %399, !dbg !1402

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !615), !dbg !1117
  br label %401, !dbg !1406

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1046, metadata !615), !dbg !1109
  %404 = icmp ult i64 %402, %130, !dbg !1407
  br i1 %404, label %405, label %407, !dbg !1410

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1407
  store i8 92, i8* %406, align 1, !dbg !1407, !tbaa !1130
  br label %407, !dbg !1407

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1046, metadata !615), !dbg !1109
  %409 = icmp ult i64 %408, %130, !dbg !1411
  br i1 %409, label %410, label %414, !dbg !1414

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1411
  %412 = or i8 %411, 48, !dbg !1411
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1411
  store i8 %412, i8* %413, align 1, !dbg !1411, !tbaa !1130
  br label %414, !dbg !1411

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1046, metadata !615), !dbg !1109
  %416 = icmp ult i64 %415, %130, !dbg !1415
  br i1 %416, label %417, label %422, !dbg !1418

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1415
  %419 = and i8 %418, 7, !dbg !1415
  %420 = or i8 %419, 48, !dbg !1415
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1415
  store i8 %420, i8* %421, align 1, !dbg !1415, !tbaa !1130
  br label %422, !dbg !1415

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1046, metadata !615), !dbg !1109
  %424 = and i8 %377, 7, !dbg !1419
  %425 = or i8 %424, 48, !dbg !1420
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1056, metadata !615), !dbg !1191
  br label %435, !dbg !1421

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1422
  %428 = icmp eq i8 %427, 0, !dbg !1422
  br i1 %428, label %435, label %429, !dbg !1424

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1425
  br i1 %430, label %431, label %433, !dbg !1429

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1425
  store i8 92, i8* %432, align 1, !dbg !1425, !tbaa !1130
  br label %433, !dbg !1425

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1061, metadata !615), !dbg !1175
  br label %435, !dbg !1430

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1062, metadata !615), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1061, metadata !615), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1046, metadata !615), !dbg !1109
  %441 = add i64 %374, 1, !dbg !1431
  %442 = icmp ugt i64 %372, %441, !dbg !1433
  br i1 %442, label %443, label %535, !dbg !1434

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1435
  %445 = icmp ne i8 %444, 0, !dbg !1435
  %446 = and i8 %440, 1, !dbg !1435
  %447 = icmp eq i8 %446, 0, !dbg !1435
  %448 = and i1 %445, %447, !dbg !1435
  br i1 %448, label %449, label %460, !dbg !1435

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1438
  br i1 %450, label %451, label %453, !dbg !1442

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1438
  store i8 39, i8* %452, align 1, !dbg !1438, !tbaa !1130
  br label %453, !dbg !1438

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1046, metadata !615), !dbg !1109
  %455 = icmp ult i64 %454, %130, !dbg !1443
  br i1 %455, label %456, label %458, !dbg !1446

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1443
  store i8 39, i8* %457, align 1, !dbg !1443, !tbaa !1130
  br label %458, !dbg !1443

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1053, metadata !615), !dbg !1117
  br label %460, !dbg !1447

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1046, metadata !615), !dbg !1109
  %463 = icmp ult i64 %461, %130, !dbg !1448
  br i1 %463, label %464, label %466, !dbg !1451

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1448
  store i8 %438, i8* %465, align 1, !dbg !1448, !tbaa !1130
  br label %466, !dbg !1448

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1045, metadata !615), !dbg !1167
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1452
  %469 = load i8, i8* %468, align 1, !dbg !1452, !tbaa !1130
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1056, metadata !615), !dbg !1191
  br label %373, !dbg !1453, !llvm.loop !1454

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1063, metadata !615), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1062, metadata !615), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1061, metadata !615), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1045, metadata !615), !dbg !1167
  br i1 %106, label %482, label %481, !dbg !1457

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1459

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1460

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1461
  %485 = zext i8 %484 to i64, !dbg !1461
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1462
  %487 = load i32, i32* %486, align 4, !dbg !1462, !tbaa !685
  %488 = and i8 %477, 31, !dbg !1463
  %489 = zext i8 %488 to i32, !dbg !1464
  %490 = shl i32 1, %489, !dbg !1465
  %491 = and i32 %487, %490, !dbg !1465
  %492 = icmp eq i32 %491, 0, !dbg !1465
  %493 = icmp eq i8 %156, 0, !dbg !1466
  %494 = and i1 %493, %492, !dbg !1467
  br i1 %494, label %535, label %497, !dbg !1467

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1466
  br i1 %496, label %535, label %497, !dbg !1468

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1063, metadata !615), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1045, metadata !615), !dbg !1167
  br i1 %111, label %507, label %635, !dbg !1469

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1062, metadata !615), !dbg !1176
  %508 = and i8 %502, 1, !dbg !1471
  %509 = icmp eq i8 %508, 0, !dbg !1471
  %510 = and i1 %113, %509, !dbg !1471
  br i1 %510, label %511, label %527, !dbg !1471

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1473
  br i1 %512, label %513, label %515, !dbg !1477

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1473
  store i8 39, i8* %514, align 1, !dbg !1473, !tbaa !1130
  br label %515, !dbg !1473

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1046, metadata !615), !dbg !1109
  %517 = icmp ult i64 %516, %506, !dbg !1478
  br i1 %517, label %518, label %520, !dbg !1481

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1478
  store i8 36, i8* %519, align 1, !dbg !1478, !tbaa !1130
  br label %520, !dbg !1478

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1046, metadata !615), !dbg !1109
  %522 = icmp ult i64 %521, %506, !dbg !1482
  br i1 %522, label %523, label %525, !dbg !1485

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1482
  store i8 39, i8* %524, align 1, !dbg !1482, !tbaa !1130
  br label %525, !dbg !1482

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !615), !dbg !1117
  br label %527, !dbg !1486

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1046, metadata !615), !dbg !1109
  %530 = icmp ult i64 %528, %506, !dbg !1487
  br i1 %530, label %531, label %533, !dbg !1490

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1487
  store i8 92, i8* %532, align 1, !dbg !1487, !tbaa !1130
  br label %533, !dbg !1487

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1063, metadata !615), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1062, metadata !615), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1045, metadata !615), !dbg !1167
  br label %562, !dbg !1491

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1063, metadata !615), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1062, metadata !615), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1056, metadata !615), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1045, metadata !615), !dbg !1167
  %546 = and i8 %540, 1, !dbg !1491
  %547 = icmp ne i8 %546, 0, !dbg !1491
  %548 = and i8 %543, 1, !dbg !1491
  %549 = icmp eq i8 %548, 0, !dbg !1491
  %550 = and i1 %547, %549, !dbg !1491
  br i1 %550, label %551, label %562, !dbg !1491

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1494
  br i1 %552, label %553, label %555, !dbg !1498

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1494
  store i8 39, i8* %554, align 1, !dbg !1494, !tbaa !1130
  br label %555, !dbg !1494

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1046, metadata !615), !dbg !1109
  %557 = icmp ult i64 %556, %545, !dbg !1499
  br i1 %557, label %558, label %560, !dbg !1502

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1499
  store i8 39, i8* %559, align 1, !dbg !1499, !tbaa !1130
  br label %560, !dbg !1499

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1053, metadata !615), !dbg !1117
  br label %562, !dbg !1503

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1046, metadata !615), !dbg !1109
  %572 = icmp ult i64 %570, %563, !dbg !1504
  br i1 %572, label %573, label %575, !dbg !1507

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1504
  store i8 %565, i8* %574, align 1, !dbg !1504, !tbaa !1130
  br label %575, !dbg !1504

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1046, metadata !615), !dbg !1109
  %577 = and i8 %564, 1, !dbg !1508
  %578 = icmp eq i8 %577, 0, !dbg !1508
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1055, metadata !615), !dbg !1119
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1510
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1055, metadata !615), !dbg !1119
  br label %580, !dbg !1511

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1055, metadata !615), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1054, metadata !615), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1053, metadata !615), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1039, metadata !615), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1047, metadata !615), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1045, metadata !615), !dbg !1167
  %589 = add i64 %581, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1045, metadata !615), !dbg !1167
  br label %122, !dbg !1513, !llvm.loop !1514

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1516
  %593 = and i1 %113, %592, !dbg !1518
  %594 = xor i1 %593, true, !dbg !1518
  %595 = or i1 %111, %594, !dbg !1518
  br i1 %595, label %596, label %635, !dbg !1518

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1519
  %598 = xor i1 %597, true, !dbg !1519
  %599 = and i8 %128, 1, !dbg !1521
  %600 = icmp eq i8 %599, 0, !dbg !1521
  %601 = or i1 %600, %598, !dbg !1519
  br i1 %601, label %611, label %602, !dbg !1519

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1522
  %604 = icmp eq i8 %603, 0, !dbg !1522
  br i1 %604, label %607, label %605, !dbg !1525

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1526
  br label %645, !dbg !1527

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1528
  %609 = icmp ne i64 %125, 0, !dbg !1530
  %610 = and i1 %609, %608, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !615), !dbg !1109
  br i1 %610, label %27, label %611, !dbg !1531

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1532
  %613 = and i1 %612, %111, !dbg !1534
  br i1 %613, label %614, label %630, !dbg !1534

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1046, metadata !615), !dbg !1109
  %615 = load i8, i8* %99, align 1, !dbg !1535, !tbaa !1130
  %616 = icmp eq i8 %615, 0, !dbg !1538
  br i1 %616, label %630, label %617, !dbg !1538

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1539

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1046, metadata !615), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1048, metadata !615), !dbg !1111
  %622 = icmp ult i64 %621, %130, !dbg !1539
  br i1 %622, label %623, label %625, !dbg !1542

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1539
  store i8 %619, i8* %624, align 1, !dbg !1539, !tbaa !1130
  br label %625, !dbg !1539

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1046, metadata !615), !dbg !1109
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1048, metadata !615), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1046, metadata !615), !dbg !1109
  %628 = load i8, i8* %627, align 1, !dbg !1535, !tbaa !1130
  %629 = icmp eq i8 %628, 0, !dbg !1538
  br i1 %629, label %630, label %618, !dbg !1538, !llvm.loop !1544

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1046, metadata !615), !dbg !1109
  %632 = icmp ult i64 %631, %130, !dbg !1546
  br i1 %632, label %633, label %645, !dbg !1548

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1549
  store i8 0, i8* %634, align 1, !dbg !1550, !tbaa !1130
  br label %645, !dbg !1549

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1037, metadata !615), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1039, metadata !615), !dbg !1103
  %639 = icmp ne i32 %636, 2, !dbg !1551
  %640 = icmp eq i8 %103, 0, !dbg !1553
  %641 = or i1 %639, %640, !dbg !1554
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1040, metadata !615), !dbg !1104
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1040, metadata !615), !dbg !1104
  %643 = and i32 %5, -3, !dbg !1555
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1556
  br label %645, !dbg !1557

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1558
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1559 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1563, metadata !615), !dbg !1567
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1564, metadata !615), !dbg !1568
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1565, metadata !615), !dbg !1570
  %4 = icmp eq i8* %3, %0, !dbg !1571
  br i1 %4, label %5, label %75, !dbg !1573

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1574
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1566, metadata !615), !dbg !1575
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1576, metadata !615), !dbg !1592
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1590, metadata !615), !dbg !1595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1591, metadata !615), !dbg !1596
  %7 = load i8, i8* %6, align 1, !dbg !1597, !tbaa !1130
  %8 = sext i8 %7 to i32, !dbg !1597
  %9 = and i32 %8, -33, !dbg !1597
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1597

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1599, metadata !615), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1611, metadata !615), !dbg !1617
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1612, metadata !615), !dbg !1618
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1619
  %12 = load i8, i8* %11, align 1, !dbg !1619, !tbaa !1130
  %13 = sext i8 %12 to i32, !dbg !1619
  %14 = and i32 %13, -33, !dbg !1619
  %15 = icmp eq i32 %14, 84, !dbg !1619
  br i1 %15, label %16, label %72, !dbg !1619

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1621, metadata !615), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1632, metadata !615), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1633, metadata !615), !dbg !1639
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1640
  %18 = load i8, i8* %17, align 1, !dbg !1640, !tbaa !1130
  %19 = sext i8 %18 to i32, !dbg !1640
  %20 = and i32 %19, -33, !dbg !1640
  %21 = icmp eq i32 %20, 70, !dbg !1640
  br i1 %21, label %22, label %72, !dbg !1640

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1642, metadata !615), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1652, metadata !615), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1653, metadata !615), !dbg !1659
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1660
  %24 = load i8, i8* %23, align 1, !dbg !1660, !tbaa !1130
  %25 = icmp eq i8 %24, 45, !dbg !1660
  br i1 %25, label %26, label %72, !dbg !1662

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !615), !dbg !1674
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1672, metadata !615), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1673, metadata !615), !dbg !1679
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1680
  %28 = load i8, i8* %27, align 1, !dbg !1680, !tbaa !1130
  %29 = icmp eq i8 %28, 56, !dbg !1680
  br i1 %29, label %30, label %72, !dbg !1682

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1683, metadata !615), !dbg !1693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1691, metadata !615), !dbg !1697
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1692, metadata !615), !dbg !1698
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1699
  %32 = load i8, i8* %31, align 1, !dbg !1699, !tbaa !1130
  %33 = icmp eq i8 %32, 0, !dbg !1699
  br i1 %33, label %34, label %72, !dbg !1701

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1702, !tbaa !1130
  %36 = icmp eq i8 %35, 96, !dbg !1703
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.57, i64 0, i64 0), !dbg !1702
  br label %75, !dbg !1704

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1599, metadata !615), !dbg !1705
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1611, metadata !615), !dbg !1709
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1612, metadata !615), !dbg !1710
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1711
  %40 = load i8, i8* %39, align 1, !dbg !1711, !tbaa !1130
  %41 = sext i8 %40 to i32, !dbg !1711
  %42 = and i32 %41, -33, !dbg !1711
  %43 = icmp eq i32 %42, 66, !dbg !1711
  br i1 %43, label %44, label %72, !dbg !1711

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1621, metadata !615), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1632, metadata !615), !dbg !1714
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1633, metadata !615), !dbg !1715
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1716
  %46 = load i8, i8* %45, align 1, !dbg !1716, !tbaa !1130
  %47 = icmp eq i8 %46, 49, !dbg !1716
  br i1 %47, label %48, label %72, !dbg !1717

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1642, metadata !615), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1652, metadata !615), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1653, metadata !615), !dbg !1721
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1722
  %50 = load i8, i8* %49, align 1, !dbg !1722, !tbaa !1130
  %51 = icmp eq i8 %50, 56, !dbg !1722
  br i1 %51, label %52, label %72, !dbg !1723

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !615), !dbg !1724
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1672, metadata !615), !dbg !1726
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1673, metadata !615), !dbg !1727
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1728
  %54 = load i8, i8* %53, align 1, !dbg !1728, !tbaa !1130
  %55 = icmp eq i8 %54, 48, !dbg !1728
  br i1 %55, label %56, label %72, !dbg !1729

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1683, metadata !615), !dbg !1730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1691, metadata !615), !dbg !1732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1692, metadata !615), !dbg !1733
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1734
  %58 = load i8, i8* %57, align 1, !dbg !1734, !tbaa !1130
  %59 = icmp eq i8 %58, 51, !dbg !1734
  br i1 %59, label %60, label %72, !dbg !1735

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1736, metadata !615), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1743, metadata !615), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !615), !dbg !1750
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1751
  %62 = load i8, i8* %61, align 1, !dbg !1751, !tbaa !1130
  %63 = icmp eq i8 %62, 48, !dbg !1751
  br i1 %63, label %64, label %72, !dbg !1753

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1754, metadata !615), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1760, metadata !615), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1761, metadata !615), !dbg !1767
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1768
  %66 = load i8, i8* %65, align 1, !dbg !1768, !tbaa !1130
  %67 = icmp eq i8 %66, 0, !dbg !1768
  br i1 %67, label %68, label %72, !dbg !1770

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1771, !tbaa !1130
  %70 = icmp eq i8 %69, 96, !dbg !1772
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.58, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1771
  br label %75, !dbg !1773

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1774
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), !dbg !1775
  br label %75, !dbg !1776

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1777
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #12

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1778 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1782, metadata !615), !dbg !1785
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1783, metadata !615), !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1784, metadata !615), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1788, metadata !615) #9, !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1793, metadata !615) #9, !dbg !1803
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1794, metadata !615) #9, !dbg !1804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1795, metadata !615) #9, !dbg !1805
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1806
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1796, metadata !615) #9, !dbg !1807
  %6 = tail call i32* @__errno_location() #17, !dbg !1808
  %7 = load i32, i32* %6, align 4, !dbg !1808, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1797, metadata !615) #9, !dbg !1809
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1810
  %9 = load i32, i32* %8, align 4, !dbg !1810, !tbaa !969
  %10 = or i32 %9, 1, !dbg !1811
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1798, metadata !615) #9, !dbg !1812
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1813
  %12 = load i32, i32* %11, align 8, !dbg !1813, !tbaa !909
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1814
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1815
  %15 = load i8*, i8** %14, align 8, !dbg !1815, !tbaa !995
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1816
  %17 = load i8*, i8** %16, align 8, !dbg !1816, !tbaa !998
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1817
  %19 = add i64 %18, 1, !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1799, metadata !615) #9, !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1820, metadata !615) #9, !dbg !1825
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1827
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1800, metadata !615) #9, !dbg !1828
  %21 = load i32, i32* %11, align 8, !dbg !1829, !tbaa !909
  %22 = load i8*, i8** %14, align 8, !dbg !1830, !tbaa !995
  %23 = load i8*, i8** %16, align 8, !dbg !1831, !tbaa !998
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1832
  store i32 %7, i32* %6, align 4, !dbg !1833, !tbaa !685
  ret i8* %20, !dbg !1834
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1789 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1788, metadata !615), !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1793, metadata !615), !dbg !1836
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1794, metadata !615), !dbg !1837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1795, metadata !615), !dbg !1838
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1839
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1839
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1796, metadata !615), !dbg !1840
  %7 = tail call i32* @__errno_location() #17, !dbg !1841
  %8 = load i32, i32* %7, align 4, !dbg !1841, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1797, metadata !615), !dbg !1842
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1843
  %10 = load i32, i32* %9, align 4, !dbg !1843, !tbaa !969
  %11 = icmp ne i64* %2, null, !dbg !1844
  %12 = xor i1 %11, true, !dbg !1844
  %13 = zext i1 %12 to i32, !dbg !1844
  %14 = or i32 %10, %13, !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1798, metadata !615), !dbg !1846
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1847
  %16 = load i32, i32* %15, align 8, !dbg !1847, !tbaa !909
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1848
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1849
  %19 = load i8*, i8** %18, align 8, !dbg !1849, !tbaa !995
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1850
  %21 = load i8*, i8** %20, align 8, !dbg !1850, !tbaa !998
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1851
  %23 = add i64 %22, 1, !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1799, metadata !615), !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1820, metadata !615) #9, !dbg !1854
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1856
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1800, metadata !615), !dbg !1857
  %25 = load i32, i32* %15, align 8, !dbg !1858, !tbaa !909
  %26 = load i8*, i8** %18, align 8, !dbg !1859, !tbaa !995
  %27 = load i8*, i8** %20, align 8, !dbg !1860, !tbaa !998
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1861
  store i32 %8, i32* %7, align 4, !dbg !1862, !tbaa !685
  br i1 %11, label %29, label %30, !dbg !1863

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1864, !tbaa !1866
  br label %30, !dbg !1868

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1869
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1870 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1874, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1872, metadata !615), !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1873, metadata !615), !dbg !1876
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1873, metadata !615), !dbg !1876
  %2 = load i32, i32* @nslots, align 4, !dbg !1877, !tbaa !685
  %3 = icmp sgt i32 %2, 1, !dbg !1880
  br i1 %3, label %4, label %13, !dbg !1881

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1882

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1873, metadata !615), !dbg !1876
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1882
  %8 = load i8*, i8** %7, align 8, !dbg !1882, !tbaa !1883
  tail call void @free(i8* %8) #9, !dbg !1885
  %9 = add nuw i64 %6, 1, !dbg !1886
  %10 = load i32, i32* @nslots, align 4, !dbg !1877, !tbaa !685
  %11 = sext i32 %10 to i64, !dbg !1880
  %12 = icmp slt i64 %9, %11, !dbg !1880
  br i1 %12, label %5, label %13, !dbg !1881, !llvm.loop !1887

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1889
  %15 = load i8*, i8** %14, align 8, !dbg !1889, !tbaa !1883
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1891
  br i1 %16, label %18, label %17, !dbg !1892

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1893
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1895, !tbaa !1896
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1897, !tbaa !1883
  br label %18, !dbg !1898

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1899
  br i1 %19, label %22, label %20, !dbg !1901

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1902
  tail call void @free(i8* %21) #9, !dbg !1904
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1905, !tbaa !622
  br label %22, !dbg !1906

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1907, !tbaa !685
  ret void, !dbg !1908
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1909 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1913, metadata !615), !dbg !1915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1914, metadata !615), !dbg !1916
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1917
  ret i8* %3, !dbg !1918
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1919 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1923, metadata !615), !dbg !1937
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1924, metadata !615), !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1925, metadata !615), !dbg !1939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1926, metadata !615), !dbg !1940
  %5 = tail call i32* @__errno_location() #17, !dbg !1941
  %6 = load i32, i32* %5, align 4, !dbg !1941, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1927, metadata !615), !dbg !1942
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1943, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1928, metadata !615), !dbg !1944
  %8 = icmp slt i32 %0, 0, !dbg !1945
  br i1 %8, label %9, label %10, !dbg !1947

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1948
  unreachable, !dbg !1948

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1949, !tbaa !685
  %12 = icmp sgt i32 %11, %0, !dbg !1950
  br i1 %12, label %34, label %13, !dbg !1951

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1952
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1953
  br i1 %15, label %16, label %17, !dbg !1955

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1956
  unreachable, !dbg !1956

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1957
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1957
  %20 = add nsw i32 %0, 1, !dbg !1958
  %21 = sext i32 %20 to i64, !dbg !1959
  %22 = shl nsw i64 %21, 4, !dbg !1960
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !1961
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1961
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1928, metadata !615), !dbg !1944
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1962, !tbaa !622
  br i1 %14, label %25, label %26, !dbg !1963

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1964, !tbaa.struct !1966
  br label %26, !dbg !1967

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1968, !tbaa !685
  %28 = sext i32 %27 to i64, !dbg !1969
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1969
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1970
  %31 = sub nsw i32 %20, %27, !dbg !1971
  %32 = sext i32 %31 to i64, !dbg !1972
  %33 = shl nsw i64 %32, 4, !dbg !1973
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1970
  store i32 %20, i32* @nslots, align 4, !dbg !1974, !tbaa !685
  br label %34, !dbg !1975

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1928, metadata !615), !dbg !1944
  %36 = sext i32 %0 to i64, !dbg !1976
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1977
  %38 = load i64, i64* %37, align 8, !dbg !1977, !tbaa !1896
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1932, metadata !615), !dbg !1978
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1979
  %40 = load i8*, i8** %39, align 8, !dbg !1979, !tbaa !1883
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1934, metadata !615), !dbg !1980
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1981
  %42 = load i32, i32* %41, align 4, !dbg !1981, !tbaa !969
  %43 = or i32 %42, 1, !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1935, metadata !615), !dbg !1983
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1984
  %45 = load i32, i32* %44, align 8, !dbg !1984, !tbaa !909
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1985
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1986
  %48 = load i8*, i8** %47, align 8, !dbg !1986, !tbaa !995
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1987
  %50 = load i8*, i8** %49, align 8, !dbg !1987, !tbaa !998
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1936, metadata !615), !dbg !1989
  %52 = icmp ugt i64 %38, %51, !dbg !1990
  br i1 %52, label %63, label %53, !dbg !1992

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1993
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1932, metadata !615), !dbg !1978
  store i64 %54, i64* %37, align 8, !dbg !1995, !tbaa !1896
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1996
  br i1 %55, label %57, label %56, !dbg !1998

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !1999
  br label %57, !dbg !1999

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1820, metadata !615) #9, !dbg !2000
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2002
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1934, metadata !615), !dbg !1980
  store i8* %58, i8** %39, align 8, !dbg !2003, !tbaa !1883
  %59 = load i32, i32* %44, align 8, !dbg !2004, !tbaa !909
  %60 = load i8*, i8** %47, align 8, !dbg !2005, !tbaa !995
  %61 = load i8*, i8** %49, align 8, !dbg !2006, !tbaa !998
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2007
  br label %63, !dbg !2008

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1934, metadata !615), !dbg !1980
  store i32 %6, i32* %5, align 4, !dbg !2009, !tbaa !685
  ret i8* %64, !dbg !2010
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2011 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2015, metadata !615), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2016, metadata !615), !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2017, metadata !615), !dbg !2020
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2021
  ret i8* %4, !dbg !2022
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2023 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2027, metadata !615), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1913, metadata !615) #9, !dbg !2029
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1914, metadata !615) #9, !dbg !2031
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2032
  ret i8* %2, !dbg !2033
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2034 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2038, metadata !615), !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2039, metadata !615), !dbg !2041
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2015, metadata !615) #9, !dbg !2042
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2016, metadata !615) #9, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2017, metadata !615) #9, !dbg !2045
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2046
  ret i8* %3, !dbg !2047
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2048 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2056, metadata !2062), !dbg !2063
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2052, metadata !615), !dbg !2065
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2053, metadata !615), !dbg !2066
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2054, metadata !615), !dbg !2067
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2055, metadata !615), !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2061, metadata !615) #9, !dbg !2070
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2071
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2071
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2056, metadata !615) #9, !dbg !2063
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2063
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2063
  %8 = icmp eq i32 %1, 10, !dbg !2073
  br i1 %8, label %9, label %10, !dbg !2075

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2076, !noalias !2077
  unreachable, !dbg !2076

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2056, metadata !2072) #9, !dbg !2063
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2080
  store i32 %1, i32* %11, align 8, !dbg !2080, !alias.scope !2077
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2080
  %13 = bitcast i32* %12 to i8*, !dbg !2080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2055, metadata !615), !dbg !2069
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2082
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2083
  ret i8* %14, !dbg !2084
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2085 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2056, metadata !2062), !dbg !2094
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2089, metadata !615), !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2090, metadata !615), !dbg !2097
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2091, metadata !615), !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2092, metadata !615), !dbg !2099
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2100
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2093, metadata !615), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2061, metadata !615) #9, !dbg !2102
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2103
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2056, metadata !615) #9, !dbg !2094
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2094
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2094
  %9 = icmp eq i32 %1, 10, !dbg !2104
  br i1 %9, label %10, label %11, !dbg !2105

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2106, !noalias !2107
  unreachable, !dbg !2106

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2056, metadata !2072) #9, !dbg !2094
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2110
  store i32 %1, i32* %12, align 8, !dbg !2110, !alias.scope !2107
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2110
  %14 = bitcast i32* %13 to i8*, !dbg !2110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2110
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2111
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2093, metadata !615), !dbg !2101
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2112
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2113
  ret i8* %15, !dbg !2114
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2115 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2056, metadata !2062), !dbg !2121
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2119, metadata !615), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2120, metadata !615), !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2052, metadata !615) #9, !dbg !2126
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2053, metadata !615) #9, !dbg !2127
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2054, metadata !615) #9, !dbg !2128
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2129
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2055, metadata !615) #9, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2061, metadata !615) #9, !dbg !2131
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2132
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2132
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2056, metadata !615) #9, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2121
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2121
  %7 = icmp eq i32 %0, 10, !dbg !2133
  br i1 %7, label %8, label %9, !dbg !2134

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2135, !noalias !2136
  unreachable, !dbg !2135

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2121
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2139
  store i32 %0, i32* %10, align 8, !dbg !2139, !alias.scope !2136
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2139
  %12 = bitcast i32* %11 to i8*, !dbg !2139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2139
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2140
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2055, metadata !615) #9, !dbg !2130
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2141
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2142
  ret i8* %13, !dbg !2143
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2144 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2056, metadata !2062), !dbg !2151
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2148, metadata !615), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2149, metadata !615), !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2150, metadata !615), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2089, metadata !615) #9, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2090, metadata !615) #9, !dbg !2158
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2091, metadata !615) #9, !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2092, metadata !615) #9, !dbg !2160
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2093, metadata !615) #9, !dbg !2162
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2061, metadata !615) #9, !dbg !2163
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2164
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2164
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2056, metadata !615) #9, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2151
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2151
  %8 = icmp eq i32 %0, 10, !dbg !2165
  br i1 %8, label %9, label %10, !dbg !2166

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2167, !noalias !2168
  unreachable, !dbg !2167

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2151
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2171
  store i32 %0, i32* %11, align 8, !dbg !2171, !alias.scope !2168
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2171
  %13 = bitcast i32* %12 to i8*, !dbg !2171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2171
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2093, metadata !615) #9, !dbg !2162
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2174
  ret i8* %14, !dbg !2175
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2176 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !615), !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2181, metadata !615), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2182, metadata !615), !dbg !2186
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2187
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2188, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2183, metadata !615), !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !928, metadata !615), !dbg !2191
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !929, metadata !615), !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !930, metadata !615), !dbg !2194
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !931, metadata !615), !dbg !2195
  %6 = lshr i8 %2, 5, !dbg !2196
  %7 = zext i8 %6 to i64, !dbg !2196
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !932, metadata !615), !dbg !2198
  %9 = and i8 %2, 31, !dbg !2199
  %10 = zext i8 %9 to i32, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !934, metadata !615), !dbg !2201
  %11 = load i32, i32* %8, align 4, !dbg !2202, !tbaa !685
  %12 = lshr i32 %11, %10, !dbg !2203
  %13 = and i32 %12, 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !935, metadata !615), !dbg !2205
  %14 = xor i32 %13, 1, !dbg !2206
  %15 = shl i32 %14, %10, !dbg !2207
  %16 = xor i32 %15, %11, !dbg !2208
  store i32 %16, i32* %8, align 4, !dbg !2208, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2183, metadata !615), !dbg !2190
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2210
  ret i8* %17, !dbg !2211
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2212 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2216, metadata !615), !dbg !2218
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2217, metadata !615), !dbg !2219
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !615) #9, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2181, metadata !615) #9, !dbg !2222
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2182, metadata !615) #9, !dbg !2223
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2225, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2183, metadata !615) #9, !dbg !2226
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !928, metadata !615) #9, !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !929, metadata !615) #9, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !930, metadata !615) #9, !dbg !2230
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !931, metadata !615) #9, !dbg !2231
  %5 = lshr i8 %1, 5, !dbg !2232
  %6 = zext i8 %5 to i64, !dbg !2232
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2233
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !932, metadata !615) #9, !dbg !2234
  %8 = and i8 %1, 31, !dbg !2235
  %9 = zext i8 %8 to i32, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !934, metadata !615) #9, !dbg !2237
  %10 = load i32, i32* %7, align 4, !dbg !2238, !tbaa !685
  %11 = lshr i32 %10, %9, !dbg !2239
  %12 = and i32 %11, 1, !dbg !2240
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !935, metadata !615) #9, !dbg !2241
  %13 = xor i32 %12, 1, !dbg !2242
  %14 = shl i32 %13, %9, !dbg !2243
  %15 = xor i32 %14, %10, !dbg !2244
  store i32 %15, i32* %7, align 4, !dbg !2244, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2183, metadata !615) #9, !dbg !2226
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2246
  ret i8* %16, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2248 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2250, metadata !615), !dbg !2251
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2216, metadata !615) #9, !dbg !2252
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2217, metadata !615) #9, !dbg !2254
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !615) #9, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2181, metadata !615) #9, !dbg !2257
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2182, metadata !615) #9, !dbg !2258
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2260, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2183, metadata !615) #9, !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !928, metadata !615) #9, !dbg !2262
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !929, metadata !615) #9, !dbg !2264
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !930, metadata !615) #9, !dbg !2265
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !931, metadata !615) #9, !dbg !2266
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2267
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !932, metadata !615) #9, !dbg !2268
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !934, metadata !615) #9, !dbg !2269
  %5 = load i32, i32* %4, align 4, !dbg !2270, !tbaa !685
  %6 = or i32 %5, 67108864, !dbg !2271
  store i32 %6, i32* %4, align 4, !dbg !2271, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2183, metadata !615) #9, !dbg !2261
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2272
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2273
  ret i8* %7, !dbg !2274
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2275 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2277, metadata !615), !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2278, metadata !615), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !615) #9, !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2181, metadata !615) #9, !dbg !2283
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2182, metadata !615) #9, !dbg !2284
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2285
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2286, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2183, metadata !615) #9, !dbg !2287
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !928, metadata !615) #9, !dbg !2288
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !929, metadata !615) #9, !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !930, metadata !615) #9, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !931, metadata !615) #9, !dbg !2292
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !932, metadata !615) #9, !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !934, metadata !615) #9, !dbg !2295
  %6 = load i32, i32* %5, align 4, !dbg !2296, !tbaa !685
  %7 = or i32 %6, 67108864, !dbg !2297
  store i32 %7, i32* %5, align 4, !dbg !2297, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2183, metadata !615) #9, !dbg !2287
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2299
  ret i8* %8, !dbg !2300
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2301 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2056, metadata !2062), !dbg !2307
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2303, metadata !615), !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2304, metadata !615), !dbg !2310
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2305, metadata !615), !dbg !2311
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2312
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2061, metadata !615) #9, !dbg !2313
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2314
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2056, metadata !615) #9, !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2056, metadata !2072) #9, !dbg !2307
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2307
  %9 = icmp eq i32 %1, 10, !dbg !2315
  br i1 %9, label %10, label %11, !dbg !2316

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2317, !noalias !2318
  unreachable, !dbg !2317

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2056, metadata !2072) #9, !dbg !2307
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2321
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2322
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2323
  store i32 %1, i32* %13, align 8, !dbg !2323
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2323
  %15 = bitcast i32* %14 to i8*, !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2306, metadata !615), !dbg !2324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !928, metadata !615), !dbg !2325
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !929, metadata !615), !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !930, metadata !615), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !931, metadata !615), !dbg !2329
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !932, metadata !615), !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !934, metadata !615), !dbg !2332
  %17 = load i32, i32* %16, align 4, !dbg !2333, !tbaa !685
  %18 = or i32 %17, 67108864, !dbg !2334
  store i32 %18, i32* %16, align 4, !dbg !2334, !tbaa !685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2306, metadata !615), !dbg !2324
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2336
  ret i8* %19, !dbg !2337
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2338 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2342, metadata !615), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2343, metadata !615), !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2344, metadata !615), !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2345, metadata !615), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2350, metadata !615) #9, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2355, metadata !615) #9, !dbg !2362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2356, metadata !615) #9, !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2357, metadata !615) #9, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2358, metadata !615) #9, !dbg !2365
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2367, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !615) #9, !dbg !2368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !615) #9, !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !978, metadata !615) #9, !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !979, metadata !615) #9, !dbg !2372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !615) #9, !dbg !2369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !615) #9, !dbg !2369
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2373
  store i32 10, i32* %7, align 8, !dbg !2374, !tbaa !909
  %8 = icmp ne i8* %1, null, !dbg !2375
  %9 = icmp ne i8* %2, null, !dbg !2376
  %10 = and i1 %8, %9, !dbg !2377
  br i1 %10, label %12, label %11, !dbg !2377

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2378
  unreachable, !dbg !2378

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2379
  store i8* %1, i8** %13, align 8, !dbg !2380, !tbaa !995
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2381
  store i8* %2, i8** %14, align 8, !dbg !2382, !tbaa !998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !615) #9, !dbg !2368
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2384
  ret i8* %15, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2351 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2350, metadata !615), !dbg !2386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2355, metadata !615), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2356, metadata !615), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2357, metadata !615), !dbg !2389
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2358, metadata !615), !dbg !2390
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2391
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2392, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !615), !dbg !2393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !977, metadata !615) #9, !dbg !2394
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !978, metadata !615) #9, !dbg !2396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !979, metadata !615) #9, !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !615) #9, !dbg !2394
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !977, metadata !615) #9, !dbg !2394
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2398
  store i32 10, i32* %8, align 8, !dbg !2399, !tbaa !909
  %9 = icmp ne i8* %1, null, !dbg !2400
  %10 = icmp ne i8* %2, null, !dbg !2401
  %11 = and i1 %9, %10, !dbg !2402
  br i1 %11, label %13, label %12, !dbg !2402

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2403
  unreachable, !dbg !2403

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2404
  store i8* %1, i8** %14, align 8, !dbg !2405, !tbaa !995
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2406
  store i8* %2, i8** %15, align 8, !dbg !2407, !tbaa !998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2359, metadata !615), !dbg !2393
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2408
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2409
  ret i8* %16, !dbg !2410
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2411 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2415, metadata !615), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2416, metadata !615), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2417, metadata !615), !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !615) #9, !dbg !2421
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2343, metadata !615) #9, !dbg !2423
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2344, metadata !615) #9, !dbg !2424
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2345, metadata !615) #9, !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2350, metadata !615) #9, !dbg !2426
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2355, metadata !615) #9, !dbg !2428
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2356, metadata !615) #9, !dbg !2429
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2357, metadata !615) #9, !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2358, metadata !615) #9, !dbg !2431
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2433, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2359, metadata !615) #9, !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !977, metadata !615) #9, !dbg !2435
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !978, metadata !615) #9, !dbg !2437
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !979, metadata !615) #9, !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !615) #9, !dbg !2435
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !977, metadata !615) #9, !dbg !2435
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2439
  store i32 10, i32* %6, align 8, !dbg !2440, !tbaa !909
  %7 = icmp ne i8* %0, null, !dbg !2441
  %8 = icmp ne i8* %1, null, !dbg !2442
  %9 = and i1 %7, %8, !dbg !2443
  br i1 %9, label %11, label %10, !dbg !2443

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2444
  unreachable, !dbg !2444

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2445
  store i8* %0, i8** %12, align 8, !dbg !2446, !tbaa !995
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2447
  store i8* %1, i8** %13, align 8, !dbg !2448, !tbaa !998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2359, metadata !615) #9, !dbg !2434
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2450
  ret i8* %14, !dbg !2451
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2452 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2456, metadata !615), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2457, metadata !615), !dbg !2461
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2458, metadata !615), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2459, metadata !615), !dbg !2463
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2350, metadata !615) #9, !dbg !2464
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2355, metadata !615) #9, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2356, metadata !615) #9, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2357, metadata !615) #9, !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2358, metadata !615) #9, !dbg !2469
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2470
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2471, !tbaa.struct !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !615) #9, !dbg !2472
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !615) #9, !dbg !2473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !978, metadata !615) #9, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !979, metadata !615) #9, !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !615) #9, !dbg !2473
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !615) #9, !dbg !2473
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2477
  store i32 10, i32* %7, align 8, !dbg !2478, !tbaa !909
  %8 = icmp ne i8* %0, null, !dbg !2479
  %9 = icmp ne i8* %1, null, !dbg !2480
  %10 = and i1 %8, %9, !dbg !2481
  br i1 %10, label %12, label %11, !dbg !2481

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2482
  unreachable, !dbg !2482

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2483
  store i8* %0, i8** %13, align 8, !dbg !2484, !tbaa !995
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2485
  store i8* %1, i8** %14, align 8, !dbg !2486, !tbaa !998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2359, metadata !615) #9, !dbg !2472
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2488
  ret i8* %15, !dbg !2489
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2490 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2494, metadata !615), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2495, metadata !615), !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2496, metadata !615), !dbg !2499
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2500
  ret i8* %4, !dbg !2501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2502 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2506, metadata !615), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2507, metadata !615), !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2494, metadata !615) #9, !dbg !2510
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2495, metadata !615) #9, !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2496, metadata !615) #9, !dbg !2513
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2514
  ret i8* %3, !dbg !2515
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2516 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2520, metadata !615), !dbg !2522
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2521, metadata !615), !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2494, metadata !615) #9, !dbg !2524
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2495, metadata !615) #9, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2496, metadata !615) #9, !dbg !2527
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2528
  ret i8* %3, !dbg !2529
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2530 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2534, metadata !615), !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2520, metadata !615) #9, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2521, metadata !615) #9, !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2494, metadata !615) #9, !dbg !2539
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2495, metadata !615) #9, !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2496, metadata !615) #9, !dbg !2542
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2543
  ret i8* %2, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2545 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2603, metadata !615), !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2604, metadata !615), !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2605, metadata !615), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2606, metadata !615), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2607, metadata !615), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2608, metadata !615), !dbg !2614
  %7 = icmp eq i8* %1, null, !dbg !2615
  br i1 %7, label %10, label %8, !dbg !2617

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2618
  br label %12, !dbg !2618

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2619
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #9, !dbg !2620
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2620
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #9, !dbg !2621
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2621
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
  ], !dbg !2622

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2623
  unreachable, !dbg !2623

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #9, !dbg !2625
  %20 = load i8*, i8** %4, align 8, !dbg !2625, !tbaa !622
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2625
  br label %146, !dbg !2626

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #9, !dbg !2627
  %24 = load i8*, i8** %4, align 8, !dbg !2627, !tbaa !622
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2627
  %26 = load i8*, i8** %25, align 8, !dbg !2627, !tbaa !622
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2627
  br label %146, !dbg !2628

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #9, !dbg !2629
  %30 = load i8*, i8** %4, align 8, !dbg !2629, !tbaa !622
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2629
  %32 = load i8*, i8** %31, align 8, !dbg !2629, !tbaa !622
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2629
  %34 = load i8*, i8** %33, align 8, !dbg !2629, !tbaa !622
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2629
  br label %146, !dbg !2630

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #9, !dbg !2631
  %38 = load i8*, i8** %4, align 8, !dbg !2631, !tbaa !622
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2631
  %40 = load i8*, i8** %39, align 8, !dbg !2631, !tbaa !622
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2631
  %42 = load i8*, i8** %41, align 8, !dbg !2631, !tbaa !622
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2631
  %44 = load i8*, i8** %43, align 8, !dbg !2631, !tbaa !622
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2631
  br label %146, !dbg !2632

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #9, !dbg !2633
  %48 = load i8*, i8** %4, align 8, !dbg !2633, !tbaa !622
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2633
  %50 = load i8*, i8** %49, align 8, !dbg !2633, !tbaa !622
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2633
  %52 = load i8*, i8** %51, align 8, !dbg !2633, !tbaa !622
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2633
  %54 = load i8*, i8** %53, align 8, !dbg !2633, !tbaa !622
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2633
  %56 = load i8*, i8** %55, align 8, !dbg !2633, !tbaa !622
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2633
  br label %146, !dbg !2634

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #9, !dbg !2635
  %60 = load i8*, i8** %4, align 8, !dbg !2635, !tbaa !622
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2635
  %62 = load i8*, i8** %61, align 8, !dbg !2635, !tbaa !622
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2635
  %64 = load i8*, i8** %63, align 8, !dbg !2635, !tbaa !622
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2635
  %66 = load i8*, i8** %65, align 8, !dbg !2635, !tbaa !622
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2635
  %68 = load i8*, i8** %67, align 8, !dbg !2635, !tbaa !622
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2635
  %70 = load i8*, i8** %69, align 8, !dbg !2635, !tbaa !622
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2635
  br label %146, !dbg !2636

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #9, !dbg !2637
  %74 = load i8*, i8** %4, align 8, !dbg !2637, !tbaa !622
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2637
  %76 = load i8*, i8** %75, align 8, !dbg !2637, !tbaa !622
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2637
  %78 = load i8*, i8** %77, align 8, !dbg !2637, !tbaa !622
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2637
  %80 = load i8*, i8** %79, align 8, !dbg !2637, !tbaa !622
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2637
  %82 = load i8*, i8** %81, align 8, !dbg !2637, !tbaa !622
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2637
  %84 = load i8*, i8** %83, align 8, !dbg !2637, !tbaa !622
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2637
  %86 = load i8*, i8** %85, align 8, !dbg !2637, !tbaa !622
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2637
  br label %146, !dbg !2638

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #9, !dbg !2639
  %90 = load i8*, i8** %4, align 8, !dbg !2639, !tbaa !622
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2639
  %92 = load i8*, i8** %91, align 8, !dbg !2639, !tbaa !622
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2639
  %94 = load i8*, i8** %93, align 8, !dbg !2639, !tbaa !622
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2639
  %96 = load i8*, i8** %95, align 8, !dbg !2639, !tbaa !622
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2639
  %98 = load i8*, i8** %97, align 8, !dbg !2639, !tbaa !622
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2639
  %100 = load i8*, i8** %99, align 8, !dbg !2639, !tbaa !622
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2639
  %102 = load i8*, i8** %101, align 8, !dbg !2639, !tbaa !622
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2639
  %104 = load i8*, i8** %103, align 8, !dbg !2639, !tbaa !622
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2639
  br label %146, !dbg !2640

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #9, !dbg !2641
  %108 = load i8*, i8** %4, align 8, !dbg !2641, !tbaa !622
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2641
  %110 = load i8*, i8** %109, align 8, !dbg !2641, !tbaa !622
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2641
  %112 = load i8*, i8** %111, align 8, !dbg !2641, !tbaa !622
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2641
  %114 = load i8*, i8** %113, align 8, !dbg !2641, !tbaa !622
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2641
  %116 = load i8*, i8** %115, align 8, !dbg !2641, !tbaa !622
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2641
  %118 = load i8*, i8** %117, align 8, !dbg !2641, !tbaa !622
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2641
  %120 = load i8*, i8** %119, align 8, !dbg !2641, !tbaa !622
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2641
  %122 = load i8*, i8** %121, align 8, !dbg !2641, !tbaa !622
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2641
  %124 = load i8*, i8** %123, align 8, !dbg !2641, !tbaa !622
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2641
  br label %146, !dbg !2642

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #9, !dbg !2643
  %128 = load i8*, i8** %4, align 8, !dbg !2643, !tbaa !622
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2643
  %130 = load i8*, i8** %129, align 8, !dbg !2643, !tbaa !622
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2643
  %132 = load i8*, i8** %131, align 8, !dbg !2643, !tbaa !622
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2643
  %134 = load i8*, i8** %133, align 8, !dbg !2643, !tbaa !622
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2643
  %136 = load i8*, i8** %135, align 8, !dbg !2643, !tbaa !622
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2643
  %138 = load i8*, i8** %137, align 8, !dbg !2643, !tbaa !622
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2643
  %140 = load i8*, i8** %139, align 8, !dbg !2643, !tbaa !622
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2643
  %142 = load i8*, i8** %141, align 8, !dbg !2643, !tbaa !622
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2643
  %144 = load i8*, i8** %143, align 8, !dbg !2643, !tbaa !622
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2643
  br label %146, !dbg !2644

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2645
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2646 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2650, metadata !615), !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2651, metadata !615), !dbg !2657
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2652, metadata !615), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2653, metadata !615), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2654, metadata !615), !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2655, metadata !615), !dbg !2661
  br label %6, !dbg !2662

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2655, metadata !615), !dbg !2661
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2664
  %9 = load i8*, i8** %8, align 8, !dbg !2664, !tbaa !622
  %10 = icmp eq i8* %9, null, !dbg !2666
  %11 = add i64 %7, 1, !dbg !2667
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2655, metadata !615), !dbg !2661
  br i1 %10, label %12, label %6, !dbg !2666, !llvm.loop !2668

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2670
  ret void, !dbg !2671
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2672 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2683, metadata !615), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2684, metadata !615), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2685, metadata !615), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2686, metadata !615), !dbg !2694
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2687, metadata !615), !dbg !2695
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2696
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2696
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2689, metadata !615), !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %11 = load i32, i32* %8, align 8, !dbg !2699
  %12 = icmp ult i32 %11, 41, !dbg !2699
  br i1 %12, label %13, label %18, !dbg !2699

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2699
  %15 = sext i32 %11 to i64, !dbg !2699
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2699
  %17 = add i32 %11, 8, !dbg !2699
  store i32 %17, i32* %8, align 8, !dbg !2699
  br label %21, !dbg !2699

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2699
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2699
  store i8* %20, i8** %10, align 8, !dbg !2699
  br label %21, !dbg !2699

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2699
  %25 = load i8*, i8** %24, align 8, !dbg !2699
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2702
  store i8* %25, i8** %26, align 16, !dbg !2703, !tbaa !622
  %27 = icmp eq i8* %25, null, !dbg !2704
  br i1 %27, label %30, label %28, !dbg !2705

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %29 = icmp ult i32 %22, 41, !dbg !2699
  br i1 %29, label %35, label %32, !dbg !2699

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2706
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2707
  ret void, !dbg !2707

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2699
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2699
  store i8* %34, i8** %10, align 8, !dbg !2699
  br label %40, !dbg !2699

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2699
  %37 = sext i32 %22 to i64, !dbg !2699
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2699
  %39 = add i32 %22, 8, !dbg !2699
  store i32 %39, i32* %8, align 8, !dbg !2699
  br label %40, !dbg !2699

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2699
  %44 = load i8*, i8** %43, align 8, !dbg !2699
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2702
  store i8* %44, i8** %45, align 8, !dbg !2703, !tbaa !622
  %46 = icmp eq i8* %44, null, !dbg !2704
  br i1 %46, label %30, label %47, !dbg !2705

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %48 = icmp ult i32 %41, 41, !dbg !2699
  br i1 %48, label %52, label %49, !dbg !2699

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2699
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2699
  store i8* %51, i8** %10, align 8, !dbg !2699
  br label %57, !dbg !2699

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2699
  %54 = sext i32 %41 to i64, !dbg !2699
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2699
  %56 = add i32 %41, 8, !dbg !2699
  store i32 %56, i32* %8, align 8, !dbg !2699
  br label %57, !dbg !2699

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2699
  %61 = load i8*, i8** %60, align 8, !dbg !2699
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2702
  store i8* %61, i8** %62, align 16, !dbg !2703, !tbaa !622
  %63 = icmp eq i8* %61, null, !dbg !2704
  br i1 %63, label %30, label %64, !dbg !2705

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %65 = icmp ult i32 %58, 41, !dbg !2699
  br i1 %65, label %69, label %66, !dbg !2699

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2699
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2699
  store i8* %68, i8** %10, align 8, !dbg !2699
  br label %74, !dbg !2699

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2699
  %71 = sext i32 %58 to i64, !dbg !2699
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2699
  %73 = add i32 %58, 8, !dbg !2699
  store i32 %73, i32* %8, align 8, !dbg !2699
  br label %74, !dbg !2699

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2699
  %78 = load i8*, i8** %77, align 8, !dbg !2699
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2702
  store i8* %78, i8** %79, align 8, !dbg !2703, !tbaa !622
  %80 = icmp eq i8* %78, null, !dbg !2704
  br i1 %80, label %30, label %81, !dbg !2705

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %82 = icmp ult i32 %75, 41, !dbg !2699
  br i1 %82, label %86, label %83, !dbg !2699

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2699
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2699
  store i8* %85, i8** %10, align 8, !dbg !2699
  br label %91, !dbg !2699

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2699
  %88 = sext i32 %75 to i64, !dbg !2699
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2699
  %90 = add i32 %75, 8, !dbg !2699
  store i32 %90, i32* %8, align 8, !dbg !2699
  br label %91, !dbg !2699

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2699
  %95 = load i8*, i8** %94, align 8, !dbg !2699
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2702
  store i8* %95, i8** %96, align 16, !dbg !2703, !tbaa !622
  %97 = icmp eq i8* %95, null, !dbg !2704
  br i1 %97, label %30, label %98, !dbg !2705

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %99 = icmp ult i32 %92, 41, !dbg !2699
  br i1 %99, label %103, label %100, !dbg !2699

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2699
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2699
  store i8* %102, i8** %10, align 8, !dbg !2699
  br label %108, !dbg !2699

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2699
  %105 = sext i32 %92 to i64, !dbg !2699
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2699
  %107 = add i32 %92, 8, !dbg !2699
  store i32 %107, i32* %8, align 8, !dbg !2699
  br label %108, !dbg !2699

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2699
  %111 = load i8*, i8** %110, align 8, !dbg !2699
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2702
  store i8* %111, i8** %112, align 8, !dbg !2703, !tbaa !622
  %113 = icmp eq i8* %111, null, !dbg !2704
  br i1 %113, label %30, label %114, !dbg !2705

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %115 = load i8*, i8** %10, align 8, !dbg !2699
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2699
  store i8* %116, i8** %10, align 8, !dbg !2699
  %117 = bitcast i8* %115 to i8**, !dbg !2699
  %118 = load i8*, i8** %117, align 8, !dbg !2699
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2702
  store i8* %118, i8** %119, align 16, !dbg !2703, !tbaa !622
  %120 = icmp eq i8* %118, null, !dbg !2704
  br i1 %120, label %30, label %121, !dbg !2705

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %122 = load i8*, i8** %10, align 8, !dbg !2699
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2699
  store i8* %123, i8** %10, align 8, !dbg !2699
  %124 = bitcast i8* %122 to i8**, !dbg !2699
  %125 = load i8*, i8** %124, align 8, !dbg !2699
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2702
  store i8* %125, i8** %126, align 8, !dbg !2703, !tbaa !622
  %127 = icmp eq i8* %125, null, !dbg !2704
  br i1 %127, label %30, label %128, !dbg !2705

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %129 = load i8*, i8** %10, align 8, !dbg !2699
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2699
  store i8* %130, i8** %10, align 8, !dbg !2699
  %131 = bitcast i8* %129 to i8**, !dbg !2699
  %132 = load i8*, i8** %131, align 8, !dbg !2699
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2702
  store i8* %132, i8** %133, align 16, !dbg !2703, !tbaa !622
  %134 = icmp eq i8* %132, null, !dbg !2704
  br i1 %134, label %30, label %135, !dbg !2705

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2688, metadata !615), !dbg !2698
  %136 = load i8*, i8** %10, align 8, !dbg !2699
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2699
  store i8* %137, i8** %10, align 8, !dbg !2699
  %138 = bitcast i8* %136 to i8**, !dbg !2699
  %139 = load i8*, i8** %138, align 8, !dbg !2699
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2702
  store i8* %139, i8** %140, align 8, !dbg !2703, !tbaa !622
  %141 = icmp eq i8* %139, null, !dbg !2704
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2688, metadata !615), !dbg !2698
  %142 = select i1 %141, i64 9, i64 10, !dbg !2705
  br label %30, !dbg !2705
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2708 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2712, metadata !615), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2713, metadata !615), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2714, metadata !615), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2715, metadata !615), !dbg !2725
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2726
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2726
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2716, metadata !615), !dbg !2727
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2728
  call void @llvm.va_start(i8* nonnull %6), !dbg !2728
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2729
  call void @llvm.va_end(i8* nonnull %6), !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2731
  ret void, !dbg !2731
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2732 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #9, !dbg !2733
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #9, !dbg !2733
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #9, !dbg !2734
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.83, i64 0, i64 0)) #9, !dbg !2734
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2735
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2735, !tbaa !622
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2735
  ret void, !dbg !2736
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2737 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2741, metadata !615), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2742, metadata !615), !dbg !2744
  %3 = udiv i64 9223372036854775807, %1, !dbg !2745
  %4 = icmp ult i64 %3, %0, !dbg !2745
  br i1 %4, label %5, label %6, !dbg !2747

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2748
  unreachable, !dbg !2748

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2750, metadata !615) #9, !dbg !2757
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2759
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2756, metadata !615) #9, !dbg !2760
  %9 = icmp eq i8* %8, null, !dbg !2761
  %10 = icmp ne i64 %7, 0, !dbg !2763
  %11 = and i1 %10, %9, !dbg !2764
  br i1 %11, label %12, label %13, !dbg !2764

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2765
  unreachable, !dbg !2765

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2766
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2751 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2750, metadata !615), !dbg !2767
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2768
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2756, metadata !615), !dbg !2769
  %3 = icmp eq i8* %2, null, !dbg !2770
  %4 = icmp ne i64 %0, 0, !dbg !2771
  %5 = and i1 %4, %3, !dbg !2772
  br i1 %5, label %6, label %7, !dbg !2772

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2773
  unreachable, !dbg !2773

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2774
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2775 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2779, metadata !615), !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2780, metadata !615), !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2781, metadata !615), !dbg !2784
  %4 = udiv i64 9223372036854775807, %2, !dbg !2785
  %5 = icmp ult i64 %4, %1, !dbg !2785
  br i1 %5, label %6, label %7, !dbg !2787

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2788
  unreachable, !dbg !2788

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2790, metadata !615) #9, !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2795, metadata !615) #9, !dbg !2798
  %9 = icmp eq i64 %8, 0, !dbg !2799
  %10 = icmp ne i8* %0, null, !dbg !2801
  %11 = and i1 %10, %9, !dbg !2802
  br i1 %11, label %12, label %13, !dbg !2802

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2803
  br label %19, !dbg !2805

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2790, metadata !615) #9, !dbg !2796
  %15 = icmp eq i8* %14, null, !dbg !2807
  %16 = icmp ne i64 %8, 0, !dbg !2809
  %17 = and i1 %16, %15, !dbg !2810
  br i1 %17, label %18, label %19, !dbg !2810

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2811
  unreachable, !dbg !2811

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2812
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2791 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2790, metadata !615), !dbg !2813
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2795, metadata !615), !dbg !2814
  %3 = icmp eq i64 %1, 0, !dbg !2815
  %4 = icmp ne i8* %0, null, !dbg !2816
  %5 = and i1 %4, %3, !dbg !2817
  br i1 %5, label %6, label %7, !dbg !2817

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2818
  br label %13, !dbg !2819

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2790, metadata !615), !dbg !2813
  %9 = icmp eq i8* %8, null, !dbg !2821
  %10 = icmp ne i64 %1, 0, !dbg !2822
  %11 = and i1 %10, %9, !dbg !2823
  br i1 %11, label %12, label %13, !dbg !2823

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2824
  unreachable, !dbg !2824

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2825
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !575 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !580, metadata !615), !dbg !2826
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !581, metadata !615), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !582, metadata !615), !dbg !2828
  %4 = load i64, i64* %1, align 8, !dbg !2829, !tbaa !1866
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !583, metadata !615), !dbg !2830
  %5 = icmp eq i8* %0, null, !dbg !2831
  br i1 %5, label %6, label %13, !dbg !2833

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2834
  br i1 %7, label %8, label %17, !dbg !2837

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !583, metadata !615), !dbg !2830
  %10 = icmp ugt i64 %2, 128, !dbg !2840
  %11 = zext i1 %10 to i64, !dbg !2840
  %12 = add nuw nsw i64 %9, %11, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !583, metadata !615), !dbg !2830
  br label %17, !dbg !2842

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2843
  %15 = icmp ugt i64 %14, %4, !dbg !2846
  br i1 %15, label %20, label %16, !dbg !2847

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2848
  unreachable, !dbg !2848

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !2830
  store i64 %18, i64* %1, align 8, !dbg !2849, !tbaa !1866
  %19 = mul i64 %18, %2, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2790, metadata !615) #9, !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2795, metadata !615) #9, !dbg !2853
  br label %27, !dbg !2854

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2855
  %22 = add i64 %4, 1, !dbg !2856
  %23 = add i64 %22, %21, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !2830
  store i64 %23, i64* %1, align 8, !dbg !2849, !tbaa !1866
  %24 = mul i64 %23, %2, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2790, metadata !615) #9, !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2795, metadata !615) #9, !dbg !2853
  %25 = icmp eq i64 %24, 0, !dbg !2858
  br i1 %25, label %26, label %27, !dbg !2854

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2859
  br label %34, !dbg !2860

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2790, metadata !615) #9, !dbg !2851
  %30 = icmp eq i8* %29, null, !dbg !2862
  %31 = icmp ne i64 %28, 0, !dbg !2863
  %32 = and i1 %31, %30, !dbg !2864
  br i1 %32, label %33, label %34, !dbg !2864

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2865
  unreachable, !dbg !2865

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2866
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2867 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2869, metadata !615), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2750, metadata !615) #9, !dbg !2871
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2756, metadata !615) #9, !dbg !2874
  %3 = icmp eq i8* %2, null, !dbg !2875
  %4 = icmp ne i64 %0, 0, !dbg !2876
  %5 = and i1 %4, %3, !dbg !2877
  br i1 %5, label %6, label %7, !dbg !2877

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2878
  unreachable, !dbg !2878

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2879
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2880 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2884, metadata !615), !dbg !2886
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2885, metadata !615), !dbg !2887
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !580, metadata !615) #9, !dbg !2888
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !581, metadata !615) #9, !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !582, metadata !615) #9, !dbg !2891
  %3 = load i64, i64* %1, align 8, !dbg !2892, !tbaa !1866
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !583, metadata !615) #9, !dbg !2893
  %4 = icmp eq i8* %0, null, !dbg !2894
  br i1 %4, label %5, label %8, !dbg !2895

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !583, metadata !615) #9, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !583, metadata !615) #9, !dbg !2893
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #9, !dbg !2893
  store i64 %7, i64* %1, align 8, !dbg !2898, !tbaa !1866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2790, metadata !615) #9, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2795, metadata !615) #9, !dbg !2901
  br label %17, !dbg !2902

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2903
  br i1 %9, label %11, label %10, !dbg !2904

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2905
  unreachable, !dbg !2905

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2906
  %13 = add i64 %3, 1, !dbg !2907
  %14 = add i64 %13, %12, !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #9, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #9, !dbg !2893
  store i64 %14, i64* %1, align 8, !dbg !2898, !tbaa !1866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2790, metadata !615) #9, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2795, metadata !615) #9, !dbg !2901
  %15 = icmp eq i64 %14, 0, !dbg !2909
  br i1 %15, label %16, label %17, !dbg !2902

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2910
  br label %24, !dbg !2911

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2790, metadata !615) #9, !dbg !2899
  %20 = icmp eq i8* %19, null, !dbg !2913
  %21 = icmp ne i64 %18, 0, !dbg !2914
  %22 = and i1 %21, %20, !dbg !2915
  br i1 %22, label %23, label %24, !dbg !2915

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2916
  unreachable, !dbg !2916

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2917
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2918 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2920, metadata !615), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2750, metadata !615) #9, !dbg !2922
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2756, metadata !615) #9, !dbg !2925
  %3 = icmp eq i8* %2, null, !dbg !2926
  %4 = icmp ne i64 %0, 0, !dbg !2927
  %5 = and i1 %4, %3, !dbg !2928
  br i1 %5, label %6, label %7, !dbg !2928

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2929
  unreachable, !dbg !2929

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2930
  ret i8* %2, !dbg !2931
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2932 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2934, metadata !615), !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2935, metadata !615), !dbg !2938
  %3 = udiv i64 9223372036854775807, %1, !dbg !2939
  %4 = icmp ult i64 %3, %0, !dbg !2939
  br i1 %4, label %8, label %5, !dbg !2941

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2942
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2936, metadata !615), !dbg !2943
  %7 = icmp eq i8* %6, null, !dbg !2944
  br i1 %7, label %8, label %9, !dbg !2945

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2946
  unreachable, !dbg !2946

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2947
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2948 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2954, metadata !615), !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2955, metadata !615), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2750, metadata !615) #9, !dbg !2958
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2756, metadata !615) #9, !dbg !2961
  %4 = icmp eq i8* %3, null, !dbg !2962
  %5 = icmp ne i64 %1, 0, !dbg !2963
  %6 = and i1 %5, %4, !dbg !2964
  br i1 %6, label %7, label %8, !dbg !2964

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2965
  unreachable, !dbg !2965

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2966
  ret i8* %3, !dbg !2967
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2968 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2970, metadata !615), !dbg !2971
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2972
  %3 = add i64 %2, 1, !dbg !2973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2954, metadata !615) #9, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2955, metadata !615) #9, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2750, metadata !615) #9, !dbg !2977
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2756, metadata !615) #9, !dbg !2980
  %5 = icmp eq i8* %4, null, !dbg !2981
  %6 = icmp ne i64 %3, 0, !dbg !2982
  %7 = and i1 %6, %5, !dbg !2983
  br i1 %7, label %8, label %9, !dbg !2983

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2984
  unreachable, !dbg !2984

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !2985
  ret i8* %4, !dbg !2986
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2987 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2989, !tbaa !685
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.94, i64 0, i64 0), i32 5) #9, !dbg !2990
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* %2) #9, !dbg !2991
  tail call void @abort() #15, !dbg !2992
  unreachable, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2993 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2996, metadata !615), !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2997, metadata !615), !dbg !3003
  %3 = icmp eq i64 %0, 0, !dbg !3004
  %4 = icmp eq i64 %1, 0, !dbg !3005
  %5 = or i1 %3, %4, !dbg !3006
  br i1 %5, label %12, label %6, !dbg !3006

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2999, metadata !615), !dbg !3008
  %8 = udiv i64 %7, %1, !dbg !3009
  %9 = icmp eq i64 %8, %0, !dbg !3011
  br i1 %9, label %12, label %10, !dbg !3012

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3013
  store i32 12, i32* %11, align 4, !dbg !3015, !tbaa !685
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2996, metadata !615), !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2997, metadata !615), !dbg !3003
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3016
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2998, metadata !615), !dbg !3017
  br label %16, !dbg !3018

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3019
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !178 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !186, metadata !615), !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !187, metadata !615), !dbg !3021
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !3022
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !188, metadata !615), !dbg !3023
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !201, metadata !615), !dbg !3024
  call void @llvm.va_start(i8* nonnull %4), !dbg !3025
  %5 = icmp eq i32 %1, 1030, !dbg !3026
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !3026

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3027

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3027
  %12 = load i8*, i8** %11, align 16, !dbg !3027
  %13 = sext i32 %7 to i64, !dbg !3027
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3027
  %15 = add i32 %7, 8, !dbg !3027
  store i32 %15, i32* %6, align 16, !dbg !3027
  br label %20, !dbg !3027

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3027
  %18 = load i8*, i8** %17, align 8, !dbg !3027
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3027
  store i8* %19, i8** %17, align 8, !dbg !3027
  br label %20, !dbg !3027

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3027
  %23 = load i32, i32* %22, align 4, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !202, metadata !615), !dbg !3028
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3029, !tbaa !685
  %25 = icmp sgt i32 %24, -1, !dbg !3031
  br i1 %25, label %26, label %39, !dbg !3032

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9, !dbg !3033
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !201, metadata !615), !dbg !3024
  %28 = icmp sgt i32 %27, -1, !dbg !3035
  br i1 %28, label %36, label %29, !dbg !3037

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3038
  %31 = load i32, i32* %30, align 4, !dbg !3038, !tbaa !685
  %32 = icmp eq i32 %31, 22, !dbg !3039
  br i1 %32, label %33, label %36, !dbg !3040

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3041
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !201, metadata !615), !dbg !3024
  %35 = icmp slt i32 %34, 0, !dbg !3043
  br i1 %35, label %75, label %36, !dbg !3045

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !201, metadata !615), !dbg !3024
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !685
  br label %42, !dbg !3046

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !201, metadata !615), !dbg !3024
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3048
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !3048
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !201, metadata !615), !dbg !3024
  %45 = icmp sgt i32 %44, -1, !dbg !3049
  %46 = icmp eq i32 %43, -1, !dbg !3050
  %47 = and i1 %45, %46, !dbg !3051
  br i1 %47, label %48, label %75, !dbg !3051

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !205, metadata !615), !dbg !3053
  %50 = icmp slt i32 %49, 0, !dbg !3054
  br i1 %50, label %55, label %51, !dbg !3055

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !3056
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #9, !dbg !3057
  %54 = icmp eq i32 %53, -1, !dbg !3058
  br i1 %54, label %55, label %75, !dbg !3059

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !3060
  %57 = load i32, i32* %56, align 4, !dbg !3060, !tbaa !685
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !208, metadata !615), !dbg !3061
  %58 = call i32 @close(i32 %44) #9, !dbg !3062
  store i32 %57, i32* %56, align 4, !dbg !3063, !tbaa !685
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !201, metadata !615), !dbg !3024
  br label %75, !dbg !3064

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !3065

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3065
  %62 = load i8*, i8** %61, align 16, !dbg !3065
  %63 = sext i32 %7 to i64, !dbg !3065
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !3065
  %65 = add i32 %7, 8, !dbg !3065
  store i32 %65, i32* %6, align 16, !dbg !3065
  br label %70, !dbg !3065

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3065
  %68 = load i8*, i8** %67, align 8, !dbg !3065
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !3065
  store i8* %69, i8** %67, align 8, !dbg !3065
  br label %70, !dbg !3065

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !3065
  %73 = load i8*, i8** %72, align 8, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !211, metadata !615), !dbg !3066
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #9, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !201, metadata !615), !dbg !3024
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !201, metadata !615), !dbg !3024
  call void @llvm.va_end(i8* nonnull %4), !dbg !3068
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !3069
  ret i32 %76, !dbg !3070
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3071 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3088, metadata !615), !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3089, metadata !615), !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3090, metadata !615), !dbg !3099
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3091, metadata !615), !dbg !3100
  %6 = bitcast i32* %5 to i8*, !dbg !3101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3101
  %7 = icmp eq i32* %0, null, !dbg !3102
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3088, metadata !615), !dbg !3097
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3104
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3088, metadata !615), !dbg !3097
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3092, metadata !615), !dbg !3106
  %10 = icmp ugt i64 %9, -3, !dbg !3107
  %11 = icmp ne i64 %2, 0, !dbg !3108
  %12 = and i1 %11, %10, !dbg !3109
  br i1 %12, label %13, label %18, !dbg !3109

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3110
  br i1 %14, label %18, label %15, !dbg !3111

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3112, !tbaa !1130
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3094, metadata !615), !dbg !3113
  %17 = zext i8 %16 to i32, !dbg !3114
  store i32 %17, i32* %8, align 4, !dbg !3115, !tbaa !685
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3116
  ret i64 %19, !dbg !3116
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3117 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3162, metadata !615), !dbg !3167
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3168
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3169, metadata !615), !dbg !3173
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3175
  %4 = load i32, i32* %3, align 8, !dbg !3175, !tbaa !3176
  %5 = and i32 %4, 32, !dbg !3175
  %6 = icmp eq i32 %5, 0, !dbg !3178
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3179
  %8 = icmp ne i32 %7, 0, !dbg !3180
  br i1 %6, label %9, label %19, !dbg !3181

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3183
  %11 = xor i1 %8, true, !dbg !3184
  %12 = or i1 %10, %11, !dbg !3184
  %13 = sext i1 %8 to i32, !dbg !3184
  br i1 %12, label %22, label %14, !dbg !3184

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3185
  %16 = load i32, i32* %15, align 4, !dbg !3185, !tbaa !685
  %17 = icmp ne i32 %16, 9, !dbg !3186
  %18 = sext i1 %17 to i32, !dbg !3187
  br label %22, !dbg !3187

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3188

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3190
  store i32 0, i32* %21, align 4, !dbg !3192, !tbaa !685
  br label %22, !dbg !3190

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3193
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3194 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3199, metadata !615), !dbg !3202
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3200, metadata !615), !dbg !3203
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3201, metadata !615), !dbg !3205
  %3 = icmp eq i8* %2, null, !dbg !3206
  br i1 %3, label %11, label %4, !dbg !3208

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i64 0, i64 0)) #14, !dbg !3209
  %6 = icmp eq i32 %5, 0, !dbg !3214
  br i1 %6, label %10, label %7, !dbg !3215

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0)) #14, !dbg !3216
  %9 = icmp eq i32 %8, 0, !dbg !3217
  br i1 %9, label %10, label %11, !dbg !3218

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3200, metadata !615), !dbg !3203
  br label %11, !dbg !3219

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3220
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3221 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3227, metadata !615), !dbg !3301
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3294, metadata !615), !dbg !3304
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3225, metadata !615), !dbg !3306
  %4 = icmp eq i8* %3, null, !dbg !3307
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* %3, !dbg !3309
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3225, metadata !615), !dbg !3306
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3310, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3241, metadata !615) #9, !dbg !3311
  %7 = icmp eq i8* %6, null, !dbg !3312
  br i1 %7, label %8, label %123, !dbg !3313

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i64 0, i64 0)) #9, !dbg !3314
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3242, metadata !615) #9, !dbg !3315
  %10 = icmp eq i8* %9, null, !dbg !3316
  br i1 %10, label %14, label %11, !dbg !3318

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3319, !tbaa !1130
  %13 = icmp eq i8 %12, 0, !dbg !3320
  br i1 %13, label %14, label %15, !dbg !3321

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3322

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3242, metadata !615) #9, !dbg !3315
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3245, metadata !615) #9, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3247, metadata !615) #9, !dbg !3325
  %18 = icmp eq i64 %17, 0, !dbg !3326
  br i1 %18, label %24, label %19, !dbg !3327

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3328
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3328
  %22 = load i8, i8* %21, align 1, !dbg !3328, !tbaa !1130
  %23 = icmp ne i8 %22, 47, !dbg !3328
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3329
  %27 = add i64 %17, 14, !dbg !3330
  %28 = add i64 %27, %26, !dbg !3331
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3244, metadata !615) #9, !dbg !3333
  %30 = icmp eq i8* %29, null, !dbg !3334
  br i1 %30, label %121, label %31, !dbg !3334

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3335
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3338

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3339, !tbaa !1130
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3341
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3342
  br label %37, !dbg !3343

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3341
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3342
  br label %37, !dbg !3343

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3344
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3249, metadata !615) #9, !dbg !3345
  %39 = icmp slt i32 %38, 0, !dbg !3346
  br i1 %39, label %119, label %40, !dbg !3347

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i64 0, i64 0)) #9, !dbg !3348
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3250, metadata !615) #9, !dbg !3349
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3350
  br i1 %42, label %43, label %45, !dbg !3351

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3352
  br label %119, !dbg !3354

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3291, metadata !615) #9, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3357

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3358

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3291, metadata !615) #9, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3358
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3359
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3360, metadata !615) #9, !dbg !3365
  %54 = load i8*, i8** %48, align 8, !dbg !3367, !tbaa !3368
  %55 = load i8*, i8** %49, align 8, !dbg !3367, !tbaa !3369
  %56 = icmp ult i8* %54, %55, !dbg !3367
  br i1 %56, label %59, label %57, !dbg !3367, !prof !3370

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3367
  br label %63, !dbg !3367

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3367
  store i8* %60, i8** %48, align 8, !dbg !3367, !tbaa !3368
  %61 = load i8, i8* %54, align 1, !dbg !3367, !tbaa !1130
  %62 = zext i8 %61 to i32, !dbg !3367
  br label %63, !dbg !3367

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3367
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3293, metadata !615) #9, !dbg !3371
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3372, !llvm.loop !3373

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3378

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3360, metadata !615) #9, !dbg !3380
  %67 = load i8*, i8** %48, align 8, !dbg !3378, !tbaa !3368
  %68 = load i8*, i8** %49, align 8, !dbg !3378, !tbaa !3369
  %69 = icmp ult i8* %67, %68, !dbg !3378
  br i1 %69, label %72, label %70, !dbg !3378, !prof !3370

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3378
  br label %76, !dbg !3378

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3378
  store i8* %73, i8** %48, align 8, !dbg !3378, !tbaa !3368
  %74 = load i8, i8* %67, align 1, !dbg !3378, !tbaa !1130
  %75 = zext i8 %74 to i32, !dbg !3378
  br label %76, !dbg !3378

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3378
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3293, metadata !615) #9, !dbg !3371
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3381, !llvm.loop !3382

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3385
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.115, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3386
  %81 = icmp slt i32 %80, 2, !dbg !3388
  br i1 %81, label %112, label %82, !dbg !3389

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3298, metadata !615) #9, !dbg !3391
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3299, metadata !615) #9, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3300, metadata !615) #9, !dbg !3394
  %85 = icmp eq i64 %51, 0, !dbg !3395
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3397

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  %90 = add i64 %87, 2, !dbg !3398
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3291, metadata !615) #9, !dbg !3355
  br label %96, !dbg !3401

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  %94 = add i64 %93, 1, !dbg !3404
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3291, metadata !615) #9, !dbg !3355
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3291, metadata !615) #9, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  %99 = icmp eq i8* %98, null, !dbg !3406
  br i1 %99, label %100, label %102, !dbg !3408

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  call void @free(i8* %52) #9, !dbg !3409
  br label %112, !dbg !3411

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3412
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3412
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3413
  %104 = xor i64 %84, -1, !dbg !3414
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3414
  %106 = xor i64 %83, -1, !dbg !3415
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3416, metadata !615) #9, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3424, metadata !615) #9, !dbg !3425
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3427
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3416, metadata !615) #9, !dbg !3429
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3424, metadata !615) #9, !dbg !3429
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3431
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3291, metadata !615) #9, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3292, metadata !615) #9, !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3412
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3412
  br label %50, !dbg !3433, !llvm.loop !3382

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3412
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3412
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3434
  %116 = icmp eq i64 %113, 0, !dbg !3435
  br i1 %116, label %119, label %117, !dbg !3437

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3438
  store i8 0, i8* %118, align 1, !dbg !3440, !tbaa !1130
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3241, metadata !615) #9, !dbg !3311
  call void @free(i8* %29) #9, !dbg !3441
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3241, metadata !615) #9, !dbg !3311
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3442, !tbaa !622
  br label %123, !dbg !3443

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3241, metadata !615) #9, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3226, metadata !615), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3226, metadata !615), !dbg !3444
  %125 = load i8, i8* %124, align 1, !dbg !3445, !tbaa !1130
  %126 = icmp eq i8 %125, 0, !dbg !3447
  br i1 %126, label %152, label %127, !dbg !3448

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3449

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3226, metadata !615), !dbg !3444
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3449
  %132 = icmp eq i32 %131, 0, !dbg !3451
  br i1 %132, label %139, label %133, !dbg !3452

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3453
  br i1 %134, label %135, label %143, !dbg !3454

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3455
  %137 = load i8, i8* %136, align 1, !dbg !3455, !tbaa !1130
  %138 = icmp eq i8 %137, 0, !dbg !3456
  br i1 %138, label %139, label %143, !dbg !3457

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3458
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3460
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3225, metadata !615), !dbg !3306
  br label %152, !dbg !3462

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3463
  %145 = add i64 %144, 1, !dbg !3464
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3226, metadata !615), !dbg !3444
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3466
  %148 = add i64 %147, 1, !dbg !3467
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3226, metadata !615), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3226, metadata !615), !dbg !3444
  %150 = load i8, i8* %149, align 1, !dbg !3445, !tbaa !1130
  %151 = icmp eq i8 %150, 0, !dbg !3447
  br i1 %151, label %152, label %128, !dbg !3448, !llvm.loop !3469

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3225, metadata !615), !dbg !3306
  %154 = load i8, i8* %153, align 1, !dbg !3471, !tbaa !1130
  %155 = icmp eq i8 %154, 0, !dbg !3473
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %153, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3225, metadata !615), !dbg !3306
  ret i8* %156, !dbg !3475
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3476 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3521, metadata !615), !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3522, metadata !615), !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3524, metadata !615), !dbg !3527
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3523, metadata !615), !dbg !3529
  %3 = icmp slt i32 %2, 0, !dbg !3530
  br i1 %3, label %4, label %6, !dbg !3532

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3533
  br label %24, !dbg !3534

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3535
  %8 = icmp eq i32 %7, 0, !dbg !3535
  br i1 %8, label %13, label %9, !dbg !3537

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3538
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3539
  %12 = icmp eq i64 %11, -1, !dbg !3540
  br i1 %12, label %16, label %13, !dbg !3541

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3542
  %15 = icmp eq i32 %14, 0, !dbg !3542
  br i1 %15, label %16, label %18, !dbg !3543

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3522, metadata !615), !dbg !3526
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3524, metadata !615), !dbg !3527
  br label %24, !dbg !3545

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3546
  %20 = load i32, i32* %19, align 4, !dbg !3546, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3522, metadata !615), !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3522, metadata !615), !dbg !3526
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3524, metadata !615), !dbg !3527
  %22 = icmp eq i32 %20, 0, !dbg !3547
  br i1 %22, label %24, label %23, !dbg !3545

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3549, !tbaa !685
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3524, metadata !615), !dbg !3527
  br label %24, !dbg !3551

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3552
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3553 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3598, metadata !615), !dbg !3599
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3600
  br i1 %2, label %6, label %3, !dbg !3602

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3603
  %5 = icmp eq i32 %4, 0, !dbg !3603
  br i1 %5, label %6, label %8, !dbg !3604

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3605
  br label %17, !dbg !3606

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3607, metadata !615) #9, !dbg !3612
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3614
  %10 = load i32, i32* %9, align 8, !dbg !3614, !tbaa !3176
  %11 = and i32 %10, 256, !dbg !3616
  %12 = icmp eq i32 %11, 0, !dbg !3616
  br i1 %12, label %15, label %13, !dbg !3617

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3618
  br label %15, !dbg !3618

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3619
  br label %17, !dbg !3620

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3621
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3622 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3668, metadata !615), !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3669, metadata !615), !dbg !3675
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3670, metadata !615), !dbg !3676
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3677
  %5 = load i8*, i8** %4, align 8, !dbg !3677, !tbaa !3369
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3678
  %7 = load i8*, i8** %6, align 8, !dbg !3678, !tbaa !3368
  %8 = icmp eq i8* %5, %7, !dbg !3679
  br i1 %8, label %9, label %28, !dbg !3680

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3681
  %11 = load i8*, i8** %10, align 8, !dbg !3681, !tbaa !3682
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3683
  %13 = load i8*, i8** %12, align 8, !dbg !3683, !tbaa !3684
  %14 = icmp eq i8* %11, %13, !dbg !3685
  br i1 %14, label %15, label %28, !dbg !3686

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3687
  %17 = load i8*, i8** %16, align 8, !dbg !3687, !tbaa !3688
  %18 = icmp eq i8* %17, null, !dbg !3689
  br i1 %18, label %19, label %28, !dbg !3690

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3691
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3671, metadata !615), !dbg !3693
  %22 = icmp eq i64 %21, -1, !dbg !3694
  br i1 %22, label %30, label %23, !dbg !3696

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3697
  %25 = load i32, i32* %24, align 8, !dbg !3698, !tbaa !3176
  %26 = and i32 %25, -17, !dbg !3698
  store i32 %26, i32* %24, align 8, !dbg !3698, !tbaa !3176
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3699
  store i64 %21, i64* %27, align 8, !dbg !3700, !tbaa !3701
  br label %30, !dbg !3702

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3703
  br label %30, !dbg !3704

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3705
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
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !67, !73, !82, !89, !96, !562, !169, !570, !587, !589, !182, !591, !594, !596, !215, !598, !600, !602}
!llvm.ident = !{!604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604}
!llvm.module.flags = !{!605, !606, !607, !608, !609}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 48, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !29)
!3 = !DIFile(filename: "src/sync.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 40, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MODE_FILE", value: 0)
!8 = !DIEnumerator(name: "MODE_DATA", value: 1)
!9 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!10 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!25 = !{!26, !28}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !{!30, !0}
!30 = !DIGlobalVariableExpression(var: !31)
!31 = distinct !DIGlobalVariable(name: "infomap", scope: !32, file: !33, line: 632, type: !49, isLocal: true, isDefinition: true)
!32 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !33, file: !33, line: 630, type: !34, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !38)
!33 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!38 = !{!39, !40, !41, !48}
!39 = !DILocalVariable(name: "program", arg: 1, scope: !32, file: !33, line: 630, type: !36)
!40 = !DILocalVariable(name: "node", scope: !32, file: !33, line: 642, type: !36)
!41 = !DILocalVariable(name: "map_prog", scope: !32, file: !33, line: 643, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !32, file: !33, line: 632, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !44, file: !33, line: 632, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !33, line: 632, baseType: !36, size: 64, offset: 64)
!48 = !DILocalVariable(name: "lc_messages", scope: !32, file: !33, line: 655, type: !36)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 896, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1280, elements: !63)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !55, line: 50, size: 256, elements: !56)
!55 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !{!57, !58, !60, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !55, line: 52, baseType: !36, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !55, line: 55, baseType: !59, size: 32, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !55, line: 56, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !55, line: 57, baseType: !59, size: 32, offset: 192)
!63 = !{!64}
!64 = !DISubrange(count: 5)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "Version", scope: !67, file: !68, line: 2, type: !36, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !70)
!68 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !{}
!70 = !{!65}
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "file_name", scope: !73, file: !78, line: 36, type: !36, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !75)
!74 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{!71, !76}
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !73, file: !78, line: 46, type: !79, isLocal: true, isDefinition: true)
!78 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "exit_failure", scope: !82, file: !85, line: 24, type: !86, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !84)
!83 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!80}
!85 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "program_name", scope: !89, file: !93, line: 33, type: !36, isLocal: false, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !91, globals: !92)
!90 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !{!28, !26}
!92 = !{!87}
!93 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !96, file: !127, line: 77, type: !163, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !119, globals: !124)
!97 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!11, !99, !104}
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, size: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!102 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!103 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 46, size: 32, elements: !106)
!105 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!107 = !DIEnumerator(name: "_ISupper", value: 256)
!108 = !DIEnumerator(name: "_ISlower", value: 512)
!109 = !DIEnumerator(name: "_ISalpha", value: 1024)
!110 = !DIEnumerator(name: "_ISdigit", value: 2048)
!111 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!112 = !DIEnumerator(name: "_ISspace", value: 8192)
!113 = !DIEnumerator(name: "_ISprint", value: 16384)
!114 = !DIEnumerator(name: "_ISgraph", value: 32768)
!115 = !DIEnumerator(name: "_ISblank", value: 1)
!116 = !DIEnumerator(name: "_IScntrl", value: 2)
!117 = !DIEnumerator(name: "_ISpunct", value: 4)
!118 = !DIEnumerator(name: "_ISalnum", value: 8)
!119 = !{!59, !120, !121, !26}
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !{!94, !125, !132, !145, !147, !152, !159, !161}
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !96, file: !127, line: 93, type: !128, isLocal: false, isDefinition: true)
!127 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!130 = !{!131}
!131 = !DISubrange(count: 10)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !96, file: !127, line: 1043, type: !134, isLocal: false, isDefinition: true)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !127, line: 57, size: 448, elements: !135)
!135 = !{!136, !137, !138, !143, !144}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !134, file: !127, line: 60, baseType: !11, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !127, line: 63, baseType: !59, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !134, file: !127, line: 67, baseType: !139, size: 256, offset: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !141)
!140 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !134, file: !127, line: 70, baseType: !36, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !134, file: !127, line: 73, baseType: !36, size: 64, offset: 384)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !96, file: !127, line: 108, type: !134, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "slot0", scope: !96, file: !127, line: 834, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 256)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "slotvec", scope: !96, file: !127, line: 837, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !127, line: 826, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !127, line: 828, baseType: !121, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !155, file: !127, line: 829, baseType: !26, size: 64, offset: 64)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "nslots", scope: !96, file: !127, line: 835, type: !59, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "slotvec0", scope: !96, file: !127, line: 836, type: !155, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 704, elements: !165)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!165 = !{!166}
!166 = !DISubrange(count: 11)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !169, file: !172, line: 26, type: !173, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !171)
!170 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !{!167}
!172 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 47)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !178, file: !179, line: 335, type: !59, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "rpl_fcntl", scope: !179, file: !179, line: 272, type: !180, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !182, variables: !185)
!179 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !DISubroutineType(types: !181)
!181 = !{!59, !59, !59, null}
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !184)
!183 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !{!176}
!185 = !{!186, !187, !188, !201, !202, !205, !208, !211}
!186 = !DILocalVariable(name: "fd", arg: 1, scope: !178, file: !179, line: 272, type: !59)
!187 = !DILocalVariable(name: "action", arg: 2, scope: !178, file: !179, line: 272, type: !59)
!188 = !DILocalVariable(name: "arg", scope: !178, file: !179, line: 274, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !190, line: 30, baseType: !191)
!190 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !183, line: 274, baseType: !192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !199)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !183, line: 274, size: 192, elements: !194)
!194 = !{!195, !196, !197, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !193, file: !183, line: 274, baseType: !140, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !193, file: !183, line: 274, baseType: !140, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !193, file: !183, line: 274, baseType: !28, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !193, file: !183, line: 274, baseType: !28, size: 64, offset: 128)
!199 = !{!200}
!200 = !DISubrange(count: 1)
!201 = !DILocalVariable(name: "result", scope: !178, file: !179, line: 275, type: !59)
!202 = !DILocalVariable(name: "target", scope: !203, file: !179, line: 322, type: !59)
!203 = distinct !DILexicalBlock(scope: !204, file: !179, line: 321, column: 7)
!204 = distinct !DILexicalBlock(scope: !178, file: !179, line: 278, column: 5)
!205 = !DILocalVariable(name: "flags", scope: !206, file: !179, line: 359, type: !59)
!206 = distinct !DILexicalBlock(scope: !207, file: !179, line: 358, column: 11)
!207 = distinct !DILexicalBlock(scope: !203, file: !179, line: 357, column: 13)
!208 = !DILocalVariable(name: "saved_errno", scope: !209, file: !179, line: 362, type: !59)
!209 = distinct !DILexicalBlock(scope: !210, file: !179, line: 361, column: 15)
!210 = distinct !DILexicalBlock(scope: !206, file: !179, line: 360, column: 17)
!211 = !DILocalVariable(name: "p", scope: !212, file: !179, line: 404, type: !28)
!212 = distinct !DILexicalBlock(scope: !204, file: !179, line: 402, column: 7)
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !215, file: !560, line: 120, type: !561, isLocal: true, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, retainedTypes: !556, globals: !559)
!216 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !{!218}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !219, line: 41, size: 32, elements: !220)
!219 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!221 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!222 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!223 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!224 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!225 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!226 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!227 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!228 = !DIEnumerator(name: "DAY_1", value: 131079)
!229 = !DIEnumerator(name: "DAY_2", value: 131080)
!230 = !DIEnumerator(name: "DAY_3", value: 131081)
!231 = !DIEnumerator(name: "DAY_4", value: 131082)
!232 = !DIEnumerator(name: "DAY_5", value: 131083)
!233 = !DIEnumerator(name: "DAY_6", value: 131084)
!234 = !DIEnumerator(name: "DAY_7", value: 131085)
!235 = !DIEnumerator(name: "ABMON_1", value: 131086)
!236 = !DIEnumerator(name: "ABMON_2", value: 131087)
!237 = !DIEnumerator(name: "ABMON_3", value: 131088)
!238 = !DIEnumerator(name: "ABMON_4", value: 131089)
!239 = !DIEnumerator(name: "ABMON_5", value: 131090)
!240 = !DIEnumerator(name: "ABMON_6", value: 131091)
!241 = !DIEnumerator(name: "ABMON_7", value: 131092)
!242 = !DIEnumerator(name: "ABMON_8", value: 131093)
!243 = !DIEnumerator(name: "ABMON_9", value: 131094)
!244 = !DIEnumerator(name: "ABMON_10", value: 131095)
!245 = !DIEnumerator(name: "ABMON_11", value: 131096)
!246 = !DIEnumerator(name: "ABMON_12", value: 131097)
!247 = !DIEnumerator(name: "MON_1", value: 131098)
!248 = !DIEnumerator(name: "MON_2", value: 131099)
!249 = !DIEnumerator(name: "MON_3", value: 131100)
!250 = !DIEnumerator(name: "MON_4", value: 131101)
!251 = !DIEnumerator(name: "MON_5", value: 131102)
!252 = !DIEnumerator(name: "MON_6", value: 131103)
!253 = !DIEnumerator(name: "MON_7", value: 131104)
!254 = !DIEnumerator(name: "MON_8", value: 131105)
!255 = !DIEnumerator(name: "MON_9", value: 131106)
!256 = !DIEnumerator(name: "MON_10", value: 131107)
!257 = !DIEnumerator(name: "MON_11", value: 131108)
!258 = !DIEnumerator(name: "MON_12", value: 131109)
!259 = !DIEnumerator(name: "AM_STR", value: 131110)
!260 = !DIEnumerator(name: "PM_STR", value: 131111)
!261 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!262 = !DIEnumerator(name: "D_FMT", value: 131113)
!263 = !DIEnumerator(name: "T_FMT", value: 131114)
!264 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!265 = !DIEnumerator(name: "ERA", value: 131116)
!266 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!267 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!268 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!269 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!270 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!271 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!272 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!273 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!274 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!275 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!276 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!277 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!278 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!279 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!280 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!281 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!282 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!283 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!284 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!285 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!286 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!287 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!288 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!289 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!290 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!291 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!292 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!293 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!294 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!295 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!296 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!297 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!298 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!299 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!300 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!301 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!302 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!303 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!304 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!305 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!306 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!307 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!308 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!309 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!310 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!311 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!312 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!313 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!314 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!315 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!316 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!317 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!318 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!319 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!320 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!321 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!322 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!323 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!324 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!325 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!326 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!327 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!328 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!329 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!330 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!331 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!332 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!333 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!334 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!335 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!336 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!337 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!338 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!339 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!340 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!341 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!342 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!343 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!344 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!345 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!346 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!347 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!348 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!349 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!350 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!351 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!352 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!353 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!354 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!355 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!356 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!357 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!358 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!359 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!363 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!364 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!365 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!366 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!367 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!368 = !DIEnumerator(name: "CODESET", value: 14)
!369 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!370 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!371 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!372 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!424 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!425 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!440 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!441 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!442 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!443 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!444 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!445 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!446 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!447 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!448 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!449 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!450 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!451 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!452 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!453 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!454 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!455 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!456 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!457 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!458 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!459 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!460 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!461 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!462 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!479 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!480 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!483 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!484 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!485 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!486 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!487 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!488 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!489 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!490 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!491 = !DIEnumerator(name: "THOUSEP", value: 65537)
!492 = !DIEnumerator(name: "__GROUPING", value: 65538)
!493 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!494 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!495 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!496 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!497 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!498 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!499 = !DIEnumerator(name: "__YESSTR", value: 327682)
!500 = !DIEnumerator(name: "__NOSTR", value: 327683)
!501 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!502 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!503 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!504 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!505 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!506 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!507 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!508 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!513 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!514 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!515 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!516 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!523 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!524 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!525 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!527 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!528 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!529 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!530 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!531 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!534 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!535 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!536 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!537 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!554 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!555 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!556 = !{!28, !26, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!559 = !{!213}
!560 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !564, retainedTypes: !569)
!563 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!565}
!565 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !566, line: 41, size: 32, elements: !567)
!566 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!568}
!568 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!569 = !{!28}
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !572, retainedTypes: !586)
!571 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!573}
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !575, file: !574, line: 192, size: 32, elements: !584)
!574 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DISubprogram(name: "x2nrealloc", scope: !574, file: !574, line: 180, type: !576, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !579)
!576 = !DISubroutineType(types: !577)
!577 = !{!28, !28, !578, !121}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!579 = !{!580, !581, !582, !583}
!580 = !DILocalVariable(name: "p", arg: 1, scope: !575, file: !574, line: 180, type: !28)
!581 = !DILocalVariable(name: "pn", arg: 2, scope: !575, file: !574, line: 180, type: !578)
!582 = !DILocalVariable(name: "s", arg: 3, scope: !575, file: !574, line: 180, type: !121)
!583 = !DILocalVariable(name: "n", scope: !575, file: !574, line: 182, type: !121)
!584 = !{!585}
!585 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!586 = !{!121, !26, !28}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!588 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !569)
!590 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !593)
!592 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!121}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!595 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!597 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!599 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !569)
!601 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !569)
!603 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!605 = !{i32 2, !"Dwarf Version", i32 4}
!606 = !{i32 2, !"Debug Info Version", i32 3}
!607 = !{i32 1, !"wchar_size", i32 4}
!608 = !{i32 7, !"PIC Level", i32 2}
!609 = !{i32 7, !"PIE Level", i32 2}
!610 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !611, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !59}
!613 = !{!614}
!614 = !DILocalVariable(name: "status", arg: 1, scope: !610, file: !3, line: 58, type: !59)
!615 = !DIExpression()
!616 = !DILocation(line: 58, column: 12, scope: !610)
!617 = !DILocation(line: 60, column: 14, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 60, column: 7)
!619 = !DILocation(line: 60, column: 7, scope: !610)
!620 = !DILocation(line: 61, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 61, column: 5)
!622 = !{!623, !623, i64 0}
!623 = !{!"any pointer", !624, i64 0}
!624 = !{!"omnipotent char", !625, i64 0}
!625 = !{!"Simple C/C++ TBAA"}
!626 = !DILocation(line: 64, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !3, line: 63, column: 5)
!628 = !DILocation(line: 65, column: 7, scope: !627)
!629 = !DILocation(line: 73, column: 7, scope: !627)
!630 = !DILocation(line: 76, column: 7, scope: !627)
!631 = !DILocation(line: 80, column: 7, scope: !627)
!632 = !DILocation(line: 81, column: 7, scope: !627)
!633 = !DILocation(line: 642, column: 15, scope: !32, inlinedAt: !634)
!634 = distinct !DILocation(line: 82, column: 7, scope: !627)
!635 = !DILocation(line: 651, column: 3, scope: !32, inlinedAt: !634)
!636 = !DILocation(line: 655, column: 29, scope: !32, inlinedAt: !634)
!637 = !DILocation(line: 655, column: 15, scope: !32, inlinedAt: !634)
!638 = !DILocation(line: 656, column: 7, scope: !639, inlinedAt: !634)
!639 = distinct !DILexicalBlock(scope: !32, file: !33, line: 656, column: 7)
!640 = !DILocation(line: 656, column: 19, scope: !639, inlinedAt: !634)
!641 = !DILocation(line: 656, column: 22, scope: !639, inlinedAt: !634)
!642 = !DILocation(line: 656, column: 7, scope: !32, inlinedAt: !634)
!643 = !DILocation(line: 662, column: 7, scope: !644, inlinedAt: !634)
!644 = distinct !DILexicalBlock(scope: !639, file: !33, line: 657, column: 5)
!645 = !DILocation(line: 664, column: 5, scope: !644, inlinedAt: !634)
!646 = !DILocation(line: 665, column: 3, scope: !32, inlinedAt: !634)
!647 = !DILocation(line: 667, column: 3, scope: !32, inlinedAt: !634)
!648 = !DILocation(line: 84, column: 3, scope: !610)
!649 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 170, type: !650, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{!59, !59, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661}
!654 = !DILocalVariable(name: "argc", arg: 1, scope: !649, file: !3, line: 170, type: !59)
!655 = !DILocalVariable(name: "argv", arg: 2, scope: !649, file: !3, line: 170, type: !652)
!656 = !DILocalVariable(name: "c", scope: !649, file: !3, line: 172, type: !59)
!657 = !DILocalVariable(name: "args_specified", scope: !649, file: !3, line: 173, type: !79)
!658 = !DILocalVariable(name: "arg_data", scope: !649, file: !3, line: 174, type: !79)
!659 = !DILocalVariable(name: "arg_file_system", scope: !649, file: !3, line: 174, type: !79)
!660 = !DILocalVariable(name: "mode", scope: !649, file: !3, line: 175, type: !5)
!661 = !DILocalVariable(name: "ok", scope: !649, file: !3, line: 176, type: !79)
!662 = !DILocation(line: 170, column: 11, scope: !649)
!663 = !DILocation(line: 170, column: 24, scope: !649)
!664 = !DILocation(line: 174, column: 8, scope: !649)
!665 = !DILocation(line: 174, column: 26, scope: !649)
!666 = !DILocation(line: 176, column: 8, scope: !649)
!667 = !DILocation(line: 179, column: 21, scope: !649)
!668 = !DILocation(line: 179, column: 3, scope: !649)
!669 = !DILocation(line: 180, column: 3, scope: !649)
!670 = !DILocation(line: 181, column: 3, scope: !649)
!671 = !DILocation(line: 182, column: 3, scope: !649)
!672 = !DILocation(line: 184, column: 3, scope: !649)
!673 = !DILocation(line: 186, column: 3, scope: !649)
!674 = !DILocation(line: 186, column: 15, scope: !649)
!675 = !DILocation(line: 172, column: 7, scope: !649)
!676 = distinct !{!676, !673, !677}
!677 = !DILocation(line: 206, column: 5, scope: !649)
!678 = !DILocation(line: 197, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 190, column: 9)
!680 = distinct !DILexicalBlock(scope: !649, file: !3, line: 188, column: 5)
!681 = !DILocation(line: 199, column: 9, scope: !679)
!682 = !DILocation(line: 201, column: 9, scope: !679)
!683 = !DILocation(line: 204, column: 11, scope: !679)
!684 = !DILocation(line: 208, column: 20, scope: !649)
!685 = !{!686, !686, i64 0}
!686 = !{!"int", !624, i64 0}
!687 = !DILocation(line: 208, column: 27, scope: !649)
!688 = !DILocation(line: 210, column: 19, scope: !689)
!689 = distinct !DILexicalBlock(scope: !649, file: !3, line: 210, column: 7)
!690 = !DILocation(line: 210, column: 16, scope: !689)
!691 = !DILocation(line: 212, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 211, column: 5)
!693 = !DILocation(line: 210, column: 7, scope: !689)
!694 = !DILocation(line: 216, column: 23, scope: !695)
!695 = distinct !DILexicalBlock(scope: !649, file: !3, line: 216, column: 7)
!696 = !DILocation(line: 217, column: 5, scope: !695)
!697 = !DILocation(line: 219, column: 24, scope: !698)
!698 = distinct !DILexicalBlock(scope: !649, file: !3, line: 219, column: 7)
!699 = !DILocation(line: 229, column: 5, scope: !700)
!700 = distinct !DILexicalBlock(scope: !649, file: !3, line: 228, column: 7)
!701 = !DILocation(line: 232, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 232, column: 7)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 231, column: 5)
!704 = !DILocation(line: 233, column: 31, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !3, line: 232, column: 7)
!706 = !DILocalVariable(name: "file", arg: 2, scope: !707, file: !3, line: 91, type: !36)
!707 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 91, type: !708, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!79, !5, !36}
!710 = !{!711, !706, !712, !713, !714, !715, !718, !719}
!711 = !DILocalVariable(name: "mode", arg: 1, scope: !707, file: !3, line: 91, type: !5)
!712 = !DILocalVariable(name: "ret", scope: !707, file: !3, line: 93, type: !79)
!713 = !DILocalVariable(name: "open_flags", scope: !707, file: !3, line: 94, type: !59)
!714 = !DILocalVariable(name: "fd", scope: !707, file: !3, line: 95, type: !59)
!715 = !DILocalVariable(name: "rd_errno", scope: !716, file: !3, line: 110, type: !59)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 107, column: 5)
!717 = distinct !DILexicalBlock(scope: !707, file: !3, line: 106, column: 7)
!718 = !DILocalVariable(name: "fdflags", scope: !707, file: !3, line: 120, type: !59)
!719 = !DILocalVariable(name: "sync_status", scope: !720, file: !3, line: 131, type: !59)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 130, column: 5)
!721 = distinct !DILexicalBlock(scope: !707, file: !3, line: 129, column: 7)
!722 = !DILocation(line: 91, column: 44, scope: !707, inlinedAt: !723)
!723 = distinct !DILocation(line: 233, column: 15, scope: !705)
!724 = !DILocation(line: 93, column: 8, scope: !707, inlinedAt: !723)
!725 = !DILocation(line: 94, column: 7, scope: !707, inlinedAt: !723)
!726 = !DILocation(line: 105, column: 8, scope: !707, inlinedAt: !723)
!727 = !DILocation(line: 95, column: 7, scope: !707, inlinedAt: !723)
!728 = !DILocation(line: 106, column: 10, scope: !717, inlinedAt: !723)
!729 = !DILocation(line: 106, column: 7, scope: !707, inlinedAt: !723)
!730 = !DILocation(line: 110, column: 22, scope: !716, inlinedAt: !723)
!731 = !DILocation(line: 110, column: 11, scope: !716, inlinedAt: !723)
!732 = !DILocation(line: 112, column: 14, scope: !733, inlinedAt: !723)
!733 = distinct !DILexicalBlock(scope: !716, file: !3, line: 111, column: 11)
!734 = !DILocation(line: 113, column: 14, scope: !735, inlinedAt: !723)
!735 = distinct !DILexicalBlock(scope: !716, file: !3, line: 113, column: 11)
!736 = !DILocation(line: 113, column: 11, scope: !716, inlinedAt: !723)
!737 = !DILocation(line: 114, column: 29, scope: !735, inlinedAt: !723)
!738 = !DILocation(line: 114, column: 52, scope: !735, inlinedAt: !723)
!739 = !DILocation(line: 114, column: 9, scope: !735, inlinedAt: !723)
!740 = !DILocation(line: 120, column: 17, scope: !707, inlinedAt: !723)
!741 = !DILocation(line: 120, column: 7, scope: !707, inlinedAt: !723)
!742 = !DILocation(line: 121, column: 15, scope: !743, inlinedAt: !723)
!743 = distinct !DILexicalBlock(scope: !707, file: !3, line: 121, column: 7)
!744 = !DILocation(line: 122, column: 7, scope: !743, inlinedAt: !723)
!745 = !DILocation(line: 122, column: 38, scope: !743, inlinedAt: !723)
!746 = !DILocation(line: 122, column: 10, scope: !743, inlinedAt: !723)
!747 = !DILocation(line: 122, column: 53, scope: !743, inlinedAt: !723)
!748 = !DILocation(line: 121, column: 7, scope: !707, inlinedAt: !723)
!749 = !DILocation(line: 124, column: 17, scope: !750, inlinedAt: !723)
!750 = distinct !DILexicalBlock(scope: !743, file: !3, line: 123, column: 5)
!751 = !DILocation(line: 124, column: 24, scope: !750, inlinedAt: !723)
!752 = !DILocation(line: 125, column: 14, scope: !750, inlinedAt: !723)
!753 = !DILocation(line: 124, column: 7, scope: !750, inlinedAt: !723)
!754 = !DILocation(line: 129, column: 7, scope: !707, inlinedAt: !723)
!755 = !DILocation(line: 131, column: 11, scope: !720, inlinedAt: !723)
!756 = !DILocation(line: 133, column: 7, scope: !720, inlinedAt: !723)
!757 = !DILocation(line: 136, column: 25, scope: !758, inlinedAt: !723)
!758 = distinct !DILexicalBlock(scope: !720, file: !3, line: 134, column: 9)
!759 = !DILocation(line: 137, column: 11, scope: !758, inlinedAt: !723)
!760 = !DILocation(line: 140, column: 25, scope: !758, inlinedAt: !723)
!761 = !DILocation(line: 141, column: 11, scope: !758, inlinedAt: !723)
!762 = !DILocation(line: 145, column: 25, scope: !758, inlinedAt: !723)
!763 = !DILocation(line: 146, column: 11, scope: !758, inlinedAt: !723)
!764 = !DILocation(line: 153, column: 23, scope: !765, inlinedAt: !723)
!765 = distinct !DILexicalBlock(scope: !720, file: !3, line: 153, column: 11)
!766 = !DILocation(line: 153, column: 11, scope: !720, inlinedAt: !723)
!767 = !DILocation(line: 155, column: 21, scope: !768, inlinedAt: !723)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 154, column: 9)
!769 = !DILocation(line: 155, column: 28, scope: !768, inlinedAt: !723)
!770 = !DILocation(line: 155, column: 51, scope: !768, inlinedAt: !723)
!771 = !DILocation(line: 155, column: 11, scope: !768, inlinedAt: !723)
!772 = !DILocation(line: 157, column: 9, scope: !768, inlinedAt: !723)
!773 = !DILocation(line: 160, column: 7, scope: !774, inlinedAt: !723)
!774 = distinct !DILexicalBlock(scope: !707, file: !3, line: 160, column: 7)
!775 = !DILocation(line: 160, column: 18, scope: !774, inlinedAt: !723)
!776 = !DILocation(line: 160, column: 7, scope: !707, inlinedAt: !723)
!777 = !DILocation(line: 162, column: 17, scope: !778, inlinedAt: !723)
!778 = distinct !DILexicalBlock(scope: !774, file: !3, line: 161, column: 5)
!779 = !DILocation(line: 162, column: 24, scope: !778, inlinedAt: !723)
!780 = !DILocation(line: 162, column: 49, scope: !778, inlinedAt: !723)
!781 = !DILocation(line: 162, column: 7, scope: !778, inlinedAt: !723)
!782 = !DILocation(line: 164, column: 5, scope: !778, inlinedAt: !723)
!783 = !DILocation(line: 166, column: 10, scope: !707, inlinedAt: !723)
!784 = !DILocation(line: 233, column: 15, scope: !705)
!785 = !DILocation(line: 233, column: 12, scope: !705)
!786 = !DILocation(line: 232, column: 35, scope: !705)
!787 = !DILocation(line: 232, column: 21, scope: !705)
!788 = distinct !{!788, !701, !789}
!789 = !DILocation(line: 233, column: 43, scope: !702)
!790 = !DILocation(line: 236, column: 10, scope: !649)
!791 = !DILocation(line: 237, column: 1, scope: !649)
!792 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !78, file: !78, line: 41, type: !34, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !793)
!793 = !{!794}
!794 = !DILocalVariable(name: "file", arg: 1, scope: !792, file: !78, line: 41, type: !36)
!795 = !DILocation(line: 41, column: 41, scope: !792)
!796 = !DILocation(line: 43, column: 13, scope: !792)
!797 = !DILocation(line: 44, column: 1, scope: !792)
!798 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !78, file: !78, line: 78, type: !799, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !79}
!801 = !{!802}
!802 = !DILocalVariable(name: "ignore", arg: 1, scope: !798, file: !78, line: 78, type: !79)
!803 = !DILocation(line: 78, column: 37, scope: !798)
!804 = !DILocation(line: 80, column: 16, scope: !798)
!805 = !{!806, !806, i64 0}
!806 = !{!"_Bool", !624, i64 0}
!807 = !DILocation(line: 81, column: 1, scope: !798)
!808 = distinct !DISubprogram(name: "close_stdout", scope: !78, file: !78, line: 107, type: !809, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null}
!811 = !{!812}
!812 = !DILocalVariable(name: "write_error", scope: !813, file: !78, line: 112, type: !36)
!813 = distinct !DILexicalBlock(scope: !814, file: !78, line: 111, column: 5)
!814 = distinct !DILexicalBlock(scope: !808, file: !78, line: 109, column: 7)
!815 = !DILocation(line: 109, column: 21, scope: !814)
!816 = !DILocation(line: 109, column: 7, scope: !814)
!817 = !DILocation(line: 109, column: 29, scope: !814)
!818 = !DILocation(line: 110, column: 7, scope: !814)
!819 = !DILocation(line: 110, column: 12, scope: !814)
!820 = !{i8 0, i8 2}
!821 = !DILocation(line: 114, column: 19, scope: !822)
!822 = distinct !DILexicalBlock(scope: !813, file: !78, line: 113, column: 11)
!823 = !DILocation(line: 110, column: 25, scope: !814)
!824 = !DILocation(line: 110, column: 28, scope: !814)
!825 = !DILocation(line: 110, column: 34, scope: !814)
!826 = !DILocation(line: 109, column: 7, scope: !808)
!827 = !DILocation(line: 112, column: 33, scope: !813)
!828 = !DILocation(line: 112, column: 19, scope: !813)
!829 = !DILocation(line: 113, column: 11, scope: !822)
!830 = !DILocation(line: 113, column: 11, scope: !813)
!831 = !DILocation(line: 114, column: 36, scope: !822)
!832 = !DILocation(line: 114, column: 9, scope: !822)
!833 = !DILocation(line: 117, column: 9, scope: !822)
!834 = !DILocation(line: 119, column: 14, scope: !813)
!835 = !DILocation(line: 119, column: 7, scope: !813)
!836 = !DILocation(line: 122, column: 22, scope: !837)
!837 = distinct !DILexicalBlock(scope: !808, file: !78, line: 122, column: 8)
!838 = !DILocation(line: 122, column: 8, scope: !837)
!839 = !DILocation(line: 122, column: 30, scope: !837)
!840 = !DILocation(line: 122, column: 8, scope: !808)
!841 = !DILocation(line: 123, column: 13, scope: !837)
!842 = !DILocation(line: 123, column: 6, scope: !837)
!843 = !DILocation(line: 124, column: 1, scope: !808)
!844 = distinct !DISubprogram(name: "set_program_name", scope: !93, file: !93, line: 39, type: !34, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !89, variables: !845)
!845 = !{!846, !847, !848}
!846 = !DILocalVariable(name: "argv0", arg: 1, scope: !844, file: !93, line: 39, type: !36)
!847 = !DILocalVariable(name: "slash", scope: !844, file: !93, line: 46, type: !36)
!848 = !DILocalVariable(name: "base", scope: !844, file: !93, line: 47, type: !36)
!849 = !DILocation(line: 39, column: 31, scope: !844)
!850 = !DILocation(line: 51, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !844, file: !93, line: 51, column: 7)
!852 = !DILocation(line: 51, column: 7, scope: !844)
!853 = !DILocation(line: 55, column: 14, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !93, line: 52, column: 5)
!855 = !DILocation(line: 54, column: 7, scope: !854)
!856 = !DILocation(line: 56, column: 7, scope: !854)
!857 = !DILocation(line: 59, column: 11, scope: !844)
!858 = !DILocation(line: 46, column: 15, scope: !844)
!859 = !DILocation(line: 60, column: 17, scope: !844)
!860 = !DILocation(line: 60, column: 33, scope: !844)
!861 = !DILocation(line: 60, column: 11, scope: !844)
!862 = !DILocation(line: 47, column: 15, scope: !844)
!863 = !DILocation(line: 61, column: 12, scope: !864)
!864 = distinct !DILexicalBlock(scope: !844, file: !93, line: 61, column: 7)
!865 = !DILocation(line: 61, column: 20, scope: !864)
!866 = !DILocation(line: 61, column: 25, scope: !864)
!867 = !DILocation(line: 61, column: 42, scope: !864)
!868 = !DILocation(line: 61, column: 28, scope: !864)
!869 = !DILocation(line: 61, column: 61, scope: !864)
!870 = !DILocation(line: 61, column: 7, scope: !844)
!871 = !DILocation(line: 64, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !93, line: 64, column: 11)
!873 = distinct !DILexicalBlock(scope: !864, file: !93, line: 62, column: 5)
!874 = !DILocation(line: 64, column: 36, scope: !872)
!875 = !DILocation(line: 64, column: 11, scope: !873)
!876 = !DILocation(line: 66, column: 24, scope: !877)
!877 = distinct !DILexicalBlock(scope: !872, file: !93, line: 65, column: 9)
!878 = !DILocation(line: 70, column: 41, scope: !877)
!879 = !DILocation(line: 72, column: 9, scope: !877)
!880 = !DILocation(line: 84, column: 16, scope: !844)
!881 = !DILocation(line: 90, column: 27, scope: !844)
!882 = !DILocation(line: 92, column: 1, scope: !844)
!883 = distinct !DISubprogram(name: "clone_quoting_options", scope: !127, file: !127, line: 114, type: !884, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !887)
!884 = !DISubroutineType(types: !885)
!885 = !{!886, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!887 = !{!888, !889, !890}
!888 = !DILocalVariable(name: "o", arg: 1, scope: !883, file: !127, line: 114, type: !886)
!889 = !DILocalVariable(name: "e", scope: !883, file: !127, line: 116, type: !59)
!890 = !DILocalVariable(name: "p", scope: !883, file: !127, line: 117, type: !886)
!891 = !DILocation(line: 114, column: 48, scope: !883)
!892 = !DILocation(line: 116, column: 11, scope: !883)
!893 = !DILocation(line: 116, column: 7, scope: !883)
!894 = !DILocation(line: 117, column: 40, scope: !883)
!895 = !DILocation(line: 117, column: 31, scope: !883)
!896 = !DILocation(line: 117, column: 27, scope: !883)
!897 = !DILocation(line: 119, column: 9, scope: !883)
!898 = !DILocation(line: 120, column: 3, scope: !883)
!899 = distinct !DISubprogram(name: "get_quoting_style", scope: !127, file: !127, line: 125, type: !900, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !904)
!900 = !DISubroutineType(types: !901)
!901 = !{!11, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!904 = !{!905}
!905 = !DILocalVariable(name: "o", arg: 1, scope: !899, file: !127, line: 125, type: !902)
!906 = !DILocation(line: 125, column: 50, scope: !899)
!907 = !DILocation(line: 127, column: 11, scope: !899)
!908 = !DILocation(line: 127, column: 46, scope: !899)
!909 = !{!910, !624, i64 0}
!910 = !{!"quoting_options", !624, i64 0, !686, i64 4, !624, i64 8, !623, i64 40, !623, i64 48}
!911 = !DILocation(line: 127, column: 3, scope: !899)
!912 = distinct !DISubprogram(name: "set_quoting_style", scope: !127, file: !127, line: 133, type: !913, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !886, !11}
!915 = !{!916, !917}
!916 = !DILocalVariable(name: "o", arg: 1, scope: !912, file: !127, line: 133, type: !886)
!917 = !DILocalVariable(name: "s", arg: 2, scope: !912, file: !127, line: 133, type: !11)
!918 = !DILocation(line: 133, column: 44, scope: !912)
!919 = !DILocation(line: 133, column: 66, scope: !912)
!920 = !DILocation(line: 135, column: 4, scope: !912)
!921 = !DILocation(line: 135, column: 39, scope: !912)
!922 = !DILocation(line: 135, column: 45, scope: !912)
!923 = !DILocation(line: 136, column: 1, scope: !912)
!924 = distinct !DISubprogram(name: "set_char_quoting", scope: !127, file: !127, line: 144, type: !925, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!59, !886, !27, !59}
!927 = !{!928, !929, !930, !931, !932, !934, !935}
!928 = !DILocalVariable(name: "o", arg: 1, scope: !924, file: !127, line: 144, type: !886)
!929 = !DILocalVariable(name: "c", arg: 2, scope: !924, file: !127, line: 144, type: !27)
!930 = !DILocalVariable(name: "i", arg: 3, scope: !924, file: !127, line: 144, type: !59)
!931 = !DILocalVariable(name: "uc", scope: !924, file: !127, line: 146, type: !558)
!932 = !DILocalVariable(name: "p", scope: !924, file: !127, line: 147, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!934 = !DILocalVariable(name: "shift", scope: !924, file: !127, line: 149, type: !59)
!935 = !DILocalVariable(name: "r", scope: !924, file: !127, line: 150, type: !59)
!936 = !DILocation(line: 144, column: 43, scope: !924)
!937 = !DILocation(line: 144, column: 51, scope: !924)
!938 = !DILocation(line: 144, column: 58, scope: !924)
!939 = !DILocation(line: 146, column: 17, scope: !924)
!940 = !DILocation(line: 148, column: 6, scope: !924)
!941 = !DILocation(line: 148, column: 62, scope: !924)
!942 = !DILocation(line: 148, column: 57, scope: !924)
!943 = !DILocation(line: 147, column: 17, scope: !924)
!944 = !DILocation(line: 149, column: 18, scope: !924)
!945 = !DILocation(line: 149, column: 15, scope: !924)
!946 = !DILocation(line: 149, column: 7, scope: !924)
!947 = !DILocation(line: 150, column: 12, scope: !924)
!948 = !DILocation(line: 150, column: 15, scope: !924)
!949 = !DILocation(line: 150, column: 25, scope: !924)
!950 = !DILocation(line: 150, column: 7, scope: !924)
!951 = !DILocation(line: 151, column: 13, scope: !924)
!952 = !DILocation(line: 151, column: 18, scope: !924)
!953 = !DILocation(line: 151, column: 23, scope: !924)
!954 = !DILocation(line: 151, column: 6, scope: !924)
!955 = !DILocation(line: 152, column: 3, scope: !924)
!956 = distinct !DISubprogram(name: "set_quoting_flags", scope: !127, file: !127, line: 160, type: !957, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{!59, !886, !59}
!959 = !{!960, !961, !962}
!960 = !DILocalVariable(name: "o", arg: 1, scope: !956, file: !127, line: 160, type: !886)
!961 = !DILocalVariable(name: "i", arg: 2, scope: !956, file: !127, line: 160, type: !59)
!962 = !DILocalVariable(name: "r", scope: !956, file: !127, line: 162, type: !59)
!963 = !DILocation(line: 160, column: 44, scope: !956)
!964 = !DILocation(line: 160, column: 51, scope: !956)
!965 = !DILocation(line: 163, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !956, file: !127, line: 163, column: 7)
!967 = !DILocation(line: 163, column: 7, scope: !956)
!968 = !DILocation(line: 165, column: 10, scope: !956)
!969 = !{!910, !686, i64 4}
!970 = !DILocation(line: 162, column: 7, scope: !956)
!971 = !DILocation(line: 166, column: 12, scope: !956)
!972 = !DILocation(line: 167, column: 3, scope: !956)
!973 = distinct !DISubprogram(name: "set_custom_quoting", scope: !127, file: !127, line: 171, type: !974, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !886, !36, !36}
!976 = !{!977, !978, !979}
!977 = !DILocalVariable(name: "o", arg: 1, scope: !973, file: !127, line: 171, type: !886)
!978 = !DILocalVariable(name: "left_quote", arg: 2, scope: !973, file: !127, line: 172, type: !36)
!979 = !DILocalVariable(name: "right_quote", arg: 3, scope: !973, file: !127, line: 172, type: !36)
!980 = !DILocation(line: 171, column: 45, scope: !973)
!981 = !DILocation(line: 172, column: 33, scope: !973)
!982 = !DILocation(line: 172, column: 57, scope: !973)
!983 = !DILocation(line: 174, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !973, file: !127, line: 174, column: 7)
!985 = !DILocation(line: 174, column: 7, scope: !973)
!986 = !DILocation(line: 176, column: 6, scope: !973)
!987 = !DILocation(line: 176, column: 12, scope: !973)
!988 = !DILocation(line: 177, column: 8, scope: !989)
!989 = distinct !DILexicalBlock(scope: !973, file: !127, line: 177, column: 7)
!990 = !DILocation(line: 177, column: 23, scope: !989)
!991 = !DILocation(line: 177, column: 19, scope: !989)
!992 = !DILocation(line: 178, column: 5, scope: !989)
!993 = !DILocation(line: 179, column: 6, scope: !973)
!994 = !DILocation(line: 179, column: 17, scope: !973)
!995 = !{!910, !623, i64 40}
!996 = !DILocation(line: 180, column: 6, scope: !973)
!997 = !DILocation(line: 180, column: 18, scope: !973)
!998 = !{!910, !623, i64 48}
!999 = !DILocation(line: 181, column: 1, scope: !973)
!1000 = distinct !DISubprogram(name: "quotearg_buffer", scope: !127, file: !127, line: 776, type: !1001, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!121, !26, !121, !36, !121, !902}
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1004 = !DILocalVariable(name: "buffer", arg: 1, scope: !1000, file: !127, line: 776, type: !26)
!1005 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1000, file: !127, line: 776, type: !121)
!1006 = !DILocalVariable(name: "arg", arg: 3, scope: !1000, file: !127, line: 777, type: !36)
!1007 = !DILocalVariable(name: "argsize", arg: 4, scope: !1000, file: !127, line: 777, type: !121)
!1008 = !DILocalVariable(name: "o", arg: 5, scope: !1000, file: !127, line: 778, type: !902)
!1009 = !DILocalVariable(name: "p", scope: !1000, file: !127, line: 780, type: !902)
!1010 = !DILocalVariable(name: "e", scope: !1000, file: !127, line: 781, type: !59)
!1011 = !DILocalVariable(name: "r", scope: !1000, file: !127, line: 782, type: !121)
!1012 = !DILocation(line: 776, column: 24, scope: !1000)
!1013 = !DILocation(line: 776, column: 39, scope: !1000)
!1014 = !DILocation(line: 777, column: 30, scope: !1000)
!1015 = !DILocation(line: 777, column: 42, scope: !1000)
!1016 = !DILocation(line: 778, column: 48, scope: !1000)
!1017 = !DILocation(line: 780, column: 37, scope: !1000)
!1018 = !DILocation(line: 780, column: 33, scope: !1000)
!1019 = !DILocation(line: 781, column: 11, scope: !1000)
!1020 = !DILocation(line: 781, column: 7, scope: !1000)
!1021 = !DILocation(line: 783, column: 43, scope: !1000)
!1022 = !DILocation(line: 783, column: 53, scope: !1000)
!1023 = !DILocation(line: 783, column: 60, scope: !1000)
!1024 = !DILocation(line: 784, column: 43, scope: !1000)
!1025 = !DILocation(line: 784, column: 58, scope: !1000)
!1026 = !DILocation(line: 782, column: 14, scope: !1000)
!1027 = !DILocation(line: 782, column: 10, scope: !1000)
!1028 = !DILocation(line: 785, column: 9, scope: !1000)
!1029 = !DILocation(line: 786, column: 3, scope: !1000)
!1030 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !127, file: !127, line: 248, type: !1031, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1035)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!121, !26, !121, !36, !121, !11, !59, !1033, !36, !36}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1060, !1061, !1062, !1063, !1064, !1067, !1068, !1086, !1089, !1090, !1097}
!1036 = !DILocalVariable(name: "buffer", arg: 1, scope: !1030, file: !127, line: 248, type: !26)
!1037 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1030, file: !127, line: 248, type: !121)
!1038 = !DILocalVariable(name: "arg", arg: 3, scope: !1030, file: !127, line: 249, type: !36)
!1039 = !DILocalVariable(name: "argsize", arg: 4, scope: !1030, file: !127, line: 249, type: !121)
!1040 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1030, file: !127, line: 250, type: !11)
!1041 = !DILocalVariable(name: "flags", arg: 6, scope: !1030, file: !127, line: 250, type: !59)
!1042 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1030, file: !127, line: 251, type: !1033)
!1043 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1030, file: !127, line: 252, type: !36)
!1044 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1030, file: !127, line: 253, type: !36)
!1045 = !DILocalVariable(name: "i", scope: !1030, file: !127, line: 255, type: !121)
!1046 = !DILocalVariable(name: "len", scope: !1030, file: !127, line: 256, type: !121)
!1047 = !DILocalVariable(name: "orig_buffersize", scope: !1030, file: !127, line: 257, type: !121)
!1048 = !DILocalVariable(name: "quote_string", scope: !1030, file: !127, line: 258, type: !36)
!1049 = !DILocalVariable(name: "quote_string_len", scope: !1030, file: !127, line: 259, type: !121)
!1050 = !DILocalVariable(name: "backslash_escapes", scope: !1030, file: !127, line: 260, type: !79)
!1051 = !DILocalVariable(name: "unibyte_locale", scope: !1030, file: !127, line: 261, type: !79)
!1052 = !DILocalVariable(name: "elide_outer_quotes", scope: !1030, file: !127, line: 262, type: !79)
!1053 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1030, file: !127, line: 263, type: !79)
!1054 = !DILocalVariable(name: "encountered_single_quote", scope: !1030, file: !127, line: 264, type: !79)
!1055 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1030, file: !127, line: 265, type: !79)
!1056 = !DILocalVariable(name: "c", scope: !1057, file: !127, line: 394, type: !558)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !127, line: 393, column: 5)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !127, line: 392, column: 3)
!1059 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 392, column: 3)
!1060 = !DILocalVariable(name: "esc", scope: !1057, file: !127, line: 395, type: !558)
!1061 = !DILocalVariable(name: "is_right_quote", scope: !1057, file: !127, line: 396, type: !79)
!1062 = !DILocalVariable(name: "escaping", scope: !1057, file: !127, line: 397, type: !79)
!1063 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1057, file: !127, line: 398, type: !79)
!1064 = !DILocalVariable(name: "m", scope: !1065, file: !127, line: 602, type: !121)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 600, column: 11)
!1066 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 418, column: 9)
!1067 = !DILocalVariable(name: "printable", scope: !1065, file: !127, line: 604, type: !79)
!1068 = !DILocalVariable(name: "mbstate", scope: !1069, file: !127, line: 613, type: !1071)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !127, line: 612, column: 15)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !127, line: 606, column: 17)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1072, line: 6, baseType: !1073)
!1072 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1074, line: 21, baseType: !1075)
!1074 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1074, line: 13, size: 64, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1075, file: !1074, line: 15, baseType: !59, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1075, file: !1074, line: 20, baseType: !1079, size: 32, offset: 32)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !1074, line: 16, size: 32, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1079, file: !1074, line: 18, baseType: !140, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1079, file: !1074, line: 19, baseType: !1083, size: 32)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 4)
!1086 = !DILocalVariable(name: "w", scope: !1087, file: !127, line: 623, type: !1088)
!1087 = distinct !DILexicalBlock(scope: !1069, file: !127, line: 622, column: 19)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 90, baseType: !59)
!1089 = !DILocalVariable(name: "bytes", scope: !1087, file: !127, line: 624, type: !121)
!1090 = !DILocalVariable(name: "j", scope: !1091, file: !127, line: 649, type: !121)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !127, line: 648, column: 27)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !127, line: 646, column: 29)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !127, line: 641, column: 23)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !127, line: 633, column: 30)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !127, line: 628, column: 30)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !127, line: 626, column: 25)
!1097 = !DILocalVariable(name: "ilim", scope: !1098, file: !127, line: 676, type: !121)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !127, line: 673, column: 15)
!1099 = distinct !DILexicalBlock(scope: !1065, file: !127, line: 672, column: 17)
!1100 = !DILocation(line: 248, column: 33, scope: !1030)
!1101 = !DILocation(line: 248, column: 48, scope: !1030)
!1102 = !DILocation(line: 249, column: 39, scope: !1030)
!1103 = !DILocation(line: 249, column: 51, scope: !1030)
!1104 = !DILocation(line: 250, column: 46, scope: !1030)
!1105 = !DILocation(line: 250, column: 65, scope: !1030)
!1106 = !DILocation(line: 251, column: 47, scope: !1030)
!1107 = !DILocation(line: 252, column: 39, scope: !1030)
!1108 = !DILocation(line: 253, column: 39, scope: !1030)
!1109 = !DILocation(line: 256, column: 10, scope: !1030)
!1110 = !DILocation(line: 257, column: 10, scope: !1030)
!1111 = !DILocation(line: 258, column: 15, scope: !1030)
!1112 = !DILocation(line: 259, column: 10, scope: !1030)
!1113 = !DILocation(line: 260, column: 8, scope: !1030)
!1114 = !DILocation(line: 261, column: 25, scope: !1030)
!1115 = !DILocation(line: 261, column: 36, scope: !1030)
!1116 = !DILocation(line: 262, column: 8, scope: !1030)
!1117 = !DILocation(line: 263, column: 8, scope: !1030)
!1118 = !DILocation(line: 264, column: 8, scope: !1030)
!1119 = !DILocation(line: 265, column: 8, scope: !1030)
!1120 = !DILocation(line: 265, column: 3, scope: !1030)
!1121 = !DILocation(line: 308, column: 3, scope: !1030)
!1122 = !DILocation(line: 315, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 309, column: 5)
!1124 = !DILocation(line: 315, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !127, line: 315, column: 11)
!1126 = !DILocation(line: 316, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !127, line: 316, column: 9)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !127, line: 316, column: 9)
!1129 = !DILocation(line: 316, column: 9, scope: !1128)
!1130 = !{!624, !624, i64 0}
!1131 = !DILocation(line: 354, column: 26, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !127, line: 332, column: 11)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !127, line: 331, column: 13)
!1134 = distinct !DILexicalBlock(scope: !1123, file: !127, line: 330, column: 7)
!1135 = !DILocation(line: 355, column: 27, scope: !1132)
!1136 = !DILocation(line: 356, column: 11, scope: !1132)
!1137 = !DILocation(line: 357, column: 14, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !127, line: 357, column: 13)
!1139 = !DILocation(line: 357, column: 13, scope: !1134)
!1140 = !DILocation(line: 358, column: 43, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !127, line: 358, column: 11)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !127, line: 358, column: 11)
!1143 = !DILocation(line: 358, column: 11, scope: !1142)
!1144 = !DILocation(line: 359, column: 13, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !127, line: 359, column: 13)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !127, line: 359, column: 13)
!1147 = !DILocation(line: 359, column: 13, scope: !1146)
!1148 = !DILocation(line: 358, column: 70, scope: !1141)
!1149 = distinct !{!1149, !1143, !1150}
!1150 = !DILocation(line: 359, column: 13, scope: !1142)
!1151 = !DILocation(line: 362, column: 28, scope: !1134)
!1152 = !DILocation(line: 364, column: 7, scope: !1123)
!1153 = !DILocation(line: 367, column: 7, scope: !1123)
!1154 = !DILocation(line: 370, column: 7, scope: !1123)
!1155 = !DILocation(line: 373, column: 12, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1123, file: !127, line: 373, column: 11)
!1157 = !DILocation(line: 373, column: 11, scope: !1123)
!1158 = !DILocation(line: 378, column: 12, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1123, file: !127, line: 378, column: 11)
!1160 = !DILocation(line: 378, column: 11, scope: !1123)
!1161 = !DILocation(line: 379, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !127, line: 379, column: 9)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !127, line: 379, column: 9)
!1164 = !DILocation(line: 379, column: 9, scope: !1163)
!1165 = !DILocation(line: 386, column: 7, scope: !1123)
!1166 = !DILocation(line: 389, column: 7, scope: !1123)
!1167 = !DILocation(line: 255, column: 10, scope: !1030)
!1168 = !DILocation(line: 392, column: 8, scope: !1059)
!1169 = !DILocation(line: 392, column: 27, scope: !1058)
!1170 = !DILocation(line: 392, column: 19, scope: !1058)
!1171 = !DILocation(line: 392, column: 60, scope: !1058)
!1172 = !DILocation(line: 392, column: 3, scope: !1059)
!1173 = !DILocation(line: 392, column: 41, scope: !1058)
!1174 = !DILocation(line: 392, column: 48, scope: !1058)
!1175 = !DILocation(line: 396, column: 12, scope: !1057)
!1176 = !DILocation(line: 397, column: 12, scope: !1057)
!1177 = !DILocation(line: 398, column: 12, scope: !1057)
!1178 = !DILocation(line: 401, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 400, column: 11)
!1180 = !DILocation(line: 403, column: 17, scope: !1179)
!1181 = !DILocation(line: 404, column: 39, scope: !1179)
!1182 = !DILocation(line: 408, column: 32, scope: !1179)
!1183 = !DILocation(line: 404, column: 19, scope: !1179)
!1184 = !DILocation(line: 404, column: 15, scope: !1179)
!1185 = !DILocation(line: 409, column: 11, scope: !1179)
!1186 = !DILocation(line: 409, column: 26, scope: !1179)
!1187 = !DILocation(line: 409, column: 14, scope: !1179)
!1188 = !DILocation(line: 409, column: 63, scope: !1179)
!1189 = !DILocation(line: 400, column: 11, scope: !1057)
!1190 = !DILocation(line: 416, column: 11, scope: !1057)
!1191 = !DILocation(line: 394, column: 21, scope: !1057)
!1192 = !DILocation(line: 417, column: 7, scope: !1057)
!1193 = !DILocation(line: 420, column: 15, scope: !1066)
!1194 = !DILocation(line: 422, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !127, line: 422, column: 15)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !127, line: 421, column: 13)
!1197 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 420, column: 15)
!1198 = !DILocation(line: 422, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !127, line: 422, column: 15)
!1200 = !DILocation(line: 422, column: 15, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !127, line: 422, column: 15)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !127, line: 422, column: 15)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !127, line: 422, column: 15)
!1204 = !DILocation(line: 422, column: 15, scope: !1202)
!1205 = !DILocation(line: 422, column: 15, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !127, line: 422, column: 15)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !127, line: 422, column: 15)
!1208 = !DILocation(line: 422, column: 15, scope: !1207)
!1209 = !DILocation(line: 422, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !127, line: 422, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !127, line: 422, column: 15)
!1212 = !DILocation(line: 422, column: 15, scope: !1211)
!1213 = !DILocation(line: 422, column: 15, scope: !1203)
!1214 = !DILocation(line: 422, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !127, line: 422, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1195, file: !127, line: 422, column: 15)
!1217 = !DILocation(line: 422, column: 15, scope: !1216)
!1218 = !DILocation(line: 430, column: 19, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1196, file: !127, line: 429, column: 19)
!1220 = !DILocation(line: 430, column: 24, scope: !1219)
!1221 = !DILocation(line: 430, column: 28, scope: !1219)
!1222 = !DILocation(line: 430, column: 38, scope: !1219)
!1223 = !DILocation(line: 430, column: 48, scope: !1219)
!1224 = !DILocation(line: 430, column: 59, scope: !1219)
!1225 = !DILocation(line: 432, column: 19, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !127, line: 432, column: 19)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !127, line: 432, column: 19)
!1228 = distinct !DILexicalBlock(scope: !1219, file: !127, line: 431, column: 17)
!1229 = !DILocation(line: 432, column: 19, scope: !1227)
!1230 = !DILocation(line: 433, column: 19, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !127, line: 433, column: 19)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !127, line: 433, column: 19)
!1233 = !DILocation(line: 433, column: 19, scope: !1232)
!1234 = !DILocation(line: 434, column: 17, scope: !1228)
!1235 = !DILocation(line: 441, column: 20, scope: !1197)
!1236 = !DILocation(line: 446, column: 11, scope: !1066)
!1237 = !DILocation(line: 449, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 447, column: 13)
!1239 = !DILocation(line: 455, column: 19, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1238, file: !127, line: 454, column: 19)
!1241 = !DILocation(line: 455, column: 24, scope: !1240)
!1242 = !DILocation(line: 455, column: 28, scope: !1240)
!1243 = !DILocation(line: 455, column: 38, scope: !1240)
!1244 = !DILocation(line: 455, column: 47, scope: !1240)
!1245 = !DILocation(line: 455, column: 41, scope: !1240)
!1246 = !DILocation(line: 455, column: 52, scope: !1240)
!1247 = !DILocation(line: 454, column: 19, scope: !1238)
!1248 = !DILocation(line: 456, column: 25, scope: !1240)
!1249 = !DILocation(line: 456, column: 17, scope: !1240)
!1250 = !DILocation(line: 463, column: 25, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !127, line: 457, column: 19)
!1252 = !DILocation(line: 467, column: 21, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !127, line: 467, column: 21)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !127, line: 467, column: 21)
!1255 = !DILocation(line: 467, column: 21, scope: !1254)
!1256 = !DILocation(line: 468, column: 21, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !127, line: 468, column: 21)
!1258 = distinct !DILexicalBlock(scope: !1251, file: !127, line: 468, column: 21)
!1259 = !DILocation(line: 468, column: 21, scope: !1258)
!1260 = !DILocation(line: 469, column: 21, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !127, line: 469, column: 21)
!1262 = distinct !DILexicalBlock(scope: !1251, file: !127, line: 469, column: 21)
!1263 = !DILocation(line: 469, column: 21, scope: !1262)
!1264 = !DILocation(line: 470, column: 21, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !127, line: 470, column: 21)
!1266 = distinct !DILexicalBlock(scope: !1251, file: !127, line: 470, column: 21)
!1267 = !DILocation(line: 470, column: 21, scope: !1266)
!1268 = !DILocation(line: 471, column: 21, scope: !1251)
!1269 = !DILocation(line: 395, column: 21, scope: !1057)
!1270 = !DILocation(line: 484, column: 31, scope: !1066)
!1271 = !DILocation(line: 485, column: 31, scope: !1066)
!1272 = !DILocation(line: 487, column: 31, scope: !1066)
!1273 = !DILocation(line: 488, column: 31, scope: !1066)
!1274 = !DILocation(line: 489, column: 31, scope: !1066)
!1275 = !DILocation(line: 492, column: 15, scope: !1066)
!1276 = !DILocation(line: 494, column: 19, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !127, line: 493, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 492, column: 15)
!1279 = !DILocation(line: 501, column: 33, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 501, column: 15)
!1281 = !DILocation(line: 506, column: 15, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 505, column: 15)
!1283 = !DILocation(line: 510, column: 15, scope: !1066)
!1284 = !DILocation(line: 518, column: 26, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 518, column: 15)
!1286 = !DILocation(line: 518, column: 15, scope: !1066)
!1287 = !DILocation(line: 518, column: 40, scope: !1285)
!1288 = !DILocation(line: 518, column: 47, scope: !1285)
!1289 = !DILocation(line: 522, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 522, column: 15)
!1291 = !DILocation(line: 518, column: 18, scope: !1285)
!1292 = !DILocation(line: 518, column: 65, scope: !1285)
!1293 = !DILocation(line: 522, column: 15, scope: !1066)
!1294 = !DILocation(line: 526, column: 11, scope: !1066)
!1295 = !DILocation(line: 541, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 540, column: 15)
!1297 = !DILocation(line: 548, column: 15, scope: !1066)
!1298 = !DILocation(line: 550, column: 19, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !127, line: 549, column: 13)
!1300 = distinct !DILexicalBlock(scope: !1066, file: !127, line: 548, column: 15)
!1301 = !DILocation(line: 553, column: 19, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !127, line: 553, column: 19)
!1303 = !DILocation(line: 553, column: 35, scope: !1302)
!1304 = !DILocation(line: 553, column: 30, scope: !1302)
!1305 = !DILocation(line: 562, column: 15, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !127, line: 562, column: 15)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !127, line: 562, column: 15)
!1308 = !DILocation(line: 562, column: 15, scope: !1307)
!1309 = !DILocation(line: 563, column: 15, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !127, line: 563, column: 15)
!1311 = distinct !DILexicalBlock(scope: !1299, file: !127, line: 563, column: 15)
!1312 = !DILocation(line: 563, column: 15, scope: !1311)
!1313 = !DILocation(line: 564, column: 15, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !127, line: 564, column: 15)
!1315 = distinct !DILexicalBlock(scope: !1299, file: !127, line: 564, column: 15)
!1316 = !DILocation(line: 564, column: 15, scope: !1315)
!1317 = !DILocation(line: 566, column: 13, scope: !1299)
!1318 = !DILocation(line: 606, column: 17, scope: !1065)
!1319 = !DILocation(line: 602, column: 20, scope: !1065)
!1320 = !DILocation(line: 609, column: 29, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1070, file: !127, line: 607, column: 15)
!1322 = !{!1323, !1323, i64 0}
!1323 = !{!"short", !624, i64 0}
!1324 = !DILocation(line: 609, column: 27, scope: !1321)
!1325 = !DILocation(line: 604, column: 18, scope: !1065)
!1326 = !DILocation(line: 610, column: 15, scope: !1321)
!1327 = !DILocation(line: 613, column: 17, scope: !1069)
!1328 = !DILocation(line: 614, column: 17, scope: !1069)
!1329 = !DILocation(line: 618, column: 29, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1069, file: !127, line: 618, column: 21)
!1331 = !DILocation(line: 618, column: 21, scope: !1069)
!1332 = !DILocation(line: 619, column: 29, scope: !1330)
!1333 = !DILocation(line: 619, column: 19, scope: !1330)
!1334 = !DILocation(line: 621, column: 17, scope: !1069)
!1335 = distinct !{!1335, !1334, !1336}
!1336 = !DILocation(line: 667, column: 44, scope: !1069)
!1337 = !DILocation(line: 623, column: 21, scope: !1087)
!1338 = !DILocation(line: 624, column: 56, scope: !1087)
!1339 = !DILocation(line: 624, column: 50, scope: !1087)
!1340 = !DILocation(line: 625, column: 53, scope: !1087)
!1341 = !DILocation(line: 613, column: 27, scope: !1069)
!1342 = !DILocation(line: 623, column: 29, scope: !1087)
!1343 = !DILocation(line: 624, column: 36, scope: !1087)
!1344 = !DILocation(line: 624, column: 28, scope: !1087)
!1345 = !DILocation(line: 626, column: 25, scope: !1087)
!1346 = !DILocation(line: 636, column: 38, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1094, file: !127, line: 634, column: 23)
!1348 = !DILocation(line: 636, column: 48, scope: !1347)
!1349 = !DILocation(line: 636, column: 51, scope: !1347)
!1350 = !DILocation(line: 636, column: 25, scope: !1347)
!1351 = !DILocation(line: 637, column: 28, scope: !1347)
!1352 = !DILocation(line: 636, column: 34, scope: !1347)
!1353 = distinct !{!1353, !1350, !1351}
!1354 = !DILocation(line: 650, column: 43, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !127, line: 650, column: 29)
!1356 = distinct !DILexicalBlock(scope: !1091, file: !127, line: 650, column: 29)
!1357 = !DILocation(line: 647, column: 29, scope: !1092)
!1358 = !DILocation(line: 649, column: 36, scope: !1091)
!1359 = !DILocation(line: 651, column: 49, scope: !1355)
!1360 = !DILocation(line: 651, column: 39, scope: !1355)
!1361 = !DILocation(line: 651, column: 31, scope: !1355)
!1362 = !DILocation(line: 650, column: 53, scope: !1355)
!1363 = !DILocation(line: 650, column: 29, scope: !1356)
!1364 = distinct !{!1364, !1363, !1365}
!1365 = !DILocation(line: 659, column: 33, scope: !1356)
!1366 = !DILocation(line: 666, column: 19, scope: !1069)
!1367 = !DILocation(line: 662, column: 41, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1093, file: !127, line: 662, column: 29)
!1369 = !DILocation(line: 662, column: 31, scope: !1368)
!1370 = !DILocation(line: 662, column: 29, scope: !1093)
!1371 = !DILocation(line: 664, column: 27, scope: !1093)
!1372 = !DILocation(line: 667, column: 26, scope: !1069)
!1373 = !DILocation(line: 667, column: 24, scope: !1069)
!1374 = !DILocation(line: 666, column: 19, scope: !1087)
!1375 = !DILocation(line: 668, column: 15, scope: !1070)
!1376 = !DILocation(line: 670, column: 40, scope: !1065)
!1377 = !DILocation(line: 672, column: 19, scope: !1099)
!1378 = !DILocation(line: 672, column: 45, scope: !1099)
!1379 = !DILocation(line: 672, column: 23, scope: !1099)
!1380 = !DILocation(line: 676, column: 33, scope: !1098)
!1381 = !DILocation(line: 676, column: 24, scope: !1098)
!1382 = !DILocation(line: 678, column: 17, scope: !1098)
!1383 = !DILocation(line: 680, column: 43, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !127, line: 680, column: 25)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !127, line: 679, column: 19)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !127, line: 678, column: 17)
!1387 = distinct !DILexicalBlock(scope: !1098, file: !127, line: 678, column: 17)
!1388 = !DILocation(line: 682, column: 25, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !127, line: 682, column: 25)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !127, line: 681, column: 23)
!1391 = !DILocation(line: 682, column: 25, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !127, line: 682, column: 25)
!1393 = !DILocation(line: 682, column: 25, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !127, line: 682, column: 25)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !127, line: 682, column: 25)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !127, line: 682, column: 25)
!1397 = !DILocation(line: 682, column: 25, scope: !1395)
!1398 = !DILocation(line: 682, column: 25, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !127, line: 682, column: 25)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !127, line: 682, column: 25)
!1401 = !DILocation(line: 682, column: 25, scope: !1400)
!1402 = !DILocation(line: 682, column: 25, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !127, line: 682, column: 25)
!1404 = distinct !DILexicalBlock(scope: !1396, file: !127, line: 682, column: 25)
!1405 = !DILocation(line: 682, column: 25, scope: !1404)
!1406 = !DILocation(line: 682, column: 25, scope: !1396)
!1407 = !DILocation(line: 682, column: 25, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !127, line: 682, column: 25)
!1409 = distinct !DILexicalBlock(scope: !1389, file: !127, line: 682, column: 25)
!1410 = !DILocation(line: 682, column: 25, scope: !1409)
!1411 = !DILocation(line: 683, column: 25, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !127, line: 683, column: 25)
!1413 = distinct !DILexicalBlock(scope: !1390, file: !127, line: 683, column: 25)
!1414 = !DILocation(line: 683, column: 25, scope: !1413)
!1415 = !DILocation(line: 684, column: 25, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !127, line: 684, column: 25)
!1417 = distinct !DILexicalBlock(scope: !1390, file: !127, line: 684, column: 25)
!1418 = !DILocation(line: 684, column: 25, scope: !1417)
!1419 = !DILocation(line: 685, column: 38, scope: !1390)
!1420 = !DILocation(line: 685, column: 33, scope: !1390)
!1421 = !DILocation(line: 686, column: 23, scope: !1390)
!1422 = !DILocation(line: 687, column: 30, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1384, file: !127, line: 687, column: 30)
!1424 = !DILocation(line: 687, column: 30, scope: !1384)
!1425 = !DILocation(line: 689, column: 25, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !127, line: 689, column: 25)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !127, line: 689, column: 25)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !127, line: 688, column: 23)
!1429 = !DILocation(line: 689, column: 25, scope: !1427)
!1430 = !DILocation(line: 691, column: 23, scope: !1428)
!1431 = !DILocation(line: 692, column: 35, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1385, file: !127, line: 692, column: 25)
!1433 = !DILocation(line: 692, column: 30, scope: !1432)
!1434 = !DILocation(line: 692, column: 25, scope: !1385)
!1435 = !DILocation(line: 694, column: 21, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !127, line: 694, column: 21)
!1437 = distinct !DILexicalBlock(scope: !1385, file: !127, line: 694, column: 21)
!1438 = !DILocation(line: 694, column: 21, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !127, line: 694, column: 21)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !127, line: 694, column: 21)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !127, line: 694, column: 21)
!1442 = !DILocation(line: 694, column: 21, scope: !1440)
!1443 = !DILocation(line: 694, column: 21, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !127, line: 694, column: 21)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !127, line: 694, column: 21)
!1446 = !DILocation(line: 694, column: 21, scope: !1445)
!1447 = !DILocation(line: 694, column: 21, scope: !1441)
!1448 = !DILocation(line: 695, column: 21, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !127, line: 695, column: 21)
!1450 = distinct !DILexicalBlock(scope: !1385, file: !127, line: 695, column: 21)
!1451 = !DILocation(line: 695, column: 21, scope: !1450)
!1452 = !DILocation(line: 696, column: 25, scope: !1385)
!1453 = !DILocation(line: 678, column: 17, scope: !1386)
!1454 = distinct !{!1454, !1455, !1456}
!1455 = !DILocation(line: 678, column: 17, scope: !1387)
!1456 = !DILocation(line: 697, column: 19, scope: !1387)
!1457 = !DILocation(line: 704, column: 34, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 704, column: 11)
!1459 = !DILocation(line: 706, column: 14, scope: !1458)
!1460 = !DILocation(line: 707, column: 14, scope: !1458)
!1461 = !DILocation(line: 707, column: 35, scope: !1458)
!1462 = !DILocation(line: 707, column: 17, scope: !1458)
!1463 = !DILocation(line: 707, column: 53, scope: !1458)
!1464 = !DILocation(line: 707, column: 47, scope: !1458)
!1465 = !DILocation(line: 707, column: 65, scope: !1458)
!1466 = !DILocation(line: 708, column: 15, scope: !1458)
!1467 = !DILocation(line: 708, column: 11, scope: !1458)
!1468 = !DILocation(line: 704, column: 11, scope: !1057)
!1469 = !DILocation(line: 712, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 712, column: 7)
!1471 = !DILocation(line: 712, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1470, file: !127, line: 712, column: 7)
!1473 = !DILocation(line: 712, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !127, line: 712, column: 7)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !127, line: 712, column: 7)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !127, line: 712, column: 7)
!1477 = !DILocation(line: 712, column: 7, scope: !1475)
!1478 = !DILocation(line: 712, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !127, line: 712, column: 7)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !127, line: 712, column: 7)
!1481 = !DILocation(line: 712, column: 7, scope: !1480)
!1482 = !DILocation(line: 712, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !127, line: 712, column: 7)
!1484 = distinct !DILexicalBlock(scope: !1476, file: !127, line: 712, column: 7)
!1485 = !DILocation(line: 712, column: 7, scope: !1484)
!1486 = !DILocation(line: 712, column: 7, scope: !1476)
!1487 = !DILocation(line: 712, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !127, line: 712, column: 7)
!1489 = distinct !DILexicalBlock(scope: !1470, file: !127, line: 712, column: 7)
!1490 = !DILocation(line: 712, column: 7, scope: !1489)
!1491 = !DILocation(line: 715, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !127, line: 715, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 715, column: 7)
!1494 = !DILocation(line: 715, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !127, line: 715, column: 7)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !127, line: 715, column: 7)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !127, line: 715, column: 7)
!1498 = !DILocation(line: 715, column: 7, scope: !1496)
!1499 = !DILocation(line: 715, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !127, line: 715, column: 7)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !127, line: 715, column: 7)
!1502 = !DILocation(line: 715, column: 7, scope: !1501)
!1503 = !DILocation(line: 715, column: 7, scope: !1497)
!1504 = !DILocation(line: 716, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !127, line: 716, column: 7)
!1506 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 716, column: 7)
!1507 = !DILocation(line: 716, column: 7, scope: !1506)
!1508 = !DILocation(line: 718, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1057, file: !127, line: 718, column: 11)
!1510 = !DILocation(line: 718, column: 11, scope: !1057)
!1511 = !DILocation(line: 720, column: 5, scope: !1058)
!1512 = !DILocation(line: 392, column: 75, scope: !1058)
!1513 = !DILocation(line: 392, column: 3, scope: !1058)
!1514 = distinct !{!1514, !1172, !1515}
!1515 = !DILocation(line: 720, column: 5, scope: !1059)
!1516 = !DILocation(line: 722, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 722, column: 7)
!1518 = !DILocation(line: 722, column: 16, scope: !1517)
!1519 = !DILocation(line: 730, column: 51, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 730, column: 7)
!1521 = !DILocation(line: 731, column: 10, scope: !1520)
!1522 = !DILocation(line: 733, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !127, line: 733, column: 11)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !127, line: 732, column: 5)
!1525 = !DILocation(line: 733, column: 11, scope: !1524)
!1526 = !DILocation(line: 734, column: 16, scope: !1523)
!1527 = !DILocation(line: 734, column: 9, scope: !1523)
!1528 = !DILocation(line: 738, column: 18, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1523, file: !127, line: 738, column: 16)
!1530 = !DILocation(line: 738, column: 32, scope: !1529)
!1531 = !DILocation(line: 738, column: 29, scope: !1529)
!1532 = !DILocation(line: 747, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 747, column: 7)
!1534 = !DILocation(line: 747, column: 20, scope: !1533)
!1535 = !DILocation(line: 748, column: 12, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !127, line: 748, column: 5)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !127, line: 748, column: 5)
!1538 = !DILocation(line: 748, column: 5, scope: !1537)
!1539 = !DILocation(line: 749, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !127, line: 749, column: 7)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !127, line: 749, column: 7)
!1542 = !DILocation(line: 749, column: 7, scope: !1541)
!1543 = !DILocation(line: 748, column: 39, scope: !1536)
!1544 = distinct !{!1544, !1538, !1545}
!1545 = !DILocation(line: 749, column: 7, scope: !1537)
!1546 = !DILocation(line: 751, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 751, column: 7)
!1548 = !DILocation(line: 751, column: 7, scope: !1030)
!1549 = !DILocation(line: 752, column: 5, scope: !1547)
!1550 = !DILocation(line: 752, column: 17, scope: !1547)
!1551 = !DILocation(line: 758, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1030, file: !127, line: 758, column: 7)
!1553 = !DILocation(line: 758, column: 54, scope: !1552)
!1554 = !DILocation(line: 758, column: 51, scope: !1552)
!1555 = !DILocation(line: 762, column: 42, scope: !1030)
!1556 = !DILocation(line: 760, column: 10, scope: !1030)
!1557 = !DILocation(line: 760, column: 3, scope: !1030)
!1558 = !DILocation(line: 764, column: 1, scope: !1030)
!1559 = distinct !DISubprogram(name: "gettext_quote", scope: !127, file: !127, line: 199, type: !1560, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!36, !36, !11}
!1562 = !{!1563, !1564, !1565, !1566}
!1563 = !DILocalVariable(name: "msgid", arg: 1, scope: !1559, file: !127, line: 199, type: !36)
!1564 = !DILocalVariable(name: "s", arg: 2, scope: !1559, file: !127, line: 199, type: !11)
!1565 = !DILocalVariable(name: "translation", scope: !1559, file: !127, line: 201, type: !36)
!1566 = !DILocalVariable(name: "locale_code", scope: !1559, file: !127, line: 202, type: !36)
!1567 = !DILocation(line: 199, column: 28, scope: !1559)
!1568 = !DILocation(line: 199, column: 54, scope: !1559)
!1569 = !DILocation(line: 201, column: 29, scope: !1559)
!1570 = !DILocation(line: 201, column: 15, scope: !1559)
!1571 = !DILocation(line: 204, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1559, file: !127, line: 204, column: 7)
!1573 = !DILocation(line: 204, column: 7, scope: !1559)
!1574 = !DILocation(line: 225, column: 17, scope: !1559)
!1575 = !DILocation(line: 202, column: 15, scope: !1559)
!1576 = !DILocalVariable(name: "s2", arg: 2, scope: !1577, file: !1578, line: 160, type: !36)
!1577 = distinct !DISubprogram(name: "strcaseeq0", scope: !1578, file: !1578, line: 160, type: !1579, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1581)
!1578 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!59, !36, !36, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!1581 = !{!1582, !1576, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591}
!1582 = !DILocalVariable(name: "s1", arg: 1, scope: !1577, file: !1578, line: 160, type: !36)
!1583 = !DILocalVariable(name: "s20", arg: 3, scope: !1577, file: !1578, line: 160, type: !27)
!1584 = !DILocalVariable(name: "s21", arg: 4, scope: !1577, file: !1578, line: 160, type: !27)
!1585 = !DILocalVariable(name: "s22", arg: 5, scope: !1577, file: !1578, line: 160, type: !27)
!1586 = !DILocalVariable(name: "s23", arg: 6, scope: !1577, file: !1578, line: 160, type: !27)
!1587 = !DILocalVariable(name: "s24", arg: 7, scope: !1577, file: !1578, line: 160, type: !27)
!1588 = !DILocalVariable(name: "s25", arg: 8, scope: !1577, file: !1578, line: 160, type: !27)
!1589 = !DILocalVariable(name: "s26", arg: 9, scope: !1577, file: !1578, line: 160, type: !27)
!1590 = !DILocalVariable(name: "s27", arg: 10, scope: !1577, file: !1578, line: 160, type: !27)
!1591 = !DILocalVariable(name: "s28", arg: 11, scope: !1577, file: !1578, line: 160, type: !27)
!1592 = !DILocation(line: 160, column: 41, scope: !1577, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 226, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1559, file: !127, line: 226, column: 7)
!1595 = !DILocation(line: 160, column: 120, scope: !1577, inlinedAt: !1593)
!1596 = !DILocation(line: 160, column: 130, scope: !1577, inlinedAt: !1593)
!1597 = !DILocation(line: 162, column: 7, scope: !1598, inlinedAt: !1593)
!1598 = distinct !DILexicalBlock(scope: !1577, file: !1578, line: 162, column: 7)
!1599 = !DILocalVariable(name: "s2", arg: 2, scope: !1600, file: !1578, line: 146, type: !36)
!1600 = distinct !DISubprogram(name: "strcaseeq1", scope: !1578, file: !1578, line: 146, type: !1601, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!59, !36, !36, !27, !27, !27, !27, !27, !27, !27, !27}
!1603 = !{!1604, !1599, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1604 = !DILocalVariable(name: "s1", arg: 1, scope: !1600, file: !1578, line: 146, type: !36)
!1605 = !DILocalVariable(name: "s21", arg: 3, scope: !1600, file: !1578, line: 146, type: !27)
!1606 = !DILocalVariable(name: "s22", arg: 4, scope: !1600, file: !1578, line: 146, type: !27)
!1607 = !DILocalVariable(name: "s23", arg: 5, scope: !1600, file: !1578, line: 146, type: !27)
!1608 = !DILocalVariable(name: "s24", arg: 6, scope: !1600, file: !1578, line: 146, type: !27)
!1609 = !DILocalVariable(name: "s25", arg: 7, scope: !1600, file: !1578, line: 146, type: !27)
!1610 = !DILocalVariable(name: "s26", arg: 8, scope: !1600, file: !1578, line: 146, type: !27)
!1611 = !DILocalVariable(name: "s27", arg: 9, scope: !1600, file: !1578, line: 146, type: !27)
!1612 = !DILocalVariable(name: "s28", arg: 10, scope: !1600, file: !1578, line: 146, type: !27)
!1613 = !DILocation(line: 146, column: 41, scope: !1600, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 167, column: 16, scope: !1615, inlinedAt: !1593)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1578, line: 164, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1598, file: !1578, line: 163, column: 5)
!1617 = !DILocation(line: 146, column: 110, scope: !1600, inlinedAt: !1614)
!1618 = !DILocation(line: 146, column: 120, scope: !1600, inlinedAt: !1614)
!1619 = !DILocation(line: 148, column: 7, scope: !1620, inlinedAt: !1614)
!1620 = distinct !DILexicalBlock(scope: !1600, file: !1578, line: 148, column: 7)
!1621 = !DILocalVariable(name: "s2", arg: 2, scope: !1622, file: !1578, line: 132, type: !36)
!1622 = distinct !DISubprogram(name: "strcaseeq2", scope: !1578, file: !1578, line: 132, type: !1623, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!59, !36, !36, !27, !27, !27, !27, !27, !27, !27}
!1625 = !{!1626, !1621, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1626 = !DILocalVariable(name: "s1", arg: 1, scope: !1622, file: !1578, line: 132, type: !36)
!1627 = !DILocalVariable(name: "s22", arg: 3, scope: !1622, file: !1578, line: 132, type: !27)
!1628 = !DILocalVariable(name: "s23", arg: 4, scope: !1622, file: !1578, line: 132, type: !27)
!1629 = !DILocalVariable(name: "s24", arg: 5, scope: !1622, file: !1578, line: 132, type: !27)
!1630 = !DILocalVariable(name: "s25", arg: 6, scope: !1622, file: !1578, line: 132, type: !27)
!1631 = !DILocalVariable(name: "s26", arg: 7, scope: !1622, file: !1578, line: 132, type: !27)
!1632 = !DILocalVariable(name: "s27", arg: 8, scope: !1622, file: !1578, line: 132, type: !27)
!1633 = !DILocalVariable(name: "s28", arg: 9, scope: !1622, file: !1578, line: 132, type: !27)
!1634 = !DILocation(line: 132, column: 41, scope: !1622, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 153, column: 16, scope: !1636, inlinedAt: !1614)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !1578, line: 150, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1620, file: !1578, line: 149, column: 5)
!1638 = !DILocation(line: 132, column: 100, scope: !1622, inlinedAt: !1635)
!1639 = !DILocation(line: 132, column: 110, scope: !1622, inlinedAt: !1635)
!1640 = !DILocation(line: 134, column: 7, scope: !1641, inlinedAt: !1635)
!1641 = distinct !DILexicalBlock(scope: !1622, file: !1578, line: 134, column: 7)
!1642 = !DILocalVariable(name: "s2", arg: 2, scope: !1643, file: !1578, line: 118, type: !36)
!1643 = distinct !DISubprogram(name: "strcaseeq3", scope: !1578, file: !1578, line: 118, type: !1644, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!59, !36, !36, !27, !27, !27, !27, !27, !27}
!1646 = !{!1647, !1642, !1648, !1649, !1650, !1651, !1652, !1653}
!1647 = !DILocalVariable(name: "s1", arg: 1, scope: !1643, file: !1578, line: 118, type: !36)
!1648 = !DILocalVariable(name: "s23", arg: 3, scope: !1643, file: !1578, line: 118, type: !27)
!1649 = !DILocalVariable(name: "s24", arg: 4, scope: !1643, file: !1578, line: 118, type: !27)
!1650 = !DILocalVariable(name: "s25", arg: 5, scope: !1643, file: !1578, line: 118, type: !27)
!1651 = !DILocalVariable(name: "s26", arg: 6, scope: !1643, file: !1578, line: 118, type: !27)
!1652 = !DILocalVariable(name: "s27", arg: 7, scope: !1643, file: !1578, line: 118, type: !27)
!1653 = !DILocalVariable(name: "s28", arg: 8, scope: !1643, file: !1578, line: 118, type: !27)
!1654 = !DILocation(line: 118, column: 41, scope: !1643, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 139, column: 16, scope: !1656, inlinedAt: !1635)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !1578, line: 136, column: 11)
!1657 = distinct !DILexicalBlock(scope: !1641, file: !1578, line: 135, column: 5)
!1658 = !DILocation(line: 118, column: 90, scope: !1643, inlinedAt: !1655)
!1659 = !DILocation(line: 118, column: 100, scope: !1643, inlinedAt: !1655)
!1660 = !DILocation(line: 120, column: 7, scope: !1661, inlinedAt: !1655)
!1661 = distinct !DILexicalBlock(scope: !1643, file: !1578, line: 120, column: 7)
!1662 = !DILocation(line: 120, column: 7, scope: !1643, inlinedAt: !1655)
!1663 = !DILocalVariable(name: "s2", arg: 2, scope: !1664, file: !1578, line: 104, type: !36)
!1664 = distinct !DISubprogram(name: "strcaseeq4", scope: !1578, file: !1578, line: 104, type: !1665, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!59, !36, !36, !27, !27, !27, !27, !27}
!1667 = !{!1668, !1663, !1669, !1670, !1671, !1672, !1673}
!1668 = !DILocalVariable(name: "s1", arg: 1, scope: !1664, file: !1578, line: 104, type: !36)
!1669 = !DILocalVariable(name: "s24", arg: 3, scope: !1664, file: !1578, line: 104, type: !27)
!1670 = !DILocalVariable(name: "s25", arg: 4, scope: !1664, file: !1578, line: 104, type: !27)
!1671 = !DILocalVariable(name: "s26", arg: 5, scope: !1664, file: !1578, line: 104, type: !27)
!1672 = !DILocalVariable(name: "s27", arg: 6, scope: !1664, file: !1578, line: 104, type: !27)
!1673 = !DILocalVariable(name: "s28", arg: 7, scope: !1664, file: !1578, line: 104, type: !27)
!1674 = !DILocation(line: 104, column: 41, scope: !1664, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 125, column: 16, scope: !1676, inlinedAt: !1655)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !1578, line: 122, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1661, file: !1578, line: 121, column: 5)
!1678 = !DILocation(line: 104, column: 80, scope: !1664, inlinedAt: !1675)
!1679 = !DILocation(line: 104, column: 90, scope: !1664, inlinedAt: !1675)
!1680 = !DILocation(line: 106, column: 7, scope: !1681, inlinedAt: !1675)
!1681 = distinct !DILexicalBlock(scope: !1664, file: !1578, line: 106, column: 7)
!1682 = !DILocation(line: 106, column: 7, scope: !1664, inlinedAt: !1675)
!1683 = !DILocalVariable(name: "s2", arg: 2, scope: !1684, file: !1578, line: 90, type: !36)
!1684 = distinct !DISubprogram(name: "strcaseeq5", scope: !1578, file: !1578, line: 90, type: !1685, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!59, !36, !36, !27, !27, !27, !27}
!1687 = !{!1688, !1683, !1689, !1690, !1691, !1692}
!1688 = !DILocalVariable(name: "s1", arg: 1, scope: !1684, file: !1578, line: 90, type: !36)
!1689 = !DILocalVariable(name: "s25", arg: 3, scope: !1684, file: !1578, line: 90, type: !27)
!1690 = !DILocalVariable(name: "s26", arg: 4, scope: !1684, file: !1578, line: 90, type: !27)
!1691 = !DILocalVariable(name: "s27", arg: 5, scope: !1684, file: !1578, line: 90, type: !27)
!1692 = !DILocalVariable(name: "s28", arg: 6, scope: !1684, file: !1578, line: 90, type: !27)
!1693 = !DILocation(line: 90, column: 41, scope: !1684, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 111, column: 16, scope: !1695, inlinedAt: !1675)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !1578, line: 108, column: 11)
!1696 = distinct !DILexicalBlock(scope: !1681, file: !1578, line: 107, column: 5)
!1697 = !DILocation(line: 90, column: 70, scope: !1684, inlinedAt: !1694)
!1698 = !DILocation(line: 90, column: 80, scope: !1684, inlinedAt: !1694)
!1699 = !DILocation(line: 92, column: 7, scope: !1700, inlinedAt: !1694)
!1700 = distinct !DILexicalBlock(scope: !1684, file: !1578, line: 92, column: 7)
!1701 = !DILocation(line: 92, column: 7, scope: !1684, inlinedAt: !1694)
!1702 = !DILocation(line: 227, column: 12, scope: !1594)
!1703 = !DILocation(line: 227, column: 21, scope: !1594)
!1704 = !DILocation(line: 227, column: 5, scope: !1594)
!1705 = !DILocation(line: 146, column: 41, scope: !1600, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 167, column: 16, scope: !1615, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 228, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1559, file: !127, line: 228, column: 7)
!1709 = !DILocation(line: 146, column: 110, scope: !1600, inlinedAt: !1706)
!1710 = !DILocation(line: 146, column: 120, scope: !1600, inlinedAt: !1706)
!1711 = !DILocation(line: 148, column: 7, scope: !1620, inlinedAt: !1706)
!1712 = !DILocation(line: 132, column: 41, scope: !1622, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 153, column: 16, scope: !1636, inlinedAt: !1706)
!1714 = !DILocation(line: 132, column: 100, scope: !1622, inlinedAt: !1713)
!1715 = !DILocation(line: 132, column: 110, scope: !1622, inlinedAt: !1713)
!1716 = !DILocation(line: 134, column: 7, scope: !1641, inlinedAt: !1713)
!1717 = !DILocation(line: 134, column: 7, scope: !1622, inlinedAt: !1713)
!1718 = !DILocation(line: 118, column: 41, scope: !1643, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 139, column: 16, scope: !1656, inlinedAt: !1713)
!1720 = !DILocation(line: 118, column: 90, scope: !1643, inlinedAt: !1719)
!1721 = !DILocation(line: 118, column: 100, scope: !1643, inlinedAt: !1719)
!1722 = !DILocation(line: 120, column: 7, scope: !1661, inlinedAt: !1719)
!1723 = !DILocation(line: 120, column: 7, scope: !1643, inlinedAt: !1719)
!1724 = !DILocation(line: 104, column: 41, scope: !1664, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 125, column: 16, scope: !1676, inlinedAt: !1719)
!1726 = !DILocation(line: 104, column: 80, scope: !1664, inlinedAt: !1725)
!1727 = !DILocation(line: 104, column: 90, scope: !1664, inlinedAt: !1725)
!1728 = !DILocation(line: 106, column: 7, scope: !1681, inlinedAt: !1725)
!1729 = !DILocation(line: 106, column: 7, scope: !1664, inlinedAt: !1725)
!1730 = !DILocation(line: 90, column: 41, scope: !1684, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 111, column: 16, scope: !1695, inlinedAt: !1725)
!1732 = !DILocation(line: 90, column: 70, scope: !1684, inlinedAt: !1731)
!1733 = !DILocation(line: 90, column: 80, scope: !1684, inlinedAt: !1731)
!1734 = !DILocation(line: 92, column: 7, scope: !1700, inlinedAt: !1731)
!1735 = !DILocation(line: 92, column: 7, scope: !1684, inlinedAt: !1731)
!1736 = !DILocalVariable(name: "s2", arg: 2, scope: !1737, file: !1578, line: 76, type: !36)
!1737 = distinct !DISubprogram(name: "strcaseeq6", scope: !1578, file: !1578, line: 76, type: !1738, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!59, !36, !36, !27, !27, !27}
!1740 = !{!1741, !1736, !1742, !1743, !1744}
!1741 = !DILocalVariable(name: "s1", arg: 1, scope: !1737, file: !1578, line: 76, type: !36)
!1742 = !DILocalVariable(name: "s26", arg: 3, scope: !1737, file: !1578, line: 76, type: !27)
!1743 = !DILocalVariable(name: "s27", arg: 4, scope: !1737, file: !1578, line: 76, type: !27)
!1744 = !DILocalVariable(name: "s28", arg: 5, scope: !1737, file: !1578, line: 76, type: !27)
!1745 = !DILocation(line: 76, column: 41, scope: !1737, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 97, column: 16, scope: !1747, inlinedAt: !1731)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !1578, line: 94, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1700, file: !1578, line: 93, column: 5)
!1749 = !DILocation(line: 76, column: 60, scope: !1737, inlinedAt: !1746)
!1750 = !DILocation(line: 76, column: 70, scope: !1737, inlinedAt: !1746)
!1751 = !DILocation(line: 78, column: 7, scope: !1752, inlinedAt: !1746)
!1752 = distinct !DILexicalBlock(scope: !1737, file: !1578, line: 78, column: 7)
!1753 = !DILocation(line: 78, column: 7, scope: !1737, inlinedAt: !1746)
!1754 = !DILocalVariable(name: "s2", arg: 2, scope: !1755, file: !1578, line: 62, type: !36)
!1755 = distinct !DISubprogram(name: "strcaseeq7", scope: !1578, file: !1578, line: 62, type: !1756, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!59, !36, !36, !27, !27}
!1758 = !{!1759, !1754, !1760, !1761}
!1759 = !DILocalVariable(name: "s1", arg: 1, scope: !1755, file: !1578, line: 62, type: !36)
!1760 = !DILocalVariable(name: "s27", arg: 3, scope: !1755, file: !1578, line: 62, type: !27)
!1761 = !DILocalVariable(name: "s28", arg: 4, scope: !1755, file: !1578, line: 62, type: !27)
!1762 = !DILocation(line: 62, column: 41, scope: !1755, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 83, column: 16, scope: !1764, inlinedAt: !1746)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !1578, line: 80, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1752, file: !1578, line: 79, column: 5)
!1766 = !DILocation(line: 62, column: 50, scope: !1755, inlinedAt: !1763)
!1767 = !DILocation(line: 62, column: 60, scope: !1755, inlinedAt: !1763)
!1768 = !DILocation(line: 64, column: 7, scope: !1769, inlinedAt: !1763)
!1769 = distinct !DILexicalBlock(scope: !1755, file: !1578, line: 64, column: 7)
!1770 = !DILocation(line: 228, column: 7, scope: !1559)
!1771 = !DILocation(line: 229, column: 12, scope: !1708)
!1772 = !DILocation(line: 229, column: 21, scope: !1708)
!1773 = !DILocation(line: 229, column: 5, scope: !1708)
!1774 = !DILocation(line: 231, column: 13, scope: !1559)
!1775 = !DILocation(line: 231, column: 11, scope: !1559)
!1776 = !DILocation(line: 231, column: 3, scope: !1559)
!1777 = !DILocation(line: 232, column: 1, scope: !1559)
!1778 = distinct !DISubprogram(name: "quotearg_alloc", scope: !127, file: !127, line: 791, type: !1779, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!26, !36, !121, !902}
!1781 = !{!1782, !1783, !1784}
!1782 = !DILocalVariable(name: "arg", arg: 1, scope: !1778, file: !127, line: 791, type: !36)
!1783 = !DILocalVariable(name: "argsize", arg: 2, scope: !1778, file: !127, line: 791, type: !121)
!1784 = !DILocalVariable(name: "o", arg: 3, scope: !1778, file: !127, line: 792, type: !902)
!1785 = !DILocation(line: 791, column: 29, scope: !1778)
!1786 = !DILocation(line: 791, column: 41, scope: !1778)
!1787 = !DILocation(line: 792, column: 47, scope: !1778)
!1788 = !DILocalVariable(name: "arg", arg: 1, scope: !1789, file: !127, line: 804, type: !36)
!1789 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !127, file: !127, line: 804, type: !1790, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!26, !36, !121, !578, !902}
!1792 = !{!1788, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1793 = !DILocalVariable(name: "argsize", arg: 2, scope: !1789, file: !127, line: 804, type: !121)
!1794 = !DILocalVariable(name: "size", arg: 3, scope: !1789, file: !127, line: 804, type: !578)
!1795 = !DILocalVariable(name: "o", arg: 4, scope: !1789, file: !127, line: 805, type: !902)
!1796 = !DILocalVariable(name: "p", scope: !1789, file: !127, line: 807, type: !902)
!1797 = !DILocalVariable(name: "e", scope: !1789, file: !127, line: 808, type: !59)
!1798 = !DILocalVariable(name: "flags", scope: !1789, file: !127, line: 810, type: !59)
!1799 = !DILocalVariable(name: "bufsize", scope: !1789, file: !127, line: 811, type: !121)
!1800 = !DILocalVariable(name: "buf", scope: !1789, file: !127, line: 815, type: !26)
!1801 = !DILocation(line: 804, column: 33, scope: !1789, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 794, column: 10, scope: !1778)
!1803 = !DILocation(line: 804, column: 45, scope: !1789, inlinedAt: !1802)
!1804 = !DILocation(line: 804, column: 62, scope: !1789, inlinedAt: !1802)
!1805 = !DILocation(line: 805, column: 51, scope: !1789, inlinedAt: !1802)
!1806 = !DILocation(line: 807, column: 37, scope: !1789, inlinedAt: !1802)
!1807 = !DILocation(line: 807, column: 33, scope: !1789, inlinedAt: !1802)
!1808 = !DILocation(line: 808, column: 11, scope: !1789, inlinedAt: !1802)
!1809 = !DILocation(line: 808, column: 7, scope: !1789, inlinedAt: !1802)
!1810 = !DILocation(line: 810, column: 18, scope: !1789, inlinedAt: !1802)
!1811 = !DILocation(line: 810, column: 24, scope: !1789, inlinedAt: !1802)
!1812 = !DILocation(line: 810, column: 7, scope: !1789, inlinedAt: !1802)
!1813 = !DILocation(line: 811, column: 69, scope: !1789, inlinedAt: !1802)
!1814 = !DILocation(line: 812, column: 53, scope: !1789, inlinedAt: !1802)
!1815 = !DILocation(line: 813, column: 49, scope: !1789, inlinedAt: !1802)
!1816 = !DILocation(line: 814, column: 49, scope: !1789, inlinedAt: !1802)
!1817 = !DILocation(line: 811, column: 20, scope: !1789, inlinedAt: !1802)
!1818 = !DILocation(line: 814, column: 62, scope: !1789, inlinedAt: !1802)
!1819 = !DILocation(line: 811, column: 10, scope: !1789, inlinedAt: !1802)
!1820 = !DILocalVariable(name: "n", arg: 1, scope: !1821, file: !574, line: 220, type: !121)
!1821 = distinct !DISubprogram(name: "xcharalloc", scope: !574, file: !574, line: 220, type: !1822, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!26, !121}
!1824 = !{!1820}
!1825 = !DILocation(line: 220, column: 20, scope: !1821, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 815, column: 15, scope: !1789, inlinedAt: !1802)
!1827 = !DILocation(line: 222, column: 10, scope: !1821, inlinedAt: !1826)
!1828 = !DILocation(line: 815, column: 9, scope: !1789, inlinedAt: !1802)
!1829 = !DILocation(line: 816, column: 60, scope: !1789, inlinedAt: !1802)
!1830 = !DILocation(line: 818, column: 32, scope: !1789, inlinedAt: !1802)
!1831 = !DILocation(line: 818, column: 47, scope: !1789, inlinedAt: !1802)
!1832 = !DILocation(line: 816, column: 3, scope: !1789, inlinedAt: !1802)
!1833 = !DILocation(line: 819, column: 9, scope: !1789, inlinedAt: !1802)
!1834 = !DILocation(line: 794, column: 3, scope: !1778)
!1835 = !DILocation(line: 804, column: 33, scope: !1789)
!1836 = !DILocation(line: 804, column: 45, scope: !1789)
!1837 = !DILocation(line: 804, column: 62, scope: !1789)
!1838 = !DILocation(line: 805, column: 51, scope: !1789)
!1839 = !DILocation(line: 807, column: 37, scope: !1789)
!1840 = !DILocation(line: 807, column: 33, scope: !1789)
!1841 = !DILocation(line: 808, column: 11, scope: !1789)
!1842 = !DILocation(line: 808, column: 7, scope: !1789)
!1843 = !DILocation(line: 810, column: 18, scope: !1789)
!1844 = !DILocation(line: 810, column: 27, scope: !1789)
!1845 = !DILocation(line: 810, column: 24, scope: !1789)
!1846 = !DILocation(line: 810, column: 7, scope: !1789)
!1847 = !DILocation(line: 811, column: 69, scope: !1789)
!1848 = !DILocation(line: 812, column: 53, scope: !1789)
!1849 = !DILocation(line: 813, column: 49, scope: !1789)
!1850 = !DILocation(line: 814, column: 49, scope: !1789)
!1851 = !DILocation(line: 811, column: 20, scope: !1789)
!1852 = !DILocation(line: 814, column: 62, scope: !1789)
!1853 = !DILocation(line: 811, column: 10, scope: !1789)
!1854 = !DILocation(line: 220, column: 20, scope: !1821, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 815, column: 15, scope: !1789)
!1856 = !DILocation(line: 222, column: 10, scope: !1821, inlinedAt: !1855)
!1857 = !DILocation(line: 815, column: 9, scope: !1789)
!1858 = !DILocation(line: 816, column: 60, scope: !1789)
!1859 = !DILocation(line: 818, column: 32, scope: !1789)
!1860 = !DILocation(line: 818, column: 47, scope: !1789)
!1861 = !DILocation(line: 816, column: 3, scope: !1789)
!1862 = !DILocation(line: 819, column: 9, scope: !1789)
!1863 = !DILocation(line: 820, column: 7, scope: !1789)
!1864 = !DILocation(line: 821, column: 11, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1789, file: !127, line: 820, column: 7)
!1866 = !{!1867, !1867, i64 0}
!1867 = !{!"long", !624, i64 0}
!1868 = !DILocation(line: 821, column: 5, scope: !1865)
!1869 = !DILocation(line: 822, column: 3, scope: !1789)
!1870 = distinct !DISubprogram(name: "quotearg_free", scope: !127, file: !127, line: 840, type: !809, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1871)
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "sv", scope: !1870, file: !127, line: 842, type: !154)
!1873 = !DILocalVariable(name: "i", scope: !1870, file: !127, line: 843, type: !59)
!1874 = !DILocation(line: 842, column: 24, scope: !1870)
!1875 = !DILocation(line: 842, column: 19, scope: !1870)
!1876 = !DILocation(line: 843, column: 7, scope: !1870)
!1877 = !DILocation(line: 844, column: 19, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !127, line: 844, column: 3)
!1879 = distinct !DILexicalBlock(scope: !1870, file: !127, line: 844, column: 3)
!1880 = !DILocation(line: 844, column: 17, scope: !1878)
!1881 = !DILocation(line: 844, column: 3, scope: !1879)
!1882 = !DILocation(line: 845, column: 17, scope: !1878)
!1883 = !{!1884, !623, i64 8}
!1884 = !{!"slotvec", !1867, i64 0, !623, i64 8}
!1885 = !DILocation(line: 845, column: 5, scope: !1878)
!1886 = !DILocation(line: 844, column: 28, scope: !1878)
!1887 = distinct !{!1887, !1881, !1888}
!1888 = !DILocation(line: 845, column: 20, scope: !1879)
!1889 = !DILocation(line: 846, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1870, file: !127, line: 846, column: 7)
!1891 = !DILocation(line: 846, column: 17, scope: !1890)
!1892 = !DILocation(line: 846, column: 7, scope: !1870)
!1893 = !DILocation(line: 848, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !127, line: 847, column: 5)
!1895 = !DILocation(line: 849, column: 21, scope: !1894)
!1896 = !{!1884, !1867, i64 0}
!1897 = !DILocation(line: 850, column: 20, scope: !1894)
!1898 = !DILocation(line: 851, column: 5, scope: !1894)
!1899 = !DILocation(line: 852, column: 10, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1870, file: !127, line: 852, column: 7)
!1901 = !DILocation(line: 852, column: 7, scope: !1870)
!1902 = !DILocation(line: 854, column: 13, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !127, line: 853, column: 5)
!1904 = !DILocation(line: 854, column: 7, scope: !1903)
!1905 = !DILocation(line: 855, column: 15, scope: !1903)
!1906 = !DILocation(line: 856, column: 5, scope: !1903)
!1907 = !DILocation(line: 857, column: 10, scope: !1870)
!1908 = !DILocation(line: 858, column: 1, scope: !1870)
!1909 = distinct !DISubprogram(name: "quotearg_n", scope: !127, file: !127, line: 922, type: !1910, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!26, !59, !36}
!1912 = !{!1913, !1914}
!1913 = !DILocalVariable(name: "n", arg: 1, scope: !1909, file: !127, line: 922, type: !59)
!1914 = !DILocalVariable(name: "arg", arg: 2, scope: !1909, file: !127, line: 922, type: !36)
!1915 = !DILocation(line: 922, column: 17, scope: !1909)
!1916 = !DILocation(line: 922, column: 32, scope: !1909)
!1917 = !DILocation(line: 924, column: 10, scope: !1909)
!1918 = !DILocation(line: 924, column: 3, scope: !1909)
!1919 = distinct !DISubprogram(name: "quotearg_n_options", scope: !127, file: !127, line: 869, type: !1920, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!26, !59, !36, !121, !902}
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929, !1932, !1934, !1935, !1936}
!1923 = !DILocalVariable(name: "n", arg: 1, scope: !1919, file: !127, line: 869, type: !59)
!1924 = !DILocalVariable(name: "arg", arg: 2, scope: !1919, file: !127, line: 869, type: !36)
!1925 = !DILocalVariable(name: "argsize", arg: 3, scope: !1919, file: !127, line: 869, type: !121)
!1926 = !DILocalVariable(name: "options", arg: 4, scope: !1919, file: !127, line: 870, type: !902)
!1927 = !DILocalVariable(name: "e", scope: !1919, file: !127, line: 872, type: !59)
!1928 = !DILocalVariable(name: "sv", scope: !1919, file: !127, line: 874, type: !154)
!1929 = !DILocalVariable(name: "preallocated", scope: !1930, file: !127, line: 881, type: !79)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !127, line: 880, column: 5)
!1931 = distinct !DILexicalBlock(scope: !1919, file: !127, line: 879, column: 7)
!1932 = !DILocalVariable(name: "size", scope: !1933, file: !127, line: 894, type: !121)
!1933 = distinct !DILexicalBlock(scope: !1919, file: !127, line: 893, column: 3)
!1934 = !DILocalVariable(name: "val", scope: !1933, file: !127, line: 895, type: !26)
!1935 = !DILocalVariable(name: "flags", scope: !1933, file: !127, line: 897, type: !59)
!1936 = !DILocalVariable(name: "qsize", scope: !1933, file: !127, line: 898, type: !121)
!1937 = !DILocation(line: 869, column: 25, scope: !1919)
!1938 = !DILocation(line: 869, column: 40, scope: !1919)
!1939 = !DILocation(line: 869, column: 52, scope: !1919)
!1940 = !DILocation(line: 870, column: 51, scope: !1919)
!1941 = !DILocation(line: 872, column: 11, scope: !1919)
!1942 = !DILocation(line: 872, column: 7, scope: !1919)
!1943 = !DILocation(line: 874, column: 24, scope: !1919)
!1944 = !DILocation(line: 874, column: 19, scope: !1919)
!1945 = !DILocation(line: 876, column: 9, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1919, file: !127, line: 876, column: 7)
!1947 = !DILocation(line: 876, column: 7, scope: !1919)
!1948 = !DILocation(line: 877, column: 5, scope: !1946)
!1949 = !DILocation(line: 879, column: 7, scope: !1931)
!1950 = !DILocation(line: 879, column: 14, scope: !1931)
!1951 = !DILocation(line: 879, column: 7, scope: !1919)
!1952 = !DILocation(line: 881, column: 31, scope: !1930)
!1953 = !DILocation(line: 883, column: 67, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1930, file: !127, line: 883, column: 11)
!1955 = !DILocation(line: 883, column: 11, scope: !1930)
!1956 = !DILocation(line: 884, column: 9, scope: !1954)
!1957 = !DILocation(line: 886, column: 32, scope: !1930)
!1958 = !DILocation(line: 886, column: 61, scope: !1930)
!1959 = !DILocation(line: 886, column: 58, scope: !1930)
!1960 = !DILocation(line: 886, column: 66, scope: !1930)
!1961 = !DILocation(line: 886, column: 22, scope: !1930)
!1962 = !DILocation(line: 886, column: 15, scope: !1930)
!1963 = !DILocation(line: 887, column: 11, scope: !1930)
!1964 = !DILocation(line: 888, column: 15, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1930, file: !127, line: 887, column: 11)
!1966 = !{i64 0, i64 8, !1866, i64 8, i64 8, !622}
!1967 = !DILocation(line: 888, column: 9, scope: !1965)
!1968 = !DILocation(line: 889, column: 20, scope: !1930)
!1969 = !DILocation(line: 889, column: 18, scope: !1930)
!1970 = !DILocation(line: 889, column: 7, scope: !1930)
!1971 = !DILocation(line: 889, column: 38, scope: !1930)
!1972 = !DILocation(line: 889, column: 31, scope: !1930)
!1973 = !DILocation(line: 889, column: 48, scope: !1930)
!1974 = !DILocation(line: 890, column: 14, scope: !1930)
!1975 = !DILocation(line: 891, column: 5, scope: !1930)
!1976 = !DILocation(line: 894, column: 19, scope: !1933)
!1977 = !DILocation(line: 894, column: 25, scope: !1933)
!1978 = !DILocation(line: 894, column: 12, scope: !1933)
!1979 = !DILocation(line: 895, column: 23, scope: !1933)
!1980 = !DILocation(line: 895, column: 11, scope: !1933)
!1981 = !DILocation(line: 897, column: 26, scope: !1933)
!1982 = !DILocation(line: 897, column: 32, scope: !1933)
!1983 = !DILocation(line: 897, column: 9, scope: !1933)
!1984 = !DILocation(line: 899, column: 55, scope: !1933)
!1985 = !DILocation(line: 900, column: 46, scope: !1933)
!1986 = !DILocation(line: 901, column: 55, scope: !1933)
!1987 = !DILocation(line: 902, column: 55, scope: !1933)
!1988 = !DILocation(line: 898, column: 20, scope: !1933)
!1989 = !DILocation(line: 898, column: 12, scope: !1933)
!1990 = !DILocation(line: 904, column: 14, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1933, file: !127, line: 904, column: 9)
!1992 = !DILocation(line: 904, column: 9, scope: !1933)
!1993 = !DILocation(line: 906, column: 35, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !127, line: 905, column: 7)
!1995 = !DILocation(line: 906, column: 20, scope: !1994)
!1996 = !DILocation(line: 907, column: 17, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1994, file: !127, line: 907, column: 13)
!1998 = !DILocation(line: 907, column: 13, scope: !1994)
!1999 = !DILocation(line: 908, column: 11, scope: !1997)
!2000 = !DILocation(line: 220, column: 20, scope: !1821, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 909, column: 27, scope: !1994)
!2002 = !DILocation(line: 222, column: 10, scope: !1821, inlinedAt: !2001)
!2003 = !DILocation(line: 909, column: 19, scope: !1994)
!2004 = !DILocation(line: 910, column: 69, scope: !1994)
!2005 = !DILocation(line: 912, column: 44, scope: !1994)
!2006 = !DILocation(line: 913, column: 44, scope: !1994)
!2007 = !DILocation(line: 910, column: 9, scope: !1994)
!2008 = !DILocation(line: 914, column: 7, scope: !1994)
!2009 = !DILocation(line: 916, column: 11, scope: !1933)
!2010 = !DILocation(line: 917, column: 5, scope: !1933)
!2011 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !127, file: !127, line: 928, type: !2012, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!26, !59, !36, !121}
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "n", arg: 1, scope: !2011, file: !127, line: 928, type: !59)
!2016 = !DILocalVariable(name: "arg", arg: 2, scope: !2011, file: !127, line: 928, type: !36)
!2017 = !DILocalVariable(name: "argsize", arg: 3, scope: !2011, file: !127, line: 928, type: !121)
!2018 = !DILocation(line: 928, column: 21, scope: !2011)
!2019 = !DILocation(line: 928, column: 36, scope: !2011)
!2020 = !DILocation(line: 928, column: 48, scope: !2011)
!2021 = !DILocation(line: 930, column: 10, scope: !2011)
!2022 = !DILocation(line: 930, column: 3, scope: !2011)
!2023 = distinct !DISubprogram(name: "quotearg", scope: !127, file: !127, line: 934, type: !2024, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!26, !36}
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "arg", arg: 1, scope: !2023, file: !127, line: 934, type: !36)
!2028 = !DILocation(line: 934, column: 23, scope: !2023)
!2029 = !DILocation(line: 922, column: 17, scope: !1909, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 936, column: 10, scope: !2023)
!2031 = !DILocation(line: 922, column: 32, scope: !1909, inlinedAt: !2030)
!2032 = !DILocation(line: 924, column: 10, scope: !1909, inlinedAt: !2030)
!2033 = !DILocation(line: 936, column: 3, scope: !2023)
!2034 = distinct !DISubprogram(name: "quotearg_mem", scope: !127, file: !127, line: 940, type: !2035, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!26, !36, !121}
!2037 = !{!2038, !2039}
!2038 = !DILocalVariable(name: "arg", arg: 1, scope: !2034, file: !127, line: 940, type: !36)
!2039 = !DILocalVariable(name: "argsize", arg: 2, scope: !2034, file: !127, line: 940, type: !121)
!2040 = !DILocation(line: 940, column: 27, scope: !2034)
!2041 = !DILocation(line: 940, column: 39, scope: !2034)
!2042 = !DILocation(line: 928, column: 21, scope: !2011, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 942, column: 10, scope: !2034)
!2044 = !DILocation(line: 928, column: 36, scope: !2011, inlinedAt: !2043)
!2045 = !DILocation(line: 928, column: 48, scope: !2011, inlinedAt: !2043)
!2046 = !DILocation(line: 930, column: 10, scope: !2011, inlinedAt: !2043)
!2047 = !DILocation(line: 942, column: 3, scope: !2034)
!2048 = distinct !DISubprogram(name: "quotearg_n_style", scope: !127, file: !127, line: 946, type: !2049, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!26, !59, !11, !36}
!2051 = !{!2052, !2053, !2054, !2055}
!2052 = !DILocalVariable(name: "n", arg: 1, scope: !2048, file: !127, line: 946, type: !59)
!2053 = !DILocalVariable(name: "s", arg: 2, scope: !2048, file: !127, line: 946, type: !11)
!2054 = !DILocalVariable(name: "arg", arg: 3, scope: !2048, file: !127, line: 946, type: !36)
!2055 = !DILocalVariable(name: "o", scope: !2048, file: !127, line: 948, type: !903)
!2056 = !DILocalVariable(name: "o", scope: !2057, file: !127, line: 187, type: !134)
!2057 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !127, file: !127, line: 185, type: !2058, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!134, !11}
!2060 = !{!2061, !2056}
!2061 = !DILocalVariable(name: "style", arg: 1, scope: !2057, file: !127, line: 185, type: !11)
!2062 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2063 = !DILocation(line: 187, column: 26, scope: !2057, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 948, column: 36, scope: !2048)
!2065 = !DILocation(line: 946, column: 23, scope: !2048)
!2066 = !DILocation(line: 946, column: 45, scope: !2048)
!2067 = !DILocation(line: 946, column: 60, scope: !2048)
!2068 = !DILocation(line: 948, column: 3, scope: !2048)
!2069 = !DILocation(line: 948, column: 32, scope: !2048)
!2070 = !DILocation(line: 185, column: 48, scope: !2057, inlinedAt: !2064)
!2071 = !DILocation(line: 187, column: 3, scope: !2057, inlinedAt: !2064)
!2072 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2073 = !DILocation(line: 188, column: 13, scope: !2074, inlinedAt: !2064)
!2074 = distinct !DILexicalBlock(scope: !2057, file: !127, line: 188, column: 7)
!2075 = !DILocation(line: 188, column: 7, scope: !2057, inlinedAt: !2064)
!2076 = !DILocation(line: 189, column: 5, scope: !2074, inlinedAt: !2064)
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"quoting_options_from_style: argument 0"}
!2079 = distinct !{!2079, !"quoting_options_from_style"}
!2080 = !DILocation(line: 191, column: 10, scope: !2057, inlinedAt: !2064)
!2081 = !DILocation(line: 192, column: 1, scope: !2057, inlinedAt: !2064)
!2082 = !DILocation(line: 949, column: 10, scope: !2048)
!2083 = !DILocation(line: 950, column: 1, scope: !2048)
!2084 = !DILocation(line: 949, column: 3, scope: !2048)
!2085 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !127, file: !127, line: 953, type: !2086, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!26, !59, !11, !36, !121}
!2088 = !{!2089, !2090, !2091, !2092, !2093}
!2089 = !DILocalVariable(name: "n", arg: 1, scope: !2085, file: !127, line: 953, type: !59)
!2090 = !DILocalVariable(name: "s", arg: 2, scope: !2085, file: !127, line: 953, type: !11)
!2091 = !DILocalVariable(name: "arg", arg: 3, scope: !2085, file: !127, line: 954, type: !36)
!2092 = !DILocalVariable(name: "argsize", arg: 4, scope: !2085, file: !127, line: 954, type: !121)
!2093 = !DILocalVariable(name: "o", scope: !2085, file: !127, line: 956, type: !903)
!2094 = !DILocation(line: 187, column: 26, scope: !2057, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 956, column: 36, scope: !2085)
!2096 = !DILocation(line: 953, column: 27, scope: !2085)
!2097 = !DILocation(line: 953, column: 49, scope: !2085)
!2098 = !DILocation(line: 954, column: 35, scope: !2085)
!2099 = !DILocation(line: 954, column: 47, scope: !2085)
!2100 = !DILocation(line: 956, column: 3, scope: !2085)
!2101 = !DILocation(line: 956, column: 32, scope: !2085)
!2102 = !DILocation(line: 185, column: 48, scope: !2057, inlinedAt: !2095)
!2103 = !DILocation(line: 187, column: 3, scope: !2057, inlinedAt: !2095)
!2104 = !DILocation(line: 188, column: 13, scope: !2074, inlinedAt: !2095)
!2105 = !DILocation(line: 188, column: 7, scope: !2057, inlinedAt: !2095)
!2106 = !DILocation(line: 189, column: 5, scope: !2074, inlinedAt: !2095)
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"quoting_options_from_style: argument 0"}
!2109 = distinct !{!2109, !"quoting_options_from_style"}
!2110 = !DILocation(line: 191, column: 10, scope: !2057, inlinedAt: !2095)
!2111 = !DILocation(line: 192, column: 1, scope: !2057, inlinedAt: !2095)
!2112 = !DILocation(line: 957, column: 10, scope: !2085)
!2113 = !DILocation(line: 958, column: 1, scope: !2085)
!2114 = !DILocation(line: 957, column: 3, scope: !2085)
!2115 = distinct !DISubprogram(name: "quotearg_style", scope: !127, file: !127, line: 961, type: !2116, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!26, !11, !36}
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "s", arg: 1, scope: !2115, file: !127, line: 961, type: !11)
!2120 = !DILocalVariable(name: "arg", arg: 2, scope: !2115, file: !127, line: 961, type: !36)
!2121 = !DILocation(line: 187, column: 26, scope: !2057, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 948, column: 36, scope: !2048, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 963, column: 10, scope: !2115)
!2124 = !DILocation(line: 961, column: 36, scope: !2115)
!2125 = !DILocation(line: 961, column: 51, scope: !2115)
!2126 = !DILocation(line: 946, column: 23, scope: !2048, inlinedAt: !2123)
!2127 = !DILocation(line: 946, column: 45, scope: !2048, inlinedAt: !2123)
!2128 = !DILocation(line: 946, column: 60, scope: !2048, inlinedAt: !2123)
!2129 = !DILocation(line: 948, column: 3, scope: !2048, inlinedAt: !2123)
!2130 = !DILocation(line: 948, column: 32, scope: !2048, inlinedAt: !2123)
!2131 = !DILocation(line: 185, column: 48, scope: !2057, inlinedAt: !2122)
!2132 = !DILocation(line: 187, column: 3, scope: !2057, inlinedAt: !2122)
!2133 = !DILocation(line: 188, column: 13, scope: !2074, inlinedAt: !2122)
!2134 = !DILocation(line: 188, column: 7, scope: !2057, inlinedAt: !2122)
!2135 = !DILocation(line: 189, column: 5, scope: !2074, inlinedAt: !2122)
!2136 = !{!2137}
!2137 = distinct !{!2137, !2138, !"quoting_options_from_style: argument 0"}
!2138 = distinct !{!2138, !"quoting_options_from_style"}
!2139 = !DILocation(line: 191, column: 10, scope: !2057, inlinedAt: !2122)
!2140 = !DILocation(line: 192, column: 1, scope: !2057, inlinedAt: !2122)
!2141 = !DILocation(line: 949, column: 10, scope: !2048, inlinedAt: !2123)
!2142 = !DILocation(line: 950, column: 1, scope: !2048, inlinedAt: !2123)
!2143 = !DILocation(line: 963, column: 3, scope: !2115)
!2144 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !127, file: !127, line: 967, type: !2145, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!26, !11, !36, !121}
!2147 = !{!2148, !2149, !2150}
!2148 = !DILocalVariable(name: "s", arg: 1, scope: !2144, file: !127, line: 967, type: !11)
!2149 = !DILocalVariable(name: "arg", arg: 2, scope: !2144, file: !127, line: 967, type: !36)
!2150 = !DILocalVariable(name: "argsize", arg: 3, scope: !2144, file: !127, line: 967, type: !121)
!2151 = !DILocation(line: 187, column: 26, scope: !2057, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 956, column: 36, scope: !2085, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 969, column: 10, scope: !2144)
!2154 = !DILocation(line: 967, column: 40, scope: !2144)
!2155 = !DILocation(line: 967, column: 55, scope: !2144)
!2156 = !DILocation(line: 967, column: 67, scope: !2144)
!2157 = !DILocation(line: 953, column: 27, scope: !2085, inlinedAt: !2153)
!2158 = !DILocation(line: 953, column: 49, scope: !2085, inlinedAt: !2153)
!2159 = !DILocation(line: 954, column: 35, scope: !2085, inlinedAt: !2153)
!2160 = !DILocation(line: 954, column: 47, scope: !2085, inlinedAt: !2153)
!2161 = !DILocation(line: 956, column: 3, scope: !2085, inlinedAt: !2153)
!2162 = !DILocation(line: 956, column: 32, scope: !2085, inlinedAt: !2153)
!2163 = !DILocation(line: 185, column: 48, scope: !2057, inlinedAt: !2152)
!2164 = !DILocation(line: 187, column: 3, scope: !2057, inlinedAt: !2152)
!2165 = !DILocation(line: 188, column: 13, scope: !2074, inlinedAt: !2152)
!2166 = !DILocation(line: 188, column: 7, scope: !2057, inlinedAt: !2152)
!2167 = !DILocation(line: 189, column: 5, scope: !2074, inlinedAt: !2152)
!2168 = !{!2169}
!2169 = distinct !{!2169, !2170, !"quoting_options_from_style: argument 0"}
!2170 = distinct !{!2170, !"quoting_options_from_style"}
!2171 = !DILocation(line: 191, column: 10, scope: !2057, inlinedAt: !2152)
!2172 = !DILocation(line: 192, column: 1, scope: !2057, inlinedAt: !2152)
!2173 = !DILocation(line: 957, column: 10, scope: !2085, inlinedAt: !2153)
!2174 = !DILocation(line: 958, column: 1, scope: !2085, inlinedAt: !2153)
!2175 = !DILocation(line: 969, column: 3, scope: !2144)
!2176 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !127, file: !127, line: 973, type: !2177, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!26, !36, !121, !27}
!2179 = !{!2180, !2181, !2182, !2183}
!2180 = !DILocalVariable(name: "arg", arg: 1, scope: !2176, file: !127, line: 973, type: !36)
!2181 = !DILocalVariable(name: "argsize", arg: 2, scope: !2176, file: !127, line: 973, type: !121)
!2182 = !DILocalVariable(name: "ch", arg: 3, scope: !2176, file: !127, line: 973, type: !27)
!2183 = !DILocalVariable(name: "options", scope: !2176, file: !127, line: 975, type: !134)
!2184 = !DILocation(line: 973, column: 32, scope: !2176)
!2185 = !DILocation(line: 973, column: 44, scope: !2176)
!2186 = !DILocation(line: 973, column: 58, scope: !2176)
!2187 = !DILocation(line: 975, column: 3, scope: !2176)
!2188 = !DILocation(line: 976, column: 13, scope: !2176)
!2189 = !{i64 0, i64 4, !1130, i64 4, i64 4, !685, i64 8, i64 32, !1130, i64 40, i64 8, !622, i64 48, i64 8, !622}
!2190 = !DILocation(line: 975, column: 26, scope: !2176)
!2191 = !DILocation(line: 144, column: 43, scope: !924, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 977, column: 3, scope: !2176)
!2193 = !DILocation(line: 144, column: 51, scope: !924, inlinedAt: !2192)
!2194 = !DILocation(line: 144, column: 58, scope: !924, inlinedAt: !2192)
!2195 = !DILocation(line: 146, column: 17, scope: !924, inlinedAt: !2192)
!2196 = !DILocation(line: 148, column: 62, scope: !924, inlinedAt: !2192)
!2197 = !DILocation(line: 148, column: 57, scope: !924, inlinedAt: !2192)
!2198 = !DILocation(line: 147, column: 17, scope: !924, inlinedAt: !2192)
!2199 = !DILocation(line: 149, column: 18, scope: !924, inlinedAt: !2192)
!2200 = !DILocation(line: 149, column: 15, scope: !924, inlinedAt: !2192)
!2201 = !DILocation(line: 149, column: 7, scope: !924, inlinedAt: !2192)
!2202 = !DILocation(line: 150, column: 12, scope: !924, inlinedAt: !2192)
!2203 = !DILocation(line: 150, column: 15, scope: !924, inlinedAt: !2192)
!2204 = !DILocation(line: 150, column: 25, scope: !924, inlinedAt: !2192)
!2205 = !DILocation(line: 150, column: 7, scope: !924, inlinedAt: !2192)
!2206 = !DILocation(line: 151, column: 18, scope: !924, inlinedAt: !2192)
!2207 = !DILocation(line: 151, column: 23, scope: !924, inlinedAt: !2192)
!2208 = !DILocation(line: 151, column: 6, scope: !924, inlinedAt: !2192)
!2209 = !DILocation(line: 978, column: 10, scope: !2176)
!2210 = !DILocation(line: 979, column: 1, scope: !2176)
!2211 = !DILocation(line: 978, column: 3, scope: !2176)
!2212 = distinct !DISubprogram(name: "quotearg_char", scope: !127, file: !127, line: 982, type: !2213, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!26, !36, !27}
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "arg", arg: 1, scope: !2212, file: !127, line: 982, type: !36)
!2217 = !DILocalVariable(name: "ch", arg: 2, scope: !2212, file: !127, line: 982, type: !27)
!2218 = !DILocation(line: 982, column: 28, scope: !2212)
!2219 = !DILocation(line: 982, column: 38, scope: !2212)
!2220 = !DILocation(line: 973, column: 32, scope: !2176, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 984, column: 10, scope: !2212)
!2222 = !DILocation(line: 973, column: 44, scope: !2176, inlinedAt: !2221)
!2223 = !DILocation(line: 973, column: 58, scope: !2176, inlinedAt: !2221)
!2224 = !DILocation(line: 975, column: 3, scope: !2176, inlinedAt: !2221)
!2225 = !DILocation(line: 976, column: 13, scope: !2176, inlinedAt: !2221)
!2226 = !DILocation(line: 975, column: 26, scope: !2176, inlinedAt: !2221)
!2227 = !DILocation(line: 144, column: 43, scope: !924, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 977, column: 3, scope: !2176, inlinedAt: !2221)
!2229 = !DILocation(line: 144, column: 51, scope: !924, inlinedAt: !2228)
!2230 = !DILocation(line: 144, column: 58, scope: !924, inlinedAt: !2228)
!2231 = !DILocation(line: 146, column: 17, scope: !924, inlinedAt: !2228)
!2232 = !DILocation(line: 148, column: 62, scope: !924, inlinedAt: !2228)
!2233 = !DILocation(line: 148, column: 57, scope: !924, inlinedAt: !2228)
!2234 = !DILocation(line: 147, column: 17, scope: !924, inlinedAt: !2228)
!2235 = !DILocation(line: 149, column: 18, scope: !924, inlinedAt: !2228)
!2236 = !DILocation(line: 149, column: 15, scope: !924, inlinedAt: !2228)
!2237 = !DILocation(line: 149, column: 7, scope: !924, inlinedAt: !2228)
!2238 = !DILocation(line: 150, column: 12, scope: !924, inlinedAt: !2228)
!2239 = !DILocation(line: 150, column: 15, scope: !924, inlinedAt: !2228)
!2240 = !DILocation(line: 150, column: 25, scope: !924, inlinedAt: !2228)
!2241 = !DILocation(line: 150, column: 7, scope: !924, inlinedAt: !2228)
!2242 = !DILocation(line: 151, column: 18, scope: !924, inlinedAt: !2228)
!2243 = !DILocation(line: 151, column: 23, scope: !924, inlinedAt: !2228)
!2244 = !DILocation(line: 151, column: 6, scope: !924, inlinedAt: !2228)
!2245 = !DILocation(line: 978, column: 10, scope: !2176, inlinedAt: !2221)
!2246 = !DILocation(line: 979, column: 1, scope: !2176, inlinedAt: !2221)
!2247 = !DILocation(line: 984, column: 3, scope: !2212)
!2248 = distinct !DISubprogram(name: "quotearg_colon", scope: !127, file: !127, line: 988, type: !2024, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2249)
!2249 = !{!2250}
!2250 = !DILocalVariable(name: "arg", arg: 1, scope: !2248, file: !127, line: 988, type: !36)
!2251 = !DILocation(line: 988, column: 29, scope: !2248)
!2252 = !DILocation(line: 982, column: 28, scope: !2212, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 990, column: 10, scope: !2248)
!2254 = !DILocation(line: 982, column: 38, scope: !2212, inlinedAt: !2253)
!2255 = !DILocation(line: 973, column: 32, scope: !2176, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 984, column: 10, scope: !2212, inlinedAt: !2253)
!2257 = !DILocation(line: 973, column: 44, scope: !2176, inlinedAt: !2256)
!2258 = !DILocation(line: 973, column: 58, scope: !2176, inlinedAt: !2256)
!2259 = !DILocation(line: 975, column: 3, scope: !2176, inlinedAt: !2256)
!2260 = !DILocation(line: 976, column: 13, scope: !2176, inlinedAt: !2256)
!2261 = !DILocation(line: 975, column: 26, scope: !2176, inlinedAt: !2256)
!2262 = !DILocation(line: 144, column: 43, scope: !924, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 977, column: 3, scope: !2176, inlinedAt: !2256)
!2264 = !DILocation(line: 144, column: 51, scope: !924, inlinedAt: !2263)
!2265 = !DILocation(line: 144, column: 58, scope: !924, inlinedAt: !2263)
!2266 = !DILocation(line: 146, column: 17, scope: !924, inlinedAt: !2263)
!2267 = !DILocation(line: 148, column: 57, scope: !924, inlinedAt: !2263)
!2268 = !DILocation(line: 147, column: 17, scope: !924, inlinedAt: !2263)
!2269 = !DILocation(line: 149, column: 7, scope: !924, inlinedAt: !2263)
!2270 = !DILocation(line: 150, column: 12, scope: !924, inlinedAt: !2263)
!2271 = !DILocation(line: 151, column: 6, scope: !924, inlinedAt: !2263)
!2272 = !DILocation(line: 978, column: 10, scope: !2176, inlinedAt: !2256)
!2273 = !DILocation(line: 979, column: 1, scope: !2176, inlinedAt: !2256)
!2274 = !DILocation(line: 990, column: 3, scope: !2248)
!2275 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !127, file: !127, line: 994, type: !2035, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2276)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "arg", arg: 1, scope: !2275, file: !127, line: 994, type: !36)
!2278 = !DILocalVariable(name: "argsize", arg: 2, scope: !2275, file: !127, line: 994, type: !121)
!2279 = !DILocation(line: 994, column: 33, scope: !2275)
!2280 = !DILocation(line: 994, column: 45, scope: !2275)
!2281 = !DILocation(line: 973, column: 32, scope: !2176, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 996, column: 10, scope: !2275)
!2283 = !DILocation(line: 973, column: 44, scope: !2176, inlinedAt: !2282)
!2284 = !DILocation(line: 973, column: 58, scope: !2176, inlinedAt: !2282)
!2285 = !DILocation(line: 975, column: 3, scope: !2176, inlinedAt: !2282)
!2286 = !DILocation(line: 976, column: 13, scope: !2176, inlinedAt: !2282)
!2287 = !DILocation(line: 975, column: 26, scope: !2176, inlinedAt: !2282)
!2288 = !DILocation(line: 144, column: 43, scope: !924, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 977, column: 3, scope: !2176, inlinedAt: !2282)
!2290 = !DILocation(line: 144, column: 51, scope: !924, inlinedAt: !2289)
!2291 = !DILocation(line: 144, column: 58, scope: !924, inlinedAt: !2289)
!2292 = !DILocation(line: 146, column: 17, scope: !924, inlinedAt: !2289)
!2293 = !DILocation(line: 148, column: 57, scope: !924, inlinedAt: !2289)
!2294 = !DILocation(line: 147, column: 17, scope: !924, inlinedAt: !2289)
!2295 = !DILocation(line: 149, column: 7, scope: !924, inlinedAt: !2289)
!2296 = !DILocation(line: 150, column: 12, scope: !924, inlinedAt: !2289)
!2297 = !DILocation(line: 151, column: 6, scope: !924, inlinedAt: !2289)
!2298 = !DILocation(line: 978, column: 10, scope: !2176, inlinedAt: !2282)
!2299 = !DILocation(line: 979, column: 1, scope: !2176, inlinedAt: !2282)
!2300 = !DILocation(line: 996, column: 3, scope: !2275)
!2301 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !127, file: !127, line: 1000, type: !2049, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2302)
!2302 = !{!2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "n", arg: 1, scope: !2301, file: !127, line: 1000, type: !59)
!2304 = !DILocalVariable(name: "s", arg: 2, scope: !2301, file: !127, line: 1000, type: !11)
!2305 = !DILocalVariable(name: "arg", arg: 3, scope: !2301, file: !127, line: 1000, type: !36)
!2306 = !DILocalVariable(name: "options", scope: !2301, file: !127, line: 1002, type: !134)
!2307 = !DILocation(line: 187, column: 26, scope: !2057, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1003, column: 13, scope: !2301)
!2309 = !DILocation(line: 1000, column: 29, scope: !2301)
!2310 = !DILocation(line: 1000, column: 51, scope: !2301)
!2311 = !DILocation(line: 1000, column: 66, scope: !2301)
!2312 = !DILocation(line: 1002, column: 3, scope: !2301)
!2313 = !DILocation(line: 185, column: 48, scope: !2057, inlinedAt: !2308)
!2314 = !DILocation(line: 187, column: 3, scope: !2057, inlinedAt: !2308)
!2315 = !DILocation(line: 188, column: 13, scope: !2074, inlinedAt: !2308)
!2316 = !DILocation(line: 188, column: 7, scope: !2057, inlinedAt: !2308)
!2317 = !DILocation(line: 189, column: 5, scope: !2074, inlinedAt: !2308)
!2318 = !{!2319}
!2319 = distinct !{!2319, !2320, !"quoting_options_from_style: argument 0"}
!2320 = distinct !{!2320, !"quoting_options_from_style"}
!2321 = !DILocation(line: 191, column: 10, scope: !2057, inlinedAt: !2308)
!2322 = !DILocation(line: 192, column: 1, scope: !2057, inlinedAt: !2308)
!2323 = !DILocation(line: 1003, column: 13, scope: !2301)
!2324 = !DILocation(line: 1002, column: 26, scope: !2301)
!2325 = !DILocation(line: 144, column: 43, scope: !924, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 1004, column: 3, scope: !2301)
!2327 = !DILocation(line: 144, column: 51, scope: !924, inlinedAt: !2326)
!2328 = !DILocation(line: 144, column: 58, scope: !924, inlinedAt: !2326)
!2329 = !DILocation(line: 146, column: 17, scope: !924, inlinedAt: !2326)
!2330 = !DILocation(line: 148, column: 57, scope: !924, inlinedAt: !2326)
!2331 = !DILocation(line: 147, column: 17, scope: !924, inlinedAt: !2326)
!2332 = !DILocation(line: 149, column: 7, scope: !924, inlinedAt: !2326)
!2333 = !DILocation(line: 150, column: 12, scope: !924, inlinedAt: !2326)
!2334 = !DILocation(line: 151, column: 6, scope: !924, inlinedAt: !2326)
!2335 = !DILocation(line: 1005, column: 10, scope: !2301)
!2336 = !DILocation(line: 1006, column: 1, scope: !2301)
!2337 = !DILocation(line: 1005, column: 3, scope: !2301)
!2338 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !127, file: !127, line: 1009, type: !2339, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!26, !59, !36, !36, !36}
!2341 = !{!2342, !2343, !2344, !2345}
!2342 = !DILocalVariable(name: "n", arg: 1, scope: !2338, file: !127, line: 1009, type: !59)
!2343 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2338, file: !127, line: 1009, type: !36)
!2344 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2338, file: !127, line: 1010, type: !36)
!2345 = !DILocalVariable(name: "arg", arg: 4, scope: !2338, file: !127, line: 1010, type: !36)
!2346 = !DILocation(line: 1009, column: 24, scope: !2338)
!2347 = !DILocation(line: 1009, column: 39, scope: !2338)
!2348 = !DILocation(line: 1010, column: 32, scope: !2338)
!2349 = !DILocation(line: 1010, column: 57, scope: !2338)
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2351, file: !127, line: 1017, type: !59)
!2351 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !127, file: !127, line: 1017, type: !2352, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!26, !59, !36, !36, !36, !121}
!2354 = !{!2350, !2355, !2356, !2357, !2358, !2359}
!2355 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2351, file: !127, line: 1017, type: !36)
!2356 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2351, file: !127, line: 1018, type: !36)
!2357 = !DILocalVariable(name: "arg", arg: 4, scope: !2351, file: !127, line: 1019, type: !36)
!2358 = !DILocalVariable(name: "argsize", arg: 5, scope: !2351, file: !127, line: 1019, type: !121)
!2359 = !DILocalVariable(name: "o", scope: !2351, file: !127, line: 1021, type: !134)
!2360 = !DILocation(line: 1017, column: 28, scope: !2351, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 1012, column: 10, scope: !2338)
!2362 = !DILocation(line: 1017, column: 43, scope: !2351, inlinedAt: !2361)
!2363 = !DILocation(line: 1018, column: 36, scope: !2351, inlinedAt: !2361)
!2364 = !DILocation(line: 1019, column: 36, scope: !2351, inlinedAt: !2361)
!2365 = !DILocation(line: 1019, column: 48, scope: !2351, inlinedAt: !2361)
!2366 = !DILocation(line: 1021, column: 3, scope: !2351, inlinedAt: !2361)
!2367 = !DILocation(line: 1021, column: 30, scope: !2351, inlinedAt: !2361)
!2368 = !DILocation(line: 1021, column: 26, scope: !2351, inlinedAt: !2361)
!2369 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 1022, column: 3, scope: !2351, inlinedAt: !2361)
!2371 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2370)
!2372 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2370)
!2373 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2370)
!2374 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2370)
!2375 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2370)
!2376 = !DILocation(line: 177, column: 23, scope: !989, inlinedAt: !2370)
!2377 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2370)
!2378 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2370)
!2379 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2370)
!2380 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2370)
!2381 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2370)
!2382 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2370)
!2383 = !DILocation(line: 1023, column: 10, scope: !2351, inlinedAt: !2361)
!2384 = !DILocation(line: 1024, column: 1, scope: !2351, inlinedAt: !2361)
!2385 = !DILocation(line: 1012, column: 3, scope: !2338)
!2386 = !DILocation(line: 1017, column: 28, scope: !2351)
!2387 = !DILocation(line: 1017, column: 43, scope: !2351)
!2388 = !DILocation(line: 1018, column: 36, scope: !2351)
!2389 = !DILocation(line: 1019, column: 36, scope: !2351)
!2390 = !DILocation(line: 1019, column: 48, scope: !2351)
!2391 = !DILocation(line: 1021, column: 3, scope: !2351)
!2392 = !DILocation(line: 1021, column: 30, scope: !2351)
!2393 = !DILocation(line: 1021, column: 26, scope: !2351)
!2394 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1022, column: 3, scope: !2351)
!2396 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2395)
!2397 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2395)
!2398 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2395)
!2399 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2395)
!2400 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2395)
!2401 = !DILocation(line: 177, column: 23, scope: !989, inlinedAt: !2395)
!2402 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2395)
!2403 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2395)
!2404 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2395)
!2405 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2395)
!2406 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2395)
!2407 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2395)
!2408 = !DILocation(line: 1023, column: 10, scope: !2351)
!2409 = !DILocation(line: 1024, column: 1, scope: !2351)
!2410 = !DILocation(line: 1023, column: 3, scope: !2351)
!2411 = distinct !DISubprogram(name: "quotearg_custom", scope: !127, file: !127, line: 1027, type: !2412, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!26, !36, !36, !36}
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2411, file: !127, line: 1027, type: !36)
!2416 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2411, file: !127, line: 1027, type: !36)
!2417 = !DILocalVariable(name: "arg", arg: 3, scope: !2411, file: !127, line: 1028, type: !36)
!2418 = !DILocation(line: 1027, column: 30, scope: !2411)
!2419 = !DILocation(line: 1027, column: 54, scope: !2411)
!2420 = !DILocation(line: 1028, column: 30, scope: !2411)
!2421 = !DILocation(line: 1009, column: 24, scope: !2338, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1030, column: 10, scope: !2411)
!2423 = !DILocation(line: 1009, column: 39, scope: !2338, inlinedAt: !2422)
!2424 = !DILocation(line: 1010, column: 32, scope: !2338, inlinedAt: !2422)
!2425 = !DILocation(line: 1010, column: 57, scope: !2338, inlinedAt: !2422)
!2426 = !DILocation(line: 1017, column: 28, scope: !2351, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1012, column: 10, scope: !2338, inlinedAt: !2422)
!2428 = !DILocation(line: 1017, column: 43, scope: !2351, inlinedAt: !2427)
!2429 = !DILocation(line: 1018, column: 36, scope: !2351, inlinedAt: !2427)
!2430 = !DILocation(line: 1019, column: 36, scope: !2351, inlinedAt: !2427)
!2431 = !DILocation(line: 1019, column: 48, scope: !2351, inlinedAt: !2427)
!2432 = !DILocation(line: 1021, column: 3, scope: !2351, inlinedAt: !2427)
!2433 = !DILocation(line: 1021, column: 30, scope: !2351, inlinedAt: !2427)
!2434 = !DILocation(line: 1021, column: 26, scope: !2351, inlinedAt: !2427)
!2435 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1022, column: 3, scope: !2351, inlinedAt: !2427)
!2437 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2436)
!2438 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2436)
!2439 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2436)
!2440 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2436)
!2441 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2436)
!2442 = !DILocation(line: 177, column: 23, scope: !989, inlinedAt: !2436)
!2443 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2436)
!2444 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2436)
!2445 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2436)
!2446 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2436)
!2447 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2436)
!2448 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2436)
!2449 = !DILocation(line: 1023, column: 10, scope: !2351, inlinedAt: !2427)
!2450 = !DILocation(line: 1024, column: 1, scope: !2351, inlinedAt: !2427)
!2451 = !DILocation(line: 1030, column: 3, scope: !2411)
!2452 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !127, file: !127, line: 1034, type: !2453, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!26, !36, !36, !36, !121}
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2452, file: !127, line: 1034, type: !36)
!2457 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2452, file: !127, line: 1034, type: !36)
!2458 = !DILocalVariable(name: "arg", arg: 3, scope: !2452, file: !127, line: 1035, type: !36)
!2459 = !DILocalVariable(name: "argsize", arg: 4, scope: !2452, file: !127, line: 1035, type: !121)
!2460 = !DILocation(line: 1034, column: 34, scope: !2452)
!2461 = !DILocation(line: 1034, column: 58, scope: !2452)
!2462 = !DILocation(line: 1035, column: 34, scope: !2452)
!2463 = !DILocation(line: 1035, column: 46, scope: !2452)
!2464 = !DILocation(line: 1017, column: 28, scope: !2351, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 1037, column: 10, scope: !2452)
!2466 = !DILocation(line: 1017, column: 43, scope: !2351, inlinedAt: !2465)
!2467 = !DILocation(line: 1018, column: 36, scope: !2351, inlinedAt: !2465)
!2468 = !DILocation(line: 1019, column: 36, scope: !2351, inlinedAt: !2465)
!2469 = !DILocation(line: 1019, column: 48, scope: !2351, inlinedAt: !2465)
!2470 = !DILocation(line: 1021, column: 3, scope: !2351, inlinedAt: !2465)
!2471 = !DILocation(line: 1021, column: 30, scope: !2351, inlinedAt: !2465)
!2472 = !DILocation(line: 1021, column: 26, scope: !2351, inlinedAt: !2465)
!2473 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 1022, column: 3, scope: !2351, inlinedAt: !2465)
!2475 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2474)
!2476 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2474)
!2477 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2474)
!2478 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2474)
!2479 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2474)
!2480 = !DILocation(line: 177, column: 23, scope: !989, inlinedAt: !2474)
!2481 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2474)
!2482 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2474)
!2483 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2474)
!2484 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2474)
!2485 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2474)
!2486 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2474)
!2487 = !DILocation(line: 1023, column: 10, scope: !2351, inlinedAt: !2465)
!2488 = !DILocation(line: 1024, column: 1, scope: !2351, inlinedAt: !2465)
!2489 = !DILocation(line: 1037, column: 3, scope: !2452)
!2490 = distinct !DISubprogram(name: "quote_n_mem", scope: !127, file: !127, line: 1052, type: !2491, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!36, !59, !36, !121}
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "n", arg: 1, scope: !2490, file: !127, line: 1052, type: !59)
!2495 = !DILocalVariable(name: "arg", arg: 2, scope: !2490, file: !127, line: 1052, type: !36)
!2496 = !DILocalVariable(name: "argsize", arg: 3, scope: !2490, file: !127, line: 1052, type: !121)
!2497 = !DILocation(line: 1052, column: 18, scope: !2490)
!2498 = !DILocation(line: 1052, column: 33, scope: !2490)
!2499 = !DILocation(line: 1052, column: 45, scope: !2490)
!2500 = !DILocation(line: 1054, column: 10, scope: !2490)
!2501 = !DILocation(line: 1054, column: 3, scope: !2490)
!2502 = distinct !DISubprogram(name: "quote_mem", scope: !127, file: !127, line: 1058, type: !2503, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!36, !36, !121}
!2505 = !{!2506, !2507}
!2506 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !127, line: 1058, type: !36)
!2507 = !DILocalVariable(name: "argsize", arg: 2, scope: !2502, file: !127, line: 1058, type: !121)
!2508 = !DILocation(line: 1058, column: 24, scope: !2502)
!2509 = !DILocation(line: 1058, column: 36, scope: !2502)
!2510 = !DILocation(line: 1052, column: 18, scope: !2490, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 1060, column: 10, scope: !2502)
!2512 = !DILocation(line: 1052, column: 33, scope: !2490, inlinedAt: !2511)
!2513 = !DILocation(line: 1052, column: 45, scope: !2490, inlinedAt: !2511)
!2514 = !DILocation(line: 1054, column: 10, scope: !2490, inlinedAt: !2511)
!2515 = !DILocation(line: 1060, column: 3, scope: !2502)
!2516 = distinct !DISubprogram(name: "quote_n", scope: !127, file: !127, line: 1064, type: !2517, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!36, !59, !36}
!2519 = !{!2520, !2521}
!2520 = !DILocalVariable(name: "n", arg: 1, scope: !2516, file: !127, line: 1064, type: !59)
!2521 = !DILocalVariable(name: "arg", arg: 2, scope: !2516, file: !127, line: 1064, type: !36)
!2522 = !DILocation(line: 1064, column: 14, scope: !2516)
!2523 = !DILocation(line: 1064, column: 29, scope: !2516)
!2524 = !DILocation(line: 1052, column: 18, scope: !2490, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 1066, column: 10, scope: !2516)
!2526 = !DILocation(line: 1052, column: 33, scope: !2490, inlinedAt: !2525)
!2527 = !DILocation(line: 1052, column: 45, scope: !2490, inlinedAt: !2525)
!2528 = !DILocation(line: 1054, column: 10, scope: !2490, inlinedAt: !2525)
!2529 = !DILocation(line: 1066, column: 3, scope: !2516)
!2530 = distinct !DISubprogram(name: "quote", scope: !127, file: !127, line: 1070, type: !2531, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!36, !36}
!2533 = !{!2534}
!2534 = !DILocalVariable(name: "arg", arg: 1, scope: !2530, file: !127, line: 1070, type: !36)
!2535 = !DILocation(line: 1070, column: 20, scope: !2530)
!2536 = !DILocation(line: 1064, column: 14, scope: !2516, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 1072, column: 10, scope: !2530)
!2538 = !DILocation(line: 1064, column: 29, scope: !2516, inlinedAt: !2537)
!2539 = !DILocation(line: 1052, column: 18, scope: !2490, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1066, column: 10, scope: !2516, inlinedAt: !2537)
!2541 = !DILocation(line: 1052, column: 33, scope: !2490, inlinedAt: !2540)
!2542 = !DILocation(line: 1052, column: 45, scope: !2490, inlinedAt: !2540)
!2543 = !DILocation(line: 1054, column: 10, scope: !2490, inlinedAt: !2540)
!2544 = !DILocation(line: 1072, column: 3, scope: !2530)
!2545 = distinct !DISubprogram(name: "version_etc_arn", scope: !566, file: !566, line: 62, type: !2546, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !2602)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2548, !36, !36, !36, !2601, !121}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2550, line: 7, baseType: !2551)
!2550 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2552, line: 241, size: 1728, elements: !2553)
!2552 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2574, !2575, !2576, !2577, !2581, !2582, !2584, !2586, !2589, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2551, file: !2552, line: 242, baseType: !59, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2551, file: !2552, line: 247, baseType: !26, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2551, file: !2552, line: 248, baseType: !26, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2551, file: !2552, line: 249, baseType: !26, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2551, file: !2552, line: 250, baseType: !26, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2551, file: !2552, line: 251, baseType: !26, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2551, file: !2552, line: 252, baseType: !26, size: 64, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2551, file: !2552, line: 253, baseType: !26, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2551, file: !2552, line: 254, baseType: !26, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2551, file: !2552, line: 256, baseType: !26, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2551, file: !2552, line: 257, baseType: !26, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2551, file: !2552, line: 258, baseType: !26, size: 64, offset: 704)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2551, file: !2552, line: 260, baseType: !2567, size: 64, offset: 768)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2552, line: 156, size: 192, elements: !2569)
!2569 = !{!2570, !2571, !2573}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2568, file: !2552, line: 157, baseType: !2567, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2568, file: !2552, line: 158, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2568, file: !2552, line: 162, baseType: !59, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2551, file: !2552, line: 262, baseType: !2572, size: 64, offset: 832)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2551, file: !2552, line: 264, baseType: !59, size: 32, offset: 896)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2551, file: !2552, line: 268, baseType: !59, size: 32, offset: 928)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2551, file: !2552, line: 270, baseType: !2578, size: 64, offset: 960)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2579, line: 140, baseType: !2580)
!2579 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2580 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2551, file: !2552, line: 274, baseType: !120, size: 16, offset: 1024)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2551, file: !2552, line: 275, baseType: !2583, size: 8, offset: 1040)
!2583 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2551, file: !2552, line: 276, baseType: !2585, size: 8, offset: 1048)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !199)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2551, file: !2552, line: 280, baseType: !2587, size: 64, offset: 1088)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2552, line: 150, baseType: null)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2551, file: !2552, line: 289, baseType: !2590, size: 64, offset: 1152)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2579, line: 141, baseType: !2580)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2551, file: !2552, line: 297, baseType: !28, size: 64, offset: 1216)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2551, file: !2552, line: 298, baseType: !28, size: 64, offset: 1280)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2551, file: !2552, line: 299, baseType: !28, size: 64, offset: 1344)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2551, file: !2552, line: 300, baseType: !28, size: 64, offset: 1408)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2551, file: !2552, line: 302, baseType: !121, size: 64, offset: 1472)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2551, file: !2552, line: 303, baseType: !59, size: 32, offset: 1536)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2551, file: !2552, line: 305, baseType: !2598, size: 160, offset: 1568)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !2599)
!2599 = !{!2600}
!2600 = !DISubrange(count: 20)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608}
!2603 = !DILocalVariable(name: "stream", arg: 1, scope: !2545, file: !566, line: 62, type: !2548)
!2604 = !DILocalVariable(name: "command_name", arg: 2, scope: !2545, file: !566, line: 63, type: !36)
!2605 = !DILocalVariable(name: "package", arg: 3, scope: !2545, file: !566, line: 63, type: !36)
!2606 = !DILocalVariable(name: "version", arg: 4, scope: !2545, file: !566, line: 64, type: !36)
!2607 = !DILocalVariable(name: "authors", arg: 5, scope: !2545, file: !566, line: 65, type: !2601)
!2608 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2545, file: !566, line: 65, type: !121)
!2609 = !DILocation(line: 62, column: 24, scope: !2545)
!2610 = !DILocation(line: 63, column: 30, scope: !2545)
!2611 = !DILocation(line: 63, column: 56, scope: !2545)
!2612 = !DILocation(line: 64, column: 30, scope: !2545)
!2613 = !DILocation(line: 65, column: 39, scope: !2545)
!2614 = !DILocation(line: 65, column: 55, scope: !2545)
!2615 = !DILocation(line: 67, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2545, file: !566, line: 67, column: 7)
!2617 = !DILocation(line: 67, column: 7, scope: !2545)
!2618 = !DILocation(line: 68, column: 5, scope: !2616)
!2619 = !DILocation(line: 70, column: 5, scope: !2616)
!2620 = !DILocation(line: 84, column: 3, scope: !2545)
!2621 = !DILocation(line: 86, column: 3, scope: !2545)
!2622 = !DILocation(line: 95, column: 3, scope: !2545)
!2623 = !DILocation(line: 99, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2545, file: !566, line: 96, column: 5)
!2625 = !DILocation(line: 102, column: 7, scope: !2624)
!2626 = !DILocation(line: 103, column: 7, scope: !2624)
!2627 = !DILocation(line: 106, column: 7, scope: !2624)
!2628 = !DILocation(line: 107, column: 7, scope: !2624)
!2629 = !DILocation(line: 110, column: 7, scope: !2624)
!2630 = !DILocation(line: 112, column: 7, scope: !2624)
!2631 = !DILocation(line: 117, column: 7, scope: !2624)
!2632 = !DILocation(line: 119, column: 7, scope: !2624)
!2633 = !DILocation(line: 124, column: 7, scope: !2624)
!2634 = !DILocation(line: 126, column: 7, scope: !2624)
!2635 = !DILocation(line: 131, column: 7, scope: !2624)
!2636 = !DILocation(line: 134, column: 7, scope: !2624)
!2637 = !DILocation(line: 139, column: 7, scope: !2624)
!2638 = !DILocation(line: 142, column: 7, scope: !2624)
!2639 = !DILocation(line: 147, column: 7, scope: !2624)
!2640 = !DILocation(line: 151, column: 7, scope: !2624)
!2641 = !DILocation(line: 156, column: 7, scope: !2624)
!2642 = !DILocation(line: 160, column: 7, scope: !2624)
!2643 = !DILocation(line: 167, column: 7, scope: !2624)
!2644 = !DILocation(line: 171, column: 7, scope: !2624)
!2645 = !DILocation(line: 173, column: 1, scope: !2545)
!2646 = distinct !DISubprogram(name: "version_etc_ar", scope: !566, file: !566, line: 180, type: !2647, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !2548, !36, !36, !36, !2601}
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655}
!2650 = !DILocalVariable(name: "stream", arg: 1, scope: !2646, file: !566, line: 180, type: !2548)
!2651 = !DILocalVariable(name: "command_name", arg: 2, scope: !2646, file: !566, line: 181, type: !36)
!2652 = !DILocalVariable(name: "package", arg: 3, scope: !2646, file: !566, line: 181, type: !36)
!2653 = !DILocalVariable(name: "version", arg: 4, scope: !2646, file: !566, line: 182, type: !36)
!2654 = !DILocalVariable(name: "authors", arg: 5, scope: !2646, file: !566, line: 182, type: !2601)
!2655 = !DILocalVariable(name: "n_authors", scope: !2646, file: !566, line: 184, type: !121)
!2656 = !DILocation(line: 180, column: 23, scope: !2646)
!2657 = !DILocation(line: 181, column: 29, scope: !2646)
!2658 = !DILocation(line: 181, column: 55, scope: !2646)
!2659 = !DILocation(line: 182, column: 29, scope: !2646)
!2660 = !DILocation(line: 182, column: 59, scope: !2646)
!2661 = !DILocation(line: 184, column: 10, scope: !2646)
!2662 = !DILocation(line: 186, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2646, file: !566, line: 186, column: 3)
!2664 = !DILocation(line: 186, column: 23, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2663, file: !566, line: 186, column: 3)
!2666 = !DILocation(line: 186, column: 3, scope: !2663)
!2667 = !DILocation(line: 186, column: 52, scope: !2665)
!2668 = distinct !{!2668, !2666, !2669}
!2669 = !DILocation(line: 187, column: 5, scope: !2663)
!2670 = !DILocation(line: 188, column: 3, scope: !2646)
!2671 = !DILocation(line: 189, column: 1, scope: !2646)
!2672 = distinct !DISubprogram(name: "version_etc_va", scope: !566, file: !566, line: 196, type: !2673, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !2682)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !2548, !36, !36, !36, !2675}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !563, line: 189, size: 192, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2676, file: !563, line: 189, baseType: !140, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2676, file: !563, line: 189, baseType: !140, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2676, file: !563, line: 189, baseType: !28, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2676, file: !563, line: 189, baseType: !28, size: 64, offset: 128)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2683 = !DILocalVariable(name: "stream", arg: 1, scope: !2672, file: !566, line: 196, type: !2548)
!2684 = !DILocalVariable(name: "command_name", arg: 2, scope: !2672, file: !566, line: 197, type: !36)
!2685 = !DILocalVariable(name: "package", arg: 3, scope: !2672, file: !566, line: 197, type: !36)
!2686 = !DILocalVariable(name: "version", arg: 4, scope: !2672, file: !566, line: 198, type: !36)
!2687 = !DILocalVariable(name: "authors", arg: 5, scope: !2672, file: !566, line: 198, type: !2675)
!2688 = !DILocalVariable(name: "n_authors", scope: !2672, file: !566, line: 200, type: !121)
!2689 = !DILocalVariable(name: "authtab", scope: !2672, file: !566, line: 201, type: !2690)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !130)
!2691 = !DILocation(line: 196, column: 23, scope: !2672)
!2692 = !DILocation(line: 197, column: 29, scope: !2672)
!2693 = !DILocation(line: 197, column: 55, scope: !2672)
!2694 = !DILocation(line: 198, column: 29, scope: !2672)
!2695 = !DILocation(line: 198, column: 46, scope: !2672)
!2696 = !DILocation(line: 201, column: 3, scope: !2672)
!2697 = !DILocation(line: 201, column: 15, scope: !2672)
!2698 = !DILocation(line: 200, column: 10, scope: !2672)
!2699 = !DILocation(line: 205, column: 35, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !566, line: 203, column: 3)
!2701 = distinct !DILexicalBlock(scope: !2672, file: !566, line: 203, column: 3)
!2702 = !DILocation(line: 205, column: 14, scope: !2700)
!2703 = !DILocation(line: 205, column: 33, scope: !2700)
!2704 = !DILocation(line: 205, column: 67, scope: !2700)
!2705 = !DILocation(line: 203, column: 3, scope: !2701)
!2706 = !DILocation(line: 208, column: 3, scope: !2672)
!2707 = !DILocation(line: 210, column: 1, scope: !2672)
!2708 = distinct !DISubprogram(name: "version_etc", scope: !566, file: !566, line: 227, type: !2709, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !2548, !36, !36, !36, null}
!2711 = !{!2712, !2713, !2714, !2715, !2716}
!2712 = !DILocalVariable(name: "stream", arg: 1, scope: !2708, file: !566, line: 227, type: !2548)
!2713 = !DILocalVariable(name: "command_name", arg: 2, scope: !2708, file: !566, line: 228, type: !36)
!2714 = !DILocalVariable(name: "package", arg: 3, scope: !2708, file: !566, line: 228, type: !36)
!2715 = !DILocalVariable(name: "version", arg: 4, scope: !2708, file: !566, line: 229, type: !36)
!2716 = !DILocalVariable(name: "authors", scope: !2708, file: !566, line: 231, type: !2717)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2718, line: 46, baseType: !2719)
!2718 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !190, line: 48, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !563, line: 231, baseType: !2721)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 192, elements: !199)
!2722 = !DILocation(line: 227, column: 20, scope: !2708)
!2723 = !DILocation(line: 228, column: 26, scope: !2708)
!2724 = !DILocation(line: 228, column: 52, scope: !2708)
!2725 = !DILocation(line: 229, column: 26, scope: !2708)
!2726 = !DILocation(line: 231, column: 3, scope: !2708)
!2727 = !DILocation(line: 231, column: 11, scope: !2708)
!2728 = !DILocation(line: 233, column: 3, scope: !2708)
!2729 = !DILocation(line: 234, column: 3, scope: !2708)
!2730 = !DILocation(line: 235, column: 3, scope: !2708)
!2731 = !DILocation(line: 236, column: 1, scope: !2708)
!2732 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !566, file: !566, line: 239, type: !809, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !69)
!2733 = !DILocation(line: 245, column: 3, scope: !2732)
!2734 = !DILocation(line: 251, column: 3, scope: !2732)
!2735 = !DILocation(line: 256, column: 3, scope: !2732)
!2736 = !DILocation(line: 258, column: 1, scope: !2732)
!2737 = distinct !DISubprogram(name: "xnmalloc", scope: !574, file: !574, line: 105, type: !2738, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!28, !121, !121}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !574, line: 105, type: !121)
!2742 = !DILocalVariable(name: "s", arg: 2, scope: !2737, file: !574, line: 105, type: !121)
!2743 = !DILocation(line: 105, column: 18, scope: !2737)
!2744 = !DILocation(line: 105, column: 28, scope: !2737)
!2745 = !DILocation(line: 107, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2737, file: !574, line: 107, column: 7)
!2747 = !DILocation(line: 107, column: 7, scope: !2737)
!2748 = !DILocation(line: 108, column: 5, scope: !2746)
!2749 = !DILocation(line: 109, column: 21, scope: !2737)
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !2752, line: 39, type: !121)
!2751 = distinct !DISubprogram(name: "xmalloc", scope: !2752, file: !2752, line: 39, type: !2753, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2755)
!2752 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!28, !121}
!2755 = !{!2750, !2756}
!2756 = !DILocalVariable(name: "p", scope: !2751, file: !2752, line: 41, type: !28)
!2757 = !DILocation(line: 39, column: 17, scope: !2751, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 109, column: 10, scope: !2737)
!2759 = !DILocation(line: 41, column: 13, scope: !2751, inlinedAt: !2758)
!2760 = !DILocation(line: 41, column: 9, scope: !2751, inlinedAt: !2758)
!2761 = !DILocation(line: 42, column: 8, scope: !2762, inlinedAt: !2758)
!2762 = distinct !DILexicalBlock(scope: !2751, file: !2752, line: 42, column: 7)
!2763 = !DILocation(line: 42, column: 15, scope: !2762, inlinedAt: !2758)
!2764 = !DILocation(line: 42, column: 10, scope: !2762, inlinedAt: !2758)
!2765 = !DILocation(line: 43, column: 5, scope: !2762, inlinedAt: !2758)
!2766 = !DILocation(line: 109, column: 3, scope: !2737)
!2767 = !DILocation(line: 39, column: 17, scope: !2751)
!2768 = !DILocation(line: 41, column: 13, scope: !2751)
!2769 = !DILocation(line: 41, column: 9, scope: !2751)
!2770 = !DILocation(line: 42, column: 8, scope: !2762)
!2771 = !DILocation(line: 42, column: 15, scope: !2762)
!2772 = !DILocation(line: 42, column: 10, scope: !2762)
!2773 = !DILocation(line: 43, column: 5, scope: !2762)
!2774 = !DILocation(line: 44, column: 3, scope: !2751)
!2775 = distinct !DISubprogram(name: "xnrealloc", scope: !574, file: !574, line: 118, type: !2776, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!28, !28, !121, !121}
!2778 = !{!2779, !2780, !2781}
!2779 = !DILocalVariable(name: "p", arg: 1, scope: !2775, file: !574, line: 118, type: !28)
!2780 = !DILocalVariable(name: "n", arg: 2, scope: !2775, file: !574, line: 118, type: !121)
!2781 = !DILocalVariable(name: "s", arg: 3, scope: !2775, file: !574, line: 118, type: !121)
!2782 = !DILocation(line: 118, column: 18, scope: !2775)
!2783 = !DILocation(line: 118, column: 28, scope: !2775)
!2784 = !DILocation(line: 118, column: 38, scope: !2775)
!2785 = !DILocation(line: 120, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2775, file: !574, line: 120, column: 7)
!2787 = !DILocation(line: 120, column: 7, scope: !2775)
!2788 = !DILocation(line: 121, column: 5, scope: !2786)
!2789 = !DILocation(line: 122, column: 25, scope: !2775)
!2790 = !DILocalVariable(name: "p", arg: 1, scope: !2791, file: !2752, line: 51, type: !28)
!2791 = distinct !DISubprogram(name: "xrealloc", scope: !2752, file: !2752, line: 51, type: !2792, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!28, !28, !121}
!2794 = !{!2790, !2795}
!2795 = !DILocalVariable(name: "n", arg: 2, scope: !2791, file: !2752, line: 51, type: !121)
!2796 = !DILocation(line: 51, column: 17, scope: !2791, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 122, column: 10, scope: !2775)
!2798 = !DILocation(line: 51, column: 27, scope: !2791, inlinedAt: !2797)
!2799 = !DILocation(line: 53, column: 8, scope: !2800, inlinedAt: !2797)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !2752, line: 53, column: 7)
!2801 = !DILocation(line: 53, column: 13, scope: !2800, inlinedAt: !2797)
!2802 = !DILocation(line: 53, column: 10, scope: !2800, inlinedAt: !2797)
!2803 = !DILocation(line: 57, column: 7, scope: !2804, inlinedAt: !2797)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !2752, line: 54, column: 5)
!2805 = !DILocation(line: 58, column: 7, scope: !2804, inlinedAt: !2797)
!2806 = !DILocation(line: 61, column: 7, scope: !2791, inlinedAt: !2797)
!2807 = !DILocation(line: 62, column: 8, scope: !2808, inlinedAt: !2797)
!2808 = distinct !DILexicalBlock(scope: !2791, file: !2752, line: 62, column: 7)
!2809 = !DILocation(line: 62, column: 13, scope: !2808, inlinedAt: !2797)
!2810 = !DILocation(line: 62, column: 10, scope: !2808, inlinedAt: !2797)
!2811 = !DILocation(line: 63, column: 5, scope: !2808, inlinedAt: !2797)
!2812 = !DILocation(line: 122, column: 3, scope: !2775)
!2813 = !DILocation(line: 51, column: 17, scope: !2791)
!2814 = !DILocation(line: 51, column: 27, scope: !2791)
!2815 = !DILocation(line: 53, column: 8, scope: !2800)
!2816 = !DILocation(line: 53, column: 13, scope: !2800)
!2817 = !DILocation(line: 53, column: 10, scope: !2800)
!2818 = !DILocation(line: 57, column: 7, scope: !2804)
!2819 = !DILocation(line: 58, column: 7, scope: !2804)
!2820 = !DILocation(line: 61, column: 7, scope: !2791)
!2821 = !DILocation(line: 62, column: 8, scope: !2808)
!2822 = !DILocation(line: 62, column: 13, scope: !2808)
!2823 = !DILocation(line: 62, column: 10, scope: !2808)
!2824 = !DILocation(line: 63, column: 5, scope: !2808)
!2825 = !DILocation(line: 65, column: 1, scope: !2791)
!2826 = !DILocation(line: 180, column: 19, scope: !575)
!2827 = !DILocation(line: 180, column: 30, scope: !575)
!2828 = !DILocation(line: 180, column: 41, scope: !575)
!2829 = !DILocation(line: 182, column: 14, scope: !575)
!2830 = !DILocation(line: 182, column: 10, scope: !575)
!2831 = !DILocation(line: 184, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !575, file: !574, line: 184, column: 7)
!2833 = !DILocation(line: 184, column: 7, scope: !575)
!2834 = !DILocation(line: 186, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !574, line: 186, column: 11)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !574, line: 185, column: 5)
!2837 = !DILocation(line: 186, column: 11, scope: !2836)
!2838 = !DILocation(line: 194, column: 30, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !574, line: 187, column: 9)
!2840 = !DILocation(line: 195, column: 16, scope: !2839)
!2841 = !DILocation(line: 195, column: 13, scope: !2839)
!2842 = !DILocation(line: 196, column: 9, scope: !2839)
!2843 = !DILocation(line: 204, column: 69, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !574, line: 204, column: 11)
!2845 = distinct !DILexicalBlock(scope: !2832, file: !574, line: 199, column: 5)
!2846 = !DILocation(line: 205, column: 11, scope: !2844)
!2847 = !DILocation(line: 204, column: 11, scope: !2845)
!2848 = !DILocation(line: 206, column: 9, scope: !2844)
!2849 = !DILocation(line: 210, column: 7, scope: !575)
!2850 = !DILocation(line: 211, column: 25, scope: !575)
!2851 = !DILocation(line: 51, column: 17, scope: !2791, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 211, column: 10, scope: !575)
!2853 = !DILocation(line: 51, column: 27, scope: !2791, inlinedAt: !2852)
!2854 = !DILocation(line: 53, column: 10, scope: !2800, inlinedAt: !2852)
!2855 = !DILocation(line: 207, column: 14, scope: !2845)
!2856 = !DILocation(line: 207, column: 18, scope: !2845)
!2857 = !DILocation(line: 207, column: 9, scope: !2845)
!2858 = !DILocation(line: 53, column: 8, scope: !2800, inlinedAt: !2852)
!2859 = !DILocation(line: 57, column: 7, scope: !2804, inlinedAt: !2852)
!2860 = !DILocation(line: 58, column: 7, scope: !2804, inlinedAt: !2852)
!2861 = !DILocation(line: 61, column: 7, scope: !2791, inlinedAt: !2852)
!2862 = !DILocation(line: 62, column: 8, scope: !2808, inlinedAt: !2852)
!2863 = !DILocation(line: 62, column: 13, scope: !2808, inlinedAt: !2852)
!2864 = !DILocation(line: 62, column: 10, scope: !2808, inlinedAt: !2852)
!2865 = !DILocation(line: 63, column: 5, scope: !2808, inlinedAt: !2852)
!2866 = !DILocation(line: 211, column: 3, scope: !575)
!2867 = distinct !DISubprogram(name: "xcharalloc", scope: !574, file: !574, line: 220, type: !1822, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2868)
!2868 = !{!2869}
!2869 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !574, line: 220, type: !121)
!2870 = !DILocation(line: 220, column: 20, scope: !2867)
!2871 = !DILocation(line: 39, column: 17, scope: !2751, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 222, column: 10, scope: !2867)
!2873 = !DILocation(line: 41, column: 13, scope: !2751, inlinedAt: !2872)
!2874 = !DILocation(line: 41, column: 9, scope: !2751, inlinedAt: !2872)
!2875 = !DILocation(line: 42, column: 8, scope: !2762, inlinedAt: !2872)
!2876 = !DILocation(line: 42, column: 15, scope: !2762, inlinedAt: !2872)
!2877 = !DILocation(line: 42, column: 10, scope: !2762, inlinedAt: !2872)
!2878 = !DILocation(line: 43, column: 5, scope: !2762, inlinedAt: !2872)
!2879 = !DILocation(line: 222, column: 3, scope: !2867)
!2880 = distinct !DISubprogram(name: "x2realloc", scope: !2752, file: !2752, line: 74, type: !2881, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!28, !28, !578}
!2883 = !{!2884, !2885}
!2884 = !DILocalVariable(name: "p", arg: 1, scope: !2880, file: !2752, line: 74, type: !28)
!2885 = !DILocalVariable(name: "pn", arg: 2, scope: !2880, file: !2752, line: 74, type: !578)
!2886 = !DILocation(line: 74, column: 18, scope: !2880)
!2887 = !DILocation(line: 74, column: 29, scope: !2880)
!2888 = !DILocation(line: 180, column: 19, scope: !575, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 76, column: 10, scope: !2880)
!2890 = !DILocation(line: 180, column: 30, scope: !575, inlinedAt: !2889)
!2891 = !DILocation(line: 180, column: 41, scope: !575, inlinedAt: !2889)
!2892 = !DILocation(line: 182, column: 14, scope: !575, inlinedAt: !2889)
!2893 = !DILocation(line: 182, column: 10, scope: !575, inlinedAt: !2889)
!2894 = !DILocation(line: 184, column: 9, scope: !2832, inlinedAt: !2889)
!2895 = !DILocation(line: 184, column: 7, scope: !575, inlinedAt: !2889)
!2896 = !DILocation(line: 186, column: 13, scope: !2835, inlinedAt: !2889)
!2897 = !DILocation(line: 186, column: 11, scope: !2836, inlinedAt: !2889)
!2898 = !DILocation(line: 210, column: 7, scope: !575, inlinedAt: !2889)
!2899 = !DILocation(line: 51, column: 17, scope: !2791, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 211, column: 10, scope: !575, inlinedAt: !2889)
!2901 = !DILocation(line: 51, column: 27, scope: !2791, inlinedAt: !2900)
!2902 = !DILocation(line: 53, column: 10, scope: !2800, inlinedAt: !2900)
!2903 = !DILocation(line: 205, column: 11, scope: !2844, inlinedAt: !2889)
!2904 = !DILocation(line: 204, column: 11, scope: !2845, inlinedAt: !2889)
!2905 = !DILocation(line: 206, column: 9, scope: !2844, inlinedAt: !2889)
!2906 = !DILocation(line: 207, column: 14, scope: !2845, inlinedAt: !2889)
!2907 = !DILocation(line: 207, column: 18, scope: !2845, inlinedAt: !2889)
!2908 = !DILocation(line: 207, column: 9, scope: !2845, inlinedAt: !2889)
!2909 = !DILocation(line: 53, column: 8, scope: !2800, inlinedAt: !2900)
!2910 = !DILocation(line: 57, column: 7, scope: !2804, inlinedAt: !2900)
!2911 = !DILocation(line: 58, column: 7, scope: !2804, inlinedAt: !2900)
!2912 = !DILocation(line: 61, column: 7, scope: !2791, inlinedAt: !2900)
!2913 = !DILocation(line: 62, column: 8, scope: !2808, inlinedAt: !2900)
!2914 = !DILocation(line: 62, column: 13, scope: !2808, inlinedAt: !2900)
!2915 = !DILocation(line: 62, column: 10, scope: !2808, inlinedAt: !2900)
!2916 = !DILocation(line: 63, column: 5, scope: !2808, inlinedAt: !2900)
!2917 = !DILocation(line: 76, column: 3, scope: !2880)
!2918 = distinct !DISubprogram(name: "xzalloc", scope: !2752, file: !2752, line: 84, type: !2753, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2919)
!2919 = !{!2920}
!2920 = !DILocalVariable(name: "s", arg: 1, scope: !2918, file: !2752, line: 84, type: !121)
!2921 = !DILocation(line: 84, column: 17, scope: !2918)
!2922 = !DILocation(line: 39, column: 17, scope: !2751, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 86, column: 18, scope: !2918)
!2924 = !DILocation(line: 41, column: 13, scope: !2751, inlinedAt: !2923)
!2925 = !DILocation(line: 41, column: 9, scope: !2751, inlinedAt: !2923)
!2926 = !DILocation(line: 42, column: 8, scope: !2762, inlinedAt: !2923)
!2927 = !DILocation(line: 42, column: 15, scope: !2762, inlinedAt: !2923)
!2928 = !DILocation(line: 42, column: 10, scope: !2762, inlinedAt: !2923)
!2929 = !DILocation(line: 43, column: 5, scope: !2762, inlinedAt: !2923)
!2930 = !DILocation(line: 86, column: 10, scope: !2918)
!2931 = !DILocation(line: 86, column: 3, scope: !2918)
!2932 = distinct !DISubprogram(name: "xcalloc", scope: !2752, file: !2752, line: 93, type: !2738, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DILocalVariable(name: "n", arg: 1, scope: !2932, file: !2752, line: 93, type: !121)
!2935 = !DILocalVariable(name: "s", arg: 2, scope: !2932, file: !2752, line: 93, type: !121)
!2936 = !DILocalVariable(name: "p", scope: !2932, file: !2752, line: 95, type: !28)
!2937 = !DILocation(line: 93, column: 17, scope: !2932)
!2938 = !DILocation(line: 93, column: 27, scope: !2932)
!2939 = !DILocation(line: 100, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2932, file: !2752, line: 100, column: 7)
!2941 = !DILocation(line: 101, column: 7, scope: !2940)
!2942 = !DILocation(line: 101, column: 18, scope: !2940)
!2943 = !DILocation(line: 95, column: 9, scope: !2932)
!2944 = !DILocation(line: 101, column: 16, scope: !2940)
!2945 = !DILocation(line: 100, column: 7, scope: !2932)
!2946 = !DILocation(line: 102, column: 5, scope: !2940)
!2947 = !DILocation(line: 103, column: 3, scope: !2932)
!2948 = distinct !DISubprogram(name: "xmemdup", scope: !2752, file: !2752, line: 111, type: !2949, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2953)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!28, !2951, !121}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "p", arg: 1, scope: !2948, file: !2752, line: 111, type: !2951)
!2955 = !DILocalVariable(name: "s", arg: 2, scope: !2948, file: !2752, line: 111, type: !121)
!2956 = !DILocation(line: 111, column: 22, scope: !2948)
!2957 = !DILocation(line: 111, column: 32, scope: !2948)
!2958 = !DILocation(line: 39, column: 17, scope: !2751, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 113, column: 18, scope: !2948)
!2960 = !DILocation(line: 41, column: 13, scope: !2751, inlinedAt: !2959)
!2961 = !DILocation(line: 41, column: 9, scope: !2751, inlinedAt: !2959)
!2962 = !DILocation(line: 42, column: 8, scope: !2762, inlinedAt: !2959)
!2963 = !DILocation(line: 42, column: 15, scope: !2762, inlinedAt: !2959)
!2964 = !DILocation(line: 42, column: 10, scope: !2762, inlinedAt: !2959)
!2965 = !DILocation(line: 43, column: 5, scope: !2762, inlinedAt: !2959)
!2966 = !DILocation(line: 113, column: 10, scope: !2948)
!2967 = !DILocation(line: 113, column: 3, scope: !2948)
!2968 = distinct !DISubprogram(name: "xstrdup", scope: !2752, file: !2752, line: 119, type: !2024, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !2969)
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "string", arg: 1, scope: !2968, file: !2752, line: 119, type: !36)
!2971 = !DILocation(line: 119, column: 22, scope: !2968)
!2972 = !DILocation(line: 121, column: 27, scope: !2968)
!2973 = !DILocation(line: 121, column: 43, scope: !2968)
!2974 = !DILocation(line: 111, column: 22, scope: !2948, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 121, column: 10, scope: !2968)
!2976 = !DILocation(line: 111, column: 32, scope: !2948, inlinedAt: !2975)
!2977 = !DILocation(line: 39, column: 17, scope: !2751, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 113, column: 18, scope: !2948, inlinedAt: !2975)
!2979 = !DILocation(line: 41, column: 13, scope: !2751, inlinedAt: !2978)
!2980 = !DILocation(line: 41, column: 9, scope: !2751, inlinedAt: !2978)
!2981 = !DILocation(line: 42, column: 8, scope: !2762, inlinedAt: !2978)
!2982 = !DILocation(line: 42, column: 15, scope: !2762, inlinedAt: !2978)
!2983 = !DILocation(line: 42, column: 10, scope: !2762, inlinedAt: !2978)
!2984 = !DILocation(line: 43, column: 5, scope: !2762, inlinedAt: !2978)
!2985 = !DILocation(line: 113, column: 10, scope: !2948, inlinedAt: !2975)
!2986 = !DILocation(line: 121, column: 3, scope: !2968)
!2987 = distinct !DISubprogram(name: "xalloc_die", scope: !2988, file: !2988, line: 32, type: !809, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !587, variables: !69)
!2988 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2989 = !DILocation(line: 34, column: 10, scope: !2987)
!2990 = !DILocation(line: 34, column: 33, scope: !2987)
!2991 = !DILocation(line: 34, column: 3, scope: !2987)
!2992 = !DILocation(line: 40, column: 3, scope: !2987)
!2993 = distinct !DISubprogram(name: "rpl_calloc", scope: !2994, file: !2994, line: 42, type: !2738, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !2995)
!2994 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !2994, line: 42, type: !121)
!2997 = !DILocalVariable(name: "s", arg: 2, scope: !2993, file: !2994, line: 42, type: !121)
!2998 = !DILocalVariable(name: "result", scope: !2993, file: !2994, line: 44, type: !28)
!2999 = !DILocalVariable(name: "bytes", scope: !3000, file: !2994, line: 56, type: !121)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !2994, line: 53, column: 5)
!3001 = distinct !DILexicalBlock(scope: !2993, file: !2994, line: 47, column: 7)
!3002 = !DILocation(line: 42, column: 20, scope: !2993)
!3003 = !DILocation(line: 42, column: 30, scope: !2993)
!3004 = !DILocation(line: 47, column: 9, scope: !3001)
!3005 = !DILocation(line: 47, column: 19, scope: !3001)
!3006 = !DILocation(line: 47, column: 14, scope: !3001)
!3007 = !DILocation(line: 56, column: 24, scope: !3000)
!3008 = !DILocation(line: 56, column: 14, scope: !3000)
!3009 = !DILocation(line: 57, column: 17, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3000, file: !2994, line: 57, column: 11)
!3011 = !DILocation(line: 57, column: 21, scope: !3010)
!3012 = !DILocation(line: 57, column: 11, scope: !3000)
!3013 = !DILocation(line: 59, column: 11, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3010, file: !2994, line: 58, column: 9)
!3015 = !DILocation(line: 59, column: 17, scope: !3014)
!3016 = !DILocation(line: 65, column: 12, scope: !2993)
!3017 = !DILocation(line: 44, column: 9, scope: !2993)
!3018 = !DILocation(line: 72, column: 3, scope: !2993)
!3019 = !DILocation(line: 73, column: 1, scope: !2993)
!3020 = !DILocation(line: 272, column: 16, scope: !178)
!3021 = !DILocation(line: 272, column: 24, scope: !178)
!3022 = !DILocation(line: 274, column: 3, scope: !178)
!3023 = !DILocation(line: 274, column: 11, scope: !178)
!3024 = !DILocation(line: 275, column: 7, scope: !178)
!3025 = !DILocation(line: 276, column: 3, scope: !178)
!3026 = !DILocation(line: 277, column: 3, scope: !178)
!3027 = !DILocation(line: 322, column: 22, scope: !203)
!3028 = !DILocation(line: 322, column: 13, scope: !203)
!3029 = !DILocation(line: 336, column: 18, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !203, file: !179, line: 336, column: 13)
!3031 = !DILocation(line: 336, column: 15, scope: !3030)
!3032 = !DILocation(line: 336, column: 13, scope: !203)
!3033 = !DILocation(line: 338, column: 22, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !179, line: 337, column: 11)
!3035 = !DILocation(line: 339, column: 19, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3034, file: !179, line: 339, column: 17)
!3037 = !DILocation(line: 339, column: 29, scope: !3036)
!3038 = !DILocation(line: 339, column: 32, scope: !3036)
!3039 = !DILocation(line: 339, column: 38, scope: !3036)
!3040 = !DILocation(line: 339, column: 17, scope: !3034)
!3041 = !DILocation(line: 349, column: 26, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !179, line: 348, column: 15)
!3043 = !DILocation(line: 350, column: 28, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3042, file: !179, line: 350, column: 21)
!3045 = !DILocation(line: 350, column: 21, scope: !3042)
!3046 = !DILocation(line: 354, column: 11, scope: !3034)
!3047 = !DILocation(line: 356, column: 20, scope: !3030)
!3048 = !DILocation(line: 357, column: 28, scope: !207)
!3049 = !DILocation(line: 357, column: 15, scope: !207)
!3050 = !DILocation(line: 357, column: 47, scope: !207)
!3051 = !DILocation(line: 357, column: 25, scope: !207)
!3052 = !DILocation(line: 359, column: 25, scope: !206)
!3053 = !DILocation(line: 359, column: 17, scope: !206)
!3054 = !DILocation(line: 360, column: 23, scope: !210)
!3055 = !DILocation(line: 360, column: 27, scope: !210)
!3056 = !DILocation(line: 360, column: 60, scope: !210)
!3057 = !DILocation(line: 360, column: 30, scope: !210)
!3058 = !DILocation(line: 360, column: 74, scope: !210)
!3059 = !DILocation(line: 360, column: 17, scope: !206)
!3060 = !DILocation(line: 362, column: 35, scope: !209)
!3061 = !DILocation(line: 362, column: 21, scope: !209)
!3062 = !DILocation(line: 363, column: 17, scope: !209)
!3063 = !DILocation(line: 364, column: 23, scope: !209)
!3064 = !DILocation(line: 366, column: 15, scope: !209)
!3065 = !DILocation(line: 404, column: 19, scope: !212)
!3066 = !DILocation(line: 404, column: 15, scope: !212)
!3067 = !DILocation(line: 405, column: 18, scope: !212)
!3068 = !DILocation(line: 412, column: 3, scope: !178)
!3069 = !DILocation(line: 414, column: 1, scope: !178)
!3070 = !DILocation(line: 413, column: 3, scope: !178)
!3071 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3072, file: !3072, line: 334, type: !3073, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3087)
!3072 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!121, !3075, !36, !121, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1072, line: 6, baseType: !3078)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1074, line: 21, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1074, line: 13, size: 64, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3079, file: !1074, line: 15, baseType: !59, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3079, file: !1074, line: 20, baseType: !3083, size: 32, offset: 32)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3079, file: !1074, line: 16, size: 32, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3083, file: !1074, line: 18, baseType: !140, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3083, file: !1074, line: 19, baseType: !1083, size: 32)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094}
!3088 = !DILocalVariable(name: "pwc", arg: 1, scope: !3071, file: !3072, line: 334, type: !3075)
!3089 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !3072, line: 334, type: !36)
!3090 = !DILocalVariable(name: "n", arg: 3, scope: !3071, file: !3072, line: 334, type: !121)
!3091 = !DILocalVariable(name: "ps", arg: 4, scope: !3071, file: !3072, line: 334, type: !3076)
!3092 = !DILocalVariable(name: "ret", scope: !3071, file: !3072, line: 336, type: !121)
!3093 = !DILocalVariable(name: "wc", scope: !3071, file: !3072, line: 337, type: !1088)
!3094 = !DILocalVariable(name: "uc", scope: !3095, file: !3072, line: 398, type: !558)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3072, line: 397, column: 5)
!3096 = distinct !DILexicalBlock(scope: !3071, file: !3072, line: 396, column: 7)
!3097 = !DILocation(line: 334, column: 23, scope: !3071)
!3098 = !DILocation(line: 334, column: 40, scope: !3071)
!3099 = !DILocation(line: 334, column: 50, scope: !3071)
!3100 = !DILocation(line: 334, column: 64, scope: !3071)
!3101 = !DILocation(line: 337, column: 3, scope: !3071)
!3102 = !DILocation(line: 353, column: 9, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3071, file: !3072, line: 353, column: 7)
!3104 = !DILocation(line: 353, column: 7, scope: !3071)
!3105 = !DILocation(line: 388, column: 9, scope: !3071)
!3106 = !DILocation(line: 336, column: 10, scope: !3071)
!3107 = !DILocation(line: 396, column: 19, scope: !3096)
!3108 = !DILocation(line: 396, column: 31, scope: !3096)
!3109 = !DILocation(line: 396, column: 26, scope: !3096)
!3110 = !DILocation(line: 396, column: 41, scope: !3096)
!3111 = !DILocation(line: 396, column: 7, scope: !3071)
!3112 = !DILocation(line: 398, column: 26, scope: !3095)
!3113 = !DILocation(line: 398, column: 21, scope: !3095)
!3114 = !DILocation(line: 399, column: 14, scope: !3095)
!3115 = !DILocation(line: 399, column: 12, scope: !3095)
!3116 = !DILocation(line: 405, column: 1, scope: !3071)
!3117 = distinct !DISubprogram(name: "close_stream", scope: !3118, file: !3118, line: 56, type: !3119, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3161)
!3118 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!59, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2550, line: 7, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2552, line: 241, size: 1728, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3123, file: !2552, line: 242, baseType: !59, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3123, file: !2552, line: 247, baseType: !26, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3123, file: !2552, line: 248, baseType: !26, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3123, file: !2552, line: 249, baseType: !26, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3123, file: !2552, line: 250, baseType: !26, size: 64, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3123, file: !2552, line: 251, baseType: !26, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3123, file: !2552, line: 252, baseType: !26, size: 64, offset: 384)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3123, file: !2552, line: 253, baseType: !26, size: 64, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3123, file: !2552, line: 254, baseType: !26, size: 64, offset: 512)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3123, file: !2552, line: 256, baseType: !26, size: 64, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3123, file: !2552, line: 257, baseType: !26, size: 64, offset: 640)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3123, file: !2552, line: 258, baseType: !26, size: 64, offset: 704)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3123, file: !2552, line: 260, baseType: !3138, size: 64, offset: 768)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2552, line: 156, size: 192, elements: !3140)
!3140 = !{!3141, !3142, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3139, file: !2552, line: 157, baseType: !3138, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3139, file: !2552, line: 158, baseType: !3143, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3139, file: !2552, line: 162, baseType: !59, size: 32, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3123, file: !2552, line: 262, baseType: !3143, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3123, file: !2552, line: 264, baseType: !59, size: 32, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3123, file: !2552, line: 268, baseType: !59, size: 32, offset: 928)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3123, file: !2552, line: 270, baseType: !2578, size: 64, offset: 960)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3123, file: !2552, line: 274, baseType: !120, size: 16, offset: 1024)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3123, file: !2552, line: 275, baseType: !2583, size: 8, offset: 1040)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3123, file: !2552, line: 276, baseType: !2585, size: 8, offset: 1048)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3123, file: !2552, line: 280, baseType: !2587, size: 64, offset: 1088)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3123, file: !2552, line: 289, baseType: !2590, size: 64, offset: 1152)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3123, file: !2552, line: 297, baseType: !28, size: 64, offset: 1216)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3123, file: !2552, line: 298, baseType: !28, size: 64, offset: 1280)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3123, file: !2552, line: 299, baseType: !28, size: 64, offset: 1344)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3123, file: !2552, line: 300, baseType: !28, size: 64, offset: 1408)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3123, file: !2552, line: 302, baseType: !121, size: 64, offset: 1472)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3123, file: !2552, line: 303, baseType: !59, size: 32, offset: 1536)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3123, file: !2552, line: 305, baseType: !2598, size: 160, offset: 1568)
!3161 = !{!3162, !3163, !3165, !3166}
!3162 = !DILocalVariable(name: "stream", arg: 1, scope: !3117, file: !3118, line: 56, type: !3121)
!3163 = !DILocalVariable(name: "some_pending", scope: !3117, file: !3118, line: 58, type: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3165 = !DILocalVariable(name: "prev_fail", scope: !3117, file: !3118, line: 59, type: !3164)
!3166 = !DILocalVariable(name: "fclose_fail", scope: !3117, file: !3118, line: 60, type: !3164)
!3167 = !DILocation(line: 56, column: 21, scope: !3117)
!3168 = !DILocation(line: 58, column: 30, scope: !3117)
!3169 = !DILocalVariable(name: "__stream", arg: 1, scope: !3170, file: !3171, line: 132, type: !3121)
!3170 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3171, file: !3171, line: 132, type: !3119, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3172)
!3171 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3172 = !{!3169}
!3173 = !DILocation(line: 132, column: 1, scope: !3170, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 59, column: 27, scope: !3117)
!3175 = !DILocation(line: 134, column: 10, scope: !3170, inlinedAt: !3174)
!3176 = !{!3177, !686, i64 0}
!3177 = !{!"_IO_FILE", !686, i64 0, !623, i64 8, !623, i64 16, !623, i64 24, !623, i64 32, !623, i64 40, !623, i64 48, !623, i64 56, !623, i64 64, !623, i64 72, !623, i64 80, !623, i64 88, !623, i64 96, !623, i64 104, !686, i64 112, !686, i64 116, !1867, i64 120, !1323, i64 128, !624, i64 130, !624, i64 131, !623, i64 136, !1867, i64 144, !623, i64 152, !623, i64 160, !623, i64 168, !623, i64 176, !1867, i64 184, !686, i64 192, !624, i64 196}
!3178 = !DILocation(line: 59, column: 43, scope: !3117)
!3179 = !DILocation(line: 60, column: 29, scope: !3117)
!3180 = !DILocation(line: 60, column: 45, scope: !3117)
!3181 = !DILocation(line: 70, column: 17, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3117, file: !3118, line: 70, column: 7)
!3183 = !DILocation(line: 58, column: 50, scope: !3117)
!3184 = !DILocation(line: 70, column: 33, scope: !3182)
!3185 = !DILocation(line: 70, column: 53, scope: !3182)
!3186 = !DILocation(line: 70, column: 59, scope: !3182)
!3187 = !DILocation(line: 70, column: 7, scope: !3117)
!3188 = !DILocation(line: 72, column: 11, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3182, file: !3118, line: 71, column: 5)
!3190 = !DILocation(line: 73, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3189, file: !3118, line: 72, column: 11)
!3192 = !DILocation(line: 73, column: 15, scope: !3191)
!3193 = !DILocation(line: 78, column: 1, scope: !3117)
!3194 = distinct !DISubprogram(name: "hard_locale", scope: !3195, file: !3195, line: 38, type: !3196, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3198)
!3195 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!79, !59}
!3198 = !{!3199, !3200, !3201}
!3199 = !DILocalVariable(name: "category", arg: 1, scope: !3194, file: !3195, line: 38, type: !59)
!3200 = !DILocalVariable(name: "hard", scope: !3194, file: !3195, line: 40, type: !79)
!3201 = !DILocalVariable(name: "p", scope: !3194, file: !3195, line: 41, type: !36)
!3202 = !DILocation(line: 38, column: 18, scope: !3194)
!3203 = !DILocation(line: 40, column: 8, scope: !3194)
!3204 = !DILocation(line: 41, column: 19, scope: !3194)
!3205 = !DILocation(line: 41, column: 15, scope: !3194)
!3206 = !DILocation(line: 43, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 43, column: 7)
!3208 = !DILocation(line: 43, column: 7, scope: !3194)
!3209 = !DILocation(line: 47, column: 15, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3195, line: 47, column: 15)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !3195, line: 46, column: 9)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3195, line: 45, column: 11)
!3213 = distinct !DILexicalBlock(scope: !3207, file: !3195, line: 44, column: 5)
!3214 = !DILocation(line: 47, column: 31, scope: !3210)
!3215 = !DILocation(line: 47, column: 36, scope: !3210)
!3216 = !DILocation(line: 47, column: 39, scope: !3210)
!3217 = !DILocation(line: 47, column: 59, scope: !3210)
!3218 = !DILocation(line: 47, column: 15, scope: !3211)
!3219 = !DILocation(line: 48, column: 13, scope: !3210)
!3220 = !DILocation(line: 71, column: 3, scope: !3194)
!3221 = distinct !DISubprogram(name: "locale_charset", scope: !560, file: !560, line: 393, type: !3222, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!36}
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "codeset", scope: !3221, file: !560, line: 395, type: !36)
!3226 = !DILocalVariable(name: "aliases", scope: !3221, file: !560, line: 396, type: !36)
!3227 = !DILocalVariable(name: "buf1", scope: !3228, file: !560, line: 196, type: !3295)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !560, line: 194, column: 21)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !560, line: 193, column: 19)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !560, line: 193, column: 19)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !560, line: 188, column: 17)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !560, line: 181, column: 19)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !560, line: 177, column: 13)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !560, line: 173, column: 15)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !560, line: 161, column: 9)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !560, line: 157, column: 11)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !560, line: 130, column: 5)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !560, line: 129, column: 7)
!3239 = distinct !DISubprogram(name: "get_charset_aliases", scope: !560, file: !560, line: 124, type: !3222, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3247, !3248, !3249, !3250, !3291, !3292, !3293, !3227, !3294, !3298, !3299, !3300}
!3241 = !DILocalVariable(name: "cp", scope: !3239, file: !560, line: 126, type: !36)
!3242 = !DILocalVariable(name: "dir", scope: !3237, file: !560, line: 132, type: !36)
!3243 = !DILocalVariable(name: "base", scope: !3237, file: !560, line: 133, type: !36)
!3244 = !DILocalVariable(name: "file_name", scope: !3237, file: !560, line: 134, type: !26)
!3245 = !DILocalVariable(name: "dir_len", scope: !3246, file: !560, line: 144, type: !121)
!3246 = distinct !DILexicalBlock(scope: !3237, file: !560, line: 143, column: 7)
!3247 = !DILocalVariable(name: "base_len", scope: !3246, file: !560, line: 145, type: !121)
!3248 = !DILocalVariable(name: "add_slash", scope: !3246, file: !560, line: 146, type: !59)
!3249 = !DILocalVariable(name: "fd", scope: !3235, file: !560, line: 162, type: !59)
!3250 = !DILocalVariable(name: "fp", scope: !3233, file: !560, line: 178, type: !3251)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2550, line: 7, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2552, line: 241, size: 1728, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3253, file: !2552, line: 242, baseType: !59, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3253, file: !2552, line: 247, baseType: !26, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3253, file: !2552, line: 248, baseType: !26, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3253, file: !2552, line: 249, baseType: !26, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3253, file: !2552, line: 250, baseType: !26, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3253, file: !2552, line: 251, baseType: !26, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3253, file: !2552, line: 252, baseType: !26, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3253, file: !2552, line: 253, baseType: !26, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3253, file: !2552, line: 254, baseType: !26, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3253, file: !2552, line: 256, baseType: !26, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3253, file: !2552, line: 257, baseType: !26, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3253, file: !2552, line: 258, baseType: !26, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3253, file: !2552, line: 260, baseType: !3268, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2552, line: 156, size: 192, elements: !3270)
!3270 = !{!3271, !3272, !3274}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3269, file: !2552, line: 157, baseType: !3268, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3269, file: !2552, line: 158, baseType: !3273, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3269, file: !2552, line: 162, baseType: !59, size: 32, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3253, file: !2552, line: 262, baseType: !3273, size: 64, offset: 832)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3253, file: !2552, line: 264, baseType: !59, size: 32, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3253, file: !2552, line: 268, baseType: !59, size: 32, offset: 928)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3253, file: !2552, line: 270, baseType: !2578, size: 64, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3253, file: !2552, line: 274, baseType: !120, size: 16, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3253, file: !2552, line: 275, baseType: !2583, size: 8, offset: 1040)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3253, file: !2552, line: 276, baseType: !2585, size: 8, offset: 1048)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3253, file: !2552, line: 280, baseType: !2587, size: 64, offset: 1088)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3253, file: !2552, line: 289, baseType: !2590, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3253, file: !2552, line: 297, baseType: !28, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3253, file: !2552, line: 298, baseType: !28, size: 64, offset: 1280)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3253, file: !2552, line: 299, baseType: !28, size: 64, offset: 1344)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3253, file: !2552, line: 300, baseType: !28, size: 64, offset: 1408)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3253, file: !2552, line: 302, baseType: !121, size: 64, offset: 1472)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3253, file: !2552, line: 303, baseType: !59, size: 32, offset: 1536)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3253, file: !2552, line: 305, baseType: !2598, size: 160, offset: 1568)
!3291 = !DILocalVariable(name: "res_ptr", scope: !3231, file: !560, line: 190, type: !26)
!3292 = !DILocalVariable(name: "res_size", scope: !3231, file: !560, line: 191, type: !121)
!3293 = !DILocalVariable(name: "c", scope: !3228, file: !560, line: 195, type: !59)
!3294 = !DILocalVariable(name: "buf2", scope: !3228, file: !560, line: 197, type: !3295)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 408, elements: !3296)
!3296 = !{!3297}
!3297 = !DISubrange(count: 51)
!3298 = !DILocalVariable(name: "l1", scope: !3228, file: !560, line: 198, type: !121)
!3299 = !DILocalVariable(name: "l2", scope: !3228, file: !560, line: 198, type: !121)
!3300 = !DILocalVariable(name: "old_res_ptr", scope: !3228, file: !560, line: 199, type: !26)
!3301 = !DILocation(line: 196, column: 28, scope: !3228, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 589, column: 18, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3221, file: !560, line: 589, column: 3)
!3304 = !DILocation(line: 197, column: 28, scope: !3228, inlinedAt: !3302)
!3305 = !DILocation(line: 403, column: 13, scope: !3221)
!3306 = !DILocation(line: 395, column: 15, scope: !3221)
!3307 = !DILocation(line: 584, column: 15, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3221, file: !560, line: 584, column: 7)
!3309 = !DILocation(line: 584, column: 7, scope: !3221)
!3310 = !DILocation(line: 128, column: 8, scope: !3239, inlinedAt: !3302)
!3311 = !DILocation(line: 126, column: 15, scope: !3239, inlinedAt: !3302)
!3312 = !DILocation(line: 129, column: 10, scope: !3238, inlinedAt: !3302)
!3313 = !DILocation(line: 129, column: 7, scope: !3239, inlinedAt: !3302)
!3314 = !DILocation(line: 138, column: 13, scope: !3237, inlinedAt: !3302)
!3315 = !DILocation(line: 132, column: 19, scope: !3237, inlinedAt: !3302)
!3316 = !DILocation(line: 139, column: 15, scope: !3317, inlinedAt: !3302)
!3317 = distinct !DILexicalBlock(scope: !3237, file: !560, line: 139, column: 11)
!3318 = !DILocation(line: 139, column: 23, scope: !3317, inlinedAt: !3302)
!3319 = !DILocation(line: 139, column: 26, scope: !3317, inlinedAt: !3302)
!3320 = !DILocation(line: 139, column: 33, scope: !3317, inlinedAt: !3302)
!3321 = !DILocation(line: 139, column: 11, scope: !3237, inlinedAt: !3302)
!3322 = !DILocation(line: 140, column: 9, scope: !3317, inlinedAt: !3302)
!3323 = !DILocation(line: 144, column: 26, scope: !3246, inlinedAt: !3302)
!3324 = !DILocation(line: 144, column: 16, scope: !3246, inlinedAt: !3302)
!3325 = !DILocation(line: 145, column: 16, scope: !3246, inlinedAt: !3302)
!3326 = !DILocation(line: 146, column: 34, scope: !3246, inlinedAt: !3302)
!3327 = !DILocation(line: 146, column: 38, scope: !3246, inlinedAt: !3302)
!3328 = !DILocation(line: 146, column: 42, scope: !3246, inlinedAt: !3302)
!3329 = !DILocation(line: 147, column: 48, scope: !3246, inlinedAt: !3302)
!3330 = !DILocation(line: 147, column: 46, scope: !3246, inlinedAt: !3302)
!3331 = !DILocation(line: 147, column: 69, scope: !3246, inlinedAt: !3302)
!3332 = !DILocation(line: 147, column: 30, scope: !3246, inlinedAt: !3302)
!3333 = !DILocation(line: 134, column: 13, scope: !3237, inlinedAt: !3302)
!3334 = !DILocation(line: 148, column: 13, scope: !3246, inlinedAt: !3302)
!3335 = !DILocation(line: 150, column: 13, scope: !3336, inlinedAt: !3302)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !560, line: 149, column: 11)
!3337 = distinct !DILexicalBlock(scope: !3246, file: !560, line: 148, column: 13)
!3338 = !DILocation(line: 151, column: 17, scope: !3336, inlinedAt: !3302)
!3339 = !DILocation(line: 152, column: 34, scope: !3340, inlinedAt: !3302)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !560, line: 151, column: 17)
!3341 = !DILocation(line: 153, column: 41, scope: !3336, inlinedAt: !3302)
!3342 = !DILocation(line: 153, column: 13, scope: !3336, inlinedAt: !3302)
!3343 = !DILocation(line: 157, column: 11, scope: !3237, inlinedAt: !3302)
!3344 = !DILocation(line: 171, column: 16, scope: !3235, inlinedAt: !3302)
!3345 = !DILocation(line: 162, column: 15, scope: !3235, inlinedAt: !3302)
!3346 = !DILocation(line: 173, column: 18, scope: !3234, inlinedAt: !3302)
!3347 = !DILocation(line: 173, column: 15, scope: !3235, inlinedAt: !3302)
!3348 = !DILocation(line: 180, column: 20, scope: !3233, inlinedAt: !3302)
!3349 = !DILocation(line: 178, column: 21, scope: !3233, inlinedAt: !3302)
!3350 = !DILocation(line: 181, column: 22, scope: !3232, inlinedAt: !3302)
!3351 = !DILocation(line: 181, column: 19, scope: !3233, inlinedAt: !3302)
!3352 = !DILocation(line: 184, column: 19, scope: !3353, inlinedAt: !3302)
!3353 = distinct !DILexicalBlock(scope: !3232, file: !560, line: 182, column: 17)
!3354 = !DILocation(line: 186, column: 17, scope: !3353, inlinedAt: !3302)
!3355 = !DILocation(line: 190, column: 25, scope: !3231, inlinedAt: !3302)
!3356 = !DILocation(line: 191, column: 26, scope: !3231, inlinedAt: !3302)
!3357 = !DILocation(line: 193, column: 19, scope: !3231, inlinedAt: !3302)
!3358 = !DILocation(line: 196, column: 23, scope: !3228, inlinedAt: !3302)
!3359 = !DILocation(line: 197, column: 23, scope: !3228, inlinedAt: !3302)
!3360 = !DILocalVariable(name: "__fp", arg: 1, scope: !3361, file: !3171, line: 63, type: !3251)
!3361 = distinct !DISubprogram(name: "getc_unlocked", scope: !3171, file: !3171, line: 63, type: !3362, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!59, !3251}
!3364 = !{!3360}
!3365 = !DILocation(line: 63, column: 22, scope: !3361, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 201, column: 27, scope: !3228, inlinedAt: !3302)
!3367 = !DILocation(line: 65, column: 10, scope: !3361, inlinedAt: !3366)
!3368 = !{!3177, !623, i64 8}
!3369 = !{!3177, !623, i64 16}
!3370 = !{!"branch_weights", i32 2000, i32 1}
!3371 = !DILocation(line: 195, column: 27, scope: !3228, inlinedAt: !3302)
!3372 = !DILocation(line: 202, column: 27, scope: !3228, inlinedAt: !3302)
!3373 = distinct !{!3373, !3374, !3377}
!3374 = !DILocation(line: 209, column: 27, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !560, line: 207, column: 25)
!3376 = distinct !DILexicalBlock(scope: !3228, file: !560, line: 206, column: 27)
!3377 = !DILocation(line: 211, column: 58, scope: !3375)
!3378 = !DILocation(line: 65, column: 10, scope: !3361, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 210, column: 33, scope: !3375, inlinedAt: !3302)
!3380 = !DILocation(line: 63, column: 22, scope: !3361, inlinedAt: !3379)
!3381 = !DILocation(line: 210, column: 29, scope: !3375, inlinedAt: !3302)
!3382 = distinct !{!3382, !3383, !3384}
!3383 = !DILocation(line: 193, column: 19, scope: !3230)
!3384 = !DILocation(line: 241, column: 21, scope: !3230)
!3385 = !DILocation(line: 216, column: 23, scope: !3228, inlinedAt: !3302)
!3386 = !DILocation(line: 217, column: 27, scope: !3387, inlinedAt: !3302)
!3387 = distinct !DILexicalBlock(scope: !3228, file: !560, line: 217, column: 27)
!3388 = !DILocation(line: 217, column: 64, scope: !3387, inlinedAt: !3302)
!3389 = !DILocation(line: 217, column: 27, scope: !3228, inlinedAt: !3302)
!3390 = !DILocation(line: 219, column: 28, scope: !3228, inlinedAt: !3302)
!3391 = !DILocation(line: 198, column: 30, scope: !3228, inlinedAt: !3302)
!3392 = !DILocation(line: 220, column: 28, scope: !3228, inlinedAt: !3302)
!3393 = !DILocation(line: 198, column: 34, scope: !3228, inlinedAt: !3302)
!3394 = !DILocation(line: 199, column: 29, scope: !3228, inlinedAt: !3302)
!3395 = !DILocation(line: 222, column: 36, scope: !3396, inlinedAt: !3302)
!3396 = distinct !DILexicalBlock(scope: !3228, file: !560, line: 222, column: 27)
!3397 = !DILocation(line: 222, column: 27, scope: !3228, inlinedAt: !3302)
!3398 = !DILocation(line: 225, column: 63, scope: !3399, inlinedAt: !3302)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !560, line: 223, column: 25)
!3400 = !DILocation(line: 225, column: 46, scope: !3399, inlinedAt: !3302)
!3401 = !DILocation(line: 226, column: 25, scope: !3399, inlinedAt: !3302)
!3402 = !DILocation(line: 229, column: 36, scope: !3403, inlinedAt: !3302)
!3403 = distinct !DILexicalBlock(scope: !3396, file: !560, line: 228, column: 25)
!3404 = !DILocation(line: 230, column: 73, scope: !3403, inlinedAt: !3302)
!3405 = !DILocation(line: 230, column: 46, scope: !3403, inlinedAt: !3302)
!3406 = !DILocation(line: 232, column: 35, scope: !3407, inlinedAt: !3302)
!3407 = distinct !DILexicalBlock(scope: !3228, file: !560, line: 232, column: 27)
!3408 = !DILocation(line: 232, column: 27, scope: !3228, inlinedAt: !3302)
!3409 = !DILocation(line: 236, column: 27, scope: !3410, inlinedAt: !3302)
!3410 = distinct !DILexicalBlock(scope: !3407, file: !560, line: 233, column: 25)
!3411 = !DILocation(line: 237, column: 27, scope: !3410, inlinedAt: !3302)
!3412 = !DILocation(line: 241, column: 21, scope: !3229, inlinedAt: !3302)
!3413 = !DILocation(line: 239, column: 39, scope: !3228, inlinedAt: !3302)
!3414 = !DILocation(line: 239, column: 50, scope: !3228, inlinedAt: !3302)
!3415 = !DILocation(line: 239, column: 61, scope: !3228, inlinedAt: !3302)
!3416 = !DILocalVariable(name: "__dest", arg: 1, scope: !3417, file: !3418, line: 88, type: !3421)
!3417 = distinct !DISubprogram(name: "strcpy", scope: !3418, file: !3418, line: 88, type: !3419, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !3423)
!3418 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!26, !3421, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!3422 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!3423 = !{!3416, !3424}
!3424 = !DILocalVariable(name: "__src", arg: 2, scope: !3417, file: !3418, line: 88, type: !3422)
!3425 = !DILocation(line: 88, column: 1, scope: !3417, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 239, column: 23, scope: !3228, inlinedAt: !3302)
!3427 = !DILocation(line: 90, column: 49, scope: !3417, inlinedAt: !3426)
!3428 = !DILocation(line: 90, column: 10, scope: !3417, inlinedAt: !3426)
!3429 = !DILocation(line: 88, column: 1, scope: !3417, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 240, column: 23, scope: !3228, inlinedAt: !3302)
!3431 = !DILocation(line: 90, column: 49, scope: !3417, inlinedAt: !3430)
!3432 = !DILocation(line: 90, column: 10, scope: !3417, inlinedAt: !3430)
!3433 = !DILocation(line: 193, column: 19, scope: !3229, inlinedAt: !3302)
!3434 = !DILocation(line: 242, column: 19, scope: !3231, inlinedAt: !3302)
!3435 = !DILocation(line: 243, column: 32, scope: !3436, inlinedAt: !3302)
!3436 = distinct !DILexicalBlock(scope: !3231, file: !560, line: 243, column: 23)
!3437 = !DILocation(line: 243, column: 23, scope: !3231, inlinedAt: !3302)
!3438 = !DILocation(line: 247, column: 33, scope: !3439, inlinedAt: !3302)
!3439 = distinct !DILexicalBlock(scope: !3436, file: !560, line: 246, column: 21)
!3440 = !DILocation(line: 247, column: 45, scope: !3439, inlinedAt: !3302)
!3441 = !DILocation(line: 253, column: 11, scope: !3235, inlinedAt: !3302)
!3442 = !DILocation(line: 377, column: 23, scope: !3237, inlinedAt: !3302)
!3443 = !DILocation(line: 378, column: 5, scope: !3237, inlinedAt: !3302)
!3444 = !DILocation(line: 396, column: 15, scope: !3221)
!3445 = !DILocation(line: 590, column: 8, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3303, file: !560, line: 589, column: 3)
!3447 = !DILocation(line: 590, column: 17, scope: !3446)
!3448 = !DILocation(line: 589, column: 3, scope: !3303)
!3449 = !DILocation(line: 592, column: 9, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3446, file: !560, line: 592, column: 9)
!3451 = !DILocation(line: 592, column: 35, scope: !3450)
!3452 = !DILocation(line: 593, column: 9, scope: !3450)
!3453 = !DILocation(line: 593, column: 24, scope: !3450)
!3454 = !DILocation(line: 593, column: 31, scope: !3450)
!3455 = !DILocation(line: 593, column: 34, scope: !3450)
!3456 = !DILocation(line: 593, column: 45, scope: !3450)
!3457 = !DILocation(line: 592, column: 9, scope: !3446)
!3458 = !DILocation(line: 595, column: 29, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3450, file: !560, line: 594, column: 7)
!3460 = !DILocation(line: 595, column: 27, scope: !3459)
!3461 = !DILocation(line: 595, column: 46, scope: !3459)
!3462 = !DILocation(line: 596, column: 9, scope: !3459)
!3463 = !DILocation(line: 591, column: 19, scope: !3446)
!3464 = !DILocation(line: 591, column: 36, scope: !3446)
!3465 = !DILocation(line: 591, column: 16, scope: !3446)
!3466 = !DILocation(line: 591, column: 52, scope: !3446)
!3467 = !DILocation(line: 591, column: 69, scope: !3446)
!3468 = !DILocation(line: 591, column: 49, scope: !3446)
!3469 = distinct !{!3469, !3448, !3470}
!3470 = !DILocation(line: 597, column: 7, scope: !3303)
!3471 = !DILocation(line: 602, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3221, file: !560, line: 602, column: 7)
!3473 = !DILocation(line: 602, column: 18, scope: !3472)
!3474 = !DILocation(line: 602, column: 7, scope: !3221)
!3475 = !DILocation(line: 612, column: 3, scope: !3221)
!3476 = distinct !DISubprogram(name: "rpl_fclose", scope: !3477, file: !3477, line: 56, type: !3478, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !3520)
!3477 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!59, !3480}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2550, line: 7, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2552, line: 241, size: 1728, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3482, file: !2552, line: 242, baseType: !59, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3482, file: !2552, line: 247, baseType: !26, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3482, file: !2552, line: 248, baseType: !26, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3482, file: !2552, line: 249, baseType: !26, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3482, file: !2552, line: 250, baseType: !26, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3482, file: !2552, line: 251, baseType: !26, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3482, file: !2552, line: 252, baseType: !26, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3482, file: !2552, line: 253, baseType: !26, size: 64, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3482, file: !2552, line: 254, baseType: !26, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3482, file: !2552, line: 256, baseType: !26, size: 64, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3482, file: !2552, line: 257, baseType: !26, size: 64, offset: 640)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3482, file: !2552, line: 258, baseType: !26, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3482, file: !2552, line: 260, baseType: !3497, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2552, line: 156, size: 192, elements: !3499)
!3499 = !{!3500, !3501, !3503}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3498, file: !2552, line: 157, baseType: !3497, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3498, file: !2552, line: 158, baseType: !3502, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3498, file: !2552, line: 162, baseType: !59, size: 32, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3482, file: !2552, line: 262, baseType: !3502, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3482, file: !2552, line: 264, baseType: !59, size: 32, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3482, file: !2552, line: 268, baseType: !59, size: 32, offset: 928)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3482, file: !2552, line: 270, baseType: !2578, size: 64, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3482, file: !2552, line: 274, baseType: !120, size: 16, offset: 1024)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3482, file: !2552, line: 275, baseType: !2583, size: 8, offset: 1040)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3482, file: !2552, line: 276, baseType: !2585, size: 8, offset: 1048)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3482, file: !2552, line: 280, baseType: !2587, size: 64, offset: 1088)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3482, file: !2552, line: 289, baseType: !2590, size: 64, offset: 1152)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3482, file: !2552, line: 297, baseType: !28, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3482, file: !2552, line: 298, baseType: !28, size: 64, offset: 1280)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3482, file: !2552, line: 299, baseType: !28, size: 64, offset: 1344)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3482, file: !2552, line: 300, baseType: !28, size: 64, offset: 1408)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3482, file: !2552, line: 302, baseType: !121, size: 64, offset: 1472)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3482, file: !2552, line: 303, baseType: !59, size: 32, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3482, file: !2552, line: 305, baseType: !2598, size: 160, offset: 1568)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DILocalVariable(name: "fp", arg: 1, scope: !3476, file: !3477, line: 56, type: !3480)
!3522 = !DILocalVariable(name: "saved_errno", scope: !3476, file: !3477, line: 58, type: !59)
!3523 = !DILocalVariable(name: "fd", scope: !3476, file: !3477, line: 59, type: !59)
!3524 = !DILocalVariable(name: "result", scope: !3476, file: !3477, line: 60, type: !59)
!3525 = !DILocation(line: 56, column: 19, scope: !3476)
!3526 = !DILocation(line: 58, column: 7, scope: !3476)
!3527 = !DILocation(line: 60, column: 7, scope: !3476)
!3528 = !DILocation(line: 63, column: 8, scope: !3476)
!3529 = !DILocation(line: 59, column: 7, scope: !3476)
!3530 = !DILocation(line: 64, column: 10, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3476, file: !3477, line: 64, column: 7)
!3532 = !DILocation(line: 64, column: 7, scope: !3476)
!3533 = !DILocation(line: 65, column: 12, scope: !3531)
!3534 = !DILocation(line: 65, column: 5, scope: !3531)
!3535 = !DILocation(line: 70, column: 9, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3476, file: !3477, line: 70, column: 7)
!3537 = !DILocation(line: 70, column: 23, scope: !3536)
!3538 = !DILocation(line: 70, column: 33, scope: !3536)
!3539 = !DILocation(line: 70, column: 26, scope: !3536)
!3540 = !DILocation(line: 70, column: 59, scope: !3536)
!3541 = !DILocation(line: 71, column: 7, scope: !3536)
!3542 = !DILocation(line: 71, column: 10, scope: !3536)
!3543 = !DILocation(line: 70, column: 7, scope: !3476)
!3544 = !DILocation(line: 98, column: 12, scope: !3476)
!3545 = !DILocation(line: 103, column: 7, scope: !3476)
!3546 = !DILocation(line: 72, column: 19, scope: !3536)
!3547 = !DILocation(line: 103, column: 19, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3476, file: !3477, line: 103, column: 7)
!3549 = !DILocation(line: 105, column: 13, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !3477, line: 104, column: 5)
!3551 = !DILocation(line: 107, column: 5, scope: !3550)
!3552 = !DILocation(line: 110, column: 1, scope: !3476)
!3553 = distinct !DISubprogram(name: "rpl_fflush", scope: !3554, file: !3554, line: 127, type: !3555, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !3597)
!3554 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!59, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2550, line: 7, baseType: !3559)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2552, line: 241, size: 1728, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3559, file: !2552, line: 242, baseType: !59, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3559, file: !2552, line: 247, baseType: !26, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3559, file: !2552, line: 248, baseType: !26, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3559, file: !2552, line: 249, baseType: !26, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3559, file: !2552, line: 250, baseType: !26, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3559, file: !2552, line: 251, baseType: !26, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3559, file: !2552, line: 252, baseType: !26, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3559, file: !2552, line: 253, baseType: !26, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3559, file: !2552, line: 254, baseType: !26, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3559, file: !2552, line: 256, baseType: !26, size: 64, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3559, file: !2552, line: 257, baseType: !26, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3559, file: !2552, line: 258, baseType: !26, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3559, file: !2552, line: 260, baseType: !3574, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2552, line: 156, size: 192, elements: !3576)
!3576 = !{!3577, !3578, !3580}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3575, file: !2552, line: 157, baseType: !3574, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3575, file: !2552, line: 158, baseType: !3579, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3575, file: !2552, line: 162, baseType: !59, size: 32, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3559, file: !2552, line: 262, baseType: !3579, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3559, file: !2552, line: 264, baseType: !59, size: 32, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3559, file: !2552, line: 268, baseType: !59, size: 32, offset: 928)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3559, file: !2552, line: 270, baseType: !2578, size: 64, offset: 960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3559, file: !2552, line: 274, baseType: !120, size: 16, offset: 1024)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3559, file: !2552, line: 275, baseType: !2583, size: 8, offset: 1040)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3559, file: !2552, line: 276, baseType: !2585, size: 8, offset: 1048)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3559, file: !2552, line: 280, baseType: !2587, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3559, file: !2552, line: 289, baseType: !2590, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3559, file: !2552, line: 297, baseType: !28, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3559, file: !2552, line: 298, baseType: !28, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3559, file: !2552, line: 299, baseType: !28, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3559, file: !2552, line: 300, baseType: !28, size: 64, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3559, file: !2552, line: 302, baseType: !121, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3559, file: !2552, line: 303, baseType: !59, size: 32, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3559, file: !2552, line: 305, baseType: !2598, size: 160, offset: 1568)
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "stream", arg: 1, scope: !3553, file: !3554, line: 127, type: !3557)
!3599 = !DILocation(line: 127, column: 19, scope: !3553)
!3600 = !DILocation(line: 148, column: 14, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3553, file: !3554, line: 148, column: 7)
!3602 = !DILocation(line: 148, column: 22, scope: !3601)
!3603 = !DILocation(line: 148, column: 27, scope: !3601)
!3604 = !DILocation(line: 148, column: 7, scope: !3553)
!3605 = !DILocation(line: 149, column: 12, scope: !3601)
!3606 = !DILocation(line: 149, column: 5, scope: !3601)
!3607 = !DILocalVariable(name: "fp", arg: 1, scope: !3608, file: !3554, line: 40, type: !3557)
!3608 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3554, file: !3554, line: 40, type: !3609, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !3557}
!3611 = !{!3607}
!3612 = !DILocation(line: 40, column: 48, scope: !3608, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 153, column: 3, scope: !3553)
!3614 = !DILocation(line: 42, column: 11, scope: !3615, inlinedAt: !3613)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !3554, line: 42, column: 7)
!3616 = !DILocation(line: 42, column: 18, scope: !3615, inlinedAt: !3613)
!3617 = !DILocation(line: 42, column: 7, scope: !3608, inlinedAt: !3613)
!3618 = !DILocation(line: 44, column: 5, scope: !3615, inlinedAt: !3613)
!3619 = !DILocation(line: 155, column: 10, scope: !3553)
!3620 = !DILocation(line: 155, column: 3, scope: !3553)
!3621 = !DILocation(line: 229, column: 1, scope: !3553)
!3622 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3623, file: !3623, line: 28, type: !3624, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !3667)
!3623 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!59, !3626, !3666, !59}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2550, line: 7, baseType: !3628)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2552, line: 241, size: 1728, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3628, file: !2552, line: 242, baseType: !59, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3628, file: !2552, line: 247, baseType: !26, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3628, file: !2552, line: 248, baseType: !26, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3628, file: !2552, line: 249, baseType: !26, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3628, file: !2552, line: 250, baseType: !26, size: 64, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3628, file: !2552, line: 251, baseType: !26, size: 64, offset: 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3628, file: !2552, line: 252, baseType: !26, size: 64, offset: 384)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3628, file: !2552, line: 253, baseType: !26, size: 64, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3628, file: !2552, line: 254, baseType: !26, size: 64, offset: 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3628, file: !2552, line: 256, baseType: !26, size: 64, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3628, file: !2552, line: 257, baseType: !26, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3628, file: !2552, line: 258, baseType: !26, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3628, file: !2552, line: 260, baseType: !3643, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2552, line: 156, size: 192, elements: !3645)
!3645 = !{!3646, !3647, !3649}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3644, file: !2552, line: 157, baseType: !3643, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3644, file: !2552, line: 158, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3644, file: !2552, line: 162, baseType: !59, size: 32, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3628, file: !2552, line: 262, baseType: !3648, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3628, file: !2552, line: 264, baseType: !59, size: 32, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3628, file: !2552, line: 268, baseType: !59, size: 32, offset: 928)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3628, file: !2552, line: 270, baseType: !2578, size: 64, offset: 960)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3628, file: !2552, line: 274, baseType: !120, size: 16, offset: 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3628, file: !2552, line: 275, baseType: !2583, size: 8, offset: 1040)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3628, file: !2552, line: 276, baseType: !2585, size: 8, offset: 1048)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3628, file: !2552, line: 280, baseType: !2587, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3628, file: !2552, line: 289, baseType: !2590, size: 64, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3628, file: !2552, line: 297, baseType: !28, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3628, file: !2552, line: 298, baseType: !28, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3628, file: !2552, line: 299, baseType: !28, size: 64, offset: 1344)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3628, file: !2552, line: 300, baseType: !28, size: 64, offset: 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3628, file: !2552, line: 302, baseType: !121, size: 64, offset: 1472)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3628, file: !2552, line: 303, baseType: !59, size: 32, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3628, file: !2552, line: 305, baseType: !2598, size: 160, offset: 1568)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2718, line: 57, baseType: !2578)
!3667 = !{!3668, !3669, !3670, !3671}
!3668 = !DILocalVariable(name: "fp", arg: 1, scope: !3622, file: !3623, line: 28, type: !3626)
!3669 = !DILocalVariable(name: "offset", arg: 2, scope: !3622, file: !3623, line: 28, type: !3666)
!3670 = !DILocalVariable(name: "whence", arg: 3, scope: !3622, file: !3623, line: 28, type: !59)
!3671 = !DILocalVariable(name: "pos", scope: !3672, file: !3623, line: 116, type: !3666)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3623, line: 112, column: 5)
!3673 = distinct !DILexicalBlock(scope: !3622, file: !3623, line: 51, column: 7)
!3674 = !DILocation(line: 28, column: 15, scope: !3622)
!3675 = !DILocation(line: 28, column: 25, scope: !3622)
!3676 = !DILocation(line: 28, column: 37, scope: !3622)
!3677 = !DILocation(line: 51, column: 11, scope: !3673)
!3678 = !DILocation(line: 51, column: 31, scope: !3673)
!3679 = !DILocation(line: 51, column: 24, scope: !3673)
!3680 = !DILocation(line: 52, column: 7, scope: !3673)
!3681 = !DILocation(line: 52, column: 14, scope: !3673)
!3682 = !{!3177, !623, i64 40}
!3683 = !DILocation(line: 52, column: 35, scope: !3673)
!3684 = !{!3177, !623, i64 32}
!3685 = !DILocation(line: 52, column: 28, scope: !3673)
!3686 = !DILocation(line: 53, column: 7, scope: !3673)
!3687 = !DILocation(line: 53, column: 14, scope: !3673)
!3688 = !{!3177, !623, i64 72}
!3689 = !DILocation(line: 53, column: 28, scope: !3673)
!3690 = !DILocation(line: 51, column: 7, scope: !3622)
!3691 = !DILocation(line: 116, column: 26, scope: !3672)
!3692 = !DILocation(line: 116, column: 19, scope: !3672)
!3693 = !DILocation(line: 116, column: 13, scope: !3672)
!3694 = !DILocation(line: 117, column: 15, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3672, file: !3623, line: 117, column: 11)
!3696 = !DILocation(line: 117, column: 11, scope: !3672)
!3697 = !DILocation(line: 127, column: 11, scope: !3672)
!3698 = !DILocation(line: 127, column: 18, scope: !3672)
!3699 = !DILocation(line: 128, column: 11, scope: !3672)
!3700 = !DILocation(line: 128, column: 19, scope: !3672)
!3701 = !{!3177, !1867, i64 144}
!3702 = !DILocation(line: 159, column: 7, scope: !3672)
!3703 = !DILocation(line: 161, column: 10, scope: !3622)
!3704 = !DILocation(line: 161, column: 3, scope: !3622)
!3705 = !DILocation(line: 162, column: 1, scope: !3622)
